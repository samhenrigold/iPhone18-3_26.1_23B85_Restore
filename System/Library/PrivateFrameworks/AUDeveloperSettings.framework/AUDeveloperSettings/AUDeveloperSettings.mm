uint64_t sub_23D434CE4(void *a1)
{
  v1 = sub_23D46B8F8();
  sub_23D43B63C(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_23D434D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA738, &qword_23D46D2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D434DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA738, &qword_23D46D2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D434E20()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D434E58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D434EA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D434EE0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D434F18()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D434F60()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23D434FA0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D434FE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D435020(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D46BA88();

    return sub_23D46B8F8();
  }

  else
  {
    sub_23D46B938();
    swift_getWitnessTable();
    sub_23D46BA78();
    sub_23D46B8F8();
    sub_23D46BFA8();
    swift_getWitnessTable();
    sub_23D46B938();
    swift_getWitnessTable();
    sub_23D46BA78();
    return sub_23D46B8F8();
  }
}

uint64_t sub_23D435184(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D46BA88();
    sub_23D46B8F8();
  }

  else
  {
    sub_23D46B938();
    swift_getWitnessTable();
    sub_23D46BA78();
    sub_23D46B8F8();
    sub_23D46BFA8();
    swift_getWitnessTable();
    sub_23D46B938();
    swift_getWitnessTable();
    sub_23D46BA78();
    sub_23D46B8F8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D435384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D435450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23D43551C(void *a1)
{
  v1 = sub_23D46B8F8();
  sub_23D43B63C(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_23D4355E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DABF8, &qword_23D46D9A0);
  sub_23D453400();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D435648()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D435698()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D4356D0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D435728()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D4357C0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23D4357FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAD20, &unk_23D46E678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D43B810(&qword_27E2DAD38, &qword_27E2DAD20, &unk_23D46E678, MEMORY[0x277CDD940]);
  sub_23D43B810(&qword_27E2DAB10, &qword_27E2DAA48, &qword_23D46D6D0, MEMORY[0x277CDF030]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D4358EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_23D436AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBTextWelcomeControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278BD0C98;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("OBTextWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBTextWelcomeControllerClass_block_invoke_cold_1();
  }

  getOBTextWelcomeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23D436EF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getOBTextWelcomeControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBTextWelcomeControllerClass_softClass_0;
  v7 = getOBTextWelcomeControllerClass_softClass_0;
  if (!getOBTextWelcomeControllerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getOBTextWelcomeControllerClass_block_invoke_0;
    v3[3] = &unk_278BD0C78;
    v3[4] = &v4;
    __getOBTextWelcomeControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23D438CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D4392C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getOBTextWelcomeControllerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278BD0DE8;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("OBTextWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBTextWelcomeControllerClass_block_invoke_cold_1();
  }

  getOBTextWelcomeControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t sub_23D43A9A4(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_23D43AA70(uint64_t a1)
{
  v2 = *(*a1 + 464);

  v2(v3);

  (*(*a1 + 512))(v4);

  return a1;
}

uint64_t sub_23D43AB24(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA700, &qword_23D46D1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA708, &qword_23D46D1F0);
  sub_23D43B810(&qword_27E2DA710, &qword_27E2DA700, &qword_23D46D1E8, MEMORY[0x277CE14C8]);
  sub_23D43B3EC();
  return sub_23D46BBA8();
}

uint64_t sub_23D43AC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA738, &qword_23D46D2B0);
  v3 = MEMORY[0x28223BE20](v69);
  v74 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v75 = &v61[-v5];
  v6 = sub_23D46BF08();
  v73 = sub_23D46BEF8();
  v71 = v6;
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v8 = *(*a1 + 416);
  v67 = *a1 + 416;
  v68 = v8;
  v78 = (v8)(isCurrentExecutor);
  v79 = v9;
  v70 = sub_23D43B690(v78, v9, v10);
  v11 = sub_23D46BAC8();
  v64 = v11;
  v13 = v12;
  v63 = v12;
  v15 = v14;
  v17 = v16;
  v66 = v16;
  KeyPath = swift_getKeyPath();
  v78 = v11;
  v79 = v13;
  v62 = v15 & 1;
  v80 = v15 & 1;
  v81 = v17;
  v82 = KeyPath;
  v83 = 0;
  v84 = 0;
  sub_23D46BA38();
  v18 = sub_23D46BAB8();
  v20 = v19;
  v22 = v21;
  sub_23D46BB78();
  v23 = sub_23D46BAA8();
  v25 = v24;
  LOBYTE(v17) = v26;

  sub_23D43B748(v18, v20, v22 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA748, &qword_23D46D2E8);
  sub_23D43B758();
  sub_23D46BB38();
  sub_23D43B748(v23, v25, v17 & 1);

  sub_23D43B748(v64, v63, v62);

  v28 = *(*a1 + 1376);
  if ((v28)(v27) || v29 != 0xE000000000000000)
  {
    v31 = sub_23D46C1B8();

    v30 = v31 ^ 1;
  }

  else
  {

    v30 = 0;
  }

  v75[*(v69 + 36)] = sub_23D469394(v30 & 1) & 1;
  v78 = v68();
  v79 = v32;
  v33 = sub_23D46BAC8();
  v67 = v34;
  v68 = v33;
  v36 = v35;
  v69 = v37;
  v66 = swift_getKeyPath();
  if (v28() || v38 != 0xE000000000000000)
  {
    v39 = sub_23D46C1B8();
  }

  else
  {

    v39 = 1;
  }

  v40 = sub_23D469394(v39 & 1);
  v77 = v36 & 1;
  v76 = 0;
  KeyPath = sub_23D46B9D8();
  sub_23D46BEF8();
  sub_23D46BEE8();
  v41 = swift_task_isCurrentExecutor();
  if ((v41 & 1) == 0)
  {
    v41 = swift_task_reportUnexpectedExecutor();
  }

  LODWORD(v71) = v40 & 1;
  v78 = (*(*a1 + 464))(v41);
  v79 = v42;
  v43 = sub_23D46BAC8();
  v45 = v44;
  v47 = v46;
  v70 = v48;

  v49 = v74;
  sub_23D434D48(v75, v74);
  v50 = v77;
  LOBYTE(v78) = v77;
  v51 = v76;
  v52 = v72;
  sub_23D434D48(v49, v72);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA768, &qword_23D46D2F8);
  v54 = v52 + *(v53 + 48);
  v55 = v67;
  v56 = v68;
  *v54 = v68;
  *(v54 + 8) = v55;
  *(v54 + 16) = v50;
  v57 = KeyPath;
  v58 = v66;
  *(v54 + 24) = v69;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  *(v54 + 48) = v51;
  *(v54 + 49) = v71;
  v59 = v52 + *(v53 + 64);
  *v59 = v57;
  *(v59 + 8) = 0x4008000000000000;
  *(v59 + 16) = 0;
  *(v59 + 24) = v43;
  *(v59 + 32) = v45;
  v47 &= 1u;
  *(v59 + 40) = v47;
  *(v59 + 48) = v70;
  sub_23D43B858(v56, v55, v50 & 1);

  sub_23D43B858(v43, v45, v47);

  sub_23D434DB8(v75);
  sub_23D43B748(v43, v45, v47);

  sub_23D43B748(v56, v55, v78);

  sub_23D434DB8(v74);
}

uint64_t sub_23D43B2AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    v4 = a1;
    a1 = sub_23D46BB88();
  }

  *a2 = a1;
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

unint64_t sub_23D43B3EC()
{
  result = qword_27E2DA718;
  if (!qword_27E2DA718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA708, &qword_23D46D1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA718);
  }

  return result;
}

uint64_t sub_23D43B48C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA700, &qword_23D46D1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA708, &qword_23D46D1F0);
  sub_23D43B810(&qword_27E2DA710, &qword_27E2DA700, &qword_23D46D1E8, MEMORY[0x277CE14C8]);
  sub_23D43B3EC();
  return sub_23D46BBA8();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D43B5A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D43B5F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D43B63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DA730;
  if (!qword_27E2DA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA730);
  }

  return result;
}

unint64_t sub_23D43B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DA740;
  if (!qword_27E2DA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA740);
  }

  return result;
}

uint64_t sub_23D43B6E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D46B9B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23D43B748(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23D43B758()
{
  result = qword_27E2DA750;
  if (!qword_27E2DA750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA748, &qword_23D46D2E8);
    sub_23D43B810(&qword_27E2DA758, &qword_27E2DA760, &qword_23D46D2F0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA750);
  }

  return result;
}

uint64_t sub_23D43B810(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23D43B858(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23D43B870()
{
  type metadata accessor for AFUSettings(0);
  result = sub_23D453904();
  qword_27E2DBDF8 = result;
  return result;
}

uint64_t *sub_23D43B8A4()
{
  if (qword_27E2DAE08 != -1)
  {
    swift_once();
  }

  return &qword_27E2DBDF8;
}

uint64_t sub_23D43B8F4()
{
  if (qword_27E2DAE08 != -1)
  {
    swift_once();
  }
}

void *sub_23D43B950()
{
  v1 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__deviceManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D43B99C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__deviceManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D43BA54()
{
  v1 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__delegateQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D43BAA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__delegateQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_23D43BB5C()
{
  v7 = sub_23D46BF58();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D46BF38();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23D46BD38();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_23D43BDA4();
  sub_23D46BD18();
  v8 = MEMORY[0x277D84F90];
  sub_23D4412C8(&qword_27E2DA788, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA790, qword_23D46D320);
  sub_23D43F138(&qword_27E2DA798, &qword_27E2DA790, qword_23D46D320);
  sub_23D46BFF8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_23D46BF88();
}

unint64_t sub_23D43BDA4()
{
  result = qword_27E2DA780;
  if (!qword_27E2DA780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2DA780);
  }

  return result;
}

id sub_23D43BDF0()
{
  v1 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__internalQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D43BE44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__internalQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_23D43BF50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__uuidToSerialNumber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_23D43C030(void *a1)
{
  v2 = sub_23D46BF58();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D46BF38();
  MEMORY[0x28223BE20](v5);
  v6 = sub_23D46BD38();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v9 = (*MEMORY[0x277D85000] & *a1) + 112;
  v10 = v8(v7);
  if (v10)
  {
  }

  else
  {
    v11 = sub_23D43BDA4();
    v20[0] = "stopped due to disconnect";
    v20[1] = v11;
    sub_23D46BD18();
    v24 = MEMORY[0x277D84F90];
    sub_23D4412C8(&qword_27E2DA788, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA790, qword_23D46D320);
    v21 = v8;
    sub_23D43F138(&qword_27E2DA798, &qword_27E2DA790, qword_23D46D320);
    sub_23D46BFF8();
    (*(v23 + 104))(v4, *MEMORY[0x277D85260], v2);
    v12 = sub_23D46BF88();
    v13 = MEMORY[0x277D85000];
    v14 = (*((*MEMORY[0x277D85000] & *a1) + 0x90))(v12);
    v15 = v13;
    v16 = (*((*v13 & *a1) + 0x88))(v14);
    v17 = [objc_allocWithZone(MEMORY[0x277D73FE0]) initWithDelegate:a1 delegateQueue:v16 listener:0];

    v18 = (*((*v15 & *a1) + 0x78))(v17);
    v19 = v21(v18);
    [v19 activate];
  }
}

uint64_t sub_23D43C3E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_23D43C450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D46BD08();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D46BD38();
  v9 = *(v19 - 8);
  v10 = MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(v10);
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  sub_23D46BD18();
  v21 = MEMORY[0x277D84F90];
  sub_23D4412C8(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43F138(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
  sub_23D46BFF8();
  MEMORY[0x23EEE1040](0, v12, v8, v15);
  _Block_release(v15);

  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v12, v19);
}

uint64_t sub_23D43C72C(void *a1)
{
  v2 = v1;
  v4 = sub_23D46B898();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = sub_23D46B808();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_23D46B888();
    v30 = sub_23D46B878();
    v31 = sub_23D46BF28();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_23D433000, v30, v31, "getSerialNumberForEndpoint: deviceEndpoint is nil", v32, 2u);
      MEMORY[0x23EEE1B10](v32, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v15 = a1;
  v16 = [v15 uuid];
  sub_23D46B7F8();

  v17 = sub_23D46B7E8();
  v19 = v18;
  (*(v12 + 8))(v14, v11);

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    sub_23D46B888();
    v33 = sub_23D46B878();
    v34 = sub_23D46BF28();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_23D433000, v33, v34, "getSerialNumberForEndpoint: deviceEndpoint uuid is nil", v35, 2u);
      MEMORY[0x23EEE1B10](v35, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v10, v4);
    return 0;
  }

  v37[0] = 0;
  v37[1] = 0;
  v22 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v20);
  v23 = swift_allocObject();
  v23[2] = v2;
  v23[3] = v15;
  v23[4] = v37;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_23D43F22C;
  *(v24 + 24) = v23;
  aBlock[4] = sub_23D43F238;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43D1A8;
  aBlock[3] = &block_descriptor_15;
  v25 = _Block_copy(aBlock);
  v26 = v15;
  v27 = v2;

  dispatch_sync(v22, v25);

  _Block_release(v25);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    v29 = v37[0];

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D43CBA0(void *a1, void *a2, uint64_t *a3)
{
  v6 = sub_23D46B898();
  v64 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_23D46B808();
  v9 = *(v65 - 8);
  v10 = MEMORY[0x28223BE20](v65);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v63 = v62 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v62 - v15;
  v17 = [a2 uuid];
  sub_23D46B7F8();

  v18 = MEMORY[0x277D85000];
  v19 = (*((*MEMORY[0x277D85000] & *a1) + 0xB8))();
  if (*(v19 + 16) && (v20 = sub_23D43E0B4(v16), (v21 & 1) != 0))
  {
    v22 = (*(v19 + 56) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v9 + 8);

    v25(v16, v65);

    *a3 = v24;
    a3[1] = v23;
  }

  else
  {

    v62[0] = *(v9 + 8);
    v62[1] = v9 + 8;
    v27 = (v62[0])(v16, v65);
    v28 = (*((*v18 & *a1) + 0x70))(v27);
    if (v28 && (v29 = v28, v30 = [v28 serialNumber:a2 endpointIndex:0], v29, v30))
    {
      v31 = sub_23D46BDD8();
      v33 = v32;

      *a3 = v31;
      a3[1] = v33;

      v34 = [a2 uuid];
      v35 = v63;
      sub_23D46B7F8();

      v37 = *a3;
      v36 = a3[1];
      v38 = *((*v18 & *a1) + 0xC8);

      v39 = v38(v67);
      v41 = v40;
      if (v36)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *v41;
        *v41 = 0x8000000000000000;
        sub_23D43EA14(v37, v36, v35, isUniquelyReferenced_nonNull_native);
        (v62[0])(v35, v65);
        *v41 = v66;
      }

      else
      {
        v54 = sub_23D43E0B4(v35);
        if (v55)
        {
          v56 = v54;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v66 = *v41;
          *v41 = 0x8000000000000000;
          if ((v57 & 1) == 0)
          {
            sub_23D43ECB0();
          }

          v58 = v66;
          v59 = *(v66 + 48) + *(v9 + 72) * v56;
          v60 = v65;
          v61 = v62[0];
          (v62[0])(v59, v65);

          sub_23D43E6F4(v56, v58);
          v61(v35, v60);
          *v41 = v58;
        }

        else
        {
          (v62[0])(v35, v65);
        }
      }

      return v39(v67, 0);
    }

    else
    {
      sub_23D46B888();
      v43 = a2;
      v44 = sub_23D46B878();
      v45 = sub_23D46BF28();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v67[0] = v47;
        *v46 = 136315138;
        v48 = [v43 uuid];
        sub_23D46B7F8();

        sub_23D4412C8(&qword_27E2DA818, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v49 = v65;
        v50 = sub_23D46C1A8();
        v52 = v51;
        (v62[0])(v12, v49);
        v53 = sub_23D43DB0C(v50, v52, v67);

        *(v46 + 4) = v53;
        _os_log_impl(&dword_23D433000, v44, v45, "getSerialNumberForEndpoint: serialNumber is nil for %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x23EEE1B10](v47, -1, -1);
        MEMORY[0x23EEE1B10](v46, -1, -1);
      }

      return (*(v64 + 8))(v8, v6);
    }
  }
}

id sub_23D43D76C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23D43D7A0()
{
  v1 = v0;
  v13 = sub_23D46BF58();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D46BF38();
  MEMORY[0x28223BE20](v5);
  v6 = sub_23D46BD38();
  MEMORY[0x28223BE20](v6 - 8);
  *&v0[OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__deviceManager] = 0;
  *&v0[OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__delegateQueue] = 0;
  v12 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__internalQueue;
  v7 = sub_23D43BDA4();
  v11[1] = "ngs/AccessoryListView.swift";
  v11[2] = v7;
  sub_23D46BD18();
  v15 = MEMORY[0x277D84F90];
  sub_23D4412C8(&qword_27E2DA788, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA790, qword_23D46D320);
  sub_23D43F138(&qword_27E2DA798, &qword_27E2DA790, qword_23D46D320);
  sub_23D46BFF8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v13);
  *&v0[v12] = sub_23D46BF88();
  v8 = OBJC_IVAR____TtC19AUDeveloperSettings27AFUEndpointStatusController__uuidToSerialNumber;
  *&v1[v8] = sub_23D43EF3C(MEMORY[0x277D84F90]);
  v9 = type metadata accessor for AFUEndpointStatusController();
  v14.receiver = v1;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_23D43DA6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFUEndpointStatusController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23D43DB0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D43DBD8(v11, 0, 0, 1, a1, a2);
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
    sub_23D441268(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D43DBD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D43DCE4(a5, a6);
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
    result = sub_23D46C068();
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

void *sub_23D43DCE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_23D43DD30(a1, a2);
  sub_23D43DE60(&unk_284F754D8);
  return v3;
}

void *sub_23D43DD30(uint64_t a1, unint64_t a2)
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

  v6 = sub_23D43DF4C(v5, 0);
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

  result = sub_23D46C068();
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
        v10 = sub_23D46BE38();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D43DF4C(v10, 0);
        result = sub_23D46C028();
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

uint64_t sub_23D43DE60(uint64_t result)
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

  result = sub_23D43DFC0(result, v11, 1, v3);
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

void *sub_23D43DF4C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA830, &qword_23D46D378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D43DFC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA830, &qword_23D46D378);
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

unint64_t sub_23D43E0B4(uint64_t a1)
{
  sub_23D46B808();
  sub_23D4412C8(&qword_27E2DA828, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_23D46BD98();

  return sub_23D43E14C(a1, v2);
}

unint64_t sub_23D43E14C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23D46B808();
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
      sub_23D4412C8(&qword_27E2DA838, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_23D46BDB8();
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

uint64_t sub_23D43E30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23D46B808();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA820, "D-");
  v44 = v4;
  result = sub_23D46C0E8();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
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
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_23D4412C8(&qword_27E2DA828, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23D46BD98();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_23D43E6F4(int64_t a1, uint64_t a2)
{
  v40 = sub_23D46B808();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_23D46C008();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_23D4412C8(&qword_27E2DA828, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_23D46BD98();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_23D43EA14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_23D46B808();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_23D43E0B4(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_23D43ECB0();
      goto LABEL_9;
    }

    sub_23D43E30C(v18, a4 & 1);
    v21 = sub_23D43E0B4(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23D46C1D8();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_23D43EBF0(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_23D43EBF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_23D46B808();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_23D43ECB0()
{
  v1 = v0;
  v35 = sub_23D46B808();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA820, "D-");
  v3 = *v0;
  v4 = sub_23D46C0D8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_23D43EF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DA840, qword_23D46D380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA820, "D-");
    v7 = sub_23D46C0F8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23D441310(v9, v5);
      result = sub_23D43E0B4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23D46B808();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D43F138(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D43F18C()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  [v3 deactivate];

  return (*((*v2 & *v1) + 0x78))(0);
}

uint64_t sub_23D43F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = sub_23D46BD08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23D46BD38();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v4) + 0xE0))(a1);
  if (v15)
  {
    v16 = result;
    v17 = v15;
    sub_23D43BDA4();
    v21 = sub_23D46BF68();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    aBlock[4] = a3;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = v22;
    v19 = _Block_copy(aBlock);
    sub_23D46BD18();
    v24 = MEMORY[0x277D84F90];
    sub_23D4412C8(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D43F138(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
    sub_23D46BFF8();
    v20 = v21;
    MEMORY[0x23EEE1040](0, v13, v10, v19);
    _Block_release(v19);

    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v23);
  }

  return result;
}

uint64_t sub_23D43F55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23D46BD08();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23D46BD38();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v3) + 0xE0))(a1);
  if (v14)
  {
    v15 = result;
    v16 = v14;
    sub_23D43BDA4();
    v17 = sub_23D46BF68();
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v16;
    v18[4] = a2;
    v18[5] = a3;
    aBlock[4] = sub_23D4406A4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = &block_descriptor_41;
    v19 = _Block_copy(aBlock);
    sub_23D46BD18();
    v23 = MEMORY[0x277D84F90];
    sub_23D4412C8(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D43F138(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
    sub_23D46BFF8();
    MEMORY[0x23EEE1040](0, v12, v9, v19);
    _Block_release(v19);

    (*(v22 + 8))(v9, v7);
    (*(v10 + 8))(v12, v21);
  }

  return result;
}

uint64_t sub_23D43F874(uint64_t a1, uint64_t a2)
{
  v5 = sub_23D46BD08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23D46BD38();
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(a1);
  if (v13)
  {
    v14 = result;
    v15 = v13;
    sub_23D43BDA4();
    v20 = sub_23D46BF68();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = a2;
    aBlock[4] = sub_23D440218;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = &block_descriptor_35;
    v17 = _Block_copy(aBlock);
    sub_23D46BD18();
    v22 = MEMORY[0x277D84F90];
    sub_23D4412C8(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D43F138(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
    sub_23D46BFF8();
    v18 = v20;
    MEMORY[0x23EEE1040](0, v11, v8, v17);
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v21);
  }

  return result;
}

uint64_t sub_23D43FBA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

LABEL_22:

          v19 = (*(*v9 + 1520))(v18);
          (*(*v9 + 1584))(0x65646E6963736552, 0xEF74657373412064, v19, v20, 0, v1, v2, 0.0);

          break;
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        v22 = (*(*v9 + 848))(v14);
        sub_23D43B690(v22, v15, v16);
        v17 = sub_23D46BFD8();

        if (v17)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

uint64_t sub_23D43FEE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

LABEL_22:

          v19 = (*(*v9 + 1520))(v18);
          (*(*v9 + 1584))(0xD000000000000014, 0x800000023D46F1C0, v19, v20, 0, v1, v2, 1.0);

          break;
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        v22 = (*(*v9 + 848))(v14);
        sub_23D43B690(v22, v15, v16);
        v17 = sub_23D46BFD8();

        if (v17)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

uint64_t sub_23D440218()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(**sub_23D45393C() + 400);

  v6 = v4(v5);

  if (v6 >> 62)
  {
LABEL_35:
    v7 = sub_23D46C0C8();
    if (!v7)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_33;
    }
  }

  v29 = v3;
  v8 = 4;
  while (1)
  {
    v9 = v8 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EEE1110](v8 - 4, v6);
      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v10 = *(v6 + 8 * v8);

      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_22;
      }
    }

    if ((*(*v10 + 512))() == v1 && v12 == v2)
    {
      break;
    }

    v14 = sub_23D46C1B8();

    if (v14)
    {
      goto LABEL_22;
    }

    v16 = (*(*v10 + 848))(v15);
    v3 = v17;
    sub_23D43B690(v16, v17, v18);
    v19 = sub_23D46BFD8();

    if (v19)
    {
      goto LABEL_22;
    }

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  if (v29 == 1)
  {
    v20 = 0x432064616F6C7055;
  }

  else
  {
    v20 = 0x462064616F6C7055;
  }

  if (v29 == 1)
  {
    v21 = 0xEF6574656C706D6FLL;
  }

  else
  {
    v21 = 0xED000064656C6961;
  }

  MEMORY[0x23EEE0EE0](v20, v21);

  v23 = (*(*v10 + 1424))(v22);
  v25 = 1.0;
  if (v29 != 1)
  {
    if (v24 == 1.0)
    {
      v25 = 0.01;
      (*(*v10 + 1432))(v23, 0.01);
      v23 = (*(*v10 + 1528))(0, 0xE000000000000000);
    }

    else
    {
      v25 = v24;
    }
  }

  v26 = (*(*v10 + 1520))(v23);
  (*(*v10 + 1584))(0x6574656C706D6F43, 0xEA00000000002064, v26, v27, 0, v1, v2, v25);

