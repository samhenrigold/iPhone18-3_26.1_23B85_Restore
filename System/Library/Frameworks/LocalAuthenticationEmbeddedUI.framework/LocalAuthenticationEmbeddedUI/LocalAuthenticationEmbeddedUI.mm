void sub_238BD3C00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id LA_LOG(uint64_t a1)
{
  if (LA_LOG_once != -1)
  {
    LA_LOG_cold_1();
  }

  v2 = LA_LOG_log;

  return v2;
}

void sub_238BD4278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BD5284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 152));
  _Unwind_Resume(a1);
}

void sub_238BD5548(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getCDPStateControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCDPStateControllerClass_softClass;
  v7 = getCDPStateControllerClass_softClass;
  if (!getCDPStateControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCDPStateControllerClass_block_invoke;
    v3[3] = &unk_278A65748;
    v3[4] = &v4;
    __getCDPStateControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_238BD5AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCDPStateControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreCDPLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278A65768;
    v6 = 0;
    CoreCDPLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreCDPLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CDPStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPStateControllerClass_block_invoke_cold_1();
  }

  getCDPStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreCDPLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_238BD754C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_238BD77EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BD875C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BD8B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BDBB98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id LA_LOG_0(uint64_t a1)
{
  if (LA_LOG_once_0 != -1)
  {
    LA_LOG_cold_1_0();
  }

  v2 = LA_LOG_log_0;

  return v2;
}

void sub_238BDBE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BDBF24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BDC1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BDC464(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4(void *a1, const char *a2)
{

  return [a1 setActive:1];
}

uint64_t __LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_fmt;
  LAPSPasscodeLatinDigitsPasscodeFromLocalizedNumericPasscode_fmt = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_238BDFBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE0F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE12F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BE1D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE2818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE4374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE4640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE4938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_238BE6F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLAPSPasscodeTypeIdentifier(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"LAPSPasscodeTypeIdentifierUnknown";
  }

  else
  {
    return off_278A65FF8[a1];
  }
}

id LAViewControllerForPresentationContext(void *a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v1)
  {
    v2 = [v1 rootViewController];
  }

  else
  {
    v3 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    v2 = [v3 rootViewController];
  }

  return v2;
}

void sub_238BE80B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BE85A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BE955C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BEAC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BEAF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BEB2A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BEB838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238BEB9B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_238BEC060(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_238BECE3C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_238BF3418();
  v3 = [v1 initWithOptions:v2 configuration:0];

  return v3;
}

id sub_238BECF40(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_238BF3418();
  v5 = [v3 initWithOptions:v4 configuration:a2];

  return v5;
}

void sub_238BED070(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238BF3368();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v48 - v9;
  v59 = sub_238BF3388();
  v10 = *(v59 - 8);
  v11 = MEMORY[0x28223BE20](v59);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = sub_238BF33A8();
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v2 viewModel];
  if (!v19)
  {
LABEL_4:
    v20 = [v2 presentationContext];
    if (v20)
    {
      v53 = v13;
      v55 = v8;

      [v2 clean];
      sub_238BF3278();
      v21 = *(v10 + 16);
      v54 = a1;
      v22 = v59;
      v51 = v21;
      v52 = v10 + 16;
      v21(v15, a1, v59);
      v23 = v2;
      v24 = sub_238BF3398();
      v25 = sub_238BF34E8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v50 = v4;
        v27 = v26;
        v28 = swift_slowAlloc();
        v49 = v5;
        v29 = v28;
        *v27 = 138543618;
        *(v27 + 4) = v23;
        *v28 = v23;
        *(v27 + 12) = 2048;
        v30 = v23;
        v31 = sub_238BF3378();
        (*(v10 + 8))(v15, v22);
        *(v27 + 14) = v31;
        _os_log_impl(&dword_238BCD000, v24, v25, "%{public}@ starting evaluation with presentation style: %ld", v27, 0x16u);
        sub_238BF1704(v29, &qword_27DF6A788, &qword_238BF7B70);
        v32 = v29;
        v5 = v49;
        MEMORY[0x23EE74E00](v32, -1, -1);
        v33 = v27;
        v4 = v50;
        MEMORY[0x23EE74E00](v33, -1, -1);
      }

      else
      {
        (*(v10 + 8))(v15, v22);
      }

      (*(v56 + 8))(v18, v57);
      v40 = [v23 configuration];
      v41 = [v40 countdownPrimaryActionTitle];

      v42 = v58;
      v43 = v53;
      if (v41)
      {
        sub_238BF3468();
      }

      v51(v43, v54, v59);
      sub_238BF3358();
      type metadata accessor for LAContextProvider();
      sub_238BF1B90();
      v44 = [v23 internalOptions];
      sub_238BF3428();

      (*(v5 + 16))(v55, v42, v4);
      v45 = objc_allocWithZone(sub_238BF32F8());
      v46 = sub_238BF32A8();
      sub_238BEDE88(v46);
      [v23 setViewModel_];
      v47 = [v23 viewModel];
      if (v47)
      {
        [v47 start];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      (*(v5 + 8))(v42, v4);
    }

    else
    {
      sub_238BF32F8();
      sub_238BF1118();
      v37 = swift_allocError();
      *v38 = 0;
      v39 = sub_238BF32E8();

      sub_238BEE61C(0, v39);
    }

    return;
  }

  if ([v19 isInvalidated])
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  sub_238BF32F8();
  sub_238BF1118();
  v34 = swift_allocError();
  *v35 = 1;
  v36 = sub_238BF32E8();

  sub_238BEE61C(0, v36);

  swift_unknownObjectRelease();
}

