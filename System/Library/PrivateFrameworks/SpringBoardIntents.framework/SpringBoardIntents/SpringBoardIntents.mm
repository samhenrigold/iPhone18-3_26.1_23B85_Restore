uint64_t sub_26B9E9A18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B9E9A40();
  *a1 = result;
  return result;
}

uint64_t sub_26B9E9A40()
{
  v18 = sub_26B9F1960();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434430, &qword_26B9F2988);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434300, &qword_26B9F2990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_26B9F19F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434440, "4\n");
  sub_26B9F19D0();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_26B9F1870();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, *MEMORY[0x277CBA308], v18);
  sub_26B9E9D38();
  return sub_26B9F18B0();
}

unint64_t sub_26B9E9D38()
{
  result = qword_281255F98;
  if (!qword_281255F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F98);
  }

  return result;
}

uint64_t sub_26B9E9D8C(uint64_t a1, int a2)
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

uint64_t sub_26B9E9DE8(uint64_t a1)
{
  sub_26B9E9E24();

  return sub_26B9F1840();
}

unint64_t sub_26B9E9E24()
{
  result = qword_281255F38;
  if (!qword_281255F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F38);
  }

  return result;
}

uint64_t sub_26B9E9E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B9E9F7C;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_26B9E9F2C(uint64_t result, int a2, int a3)
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

uint64_t sub_26B9E9F7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id NSStringFromSBINAppIntentActionSource(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
  }

  else
  {
    v2 = *(&off_279D12070 + a1);
  }

  return v2;
}

id SBINLogCommon(uint64_t a1)
{
  if (SBINLogCommon_onceToken != -1)
  {
    SBINLogCommon_cold_1();
  }

  v2 = SBINLogCommon___logObj;

  return v2;
}

uint64_t __SBINLogCommon_block_invoke()
{
  SBINLogCommon___logObj = os_log_create("com.apple.SpringBoardIntents", "Common");

  return MEMORY[0x2821F96F8]();
}

id SBINLogIntentExecution(uint64_t a1)
{
  if (SBINLogIntentExecution_onceToken[0] != -1)
  {
    SBINLogIntentExecution_cold_1();
  }

  v2 = SBINLogIntentExecution___logObj;

  return v2;
}

uint64_t __SBINLogIntentExecution_block_invoke()
{
  SBINLogIntentExecution___logObj = os_log_create("com.apple.SpringBoardIntents", "IntentExecution");

  return MEMORY[0x2821F96F8]();
}

void sub_26B9EA578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFCActivityManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FocusLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FocusLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279D120D8;
    v6 = 0;
    FocusLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FocusLibraryCore_frameworkLibrary)
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
  result = objc_getClass("FCActivityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFCActivityManagerClass_block_invoke_cold_1();
  }

  getFCActivityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FocusLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FocusLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *NSStringFromSBINCameraCaptureMode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
  }

  else
  {
    v2 = off_279D12158[a1];
  }

  return v2;
}

__CFString *NSStringFromSBINCameraCaptureDevice(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"back";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
    }
  }

  else
  {
    v2 = @"front";
  }

  return v2;
}

uint64_t sub_26B9EB244()
{
  v0 = sub_26B9F19A0();
  __swift_allocate_value_buffer(v0, qword_280434690);
  __swift_project_value_buffer(v0, qword_280434690);
  return sub_26B9F1990();
}

uint64_t sub_26B9EB2A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434320, &qword_26B9F2F50);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434300, &qword_26B9F2990);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v23 = sub_26B9F19F0();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434328, &qword_26B9F29C0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434330, &qword_26B9F29C8);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v17 = *(*(v5 - 8) + 72);
  v18 = 4 * v17;
  v7 = swift_allocObject();
  v19 = v7;
  *(v7 + 16) = xmmword_26B9F2520;
  v8 = (v7 + v6);
  v21 = v5;
  *v8 = 0;
  sub_26B9F19D0();
  v9 = *(v4 + 56);
  v20 = v4 + 56;
  v10 = v23;
  v9(v3, 1, 1, v23);
  sub_26B9F1900();
  v22 = v8;
  sub_26B9F1920();
  v11 = v17;
  v8[v17] = 1;
  sub_26B9F19D0();
  v9(v3, 1, 1, v10);
  sub_26B9F1900();
  sub_26B9F1920();
  v12 = v22;
  v16 = *(v21 + 48);
  v22[2 * v11] = 2;
  sub_26B9F19D0();
  v9(v3, 1, 1, v23);
  sub_26B9F1900();
  sub_26B9F1920();
  v12[3 * v11] = 3;
  sub_26B9F19D0();
  v13 = v23;
  v9(v3, 1, 1, v23);
  sub_26B9F1900();
  sub_26B9F1920();
  v12[v18] = 4;
  sub_26B9F19D0();
  v9(v3, 1, 1, v13);
  sub_26B9F1900();
  sub_26B9F1920();
  v14 = sub_26B9ED1D4(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2804346A8 = v14;
  return result;
}