LABEL_33:
}

uint64_t sub_23D4406A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v25 = v0[5];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(**sub_23D45393C() + 400);

  v6 = v4(v5);

  v26 = v3;
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_36:
  }

LABEL_35:
  v7 = sub_23D46C0C8();
  if (!v7)
  {
    goto LABEL_36;
  }

LABEL_5:
  v8 = 4;
  while (1)
  {
    v9 = v8 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EEE1110](v8 - 4, v6);
      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v10 = *(v6 + 8 * v8);

      v11 = v8 - 3;
      if (__OFADD__(v9, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_22;
      }
    }

    if ((*(*v10 + 512))() == v1 && v12 == v2)
    {
      break;
    }

    v14 = sub_23D46C1B8();

    if (v14)
    {
      goto LABEL_22;
    }

    v27 = (*(*v10 + 848))(v15);
    sub_23D43B690(v27, v16, v17);
    v18 = sub_23D46BFD8();

    if (v18)
    {
      goto LABEL_22;
    }

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_36;
    }
  }

LABEL_22:

  sub_23D46C038();

  MEMORY[0x23EEE0EE0](2629690, 0xE300000000000000);
  v19 = sub_23D46C1A8();
  MEMORY[0x23EEE0EE0](v19);

  MEMORY[0x23EEE0EE0](2109216, 0xE300000000000000);
  v20 = sub_23D46C1A8();
  MEMORY[0x23EEE0EE0](v20);

  MEMORY[0x23EEE0EE0](0x29736574796220, 0xE700000000000000);
  v21.n128_u64[0] = 0x3F847AE147AE147BLL;
  if (v26 >= 1 && v25 >= 1 && v25 >= v26)
  {
    v21.n128_f64[0] = v26 / v25;
  }

  if (v26 == v25)
  {
    v22 = 0x6574656C706D6F43;
  }

  else
  {
    v22 = 0x20676E6967617453;
  }

  if (v26 == v25)
  {
    v23 = 0xE900000000000064;
  }

  else
  {
    v23 = 0xEB000000002E2E2ELL;
  }

  (*(*v10 + 1584))(v22, v23, v1, v2, 1, v1, v2, v21);
}

uint64_t sub_23D440AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_35:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
LABEL_22:

            if ((*(*v9 + 1376))(v18))
            {
              v20 = 0;
            }

            else
            {
              v20 = v19 == 0xE000000000000000;
            }

            if (v20)
            {
            }

            else
            {
              v21 = sub_23D46C1B8();

              if ((v21 & 1) == 0)
              {
                v23 = (*(*v9 + 1472))(v22);
                v25 = v24;
                v34 = v24;
                v26 = (*v9 + 1424);
                v27 = *v26;
                if ((*v26)() != 1.0)
                {
                  v28 = MEMORY[0x23EEE0EE0](0xD000000000000019, 0x800000023D46F1E0);
                  v25 = v34;
                }

                v29 = (*(*v9 + 1520))(v28);
                v31 = v30;
                v27();
                (*(*v9 + 1584))(v23, v25, v29, v31, 0, v1, v2);

                break;
              }
            }
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

          goto LABEL_22;
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        v33 = (*(*v9 + 848))(v14);
        sub_23D43B690(v33, v15, v16);
        v17 = sub_23D46BFD8();

        if (v17)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

uint64_t sub_23D440F34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_24:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

LABEL_22:

          (*(*v9 + 1584))(0, 0xE000000000000000, 0, 0xE000000000000000, 0, v1, v2, 0.01);
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        v19 = (*(*v9 + 848))(v14);
        sub_23D43B690(v19, v15, v16);
        v17 = sub_23D46BFD8();

        if (v17)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
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

uint64_t sub_23D441268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D4412C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D441310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DA840, qword_23D46D380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D4413CC()
{
  type metadata accessor for AFUSettings(0);
  result = sub_23D453904();
  qword_27E2DBE00 = result;
  return result;
}

uint64_t *sub_23D441400()
{
  if (qword_27E2DAE10 != -1)
  {
    swift_once();
  }

  return &qword_27E2DBE00;
}

uint64_t sub_23D441450()
{
  if (qword_27E2DAE10 != -1)
  {
    swift_once();
  }
}

id sub_23D441744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFUObserverController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23D4417B8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AFUObserverController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_23D4417F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_23D44180C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v6 = sub_23D46BD08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D46BD38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 serialNumber];
  if (result)
  {
    v15 = result;
    v16 = sub_23D46BDD8();
    v23 = v10;
    v18 = v17;

    sub_23D43BDA4();
    v22 = sub_23D46BF68();
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    aBlock[4] = a3;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = v24;
    v20 = _Block_copy(aBlock);
    sub_23D46BD18();
    v25 = MEMORY[0x277D84F90];
    sub_23D4425D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D442630();
    sub_23D46BFF8();
    v21 = v22;
    MEMORY[0x23EEE1040](0, v13, v9, v20);
    _Block_release(v20);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v23);
  }

  return result;
}

id sub_23D441AB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D46BD08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D46BD38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 serialNumber];
  if (result)
  {
    v17 = result;
    v18 = sub_23D46BDD8();
    v32 = v19;
    v33 = v18;

    v20 = [a2 assetVersion];
    v34 = v9;
    v35 = v12;
    if (v20)
    {

      result = [a2 assetVersion];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v21 = result;
      v22 = a3;
      v23 = a4;
      v24 = sub_23D46BDD8();
      v26 = v25;
    }

    else
    {
      v22 = a3;
      v23 = a4;
      v26 = 0xE700000000000000;
      v24 = 0x6E776F6E6B6E55;
    }

    sub_23D43BDA4();
    v27 = sub_23D46BF68();
    v28 = swift_allocObject();
    v29 = v32;
    v28[2] = v33;
    v28[3] = v29;
    v28[4] = v22;
    v28[5] = v23;
    v28[6] = v24;
    v28[7] = v26;
    aBlock[4] = sub_23D442694;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = &block_descriptor_8;
    v30 = _Block_copy(aBlock);
    sub_23D46BD18();
    v36 = MEMORY[0x277D84F90];
    sub_23D4425D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D442630();
    sub_23D46BFF8();
    MEMORY[0x23EEE1040](0, v15, v11, v30);
    _Block_release(v30);

    (*(v34 + 8))(v11, v8);
    (*(v13 + 8))(v15, v35);
  }

  return result;
}

id sub_23D441DF0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_23D46BD08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D46BD38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 serialNumber];
  if (result)
  {
    v29 = a3;
    v15 = result;
    v16 = sub_23D46BDD8();
    v28 = v17;

    v18 = [a2 assetVersion];
    v30 = v10;
    if (v18)
    {

      result = [a2 assetVersion];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v19 = result;
      v20 = sub_23D46BDD8();
      v22 = v21;
    }

    else
    {
      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E55;
    }

    sub_23D43BDA4();
    v23 = sub_23D46BF68();
    v24 = swift_allocObject();
    v26 = v28;
    v25 = v29;
    v24[2] = v16;
    v24[3] = v26;
    v24[4] = v25;
    v24[5] = v20;
    v24[6] = v22;
    aBlock[4] = sub_23D442144;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D43C3E4;
    aBlock[3] = &block_descriptor_0;
    v27 = _Block_copy(aBlock);
    sub_23D46BD18();
    v31 = MEMORY[0x277D84F90];
    sub_23D4425D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
    sub_23D442630();
    sub_23D46BFF8();
    MEMORY[0x23EEE1040](0, v13, v9, v27);
    _Block_release(v27);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v30);
  }

  return result;
}

uint64_t sub_23D442144()
{
  v1 = v0[2];
  v2 = v0[3];
  v29 = v0[5];
  v30 = v0[4];
  v28 = v0[6];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_28:
    v6 = sub_23D46C0C8();
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  v7 = 4;
  while (1)
  {
    v8 = v7 - 4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
      v10 = v7 - 3;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_28;
      }

      v9 = *(v5 + 8 * v7);

      v10 = v7 - 3;
      if (__OFADD__(v8, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_22;
      }
    }

    if ((*(*v9 + 512))() == v1 && v11 == v2)
    {
      break;
    }

    v13 = sub_23D46C1B8();

    if (v13)
    {
      goto LABEL_22;
    }

    v31 = (*(*v9 + 848))(v14);
    sub_23D43B690(v31, v15, v16);
    v17 = sub_23D46BFD8();

    if (v17)
    {
      goto LABEL_22;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_29;
    }
  }

LABEL_22:

  UARPFirmwareStagingCompletionStatusToString();
  v18 = sub_23D46BE28();
  v20 = v19;
  MEMORY[0x23EEE0EE0](v29, v28);
  MEMORY[0x23EEE0EE0](32, 0xE100000000000000);
  MEMORY[0x23EEE0EE0](v18, v20);

  v22 = (*(*v9 + 1424))(v21);
  if (v30)
  {
    v24 = v23;
    if (v23 == 1.0)
    {
      v24 = 0.01;
      (*(*v9 + 1432))(v22, 0.01);
      v22 = (*(*v9 + 1528))(0, 0xE000000000000000);
    }
  }

  else
  {
    v24 = 1.0;
  }

  v25 = (*(*v9 + 1520))(v22);
  (*(*v9 + 1584))(0x6574656C706D6F43, 0xEA00000000002064, v25, v26, 0, v1, v2, v24);

LABEL_29:
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D4425D8()
{
  result = qword_27E2DA850;
  if (!qword_27E2DA850)
  {
    sub_23D46BD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA850);
  }

  return result;
}

unint64_t sub_23D442630()
{
  result = qword_27E2DA860;
  if (!qword_27E2DA860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA7B0, &qword_23D46D920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA860);
  }

  return result;
}

uint64_t sub_23D442694()
{
  v1 = v0[3];
  v29 = v0[2];
  v27 = v0[5];
  v28 = v0[4];
  v3 = v0[6];
  v2 = v0[7];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(**sub_23D45393C() + 400);

  v6 = v4(v5);

  if (v6 >> 62)
  {
LABEL_33:
    v7 = sub_23D46C0C8();
    if (!v7)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_31;
    }
  }

  v25 = v3;
  v26 = v2;
  v3 = 4;
  v8 = v29;
  while (1)
  {
    v9 = v3 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EEE1110](v3 - 4, v6);
      v11 = v3 - 3;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v10 = *(v6 + 8 * v3);

      v11 = v3 - 3;
      if (__OFADD__(v9, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:

        goto LABEL_23;
      }
    }

    if ((*(*v10 + 512))() == v8 && v12 == v1)
    {
      goto LABEL_20;
    }

    v14 = sub_23D46C1B8();

    if (v14)
    {
      goto LABEL_23;
    }

    v30 = (*(*v10 + 848))(v15);
    v2 = v1;
    sub_23D43B690(v30, v16, v17);
    v18 = sub_23D46BFD8();

    if (v18)
    {
      break;
    }

    ++v3;
    v8 = v29;
    if (v11 == v7)
    {
      goto LABEL_31;
    }
  }

  v8 = v29;
LABEL_23:

  sub_23D46C038();

  MEMORY[0x23EEE0EE0](2629690, 0xE300000000000000);
  v19 = sub_23D46C1A8();
  MEMORY[0x23EEE0EE0](v19);

  MEMORY[0x23EEE0EE0](2109216, 0xE300000000000000);
  v20 = sub_23D46C1A8();
  MEMORY[0x23EEE0EE0](v20);

  MEMORY[0x23EEE0EE0](0x29736574796220, 0xE700000000000000);
  v21 = 0.01;
  if (v28 && v27 && v27 >= v28)
  {
    v21 = v28 / v27;
  }

  if (v28 == v27)
  {
    v31 = 0x6574656C706D6F43;
    v32 = 0xEA00000000002064;
    v22 = v25;
    v23 = v26;
  }

  else
  {
    v31 = 0x20676E6967617453;
    v32 = 0xE800000000000000;
    MEMORY[0x23EEE0EE0](v25, v26);
    v22 = 774778400;
    v23 = 0xE400000000000000;
  }

  MEMORY[0x23EEE0EE0](v22, v23);
  (*(*v10 + 1584))(v31, v32, v8, v1, 1, v29, v1, v21);