uint64_t sub_238BED714(unsigned int *a1)
{
  v2 = sub_238BF3388();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *a1, v2);
  sub_238BED070(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_238BED80C(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_238BF3388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_238BED070(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_238BED908()
{
  v1 = sub_238BF33A8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 viewModel];
  if (v5)
  {
    v6 = v5;
    v7 = sub_238BF3438();
    [v6 stopWithReason:v7 invalidate:1];

    swift_unknownObjectRelease();
  }

  [v0 clean];
  sub_238BF3278();
  v8 = v0;
  v9 = sub_238BF3398();
  v10 = sub_238BF34E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v1;
    v14 = v13;
    v23 = v13;
    *v11 = 138543618;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2082;
    v22 = [v8 viewModel];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A780, &qword_238BF7B68);
    v15 = sub_238BF34F8();
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = sub_238BF0AC4(v15, v17, &v23);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_238BCD000, v9, v10, "%{public}@ invalidated view model: %{public}s", v11, 0x16u);
    sub_238BF1704(v12, &qword_27DF6A788, &qword_238BF7B70);
    MEMORY[0x23EE74E00](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EE74E00](v14, -1, -1);
    MEMORY[0x23EE74E00](v11, -1, -1);

    return (*(v2 + 8))(v4, v21);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

id sub_238BEDC18()
{
  v1 = v0;
  v2 = [v0 subscriptions];
  if (v2)
  {
    v3 = v2;
    v4 = sub_238BF34C8();

    v5 = *(v4 + 16);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v5 = *(MEMORY[0x277D84F90] + 16);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = v4 + 32;
  do
  {
    sub_238BF0BDC(v6, v8);
    sub_238BF33C8();
    if (swift_dynamicCast())
    {
      sub_238BF33B8();
    }

    v6 += 32;
    --v5;
  }

  while (v5);
LABEL_9:

  return [v1 setSubscriptions_];
}

uint64_t sub_238BEDD78()
{
  v1 = *v0;
  sub_238BF35C8();
  MEMORY[0x23EE74600](v1);
  return sub_238BF35E8();
}

uint64_t sub_238BEDDEC(uint64_t a1)
{
  v2 = *v1;
  sub_238BF35C8();
  MEMORY[0x23EE74600](v2);
  return sub_238BF35E8();
}

unint64_t sub_238BEDE30()
{
  if (*v0)
  {
    return 0xD000000000000054;
  }

  else
  {
    return 0xD00000000000004ELL;
  }
}

void sub_238BEDE88(uint64_t a1)
{
  v35 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A798, &qword_238BF7B80);
  MEMORY[0x28223BE20](v37);
  v2 = &v30 - v1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7A0, &qword_238BF7B88);
  v3 = MEMORY[0x28223BE20](v30);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7A8, &qword_238BF7B90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7B0, &qword_238BF7B98);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v30 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7B8, &qword_238BF7BA0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v30 - v12;
  v41 = sub_238BF3298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7C0, &qword_238BF7BA8);
  v39 = MEMORY[0x277CBCD90];
  sub_238BF1378(&qword_27DF6A7C8, &qword_27DF6A7C0, &qword_238BF7BA8, MEMORY[0x277CBCD90]);
  sub_238BF1AC4(&qword_27DF6A7D0, MEMORY[0x277D24168], MEMORY[0x277D24170]);
  sub_238BF33F8();

  sub_238BF1378(&qword_27DF6A7D8, &qword_27DF6A7A8, &qword_238BF7B90, MEMORY[0x277CBCBE0]);
  sub_238BF33D8();
  (*(v7 + 8))(v9, v6);
  v14 = sub_238BF32D8();
  v15 = *(*(v14 - 8) + 56);
  v16 = v31;
  v15(v31, 1, 1, v14);
  v17 = v33;
  v15(v33, 1, 1, v14);
  v18 = *(v37 + 48);
  sub_238BF11B4(v16, v2);
  sub_238BF11B4(v17, &v2[v18]);
  sub_238BF1378(&qword_27DF6A7E0, &qword_27DF6A7B0, &qword_238BF7B98, MEMORY[0x277CBCC08]);
  v19 = v32;
  sub_238BF33E8();
  sub_238BF1704(v2, &qword_27DF6A798, &qword_238BF7B80);
  (*(v34 + 8))(v11, v19);
  v20 = swift_allocObject();
  v21 = v40;
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_238BF125C;
  *(v22 + 24) = v20;
  sub_238BF1378(&qword_27DF6A7E8, &qword_27DF6A7B8, &qword_238BF7BA0, MEMORY[0x277CBCC28]);
  v23 = v36;
  v24 = sub_238BF3408();

  (*(v38 + 8))(v13, v23);
  v41 = sub_238BF32B8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7F0, &qword_238BF7BB0);
  sub_238BF1378(&qword_27DF6A7F8, &qword_27DF6A7F0, &qword_238BF7BB0, v39);
  v25 = sub_238BF3408();

  v41 = sub_238BF32C8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_238BF3408();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A800, &qword_238BF7BB8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_238BF7B40;
  v28 = sub_238BF33C8();
  *(v27 + 32) = v24;
  *(v27 + 56) = v28;
  *(v27 + 64) = v25;
  *(v27 + 120) = v28;
  *(v27 + 88) = v28;
  *(v27 + 96) = v26;

  v29 = sub_238BF34B8();

  [v21 setSubscriptions_];
}