unint64_t sub_26B9EB7E8()
{
  result = qword_281256018;
  if (!qword_281256018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256018);
  }

  return result;
}

uint64_t sub_26B9EB83C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006FLL;
  v3 = 0x746F685072616572;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6F6850746E6F7266;
    }

    else
    {
      v5 = 0x746F685072616572;
    }

    if (v4)
    {
      v6 = 0xEA00000000006F74;
    }

    else
    {
      v6 = 0xE90000000000006FLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6564695672616572;
    v6 = 0xE90000000000006FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74726F5072616572;
    }

    else
    {
      v5 = 0x726F50746E6F7266;
    }

    if (v4 == 3)
    {
      v6 = 0xEC00000074696172;
    }

    else
    {
      v6 = 0xED00007469617274;
    }
  }

  v7 = 0x6564695672616572;
  v8 = 0x74726F5072616572;
  v9 = 0xEC00000074696172;
  if (a2 != 3)
  {
    v8 = 0x726F50746E6F7266;
    v9 = 0xED00007469617274;
  }

  if (a2 == 2)
  {
    v10 = 0xE90000000000006FLL;
  }

  else
  {
    v7 = v8;
    v10 = v9;
  }

  if (a2)
  {
    v3 = 0x6F6850746E6F7266;
    v2 = 0xEA00000000006F74;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v10;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26B9F1B70();
  }

  return v13 & 1;
}

uint64_t sub_26B9EB9F0()
{
  sub_26B9F1B80();
  sub_26B9F1AD0();

  return sub_26B9F1B90();
}

uint64_t sub_26B9EBAEC(uint64_t a1)
{
  sub_26B9F1AD0();
}

uint64_t sub_26B9EBBD4(uint64_t a1)
{
  sub_26B9F1B80();
  sub_26B9F1AD0();

  return sub_26B9F1B90();
}

unint64_t sub_26B9EBCCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B9ED3A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26B9EBCFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x746F685072616572;
  v4 = 0x6564695672616572;
  v5 = 0xEC00000074696172;
  v6 = 0x74726F5072616572;
  if (v2 != 3)
  {
    v6 = 0x726F50746E6F7266;
    v5 = 0xED00007469617274;
  }

  if (v2 == 2)
  {
    v5 = 0xE90000000000006FLL;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xEA00000000006F74;
  if (*v1)
  {
    v3 = 0x6F6850746E6F7266;
  }

  else
  {
    v7 = 0xE90000000000006FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  *a1 = v8;
  a1[1] = v9;
}

unint64_t sub_26B9EBDB8()
{
  result = qword_281256060;
  if (!qword_281256060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256060);
  }

  return result;
}

unint64_t sub_26B9EBE10()
{
  result = qword_281256038;
  if (!qword_281256038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256038);
  }

  return result;
}

unint64_t sub_26B9EBE68()
{
  result = qword_281256010;
  if (!qword_281256010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256010);
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

unint64_t sub_26B9EBF68()
{
  result = qword_281256048;
  if (!qword_281256048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256048);
  }

  return result;
}

unint64_t sub_26B9EBFBC()
{
  result = qword_281256040;
  if (!qword_281256040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256040);
  }

  return result;
}

unint64_t sub_26B9EC010()
{
  result = qword_281256058;
  if (!qword_281256058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256058);
  }

  return result;
}

unint64_t sub_26B9EC068()
{
  result = qword_281256050;
  if (!qword_281256050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256050);
  }

  return result;
}

unint64_t sub_26B9EC120()
{
  result = qword_2804342D8;
  if (!qword_2804342D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804342D8);
  }

  return result;
}