LABEL_31:
}

uint64_t sub_23D442B38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_35:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
LABEL_22:

            if ((*(*v9 + 1376))(v18))
            {
              v20 = 0;
            }

            else
            {
              v20 = v19 == 0xE000000000000000;
            }

            if (v20)
            {
            }

            else
            {
              v21 = sub_23D46C1B8();

              if ((v21 & 1) == 0)
              {
                v23 = (*(*v9 + 1472))(v22);
                v25 = v24;
                v34 = v24;
                v26 = (*v9 + 1424);
                v27 = *v26;
                if ((*v26)() != 1.0)
                {
                  v28 = MEMORY[0x23EEE0EE0](0xD000000000000019, 0x800000023D46F1E0);
                  v25 = v34;
                }

                v29 = (*(*v9 + 1520))(v28);
                v31 = v30;
                v27();
                (*(*v9 + 1584))(v23, v25, v29, v31, 0, v1, v2);

                break;
              }
            }
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_35;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

          goto LABEL_22;
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        v33 = (*(*v9 + 848))(v14);
        sub_23D43B690(v33, v15, v16);
        v17 = sub_23D46BFD8();

        if (v17)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

uint64_t sub_23D442F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(**sub_23D45393C() + 400);

  v5 = v3(v4);

  if (v5 >> 62)
  {
LABEL_24:
    v6 = sub_23D46C0C8();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 4;
      do
      {
        v8 = v7 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EEE1110](v7 - 4, v5);
          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v7);

          v10 = v7 - 3;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v9 + 512))() == v1 && v11 == v2)
        {

LABEL_22:

          (*(*v9 + 1584))(0, 0xE000000000000000, 0, 0xE000000000000000, 0, v1, v2, 0.01);
        }

        v13 = sub_23D46C1B8();

        if (v13)
        {
          goto LABEL_22;
        }

        v19 = (*(*v9 + 848))(v14);
        sub_23D43B690(v19, v15, v16);
        v17 = sub_23D46BFD8();

        if (v17)
        {
          goto LABEL_22;
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

void type metadata accessor for UARPFirmwareStagingCompletionStatus()
{
  if (!qword_27E2DA870)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E2DA870);
    }
  }
}

uint64_t sub_23D4432CC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23D4432FC(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_23D443334()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23D443364(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_23D4433BC()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_23D4433EC(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_23D443444()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_23D443474(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_23D4434CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_23D46C1B8();
  }
}

uint64_t sub_23D4434FC(uint64_t a1)
{
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();

  return sub_23D46BDF8();
}

uint64_t sub_23D443554()
{
  sub_23D46C1E8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  return sub_23D46C228();
}

uint64_t sub_23D4435F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_23D443608@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23D443614(uint64_t a1)
{
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();

  return sub_23D46BDF8();
}

uint64_t sub_23D44369C(uint64_t a1)
{
  sub_23D46C1E8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  sub_23D46BDF8();
  return sub_23D46C228();
}

uint64_t sub_23D443738(uint64_t a1)
{
  type metadata accessor for SettingsAccessory(0);
  sub_23D452C84(&qword_27E2DA8E0, type metadata accessor for SettingsAccessory, &unk_23D46E418);

  return sub_23D46BCA8();
}

uint64_t sub_23D4437C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  return v1;
}

uint64_t (*sub_23D443840(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  *(v3 + 32) = sub_23D46BC68();
  return sub_23D4438CC;
}

void sub_23D4438CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23D443918()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);

  return sub_23D46BC98();
}

uint64_t sub_23D443964()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return v1;
}

uint64_t type metadata accessor for AccessoryDetailView(uint64_t a1)
{
  result = qword_27E2DB0A0;
  if (!qword_27E2DB0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D443A18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D443A94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return sub_23D443B58;
}

uint64_t sub_23D443B5C()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D443BC8()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return v1;
}

uint64_t sub_23D443C30(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D443CAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return sub_23D452ECC;
}

uint64_t sub_23D443D70()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D443DE0()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  return v1;
}

uint64_t sub_23D443E40(uint64_t a1)
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D443EA8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView(0) + 28));
  v7 = *v5;
  v6 = v5[1];
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  return sub_23D443F60;
}

uint64_t sub_23D443F64()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D444004()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return v1;
}

uint64_t sub_23D44406C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D4440E8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  return sub_23D452ECC;
}

void sub_23D4441AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[8] = v2[6];
  v4 = v2[7];
  v5 = v2[12];
  v2[4] = v3;
  v2[5] = v5;
  v2[9] = v4;
  if (a2)
  {

    sub_23D46BBD8();
  }

  else
  {
    sub_23D46BBD8();
  }

  free(v2);
}

uint64_t sub_23D444268()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D4442D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  sub_23D46BBB8();
  return v2;
}

uint64_t sub_23D44431C()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  return v1;
}

uint64_t sub_23D44437C(uint64_t a1)
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D4443E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView(0) + 36));
  v7 = *v5;
  v6 = v5[1];
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  return sub_23D452ED0;
}

void sub_23D44449C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_23D46BBD8();
  }

  else
  {
    sub_23D46BBD8();
  }

  free(v2);
}

uint64_t sub_23D444550()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D4445B8()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return v1;
}

uint64_t sub_23D444620(char a1)
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D444690(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView(0) + 40));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return sub_23D44474C;
}

uint64_t sub_23D444750()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D4447BC()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return v1;
}

uint64_t sub_23D444824(char a1)
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D444894(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView(0) + 44));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return sub_23D452ED4;
}

uint64_t sub_23D444950()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D4449F8()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return v1;
}

uint64_t sub_23D444A60(char a1)
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  return sub_23D46BBD8();
}

uint64_t (*sub_23D444AD0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AccessoryDetailView(0) + 48));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return sub_23D452ED4;
}

void sub_23D444B8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_23D46BBD8();

  free(v1);
}

uint64_t sub_23D444BF4()
{
  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D444C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryDetailView(0);
  v5 = (a2 + v4[5]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v5[2] = 0;
  v6 = (a2 + v4[6]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v6[2] = 0;
  v7 = (a2 + v4[8]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v7[2] = 0;
  v8 = (a2 + v4[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  sub_23D46BBB8();
  *v8 = v41;
  v8[1] = v42;
  type metadata accessor for SettingsAccessory(0);
  sub_23D452C84(&qword_27E2DA8E0, type metadata accessor for SettingsAccessory, &unk_23D46E418);

  sub_23D46BCA8();
  v9 = a2 + v4[10];
  v10 = sub_23D46BBB8();
  *v9 = v41;
  *(v9 + 8) = v42;
  (*(*a1 + 992))(v10);
  v11 = a2 + v4[11];
  v12 = sub_23D46BBB8();
  *v11 = v41;
  *(v11 + 8) = v42;
  v13 = (*(*a1 + 1088))(v12);
  sub_23D4451F8(v13, v14, v15);
  sub_23D46BE68();
  sub_23D46BE68();
  v16 = a2 + v4[12];
  sub_23D46BBB8();
  *v16 = v41;
  *(v16 + 8) = v42;
  v17 = (a2 + v4[9]);
  sub_23D46BBB8();
  *v17 = v41;
  v17[1] = v42;
  v18 = *(**sub_23D45393C() + 400);

  v20 = v18(v19);
  v21 = v20;
  if (v20 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23D46C0C8())
  {
    v23 = 0;
    v40 = *(*a1 + 464);
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x23EEE1110](v23, v21);
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        goto LABEL_11;
      }

      if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v24 = *(v21 + 8 * v23 + 32);

      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

LABEL_11:
      v26 = (*(*v24 + 464))();
      v28 = v27;
      if (v26 == v40() && v28 == v29)
      {
      }

      else
      {
        v31 = sub_23D46C1B8();

        if ((v31 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v33 = (*(*v24 + 512))(v32);
      v35 = v34;
      if (v33 == (*(*a1 + 512))() && v35 == v36)
      {

LABEL_26:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
        sub_23D46BC88();
      }

      v38 = sub_23D46C1B8();

      if (v38)
      {
        goto LABEL_26;
      }

LABEL_4:

      ++v23;
      if (v25 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
}

unint64_t sub_23D4451F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DA910;
  if (!qword_27E2DA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA910);
  }

  return result;
}

void sub_23D44524C()
{
  v1 = v0;
  v2 = sub_23D46B7D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v175 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v175 - v10;
  type metadata accessor for AFUSettings(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v201 = [objc_opt_self() bundleForClass_];
  v13 = [v201 resourceURL];
  if (!v13)
  {
    v24 = v201;

    return;
  }

  v14 = v13;
  sub_23D46B7C8();

  (*(v3 + 32))(v11, v9, v2);
  sub_23D46BDD8();
  sub_23D46B7B8();

  v15 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v16 = sub_23D46B7A8();
  v17 = [v15 initWithContentsOfURL_];

  v20 = *(v3 + 8);
  v19 = v3 + 8;
  v18 = v20;
  v20(v6, v2);
  if (!v17)
  {
    v18(v11, v2);
LABEL_18:

    return;
  }

  v200 = v18;
  v197 = v1;
  *&v207 = sub_23D46BDD8();
  *(&v207 + 1) = v21;
  v22 = sub_23D46C1C8();
  v199 = v17;
  v23 = [v17 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_23D46BFE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v207 = 0u;
    v208 = 0u;
  }

  v209 = v207;
  v210 = v208;
  if (!*(&v208 + 1))
  {
    v200(v11, v2);

LABEL_16:
    sub_23D4519AC(&v209, &qword_27E2DA918, &qword_23D46D468);
    return;
  }

  v198 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA920, &qword_23D46D470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v200(v11, v198);

    goto LABEL_18;
  }

  v25 = v203;
  sub_23D46BDD8();
  sub_23D46B7B8();

  v26 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v27 = sub_23D46B7A8();
  v28 = [v26 initWithContentsOfURL_];

  v29 = v6;
  v30 = v28;
  v31 = v198;
  v32 = v200;
  v200(v29, v198);
  if (!v30)
  {
    v32(v11, v31);

    return;
  }

  v195 = v19;
  v194 = v11;
  v196 = v25;
  *&v207 = sub_23D46BDD8();
  *(&v207 + 1) = v33;
  v34 = [v30 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_23D46BFE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v207 = 0u;
    v208 = 0u;
  }

  v35 = v199;
  v36 = v200;
  v37 = v196;
  v209 = v207;
  v210 = v208;
  if (!*(&v208 + 1))
  {
    v200(v194, v198);

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v36(v194, v198);

    goto LABEL_18;
  }

  v191 = v30;
  v192 = v203;
  v38 = *(v37 + 2);
  if (v38)
  {
    v39 = (v196 + 32);
    v40 = *MEMORY[0x277CE54C8];
    v193 = *MEMORY[0x277CE54D8];
    v190 = *MEMORY[0x277CE54B8];
    v189 = *MEMORY[0x277CE5490];
    v187 = *MEMORY[0x277CE54C0];
    v186 = *MEMORY[0x277CE5518];
    v185 = *MEMORY[0x277CE54A8];
    v184 = *MEMORY[0x277CE5498];
    v183 = *MEMORY[0x277CE54A0];
    while (1)
    {
      v41 = *v39;
      v42 = sub_23D46BDD8();
      v44 = v43;
      if (!*(v41 + 16))
      {
        goto LABEL_28;
      }

      v45 = v42;

      v46 = sub_23D450300(v45, v44);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        goto LABEL_28;
      }

      *&v207 = *(*(v41 + 56) + 8 * v46);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_28;
      }

      v49 = v40;
      v50 = v209;
      v51 = sub_23D46BDD8();
      if (!*(v41 + 16))
      {
        goto LABEL_49;
      }

      v53 = sub_23D450300(v51, v52);
      v55 = v54;

      if ((v55 & 1) == 0)
      {
        goto LABEL_50;
      }

      *&v207 = *(*(v41 + 56) + 8 * v53);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_28;
      }

      v56 = v209;
      v57 = sub_23D46BDD8();
      if (!*(v41 + 16))
      {

        goto LABEL_28;
      }

      v188 = *(&v56 + 1);
      v182 = v56;
      v59 = sub_23D450300(v57, v58);
      v61 = v60;

      if ((v61 & 1) == 0)
      {
LABEL_49:

        goto LABEL_50;
      }

      *&v207 = *(*(v41 + 56) + 8 * v59);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_51;
      }

      v62 = v209;
      v63 = sub_23D46BDD8();
      if (!*(v41 + 16))
      {

        goto LABEL_50;
      }

      v181 = v62;
      v65 = sub_23D450300(v63, v64);
      v67 = v66;

      if ((v67 & 1) == 0)
      {

LABEL_50:

LABEL_51:

        v40 = v49;
        goto LABEL_29;
      }

      *&v207 = *(*(v41 + 56) + 8 * v65);
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        v40 = v49;
        goto LABEL_29;
      }

      v178 = *(&v209 + 1);
      v176 = v209;
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
      v68 = sub_23D46BC78();
      v177 = (*(*v209 + 608))(v68);
      v70 = v69;
      v179 = v69;

      *&v209 = v177;
      *(&v209 + 1) = v70;
      *&v207 = sub_23D46BDD8();
      *(&v207 + 1) = v71;
      v177 = sub_23D43B690(v207, v71, v72);
      v73 = sub_23D46BFC8();

      if (v73)
      {
        v74 = sub_23D46BC78();
        v75 = (*(*v209 + 608))(v74);
        v77 = v76;

        *&v209 = v75;
        *(&v209 + 1) = v77;
        *&v207 = sub_23D46BDD8();
        *(&v207 + 1) = v78;
        v79 = sub_23D46BFC8();

        if (v79)
        {
          goto LABEL_61;
        }
      }

      v80 = sub_23D46BDD8();
      if (!*(v41 + 16))
      {
        break;
      }

      v82 = sub_23D450300(v80, v81);
      v84 = v83;

      if ((v84 & 1) == 0)
      {
        goto LABEL_61;
      }

      v85 = *(*(v41 + 56) + 8 * v82);
      swift_unknownObjectRetain();

      *&v209 = v85;
      if ((swift_dynamicCast() & 1) != 0 && v207 == 1)
      {

        goto LABEL_51;
      }

LABEL_62:
      v179 = type metadata accessor for AccessoryDetailView(0);
      v86 = (v197 + v179[7]);
      v87 = v86[1];
      *&v209 = *v86;
      v88 = v209;
      *(&v209 + 1) = v87;

      v175[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
      sub_23D46BBC8();
      v89 = v203;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177 = v87;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v89 = sub_23D450378(0, *(v89 + 2) + 1, 1, v89);
      }

      v92 = *(v89 + 2);
      v91 = *(v89 + 3);
      if (v92 >= v91 >> 1)
      {
        v89 = sub_23D450378((v91 > 1), v92 + 1, 1, v89);
      }

      *(v89 + 2) = v92 + 1;
      v93 = &v89[64 * v92];
      *(v93 + 2) = v50;
      v94 = v188;
      *(v93 + 6) = v182;
      *(v93 + 7) = v94;
      v95 = *(&v181 + 1);
      *(v93 + 8) = v181;
      *(v93 + 9) = v95;
      v96 = v178;
      *(v93 + 10) = v176;
      *(v93 + 11) = v96;
      *&v207 = v88;
      *(&v207 + 1) = v177;
      v206 = v89;
      sub_23D46BBD8();

      v97 = sub_23D46BC78();
      v98 = (*(*v209 + 752))(v97);
      v100 = v99;
      v101 = v182;

      if (v101 == v98 && v94 == v100)
      {
LABEL_68:

        v40 = v49;
        v101 = v182;
LABEL_70:
        v103 = (v197 + v179[5]);
        v104 = *v103;
        v105 = *(v103 + 2);
        v209 = v104;
        *&v210 = v105;
        *&v207 = v101;
        *(&v207 + 1) = v188;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
        sub_23D46BBD8();
        goto LABEL_71;
      }

      v102 = sub_23D46C1B8();

      v40 = v49;
      if (v102)
      {
        goto LABEL_70;
      }

      v114 = sub_23D46BC78();
      v115 = (*(*v209 + 752))(v114);
      v117 = v116;

      if (v115 == sub_23D46BDD8() && v117 == v118)
      {

        v101 = v182;
      }

      else
      {
        v124 = sub_23D46C1B8();

        v101 = v182;
        if ((v124 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      if (v101 == sub_23D46BDD8() && v188 == v125)
      {
        goto LABEL_68;
      }

      v101 = v182;
      v126 = sub_23D46C1B8();

      v40 = v49;
      if (v126)
      {
        goto LABEL_70;
      }

LABEL_71:
      v106 = sub_23D46BC78();
      v107 = (*(*v209 + 896))(v106);
      v109 = v108;

      if (v101 == v107 && v188 == v109)
      {
        goto LABEL_73;
      }

      v110 = sub_23D46C1B8();

      if (v110)
      {
        goto LABEL_75;
      }

      v119 = sub_23D46BC78();
      v120 = (*(*v209 + 896))(v119);
      v122 = v121;

      if (v120 == sub_23D46BDD8() && v122 == v123)
      {
      }

      else
      {
        v127 = sub_23D46C1B8();

        if ((v127 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      if (v182 == sub_23D46BDD8() && v188 == v128)
      {
        v40 = v49;
LABEL_73:

LABEL_75:
        v111 = (v197 + v179[6]);
        v112 = *v111;
        v113 = *(v111 + 2);
        v209 = v112;
        *&v210 = v113;
        *&v207 = v182;
        *(&v207 + 1) = v188;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
        sub_23D46BBD8();
        goto LABEL_29;
      }

      v129 = sub_23D46C1B8();

      v40 = v49;
      if (v129)
      {
        goto LABEL_75;
      }

LABEL_28:

LABEL_29:
      ++v39;
      if (!--v38)
      {
        goto LABEL_93;
      }
    }

LABEL_61:

    goto LABEL_62;
  }

LABEL_93:

  v130 = *(v192 + 2);
  v131 = v197;
  if (v130)
  {
    v132 = (v192 + 32);
    v196 = *MEMORY[0x277CE54D8];
    v193 = *MEMORY[0x277CE54B8];
    do
    {
      v133 = *v132;
      v134 = sub_23D46BDD8();
      v136 = v135;
      if (*(v133 + 16))
      {
        v137 = v134;

        v138 = sub_23D450300(v137, v136);
        v140 = v139;

        if (v140)
        {
          *&v207 = *(*(v133 + 56) + 8 * v138);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v141 = v209;
            v142 = sub_23D46BDD8();
            if (*(v133 + 16))
            {
              v144 = sub_23D450300(v142, v143);
              v146 = v145;

              if (v146)
              {
                *&v207 = *(*(v133 + 56) + 8 * v144);
                swift_unknownObjectRetain();
                if (swift_dynamicCast())
                {
                  v147 = v209;
                  v148 = sub_23D46BDD8();
                  if (*(v133 + 16))
                  {
                    v192 = *(&v147 + 1);
                    v190 = v147;
                    v150 = sub_23D450300(v148, v149);
                    v152 = v151;

                    if (v152)
                    {
                      v153 = *(*(v133 + 56) + 8 * v150);
                      swift_unknownObjectRetain();

                      v206 = v153;
                      if (swift_dynamicCast())
                      {
                        v188 = *(&v209 + 1);
                        v189 = v209;
                        v154 = (v197 + *(type metadata accessor for AccessoryDetailView(0) + 36));
                        v156 = *v154;
                        v155 = v154[1];
                        *&v207 = *v154;
                        *(&v207 + 1) = v155;
                        v187 = v155;

                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
                        sub_23D46BBC8();
                        v157 = v205;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v157 = sub_23D450378(0, *(v157 + 2) + 1, 1, v157);
                        }

                        v159 = *(v157 + 2);
                        v158 = *(v157 + 3);
                        v160 = v159 + 1;
                        if (v159 >= v158 >> 1)
                        {
                          v186 = v159 + 1;
                          v164 = sub_23D450378((v158 > 1), v159 + 1, 1, v157);
                          v160 = v186;
                          v157 = v164;
                        }

                        *(v157 + 2) = v160;
                        v161 = &v157[64 * v159];
                        *(v161 + 2) = v141;
                        v162 = v192;
                        *(v161 + 6) = v190;
                        *(v161 + 7) = v162;
                        v163 = v188;
                        *(v161 + 8) = v189;
                        *(v161 + 9) = v163;
                        *(v161 + 10) = 0;
                        *(v161 + 11) = 0xE000000000000000;
                        v202 = v157;
                        v203 = v156;
                        v204 = v187;
                        sub_23D46BBD8();

                        goto LABEL_114;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                  }
                }
              }

LABEL_114:

              v131 = v197;
              goto LABEL_96;
            }
          }
        }
      }

LABEL_96:
      ++v132;
      --v130;
    }

    while (v130);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v165 = sub_23D46BC78();
  v166 = (*(*v209 + 1040))(v165);

  v167 = v198;
  if (v166 < 0)
  {
    __break(1u);
  }

  else
  {
    v168 = AUSettingsPallasAudienceTypeToString();
    v169 = sub_23D46BDD8();
    v171 = v170;

    v172 = (v131 + *(type metadata accessor for AccessoryDetailView(0) + 32));
    v173 = v172[1];
    v174 = v172[2];
    *&v209 = *v172;
    *(&v209 + 1) = v173;
    *&v210 = v174;
    *&v207 = v169;
    *(&v207 + 1) = v171;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
    sub_23D46BBD8();

    v200(v194, v167);
  }
}

uint64_t sub_23D4468B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryDetailView(0);
  v5 = v4 - 8;
  v26 = *(v4 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA928, &qword_23D46D478);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v27 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA930, &qword_23D46D480);
  sub_23D43B810(&qword_27E2DA938, &qword_27E2DA930, &qword_23D46D480, MEMORY[0x277CE14C8]);
  sub_23D46BA98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v11 = sub_23D46BC78();
  (*(*v30 + 416))(v11);

  sub_23D43B810(&qword_27E2DA940, &qword_27E2DA928, &qword_23D46D478, MEMORY[0x277CDE588]);
  sub_23D46BB28();

  (*(v8 + 8))(v10, v7);
  v12 = sub_23D46BCE8();
  v13 = (v1 + *(v5 + 28));
  v14 = *v13;
  v15 = *(v13 + 2);
  v30 = v14;
  v31 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  v16 = v28;
  v17 = v29;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA948, &qword_23D46D488) + 36));
  *v18 = v12;
  v18[1] = v16;
  v18[2] = v17;
  v19 = v2;
  v20 = v25;
  sub_23D45048C(v19, v25);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_23D4504F0(v20, v22 + v21);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA950, &unk_23D46D490);
  v24 = (a1 + *(result + 36));
  *v24 = sub_23D450554;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  return result;
}

uint64_t sub_23D446C30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9A8, ">4");
  v3 = MEMORY[0x28223BE20](v78);
  v87 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v90 = &v68[-v5];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9B0, &qword_23D46D638);
  v81 = *(v82 - 8);
  v6 = MEMORY[0x28223BE20](v82);
  v80 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v89 = &v68[-v8];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9B8, &qword_23D46D640);
  v79 = *(v86 - 8);
  v9 = MEMORY[0x28223BE20](v86);
  v85 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v88 = &v68[-v11];
  sub_23D46BF08();
  v77 = sub_23D46BEF8();
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9C0, &qword_23D46D648);
  sub_23D43B810(&qword_27E2DA9C8, &qword_27E2DA9C0, &qword_23D46D648, MEMORY[0x277CE14C8]);
  v13 = sub_23D46BC48();
  v76 = v68;
  MEMORY[0x28223BE20](v13);
  v75 = &v68[-32];
  v74 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23D46BA38();
  v71 = sub_23D46BAB8();
  v70 = v14;
  v69 = v15;
  v73 = v16;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v17 = sub_23D46BC78();
  v18 = (*(*v91 + 1280))(v17);

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v20 = sub_23D46BC78();
    v21 = (*(*v91 + 1328))(v20);

    v19 = v21 ^ 1;
  }

  v22 = sub_23D469394(v19 & 1);
  sub_23D46BA38();
  v23 = sub_23D46BAB8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = swift_getKeyPath();
  v31 = sub_23D46BC78();
  v32 = (*(*v91 + 1280))(v31);

  v84 = a1;
  v33 = 1;
  if ((v32 & 1) == 0)
  {
    v34 = sub_23D46BC78();
    v33 = (*(*v91 + 1328))(v34);
  }

  v35 = sub_23D469394(v33 & 1);
  v107 = v69 & 1;
  v36 = v22 & 1;
  v106 = v69 & 1;
  v37 = v27 & 1;
  v105 = v27 & 1;
  v38 = v27 & 1;
  v39 = v71;
  v40 = v70;
  v91 = v71;
  v92 = v70;
  v93 = v69 & 1;
  v94 = v73;
  v95 = KeyPath;
  v96 = 1;
  v97 = v36;
  v98 = v23;
  v99 = v25;
  v100 = v38;
  v101 = v29;
  v102 = v30;
  v103 = 1;
  v104 = v35 & 1;
  sub_23D43B858(v71, v70, v69 & 1);

  sub_23D43B858(v23, v25, v37);

  sub_23D43B748(v23, v25, v37);

  sub_23D43B748(v39, v40, v107);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9D0, &qword_23D46D650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9D8, &qword_23D46D658);
  v41 = MEMORY[0x277CE14C8];
  sub_23D43B810(&qword_27E2DA9E0, &qword_27E2DA9D0, &qword_23D46D650, MEMORY[0x277CE14C8]);
  sub_23D43B810(&qword_27E2DA9E8, &qword_27E2DA9D8, &qword_23D46D658, v41);
  v42 = sub_23D46BC58();
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9F0, &qword_23D46D660);
  sub_23D450E50();
  sub_23D46BC48();
  v43 = sub_23D46BCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v44 = sub_23D46BC78();
  v45 = (*(*v91 + 1472))(v44);
  v47 = v46;

  if (v45 || v47 != 0xE000000000000000)
  {
    v49 = sub_23D46C1B8();

    v48 = v49 ^ 1;
  }

  else
  {

    v48 = 0;
  }

  v50 = v90;
  v51 = &v90[*(v78 + 36)];
  *v51 = v43;
  v51[8] = v48 & 1;
  v52 = v79;
  v53 = *(v79 + 16);
  v54 = v85;
  v53(v85, v88, v86);
  v55 = v81;
  v56 = *(v81 + 16);
  v57 = v80;
  v58 = v82;
  v56(v80, v89, v82);
  sub_23D451944(v50, v87, &qword_27E2DA9A8, ">4");
  v59 = v83;
  v60 = v54;
  v61 = v86;
  v53(v83, v60, v86);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA10, &qword_23D46D670);
  v56(&v59[*(v62 + 48)], v57, v58);
  v63 = &v59[*(v62 + 64)];
  v64 = v87;
  sub_23D451944(v87, v63, &qword_27E2DA9A8, ">4");
  sub_23D4519AC(v90, &qword_27E2DA9A8, ">4");
  v65 = *(v55 + 8);
  v65(v89, v58);
  v66 = *(v52 + 8);
  v66(v88, v61);
  sub_23D4519AC(v64, &qword_27E2DA9A8, ">4");
  v65(v57, v58);
  v66(v85, v61);
}