void sub_238BEE61C(void *a1, void *a2)
{
  v5 = sub_238BF33A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238BF3278();
  v9 = v2;

  v10 = a2;
  v11 = sub_238BF3398();
  v12 = sub_238BF34E8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v12;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    v32 = swift_slowAlloc();
    v34 = v32;
    *v14 = 138544130;
    *(v14 + 4) = v9;
    *v15 = v9;
    *(v14 + 12) = 2082;
    v33 = [v9 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A898, &qword_238BF7BE0);
    v16 = sub_238BF34F8();
    v30 = v5;
    v18 = v17;
    swift_unknownObjectRelease();
    v19 = sub_238BF0AC4(v16, v18, &v34);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2082;
    v33 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A8A0, &qword_238BF7BE8);
    v20 = sub_238BF34F8();
    v22 = sub_238BF0AC4(v20, v21, &v34);

    *(v14 + 24) = v22;
    *(v14 + 32) = 2082;
    v33 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A8A8, &qword_238BF7BF0);
    v23 = sub_238BF34F8();
    v25 = sub_238BF0AC4(v23, v24, &v34);

    *(v14 + 34) = v25;
    _os_log_impl(&dword_238BCD000, v11, v31, "%{public}@ will inform delegate %{public}s about result: %{public}s error: %{public}s", v14, 0x2Au);
    v26 = v29;
    sub_238BF1704(v29, &qword_27DF6A788, &qword_238BF7B70);
    MEMORY[0x23EE74E00](v26, -1, -1);
    v27 = v32;
    swift_arrayDestroy();
    MEMORY[0x23EE74E00](v27, -1, -1);
    MEMORY[0x23EE74E00](v14, -1, -1);

    (*(v6 + 8))(v8, v30);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v28 = 0;
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (*(v6 + 8))(v8, v5);
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v28 = sub_238BF3418();
  if (a2)
  {
LABEL_4:
    a2 = sub_238BF3238();
  }