uint64_t sub_26B9EC174(uint64_t a1)
{
  v2 = sub_26B9EC120();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_26B9EC1C4()
{
  result = qword_281256030;
  if (!qword_281256030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256030);
  }

  return result;
}

unint64_t sub_26B9EC21C()
{
  result = qword_281256008;
  if (!qword_281256008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256008);
  }

  return result;
}

unint64_t sub_26B9EC274()
{
  result = qword_281256020;
  if (!qword_281256020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256020);
  }

  return result;
}

uint64_t sub_26B9EC2C8()
{
  if (qword_280434298 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26B9EC324(uint64_t a1)
{
  v2 = sub_26B9EC068();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_26B9EC374()
{
  result = qword_2804342E8;
  if (!qword_2804342E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804342E8);
  }

  return result;
}

unint64_t sub_26B9EC3E4()
{
  result = qword_281255FF0;
  if (!qword_281255FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FF0);
  }

  return result;
}

unint64_t sub_26B9EC43C()
{
  result = qword_281255FE8;
  if (!qword_281255FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FE8);
  }

  return result;
}

unint64_t sub_26B9EC494()
{
  result = qword_281256000;
  if (!qword_281256000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281256000);
  }

  return result;
}

uint64_t sub_26B9EC578()
{
  v0 = sub_26B9F19F0();
  __swift_allocate_value_buffer(v0, qword_2804346B0);
  __swift_project_value_buffer(v0, qword_2804346B0);
  return sub_26B9F19D0();
}

uint64_t sub_26B9EC5DC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_26B9F1B10();
  v2[20] = sub_26B9F1B00();
  v4 = sub_26B9F1AF0();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_26B9EC674, v4, v3);
}

uint64_t sub_26B9EC674()
{
  sub_26B9F1890();
  v1 = *(v0 + 80);
  v2 = qword_26B9F29E0[v1];
  v3 = qword_26B9F2A08[v1];
  v4 = sub_26B9F004C(*(v0 + 152));
  v5 = [objc_allocWithZone(SBINOpenCameraAppIntent) initWithCaptureDevice:v2 captureMode:v3 systemContext:v4];
  *(v0 + 184) = v5;

  v6 = [objc_opt_self() sharedSystemCoordinator];
  *(v0 + 192) = v6;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_26B9EC824;
  v7 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434310, &qword_26B9F29A8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_26B9F09D8;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v7;
  [v6 performAppIntent:v5 withCompletion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_26B9EC824()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_26B9EC92C, v2, v1);
}

uint64_t sub_26B9EC92C()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 200);

  if (qword_2804342A8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 184);
  v4 = sub_26B9F1A70();
  __swift_project_value_buffer(v4, qword_2804346C8);
  v5 = v3;
  v6 = sub_26B9F1A60();
  v7 = sub_26B9F1B20();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2;
    v11 = v8;
    _os_log_impl(&dword_26B9E8000, v6, v7, "%@ intent performed successfully: %{BOOL}d", v9, 0x12u);
    sub_26B9ED834(v10);
    MEMORY[0x26D6892A0](v10, -1, -1);
    MEMORY[0x26D6892A0](v9, -1, -1);
  }

  v12 = *(v0 + 184);

  sub_26B9F1880();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26B9ECB08@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_26B9ECBCC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9E9F7C;

  return sub_26B9EC5DC(a1, v4);
}

uint64_t sub_26B9ECC6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B9ED3F4();
  *a1 = result;
  return result;
}

uint64_t sub_26B9ECC94(uint64_t a1)
{
  sub_26B9EC3E4();

  return sub_26B9F1840();
}

uint64_t getEnumTagSinglePayload for CameraMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26B9ECE50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_26B9ECE98(uint64_t a1)
{
  v1 = a1;
  sub_26B9F1B80();
  sub_26B9F1AD0();

  v2 = sub_26B9F1B90();

  return sub_26B9ECFBC(v1, v2);
}