uint64_t sub_23D447728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v376 = a2;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA68, &qword_23D46D720);
  v3 = MEMORY[0x28223BE20](v385);
  v377 = &v340[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v372 = &v340[-v6];
  MEMORY[0x28223BE20](v5);
  v374 = &v340[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA70, &qword_23D46D728);
  v369 = *(v8 - 8);
  v370 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v340[-v9];
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA78, &qword_23D46D730);
  v11 = MEMORY[0x28223BE20](v401);
  v375 = &v340[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v396 = &v340[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v393 = &v340[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v367 = &v340[-v18];
  MEMORY[0x28223BE20](v17);
  v392 = &v340[-v19];
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA80, &qword_23D46D738);
  v20 = MEMORY[0x28223BE20](v382);
  v394 = &v340[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v395 = &v340[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v390 = &v340[-v25];
  MEMORY[0x28223BE20](v24);
  v413 = &v340[-v26];
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA88, &qword_23D46D740);
  MEMORY[0x28223BE20](v399);
  v400 = &v340[-v27];
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA90, &qword_23D46D748);
  v28 = MEMORY[0x28223BE20](v363);
  v391 = &v340[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v407 = &v340[-v30];
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA98, &qword_23D46D750);
  v31 = MEMORY[0x28223BE20](v381);
  v380 = &v340[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v357 = &v340[-v33];
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAA0, &qword_23D46D758);
  MEMORY[0x28223BE20](v356);
  v360 = &v340[-v34];
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAA8, &qword_23D46D760);
  v35 = MEMORY[0x28223BE20](v359);
  v389 = &v340[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v358 = &v340[-v38];
  MEMORY[0x28223BE20](v37);
  v405 = &v340[-v39];
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAB0, &qword_23D46D768);
  v40 = MEMORY[0x28223BE20](v355);
  v388 = &v340[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40);
  v404 = &v340[-v42];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAB8, &qword_23D46D770);
  MEMORY[0x28223BE20](v43 - 8);
  v352 = &v340[-v44];
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAC0, &qword_23D46D778);
  v45 = MEMORY[0x28223BE20](v351);
  v387 = &v340[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = MEMORY[0x28223BE20](v45);
  v350 = &v340[-v48];
  MEMORY[0x28223BE20](v47);
  v403 = &v340[-v49];
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAC8, &qword_23D46D780);
  v50 = MEMORY[0x28223BE20](v348);
  v383 = &v340[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v50);
  v412 = &v340[-v52];
  v349 = type metadata accessor for AccessoryDetailView(0);
  v416 = *(v349 - 8);
  MEMORY[0x28223BE20](v349);
  v417 = v53;
  v420 = &v340[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v419 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v409 = &v340[-v55];
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAD0, &qword_23D46D788);
  v410 = *(v398 - 8);
  MEMORY[0x28223BE20](v398);
  v397 = &v340[-v56];
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAD8, &qword_23D46D790);
  v386 = *(v406 - 8);
  v57 = MEMORY[0x28223BE20](v406);
  v384 = &v340[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = MEMORY[0x28223BE20](v57);
  v371 = &v340[-v60];
  MEMORY[0x28223BE20](v59);
  v402 = &v340[-v61];
  v62 = sub_23D46BF08();
  v373 = sub_23D46BEF8();
  v418 = v62;
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v368 = v10;
  v411 = v54;
  v366 = sub_23D46B9E8();
  LOBYTE(v503[0]) = 1;
  v415 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v63 = [objc_opt_self() mainBundle];
  v64 = sub_23D46B788();
  v66 = v65;

  *&v435 = v64;
  *(&v435 + 1) = v66;
  v70 = sub_23D43B690(v67, v68, v69);
  v71 = sub_23D46BAC8();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v78 = sub_23D46BC78();
  v79 = (*(*v435 + 512))(v78);
  v421 = a1;
  v80 = v79;
  v82 = v81;

  *&v435 = v80;
  *(&v435 + 1) = v82;
  v414 = v70;
  v83 = sub_23D46BAC8();
  v85 = v84;
  v87 = v86;
  v75 &= 1u;
  LOBYTE(v435) = v75;
  LOBYTE(v424) = v75;
  LOBYTE(v553[0]) = 1;
  LOBYTE(v82) = v88 & 1;
  LOBYTE(v432[0]) = v88 & 1;
  LODWORD(v408) = v88 & 1;
  sub_23D43B858(v71, v73, v75);

  sub_23D43B858(v83, v85, v82);

  sub_23D43B748(v83, v85, v82);

  sub_23D43B748(v71, v73, v435);

  *(&v450 + 1) = v424;
  DWORD1(v450) = *(&v424 + 3);
  *(&v451 + 9) = v553[0];
  HIDWORD(v451) = *(v553 + 3);
  DWORD1(v453) = *(v432 + 3);
  *(&v453 + 1) = v432[0];
  *&v449 = v71;
  *(&v449 + 1) = v73;
  v454[0] = v71;
  v454[1] = v73;
  LOBYTE(v450) = v75;
  *(&v450 + 1) = v77;
  *&v451 = 0;
  BYTE8(v451) = 1;
  *&v452 = v83;
  *(&v452 + 1) = v85;
  LOBYTE(v453) = v408;
  *(&v453 + 1) = v87;
  v455 = v75;
  *&v456[3] = *(&v424 + 3);
  *v456 = v424;
  v457 = v77;
  v458 = 0;
  v459 = 1;
  *v460 = v553[0];
  *&v460[3] = *(v553 + 3);
  v461 = v83;
  v462 = v85;
  v89 = v421;
  v463 = v408;
  *&v464[3] = *(v432 + 3);
  *v464 = v432[0];
  v465 = v87;
  sub_23D451944(&v449, &v435, &qword_27E2DAAE0, &qword_23D46D798);
  sub_23D4519AC(v454, &qword_27E2DAAE0, &qword_23D46D798);
  *&v448[23] = v450;
  *&v448[39] = v451;
  *&v448[55] = v452;
  *&v448[71] = v453;
  *&v448[7] = v449;
  v365 = LOBYTE(v503[0]);
  v90 = v409;
  v91 = v411;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v92 = *(v419 + 8);
  v419 += 8;
  v408 = v92;
  v92(v90, v91);
  v93 = v397;
  sub_23D46BC28();
  v94 = sub_23D46BC78();
  LOBYTE(v70) = (*(*v435 + 560))(v94);

  LOBYTE(v435) = v70 & 1;
  v95 = v420;
  sub_23D45048C(v89, v420);
  v96 = (*(v416 + 80) + 16) & ~*(v416 + 80);
  v416 = *(v416 + 80);
  v415 = v96 + v417;
  v97 = swift_allocObject();
  v417 = v96;
  sub_23D4504F0(v95, v97 + v96);
  v98 = sub_23D43B810(&qword_27E2DAAE8, &qword_27E2DAAD0, &qword_23D46D788, MEMORY[0x277CDF060]);
  v99 = v398;
  v379 = v98;
  sub_23D46BB58();

  v100 = *(v410 + 8);
  v410 += 8;
  v378 = v100;
  v100(v93, v99);
  v364 = sub_23D46B9E8();
  LOBYTE(v503[0]) = 1;
  v362 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v101 = [objc_opt_self() mainBundle];
  v102 = sub_23D46B788();
  v104 = v103;

  *&v435 = v102;
  *(&v435 + 1) = v104;
  v105 = sub_23D46BAC8();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v112 = sub_23D46BC78();
  v113 = (*(*v435 + 464))(v112);
  v115 = v114;

  *&v435 = v113;
  *(&v435 + 1) = v115;
  v116 = sub_23D46BAC8();
  v118 = v117;
  v120 = v119;
  v109 &= 1u;
  LOBYTE(v435) = v109;
  LOBYTE(v424) = v109;
  LOBYTE(v553[0]) = 1;
  LOBYTE(v115) = v121 & 1;
  LOBYTE(v432[0]) = v121 & 1;
  v361 = v121 & 1;
  sub_23D43B858(v105, v107, v109);

  sub_23D43B858(v116, v118, v115);

  sub_23D43B748(v116, v118, v115);

  sub_23D43B748(v105, v107, v435);

  *(&v467 + 1) = v424;
  DWORD1(v467) = *(&v424 + 3);
  *(&v468 + 9) = v553[0];
  HIDWORD(v468) = *(v553 + 3);
  DWORD1(v470) = *(v432 + 3);
  *(&v470 + 1) = v432[0];
  *&v466 = v105;
  *(&v466 + 1) = v107;
  v471[0] = v105;
  v471[1] = v107;
  LOBYTE(v467) = v109;
  *(&v467 + 1) = v111;
  *&v468 = 0;
  BYTE8(v468) = 1;
  *&v469 = v116;
  *(&v469 + 1) = v118;
  LOBYTE(v470) = v361;
  *(&v470 + 1) = v120;
  v472 = v109;
  *&v473[3] = *(&v424 + 3);
  *v473 = v424;
  v474 = v111;
  v475 = 0;
  v476 = 1;
  *v477 = v553[0];
  *&v477[3] = *(v553 + 3);
  v478 = v116;
  v479 = v118;
  v480 = v361;
  *&v481[3] = *(v432 + 3);
  *v481 = v432[0];
  v482 = v120;
  sub_23D451944(&v466, &v435, &qword_27E2DAAE0, &qword_23D46D798);
  sub_23D4519AC(v471, &qword_27E2DAAE0, &qword_23D46D798);
  *&v447[23] = v467;
  *&v447[39] = v468;
  *&v447[55] = v469;
  *&v447[71] = v470;
  *&v447[7] = v466;
  v361 = LOBYTE(v503[0]);
  v362 = sub_23D46B9E8();
  LOBYTE(v503[0]) = 1;
  v354 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v122 = [objc_opt_self() mainBundle];
  v123 = sub_23D46B788();
  v125 = v124;

  *&v435 = v123;
  *(&v435 + 1) = v125;
  v126 = sub_23D46BAC8();
  v128 = v127;
  v130 = v129;
  v132 = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v133 = sub_23D46BC78();
  v134 = (*(*v435 + 608))(v133);
  v136 = v135;

  *&v435 = v134;
  *(&v435 + 1) = v136;
  v137 = sub_23D46BAC8();
  v139 = v138;
  v141 = v140;
  v130 &= 1u;
  LOBYTE(v435) = v130;
  LOBYTE(v424) = v130;
  LOBYTE(v553[0]) = 1;
  LOBYTE(v136) = v142 & 1;
  LOBYTE(v432[0]) = v142 & 1;
  v353 = v142 & 1;
  sub_23D43B858(v126, v128, v130);

  sub_23D43B858(v137, v139, v136);

  sub_23D43B748(v137, v139, v136);

  sub_23D43B748(v126, v128, v435);

  *(&v484 + 1) = v424;
  DWORD1(v484) = *(&v424 + 3);
  *(&v485 + 9) = v553[0];
  HIDWORD(v485) = *(v553 + 3);
  DWORD1(v487) = *(v432 + 3);
  *(&v487 + 1) = v432[0];
  *&v483 = v126;
  *(&v483 + 1) = v128;
  v488[0] = v126;
  v488[1] = v128;
  LOBYTE(v484) = v130;
  *(&v484 + 1) = v132;
  *&v485 = 0;
  BYTE8(v485) = 1;
  *&v486 = v137;
  *(&v486 + 1) = v139;
  LOBYTE(v487) = v353;
  *(&v487 + 1) = v141;
  v489 = v130;
  *&v490[3] = *(&v424 + 3);
  *v490 = v424;
  v491 = v132;
  v492 = 0;
  v493 = 1;
  *v494 = v553[0];
  *&v494[3] = *(v553 + 3);
  v495 = v137;
  v496 = v139;
  v497 = v353;
  *&v498[3] = *(v432 + 3);
  *v498 = v432[0];
  v499 = v141;
  sub_23D451944(&v483, &v435, &qword_27E2DAAE0, &qword_23D46D798);
  sub_23D4519AC(v488, &qword_27E2DAAE0, &qword_23D46D798);
  *&v446[23] = v484;
  *&v446[39] = v485;
  *&v446[55] = v486;
  *&v446[71] = v487;
  *&v446[7] = v483;
  v353 = LOBYTE(v503[0]);
  v354 = sub_23D46B9E8();
  LOBYTE(v538[0]) = 1;
  v347 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v143 = [objc_opt_self() mainBundle];
  v144 = sub_23D46B788();
  v146 = v145;

  *&v435 = v144;
  *(&v435 + 1) = v146;
  v147 = sub_23D46BAC8();
  v149 = v148;
  LOBYTE(v146) = v150;
  v344 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v152 = sub_23D46BC78();
  v153 = (*(*v435 + 704))(v152);
  v155 = v154;

  *&v435 = v153;
  *(&v435 + 1) = v155;
  v156 = sub_23D46BAC8();
  v158 = v157;
  LOBYTE(v143) = v159;
  v161 = v160;
  KeyPath = swift_getKeyPath();
  v163 = swift_getKeyPath();
  LOBYTE(v432[0]) = v146 & 1;
  LOBYTE(v503[0]) = 1;
  *&v424 = v156;
  *(&v424 + 1) = v158;
  LOBYTE(v425[0]) = v143 & 1;
  *(&v425[0] + 1) = v161;
  v425[1] = KeyPath;
  LOBYTE(v425[2]) = 0;
  *(&v425[2] + 1) = v163;
  LOBYTE(v425[3]) = 2;
  *&v554[7] = v424;
  v554[71] = 2;
  *&v554[55] = v425[2];
  *&v554[39] = KeyPath;
  *&v554[23] = v425[0];
  LODWORD(v345) = v146 & 1;
  v346 = 1;
  *&v435 = v156;
  *(&v435 + 1) = v158;
  LOBYTE(v436[0]) = v143 & 1;
  *(&v436[0] + 1) = v161;
  v436[1] = KeyPath;
  LOBYTE(v436[2]) = 0;
  *(&v436[2] + 1) = v163;
  LOBYTE(v436[3]) = 2;
  sub_23D43B858(v147, v149, v146 & 1);
  v164 = v344;

  sub_23D451944(&v424, v553, &qword_27E2DABE8, &qword_23D46D988);
  sub_23D4519AC(&v435, &qword_27E2DABE8, &qword_23D46D988);
  sub_23D43B748(v147, v149, v146 & 1);

  *&v502[25] = *&v554[16];
  *&v502[41] = *&v554[32];
  *&v502[57] = *&v554[48];
  *&v502[9] = *v554;
  v512 = *&v554[48];
  v511 = *&v554[32];
  v510 = *&v554[16];
  *&v500 = v147;
  *(&v500 + 1) = v149;
  LOBYTE(v501) = v345;
  *(&v501 + 1) = v424;
  DWORD1(v501) = *(&v424 + 3);
  *(&v501 + 1) = v164;
  *v502 = 0;
  v502[8] = v346;
  *&v502[73] = *&v554[64];
  v503[0] = v147;
  v503[1] = v149;
  v504 = v345;
  *&v505[3] = *(&v424 + 3);
  *v505 = v424;
  v506 = v164;
  v507 = 0;
  v508 = v346;
  v513 = *&v554[64];
  v509 = *v554;
  sub_23D451944(&v500, &v435, &qword_27E2DAAF0, &qword_23D46D7C8);
  sub_23D4519AC(v503, &qword_27E2DAAF0, &qword_23D46D7C8);
  *&v445[71] = *&v502[32];
  *&v445[87] = *&v502[48];
  *&v445[103] = *&v502[64];
  *&v445[7] = v500;
  *&v445[23] = v501;
  *&v445[39] = *v502;
  v445[119] = v502[80];
  *&v445[55] = *&v502[16];
  v346 = LOBYTE(v538[0]);
  v347 = sub_23D46B9E8();
  LOBYTE(v538[0]) = 1;
  v345 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v165 = [objc_opt_self() mainBundle];
  v166 = sub_23D46B788();
  v168 = v167;

  *&v435 = v166;
  *(&v435 + 1) = v168;
  v169 = sub_23D46BAC8();
  v171 = v170;
  v173 = v172;
  v175 = v174;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v176 = sub_23D46BC78();
  v177 = (*(*v435 + 656))(v176);
  v179 = v178;

  *&v435 = v177;
  *(&v435 + 1) = v179;
  v180 = sub_23D46BAC8();
  v182 = v181;
  v184 = v183;
  v173 &= 1u;
  LOBYTE(v435) = v173;
  LOBYTE(v424) = v173;
  LOBYTE(v553[0]) = 1;
  LOBYTE(v179) = v185 & 1;
  LOBYTE(v432[0]) = v185 & 1;
  LODWORD(v344) = v185 & 1;
  sub_23D43B858(v169, v171, v173);

  sub_23D43B858(v180, v182, v179);

  sub_23D43B748(v180, v182, v179);

  sub_23D43B748(v169, v171, v435);

  *(&v515 + 1) = v424;
  DWORD1(v515) = *(&v424 + 3);
  *(&v516 + 9) = v553[0];
  HIDWORD(v516) = *(v553 + 3);
  DWORD1(v518) = *(v432 + 3);
  *(&v518 + 1) = v432[0];
  *&v514 = v169;
  *(&v514 + 1) = v171;
  v519[0] = v169;
  v519[1] = v171;
  LOBYTE(v515) = v173;
  *(&v515 + 1) = v175;
  *&v516 = 0;
  BYTE8(v516) = 1;
  *&v517 = v180;
  *(&v517 + 1) = v182;
  LOBYTE(v518) = v344;
  *(&v518 + 1) = v184;
  v520 = v173;
  *&v521[3] = *(&v424 + 3);
  *v521 = v424;
  v522 = v175;
  v523 = 0;
  v524 = 1;
  *v525 = v553[0];
  *&v525[3] = *(v553 + 3);
  v526 = v180;
  v527 = v182;
  v528 = v344;
  *&v529[3] = *(v432 + 3);
  *v529 = v432[0];
  v530 = v184;
  sub_23D451944(&v514, &v435, &qword_27E2DAAE0, &qword_23D46D798);
  sub_23D4519AC(v519, &qword_27E2DAAE0, &qword_23D46D798);
  *&v444[23] = v515;
  *&v444[39] = v516;
  *&v444[55] = v517;
  *&v444[71] = v518;
  *&v444[7] = v514;
  LODWORD(v345) = LOBYTE(v538[0]);
  v344 = sub_23D46B9E8();
  LOBYTE(v441[0]) = 1;
  v343 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v186 = [objc_opt_self() mainBundle];
  v187 = sub_23D46B788();
  v189 = v188;

  *&v435 = v187;
  *(&v435 + 1) = v189;
  v190 = sub_23D46BAC8();
  v192 = v191;
  v194 = v193;
  v196 = v195;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v197 = sub_23D46BC78();
  v198 = (*(*v435 + 1184))(v197);
  v200 = v199;

  *&v435 = v198;
  *(&v435 + 1) = v200;
  v201 = sub_23D46BAC8();
  v203 = v202;
  LOBYTE(v198) = v204;
  v206 = v205;
  v418 = sub_23D46BB98();
  v414 = sub_23D46BB68();
  v342 = swift_getKeyPath();
  v194 &= 1u;
  LOBYTE(v435) = v194;
  LOBYTE(v424) = v194;
  LOBYTE(v553[0]) = 1;
  LOBYTE(v198) = v198 & 1;
  LOBYTE(v432[0]) = v198;
  v341 = v198;
  sub_23D43B858(v190, v192, v194);

  sub_23D43B858(v201, v203, v198);

  sub_23D43B748(v201, v203, v198);

  sub_23D43B748(v190, v192, v435);

  *(&v532 + 1) = v424;
  *(&v533 + 9) = v553[0];
  DWORD1(v535) = *(v432 + 3);
  *(&v535 + 1) = v432[0];
  DWORD1(v532) = *(&v424 + 3);
  HIDWORD(v533) = *(v553 + 3);
  *&v531 = v190;
  *(&v531 + 1) = v192;
  LOBYTE(v532) = v194;
  *(&v532 + 1) = v196;
  *&v533 = 0;
  BYTE8(v533) = 1;
  *&v534 = v201;
  *(&v534 + 1) = v203;
  LOBYTE(v535) = v341;
  *(&v535 + 1) = v206;
  *&v536 = v418;
  *(&v536 + 1) = v342;
  v537 = v414;
  v538[0] = v190;
  v538[1] = v192;
  v539 = v194;
  *v540 = v424;
  *&v540[3] = *(&v424 + 3);
  v541 = v196;
  v542 = 0;
  v543 = 1;
  *&v544[3] = *(v553 + 3);
  *v544 = v553[0];
  v545 = v201;
  v546 = v203;
  v547 = v341;
  *v548 = v432[0];
  *&v548[3] = *(v432 + 3);
  v549 = v206;
  v550 = v418;
  v551 = v342;
  v552 = v414;
  sub_23D451944(&v531, &v435, &qword_27E2DAAF8, &qword_23D46D7D0);
  v207 = sub_23D4519AC(v538, &qword_27E2DAAF8, &qword_23D46D7D0);
  v418 = v340;
  *(&v443[3] + 7) = v534;
  *(&v443[4] + 7) = v535;
  *(&v443[5] + 7) = v536;
  *(&v443[6] + 7) = v537;
  *(v443 + 7) = v531;
  *(&v443[1] + 7) = v532;
  *(&v443[2] + 7) = v533;
  *(&v436[3] + 1) = v443[3];
  *(&v436[4] + 1) = v443[4];
  *(&v436[5] + 1) = v443[5];
  v436[6] = *(&v443[5] + 15);
  *(v436 + 1) = v443[0];
  *(&v436[1] + 1) = v443[1];
  v435 = v344;
  LOBYTE(v436[0]) = v441[0];
  *(&v436[2] + 1) = v443[2];
  MEMORY[0x28223BE20](v207);
  v208 = v421;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB00, &qword_23D46D7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D43B810(&qword_27E2DAB08, &qword_27E2DAB00, &qword_23D46D7D8, MEMORY[0x277CE1140]);
  sub_23D43B810(&qword_27E2DAB10, &qword_27E2DAA48, &qword_23D46D6D0, MEMORY[0x277CDF030]);
  sub_23D46BB08();
  v553[4] = v436[3];
  v553[5] = v436[4];
  v553[6] = v436[5];
  v553[7] = v436[6];
  v553[0] = v435;
  v553[1] = v436[0];
  v553[2] = v436[1];
  v553[3] = v436[2];
  sub_23D4519AC(v553, &qword_27E2DAB00, &qword_23D46D7D8);
  v209 = v411;
  v210 = sub_23D46BC78();
  v211 = (*(*v435 + 1184))(v210);
  v213 = v212;

  if (v211 || v213 != 0xE000000000000000)
  {
    v215 = sub_23D46C1B8();

    v214 = v215 ^ 1;
  }

  else
  {

    v214 = 0;
  }

  v412[*(v348 + 36)] = sub_23D469394(v214 & 1) & 1;
  v216 = sub_23D46B9E8();
  v217 = v352;
  *v352 = v216;
  *(v217 + 8) = 0;
  *(v217 + 16) = 1;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB18, &qword_23D46D7E0);
  sub_23D44C4F0(v208, v217 + *(v218 + 44));
  v219 = sub_23D46BC78();
  v220 = (*(*v435 + 1040))(v219);

  v221 = sub_23D469394(v220 != 0);
  v222 = v350;
  sub_23D45132C(v217, v350, &qword_27E2DAAB8, &qword_23D46D770);
  v222[*(v351 + 36)] = v221 & 1;
  sub_23D45132C(v222, v403, &qword_27E2DAAC0, &qword_23D46D778);
  v223 = v208 + *(v349 + 48);
  v224 = *(v223 + 8);
  LOBYTE(v424) = *v223;
  LOBYTE(v217) = v424;
  *(&v424 + 1) = v224;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  v225 = v397;
  sub_23D46BC28();
  LOBYTE(v435) = v217;
  *(&v435 + 1) = v224;
  sub_23D46BBC8();
  LOBYTE(v435) = v424;
  v226 = v420;
  sub_23D45048C(v208, v420);
  v227 = swift_allocObject();
  sub_23D4504F0(v226, v227 + v417);
  v228 = v404;
  v229 = v398;
  sub_23D46BB58();

  v378(v225, v229);
  v230 = sub_23D44CCB4();
  v228[*(v385 + 36)] = sub_23D469394(v230 & 1) & 1;
  v231 = sub_23D46BC78();
  LOBYTE(v229) = (*(*v435 + 992))(v231);

  v232 = swift_getKeyPath();
  v233 = swift_allocObject();
  *(v233 + 16) = (v229 & 1) == 0;
  v234 = &v228[*(v355 + 36)];
  *v234 = v232;
  v234[1] = sub_23D452ED8;
  v234[2] = v233;
  v235 = sub_23D46B9E8();
  v236 = v357;
  *v357 = v235;
  *(v236 + 8) = 0;
  *(v236 + 16) = 1;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB20, &qword_23D46D7E8);
  sub_23D44CDE0(v208, (v236 + *(v418 + 11)));
  v237 = sub_23D46BC78();
  v238 = (*(*v435 + 1040))(v237);

  LOBYTE(v232) = sub_23D469394(v238 != 0);
  v239 = v360;
  sub_23D45132C(v236, v360, &qword_27E2DAA98, &qword_23D46D750);
  v239[*(v356 + 36)] = v232 & 1;
  v240 = sub_23D46BC78();
  LOBYTE(v238) = (*(*v435 + 992))(v240);

  v241 = swift_getKeyPath();
  v242 = swift_allocObject();
  *(v242 + 16) = (v238 & 1) == 0;
  v243 = v358;
  sub_23D45132C(v239, v358, &qword_27E2DAAA0, &qword_23D46D758);
  v244 = &v243[*(v359 + 36)];
  *v244 = v241;
  v244[1] = sub_23D452ED8;
  v244[2] = v242;
  sub_23D45132C(v243, v405, &qword_27E2DAAA8, &qword_23D46D760);
  v245 = v409;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v408(v245, v209);
  v246 = v208;
  sub_23D46BA38();
  sub_23D46BAB8();
  v247 = v400;
  sub_23D46BCF8();
  v248 = swift_getKeyPath();
  v249 = v247 + *(v399 + 36);
  *v249 = v248;
  *(v249 + 8) = 2;
  v250 = sub_23D46BC78();
  v251 = (*(*v435 + 1136))(v250);
  v253 = v252;

  *&v435 = v251;
  *(&v435 + 1) = v253;
  v254 = v420;
  sub_23D45048C(v208, v420);
  v255 = swift_allocObject();
  sub_23D4504F0(v254, v255 + v417);
  v256 = sub_23D451570();
  v257 = v407;
  v414 = v256;
  sub_23D46BB58();

  sub_23D4519AC(v247, &qword_27E2DAA88, &qword_23D46D740);
  v258 = sub_23D44D4FC();
  v257[*(v401 + 36)] = sub_23D469394(v258 & 1) & 1;
  v259 = sub_23D46BC78();
  LOBYTE(v251) = (*(*v435 + 992))(v259);

  v260 = swift_getKeyPath();
  v261 = swift_allocObject();
  *(v261 + 16) = (v251 & 1) == 0;
  v262 = &v257[*(v363 + 36)];
  *v262 = v260;
  v262[1] = sub_23D452ED8;
  v262[2] = v261;
  v263 = sub_23D46B9E8();
  v264 = v380;
  *v380 = v263;
  *(v264 + 8) = 0;
  *(v264 + 16) = 1;
  v265 = sub_23D44D63C(v246, (v264 + *(v418 + 11)));
  MEMORY[0x28223BE20](v265);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB50, &qword_23D46D828);
  v267 = sub_23D43B810(&qword_27E2DAB58, &qword_27E2DAA98, &qword_23D46D750, MEMORY[0x277CE1140]);
  v268 = sub_23D451690();
  v363 = v266;
  v359 = v268;
  v360 = v267;
  sub_23D46BB08();
  sub_23D4519AC(v264, &qword_27E2DAA98, &qword_23D46D750);
  v269 = sub_23D46BC78();
  v270 = (*(*v435 + 1184))(v269);
  v272 = v271;

  if (v270 || v272 != 0xE000000000000000)
  {
    v273 = sub_23D46C1B8();
  }

  else
  {

    v273 = 1;
  }

  v413[*(v382 + 36)] = sub_23D469394(v273 & 1) & 1;
  v274 = v409;
  v275 = v411;
  v276 = v421;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v408(v274, v275);
  sub_23D46BA38();
  sub_23D46BAB8();
  v277 = v400;
  sub_23D46BCF8();
  v278 = swift_getKeyPath();
  v279 = v277 + *(v399 + 36);
  *v279 = v278;
  *(v279 + 8) = 2;
  v280 = sub_23D46BC78();
  v281 = (*(*v435 + 800))(v280);
  v283 = v282;

  *&v435 = v281;
  *(&v435 + 1) = v283;
  v284 = v420;
  sub_23D45048C(v276, v420);
  v285 = swift_allocObject();
  sub_23D4504F0(v284, v285 + v417);
  v286 = v368;
  sub_23D46BB58();

  sub_23D4519AC(v277, &qword_27E2DAA88, &qword_23D46D740);
  v287 = sub_23D450088(MEMORY[0x277CE54E0]);
  v288 = 1;
  if ((v287 & 1) == 0)
  {
    v288 = sub_23D450088(MEMORY[0x277CE54A0]);
  }

  v289 = sub_23D469394(v288 & 1);
  v290 = v367;
  (*(v369 + 32))(v367, v286, v370);
  *(v290 + *(v401 + 36)) = v289 & 1;
  sub_23D45132C(v290, v392, &qword_27E2DAA78, &qword_23D46D730);
  v291 = sub_23D46B9E8();
  v292 = v380;
  *v380 = v291;
  *(v292 + 8) = 0;
  *(v292 + 16) = 1;
  v293 = sub_23D44DE70(v276, (v292 + *(v418 + 11)));
  MEMORY[0x28223BE20](v293);
  v294 = v390;
  sub_23D46BB08();
  sub_23D4519AC(v292, &qword_27E2DAA98, &qword_23D46D750);
  v295 = sub_23D44E858();
  v294[*(v382 + 36)] = sub_23D469394(v295 & 1) & 1;
  v296 = v421;
  v297 = v409;
  v298 = v411;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v408(v297, v298);
  sub_23D46BA38();
  sub_23D46BAB8();
  v299 = v400;
  sub_23D46BCF8();
  v300 = swift_getKeyPath();
  v301 = v299 + *(v399 + 36);
  *v301 = v300;
  *(v301 + 8) = 2;
  v302 = sub_23D46BC78();
  v303 = (*(*v435 + 944))(v302);
  v305 = v304;

  *&v435 = v303;
  *(&v435 + 1) = v305;
  v306 = v420;
  sub_23D45048C(v296, v420);
  v307 = swift_allocObject();
  sub_23D4504F0(v306, v307 + v417);
  v308 = v393;
  sub_23D46BB58();

  sub_23D4519AC(v299, &qword_27E2DAA88, &qword_23D46D740);
  v309 = sub_23D44EB50();
  v308[*(v401 + 36)] = sub_23D469394(v309 & 1) & 1;
  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  v408(v297, v298);
  v310 = v397;
  sub_23D46BC28();
  v311 = sub_23D46BC78();
  LOBYTE(v303) = (*(*v435 + 1328))(v311);

  LOBYTE(v435) = v303 & 1;
  v312 = v420;
  sub_23D45048C(v296, v420);
  v313 = swift_allocObject();
  sub_23D4504F0(v312, v313 + v417);
  v314 = v371;
  v315 = v398;
  sub_23D46BB58();

  v316 = v315;
  v317 = 1;
  v378(v310, v316);
  v318 = sub_23D46BC78();
  LOBYTE(v303) = (*(*v435 + 1280))(v318);

  if ((v303 & 1) == 0)
  {
    v319 = sub_23D46BC78();
    v317 = (*(*v435 + 1328))(v319);
  }

  v320 = sub_23D469394(v317 & 1);
  v321 = v386;
  v322 = v372;
  (*(v386 + 32))(v372, v314, v406);
  *(v322 + *(v385 + 36)) = v320 & 1;
  v323 = v374;
  sub_23D45132C(v322, v374, &qword_27E2DAA68, &qword_23D46D720);
  v430 = v366;
  v431[0] = v365;
  *&v431[33] = *&v448[32];
  *&v431[49] = *&v448[48];
  *&v431[65] = *&v448[64];
  *&v431[80] = *&v448[79];
  *&v431[1] = *v448;
  *&v431[17] = *&v448[16];
  v432[0] = &v430;
  v324 = v384;
  (*(v321 + 16))();
  *&v429[33] = *&v447[32];
  *&v429[49] = *&v447[48];
  *&v429[65] = *&v447[64];
  *&v429[1] = *v447;
  *&v429[17] = *&v447[16];
  *&v427[33] = *&v446[32];
  *&v427[49] = *&v446[48];
  *&v427[65] = *&v446[64];
  *&v427[1] = *v446;
  *&v427[17] = *&v446[16];
  *(&v425[4] + 1) = *&v445[64];
  *(&v425[5] + 1) = *&v445[80];
  *(&v425[6] + 1) = *&v445[96];
  *(v425 + 1) = *v445;
  *(&v425[1] + 1) = *&v445[16];
  *(&v425[2] + 1) = *&v445[32];
  *(&v425[3] + 1) = *&v445[48];
  *&v423[33] = *&v444[32];
  *&v423[49] = *&v444[48];
  *&v423[65] = *&v444[64];
  *&v423[1] = *v444;
  v428 = v364;
  v429[0] = v361;
  *&v429[80] = *&v447[79];
  v432[1] = v324;
  v432[2] = &v428;
  v426 = v362;
  v427[0] = v353;
  *&v427[80] = *&v446[79];
  v424 = v354;
  LOBYTE(v425[0]) = v346;
  *(&v425[7] + 1) = *&v445[112];
  v432[3] = &v426;
  v432[4] = &v424;
  v422 = v347;
  v423[0] = v345;
  *&v423[80] = *&v444[79];
  *&v423[17] = *&v444[16];
  v432[5] = &v422;
  v325 = v383;
  sub_23D451944(v412, v383, &qword_27E2DAAC8, &qword_23D46D780);
  v432[6] = v325;
  v326 = v387;
  sub_23D451944(v403, v387, &qword_27E2DAAC0, &qword_23D46D778);
  v432[7] = v326;
  v327 = v388;
  sub_23D451944(v404, v388, &qword_27E2DAAB0, &qword_23D46D768);
  v432[8] = v327;
  v328 = v389;
  sub_23D451944(v405, v389, &qword_27E2DAAA8, &qword_23D46D760);
  v432[9] = v328;
  v329 = v391;
  sub_23D451944(v407, v391, &qword_27E2DAA90, &qword_23D46D748);
  v432[10] = v329;
  v330 = v395;
  sub_23D451944(v413, v395, &qword_27E2DAA80, &qword_23D46D738);
  v432[11] = v330;
  v331 = v392;
  v332 = v396;
  sub_23D451944(v392, v396, &qword_27E2DAA78, &qword_23D46D730);
  v432[12] = v332;
  v333 = v390;
  v334 = v394;
  sub_23D451944(v390, v394, &qword_27E2DAA80, &qword_23D46D738);
  v432[13] = v334;
  v335 = v393;
  v336 = v375;
  sub_23D451944(v393, v375, &qword_27E2DAA78, &qword_23D46D730);
  v432[14] = v336;
  v337 = v377;
  sub_23D451944(v323, v377, &qword_27E2DAA68, &qword_23D46D720);
  v432[15] = v337;
  sub_23D44B498(v432, v376);
  sub_23D4519AC(v323, &qword_27E2DAA68, &qword_23D46D720);
  sub_23D4519AC(v335, &qword_27E2DAA78, &qword_23D46D730);
  sub_23D4519AC(v333, &qword_27E2DAA80, &qword_23D46D738);
  sub_23D4519AC(v331, &qword_27E2DAA78, &qword_23D46D730);
  sub_23D4519AC(v413, &qword_27E2DAA80, &qword_23D46D738);
  sub_23D4519AC(v407, &qword_27E2DAA90, &qword_23D46D748);
  sub_23D4519AC(v405, &qword_27E2DAAA8, &qword_23D46D760);
  sub_23D4519AC(v404, &qword_27E2DAAB0, &qword_23D46D768);
  sub_23D4519AC(v403, &qword_27E2DAAC0, &qword_23D46D778);
  sub_23D4519AC(v412, &qword_27E2DAAC8, &qword_23D46D780);
  v338 = *(v386 + 8);
  v338(v402, v406);
  sub_23D4519AC(v337, &qword_27E2DAA68, &qword_23D46D720);
  sub_23D4519AC(v336, &qword_27E2DAA78, &qword_23D46D730);
  sub_23D4519AC(v394, &qword_27E2DAA80, &qword_23D46D738);
  sub_23D4519AC(v396, &qword_27E2DAA78, &qword_23D46D730);
  sub_23D4519AC(v395, &qword_27E2DAA80, &qword_23D46D738);
  sub_23D4519AC(v391, &qword_27E2DAA90, &qword_23D46D748);
  sub_23D4519AC(v389, &qword_27E2DAAA8, &qword_23D46D760);
  sub_23D4519AC(v388, &qword_27E2DAAB0, &qword_23D46D768);
  sub_23D4519AC(v387, &qword_27E2DAAC0, &qword_23D46D778);
  sub_23D4519AC(v383, &qword_27E2DAAC8, &qword_23D46D780);
  v433[4] = *&v423[48];
  v433[5] = *&v423[64];
  v434 = *&v423[80];
  v433[0] = v422;
  v433[1] = *v423;
  v433[3] = *&v423[32];
  v433[2] = *&v423[16];
  sub_23D4519AC(v433, &qword_27E2DAB88, &qword_23D46D8B8);
  v436[5] = v425[5];
  v436[6] = v425[6];
  *(&v436[6] + 9) = *(&v425[6] + 9);
  v436[1] = v425[1];
  v436[2] = v425[2];
  v436[4] = v425[4];
  v436[3] = v425[3];
  v436[0] = v425[0];
  v435 = v424;
  sub_23D4519AC(&v435, &qword_27E2DAB90, &qword_23D46D8C0);
  v437[4] = *&v427[48];
  v437[5] = *&v427[64];
  v438 = *&v427[80];
  v437[0] = v426;
  v437[1] = *v427;
  v437[3] = *&v427[32];
  v437[2] = *&v427[16];
  sub_23D4519AC(v437, &qword_27E2DAB88, &qword_23D46D8B8);
  v439[4] = *&v429[48];
  v439[5] = *&v429[64];
  v440 = *&v429[80];
  v439[0] = v428;
  v439[1] = *v429;
  v439[3] = *&v429[32];
  v439[2] = *&v429[16];
  sub_23D4519AC(v439, &qword_27E2DAB88, &qword_23D46D8B8);
  v338(v384, v406);
  v441[4] = *&v431[48];
  v441[5] = *&v431[64];
  v442 = *&v431[80];
  v441[0] = v430;
  v441[1] = *v431;
  v441[3] = *&v431[32];
  v441[2] = *&v431[16];
  sub_23D4519AC(v441, &qword_27E2DAB88, &qword_23D46D8B8);
}