LABEL_5:
  [v9 finishWithResult:v28 error:a2];
}

uint64_t sub_238BEE9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238BF32D8();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_238BEEA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A798, &qword_238BF7B80);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v7 + 56);
  sub_238BF17B0(a1, &v12 - v8, &qword_27DF6A798, &qword_238BF7B80);
  sub_238BF11B4(&v9[*(v7 + 56)], a3);
  sub_238BF17B0(a2, a3 + v10, &qword_27DF6A7A0, &qword_238BF7B88);
  return sub_238BF1704(v9, &qword_27DF6A7A0, &qword_238BF7B88);
}

void sub_238BEEB80(void (*a1)(char *, uint64_t), unsigned int (*a2)(char *, uint64_t))
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A798, &qword_238BF7B80);
  MEMORY[0x28223BE20](v111);
  v5 = &v92 - v4;
  v6 = sub_238BF3338();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v103 = &v92 - v11;
  MEMORY[0x28223BE20](v10);
  v100 = &v92 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7A0, &qword_238BF7B88);
  v13 = MEMORY[0x28223BE20](v106);
  v99 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v97 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v101 = &v92 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v107 = &v92 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v92 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v92 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v92 - v29;
  v31 = sub_238BF33A8();
  v109 = *(v31 - 8);
  v110 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238BF3278();
  v112 = a1;
  sub_238BF17B0(a1, v30, &qword_27DF6A7A0, &qword_238BF7B88);
  v113 = a2;
  sub_238BF17B0(a2, v28, &qword_27DF6A7A0, &qword_238BF7B88);
  v34 = v108;
  v35 = sub_238BF3398();
  v36 = sub_238BF34E8();

  v37 = os_log_type_enabled(v35, v36);
  v102 = v9;
  v108 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v92 = v35;
    v39 = v38;
    v40 = swift_slowAlloc();
    v94 = v40;
    v95 = swift_slowAlloc();
    v114[0] = v95;
    *v39 = 138543874;
    *(v39 + 4) = v34;
    *v40 = v34;
    *(v39 + 12) = 2082;
    v96 = v5;
    v93 = v36;
    sub_238BF17B0(v30, v25, &qword_27DF6A7A0, &qword_238BF7B88);
    v41 = v34;
    v42 = sub_238BF3478();
    v44 = v43;
    sub_238BF1704(v30, &qword_27DF6A7A0, &qword_238BF7B88);
    v45 = sub_238BF0AC4(v42, v44, v114);

    *(v39 + 14) = v45;
    *(v39 + 22) = 2082;
    sub_238BF17B0(v28, v25, &qword_27DF6A7A0, &qword_238BF7B88);
    v46 = sub_238BF3478();
    v48 = v47;
    v5 = v96;
    sub_238BF1704(v28, &qword_27DF6A7A0, &qword_238BF7B88);
    v49 = sub_238BF0AC4(v46, v48, v114);

    *(v39 + 24) = v49;
    v50 = v92;
    _os_log_impl(&dword_238BCD000, v92, v93, "%{public}@ state changed from: %{public}s to: %{public}s", v39, 0x20u);
    v51 = v94;
    sub_238BF1704(v94, &qword_27DF6A788, &qword_238BF7B70);
    MEMORY[0x23EE74E00](v51, -1, -1);
    v52 = v95;
    swift_arrayDestroy();
    MEMORY[0x23EE74E00](v52, -1, -1);
    MEMORY[0x23EE74E00](v39, -1, -1);
  }

  else
  {

    sub_238BF1704(v28, &qword_27DF6A7A0, &qword_238BF7B88);
    sub_238BF1704(v30, &qword_27DF6A7A0, &qword_238BF7B88);
  }

  (*(v109 + 8))(v33, v110);
  v53 = *(v111 + 48);
  sub_238BF17B0(v112, v5, &qword_27DF6A7A0, &qword_238BF7B88);
  sub_238BF17B0(v113, &v5[v53], &qword_27DF6A7A0, &qword_238BF7B88);
  v54 = sub_238BF32D8();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(&v5[v53], 1, v54) == 1)
  {
    goto LABEL_5;
  }

  v60 = v107;
  sub_238BF17B0(&v5[v53], v107, &qword_27DF6A7A0, &qword_238BF7B88);
  v61 = *(v55 + 88);
  v62 = v61(v60, v54);
  v63 = v62;
  v64 = *MEMORY[0x277D24140];
  v113 = v61;
  if (v62 == v64)
  {
    v112 = *(v55 + 96);
    v112(v60, v54);
    v65 = v56(v5, 1, v54);
    v66 = v104;
    if (v65 == 1)
    {
      goto LABEL_30;
    }

    v67 = v5;
    v68 = v5;
    v69 = v101;
LABEL_16:
    sub_238BF17B0(v68, v69, &qword_27DF6A7A0, &qword_238BF7B88);
    v72 = v69;
    goto LABEL_17;
  }

  if (v62 == *MEMORY[0x277D24150])
  {
    v60 = v107;
    v112 = *(v55 + 96);
    v112(v107, v54);
    v70 = v56(v5, 1, v54);
    v66 = v104;
    if (v70 == 1)
    {
      goto LABEL_30;
    }

    v67 = v5;
    v68 = v5;
    v69 = v99;
    goto LABEL_16;
  }

  if (v62 == *MEMORY[0x277D24160])
  {
    v60 = v107;
    v112 = *(v55 + 96);
    v112(v107, v54);
    v71 = v56(v5, 1, v54);
    v66 = v104;
    if (v71 == 1)
    {
      goto LABEL_30;
    }

    v67 = v5;
    v68 = v5;
    v69 = v98;
    goto LABEL_16;
  }

  if (v62 != *MEMORY[0x277D24148])
  {
    if (v62 == *MEMORY[0x277D24158])
    {
      v90 = v107;
      (*(v55 + 96))(v107, v54);
      v91 = *(v90 + 8);
      sub_238BEE61C(*v90, v91);

      sub_238BF1704(&v5[v53], &qword_27DF6A7A0, &qword_238BF7B88);
      v59 = v5;
      v57 = &qword_27DF6A7A0;
      v58 = &qword_238BF7B88;
      goto LABEL_6;
    }

    (*(v55 + 8))(v107, v54);
LABEL_5:
    v57 = &qword_27DF6A798;
    v58 = &qword_238BF7B80;
    v59 = v5;
LABEL_6:
    sub_238BF1704(v59, v57, v58);
    return;
  }

  v60 = v107;
  v112 = *(v55 + 96);
  v112(v107, v54);
  v88 = v56(v5, 1, v54);
  v66 = v104;
  if (v88 == 1)
  {
    goto LABEL_30;
  }

  v67 = v5;
  v89 = v97;
  sub_238BF17B0(v5, v97, &qword_27DF6A7A0, &qword_238BF7B88);
  v69 = v89;
  v72 = v89;