unint64_t sub_26B9ECFBC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    v5 = 0xEA00000000006F74;
    v17 = a1;
    while (1)
    {
      v6 = *(*(v18 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v18 + 48) + v4))
        {
          v7 = 0x6F6850746E6F7266;
        }

        else
        {
          v7 = 0x746F685072616572;
        }

        if (*(*(v18 + 48) + v4))
        {
          v8 = 0xEA00000000006F74;
        }

        else
        {
          v8 = 0xE90000000000006FLL;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0x6564695672616572;
        v8 = 0xE90000000000006FLL;
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x74726F5072616572;
        }

        else
        {
          v7 = 0x726F50746E6F7266;
        }

        if (v6 == 3)
        {
          v8 = 0xEC00000074696172;
        }

        else
        {
          v8 = 0xED00007469617274;
        }
      }

      if (v17 == 3)
      {
        v9 = 0x74726F5072616572;
      }

      else
      {
        v9 = 0x726F50746E6F7266;
      }

      if (v17 == 3)
      {
        v10 = 0xEC00000074696172;
      }

      else
      {
        v10 = 0xED00007469617274;
      }

      if (v17 == 2)
      {
        v9 = 0x6564695672616572;
        v10 = 0xE90000000000006FLL;
      }

      if (v17)
      {
        v11 = 0x6F6850746E6F7266;
      }

      else
      {
        v11 = 0x746F685072616572;
      }

      if (!v17)
      {
        v5 = 0xE90000000000006FLL;
      }

      v12 = v17 <= 1 ? v11 : v9;
      v13 = v17 <= 1 ? v5 : v10;
      if (v7 == v12 && v8 == v13)
      {
        break;
      }

      v14 = sub_26B9F1B70();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
        v5 = 0xEA00000000006F74;
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

unint64_t sub_26B9ED1D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434330, &qword_26B9F29C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434338, &unk_26B9F29D0);
    v7 = sub_26B9F1B50();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26B9ED900(v9, v5);
      v11 = *v5;
      result = sub_26B9ECE98(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_26B9F1930();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_26B9ED3A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B9F1B60();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26B9ED3F4()
{
  v17 = sub_26B9F1960();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434430, &qword_26B9F2988);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434300, &qword_26B9F2990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_26B9F19F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434308, &qword_26B9F2998);
  sub_26B9F19D0();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 0;
  v14 = sub_26B9F1870();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, *MEMORY[0x277CBA308], v17);
  sub_26B9EC120();
  return sub_26B9F18A0();
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

uint64_t sub_26B9ED74C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26B9ED834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434450, &unk_26B9F29B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_26B9ED900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434330, &qword_26B9F29C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_26B9ED978()
{
  v0 = sub_26B9F1A70();
  __swift_allocate_value_buffer(v0, qword_2804346C8);
  v1 = __swift_project_value_buffer(v0, qword_2804346C8);
  result = SBINLogIntentExecution(v1);
  if (result)
  {
    return sub_26B9F1A80();
  }

  __break(1u);
  return result;
}

unint64_t sub_26B9ED9E0()
{
  result = qword_281255FA0;
  if (!qword_281255FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FA0);
  }

  return result;
}

unint64_t sub_26B9EDA38()
{
  result = qword_281255F88;
  if (!qword_281255F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F88);
  }

  return result;
}

unint64_t sub_26B9EDA90()
{
  result = qword_281255F50;
  if (!qword_281255F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F50);
  }

  return result;
}

unint64_t sub_26B9EDAE8()
{
  result = qword_281255FC8;
  if (!qword_281255FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FC8);
  }

  return result;
}

uint64_t sub_26B9EDB48()
{
  v0 = sub_26B9F19F0();
  __swift_allocate_value_buffer(v0, qword_2804346E0);
  __swift_project_value_buffer(v0, qword_2804346E0);
  return sub_26B9F19D0();
}

uint64_t sub_26B9EDBAC()
{
  v0 = sub_26B9F19A0();
  __swift_allocate_value_buffer(v0, qword_2804346F8);
  __swift_project_value_buffer(v0, qword_2804346F8);
  return sub_26B9F1990();
}

uint64_t sub_26B9EDC0C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434320, &qword_26B9F2F50);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434300, &qword_26B9F2990);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v24 - v5;
  v6 = sub_26B9F19E0();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_26B9F1A40();
  MEMORY[0x28223BE20](v9 - 8);
  v24 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B9F1AA0();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_26B9F19F0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v20 = *v1;
  v19 = v1[1];
  v29 = v1;
  if (v20 == sub_26B9F1AC0() && v19 == v21)
  {
  }

  else
  {
    v22 = sub_26B9F1B70();

    if ((v22 & 1) == 0)
    {

      sub_26B9F19D0();
      goto LABEL_7;
    }
  }

  sub_26B9F1A90();
  sub_26B9F1A30();
  *v8 = sub_26B9EFEC8(0, &qword_281255F10, off_279D11F38);
  (*(v25 + 104))(v8, *MEMORY[0x277CC9120], v26);
  sub_26B9F1A00();