uint64_t sub_23D44B498@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v6 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v45[0] = **a1;
  v45[1] = v6;
  v45[2] = v5;
  v8 = *(v4 + 64);
  v7 = *(v4 + 80);
  v9 = *(v4 + 48);
  v46 = *(v4 + 96);
  v45[4] = v8;
  v45[5] = v7;
  v45[3] = v9;
  memmove(a2, v4, 0x68uLL);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB98, &qword_23D46D8C8);
  v11 = v10[12];
  v12 = a1[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAD8, &qword_23D46D790);
  (*(*(v13 - 8) + 16))(&a2[v11], v12, v13);
  v14 = v10[16];
  v15 = a1[2];
  v16 = v15[12];
  v17 = *(v15 + 5);
  v18 = *(v15 + 3);
  v47[4] = *(v15 + 4);
  v47[5] = v17;
  v48 = v16;
  v20 = *(v15 + 1);
  v19 = *(v15 + 2);
  v47[0] = *v15;
  v47[1] = v20;
  v47[2] = v19;
  v47[3] = v18;
  memmove(&a2[v14], v15, 0x68uLL);
  v21 = v10[20];
  v22 = a1[3];
  v24 = v22[3];
  v23 = v22[4];
  v25 = *(v22 + 12);
  v49[5] = v22[5];
  v50 = v25;
  v27 = v22[1];
  v26 = v22[2];
  v49[0] = *v22;
  v49[1] = v27;
  v49[2] = v26;
  v49[3] = v24;
  v49[4] = v23;
  memmove(&a2[v21], v22, 0x68uLL);
  v28 = v10[24];
  v29 = a1[4];
  v30 = *(v29 + 121);
  v31 = v29[7];
  v32 = v29[5];
  v51[6] = v29[6];
  v52[0] = v31;
  *(v52 + 9) = v30;
  v51[0] = *v29;
  v33 = v29[4];
  v35 = v29[1];
  v34 = v29[2];
  v51[3] = v29[3];
  v51[4] = v33;
  v51[1] = v35;
  v51[2] = v34;
  v51[5] = v32;
  memmove(&a2[v28], v29, 0x89uLL);
  v36 = v10[28];
  v37 = a1[5];
  v39 = v37[1];
  v38 = v37[2];
  v53[0] = *v37;
  v53[1] = v39;
  v53[2] = v38;
  v41 = v37[4];
  v40 = v37[5];
  v42 = v37[3];
  v54 = *(v37 + 12);
  v53[4] = v41;
  v53[5] = v40;
  v53[3] = v42;
  memmove(&a2[v36], v37, 0x68uLL);
  sub_23D451944(a1[6], &a2[v10[32]], &qword_27E2DAAC8, &qword_23D46D780);
  sub_23D451944(a1[7], &a2[v10[36]], &qword_27E2DAAC0, &qword_23D46D778);
  sub_23D451944(a1[8], &a2[v10[40]], &qword_27E2DAAB0, &qword_23D46D768);
  sub_23D451944(a1[9], &a2[v10[44]], &qword_27E2DAAA8, &qword_23D46D760);
  sub_23D451944(a1[10], &a2[v10[48]], &qword_27E2DAA90, &qword_23D46D748);
  sub_23D451944(a1[11], &a2[v10[52]], &qword_27E2DAA80, &qword_23D46D738);
  sub_23D451944(a1[12], &a2[v10[56]], &qword_27E2DAA78, &qword_23D46D730);
  sub_23D451944(a1[13], &a2[v10[60]], &qword_27E2DAA80, &qword_23D46D738);
  sub_23D451944(a1[14], &a2[v10[64]], &qword_27E2DAA78, &qword_23D46D730);
  sub_23D451944(a1[15], &a2[v10[68]], &qword_27E2DAA68, &qword_23D46D720);
  sub_23D451944(v45, v44, &qword_27E2DAB88, &qword_23D46D8B8);
  sub_23D451944(v47, v44, &qword_27E2DAB88, &qword_23D46D8B8);
  sub_23D451944(v49, v44, &qword_27E2DAB88, &qword_23D46D8B8);
  sub_23D451944(v51, v44, &qword_27E2DAB90, &qword_23D46D8C0);
  return sub_23D451944(v53, v44, &qword_27E2DAB88, &qword_23D46D8B8);
}