LABEL_17:
  if (v113(v72, v54) != v63)
  {
    (*(v55 + 8))(v69, v54);
    v5 = v67;
    v60 = v107;
LABEL_30:
    v84 = v103;
    v85 = v105;
    (*(v66 + 32))(v103, v60, v105);
    sub_238BF1704(&v5[v53], &qword_27DF6A7A0, &qword_238BF7B88);
    sub_238BF1704(v5, &qword_27DF6A7A0, &qword_238BF7B88);
    (*(v66 + 16))(v102, v84, v85);
    if ([v108 viewModel])
    {
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {
        swift_unknownObjectRelease();
      }
    }

    v86 = objc_allocWithZone(sub_238BF3328());
    v87 = sub_238BF3308();
    (*(v66 + 8))(v84, v85);
    sub_238BEFF64(v87);

    return;
  }

  v112(v69, v54);
  v73 = v100;
  v74 = v105;
  (*(v66 + 32))(v100, v107, v105);
  v75 = *(v66 + 8);
  v75(v69, v74);
  sub_238BF1704(v67 + v53, &qword_27DF6A7A0, &qword_238BF7B88);
  sub_238BF1704(v67, &qword_27DF6A7A0, &qword_238BF7B88);
  v76 = [v108 pageViewController];
  v77 = [v76 viewControllers];

  if (!v77)
  {
LABEL_43:
    v75(v73, v74);
    return;
  }

  sub_238BF1764();
  v78 = sub_238BF34C8();

  if (!(v78 >> 62))
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v79)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  v79 = sub_238BF3538();
  if (!v79)
  {
LABEL_42:

    goto LABEL_43;
  }