LABEL_7:
  (*(v13 + 16))(v16, v18, v12);
  (*(v13 + 56))(v27, 1, 1, v12);
  sub_26B9EE044(v28);
  sub_26B9F1920();
  return (*(v13 + 8))(v18, v12);
}

id sub_26B9EE044@<X0>(uint64_t a1@<X8>)
{
  v9 = *(v1 + 32);
  if (*(&v9 + 1))
  {
    v8 = *(v1 + 48);
    if (*(&v8 + 1))
    {
      sub_26B9EFEC8(0, &qword_281255F08, 0x277D75348);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_26B9EFF10(&v9, v7);
      sub_26B9EFF10(&v8, v7);
      if ([ObjCClassFromMetadata respondsToSelector_])
      {

        v4 = [ObjCClassFromMetadata performSelector_];
        result = ObjCClassFromMetadata;
        if (!v4)
        {
          __break(1u);
          return result;
        }

        swift_unknownObjectRetain();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return sub_26B9F1900();
        }

        swift_unknownObjectRelease();
      }

      sub_26B9EFF80(&v9, &unk_2804344D0, &qword_26B9F2F58);
    }
  }

  v6 = sub_26B9F1910();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

unint64_t sub_26B9EE1E4()
{
  result = qword_281255F80;
  if (!qword_281255F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F80);
  }

  return result;
}

unint64_t sub_26B9EE238()
{
  result = qword_281255F78;
  if (!qword_281255F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F78);
  }

  return result;
}

unint64_t sub_26B9EE28C()
{
  result = qword_281255F90;
  if (!qword_281255F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F90);
  }

  return result;
}

unint64_t sub_26B9EE2E4()
{
  result = qword_281255F68;
  if (!qword_281255F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F68);
  }

  return result;
}

uint64_t sub_26B9EE344@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26B9EE3CC(uint64_t a1)
{
  v2 = sub_26B9E9D38();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_26B9EE41C()
{
  result = qword_281255F60;
  if (!qword_281255F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F60);
  }

  return result;
}

uint64_t sub_26B9EE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B9EFFE0;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_26B9EE538(uint64_t a1)
{
  v2 = sub_26B9EE2E4();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_26B9EE588()
{
  result = qword_281255FB8;
  if (!qword_281255FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FB8);
  }

  return result;
}

unint64_t sub_26B9EE5E0()
{
  result = qword_281255FB0;
  if (!qword_281255FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FB0);
  }

  return result;
}

unint64_t sub_26B9EE638(unint64_t result, char **a2)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = &off_279D12000;
      v29 = v3;
      v30 = v2;
      v27 = v2 & 0xFFFFFFFFFFFFFF8;
      v28 = v2 & 0xC000000000000001;
      while (v5)
      {
        v9 = MEMORY[0x26D688D40](v4, v2);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_16;
        }

LABEL_9:
        if (([v9 v7[89]] & 1) == 0)
        {
          v11 = [v9 activityIdentifier];
          v36 = sub_26B9F1AC0();
          v35 = v12;

          v13 = [v9 activityDisplayName];
          v14 = sub_26B9F1AC0();
          v33 = v15;
          v34 = v14;

          v16 = [v9 activitySymbolImageName];
          v32 = sub_26B9F1AC0();
          v18 = v17;

          v19 = [v9 activityColorName];
          v20 = sub_26B9F1AC0();
          v22 = v21;

          v23 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_26B9EF59C(0, *(v23 + 2) + 1, 1, v23);
            *a2 = v23;
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = sub_26B9EF59C((v25 > 1), v26 + 1, 1, v23);
            *a2 = v23;
          }

          *(v23 + 2) = v26 + 1;
          v8 = &v23[64 * v26];
          *(v8 + 4) = v36;
          *(v8 + 5) = v35;
          *(v8 + 6) = v34;
          *(v8 + 7) = v33;
          *(v8 + 8) = v32;
          *(v8 + 9) = v18;
          *(v8 + 10) = v20;
          *(v8 + 11) = v22;
          v3 = v29;
          v2 = v30;
          v6 = v27;
          v5 = v28;
          v7 = &off_279D12000;
        }

        result = swift_unknownObjectRelease();
        ++v4;
        if (v10 == v3)
        {
          return result;
        }
      }

      if (v4 >= *(v6 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v2 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v10 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = sub_26B9F1B40();
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_26B9EE89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B9EFFF0;

  return sub_26B9EFA08(a1);
}

uint64_t sub_26B9EE944(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26B9EE9E8;

  return sub_26B9EF880();
}

uint64_t sub_26B9EE9E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_26B9EEAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B9EEBB8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_26B9EEBB8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_26B9EECBC()
{
  result = qword_281255FC0;
  if (!qword_281255FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FC0);
  }

  return result;
}