uint64_t sub_23D44B830@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D44B8D8@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  sub_23D43B690(v3, v4, v5);
  v6 = sub_23D46BAC8();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23D44BA28(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [objc_opt_self() mainBundle];
  v6 = sub_23D46B788();
  v8 = v7;

  v15[0] = v6;
  v15[1] = v8;
  sub_23D45048C(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = sub_23D4504F0(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_23D43B690(v11, v12, v13);
  sub_23D46BC08();
}

uint64_t sub_23D44BC28(uint64_t a1)
{
  v2 = sub_23D46BD08();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D46BD38();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryDetailView(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23D46BD58();
  v8 = *(v39 - 8);
  v9 = MEMORY[0x28223BE20](v39);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  sub_23D46BF08();
  v32 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = (a1 + *(v6 + 40));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(aBlock) = v15;
  v42 = v16;
  LOBYTE(v40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
  v17 = sub_23D45393C();
  v18 = *v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  (*(*v18 + 464))(aBlock);

  v19 = *v17;

  sub_23D46BC78();
  (*(*v19 + 472))(aBlock);

  sub_23D43BDA4();
  v20 = sub_23D46BF68();
  sub_23D46BD48();
  sub_23D46BD68();
  v29 = *(v8 + 8);
  v29(v11, v39);
  v21 = v31;
  sub_23D45048C(a1, v31);
  v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v23 = swift_allocObject();
  sub_23D4504F0(v21, v23 + v22);
  v45 = sub_23D452BE0;
  v46 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_23D43C3E4;
  v44 = &block_descriptor_1;
  v24 = _Block_copy(&aBlock);
  v25 = v33;
  sub_23D46BD18();
  v40 = MEMORY[0x277D84F90];
  sub_23D452C84(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920, MEMORY[0x277D83970]);
  v26 = v36;
  v27 = v38;
  sub_23D46BFF8();
  MEMORY[0x23EEE1010](v13, v25, v26, v24);
  _Block_release(v24);

  (*(v37 + 8))(v26, v27);
  (*(v34 + 8))(v25, v35);
  v29(v13, v39);
}

uint64_t sub_23D44C248(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *sub_23D45393C();
  sub_23D45048C(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23D4504F0(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  v8 = sub_23D454E90();
  (*(*v5 + 440))(v8, sub_23D452E64, v7);
}

uint64_t sub_23D44C410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v8 + 1184))(v0);
  v3 = v2;

  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0xE000000000000000;
  }

  if (v4)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23D46C1B8();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_23D44C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for AccessoryDetailView(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAAD0, &qword_23D46D788);
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = v18 - v10;
  sub_23D46BF08();
  v18[1] = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23D46BC98();
  swift_getKeyPath();
  sub_23D46BCB8();

  (*(v6 + 8))(v8, v5);
  sub_23D46BC28();
  v12 = sub_23D46BC78();
  v13 = (*(*v22 + 992))(v12);

  LOBYTE(v22) = v13 & 1;
  sub_23D45048C(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = swift_allocObject();
  sub_23D4504F0(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_23D43B810(&qword_27E2DAAE8, &qword_27E2DAAD0, &qword_23D46D788, MEMORY[0x277CDF060]);
  v16 = v20;
  sub_23D46BB58();

  (*(v9 + 8))(v11, v16);
}

uint64_t sub_23D44C8CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D44C974@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  sub_23D43B690(v3, v4, v5);
  v6 = sub_23D46BAC8();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

BOOL sub_23D44CAD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v3 + 1040))(v0);

  return v1 != 0;
}

uint64_t sub_23D44CB64@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  sub_23D43B690(v3, v4, v5);
  v6 = sub_23D46BAC8();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23D44CCB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v8 + 1040))(v0);

  if (v1)
  {
    v2 = sub_23D46BC78();
    (*(*v8 + 1088))(v2);

    sub_23D450570(v3, v4, v5);
    v6 = sub_23D46BDB8() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_23D44CDE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AccessoryDetailView(0);
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = v4;
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB0, &qword_23D46D8D0);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB8, &qword_23D46D8D8);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v57 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v43 - v10;
  sub_23D46BF08();
  v55 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = [objc_opt_self() mainBundle];
  v12 = sub_23D46B788();
  v14 = v13;

  *&v62 = v12;
  *(&v62 + 1) = v14;
  sub_23D43B690(v15, v16, v17);
  v46 = sub_23D46BAC8();
  v45 = v18;
  v47 = v19;
  v48 = v20;
  v21 = (a1 + *(v3 + 32));
  v22 = v21[1];
  v24 = v21[2];
  *&v59 = *v21;
  v23 = v59;
  *(&v59 + 1) = v22;
  v60 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  sub_23D46BA38();
  *&v59 = sub_23D46BAB8();
  *(&v59 + 1) = v25;
  LOBYTE(v60) = v26 & 1;
  v61 = v27;
  MEMORY[0x28223BE20](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABC0, &qword_23D46D8E0);
  sub_23D451D9C();
  sub_23D46BC18();
  *&v62 = v23;
  *(&v62 + 1) = v22;
  v63 = v24;
  sub_23D46BBC8();
  v62 = v59;
  v28 = v51;
  sub_23D45048C(a1, v51);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_23D4504F0(v28, v30 + v29);
  sub_23D43B810(&qword_27E2DABD0, &qword_27E2DABB0, &qword_23D46D8D0, MEMORY[0x277CDF040]);
  v31 = v58;
  v32 = v56;
  sub_23D46BB58();

  (*(v54 + 8))(v6, v32);
  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 16);
  v36 = v57;
  v35(v57, v31, v53);
  v37 = v46;
  v38 = v44;
  v39 = v45;
  *v44 = v46;
  v38[1] = v39;
  LOBYTE(v29) = v47 & 1;
  *(v38 + 16) = v47 & 1;
  v38[3] = v48;
  v38[4] = 0;
  *(v38 + 40) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABD8, &qword_23D46D8E8);
  v35(v38 + *(v40 + 64), v36, v33);
  sub_23D43B858(v37, v39, v29);
  v41 = *(v34 + 8);

  v41(v58, v33);
  v41(v36, v33);
  sub_23D43B748(v37, v39, v29);
}