LABEL_21:
  v80 = __OFSUB__(v79, 1);
  v81 = v79 - 1;
  if (v80)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v78 & 0xC000000000000001) != 0)
  {
LABEL_45:
    v82 = MEMORY[0x23EE74540](v81, v78);
    goto LABEL_26;
  }

  if ((v81 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v81 < *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v82 = *(v78 + 8 * v81 + 32);
LABEL_26:
    v83 = v82;

    sub_238BF3328();
    if (swift_dynamicCastClass())
    {
      sub_238BF3318();
    }

    goto LABEL_43;
  }

  __break(1u);
}

void sub_238BEF7F8(uint64_t a1)
{
  v3 = sub_238BF3268();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238BF33A8();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238BF3278();
  (*(v4 + 16))(v6, a1, v3);
  v10 = v1;
  v11 = sub_238BF3398();
  v12 = sub_238BF34D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v30 = v15;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v14 = 138543618;
    *(v14 + 4) = v10;
    *v15 = v10;
    *(v14 + 12) = 2082;
    sub_238BF1AC4(&qword_27DF6A810, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v32 = v7;
    v16 = v10;
    v17 = sub_238BF3568();
    v19 = v18;
    (*(v4 + 8))(v6, v3);
    v20 = sub_238BF0AC4(v17, v19, &v35);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_238BCD000, v11, v12, "%{public}@ opening URL: %{public}s", v14, 0x16u);
    v21 = v30;
    sub_238BF1704(v30, &qword_27DF6A788, &qword_238BF7B70);
    MEMORY[0x23EE74E00](v21, -1, -1);
    v22 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x23EE74E00](v22, -1, -1);
    MEMORY[0x23EE74E00](v14, -1, -1);

    (*(v34 + 8))(v9, v32);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    (*(v34 + 8))(v9, v7);
  }

  v23 = objc_opt_self();
  v24 = [v23 sharedApplication];
  v25 = sub_238BF3248();
  v26 = [v24 canOpenURL_];

  if (v26)
  {
    v27 = [v23 sharedApplication];
    v28 = sub_238BF3248();
    sub_238BF157C(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey();
    sub_238BF1AC4(&qword_27DF6A808, type metadata accessor for OpenExternalURLOptionsKey, &unk_238BF7E6C);
    v29 = sub_238BF3418();

    [v27 openURL:v28 options:v29 completionHandler:0];
  }
}

void *sub_238BEFC5C(uint64_t a1, SEL *a2)
{
  v3 = sub_238BF3268();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() *a2];
    sub_238BF3258();

    sub_238BEF7F8(v6);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_238BEFD88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238BF3368();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  if ([v1 viewModel])
  {
    sub_238BF32F8();
    if (swift_dynamicCastClass())
    {
      sub_238BF3288();
      swift_unknownObjectRelease();
      (*(v4 + 32))(v9, v7, v3);
      sub_238BF3348();
      return (*(v4 + 8))(v9, v3);
    }

    swift_unknownObjectRelease();
  }

  v11 = *MEMORY[0x277D24188];
  v12 = sub_238BF3388();
  v13 = *(*(v12 - 8) + 104);

  return v13(a1, v11, v12);
}