unint64_t sub_26B9EED14()
{
  result = qword_281255F18;
  if (!qword_281255F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280434410, qword_26B9F2CD8);
    sub_26B9EE28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F18);
  }

  return result;
}

uint64_t sub_26B9EED98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B9EDAE8();
  *v5 = v2;
  v5[1] = sub_26B9EFFE0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_26B9EEE54()
{
  result = qword_281255F28;
  if (!qword_281255F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F28);
  }

  return result;
}

unint64_t sub_26B9EEEAC()
{
  result = qword_281255F40;
  if (!qword_281255F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255F40);
  }

  return result;
}

uint64_t sub_26B9EEF6C(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  sub_26B9F1B10();
  v2[28] = sub_26B9F1B00();
  v4 = sub_26B9F1AF0();
  v2[29] = v4;
  v2[30] = v3;

  return MEMORY[0x2822009F8](sub_26B9EF004, v4, v3);
}

uint64_t sub_26B9EF004()
{
  v1 = v0[27];
  sub_26B9F1890();

  sub_26B9EFDEC((v0 + 10));
  v2 = sub_26B9F006C(v1);
  v3 = objc_allocWithZone(SBINFocusAppIntent);
  v4 = sub_26B9F1AB0();

  v5 = [v3 initWithModeIdentifier:v4 systemContext:v2];
  v0[31] = v5;

  v6 = [objc_opt_self() sharedSystemCoordinator];
  v0[32] = v6;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_26B9EF1D4;
  v7 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434310, &qword_26B9F29A8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_26B9F09D8;
  v0[21] = &block_descriptor_0;
  v0[22] = v7;
  [v6 performAppIntent:v5 withCompletion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B9EF1D4()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_26B9EF2DC, v2, v1);
}

uint64_t sub_26B9EF2DC()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 264);

  if (qword_2804342A8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 248);
  v4 = sub_26B9F1A70();
  __swift_project_value_buffer(v4, qword_2804346C8);
  v5 = v3;
  v6 = sub_26B9F1A60();
  v7 = sub_26B9F1B20();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2;
    v11 = v8;
    _os_log_impl(&dword_26B9E8000, v6, v7, "%@ intent performed successfully: %{BOOL}d", v9, 0x12u);
    sub_26B9EFF80(v10, &qword_280434450, &unk_26B9F29B0);
    MEMORY[0x26D6892A0](v10, -1, -1);
    MEMORY[0x26D6892A0](v9, -1, -1);
  }

  v12 = *(v0 + 248);

  sub_26B9F1880();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26B9EF4C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9E9F7C;

  return sub_26B9EEF6C(a1, v4);
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

char *sub_26B9EF59C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434458, &unk_26B9F2F30);
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

char *sub_26B9EF6A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B9EF6C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B9EF6C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434458, &unk_26B9F2F30);
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

uint64_t sub_26B9EF7D4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_26B9EF89C()
{
  v10 = v0;
  v1 = [objc_opt_self() sharedActivityManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434458, &unk_26B9F2F30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26B9F2A30;
  *(v2 + 32) = sub_26B9F1AC0();
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = xmmword_26B9F2A40;
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x800000026B9F3460;
  v9 = v2;
  v4 = [v1 availableActivities];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804344C0, &qword_26B9F2F40);
  v5 = sub_26B9F1AE0();

  sub_26B9EE638(v5, &v9);

  v6 = v9;
  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_26B9EFA08(uint64_t a1)
{
  *(v1 + 160) = a1;
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_26B9EFAAC;

  return sub_26B9EF880();
}

uint64_t sub_26B9EFAAC(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26B9EFBE0, 0, 0);
  }
}