uint64_t sub_23D44D430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D44D484(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1144);

  return v4(v2, v3);
}

uint64_t sub_23D44D4FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v5 + 1040))(v0);

  if (v1)
  {
    type metadata accessor for AccessoryDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
    sub_23D46BBC8();
    if (v3 == 0x41206D6F74737543 && v4 == 0xEF65636E65696475)
    {

      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_23D46C1B8();
    }
  }

  return v1 & 1;
}

uint64_t sub_23D44D63C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AccessoryDetailView(0);
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = v4;
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB0, &qword_23D46D8D0);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB8, &qword_23D46D8D8);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v57 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v43 - v10;
  sub_23D46BF08();
  v55 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = [objc_opt_self() mainBundle];
  v12 = sub_23D46B788();
  v14 = v13;

  *&v62 = v12;
  *(&v62 + 1) = v14;
  sub_23D43B690(v15, v16, v17);
  v46 = sub_23D46BAC8();
  v45 = v18;
  v47 = v19;
  v48 = v20;
  v21 = (a1 + *(v3 + 20));
  v22 = v21[1];
  v24 = v21[2];
  *&v59 = *v21;
  v23 = v59;
  *(&v59 + 1) = v22;
  v60 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  sub_23D46BA38();
  *&v59 = sub_23D46BAB8();
  *(&v59 + 1) = v25;
  LOBYTE(v60) = v26 & 1;
  v61 = v27;
  MEMORY[0x28223BE20](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABC0, &qword_23D46D8E0);
  sub_23D451D9C();
  sub_23D46BC18();
  *&v62 = v23;
  *(&v62 + 1) = v22;
  v63 = v24;
  sub_23D46BBC8();
  v62 = v59;
  v28 = v51;
  sub_23D45048C(a1, v51);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_23D4504F0(v28, v30 + v29);
  sub_23D43B810(&qword_27E2DABD0, &qword_27E2DABB0, &qword_23D46D8D0, MEMORY[0x277CDF040]);
  v31 = v58;
  v32 = v56;
  sub_23D46BB58();

  (*(v54 + 8))(v6, v32);
  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 16);
  v36 = v57;
  v35(v57, v31, v53);
  v37 = v46;
  v38 = v44;
  v39 = v45;
  *v44 = v46;
  v38[1] = v39;
  LOBYTE(v29) = v47 & 1;
  *(v38 + 16) = v47 & 1;
  v38[3] = v48;
  v38[4] = 0;
  *(v38 + 40) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABD8, &qword_23D46D8E8);
  v35(v38 + *(v40 + 64), v36, v33);
  sub_23D43B858(v37, v39, v29);
  v41 = *(v34 + 8);

  v41(v58, v33);
  v41(v36, v33);
  sub_23D43B748(v37, v39, v29);
}

uint64_t sub_23D44DC8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v7 + 1184))(v0);
  v3 = v2;

  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0xE000000000000000;
  }

  if (v4)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_23D46C1B8();
  }

  return v5 & 1;
}

uint64_t sub_23D44DD68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 800))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D44DDBC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 808);

  return v4(v2, v3);
}

uint64_t sub_23D44DE34()
{
  if (sub_23D450088(MEMORY[0x277CE54E0]))
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_23D450088(MEMORY[0x277CE54A0]);
  }

  return v0 & 1;
}

uint64_t sub_23D44DE70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AccessoryDetailView(0);
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = v4;
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB0, &qword_23D46D8D0);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABB8, &qword_23D46D8D8);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v57 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v43 - v10;
  sub_23D46BF08();
  v55 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v11 = sub_23D46BC78();
  v12 = (*(*v62 + 368))(v11);
  v14 = v13;

  *&v62 = v12;
  *(&v62 + 1) = v14;
  sub_23D43B690(v15, v16, v17);
  v46 = sub_23D46BAC8();
  v45 = v18;
  v47 = v19;
  v48 = v20;
  v21 = (a1 + *(v3 + 24));
  v23 = v21[1];
  v24 = v21[2];
  *&v59 = *v21;
  v22 = v59;
  *(&v59 + 1) = v23;
  v60 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBE8();
  sub_23D46BA38();
  *&v59 = sub_23D46BAB8();
  *(&v59 + 1) = v25;
  LOBYTE(v60) = v26 & 1;
  v61 = v27;
  MEMORY[0x28223BE20](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABC0, &qword_23D46D8E0);
  sub_23D451D9C();
  sub_23D46BC18();
  *&v62 = v22;
  *(&v62 + 1) = v23;
  v63 = v24;
  sub_23D46BBC8();
  v62 = v59;
  v28 = v51;
  sub_23D45048C(a1, v51);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_23D4504F0(v28, v30 + v29);
  sub_23D43B810(&qword_27E2DABD0, &qword_27E2DABB0, &qword_23D46D8D0, MEMORY[0x277CDF040]);
  v31 = v58;
  v32 = v56;
  sub_23D46BB58();

  (*(v54 + 8))(v6, v32);
  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 16);
  v36 = v57;
  v35(v57, v31, v53);
  v37 = v46;
  v38 = v44;
  v39 = v45;
  *v44 = v46;
  v38[1] = v39;
  LOBYTE(v29) = v47 & 1;
  *(v38 + 16) = v47 & 1;
  v38[3] = v48;
  v38[4] = 0;
  *(v38 + 40) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABD8, &qword_23D46D8E8);
  v35(v38 + *(v40 + 64), v36, v33);
  sub_23D43B858(v37, v39, v29);
  v41 = *(v34 + 8);

  v41(v58, v33);
  v41(v36, v33);
  sub_23D43B748(v37, v39, v29);
}

uint64_t sub_23D44E49C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_23D46BA28();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23D46BA18();
  sub_23D46BA08();
  sub_23D46B9F8();
  sub_23D46BA08();
  sub_23D46BA48();
  *a3 = sub_23D46BAB8();
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  *(a3 + 32) = v7;
  *(a3 + 40) = v6;
  *(a3 + 48) = 1;
}

uint64_t sub_23D44E620@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v18[2] = a4;
  v6 = type metadata accessor for AccessoryDetailView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = (a1 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  v18[4] = v11;
  v18[5] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  sub_23D45048C(a1, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_23D4504F0(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAB70, &qword_23D46D830);
  sub_23D43B810(&qword_27E2DABA0, &qword_27E2DA8F8, &qword_23D46D450, MEMORY[0x277D83980]);
  v14 = sub_23D451714();
  sub_23D451D2C(v14, v15, v16);
  sub_23D46BC38();
}

uint64_t sub_23D44E858()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v14 + 1184))(v0);
  v3 = v2;

  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0xE000000000000000;
  }

  if (v4)
  {
  }

  else
  {
    v5 = sub_23D46C1B8();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = sub_23D46BC78();
  v8 = (*(*v14 + 896))(v7);
  v10 = v9;

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0xE000000000000000;
  }

  if (v11)
  {

    v6 = 0;
  }

  else
  {
    v12 = sub_23D46C1B8();

    v6 = v12 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_23D44E9F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 944))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D44EA44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 952);

  return v4(v2, v3);
}

uint64_t sub_23D44EABC(uint64_t a1)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_23D44EB50()
{
  if ((sub_23D44E858() & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  if (v7 == sub_23D46BDD8() && v8 == v0)
  {
    goto LABEL_14;
  }

  v2 = sub_23D46C1B8();

  if ((v2 & 1) == 0)
  {
LABEL_8:
    if ((sub_23D44E858() & 1) == 0)
    {
      v3 = 0;
      return v3 & 1;
    }

    type metadata accessor for AccessoryDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
    sub_23D46BBC8();
    if (v7 != sub_23D46BDD8() || v8 != v4)
    {
      v3 = sub_23D46C1B8();
LABEL_15:

      return v3 & 1;
    }

LABEL_14:
    v3 = 1;
    goto LABEL_15;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_23D44ECD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D44ED7C@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  sub_23D43B690(v3, v4, v5);
  v6 = sub_23D46BAC8();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23D44EECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v5 + 1280))(v0);

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_23D46BC78();
    v2 = (*(*v5 + 1328))(v3);
  }

  return v2 & 1;
}

uint64_t sub_23D44EFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA38, &qword_23D46D6C0);
  MEMORY[0x28223BE20](v86);
  v89 = &v75 - v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA40, &qword_23D46D6C8);
  v4 = MEMORY[0x28223BE20](v88);
  v91 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v87 = &v75 - v7;
  MEMORY[0x28223BE20](v6);
  v90 = &v75 - v8;
  v82 = type metadata accessor for AccessoryDetailView(0);
  v77 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v93 = v9;
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA48, &qword_23D46D6D0);
  v96 = *(v95 - 8);
  v11 = MEMORY[0x28223BE20](v95);
  v80 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v75 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA50, &qword_23D46D6D8);
  v15 = MEMORY[0x28223BE20](v94);
  v81 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA58, &qword_23D46D6E0);
  v19 = MEMORY[0x28223BE20](v79);
  v85 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v75 - v22;
  MEMORY[0x28223BE20](v21);
  v83 = &v75 - v24;
  sub_23D46BF08();
  v84 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v78 = objc_opt_self();
  v25 = [v78 mainBundle];
  v26 = sub_23D46B788();
  v28 = v27;

  *&v107 = v26;
  *(&v107 + 1) = v28;
  sub_23D45048C(a1, v10);
  v29 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v30 = swift_allocObject();
  v31 = sub_23D4504F0(v10, v30 + v29);
  v77 = sub_23D43B690(v31, v32, v33);
  sub_23D46BC08();
  sub_23D46BCD8();
  sub_23D46B948();
  v34 = *(v96 + 32);
  v96 += 32;
  v76 = v34;
  v34(v18, v14, v95);
  v35 = &v18[*(v94 + 36)];
  v36 = v105;
  *(v35 + 4) = v104;
  *(v35 + 5) = v36;
  *(v35 + 6) = v106;
  v37 = v101;
  *v35 = v100;
  *(v35 + 1) = v37;
  v38 = v103;
  *(v35 + 2) = v102;
  *(v35 + 3) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v39 = sub_23D46BC78();
  LOBYTE(v28) = (*(*v107 + 1280))(v39);

  v40 = 1;
  if ((v28 & 1) == 0)
  {
    v41 = sub_23D46BC78();
    v40 = (*(*v107 + 1328))(v41);
  }

  v42 = sub_23D469394(v40 & 1);
  sub_23D45132C(v18, v23, &qword_27E2DAA50, &qword_23D46D6D8);
  v23[*(v79 + 36)] = v42 & 1;
  v43 = v83;
  sub_23D45132C(v23, v83, &qword_27E2DAA58, &qword_23D46D6E0);
  v44 = [v78 mainBundle];
  v45 = sub_23D46B788();
  v47 = v46;

  *&v107 = v45;
  *(&v107 + 1) = v47;
  sub_23D45048C(a1, v10);
  v48 = swift_allocObject();
  sub_23D4504F0(v10, v48 + v29);
  v49 = v80;
  sub_23D46BC08();
  sub_23D46BCD8();
  sub_23D46B948();
  v50 = v81;
  v76(v81, v49, v95);
  v51 = (v50 + *(v94 + 36));
  v52 = v112;
  v51[4] = v111;
  v51[5] = v52;
  v51[6] = v113;
  v53 = v108;
  *v51 = v107;
  v51[1] = v53;
  v54 = v110;
  v51[2] = v109;
  v51[3] = v54;
  v55 = (a1 + *(v82 + 40));
  v56 = *v55;
  v57 = *(v55 + 1);
  LOBYTE(v98) = v56;
  v99 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  LOBYTE(v47) = v97;
  KeyPath = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = (v47 & 1) == 0;
  v60 = v89;
  sub_23D45132C(v50, v89, &qword_27E2DAA50, &qword_23D46D6D8);
  v61 = (v60 + *(v86 + 36));
  *v61 = KeyPath;
  v61[1] = sub_23D451314;
  v61[2] = v59;
  v62 = sub_23D46BC78();
  LOBYTE(KeyPath) = (*(*v98 + 1280))(v62);

  v63 = 0;
  if ((KeyPath & 1) == 0)
  {
    v64 = sub_23D46BC78();
    v65 = (*(*v98 + 1328))(v64);

    v63 = v65 ^ 1;
  }

  v66 = sub_23D469394(v63 & 1);
  v67 = v60;
  v68 = v87;
  sub_23D45132C(v67, v87, &qword_27E2DAA38, &qword_23D46D6C0);
  *(v68 + *(v88 + 36)) = v66 & 1;
  v69 = v90;
  sub_23D45132C(v68, v90, &qword_27E2DAA40, &qword_23D46D6C8);
  v70 = v85;
  sub_23D451944(v43, v85, &qword_27E2DAA58, &qword_23D46D6E0);
  v71 = v91;
  sub_23D451944(v69, v91, &qword_27E2DAA40, &qword_23D46D6C8);
  v72 = v92;
  sub_23D451944(v70, v92, &qword_27E2DAA58, &qword_23D46D6E0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA60, &qword_23D46D718);
  sub_23D451944(v71, v72 + *(v73 + 48), &qword_27E2DAA40, &qword_23D46D6C8);
  sub_23D4519AC(v69, &qword_27E2DAA40, &qword_23D46D6C8);
  sub_23D4519AC(v43, &qword_27E2DAA58, &qword_23D46D6E0);
  sub_23D4519AC(v71, &qword_27E2DAA40, &qword_23D46D6C8);
  sub_23D4519AC(v70, &qword_27E2DAA58, &qword_23D46D6E0);
}

uint64_t sub_23D44FB8C()
{
  sub_23D46C038();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v0 = sub_23D46BC78();
  v1 = (*(*v6 + 464))(v0);
  v3 = v2;

  MEMORY[0x23EEE0EE0](v1, v3);

  v4 = sub_23D46BDE8();

  notify_post((v4 + 32));
}

uint64_t sub_23D44FCA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA20, &qword_23D46D680);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-v8];
  sub_23D46BF08();
  v40 = sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v10 = sub_23D46BC78();
  v11 = (*(**&v41 + 1424))(v10);

  v41 = v11;
  LOBYTE(v42) = 0;
  v13 = MEMORY[0x28223BE20](v12);
  *&v36[-16] = a1;
  v43 = 0x3FF0000000000000;
  sub_23D451050(v13, v14, v15);
  sub_23D46B8A8();
  v16 = sub_23D46BC78();
  v17 = (*(**&v41 + 1520))(v16);
  v19 = v18;

  v41 = *&v17;
  v42 = v19;
  sub_23D43B690(v20, v21, v22);
  v23 = sub_23D46BAC8();
  v25 = v24;
  v37 = v26;
  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = *(v4 + 16);
  v30(v7, v9, v3);
  v38 = v9;
  v31 = v3;
  v32 = v39;
  v30(v39, v7, v31);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA30, &qword_23D46D6B8) + 48)];
  *v33 = v23;
  *(v33 + 1) = v25;
  LOBYTE(v30) = v37 & 1;
  v33[16] = v37 & 1;
  *(v33 + 3) = v28;
  *(v33 + 4) = KeyPath;
  v33[40] = 1;
  sub_23D43B858(v23, v25, v30);
  v34 = *(v4 + 8);

  v34(v38, v31);
  sub_23D43B748(v23, v25, v30);

  v34(v7, v31);
}