void sub_238BEFF64(void *a1)
{
  v2 = v1;
  v4 = sub_238BF3388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 presentationContext];
  if (v8)
  {
    v9 = v8;
    v10 = off_278A66000;
    if ([v1 isInViewHierarchy])
    {
LABEL_22:
      v51 = [v2 v10[260]];
      v52 = [v51 viewControllers];

      if (v52)
      {
        sub_238BF1764();
        v53 = sub_238BF34C8();

        if (v53 >> 62)
        {
          v54 = sub_238BF3538();
        }

        else
        {
          v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v52 = v54 != 0;
      }

      v55 = [v2 v10[260]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A830, &unk_238BF7BD0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_238BF7B50;
      *(v56 + 32) = a1;
      sub_238BF1764();
      v57 = a1;
      v58 = sub_238BF34B8();

      [v55 setViewControllers:v58 direction:0 animated:v52 completion:0];

      return;
    }

    v11 = [v1 pageViewController];
    [v2 addChildViewController_];
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 setTranslatesAutoresizingMaskIntoConstraints_];

      v14 = [v2 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v11 view];
        if (v16)
        {
          v17 = v16;
          v60 = v5;
          [v15 addSubview_];

          v18 = [v2 view];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 topAnchor];

            v21 = [v11 view];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 topAnchor];

              v24 = [v20 constraintEqualToAnchor_];
              [v24 setActive_];

              v25 = [v2 view];
              if (v25)
              {
                v26 = v25;
                v27 = [v25 leadingAnchor];

                v28 = [v11 view];
                if (v28)
                {
                  v29 = v28;
                  v30 = [v28 leadingAnchor];

                  v31 = [v27 constraintEqualToAnchor_];
                  [v31 setActive_];

                  v32 = [v2 view];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = [v32 bottomAnchor];

                    v35 = [v11 view];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = [v35 bottomAnchor];

                      v38 = [v34 constraintEqualToAnchor_];
                      [v38 setActive_];

                      v39 = [v2 view];
                      if (v39)
                      {
                        v40 = v39;
                        v41 = [v39 trailingAnchor];

                        v42 = [v11 view];
                        if (v42)
                        {
                          v43 = v42;
                          v44 = [v42 trailingAnchor];

                          v45 = [v41 constraintEqualToAnchor_];
                          [v45 setActive_];

                          [v11 didMoveToParentViewController_];
                          sub_238BEFD88(v7);
                          v46 = v60;
                          v47 = (*(v60 + 88))(v7, v4);
                          if (v47 == *MEMORY[0x277D24180])
                          {
                            [v9 showViewController:v2 sender:0];
                            v10 = off_278A66000;
                          }

                          else
                          {
                            v10 = off_278A66000;
                            if (v47 == *MEMORY[0x277D24188])
                            {
                              [v2 setModalInPresentation_];
                              [v9 presentViewController:v2 animated:1 completion:0];
                            }

                            else
                            {
                              (*(v46 + 8))(v7, v4);
                            }
                          }

                          goto LABEL_22;
                        }

LABEL_38:
                        __break(1u);
                        return;
                      }

LABEL_37:
                      __break(1u);
                      goto LABEL_38;
                    }

LABEL_36:
                    __break(1u);
                    goto LABEL_37;
                  }

LABEL_35:
                  __break(1u);
                  goto LABEL_36;
                }

LABEL_34:
                __break(1u);
                goto LABEL_35;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_238BF32F8();
  sub_238BF1118();
  v48 = swift_allocError();
  *v49 = 0;
  v50 = sub_238BF32E8();

  sub_238BEE61C(0, v50);
}

uint64_t sub_238BF0684(uint64_t a1, id *a2)
{
  result = sub_238BF3448();
  *a2 = 0;
  return result;
}