void sub_26B9EFBE0()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v21 = v5;
      v6 = (v4 + (v3 << 6));
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v0 + 160);
        v9 = v6[3];
        v11 = *v6;
        v10 = v6[1];
        *(v0 + 48) = v6[2];
        *(v0 + 64) = v9;
        *(v0 + 16) = v11;
        *(v0 + 32) = v10;
        v3 = v7 + 1;
        v12 = *(v0 + 24);
        *(v0 + 144) = *(v0 + 16);
        *(v0 + 152) = v12;
        v13 = swift_task_alloc();
        *(v13 + 16) = v0 + 144;
        sub_26B9EFE90(v0 + 16, v0 + 80);

        LOBYTE(v8) = sub_26B9EF7D4(sub_26B9EFE38, v13, v8);

        if (v8)
        {
          break;
        }

        sub_26B9EFDEC(v0 + 16);
        v6 += 4;
        ++v7;
        if (v2 == v3)
        {
          v5 = v21;
          goto LABEL_15;
        }
      }

      v5 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B9EF6A8(0, *(v21 + 16) + 1, 1);
        v5 = v21;
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26B9EF6A8((v14 > 1), v15 + 1, 1);
        v5 = v21;
      }

      *(v5 + 16) = v15 + 1;
      v16 = (v5 + (v15 << 6));
      v17 = *(v0 + 16);
      v18 = *(v0 + 32);
      v19 = *(v0 + 64);
      v16[4] = *(v0 + 48);
      v16[5] = v19;
      v16[2] = v17;
      v16[3] = v18;
      v4 = v1 + 32;
    }

    while (v2 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v20 = *(v0 + 8);

  v20(v5);
}

uint64_t sub_26B9EFE38(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B9F1B70() & 1;
  }
}

uint64_t sub_26B9EFEC8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26B9EFF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804344D0, &qword_26B9F2F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9EFF80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26B9EFFF8()
{
  result = qword_281255FD8;
  if (!qword_281255FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FD8);
  }

  return result;
}

id sub_26B9F008C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E0, &qword_26B9F30E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_26B9F18D0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E8, &unk_26B9F30F0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = sub_26B9F18F0();
  v35 = *(v21 - 8);
  v36 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  a2(v22);
  sub_26B9F1800();
  sub_26B9F18C0();
  sub_26B9F18E0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26B9EFF80(v7, &qword_2804344E0, &qword_26B9F30E8);
    v25 = 0;
  }

  else
  {
    v32 = *(v9 + 32);
    v32(v14, v7, v8);
    v32(v12, v14, v8);
    v33 = (*(v9 + 88))(v12, v8);
    v25 = 2;
    if (v33 != *MEMORY[0x277CBA140] && v33 != *MEMORY[0x277CBA138] && v33 != *MEMORY[0x277CBA148] && v33 != *MEMORY[0x277CBA168] && v33 != *MEMORY[0x277CBA158])
    {
      if (v33 == *MEMORY[0x277CBA128])
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
        if (v33 != *MEMORY[0x277CBA170] && v33 != *MEMORY[0x277CBA130])
        {
          (*(v9 + 8))(v12, v8);
          v25 = 2;
        }
      }
    }
  }

  sub_26B9F14BC(v20, v18);
  v26 = sub_26B9F1A20();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v18, 1, v26) != 1)
  {
    v28 = sub_26B9F1A10();
    (*(v27 + 8))(v18, v26);
  }

  v29 = objc_allocWithZone(SBINAppIntentSystemContext);
  v30 = [v29 initWithPreciseTimestamp:v28 actionSource:{v25, v34}];

  sub_26B9EFF80(v20, &qword_2804344E8, &unk_26B9F30F0);
  (*(v35 + 8))(v24, v36);
  return v30;
}