uint64_t sub_23D450088(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v1 = sub_23D46BC78();
  v2 = (*(*v12 + 1184))(v1);
  v4 = v3;

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0xE000000000000000;
  }

  if (v5)
  {
  }

  else
  {
    v6 = sub_23D46C1B8();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      return v7 & 1;
    }
  }

  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  if (v10 == sub_23D46BDD8() && v11 == v8)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23D46C1B8();
  }

  return v7 & 1;
}

uint64_t sub_23D450228(void *a1)
{
  if (sub_23D44E858())
  {
    type metadata accessor for AccessoryDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
    sub_23D46BBC8();
    if (v5 == sub_23D46BDD8() && v6 == v1)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_23D46C1B8();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t sub_23D450300(uint64_t a1, uint64_t a2)
{
  sub_23D46C1E8();
  sub_23D46BDF8();
  v4 = sub_23D46C228();

  return sub_23D4505C4(a1, a2, v4);
}

char *sub_23D450378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABF0, &unk_23D46D990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23D45048C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D4504F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D450570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DA958;
  if (!qword_27E2DA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA958);
  }

  return result;
}

unint64_t sub_23D4505C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D46C1B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23D45067C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D46B998();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D4506D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D46B978();
  *a1 = result;
  return result;
}

uint64_t sub_23D450728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D46B958();
  *a1 = result;
  return result;
}

unint64_t sub_23D450790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DA960;
  if (!qword_27E2DA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA960);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23D450814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D45085C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23D4508E4(uint64_t a1)
{
  sub_23D4509CC(319);
  if (v1 <= 0x3F)
  {
    sub_23D450A88(319, &qword_27E2DA970, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_23D450A24(319);
      if (v3 <= 0x3F)
      {
        sub_23D450A88(319, &qword_27E2DA980, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23D4509CC(uint64_t a1)
{
  if (!qword_27E2DA968)
  {
    type metadata accessor for SettingsAccessory(255);
    v1 = sub_23D46BCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2DA968);
    }
  }
}

void sub_23D450A24(uint64_t a1)
{
  if (!qword_27E2DA978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA8F8, &qword_23D46D450);
    v1 = sub_23D46BBF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2DA978);
    }
  }
}

void sub_23D450A88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23D46BBF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23D450AD4()
{
  result = qword_27E2DA988;
  if (!qword_27E2DA988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA950, &unk_23D46D490);
    sub_23D450B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA988);
  }

  return result;
}

unint64_t sub_23D450B60()
{
  result = qword_27E2DA990;
  if (!qword_27E2DA990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA948, &qword_23D46D488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA928, &qword_23D46D478);
    sub_23D43B810(&qword_27E2DA940, &qword_27E2DA928, &qword_23D46D478, MEMORY[0x277CDE588]);
    swift_getOpaqueTypeConformance2();
    sub_23D43B810(&qword_27E2DA998, &qword_27E2DA9A0, ",4", MEMORY[0x277CE0198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA990);
  }

  return result;
}

uint64_t sub_23D450C98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_23D46BA58();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA18, &qword_23D46D678);
  sub_23D44FCA0(v3, (a1 + *(v4 + 44)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v5 = sub_23D46BC78();
  v6 = (*(*v14 + 1472))(v5);
  v8 = v7;

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0xE000000000000000;
  }

  if (v9)
  {

    v11 = 0;
  }

  else
  {
    v10 = sub_23D46C1B8();

    v11 = v10 ^ 1;
  }

  v12 = sub_23D469394(v11 & 1);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA9F0, &qword_23D46D660);
  *(a1 + *(result + 36)) = v12 & 1;
  return result;
}

unint64_t sub_23D450E50()
{
  result = qword_27E2DA9F8;
  if (!qword_27E2DA9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DA9F0, &qword_23D46D660);
    v3 = sub_23D43B810(&qword_27E2DAA00, &qword_27E2DAA08, &qword_23D46D668, MEMORY[0x277CE11A0]);
    sub_23D43B63C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DA9F8);
  }

  return result;
}

uint64_t sub_23D450F08@<X0>(uint64_t a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  v2 = sub_23D46BC78();
  (*(*v14 + 1472))(v2);

  sub_23D43B690(v3, v4, v5);
  v6 = sub_23D46BAC8();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

unint64_t sub_23D451050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DAA28;
  if (!qword_27E2DAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAA28);
  }

  return result;
}

uint64_t sub_23D4510C0(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for AccessoryDetailView(0);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_23D4511B4()
{
  type metadata accessor for AccessoryDetailView(0);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AFUSettings(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  sub_23D456B6C(v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
}

uint64_t sub_23D45132C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D4513A4()
{
  v1 = type metadata accessor for AccessoryDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0 + ((v2 + 16) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  v4 = v8;
  LOBYTE(v8) = *(v3 + *(v1 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  if (v7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  (*(*v4 + 1096))(v5);

  type metadata accessor for AFUSettings(0);
  sub_23D46BC78();
  sub_23D456B6C(v8);
}

unint64_t sub_23D451570()
{
  result = qword_27E2DAB28;
  if (!qword_27E2DAB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAA88, &qword_23D46D740);
    sub_23D43B810(&qword_27E2DAB30, &qword_27E2DAB38, &qword_23D46D818, MEMORY[0x277CDF1A0]);
    sub_23D43B810(&qword_27E2DAB40, &qword_27E2DAB48, &qword_23D46D820, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAB28);
  }

  return result;
}

unint64_t sub_23D451690()
{
  result = qword_27E2DAB60;
  if (!qword_27E2DAB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAB50, &qword_23D46D828);
    sub_23D451714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAB60);
  }

  return result;
}

unint64_t sub_23D451714()
{
  result = qword_27E2DAB68;
  if (!qword_27E2DAB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAB70, &qword_23D46D830);
    sub_23D43B810(&qword_27E2DAB78, &qword_27E2DAB80, &qword_23D46D838, MEMORY[0x277CE11A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAB68);
  }

  return result;
}

uint64_t sub_23D451810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessoryDetailView(0);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
}

uint64_t sub_23D451944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D4519AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D451A0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AccessoryDetailView(0);
  v4 = a1[2];
  v5 = a1[3];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  if (v4 == v31 && v5 == v32)
  {
  }

  else
  {
    v6 = sub_23D46C1B8();

    if ((v6 & 1) == 0)
    {

      v29 = 0;
      v10 = 0;
      v12 = 0;
      v25 = 0;
      v16 = 0;
      v17 = 0;
      v19 = 0;
      v26 = 0;
      v21 = 0;
      v28 = 0;
      goto LABEL_11;
    }
  }

  v30 = sub_23D46BA58();
  sub_23D46BEF8();
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_23D43B690(isCurrentExecutor, v8, v9);

  v10 = sub_23D46BAC8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = sub_23D46BAC8();
  v19 = v18;
  v21 = v20;
  v22 = v14 & 1;
  v33 = v14 & 1;
  v24 = v23 & 1;
  v25 = v22;
  v26 = v23 & 1;
  sub_23D43B858(v10, v12, v22);

  sub_23D43B858(v17, v19, v24);

  sub_23D43B748(v17, v19, v24);

  sub_23D43B748(v10, v12, v33);

  v28 = 1;
  v29 = v30;
LABEL_11:
  *a2 = v29;
  a2[1] = 0;
  a2[2] = v28;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v25;
  a2[6] = v16;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v26;
  a2[10] = v21;
  return result;
}

unint64_t sub_23D451D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DABA8;
  if (!qword_27E2DABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DABA8);
  }

  return result;
}

unint64_t sub_23D451D9C()
{
  result = qword_27E2DABC8;
  if (!qword_27E2DABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DABC0, &qword_23D46D8E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DABC8);
  }

  return result;
}

uint64_t sub_23D451E64()
{
  v1 = type metadata accessor for AccessoryDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  LOBYTE(v5) = *(v0 + ((v2 + 16) & ~v2) + *(v1 + 40));
  LOBYTE(v4) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  (*(*v5 + 904))(v4);
}

uint64_t sub_23D452028@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AccessoryDetailView(0);
  v4 = a1[2];
  v5 = a1[3];
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  if (v4 == v31 && v5 == v32)
  {
  }

  else
  {
    v6 = sub_23D46C1B8();

    if ((v6 & 1) == 0)
    {

      v29 = 0;
      v10 = 0;
      v12 = 0;
      v25 = 0;
      v16 = 0;
      v17 = 0;
      v19 = 0;
      v26 = 0;
      v21 = 0;
      v28 = 0;
      goto LABEL_11;
    }
  }

  v30 = sub_23D46BA58();
  sub_23D46BEF8();
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_23D43B690(isCurrentExecutor, v8, v9);

  v10 = sub_23D46BAC8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = sub_23D46BAC8();
  v19 = v18;
  v21 = v20;
  v22 = v14 & 1;
  v33 = v14 & 1;
  v24 = v23 & 1;
  v25 = v22;
  v26 = v23 & 1;
  sub_23D43B858(v10, v12, v22);

  sub_23D43B858(v17, v19, v24);

  sub_23D43B748(v17, v19, v24);

  sub_23D43B748(v10, v12, v33);

  v28 = 1;
  v29 = v30;
LABEL_11:
  *a2 = v29;
  a2[1] = 0;
  a2[2] = v28;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v25;
  a2[6] = v16;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v26;
  a2[10] = v21;
  return result;
}

uint64_t sub_23D452364(uint64_t a1, uint64_t a2)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABE0, &qword_23D46D8F0);
  sub_23D43B810(&qword_27E2DABA0, &qword_27E2DA8F8, &qword_23D46D450, MEMORY[0x277D83980]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D451D2C(OpaqueTypeConformance2, v3, v4);
  sub_23D46BC38();
}

uint64_t sub_23D45252C()
{
  v1 = type metadata accessor for AccessoryDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  LOBYTE(v5) = *(v0 + ((v2 + 16) & ~v2) + *(v1 + 40));
  LOBYTE(v4) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  (*(*v5 + 760))(v4);
}

uint64_t sub_23D4526F0()
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA900, &qword_23D46D458);
  sub_23D46BBC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F8, &qword_23D46D450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABE0, &qword_23D46D8F0);
  sub_23D43B810(&qword_27E2DABA0, &qword_27E2DA8F8, &qword_23D46D450, MEMORY[0x277D83980]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D451D2C(OpaqueTypeConformance2, v1, v2);
  sub_23D46BC38();
}

void sub_23D4528C0()
{
  v1 = type metadata accessor for AccessoryDetailView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  LOBYTE(v5) = *(v2 + *(v1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8F0, &qword_23D46D448);
  sub_23D46BBC8();
  v3 = sub_23D46BDC8();

  v4 = AUSettingsPallasStringToAudienceType();

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(*v5 + 1048))(v4);
  }
}

uint64_t sub_23D452AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessoryDetailView(0);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AFUSettings(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  sub_23D46BC78();
  sub_23D456B6C(v4);
}

uint64_t sub_23D452BF8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessoryDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D452C84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for AccessoryDetailView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA8E8, &qword_23D46D440);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D452EDC(uint64_t a1)
{
  sub_23D45393C();
}

uint64_t sub_23D452F08(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABF8, &qword_23D46D9A0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC00, &qword_23D46D9A8);
  sub_23D453194();
  sub_23D46BA98();
  v4 = &v3[*(v1 + 36)];
  *v4 = sub_23D453328;
  sub_23D453400();
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  sub_23D46BAD8();
  return sub_23D4534B8(v3);
}

uint64_t sub_23D45301C(uint64_t a1)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(*a1 + 400))(isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC48, &unk_23D46DB20);
  v3 = sub_23D43B810(&qword_27E2DAC50, &qword_27E2DAC48, &unk_23D46DB20, MEMORY[0x277D83980]);
  sub_23D453218(v3, v4, v5);
  sub_23D453864();
  sub_23D46BC38();
}

unint64_t sub_23D453194()
{
  result = qword_27E2DAC08;
  if (!qword_27E2DAC08)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAC00, &qword_23D46D9A8);
    sub_23D453218(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC08);
  }

  return result;
}

unint64_t sub_23D453218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DAC10;
  if (!qword_27E2DAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC10);
  }

  return result;
}

uint64_t sub_23D45326C@<X0>(uint64_t a2@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23D46998C(v3);
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_23D453328()
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *(**sub_23D45393C() + 456);

  v0(v1);
}

unint64_t sub_23D453400()
{
  result = qword_27E2DAC18;
  if (!qword_27E2DAC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DABF8, &qword_23D46D9A0);
    sub_23D43B810(&qword_27E2DAC20, &qword_27E2DAC28, &qword_23D46D9B0, MEMORY[0x277CDE588]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC18);
  }

  return result;
}

uint64_t sub_23D4534B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABF8, &qword_23D46D9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D453520()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DABF8, &qword_23D46D9A0);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC00, &qword_23D46D9A8);
  sub_23D453194();
  sub_23D46BA98();
  v3 = &v2[*(v0 + 36)];
  *v3 = sub_23D453328;
  sub_23D453400();
  v3[2] = 0;
  v3[3] = 0;
  v3[1] = 0;
  sub_23D46BAD8();
  return sub_23D4534B8(v2);
}

uint64_t sub_23D453634@<X0>(uint64_t *a2@<X8>)
{
  *a2 = *sub_23D45393C();
}

unint64_t sub_23D453690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DAC30;
  if (!qword_27E2DAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC30);
  }

  return result;
}

uint64_t sub_23D453704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D453810(a1, a2, a3);

  return MEMORY[0x28212D8E8](a1, v4);
}

uint64_t sub_23D453750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D453810(a1, a2, a3);

  return MEMORY[0x28212D8D8](a1, v4);
}

unint64_t sub_23D4537BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DAC38;
  if (!qword_27E2DAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC38);
  }

  return result;
}

unint64_t sub_23D453810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DAC40;
  if (!qword_27E2DAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC40);
  }

  return result;
}

unint64_t sub_23D453864()
{
  result = qword_27E2DAC58;
  if (!qword_27E2DAC58)
  {
    type metadata accessor for SettingsAccessory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAC58);
  }

  return result;
}

uint64_t sub_23D4538C4()
{
  type metadata accessor for AFUSettings(0);
  v0 = swift_allocObject();
  result = sub_23D454E18();
  qword_27E2DBE08 = v0;
  return result;
}

uint64_t sub_23D453904()
{
  v0 = swift_allocObject();
  sub_23D454E18();
  return v0;
}

uint64_t *sub_23D45393C()
{
  if (qword_27E2DB280 != -1)
  {
    swift_once();
  }

  return &qword_27E2DBE08;
}

uint64_t sub_23D45398C()
{
  if (qword_27E2DB280 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23D4539E8()
{
  v7 = sub_23D46BF58();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D46BF38();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23D46BD38();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_23D458B00(0, &qword_27E2DA780, 0x277D85C78);
  sub_23D46BD28();
  v8 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA788, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA790, qword_23D46D320);
  sub_23D43B810(&qword_27E2DA798, &qword_27E2DA790, qword_23D46D320, MEMORY[0x277D83970]);
  sub_23D46BFF8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_23D46BF88();
  qword_27E2DB290 = result;
  return result;
}

uint64_t sub_23D453C6C()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[16];
}

uint64_t sub_23D453CD0@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  *a2 = v3[16];
  return result;
}

uint64_t sub_23D453D70(uint64_t result)
{
  if (v1[16] == (result & 1))
  {
    v1[16] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 488))(v3, sub_23D458918);
  }

  return result;
}

void *sub_23D453E58()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  v1 = v0[3];
  v2 = v1;
  return v1;
}

id sub_23D453EC4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  v4 = v3[3];
  *a2 = v4;

  return v4;
}

void sub_23D453F4C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23D453F7C(v1);
}

void sub_23D453F7C(void *a1)
{
  v3 = v1[3];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 488))(v9, sub_23D458BC8);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_23D458B00(0, &qword_27E2DAC78, &off_278BD05D0);
  v4 = v3;
  v5 = a1;
  v6 = sub_23D46BF98();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[3];
LABEL_8:
  v1[3] = a1;
}

void *sub_23D4540FC()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  v1 = v0[4];
  v2 = v1;
  return v1;
}

id sub_23D454168@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  v4 = v3[4];
  *a2 = v4;

  return v4;
}

void sub_23D4541F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23D454220(v1);
}

void sub_23D454220(void *a1)
{
  v3 = v1[4];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 488))(v9, sub_23D458A74);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_23D458B00(0, &qword_27E2DAC70, 0x277CE5458);
  v4 = v3;
  v5 = a1;
  v6 = sub_23D46BF98();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[4];
LABEL_8:
  v1[4] = a1;
}

id sub_23D454398()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  v1 = v0[5];

  return v1;
}

id sub_23D45440C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  v4 = v3[5];
  *a2 = v4;

  return v4;
}

void sub_23D4544C0(void *a1)
{
  v2 = v1;
  v4 = v1[5];
  type metadata accessor for AFUObserverController();
  v5 = v4;
  v6 = sub_23D46BF98();

  if (v6)
  {
    v7 = v2[5];
    v2[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 488))(v9, sub_23D4588E0);
  }
}

id sub_23D454600()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  v1 = v0[6];

  return v1;
}

id sub_23D454674@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  v4 = v3[6];
  *a2 = v4;

  return v4;
}

void sub_23D454728(void *a1)
{
  v2 = v1;
  v4 = v1[6];
  type metadata accessor for AFUEndpointStatusController();
  v5 = v4;
  v6 = sub_23D46BF98();

  if (v6)
  {
    v7 = v2[6];
    v2[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 488))(v9, sub_23D4588A8);
  }
}

uint64_t sub_23D4548C4()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  swift_beginAccess();
}

uint64_t sub_23D454948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_23D45499C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 408);

  return v2(v3);
}

uint64_t sub_23D4549F8(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_23D457D78(v3, a1);

  if (v4)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 488))(v7, sub_23D457F8C);
  }
}

uint64_t (*sub_23D454B20(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 480))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings11AFUSettings___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D458B58(&qword_27E2DAC60, type metadata accessor for AFUSettings, &unk_23D46DBD8);
  sub_23D46B848();

  v4[7] = sub_23D454874(v4);
  return sub_23D454C70;
}