uint64_t sub_238BF06FC(uint64_t a1, id *a2)
{
  v3 = sub_238BF3458();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_238BF077C@<X0>(uint64_t *a2@<X8>)
{
  sub_238BF3468();
  v3 = sub_238BF3438();

  *a2 = v3;
  return result;
}

uint64_t sub_238BF07C0()
{
  v0 = sub_238BF3468();
  v1 = MEMORY[0x23EE744D0](v0);

  return v1;
}

uint64_t sub_238BF07FC(uint64_t a1)
{
  sub_238BF3468();
  sub_238BF3488();
}

uint64_t sub_238BF0850(uint64_t a1)
{
  sub_238BF3468();
  sub_238BF35C8();
  sub_238BF3488();
  v1 = sub_238BF35E8();

  return v1;
}

uint64_t sub_238BF08C4(void *a1, uint64_t *a2)
{
  v2 = sub_238BF3468();
  v4 = v3;
  if (v2 == sub_238BF3468() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_238BF3578();
  }

  return v7 & 1;
}

uint64_t sub_238BF094C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_238BF3438();

  *a2 = v3;
  return result;
}

uint64_t sub_238BF0994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238BF3468();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_238BF09C0(uint64_t a1)
{
  v2 = sub_238BF1AC4(&qword_27DF6A808, type metadata accessor for OpenExternalURLOptionsKey, &unk_238BF7E6C);
  v3 = sub_238BF1AC4(&unk_27DF6A8D0, type metadata accessor for OpenExternalURLOptionsKey, "i-dI@8");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

unint64_t sub_238BF0AC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238BF0C38(v11, 0, 0, 1, a1, a2);
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
    sub_238BF0BDC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

uint64_t sub_238BF0BDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_238BF0C38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238BF0D44(a5, a6);
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
    result = sub_238BF3528();
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

void *sub_238BF0D44(uint64_t a1, unint64_t a2)
{
  v3 = sub_238BF0D90(a1, a2);
  sub_238BF0EC0(&unk_284B7B2D0);
  return v3;
}

void *sub_238BF0D90(uint64_t a1, unint64_t a2)
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

  v6 = sub_238BF0FAC(v5, 0);
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

  result = sub_238BF3528();
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
        v10 = sub_238BF3498();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238BF0FAC(v10, 0);
        result = sub_238BF3508();
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

uint64_t sub_238BF0EC0(uint64_t result)
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

  result = sub_238BF1020(result, v11, 1, v3);
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

void *sub_238BF0FAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A790, &qword_238BF7B78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238BF1020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A790, &qword_238BF7B78);
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

unint64_t sub_238BF1118()
{
  result = qword_27DF6AA10[0];
  if (!qword_27DF6AA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF6AA10);
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

uint64_t sub_238BF11B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A7A0, &qword_238BF7B88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238BF1224()
{
  MEMORY[0x23EE74E30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_238BF125C(void (*a1)(char *, uint64_t), unsigned int (*a2)(char *, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_238BEEB80(a1, a2);
  }
}

uint64_t sub_238BF12C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238BF1300(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A798, &qword_238BF7B80);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_238BF1378(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_238BF13E4(uint64_t a1)
{
  sub_238BF3468();
  sub_238BF35C8();
  sub_238BF3488();
  v2 = sub_238BF35E8();

  return sub_238BF1478(a1, v2);
}

unint64_t sub_238BF1478(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_238BF3468();
      v8 = v7;
      if (v6 == sub_238BF3468() && v8 == v9)
      {
        break;
      }

      v11 = sub_238BF3578();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_238BF157C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6A818, &qword_238BF7BC0);
    v3 = sub_238BF3548();
    v4 = a1 + 32;

    while (1)
    {
      sub_238BF17B0(v4, &v11, &qword_27DF6A820, &qword_238BF7BC8);
      v5 = v11;
      result = sub_238BF13E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_238BF16F4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_27DF6A8B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DF6A8B0);
    }
  }
}

_OWORD *sub_238BF16F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_238BF1704(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_238BF1764()
{
  result = qword_27DF6A828;
  if (!qword_27DF6A828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF6A828);
  }

  return result;
}

uint64_t sub_238BF17B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s13FailureReasonOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13FailureReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238BF1998()
{
  result = qword_27DF6AAA0[0];
  if (!qword_27DF6AAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF6AAA0);
  }

  return result;
}

uint64_t sub_238BF1AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_238BF1B0C()
{
  v0 = [objc_opt_self() createContext];

  return v0;
}

id sub_238BF1B90()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_238BF1BC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LAContextProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_238BF1C5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LAContextProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}