id sub_26B9F052C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E0, &qword_26B9F30E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_26B9F18D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E8, &unk_26B9F30F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = sub_26B9F18F0();
  v28 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9EFFF8();
  sub_26B9F1800();
  sub_26B9F18C0();
  sub_26B9F18E0();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_26B9EFF80(v2, &qword_2804344E0, &qword_26B9F30E8);
    v19 = 0;
  }

  else
  {
    v27 = v16;
    v25 = *(v4 + 32);
    v25(v9, v2, v3);
    v25(v7, v9, v3);
    v26 = (*(v4 + 88))(v7, v3);
    v19 = 2;
    if (v26 == *MEMORY[0x277CBA140])
    {
      v16 = v27;
    }

    else
    {
      v16 = v27;
      if (v26 != *MEMORY[0x277CBA138] && v26 != *MEMORY[0x277CBA148] && v26 != *MEMORY[0x277CBA168] && v26 != *MEMORY[0x277CBA158])
      {
        if (v26 == *MEMORY[0x277CBA128])
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
          if (v26 != *MEMORY[0x277CBA170] && v26 != *MEMORY[0x277CBA130])
          {
            (*(v4 + 8))(v7, v3);
            v19 = 2;
          }
        }
      }
    }
  }

  sub_26B9F14BC(v15, v13);
  v20 = sub_26B9F1A20();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v13, 1, v20) != 1)
  {
    v22 = sub_26B9F1A10();
    (*(v21 + 8))(v13, v20);
  }

  v23 = [objc_allocWithZone(SBINAppIntentSystemContext) initWithPreciseTimestamp:v22 actionSource:v19];

  sub_26B9EFF80(v15, &qword_2804344E8, &unk_26B9F30F0);
  (*(v28 + 8))(v18, v16);
  return v23;
}

uint64_t sub_26B9F09D8(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_26B9F0A34()
{
  v0 = sub_26B9F19F0();
  __swift_allocate_value_buffer(v0, qword_280434710);
  __swift_project_value_buffer(v0, qword_280434710);
  return sub_26B9F19D0();
}

uint64_t sub_26B9F0A98(uint64_t a1)
{
  v1[18] = a1;
  sub_26B9F1B10();
  v1[19] = sub_26B9F1B00();
  v3 = sub_26B9F1AF0();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_26B9F0B30, v3, v2);
}

uint64_t sub_26B9F0B30()
{
  sub_26B9EFFF8();
  sub_26B9F1840();
  v1 = sub_26B9F1AB0();
  v0[22] = v1;

  v2 = v1;
  v3 = sub_26B9F052C();
  v4 = [objc_allocWithZone(SBINAppIntent) initWithIdentifier:v2 systemContext:v3];
  v0[23] = v4;

  v5 = [objc_opt_self() sharedSystemCoordinator];
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_26B9F0CEC;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280434310, &qword_26B9F29A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26B9F09D8;
  v0[13] = &block_descriptor_1;
  v0[14] = v6;
  [v5 performAppIntent:v4 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B9F0CEC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_26B9F0DF4, v2, v1);
}

uint64_t sub_26B9F0DF4()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 200);

  if (qword_2804342A8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 184);
  v4 = sub_26B9F1A70();
  __swift_project_value_buffer(v4, qword_2804346C8);
  v5 = v3;
  v6 = sub_26B9F1A60();
  v7 = sub_26B9F1B20();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2;
    v11 = v8;
    _os_log_impl(&dword_26B9E8000, v6, v7, "%@ intent performed successfully: %{BOOL}d", v9, 0x12u);
    sub_26B9EFF80(v10, &qword_280434450, &unk_26B9F29B0);
    MEMORY[0x26D6892A0](v10, -1, -1);
    MEMORY[0x26D6892A0](v9, -1, -1);
  }

  v13 = *(v0 + 176);
  v12 = *(v0 + 184);

  sub_26B9F1880();
  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_26B9F0FBC()
{
  result = qword_281255FD0;
  if (!qword_281255FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FD0);
  }

  return result;
}

unint64_t sub_26B9F1014()
{
  result = qword_281255FE0;
  if (!qword_281255FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281255FE0);
  }

  return result;
}

uint64_t sub_26B9F10D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2804342C0 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9F19F0();
  v3 = __swift_project_value_buffer(v2, qword_280434710);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_26B9F117C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B9E9F7C;

  return sub_26B9F0A98(a1);
}

uint64_t sub_26B9F1214(uint64_t a1)
{
  sub_26B9EFFF8();

  return sub_26B9F1840();
}

unint64_t sub_26B9F1260()
{
  result = qword_280434420;
  if (!qword_280434420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804342F0, &qword_26B9F2980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434420);
  }

  return result;
}

uint64_t sub_26B9F12C4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_26B9F1338(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

_BYTE **sub_26B9F13AC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_26B9F13BC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26B9F1430@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26B9F14BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804344E8, &unk_26B9F30F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}