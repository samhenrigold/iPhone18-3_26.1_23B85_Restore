void sub_1D8E1662C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getkSymptomDiagnosticReplySuccess()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  v9 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplySuccessSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v7[3] = dlsym(v1, "kSymptomDiagnosticReplySuccess");
    getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SymptomDiagnosticReporterLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkSymptomDiagnosticReplySuccessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplySuccess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t IMGetMemoryStatistics(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 | a2)
  {
    memset(v11, 0, 40);
    task_info_outCnt[0] = 10;
    if (task_info(*MEMORY[0x1E69E9A60], 0x12u, v11, task_info_outCnt))
    {
      return 0;
    }

    if (a1)
    {
      *a1 = *(v11 + 4);
    }

    if (a2)
    {
      *a2 = *(v11 + 12);
    }
  }

  if (a3 | a4)
  {
    *task_info_outCnt = 0;
    v8 = MEMORY[0x1DA72BF30]();
    host_info_outCnt = 15;
    host_page_size(v8, task_info_outCnt);
    memset(v11, 0, 60);
    if (host_statistics(v8, 2, v11, &host_info_outCnt))
    {
      return 0;
    }

    v10 = *task_info_outCnt;
    if (a3)
    {
      *a3 = *task_info_outCnt * LODWORD(v11[0]);
    }

    if (a4)
    {
      *a4 = v10 * LODWORD(v11[0]) + ((DWORD2(v11[0]) + DWORD1(v11[0]) + HIDWORD(v11[0])) * v10);
    }
  }

  return 1;
}

BOOL MT_isDispatchSourceDataVfsConstrainedDisk(uint64_t a1)
{
  v1 = a1 == 0x2000;
  if (a1 == 4096)
  {
    v1 = 1;
  }

  return a1 == 4 || v1;
}

void sub_1D8E1F4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t mt_randomPersistID()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v3[0] = 0;
  v3[1] = 0;
  [v0 getUUIDBytes:v3];
  v1 = v3[0];

  return v1;
}

void sub_1D8E20534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E21E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D8E22848(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8E22868(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceCapabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceCapabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HexColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HexColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D8E22B28(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D917711C();
}

uint64_t sub_1D8E22B94()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E22C08(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E22CC4(uint64_t a1, id *a2)
{
  v3 = sub_1D91781FC();
  *a2 = 0;
  return v3 & 1;
}

void sub_1D8E22D44(uint64_t *a2@<X8>)
{
  sub_1D917820C();
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  *a2 = v3;
}

uint64_t sub_1D8E22D88(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D917711C();
}

uint64_t sub_1D8E22E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8E22E94(uint64_t a1)
{
  sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError, &unk_1D918886C);

  return sub_1D9176A4C();
}

uint64_t sub_1D8E22F00(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError, &unk_1D918886C);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D8E22F6C(void *a1, uint64_t a2)
{
  v4 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError, &unk_1D918886C);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D8E23020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError, &unk_1D918886C);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D8E2309C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D9179DBC();
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E231B8(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB4008, type metadata accessor for AVMetadataKey, &unk_1D91887B0);
  v3 = sub_1D8E22E3C(&qword_1ECAB4010, type metadata accessor for AVMetadataKey, &unk_1D9188750);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23274(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB3E68, type metadata accessor for Name, &unk_1D9188164);
  v3 = sub_1D8E22E3C(&qword_1ECAB3E70, type metadata accessor for Name, &unk_1D9188104);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23330(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey, &unk_1D91881F4);
  v3 = sub_1D8E22E3C(&qword_1ECAB3EA0, type metadata accessor for FileAttributeKey, &unk_1D9187AB8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E2347C(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB3E88, type metadata accessor for URLResourceKey, &unk_1D9187C2C);
  v3 = sub_1D8E22E3C(&unk_1ECAB3E90, type metadata accessor for URLResourceKey, &unk_1D9187BCC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23610(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB01C0, type metadata accessor for AMSError, &unk_1D918862C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D8E2367C(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB01C0, type metadata accessor for AMSError, &unk_1D918862C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D8E236E8(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError, &unk_1D918886C);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D8E23754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError, &unk_1D918886C);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D8E237D8(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB3E78, type metadata accessor for PFAnalyticsEventName, &unk_1D918800C);
  v3 = sub_1D8E22E3C(&qword_1ECAB3E80, type metadata accessor for PFAnalyticsEventName, &unk_1D9187FAC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23894(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D917711C();
}

uint64_t sub_1D8E23ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9179DBC();
  swift_getWitnessTable();
  sub_1D917712C();
  return sub_1D9179E1C();
}

void sub_1D8E23B40(uint64_t *a2@<X8>)
{
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  *a2 = v3;
}

uint64_t sub_1D8E23B88(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB4018, type metadata accessor for NSKeyValueChangeKey, &unk_1D918897C);
  v3 = sub_1D8E22E3C(&qword_1ECAB4020, type metadata accessor for NSKeyValueChangeKey, &unk_1D918847C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23C44()
{
  v0 = sub_1D917820C();
  v1 = MEMORY[0x1DA729970](v0);

  return v1;
}

double sub_1D8E23C80(uint64_t a1)
{
  sub_1D917820C();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8E23CD4(uint64_t a1)
{
  sub_1D917820C();
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v1 = sub_1D9179E1C();

  return v1;
}

uint64_t sub_1D8E23D48(void *a1, uint64_t *a2)
{
  v2 = sub_1D917820C();
  v4 = v3;
  if (v2 == sub_1D917820C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D8E23FB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8E23FD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_1D8E2439C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t dispatch thunk of CategoriesSyncThresholdProviding.getCategoriesSyncThreshold()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8E24548;

  return v7(a1, a2);
}

uint64_t sub_1D8E24548(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t CategoriesSyncUtil.CategoriesSyncError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E246CC()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E24714(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v2);
  return sub_1D9179E1C();
}

uint64_t CategoriesSyncUtil.__allocating_init(categoriesSyncThresholdProvider:categoriesProvider:categoryIngester:lastCategoriesSyncDate:queue:ctx:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_1D9176E3C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession) = 0;
  sub_1D8CFD9D8(a1, v17 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider);
  sub_1D8CFD9D8(a2, v17 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider);
  *(v17 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoryIngester) = a3;
  sub_1D8CF6B1C(a4, v12);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    sub_1D9176CEC();
    sub_1D8D08A50(a4, &qword_1ECAB75C0, &unk_1D9188A50);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (v18(v12, 1, v13) != 1)
    {
      sub_1D8D08A50(v12, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    sub_1D8D08A50(a4, &qword_1ECAB75C0, &unk_1D9188A50);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v14 + 32))(v16, v12, v13);
  }

  (*(v14 + 32))(v17 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate, v16, v13);
  v19 = v22;
  *(v17 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue) = v21;
  *(v17 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx) = v19;
  return v17;
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

uint64_t CategoriesSyncUtil.syncCategories(forced:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D9177E9C();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1ECAB0BF8);
  v15 = sub_1D917741C();
  v16 = sub_1D9178D1C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v13;
    v18 = v10;
    v19 = v4;
    v20 = v8;
    v21 = v11;
    v22 = a2;
    v23 = a3;
    v24 = a1;
    v25 = v17;
    *v17 = 0;
    _os_log_impl(&dword_1D8CEC000, v15, v16, "[Categories Sync] Starting to sync categories.", v17, 2u);
    v26 = v25;
    a1 = v24;
    a3 = v23;
    a2 = v22;
    v11 = v21;
    v8 = v20;
    v4 = v19;
    v10 = v18;
    v13 = v30;
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = a1 & 1;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  aBlock[4] = sub_1D8DBE164;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor;
  v28 = _Block_copy(aBlock);

  sub_1D8D1F93C(a2, a3);
  sub_1D9177E4C();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBB20(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v28);
  _Block_release(v28);
  (*(v32 + 8))(v10, v8);
  (*(v11 + 8))(v13, v31);
}

uint64_t sub_1D8E24E30@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0BF8);
  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "[Categories Sync] Preparing Media API request.", v5, 2u);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A8, &qword_1D9188C20);
  swift_allocObject();

  result = sub_1D9177A5C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8E24F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx);
  v6 = *(a2 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_1D8E25FF8;
  v9[4] = v8;
  v9[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B0, &qword_1D9188C28);
  swift_allocObject();

  v10 = v5;
  v11 = v6;
  result = sub_1D9177A5C();
  *a3 = result;
  return result;
}

void sub_1D8E2507C(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1ECAB0BF8);
  v8 = sub_1D917741C();
  v9 = sub_1D9178D1C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "[Categories Sync] Successfully synced categories.", v10, 2u);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  v11 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_1D9176E0C();
  v12 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  (*(v4 + 8))(v6, v3);
  [v11 setObject:v12 forKey:@"kMTLastCategoriesSyncDateDefaultKey"];

  if (a2)
  {
    a2(1, 0);
  }
}

uint64_t sub_1D8E25278()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8E252E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = (a3 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider);
  v8 = *(a3 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider + 24);
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8D9F2C8;
  *(v10 + 24) = v6;
  v11 = *(v9 + 8);

  v11(sub_1D8E2605C, v10, v8, v9);
}

void sub_1D8E253DC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  if (*(a1 + 8) == 1)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = v3;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();
    sub_1D8D99898(v3, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[Categories Sync] Failed to fetch categories with error: %@", v8, 0xCu);
      sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v11 = v3;
    v12 = 1;
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    if (sub_1D917935C() >= 1)
    {
      goto LABEL_9;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_9:
    v11 = v3;
    v12 = 0;
LABEL_10:
    a2(v11, v12);
    return;
  }

  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0BF8);
  v14 = sub_1D917741C();
  v15 = sub_1D9178CFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[Categories Sync] Server response is missing categories.", v16, 2u);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  sub_1D8DBFC08();
  v17 = swift_allocError();
  *v18 = 2;
  a2(v17, 1);
}

uint64_t sub_1D8E256A4(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a2;
    if (a2 >> 62)
    {
      result = sub_1D917935C();
      v5 = a2;
      v6 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        v7 = 0;
        v8 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx;
        v21 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoryIngester;
        v22 = v5 & 0xC000000000000001;
        v9 = v5;
        do
        {
          if (v22)
          {
            v14 = MEMORY[0x1DA72AA90](v7);
          }

          else
          {
            v14 = *(v5 + 8 * v7 + 32);
          }

          v15 = *(v14 + 16);
          v16 = *(v14 + 24);
          v17 = *(v4 + v8);
          v18 = sub_1D8FE6808(v15, v16);
          NSManagedObjectContext.unsafeCategory(forAdamID:)(v18);
          v20 = v19;

          if (v20)
          {
            v12 = [swift_unknownObjectRetain() unsafeIngestCategoryWithCategory:v20 feedCategory:v14 ctx:*(v4 + v8)];

            swift_unknownObjectRelease();
          }

          else
          {
            v10 = *(v4 + v21);
            v11 = *(v4 + v8);
            swift_unknownObjectRetain();
            v12 = v11;
            v13 = [v10 unsafeIngestNewCategoryWithCtx:v12 feedCategory:v14];
            swift_unknownObjectRelease();
          }

          ++v7;

          v5 = v9;
        }

        while (v6 != v7);
      }
    }

    [*(v4 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx) saveInCurrentBlock];
  }

  return result;
}

uint64_t CategoriesSyncUtil.deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate;
  v2 = sub_1D9176E3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t CategoriesSyncUtil.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate;
  v2 = sub_1D9176E3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
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

void sub_1D8E25AB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v15[4] = sub_1D8E2600C;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_39;
  v13 = _Block_copy(v15);

  v14 = a6;

  [a3 performBlock_];
  _Block_release(v13);
}

uint64_t sub_1D8E25BC4(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v12 = *(v20 - 8);
  v13 = MEMORY[0x1EEE9AC00](v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  aBlock[4] = sub_1D8E2601C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_45;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBB20(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);
}

uint64_t sub_1D8E25EA4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1D8E25EF4()
{
  result = qword_1ECAB4160;
  if (!qword_1ECAB4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4160);
  }

  return result;
}

uint64_t sub_1D8E2601C()
{
  v1 = *(v0 + 16);
  v3 = 0;
  return v1(&v3);
}

uint64_t sub_1D8E26074(uint64_t a1, uint64_t a2)
{
  v3 = v2[21];
  swift_willThrow();

  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v4 = v2[22];
  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0BF8);
  v6 = v4;
  v7 = sub_1D917741C();
  v8 = sub_1D9178CFC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = sub_1D9176A5C();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "[Categories Sync] Could not get the threshold value from bag with error: %@", v9, 0xCu);
    sub_1D8E262AC(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  swift_willThrow();
  v12 = v2[1];

  return v12();
}

_BYTE **sub_1D8E26228(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1D8E26238(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_1D8E262AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MAPICategoriesProvider.__allocating_init(mediaRequestController:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D8D6BCE0(a1, v2 + 16);
  return v2;
}

uint64_t MAPICategoriesProvider.getAllCategories(completion:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v39 = &v29 - v3;
  v5 = type metadata accessor for MediaRequest.Params(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9176C2C();
  v37 = *(*(v9 - 8) + 56);
  v37(v4, 1, 1, v9);
  v10 = MEMORY[0x1E69E7CC0];
  v38 = sub_1D8D94EFC(MEMORY[0x1E69E7CC0], &qword_1ECAB42B8, &qword_1D9188E10, sub_1D8F06430);
  v36 = sub_1D8D94EFC(v10, &qword_1ECAB42B8, &qword_1D9188E10, sub_1D8F06430);
  v35 = sub_1D8D951E0(v10);
  v34 = sub_1D8D95090(v10, &qword_1ECAB41F0, &qword_1D9188D38, sub_1D8F86E60);
  v33 = sub_1D8D94EFC(v10, &qword_1ECAB42D0, &unk_1D9188E30, sub_1D8F06554);
  v32 = sub_1D8D94EFC(v10, &qword_1ECAB42D0, &unk_1D9188E30, sub_1D8F06554);
  v31 = sub_1D8D953C4(v10);
  v30 = sub_1D8D94EFC(v10, &qword_1ECAB43D8, &qword_1D9188F40, sub_1D8F06554);
  v29 = sub_1D8D94EFC(v10, &qword_1ECAB42A8, &qword_1D9188E00, sub_1D8F0660C);
  v11 = sub_1D8D94EFC(v10, &qword_1ECAB41E8, &qword_1D9188D30, sub_1D8F06554);
  *(v8 + 41) = 263;
  v8[43] = 5;
  v8[152] = 1;
  v8[201] = 1;
  v12 = v6[30];
  v37(&v8[v12], 1, 1, v9);
  v13 = &v8[v6[31]];
  v14 = &v8[v6[33]];
  v15 = v6[36];
  v16 = &v8[v6[35]];
  v17 = &v8[v6[37]];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 10) = 83952900;
  v18 = v36;
  *(v8 + 6) = v38;
  *(v8 + 7) = v18;
  *(v8 + 8) = v35;
  *(v8 + 9) = &unk_1F545D100;
  v19 = v33;
  *(v8 + 10) = v34;
  *(v8 + 11) = v19;
  v20 = v31;
  *(v8 + 12) = v32;
  *(v8 + 13) = v20;
  v21 = v30;
  *(v8 + 14) = v10;
  *(v8 + 15) = v21;
  *(v8 + 16) = v10;
  *(v8 + 17) = v10;
  *(v8 + 18) = v10;
  v8[152] = 1;
  *(v8 + 20) = 300;
  v8[168] = 0;
  *(v8 + 22) = v29;
  *(v8 + 23) = v11;
  *(v8 + 24) = 0;
  *(v8 + 100) = 257;
  v8[202] = 0;
  sub_1D8E26828(v39, &v8[v12]);
  *v13 = 0;
  *(v13 + 1) = 0;
  v8[v6[32]] = 0;
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v8[v6[34]] = v10;
  *v16 = 0;
  *(v16 + 1) = 0;
  v8[v15] = 2;
  *v17 = 0;
  *(v17 + 1) = 0;
  v22 = v40[5];
  v23 = v40[6];
  __swift_project_boxed_opaque_existential_1(v40 + 2, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41C0, &qword_1D9188C98);
  v25 = swift_allocObject();
  v26 = v42;
  *(v25 + 16) = v41;
  *(v25 + 24) = v26;
  v27 = sub_1D8E268DC();

  MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(v8, 0, 0, v24, sub_1D8E26898, v25, v22, v24, v23, v27);

  return sub_1D8D90BEC(v8);
}

uint64_t MAPICategoriesProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E26828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E26898(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = v5;
  return v4(&v7, a2);
}

unint64_t sub_1D8E268DC()
{
  result = qword_1ECAB1D00;
  if (!qword_1ECAB1D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB41C0, &qword_1D9188C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D00);
  }

  return result;
}

unint64_t sub_1D8E2696C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, &v13, &qword_1ECAB42E8, &qword_1D9193650);
      v5 = v13;
      v6 = v14;
      result = sub_1D8D33C70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D8D65618(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41C8, &qword_1D9188D08);
    v3 = sub_1D91797AC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1D8DA04B0(v7, v8);
      result = sub_1D8D33C70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43D0, &unk_1D91A6CB0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *i;
      *&v19 = *(i - 6);
      *(&v19 + 1) = v5;
      *v20 = v6;
      *&v20[8] = v7;
      *&v20[16] = v8;
      v20[24] = *(i - 8);
      v10 = v20[24];
      v11 = v19;
      sub_1D8D092C0(v5, v6, v7, v8, v10);

      result = sub_1D8F0671C(&v19);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 48 * result);
      v15 = *v20;
      *v14 = v19;
      v14[1] = v15;
      *(v14 + 25) = *&v20[9];
      *(v3[7] + 8 * result) = v9;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41F8, &qword_1D9188D40);
    v3 = sub_1D91797AC();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = *(v4 + 1);

      result = sub_1D8F067D4(v5 | (v6 << 8));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 2 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4390, &unk_1D9188EF0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D8F06994(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26F44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1D8D33C70(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6820, &qword_1D9193770);
    v3 = sub_1D91797AC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D8D33C70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E271B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42B0, &qword_1D9188E08);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D8F06C58(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27344(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41D8, &unk_1D91A6B60);
  v3 = sub_1D91797AC();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1D8D490F4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1D8D490F4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D8E27454(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1D91797AC();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1D8D490F4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_1D8D490F4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D8E27554(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4288, &unk_1D91A6C10);
  v3 = sub_1D91797AC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D8F06F60(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D8F06F60(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8E2765C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4280, &unk_1D91A6BF0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1D8F06F8C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4278, qword_1D9188DC0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1D8F06F8C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E2784C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41D0, &unk_1D9188D10);
    v3 = sub_1D91797AC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1D8D752C4(v7, v8);
      result = sub_1D8F86E60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27964(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_1D8D33C70(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D8E27A78(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4258, &qword_1D9188DA0);
  v3 = sub_1D91797AC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D8D1AC44(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D8D1AC44(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8E27B80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 80);
      v22 = *(v4 + 64);
      v23 = v6;
      v7 = *(v4 + 96);
      v24 = v7;
      v8 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v8;
      v9 = *(v4 + 48);
      v20 = *(v4 + 32);
      v21 = v9;
      v27 = v20;
      v28 = v9;
      v29[0] = v22;
      *(v29 + 11) = *(v4 + 75);
      v25 = v19[0];
      v26 = v8;
      sub_1D8D088B4(v19, v18, &qword_1ECAB4238, &qword_1D9188D80);
      result = sub_1D8F071DC(&v25);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 96 * result);
      v13 = v28;
      v12[2] = v27;
      v12[3] = v13;
      v12[4] = v29[0];
      *(v12 + 75) = *(v29 + 11);
      v14 = v26;
      *v12 = v25;
      v12[1] = v14;
      *(v3[7] + 8 * result) = v7;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 104;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4220, &qword_1D9188D68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4228, &unk_1D9188D70);
    v7 = sub_1D91797AC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v9, v5, &qword_1ECAB4220, &qword_1D9188D68);
      result = sub_1D8D93AB0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9176EAC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D8E27EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4218, &qword_1D9188D60);
  v3 = sub_1D91797AC();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1D8F0726C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1D8F0726C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8E27FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4210, &unk_1D91A6BC0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_1D8D33C70(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t CategoryModel.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CategoryModel.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryModel(0) + 28));

  return v1;
}

uint64_t CategoryModel.artworkPrimaryColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryModel(0) + 40));

  return v1;
}

uint64_t CategoryModel.artworkTemplateURL.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryModel(0) + 44));

  return v1;
}

uint64_t CategoryModel.children.getter()
{
  type metadata accessor for CategoryModel(0);
}

BOOL CategoryModel.interestValueIsFavorited.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43E0, &qword_1D9188F48);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v8 - v2);
  v4 = type metadata accessor for CategoryModel(0);
  sub_1D8D088B4(v0 + *(v4 + 32), v3, &qword_1ECAB43E0, &qword_1D9188F48);
  v5 = type metadata accessor for InterestModel(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1D8D08A50(v3, &qword_1ECAB43E0, &qword_1D9188F48);
    return 0;
  }

  else
  {
    v7 = v3[1];
    sub_1D8E28498(v3);
    return v7 == 1.0;
  }
}

uint64_t sub_1D8E28498(uint64_t a1)
{
  v2 = type metadata accessor for InterestModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CategoryModel.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t CategoryModel.hash(into:)(uint64_t a1)
{
  MEMORY[0x1DA72B3C0](*v1);

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t CategoryModel.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](*v0);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E285D4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D8E2861C()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](*v0);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E28670(uint64_t a1)
{
  MEMORY[0x1DA72B3C0](*v1);

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8E286B4(uint64_t a1)
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](*v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E28704@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43E0, &qword_1D9188F48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v77[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v77[-v15];
  v17 = [a1 url];
  if (v17)
  {
    v18 = v17;
    sub_1D917820C();

    sub_1D9176BFC();
  }

  else
  {
    v19 = sub_1D9176C2C();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = [a1 interest];
  v21 = &off_1E856D000;
  if (v20)
  {
    v22 = v20;
    v23 = [v20 adamID];
    [v22 interestValue];
    v25 = v24;
    v26 = [v22 lastUpdatedDate];
    v27 = type metadata accessor for InterestModel(0);
    sub_1D9176DFC();

    *v9 = v23;
    v9[1] = v25;
    v28 = *(*(v27 - 8) + 56);
    v29 = v27;
    v21 = &off_1E856D000;
    v28(v9, 0, 1, v29);
  }

  else
  {
    v30 = type metadata accessor for InterestModel(0);
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  }

  v89 = [a1 v21[229]];
  v31 = [a1 name];
  v32 = sub_1D917820C();
  v87 = v33;
  v88 = v32;

  sub_1D8D088B4(v16, v12, &unk_1ECAB5910, &qword_1D9188C90);
  v34 = [a1 color];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1D917820C();
    v85 = v37;
    v86 = v36;
  }

  else
  {
    v85 = 0;
    v86 = 0;
  }

  sub_1D8D088B4(v9, v6, &qword_1ECAB43E0, &qword_1D9188F48);
  v84 = MTCategory.followedShowsCount.getter();
  v38 = [a1 artworkPrimaryColor];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1D917820C();
    v82 = v41;
    v83 = v40;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  v42 = [a1 artworkTemplateURL];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1D917820C();
    v80 = v45;
    v81 = v44;
  }

  else
  {
    v80 = 0;
    v81 = 0;
  }

  v90 = v6;
  v46 = [a1 artworkHeightNumber];
  v47 = v46;
  v48 = 0;
  v49 = 0;
  if (v46)
  {
    [v46 doubleValue];
    v49 = v50;
  }

  v51 = [a1 artworkWidthNumber];
  v52 = v51;
  if (v51)
  {
    [v51 doubleValue];
    v48 = v53;
  }

  v54 = [a1 parent];
  v55 = v54;
  if (v54)
  {
    v79 = [v54 v21[229]];
  }

  else
  {
    v79 = 0;
  }

  v78 = v55 == 0;
  v56 = v52 == 0;
  v57 = v47 == 0;
  v58 = [a1 children];
  type metadata accessor for MTCategory();
  sub_1D8E29110(&qword_1ECAB43E8, type metadata accessor for MTCategory, MEMORY[0x1E69E81B8]);
  v59 = sub_1D9178A9C();

  sub_1D8E28D4C(v59);
  v61 = v60;

  v62 = sub_1D8FC0E84(v61);

  sub_1D8D08A50(v9, &qword_1ECAB43E0, &qword_1D9188F48);
  sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
  v63 = v88;
  *a2 = v89;
  a2[1] = v63;
  a2[2] = v87;
  v64 = type metadata accessor for CategoryModel(0);
  sub_1D8D6734C(v12, a2 + v64[6], &unk_1ECAB5910, &qword_1D9188C90);
  v65 = (a2 + v64[7]);
  v66 = v85;
  *v65 = v86;
  v65[1] = v66;
  result = sub_1D8D6734C(v90, a2 + v64[8], &qword_1ECAB43E0, &qword_1D9188F48);
  v68 = v83;
  *(a2 + v64[9]) = v84;
  v69 = (a2 + v64[10]);
  v70 = v81;
  v71 = v82;
  *v69 = v68;
  v69[1] = v71;
  v72 = (a2 + v64[11]);
  *v72 = v70;
  v73 = v79;
  v72[1] = v80;
  v74 = a2 + v64[12];
  *v74 = v49;
  v74[8] = v57;
  v75 = a2 + v64[13];
  *v75 = v48;
  v75[8] = v56;
  v76 = a2 + v64[14];
  *v76 = v73;
  v76[8] = v78;
  *(a2 + v64[15]) = v62;
  return result;
}

void sub_1D8E28D4C(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D917935C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D8E31320(0, v2 & ~(v2 >> 63), 0);
    v32 = v37;
    if (v31)
    {
      v3 = sub_1D917930C();
    }

    else
    {
      v3 = sub_1D91792DC();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1D9108F18(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 adamID];

        v15 = v32;
        v37 = v32;
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D8E31320((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1D917932C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43F0, &qword_1D9189048);
          v6 = sub_1D9178AFC();
          sub_1D91793AC();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_1D8D9B144(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_1D8D9B144(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_1D8D9B144(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D8E29110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void ArtworkModel.init(from:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CategoryModel(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v69 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v69 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v69 - v14;
  v17 = &a1[*(v16 + 44)];
  v18 = *(v17 + 1);
  if (!v18 || (v19 = &a1[v4[13]], (v19[8] & 1) != 0) || (v20 = &a1[v4[12]], (v20[8] & 1) != 0) || (v21 = &a1[v4[10]], (v22 = v21[1]) == 0))
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917744C();
    __swift_project_value_buffer(v28, qword_1ECAB0BF8);
    sub_1D8E2979C(a1, v15);
    sub_1D8E2979C(a1, v12);
    sub_1D8E2979C(a1, v9);
    sub_1D8E2979C(a1, v6);
    v29 = sub_1D917741C();
    v30 = sub_1D9178CFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v70 = v30;
      v32 = v31;
      v71 = swift_slowAlloc();
      v73 = v71;
      *v32 = 136315906;
      v33 = &v15[v4[11]];
      v34 = *(v33 + 1);
      *&v74[0] = *v33;
      *(&v74[0] + 1) = v34;

      v69[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v35 = sub_1D917826C();
      v72 = v6;
      v37 = v36;
      sub_1D8E29800(v15);
      v38 = sub_1D8CFA924(v35, v37, &v73);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      v39 = &v12[v4[13]];
      v40 = *v39;
      LOBYTE(v39) = v39[8];
      *&v74[0] = v40;
      BYTE8(v74[0]) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
      v41 = sub_1D917826C();
      v43 = v42;
      sub_1D8E29800(v12);
      v44 = sub_1D8CFA924(v41, v43, &v73);

      *(v32 + 14) = v44;
      *(v32 + 22) = 2080;
      v45 = &v9[v4[12]];
      v46 = *v45;
      LOBYTE(v45) = v45[8];
      *&v74[0] = v46;
      BYTE8(v74[0]) = v45;
      v47 = sub_1D917826C();
      v49 = v48;
      sub_1D8E29800(v9);
      v50 = sub_1D8CFA924(v47, v49, &v73);

      *(v32 + 24) = v50;
      *(v32 + 32) = 2080;
      v51 = v72;
      v52 = &v72[v4[10]];
      v53 = *(v52 + 1);
      *&v74[0] = *v52;
      *(&v74[0] + 1) = v53;

      v54 = sub_1D917826C();
      v56 = v55;
      sub_1D8E29800(v51);
      v57 = sub_1D8CFA924(v54, v56, &v73);

      *(v32 + 34) = v57;
      _os_log_impl(&dword_1D8CEC000, v29, v70, "Failed to create artwork from category model. Template: %s Width: %s Height: %s ArtworkColor: %s", v32, 0x2Au);
      v58 = v71;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v58, -1, -1);
      MEMORY[0x1DA72CB90](v32, -1, -1);

      v59 = a1;
    }

    else
    {

      sub_1D8E29800(a1);
      sub_1D8E29800(v6);
      sub_1D8E29800(v9);
      sub_1D8E29800(v12);
      v59 = v15;
    }

    sub_1D8E29800(v59);
    sub_1D8D39E08(v74);
    v60 = v74[9];
    *(a2 + 128) = v74[8];
    *(a2 + 144) = v60;
    *(a2 + 160) = v74[10];
    v61 = v74[5];
    *(a2 + 64) = v74[4];
    *(a2 + 80) = v61;
    v62 = v74[7];
    *(a2 + 96) = v74[6];
    *(a2 + 112) = v62;
    v63 = v74[1];
    *a2 = v74[0];
    *(a2 + 16) = v63;
    v64 = v74[3];
    *(a2 + 32) = v74[2];
    *(a2 + 48) = v64;
  }

  else
  {
    v72 = v6;
    v23 = *v17;
    v24 = *v19;
    v25 = *v20;
    v26 = *v21;

    v27 = sub_1D8D3E514(v26, v22);
    v65 = v27;
    if (qword_1EDCD78A0 != -1)
    {
      swift_once();
    }

    v66 = word_1EDCD78A8;
    v67 = HIBYTE(word_1EDCD78A8);
    if (qword_1EDCD7890 != -1)
    {
      swift_once();
    }

    v68 = byte_1EDCD7898;
    sub_1D8E29800(a1);
    *a2 = v23;
    *(a2 + 8) = v18;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = -1;
    *(a2 + 40) = v24;
    *(a2 + 48) = v25;
    *(a2 + 56) = v65;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = -1;
    *(a2 + 88) = 0;
    *(a2 + 96) = -1;
    *(a2 + 104) = 0;
    *(a2 + 112) = -1;
    *(a2 + 120) = 0;
    *(a2 + 128) = 1279;
    *(a2 + 130) = v66;
    *(a2 + 131) = v67;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = v68;
    *(a2 + 153) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;

    nullsub_1();
  }
}

uint64_t sub_1D8E2979C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E29800(uint64_t a1)
{
  v2 = type metadata accessor for CategoryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8E29884(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1D8CFA924(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

char *sub_1D8E298E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43F8, &qword_1D91A6660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t CategoryObserverProvider.init(ctx:)(void *a1)
{
  v2 = sub_1D8D4A624(a1);

  return v2;
}

uint64_t sub_1D8E29A1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MTCategory();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    sub_1D8E28704(v5, a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for CategoryModel(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

uint64_t sub_1D8E29ACC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D8E28704(a1, a2);
  v3 = type metadata accessor for CategoryModel(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_1D8E29B44(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 0;
  }

  else
  {
    return (sub_1D9179ACC() ^ 1) & 1;
  }
}

uint64_t CategoryObserverProvider.deinit()
{

  return v0;
}

uint64_t CategoryObserverProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1D8E29CA4()
{
  v1 = sub_1D9176A7C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 chapters];
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v6;
  if ([v6 count] < 1)
  {
    goto LABEL_27;
  }

  v56 = v2;
  v8 = [v0 priceType];
  if (!v8 || (v9 = v8, sub_1D917820C(), v9, v10 = sub_1D917980C(), , v10 > 3))
  {
    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v42 = sub_1D917744C();
    __swift_project_value_buffer(v42, qword_1ECAB0C60);
    v43 = v0;
    v44 = sub_1D917741C();
    v45 = sub_1D9178CFC();

    if (!os_log_type_enabled(v44, v45))
    {

      return MEMORY[0x1E69E7CC0];
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v106 = v47;
    *v46 = 141558275;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    v48 = v43;
    v49 = [v48 description];
    v50 = sub_1D917820C();
    v52 = v51;

    v53 = sub_1D8CFA924(v50, v52, &v106);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_1D8CEC000, v44, v45, "Unable to determine the price type for the episode %{private,mask.hash}s.", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1DA72CB90](v47, -1, -1);
    MEMORY[0x1DA72CB90](v46, -1, -1);

LABEL_27:
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D9178C9C();
  v11 = sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v123)
  {
    v13 = MEMORY[0x1E69E7CC0];
    *&v12 = 136446210;
    v57 = v12;
    v59 = v1;
    v60 = v5;
    v58 = v7;
    do
    {
      sub_1D8D65618(&v122, v121);
      sub_1D8CFAD1C(v121, &v106);
      type metadata accessor for MTChapter();
      if (swift_dynamicCast())
      {
        v14 = v91;
        LOBYTE(v91) = v10;
        sub_1D8E2DB2C(&v91, &v106);
      }

      else
      {
        if (qword_1ECAB0C58 != -1)
        {
          swift_once();
        }

        v15 = sub_1D917744C();
        __swift_project_value_buffer(v15, qword_1ECAB0C60);
        sub_1D8CFAD1C(v121, &v91);
        v16 = sub_1D917741C();
        v17 = sub_1D9178D0C();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = v10;
          v20 = swift_slowAlloc();
          *&v106 = v20;
          *v18 = v57;
          __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
          *&v76 = swift_getDynamicType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4450, &qword_1D91891C0);
          v21 = sub_1D917826C();
          v22 = v11;
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_1Tm(&v91);
          v25 = sub_1D8CFA924(v21, v24, &v106);
          v11 = v22;

          *(v18 + 4) = v25;
          _os_log_impl(&dword_1D8CEC000, v16, v17, "Unexpected type %{public}s found in episode's chapters list.", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
          v26 = v20;
          v10 = v19;
          MEMORY[0x1DA72CB90](v26, -1, -1);
          v27 = v18;
          v7 = v58;
          v1 = v59;
          v5 = v60;
          MEMORY[0x1DA72CB90](v27, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v91);
        }

        sub_1D8E2A4D0(&v106);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      v103 = v118;
      v104 = v119;
      v105 = v120;
      v99 = v114;
      v100 = v115;
      v101 = v116;
      v102 = v117;
      v95 = v110;
      v96 = v111;
      v97 = v112;
      v98 = v113;
      v91 = v106;
      v92 = v107;
      v93 = v108;
      v94 = v109;
      if (sub_1D8D2E02C(&v91) == 1)
      {
        v88 = v118;
        v89 = v119;
        v90 = v120;
        v84 = v114;
        v85 = v115;
        v86 = v116;
        v87 = v117;
        v80 = v110;
        v81 = v111;
        v82 = v112;
        v83 = v113;
        v76 = v106;
        v77 = v107;
        v78 = v108;
        v79 = v109;
        sub_1D8E2A4F8(&v76);
      }

      else
      {
        v88 = v118;
        v89 = v119;
        v90 = v120;
        v84 = v114;
        v85 = v115;
        v86 = v116;
        v87 = v117;
        v80 = v110;
        v81 = v111;
        v82 = v112;
        v83 = v113;
        v76 = v106;
        v77 = v107;
        v78 = v108;
        v79 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1D8ECC5F4(0, *(v13 + 2) + 1, 1, v13);
        }

        v29 = *(v13 + 2);
        v28 = *(v13 + 3);
        if (v29 >= v28 >> 1)
        {
          v13 = sub_1D8ECC5F4((v28 > 1), v29 + 1, 1, v13);
        }

        v65 = v80;
        v66 = v81;
        v63 = v78;
        v64 = v79;
        v69 = v84;
        v70 = v85;
        v67 = v82;
        v68 = v83;
        v74 = v89;
        v75 = v90;
        v72 = v87;
        v73 = v88;
        v71 = v86;
        v61 = v76;
        v62 = v77;
        *(v13 + 2) = v29 + 1;
        v30 = &v13[240 * v29];
        v31 = v61;
        v32 = v63;
        *(v30 + 3) = v62;
        *(v30 + 4) = v32;
        *(v30 + 2) = v31;
        v33 = v64;
        v34 = v65;
        v35 = v67;
        *(v30 + 7) = v66;
        *(v30 + 8) = v35;
        *(v30 + 5) = v33;
        *(v30 + 6) = v34;
        v36 = v68;
        v37 = v69;
        v38 = v71;
        *(v30 + 11) = v70;
        *(v30 + 12) = v38;
        *(v30 + 9) = v36;
        *(v30 + 10) = v37;
        v39 = v72;
        v40 = v73;
        v41 = v75;
        *(v30 + 15) = v74;
        *(v30 + 16) = v41;
        *(v30 + 13) = v39;
        *(v30 + 14) = v40;
      }

      sub_1D91791DC();
    }

    while (v123);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  (*(v56 + 8))(v5, v1);

  return v13;
}

double sub_1D8E2A4D0(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D8E2A4F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4448, &qword_1D91891B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8E2A560(char *a1, unint64_t a2)
{
  v3 = *a1;
  if (a2 >> 62)
  {
    v4 = sub_1D917935C();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = 0;
  v6 = a2 & 0xC000000000000001;
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  v8 = a2 + 32;
  while (v6)
  {
    v9 = MEMORY[0x1DA72AA90](v5, a2);
    v10 = __OFADD__(v5++, 1);
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = *(*(v9 + 48) + 48);
    v12 = *(v11 + 16);
    v13 = (v11 + 32);

    while (v12)
    {
      if (*&aStdq_1[8 * *v13] == *&aStdq_1[8 * v3])
      {
        goto LABEL_17;
      }

      v14 = sub_1D9179ACC();
      swift_bridgeObjectRelease_n();
      ++v13;
      --v12;
      if (v14)
      {
        goto LABEL_18;
      }
    }

    v7 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = a2 & 0xC000000000000001;
    v8 = a2 + 32;
    if (v5 == v4)
    {
      return;
    }
  }

  if (v5 >= *(v7 + 16))
  {
    __break(1u);
    return;
  }

  v9 = *(v8 + 8 * v5);

  v10 = __OFADD__(v5++, 1);
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
}

PodcastsFoundation::Chapter::ChapterType_optional __swiftcall Chapter.ChapterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Chapter.ChapterType.rawValue.getter()
{
  if (*v0)
  {
    return 0x746E656C6973;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1D8E2A784(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656C6973;
  }

  else
  {
    v3 = 0x7865646E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656C6973;
  }

  else
  {
    v5 = 0x7865646E69;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

void sub_1D8E2A824(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D8E2A884(uint64_t *a1@<X8>)
{
  v2 = 0x7865646E69;
  if (*v1)
  {
    v2 = 0x746E656C6973;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D8E2A8BC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8E2A938(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8E2A9A0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t Chapter.Artwork.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v10[8] = v1[8];
  v10[9] = v3;
  v10[10] = v1[10];
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v10[7] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  v7 = v1[3];
  v10[2] = v1[2];
  v10[3] = v7;
  v8 = sub_1D8E2BAC8(v10);
  sub_1D8DADC50(v10);
  if (v8 == 1)
  {
    MEMORY[0x1DA72B390](1);
    return ArtworkModel.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return sub_1D9176C9C();
  }
}

uint64_t Chapter.Artwork.hashValue.getter()
{
  sub_1D9179DBC();
  v1 = v0[9];
  v9[8] = v0[8];
  v9[9] = v1;
  v9[10] = v0[10];
  v2 = v0[5];
  v9[4] = v0[4];
  v9[5] = v2;
  v3 = v0[7];
  v9[6] = v0[6];
  v9[7] = v3;
  v4 = v0[1];
  v9[0] = *v0;
  v9[1] = v4;
  v5 = v0[3];
  v9[2] = v0[2];
  v9[3] = v5;
  v6 = sub_1D8E2BAC8(v9);
  sub_1D8DADC50(v9);
  if (v6 == 1)
  {
    MEMORY[0x1DA72B390](1);
    ArtworkModel.hash(into:)(v8);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9176C9C();
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8E2ACBC()
{
  sub_1D9179DBC();
  v1 = v0[9];
  v9[8] = v0[8];
  v9[9] = v1;
  v9[10] = v0[10];
  v2 = v0[5];
  v9[4] = v0[4];
  v9[5] = v2;
  v3 = v0[7];
  v9[6] = v0[6];
  v9[7] = v3;
  v4 = v0[1];
  v9[0] = *v0;
  v9[1] = v4;
  v5 = v0[3];
  v9[2] = v0[2];
  v9[3] = v5;
  v6 = sub_1D8E2BAC8(v9);
  sub_1D8DADC50(v9);
  if (v6 == 1)
  {
    MEMORY[0x1DA72B390](1);
    ArtworkModel.hash(into:)(v8);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9176C9C();
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8E2ADB8(uint64_t a1)
{
  v3 = v1[9];
  v10[8] = v1[8];
  v10[9] = v3;
  v10[10] = v1[10];
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v10[7] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  v7 = v1[3];
  v10[2] = v1[2];
  v10[3] = v7;
  v8 = sub_1D8E2BAC8(v10);
  sub_1D8DADC50(v10);
  if (v8 == 1)
  {
    MEMORY[0x1DA72B390](1);
    return ArtworkModel.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return sub_1D9176C9C();
  }
}

uint64_t sub_1D8E2AEAC(uint64_t a1)
{
  sub_1D9179DBC();
  v2 = v1[9];
  v10[8] = v1[8];
  v10[9] = v2;
  v10[10] = v1[10];
  v3 = v1[5];
  v10[4] = v1[4];
  v10[5] = v3;
  v4 = v1[7];
  v10[6] = v1[6];
  v10[7] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v10[2] = v1[2];
  v10[3] = v6;
  v7 = sub_1D8E2BAC8(v10);
  sub_1D8DADC50(v10);
  if (v7 == 1)
  {
    MEMORY[0x1DA72B390](1);
    ArtworkModel.hash(into:)(v9);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9176C9C();
  }

  return sub_1D9179E1C();
}

uint64_t Chapter.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Chapter.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Chapter.artwork.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v25 = v1[12];
  v26 = v3;
  v4 = v1[13];
  v27 = v1[14];
  v5 = v1[7];
  v6 = v1[9];
  v21 = v1[8];
  v7 = v21;
  v22 = v6;
  v8 = v1[9];
  v9 = v1[11];
  v23 = v1[10];
  v10 = v23;
  v24 = v9;
  v11 = v1[5];
  v18[0] = v1[4];
  v18[1] = v11;
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  v19 = v1[6];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[14];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1D8E2BAD4(v18, &v17);
}

uint64_t Chapter.duration.getter()
{
  if ((*(v0 + 56) & 1) != 0 || (v1 = *(v0 + 40), v2 = *(v0 + 48), v1 >= v2))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v2 - v1;
  }

  return result;
}

void Chapter.timeRange.getter()
{
  v1 = *(v0 + 40);
  if ((*(v0 + 56) & 1) == 0)
  {
    v2 = *(v0 + 48);
    if (v1 < v2 && v1 > v2)
    {
      __break(1u);
    }
  }
}

double Chapter.init(id:type:title:startTime:endTime:artwork:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, char a7@<W6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *&v23[119] = a8[7];
  *&v23[135] = a8[8];
  *&v23[151] = a8[9];
  *&v23[167] = a8[10];
  *&v23[55] = a8[3];
  *&v23[71] = a8[4];
  *&v23[87] = a8[5];
  *&v23[103] = a8[6];
  *&v23[7] = *a8;
  *&v23[23] = a8[1];
  v10 = *a3;
  *&v23[39] = a8[2];
  if (a7)
  {
    v24 = 1;
  }

  else if (a6 <= a10)
  {
    v24 = 1;
    if (a6 >= a10)
    {
      a6 = 0.0;
    }

    else
    {
      v11 = a10;
      v12 = a6;
      v13 = a1;
      v22 = a2;
      v14 = a4;
      v15 = a9;
      v16 = a5;
      if (qword_1ECAB0C58 != -1)
      {
        swift_once();
      }

      v17 = sub_1D917744C();
      __swift_project_value_buffer(v17, qword_1ECAB0C60);
      v18 = sub_1D917741C();
      v19 = sub_1D9178D0C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 141558787;
        *(v20 + 4) = 1752392040;
        *(v20 + 12) = 2049;
        *(v20 + 14) = v12;
        *(v20 + 22) = 2160;
        *(v20 + 24) = 1752392040;
        *(v20 + 32) = 2049;
        *(v20 + 34) = v11;
        _os_log_impl(&dword_1D8CEC000, v18, v19, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v20, 0x2Au);
        MEMORY[0x1DA72CB90](v20, -1, -1);

        a10 = v11;
        a6 = 0.0;
        a5 = v16;
        a9 = v15;
        a4 = v14;
        a2 = v22;
        a1 = v13;
      }

      else
      {

        a6 = 0.0;
        a5 = v16;
        a9 = v15;
        a4 = v14;
        a2 = v22;
        a1 = v13;
        a10 = v11;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  *(a9 + 40) = a10;
  *(a9 + 185) = *&v23[128];
  *(a9 + 201) = *&v23[144];
  *(a9 + 217) = *&v23[160];
  *(a9 + 121) = *&v23[64];
  *(a9 + 137) = *&v23[80];
  *(a9 + 153) = *&v23[96];
  *(a9 + 169) = *&v23[112];
  *(a9 + 57) = *v23;
  *(a9 + 73) = *&v23[16];
  result = *&v23[32];
  *(a9 + 89) = *&v23[32];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = v24;
  *(a9 + 232) = *&v23[175];
  *(a9 + 105) = *&v23[48];
  return result;
}

uint64_t Chapter.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  sub_1D9179DDC();
  if (v3)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  v7 = 0.0;
  if (v4 != 0.0)
  {
    v7 = v4;
  }

  MEMORY[0x1DA72B3C0](*&v7);
  if (v6)
  {
    sub_1D9179DDC();
  }

  else
  {
    sub_1D9179DDC();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1DA72B3C0](v8);
  }

  v9 = *(v1 + 208);
  v22[8] = *(v1 + 192);
  v22[9] = v9;
  v22[10] = *(v1 + 224);
  v10 = *(v1 + 144);
  v22[4] = *(v1 + 128);
  v22[5] = v10;
  v11 = *(v1 + 176);
  v22[6] = *(v1 + 160);
  v22[7] = v11;
  v12 = *(v1 + 80);
  v22[0] = *(v1 + 64);
  v22[1] = v12;
  v13 = *(v1 + 112);
  v22[2] = *(v1 + 96);
  v22[3] = v13;
  if (sub_1D8E2C184(v22) == 1)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  v15 = *(v1 + 208);
  v21[8] = *(v1 + 192);
  v21[9] = v15;
  v21[10] = *(v1 + 224);
  v16 = *(v1 + 144);
  v21[4] = *(v1 + 128);
  v21[5] = v16;
  v17 = *(v1 + 176);
  v21[6] = *(v1 + 160);
  v21[7] = v17;
  v18 = *(v1 + 80);
  v21[0] = *(v1 + 64);
  v21[1] = v18;
  v19 = *(v1 + 112);
  v21[2] = *(v1 + 96);
  v21[3] = v19;
  v20 = sub_1D8E2BAC8(v21);
  sub_1D8DADC50(v21);
  if (v20 == 1)
  {
    MEMORY[0x1DA72B390](1);
    return ArtworkModel.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return sub_1D9176C9C();
  }
}

uint64_t Chapter.hashValue.getter()
{
  sub_1D9179DBC();
  Chapter.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2B628()
{
  sub_1D9179DBC();
  Chapter.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2B66C(uint64_t a1)
{
  sub_1D9179DBC();
  Chapter.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2B6A8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1D8E2B6E0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void *sub_1D8E2B718(void *__src, uint64_t a2, void *__dst)
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

BOOL _s18PodcastsFoundation7ChapterV7ArtworkO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v70 = a1[8];
  v71 = v3;
  v4 = a1[9];
  v72 = a1[10];
  v5 = a1[3];
  v6 = a1[5];
  v66 = a1[4];
  v67 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v68 = a1[6];
  v69 = v8;
  v9 = a1[1];
  v63[0] = *a1;
  v63[1] = v9;
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v64 = a1[2];
  v65 = v10;
  v13 = a2[7];
  v14 = a2[9];
  v81 = a2[8];
  v82 = v14;
  v15 = a2[9];
  v83 = a2[10];
  v16 = a2[3];
  v17 = a2[5];
  v77 = a2[4];
  v78 = v17;
  v18 = a2[5];
  v19 = a2[7];
  v79 = a2[6];
  v80 = v19;
  v20 = a2[1];
  v73 = *a2;
  v74 = v20;
  v21 = a2[3];
  v23 = *a2;
  v22 = a2[1];
  v75 = a2[2];
  v76 = v21;
  v24 = a1[7];
  v25 = a1[9];
  v84[8] = a1[8];
  v84[9] = v25;
  v26 = a1[3];
  v27 = a1[5];
  v84[4] = a1[4];
  v84[5] = v27;
  v28 = a1[6];
  v84[7] = v24;
  v84[6] = v28;
  v29 = a1[1];
  v84[0] = *a1;
  v84[1] = v29;
  v30 = a1[2];
  v84[3] = v26;
  v84[2] = v30;
  v84[18] = v13;
  v84[19] = v81;
  v31 = a2[10];
  v84[20] = v15;
  v84[21] = v31;
  v84[14] = v16;
  v84[15] = v77;
  v84[16] = v18;
  v84[17] = v79;
  v84[10] = a1[10];
  v84[11] = v23;
  v84[12] = v22;
  v84[13] = v75;
  v85[8] = v70;
  v85[9] = v4;
  v85[10] = a1[10];
  v85[4] = v66;
  v85[5] = v7;
  v85[6] = v68;
  v85[7] = v2;
  v85[0] = v11;
  v85[1] = v12;
  v85[2] = v64;
  v85[3] = v5;
  if (sub_1D8E2BAC8(v85) != 1)
  {
    v41 = sub_1D8DADC50(v85);
    v42 = *v41;
    v43 = v41[1];
    v60 = v81;
    v61 = v82;
    v62 = v83;
    v56 = v77;
    v57 = v78;
    v58 = v79;
    v59 = v80;
    v52 = v73;
    v53 = v74;
    v54 = v75;
    v55 = v76;
    v44 = sub_1D8E2BAC8(&v52);
    v45 = sub_1D8DADC50(&v52);
    if (v44 != 1)
    {
      v46 = *v45;
      v47 = v45[1];
      sub_1D8E2C720(&v73, v51);
      sub_1D8E2C720(v63, v51);
      v40 = sub_1D8FCC138(v42, v43, v46, v47);
      sub_1D8D08A50(v84, &qword_1ECAB4488, &qword_1D9189BC8);
      return v40;
    }

    goto LABEL_5;
  }

  v32 = sub_1D8DADC50(v85);
  v60 = v81;
  v61 = v82;
  v62 = v83;
  v56 = v77;
  v57 = v78;
  v58 = v79;
  v59 = v80;
  v52 = v73;
  v53 = v74;
  v54 = v75;
  v55 = v76;
  v33 = sub_1D8E2BAC8(&v52);
  v34 = sub_1D8DADC50(&v52);
  if (v33 != 1)
  {
LABEL_5:
    sub_1D8E2C720(&v73, &v52);
    sub_1D8E2C720(v63, &v52);
    sub_1D8D08A50(v84, &qword_1ECAB4488, &qword_1D9189BC8);
    return 0;
  }

  v51[7] = v32[7];
  v51[8] = v32[8];
  v51[9] = v32[9];
  v51[10] = v32[10];
  v51[3] = v32[3];
  v51[4] = v32[4];
  v51[5] = v32[5];
  v51[6] = v32[6];
  v51[0] = *v32;
  v51[1] = v32[1];
  v51[2] = v32[2];
  v35 = v34[9];
  v50[8] = v34[8];
  v50[9] = v35;
  v50[10] = v34[10];
  v36 = v34[5];
  v50[4] = v34[4];
  v50[5] = v36;
  v37 = v34[7];
  v50[6] = v34[6];
  v50[7] = v37;
  v38 = v34[1];
  v50[0] = *v34;
  v50[1] = v38;
  v39 = v34[3];
  v50[2] = v34[2];
  v50[3] = v39;
  sub_1D8E2C720(&v73, v49);
  sub_1D8E2C720(v63, v49);
  sub_1D8E2C720(&v73, v49);
  sub_1D8E2C720(v63, v49);
  v40 = _s18PodcastsFoundation12ArtworkModelV2eeoiySbAC_ACtFZ_0(v51, v50);
  sub_1D8D08A50(v84, &qword_1ECAB4488, &qword_1D9189BC8);
  sub_1D8E2C6F0(&v73);
  sub_1D8E2C6F0(v63);
  return v40;
}

uint64_t sub_1D8E2BAD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4458, &qword_1D91891F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s18PodcastsFoundation7ChapterV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 16);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = a1[5];
  v9 = a1[6];
  v102 = *(a1 + 56);
  v11 = *(a1 + 13);
  v141[8] = *(a1 + 12);
  v141[9] = v11;
  v141[10] = *(a1 + 14);
  v12 = *(a1 + 9);
  v141[4] = *(a1 + 8);
  v141[5] = v12;
  v13 = *(a1 + 10);
  v141[7] = *(a1 + 11);
  v141[6] = v13;
  v14 = *(a1 + 5);
  v141[0] = *(a1 + 4);
  v141[1] = v14;
  v15 = *(a1 + 6);
  v141[3] = *(a1 + 7);
  v141[2] = v15;
  v16 = *a2;
  v17 = *(a2 + 1);
  v18 = *(a2 + 16);
  v20 = *(a2 + 3);
  v19 = *(a2 + 4);
  v22 = a2[5];
  v21 = a2[6];
  v23 = *(a2 + 56);
  v24 = *(a2 + 13);
  v142[8] = *(a2 + 12);
  v142[9] = v24;
  v142[10] = *(a2 + 14);
  v25 = *(a2 + 9);
  v142[4] = *(a2 + 8);
  v142[5] = v25;
  v26 = *(a2 + 10);
  v142[7] = *(a2 + 11);
  v142[6] = v26;
  v27 = *(a2 + 5);
  v142[0] = *(a2 + 4);
  v142[1] = v27;
  v28 = *(a2 + 6);
  v142[3] = *(a2 + 7);
  v142[2] = v28;
  if ((v4 != v16 || v5 != v17) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    v29 = 0x746E656C6973;
  }

  else
  {
    v29 = 0x7865646E69;
  }

  if (v6)
  {
    v30 = 0xE600000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  if (v18)
  {
    v31 = 0x746E656C6973;
  }

  else
  {
    v31 = 0x7865646E69;
  }

  if (v18)
  {
    v32 = 0xE600000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  if (v29 == v31 && v30 == v32)
  {
  }

  else
  {
    v33 = sub_1D9179ACC();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v19)
    {
      return 0;
    }

    if (v7 == v20 && v8 == v19)
    {
      if (v10 != v22)
      {
        return 0;
      }

      goto LABEL_30;
    }

    v35 = sub_1D9179ACC();
    result = 0;
    if ((v35 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v19)
    {
      return result;
    }
  }

  if (v10 != v22)
  {
    return result;
  }

LABEL_30:
  if (v102)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v21)
    {
      v36 = v23;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = *(a1 + 11);
  v38 = *(a1 + 13);
  __src[8] = *(a1 + 12);
  __src[9] = v38;
  v39 = *(a1 + 7);
  v40 = *(a1 + 9);
  __src[4] = *(a1 + 8);
  __src[5] = v40;
  v42 = *(a1 + 9);
  v41 = *(a1 + 10);
  v43 = v41;
  __src[7] = *(a1 + 11);
  __src[6] = v41;
  v44 = *(a1 + 5);
  __src[0] = *(a1 + 4);
  __src[1] = v44;
  v45 = *(a1 + 6);
  v47 = *(a1 + 4);
  v46 = *(a1 + 5);
  v48 = v45;
  __src[3] = *(a1 + 7);
  __src[2] = v45;
  v49 = *(a2 + 12);
  v50 = *(a2 + 13);
  v51 = *(a2 + 10);
  __src[18] = *(a2 + 11);
  __src[19] = v49;
  v52 = *(a2 + 14);
  __src[20] = v50;
  __src[21] = v52;
  v53 = *(a2 + 8);
  v54 = *(a2 + 9);
  v55 = *(a2 + 6);
  __src[14] = *(a2 + 7);
  __src[15] = v53;
  __src[16] = v54;
  __src[17] = v51;
  v56 = *(a2 + 4);
  v57 = *(a2 + 5);
  v58 = *(a1 + 13);
  __src[10] = *(a1 + 14);
  __src[11] = v56;
  __src[12] = v57;
  __src[13] = v55;
  v140[8] = __src[8];
  v140[9] = v58;
  v140[10] = *(a1 + 14);
  v140[4] = __src[4];
  v140[5] = v42;
  v140[7] = v37;
  v140[6] = v43;
  v140[0] = v47;
  v140[1] = v46;
  v140[3] = v39;
  v140[2] = v48;
  if (sub_1D8E2C184(v140) == 1)
  {
    v59 = *(a2 + 13);
    __dst[8] = *(a2 + 12);
    __dst[9] = v59;
    __dst[10] = *(a2 + 14);
    v60 = *(a2 + 9);
    __dst[4] = *(a2 + 8);
    __dst[5] = v60;
    v61 = *(a2 + 11);
    __dst[6] = *(a2 + 10);
    __dst[7] = v61;
    v62 = *(a2 + 5);
    __dst[0] = *(a2 + 4);
    __dst[1] = v62;
    v63 = *(a2 + 7);
    __dst[2] = *(a2 + 6);
    __dst[3] = v63;
    if (sub_1D8E2C184(__dst) == 1)
    {
      v64 = *(a1 + 13);
      v136 = *(a1 + 12);
      v137 = v64;
      v138 = *(a1 + 14);
      v65 = *(a1 + 9);
      v132 = *(a1 + 8);
      v133 = v65;
      v66 = *(a1 + 10);
      v135 = *(a1 + 11);
      v134 = v66;
      v67 = *(a1 + 5);
      v128 = *(a1 + 4);
      v129 = v67;
      v68 = *(a1 + 6);
      v131 = *(a1 + 7);
      v130 = v68;
      sub_1D8E2BAD4(v141, &v116);
      sub_1D8E2BAD4(v142, &v116);
      sub_1D8D08A50(&v128, &qword_1ECAB4458, &qword_1D91891F0);
      return 1;
    }

    sub_1D8E2BAD4(v141, &v128);
    sub_1D8E2BAD4(v142, &v128);
    goto LABEL_43;
  }

  v69 = *(a1 + 11);
  v70 = *(a1 + 13);
  v136 = *(a1 + 12);
  v137 = v70;
  v71 = *(a1 + 13);
  v138 = *(a1 + 14);
  v72 = *(a1 + 7);
  v73 = *(a1 + 9);
  v132 = *(a1 + 8);
  v133 = v73;
  v75 = *(a1 + 9);
  v74 = *(a1 + 10);
  v76 = v74;
  v135 = *(a1 + 11);
  v134 = v74;
  v77 = *(a1 + 5);
  v128 = *(a1 + 4);
  v129 = v77;
  v78 = *(a1 + 6);
  v80 = *(a1 + 4);
  v79 = *(a1 + 5);
  v131 = *(a1 + 7);
  v130 = v78;
  v124 = v136;
  v125 = v71;
  v126 = *(a1 + 14);
  v120 = v132;
  v121 = v75;
  v122 = v76;
  v123 = v69;
  v116 = v80;
  v117 = v79;
  v118 = v78;
  v119 = v72;
  v81 = *(a2 + 13);
  __dst[8] = *(a2 + 12);
  __dst[9] = v81;
  __dst[10] = *(a2 + 14);
  v82 = *(a2 + 9);
  __dst[4] = *(a2 + 8);
  __dst[5] = v82;
  v83 = *(a2 + 11);
  __dst[6] = *(a2 + 10);
  __dst[7] = v83;
  v84 = *(a2 + 5);
  __dst[0] = *(a2 + 4);
  __dst[1] = v84;
  v85 = *(a2 + 7);
  __dst[2] = *(a2 + 6);
  __dst[3] = v85;
  if (sub_1D8E2C184(__dst) == 1)
  {
    v86 = *(a1 + 13);
    v113 = *(a1 + 12);
    v114 = v86;
    v115 = *(a1 + 14);
    v87 = *(a1 + 9);
    v109 = *(a1 + 8);
    v110 = v87;
    v88 = *(a1 + 11);
    v111 = *(a1 + 10);
    v112 = v88;
    v89 = *(a1 + 5);
    v105 = *(a1 + 4);
    v106 = v89;
    v90 = *(a1 + 7);
    v107 = *(a1 + 6);
    v108 = v90;
    sub_1D8E2BAD4(v141, v104);
    sub_1D8E2BAD4(v142, v104);
    sub_1D8E2BAD4(&v128, v104);
    sub_1D8E2C6F0(&v105);
LABEL_43:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D8D08A50(__dst, &qword_1ECAB4480, &qword_1D9189BC0);
    return 0;
  }

  v91 = *(a2 + 13);
  v113 = *(a2 + 12);
  v114 = v91;
  v115 = *(a2 + 14);
  v92 = *(a2 + 9);
  v109 = *(a2 + 8);
  v110 = v92;
  v93 = *(a2 + 11);
  v111 = *(a2 + 10);
  v112 = v93;
  v94 = *(a2 + 5);
  v105 = *(a2 + 4);
  v106 = v94;
  v95 = *(a2 + 7);
  v107 = *(a2 + 6);
  v108 = v95;
  sub_1D8E2BAD4(v141, v104);
  sub_1D8E2BAD4(v142, v104);
  sub_1D8E2BAD4(&v128, v104);
  v96 = _s18PodcastsFoundation7ChapterV7ArtworkO2eeoiySbAE_AEtFZ_0(&v116, &v105);
  v103[8] = v113;
  v103[9] = v114;
  v103[10] = v115;
  v103[4] = v109;
  v103[5] = v110;
  v103[6] = v111;
  v103[7] = v112;
  v103[0] = v105;
  v103[1] = v106;
  v103[2] = v107;
  v103[3] = v108;
  sub_1D8E2C6F0(v103);
  v104[8] = v124;
  v104[9] = v125;
  v104[10] = v126;
  v104[4] = v120;
  v104[5] = v121;
  v104[6] = v122;
  v104[7] = v123;
  v104[0] = v116;
  v104[1] = v117;
  v104[2] = v118;
  v104[3] = v119;
  sub_1D8E2C6F0(v104);
  v97 = *(a1 + 13);
  v113 = *(a1 + 12);
  v114 = v97;
  v115 = *(a1 + 14);
  v98 = *(a1 + 9);
  v109 = *(a1 + 8);
  v110 = v98;
  v99 = *(a1 + 11);
  v111 = *(a1 + 10);
  v112 = v99;
  v100 = *(a1 + 5);
  v105 = *(a1 + 4);
  v106 = v100;
  v101 = *(a1 + 7);
  v107 = *(a1 + 6);
  v108 = v101;
  sub_1D8D08A50(&v105, &qword_1ECAB4458, &qword_1D91891F0);
  return v96;
}

uint64_t sub_1D8E2C184(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8E2C19C()
{
  result = qword_1ECAB4460;
  if (!qword_1ECAB4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4460);
  }

  return result;
}

unint64_t sub_1D8E2C1F4()
{
  result = qword_1ECAB4468;
  if (!qword_1ECAB4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4468);
  }

  return result;
}

unint64_t sub_1D8E2C24C()
{
  result = qword_1ECAB4470;
  if (!qword_1ECAB4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4470);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation7ChapterV7ArtworkOSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1D8E2C32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1D8E2C374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Chapter.ChapterType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Chapter.ChapterType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8E2C550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D8E2C59C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 168) = 0;
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 176) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 8;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0;
      return result;
    }

    *(a1 + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8E2C638(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *(result + 80);
  v4 = *(result + 96);
  v5 = *(result + 112);
  v6 = *(result + 128) & 0xF0FFFFFLL;
  v7 = *(result + 152) & 0x10103 | (a2 << 63);
  *(result + 32) = *(result + 32);
  *(result + 64) = v2;
  *(result + 80) = v3;
  *(result + 96) = v4;
  *(result + 112) = v5;
  *(result + 128) = v6;
  *(result + 152) = v7;
  return result;
}

unint64_t sub_1D8E2C69C()
{
  result = qword_1ECAB4478;
  if (!qword_1ECAB4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4478);
  }

  return result;
}

PodcastsFoundation::ChapterCollection::Source_optional __swiftcall ChapterCollection.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ChapterCollection.Source.rawValue.getter()
{
  if (*v0)
  {
    return 0x72656469766F7270;
  }

  else
  {
    return 0x656C707061;
  }
}

uint64_t sub_1D8E2C7F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72656469766F7270;
  }

  else
  {
    v3 = 0x656C707061;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x72656469766F7270;
  }

  else
  {
    v5 = 0x656C707061;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D8E2C89C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8E2C91C(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8E2C988(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8E2CA04(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D8E2CA64(uint64_t *a1@<X8>)
{
  v2 = 0x656C707061;
  if (*v1)
  {
    v2 = 0x72656469766F7270;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ChapterCollection.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  MEMORY[0x1DA72B390](*(v3 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = (v3 + 32);
    do
    {
      v9 = *v8;
      v10 = v8[2];
      v29[1] = v8[1];
      v29[2] = v10;
      v29[0] = v9;
      v11 = v8[3];
      v12 = v8[4];
      v13 = v8[6];
      v29[5] = v8[5];
      v29[6] = v13;
      v29[3] = v11;
      v29[4] = v12;
      v14 = v8[7];
      v15 = v8[8];
      v16 = v8[10];
      v29[9] = v8[9];
      v29[10] = v16;
      v29[7] = v14;
      v29[8] = v15;
      v17 = v8[11];
      v18 = v8[12];
      v19 = v8[14];
      v29[13] = v8[13];
      v29[14] = v19;
      v29[11] = v17;
      v29[12] = v18;
      v20 = v8[13];
      v43 = v8[12];
      v44 = v20;
      v45 = v8[14];
      v21 = v8[9];
      v39 = v8[8];
      v40 = v21;
      v22 = v8[11];
      v41 = v8[10];
      v42 = v22;
      v23 = v8[5];
      v35 = v8[4];
      v36 = v23;
      v24 = v8[7];
      v37 = v8[6];
      v38 = v24;
      v25 = v8[1];
      v31 = *v8;
      v32 = v25;
      v26 = v8[3];
      v33 = v8[2];
      v34 = v26;
      sub_1D8E2D01C(v29, v30);
      Chapter.hash(into:)(a1);
      v30[12] = v43;
      v30[13] = v44;
      v30[14] = v45;
      v30[8] = v39;
      v30[9] = v40;
      v30[10] = v41;
      v30[11] = v42;
      v30[4] = v35;
      v30[5] = v36;
      v30[6] = v37;
      v30[7] = v38;
      v30[0] = v31;
      v30[1] = v32;
      v30[2] = v33;
      v30[3] = v34;
      sub_1D8E2D078(v30);
      v8 += 15;
      --v7;
    }

    while (v7);
  }

  if (v4 != 4)
  {
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    if (!v6)
    {
      goto LABEL_6;
    }

    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  if (v6)
  {
    return sub_1D9179DDC();
  }

LABEL_6:
  sub_1D9179DDC();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = v5;
  }

  else
  {
    v27 = 0;
  }

  return MEMORY[0x1DA72B3C0](v27);
}

uint64_t ChapterCollection.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[72] = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1D9179DBC();
  ChapterCollection.hash(into:)(v6);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2CDF4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[72] = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1D9179DBC();
  ChapterCollection.hash(into:)(v6);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2CE64(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7[72] = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_1D9179DBC();
  ChapterCollection.hash(into:)(v7);
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation17ChapterCollectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *a1 == 0;
  if (*a1)
  {
    v11 = 0x72656469766F7270;
  }

  else
  {
    v11 = 0x656C707061;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (*a2)
  {
    v13 = 0x72656469766F7270;
  }

  else
  {
    v13 = 0x656C707061;
  }

  if (*a2)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (v11 == v13 && v12 == v14)
  {
  }

  else
  {
    v16 = sub_1D9179ACC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1D8E83D34(v2, v6))
  {
    if (v3 == 4)
    {
      if (v7 != 4)
      {
        return 0;
      }
    }

    else if (v7 == 4 || (sub_1D8FDDEC0(v3, v7) & 1) == 0)
    {
      return 0;
    }

    if ((v5 & 1) == 0)
    {
      if (v4 == v8)
      {
        v18 = v9;
      }

      else
      {
        v18 = 1;
      }

      return (v18 & 1) == 0;
    }

    if (v9)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D8E2D0D0()
{
  result = qword_1ECAB4490;
  if (!qword_1ECAB4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4490);
  }

  return result;
}

unint64_t sub_1D8E2D128()
{
  result = qword_1ECAB4498;
  if (!qword_1ECAB4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4498);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8E2D190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D8E2D1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8E2D23C()
{
  result = qword_1ECAB44A0;
  if (!qword_1ECAB44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB44A0);
  }

  return result;
}

uint64_t ID3Chapter.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ID3Chapter.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ID3Chapter.artwork.getter()
{
  v1 = *(v0 + 32);
  sub_1D8DA04B0(v1, *(v0 + 40));
  return v1;
}

uint64_t ID3Chapter.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  if (v2 >> 60 != 15)
  {
    sub_1D9176C9C();
  }

  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x1DA72B3C0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  return MEMORY[0x1DA72B3C0](*&v6);
}

uint64_t ID3Chapter.hashValue.getter()
{
  sub_1D9179DBC();
  ID3Chapter.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2D43C()
{
  sub_1D9179DBC();
  ID3Chapter.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E2D480(uint64_t a1)
{
  sub_1D9179DBC();
  ID3Chapter.hash(into:)(v2);
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation10ID3ChapterV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v5 = *(a1 + 5);
  v7 = a1[6];
  v6 = a1[7];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1D9179ACC() & 1) == 0 || (v2 != v8 || v4 != v9) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_1D8DA04B0(v3, v5);
      sub_1D8DA04B0(v11, v10);
      sub_1D8D75668(v3, v5);
      if (v7 != v13)
      {
        return 0;
      }

      return v6 == v12;
    }

LABEL_12:
    sub_1D8DA04B0(v3, v5);
    sub_1D8DA04B0(v11, v10);
    sub_1D8D75668(v3, v5);
    sub_1D8D75668(v11, v10);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_12;
  }

  sub_1D8DA04B0(v3, v5);
  sub_1D8DA04B0(v11, v10);
  v15 = sub_1D8FCC138(v3, v5, v11, v10);
  sub_1D8D75668(v11, v10);
  sub_1D8D75668(v3, v5);
  result = 0;
  if (v15 && v7 == v13)
  {
    return v6 == v12;
  }

  return result;
}

unint64_t sub_1D8E2D668()
{
  result = qword_1ECAB44A8;
  if (!qword_1ECAB44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB44A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_1D8E2D6F8(uint64_t a1, int a2)
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

uint64_t sub_1D8E2D740(uint64_t result, int a2, int a3)
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

double sub_1D8E2D7A0@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = v1[6];
  v10 = v1[7];
  if (v8 >> 60 == 15)
  {
    sub_1D8E2DAA4(&v36);
  }

  else
  {
    *v23 = v1[4];
    *(&v23[0] + 1) = v8;
    sub_1D8E2DADC(v23);
    v32 = v23[8];
    v33 = v23[9];
    v34 = v23[10];
    v28 = v23[4];
    v29 = v23[5];
    v30 = v23[6];
    v31 = v23[7];
    v24 = v23[0];
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    nullsub_1();
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
  }

  *&v35[119] = v43;
  *&v35[135] = v44;
  *&v35[151] = v45;
  *&v35[167] = v46;
  *&v35[55] = v39;
  *&v35[71] = v40;
  *&v35[87] = v41;
  *&v35[103] = v42;
  *&v35[7] = v36;
  *&v35[23] = v37;
  v11 = v10 - v9;
  *&v35[39] = v38;
  if (v9 >= v11)
  {
    LOBYTE(v24) = 1;

    sub_1D8DA04B0(v7, v8);
    if (v11 < v9)
    {
      if (qword_1ECAB0C58 != -1)
      {
        swift_once();
      }

      v12 = sub_1D917744C();
      __swift_project_value_buffer(v12, qword_1ECAB0C60);
      v13 = sub_1D917741C();
      v14 = sub_1D9178D0C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 141558787;
        *(v15 + 4) = 1752392040;
        *(v15 + 12) = 2049;
        *(v15 + 14) = v11;
        *(v15 + 22) = 2160;
        *(v15 + 24) = 1752392040;
        *(v15 + 32) = 2049;
        *(v15 + 34) = v9;
        _os_log_impl(&dword_1D8CEC000, v13, v14, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v15, 0x2Au);
        MEMORY[0x1DA72CB90](v15, -1, -1);
      }
    }

    v11 = 0.0;
  }

  else
  {
    LOBYTE(v24) = 0;

    sub_1D8DA04B0(v7, v8);
  }

  v16 = v24;
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11;
  *(a1 + 56) = v16;
  v17 = *&v35[144];
  *(a1 + 185) = *&v35[128];
  *(a1 + 201) = v17;
  *(a1 + 217) = *&v35[160];
  *(a1 + 232) = *&v35[175];
  v18 = *&v35[80];
  *(a1 + 121) = *&v35[64];
  *(a1 + 137) = v18;
  v19 = *&v35[112];
  *(a1 + 153) = *&v35[96];
  *(a1 + 169) = v19;
  v20 = *&v35[16];
  *(a1 + 57) = *v35;
  *(a1 + 73) = v20;
  result = *&v35[32];
  v22 = *&v35[48];
  *(a1 + 89) = *&v35[32];
  *(a1 + 105) = v22;
  return result;
}

double sub_1D8E2DAA4(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xFFFFFFFF00;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_1D8E2DADC(uint64_t result)
{
  v1 = *(result + 64);
  v2 = *(result + 80);
  v3 = *(result + 96);
  v4 = *(result + 112);
  v5 = *(result + 128) & 0xF0FFFFFLL;
  v6 = *(result + 152) & 0x10103;
  *(result + 32) = *(result + 32);
  *(result + 64) = v1;
  *(result + 80) = v2;
  *(result + 96) = v3;
  *(result + 112) = v4;
  *(result + 128) = v5;
  *(result + 152) = v6;
  return result;
}

__n128 sub_1D8E2DB2C@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = MTChapter.timeframes.getter();
  LOBYTE(v62) = v4;
  sub_1D8E2A560(&v62, v5);
  v7 = v6;

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = *(v7 + 48);
  if (*(v8 + 24))
  {

LABEL_4:
    sub_1D8E2A4D0(&v62);
    goto LABEL_25;
  }

  v9 = *(v8 + 16);
  v10 = [v2 id];
  v37 = sub_1D917820C();
  v12 = v11;

  v13 = [v2 chapterTypeIntValue];
  v14 = [v2 title];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D917820C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *(v7 + 48);
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);
  if ((v21 & 1) == 0)
  {
    v20 = v20 / 1000.0;
  }

  MTChapter.artworkModel.getter(v61);
  if (sub_1D8D2E02C(v61) == 1)
  {
    sub_1D8E2DAA4(&v50);
  }

  else
  {
    v46 = v61[8];
    v47 = v61[9];
    v48 = v61[10];
    v42 = v61[4];
    v43 = v61[5];
    v44 = v61[6];
    v45 = v61[7];
    v38 = v61[0];
    v39 = v61[1];
    v40 = v61[2];
    v41 = v61[3];
    sub_1D8E2DF90(&v38);
    *&v65[80] = v46;
    *&v65[96] = v47;
    *&v65[112] = v48;
    *&v65[16] = v42;
    *&v65[32] = v43;
    *&v65[48] = v44;
    *&v65[64] = v45;
    v62 = v38;
    v63 = v39;
    v64 = v40;
    *v65 = v41;
    nullsub_1();
    v58 = *&v65[80];
    v59 = *&v65[96];
    v60 = *&v65[112];
    v54 = *&v65[16];
    v55 = *&v65[32];
    v56 = *&v65[48];
    v57 = *&v65[64];
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v53 = *v65;
  }

  *&v49[119] = v57;
  *&v49[135] = v58;
  *&v49[151] = v59;
  *&v49[167] = v60;
  *&v49[55] = v53;
  *&v49[71] = v54;
  *&v49[87] = v55;
  *&v49[103] = v56;
  v22 = v9 / 1000.0;
  *&v49[7] = v50;
  *&v49[23] = v51;
  v23 = v13 == 1;
  *&v49[39] = v52;
  if (v21)
  {

    LOBYTE(v38) = 1;
  }

  else if (v22 >= v20)
  {
    LOBYTE(v38) = 1;
    if (v22 > v20)
    {
      if (qword_1ECAB0C58 != -1)
      {
        swift_once();
      }

      v24 = sub_1D917744C();
      __swift_project_value_buffer(v24, qword_1ECAB0C60);
      v25 = sub_1D917741C();
      v26 = sub_1D9178D0C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = v26;
        v29 = v27;
        *v27 = 141558787;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2049;
        *(v27 + 14) = v20;
        *(v27 + 22) = 2160;
        *(v27 + 24) = 1752392040;
        *(v27 + 32) = 2049;
        *(v27 + 34) = v22;
        _os_log_impl(&dword_1D8CEC000, v25, v28, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v27, 0x2Au);
        MEMORY[0x1DA72CB90](v29, -1, -1);
      }
    }

    v20 = 0.0;
  }

  else
  {

    LOBYTE(v38) = 0;
  }

  *&v62 = v37;
  *(&v62 + 1) = v12;
  LOBYTE(v63) = v23;
  *(&v63 + 1) = v16;
  *&v64 = v18;
  *(&v64 + 1) = v22;
  *v65 = v20;
  v65[8] = v38;
  *&v65[137] = *&v49[128];
  *&v65[153] = *&v49[144];
  *&v65[169] = *&v49[160];
  *&v65[184] = *&v49[175];
  *&v65[73] = *&v49[64];
  *&v65[89] = *&v49[80];
  *&v65[105] = *&v49[96];
  *&v65[121] = *&v49[112];
  *&v65[9] = *v49;
  *&v65[25] = *&v49[16];
  *&v65[41] = *&v49[32];
  *&v65[57] = *&v49[48];
  nullsub_1();
LABEL_25:
  v30 = *&v65[160];
  *(a2 + 192) = *&v65[144];
  *(a2 + 208) = v30;
  *(a2 + 224) = *&v65[176];
  v31 = *&v65[96];
  *(a2 + 128) = *&v65[80];
  *(a2 + 144) = v31;
  v32 = *&v65[128];
  *(a2 + 160) = *&v65[112];
  *(a2 + 176) = v32;
  v33 = *&v65[32];
  *(a2 + 64) = *&v65[16];
  *(a2 + 80) = v33;
  v34 = *&v65[64];
  *(a2 + 96) = *&v65[48];
  *(a2 + 112) = v34;
  v35 = v63;
  *a2 = v62;
  *(a2 + 16) = v35;
  result = *v65;
  *(a2 + 32) = v64;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1D8E2DF90(uint64_t result)
{
  v1 = *(result + 64);
  v2 = *(result + 80);
  v3 = *(result + 96);
  v4 = *(result + 112);
  v5 = *(result + 128) & 0xF0FFFFFLL;
  v6 = *(result + 152) & 0x10103 | 0x8000000000000000;
  *(result + 32) = *(result + 32);
  *(result + 64) = v1;
  *(result + 80) = v2;
  *(result + 96) = v3;
  *(result + 112) = v4;
  *(result + 128) = v5;
  *(result + 152) = v6;
  return result;
}

__n128 sub_1D8E2DFE4@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(v2[7] + 16) + 16);
  LOBYTE(v65) = *a1;

  sub_1D8E2A560(&v65, v4);
  v6 = v5;

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = *(v6 + 48);
  if (*(v7 + 24))
  {

LABEL_4:
    sub_1D8E2A4D0(&v65);
    goto LABEL_24;
  }

  v8 = v2[6];
  v9 = *(v7 + 32);
  v10 = *(v7 + 40);
  if ((v10 & 1) == 0)
  {
    v9 = v9 / 1000.0;
  }

  v11 = *(v7 + 16);
  v12 = v2[3];
  v13 = *(v8 + 24) ^ 1;
  v14 = *(v8 + 40);
  v29 = *(v8 + 32);
  v30 = v2[2];
  if (!*(v8 + 16))
  {

    goto LABEL_11;
  }

  ArtworkModel.init(serverArtwork:)(v15, &v65);
  if (sub_1D8D2E02C(&v65) == 1)
  {
LABEL_11:
    sub_1D8E2DAA4(&v54);
    goto LABEL_12;
  }

  v39 = *&v68[80];
  v40 = *&v68[96];
  v41 = *&v68[112];
  v35 = *&v68[16];
  v36 = *&v68[32];
  v37 = *&v68[48];
  v38 = *&v68[64];
  v31 = v65;
  v32 = v66;
  v33 = v67;
  v34 = *v68;
  sub_1D8E2DF90(&v31);
  v50 = v39;
  v51 = v40;
  v52 = v41;
  v46 = v35;
  v47 = v36;
  v48 = v37;
  v49 = v38;
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v45 = v34;
  nullsub_1();
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v54 = v42;
  v55 = v43;
  v56 = v44;
  v57 = v45;
LABEL_12:
  *&v53[119] = v61;
  *&v53[135] = v62;
  *&v53[151] = v63;
  *&v53[167] = v64;
  *&v53[55] = v57;
  *&v53[71] = v58;
  *&v53[87] = v59;
  *&v53[103] = v60;
  v16 = v11 / 1000.0;
  *&v53[7] = v54;
  *&v53[23] = v55;
  v17 = v13 & 1;
  *&v53[39] = v56;
  if (v10)
  {

    LOBYTE(v42) = 1;
  }

  else if (v16 >= v9)
  {
    LOBYTE(v42) = 1;
    if (v16 > v9)
    {
      if (qword_1ECAB0C58 != -1)
      {
        swift_once();
      }

      v18 = sub_1D917744C();
      __swift_project_value_buffer(v18, qword_1ECAB0C60);
      v19 = sub_1D917741C();
      v20 = sub_1D9178D0C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 141558787;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2049;
        *(v21 + 14) = v9;
        *(v21 + 22) = 2160;
        *(v21 + 24) = 1752392040;
        *(v21 + 32) = 2049;
        *(v21 + 34) = v16;
        _os_log_impl(&dword_1D8CEC000, v19, v20, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v21, 0x2Au);
        MEMORY[0x1DA72CB90](v21, -1, -1);
      }
    }

    v9 = 0.0;
  }

  else
  {

    LOBYTE(v42) = 0;
  }

  *&v65 = v30;
  *(&v65 + 1) = v12;
  LOBYTE(v66) = v17;
  *(&v66 + 1) = v29;
  *&v67 = v14;
  *(&v67 + 1) = v16;
  *v68 = v9;
  v68[8] = v42;
  *&v68[137] = *&v53[128];
  *&v68[153] = *&v53[144];
  *&v68[169] = *&v53[160];
  *&v68[184] = *&v53[175];
  *&v68[73] = *&v53[64];
  *&v68[89] = *&v53[80];
  *&v68[105] = *&v53[96];
  *&v68[121] = *&v53[112];
  *&v68[9] = *v53;
  *&v68[25] = *&v53[16];
  *&v68[41] = *&v53[32];
  *&v68[57] = *&v53[48];
  nullsub_1();
LABEL_24:
  v22 = *&v68[160];
  *(a2 + 192) = *&v68[144];
  *(a2 + 208) = v22;
  *(a2 + 224) = *&v68[176];
  v23 = *&v68[96];
  *(a2 + 128) = *&v68[80];
  *(a2 + 144) = v23;
  v24 = *&v68[128];
  *(a2 + 160) = *&v68[112];
  *(a2 + 176) = v24;
  v25 = *&v68[32];
  *(a2 + 64) = *&v68[16];
  *(a2 + 80) = v25;
  v26 = *&v68[64];
  *(a2 + 96) = *&v68[48];
  *(a2 + 112) = v26;
  v27 = v66;
  *a2 = v65;
  *(a2 + 16) = v27;
  result = *v68;
  *(a2 + 32) = v67;
  *(a2 + 48) = result;
  return result;
}

uint64_t Array<A>.normalized(episodeDuration:)(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v5;
      v8 = (v5 + 240 * v4);
      v9 = v4;
      while (1)
      {
        if (v9 >= v3)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v10 = v8[13];
        v80 = v8[12];
        v81 = v10;
        v82 = v8[14];
        v11 = v8[9];
        v76 = v8[8];
        v77 = v11;
        v12 = v8[11];
        v78 = v8[10];
        v79 = v12;
        v13 = v8[5];
        v72 = v8[4];
        v73 = v13;
        v14 = v8[7];
        v74 = v8[6];
        v75 = v14;
        v15 = v8[1];
        v68 = *v8;
        v69 = v15;
        v16 = v8[3];
        v70 = v8[2];
        v71 = v16;
        v4 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_37;
        }

        if ((v69 & 1) == 0)
        {
          break;
        }

        v17 = sub_1D9179ACC();
        sub_1D8E2D01C(&v68, v67);

        if (v17)
        {
          goto LABEL_11;
        }

        sub_1D8E2D078(&v68);
        ++v9;
        v8 += 15;
        if (v4 == v3)
        {
          goto LABEL_18;
        }
      }

      sub_1D8E2D01C(&v68, v67);

LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D8E31360(0, *(v6 + 16) + 1, 1);
        v6 = v83;
      }

      v5 = v7;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D8E31360((v19 > 1), v20 + 1, 1);
        v6 = v83;
      }

      *(v6 + 16) = v20 + 1;
      v21 = (v6 + 240 * v20);
      v22 = v68;
      v23 = v70;
      v21[3] = v69;
      v21[4] = v23;
      v21[2] = v22;
      v24 = v71;
      v25 = v72;
      v26 = v74;
      v21[7] = v73;
      v21[8] = v26;
      v21[5] = v24;
      v21[6] = v25;
      v27 = v75;
      v28 = v76;
      v29 = v78;
      v21[11] = v77;
      v21[12] = v29;
      v21[9] = v27;
      v21[10] = v28;
      v30 = v79;
      v31 = v80;
      v32 = v82;
      v21[15] = v81;
      v21[16] = v32;
      v21[13] = v30;
      v21[14] = v31;
    }

    while (v4 != v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v64 = sub_1D8E2E88C(a1, a2 & 1, v6);

  if (v3)
  {
    v33 = 0;
    v34 = a3 + 32;
    v35 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v36 = v34;
    v37 = (v34 + 240 * v33);
    v9 = v33;
    while (v9 < v3)
    {
      v38 = v37[13];
      v80 = v37[12];
      v81 = v38;
      v82 = v37[14];
      v39 = v37[9];
      v76 = v37[8];
      v77 = v39;
      v40 = v37[11];
      v78 = v37[10];
      v79 = v40;
      v41 = v37[5];
      v72 = v37[4];
      v73 = v41;
      v42 = v37[7];
      v74 = v37[6];
      v75 = v42;
      v43 = v37[1];
      v68 = *v37;
      v69 = v43;
      v44 = v37[3];
      v70 = v37[2];
      v71 = v44;
      v33 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_39;
      }

      if (v69 == 1)
      {
        sub_1D8E2D01C(&v68, v67);

LABEL_28:
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v35;
        if ((v46 & 1) == 0)
        {
          sub_1D8E31360(0, *(v35 + 16) + 1, 1);
          v35 = v83;
        }

        v48 = *(v35 + 16);
        v47 = *(v35 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1D8E31360((v47 > 1), v48 + 1, 1);
          v35 = v83;
        }

        *(v35 + 16) = v48 + 1;
        v49 = (v35 + 240 * v48);
        v50 = v68;
        v51 = v70;
        v49[3] = v69;
        v49[4] = v51;
        v49[2] = v50;
        v52 = v71;
        v53 = v72;
        v54 = v74;
        v49[7] = v73;
        v49[8] = v54;
        v49[5] = v52;
        v49[6] = v53;
        v55 = v75;
        v56 = v76;
        v57 = v78;
        v49[11] = v77;
        v49[12] = v57;
        v49[9] = v55;
        v49[10] = v56;
        v58 = v79;
        v59 = v80;
        v60 = v82;
        v49[15] = v81;
        v49[16] = v60;
        v49[13] = v58;
        v49[14] = v59;
        v34 = v36;
        if (v33 != v3)
        {
          goto LABEL_20;
        }

        goto LABEL_35;
      }

      v45 = sub_1D9179ACC();
      sub_1D8E2D01C(&v68, v67);

      if (v45)
      {
        goto LABEL_28;
      }

      sub_1D8E2D078(&v68);
      ++v9;
      v37 += 15;
      if (v33 == v3)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_35:
    sub_1D8E2EE00(a1, a2 & 1, v35);

    *&v68 = v64;

    sub_1D8E2FC34(v61);

    sub_1D8E31114(&v68);

    return v68;
  }

  return result;
}

uint64_t sub_1D8E2E88C(uint64_t a1, char a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();

  v7 = sub_1D8E35300(v6, KeyPath);

  *&v107 = v7;

  sub_1D8E31114(&v107);

  v8 = v107;
  if (*(v107 + 16) < 3uLL)
  {

    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1ECAB0C60);
    v10 = sub_1D917741C();
    v11 = sub_1D9178CFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v107 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D8CFA924(0xD000000000000014, 0x80000001D91C98F0, &v107);
      *(v12 + 12) = 2048;
      *(v12 + 14) = 3;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Unable to normalize index chapters. Less than %ld unique index chapter received. Note that we may still have valid silent chapters.", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D8E30D50(1, v8);

  v14 = sub_1D8E2F3EC(v15, v8, 1);

  v16 = *(v8 + 16);
  if (v16)
  {
    v17 = (v8 + 240 * v16);
    v18 = *(v17 - 13);
    v19 = *(v17 - 11);
    v108 = *(v17 - 12);
    v109 = v19;
    v107 = v18;
    v20 = *(v17 - 10);
    v21 = *(v17 - 9);
    v22 = *(v17 - 7);
    v112 = *(v17 - 8);
    v113 = v22;
    v110 = v20;
    v111 = v21;
    v23 = *(v17 - 6);
    v24 = *(v17 - 5);
    v25 = *(v17 - 3);
    v116 = *(v17 - 4);
    v117 = v25;
    v114 = v23;
    v115 = v24;
    v26 = *(v17 - 2);
    v27 = *(v17 - 1);
    v28 = v17[1];
    v120 = *v17;
    v121 = v28;
    v118 = v26;
    v119 = v27;
    v29 = *&v110;
    v30 = BYTE8(v110);
    v31 = *(&v19 + 1);
    sub_1D8E2D01C(&v107, &v92);

    if (a2 & 1 | (v31 >= *&a1))
    {
      v32 = v29;
    }

    else
    {
      v32 = *&a1;
    }

    v89 = v119;
    v90 = v120;
    v91 = v121;
    v85 = v115;
    v86 = v116;
    v87 = v117;
    v88 = v118;
    v81 = v111;
    v82 = v112;
    v83 = v113;
    v84 = v114;
    v77 = v107;
    v78 = v108;
    v79 = v109;
    v80 = v110;
    sub_1D8E2F124(v32, (a2 & 1 | (v31 >= *&a1)) & v30, &v92, v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1D8ECC5F4(0, *(v14 + 16) + 1, 1, v14);
    }

    v34 = *(v14 + 16);
    v33 = *(v14 + 24);
    if (v34 >= v33 >> 1)
    {
      v14 = sub_1D8ECC5F4((v33 > 1), v34 + 1, 1, v14);
    }

    sub_1D8E2D078(&v107);
    *(v14 + 16) = v34 + 1;
    v35 = (v14 + 240 * v34);
    v37 = v93;
    v36 = v94;
    v35[2] = v92;
    v35[3] = v37;
    v35[4] = v36;
    v38 = v98;
    v40 = v95;
    v39 = v96;
    v35[7] = v97;
    v35[8] = v38;
    v35[5] = v40;
    v35[6] = v39;
    v41 = v102;
    v43 = v99;
    v42 = v100;
    v35[11] = v101;
    v35[12] = v41;
    v35[9] = v43;
    v35[10] = v42;
    v44 = v106;
    v46 = v103;
    v45 = v104;
    v35[15] = v105;
    v35[16] = v44;
    v35[13] = v46;
    v35[14] = v45;
    if (!*(v14 + 16))
    {
      return v14;
    }
  }

  else
  {

    if (!*(v14 + 16))
    {
      return v14;
    }
  }

  v47 = *(v14 + 224);
  v103 = *(v14 + 208);
  v104 = v47;
  v48 = *(v14 + 256);
  v105 = *(v14 + 240);
  v106 = v48;
  v49 = *(v14 + 160);
  v99 = *(v14 + 144);
  v100 = v49;
  v50 = *(v14 + 192);
  v101 = *(v14 + 176);
  v102 = v50;
  v51 = *(v14 + 96);
  v95 = *(v14 + 80);
  v96 = v51;
  v52 = *(v14 + 128);
  v97 = *(v14 + 112);
  v98 = v52;
  v53 = *(v14 + 48);
  v92 = *(v14 + 32);
  v93 = v53;
  v94 = *(v14 + 64);
  v54 = v95;
  v55 = BYTE8(v95);
  v89 = v104;
  v90 = v105;
  v91 = v106;
  v85 = v100;
  v86 = v101;
  v87 = v102;
  v88 = v103;
  v81 = v96;
  v82 = v97;
  v83 = v98;
  v84 = v99;
  v77 = v92;
  v78 = v53;
  v79 = v94;
  v80 = v95;
  sub_1D8E2D01C(&v92, &v107);
  sub_1D8E2F124(*&v54, v55, &v107, 0.0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D915C324(v14);
  }

  sub_1D8E2D078(&v92);
  if (*(v14 + 16))
  {
    v56 = *(v14 + 80);
    v57 = *(v14 + 96);
    v58 = *(v14 + 128);
    v82 = *(v14 + 112);
    v83 = v58;
    v80 = v56;
    v81 = v57;
    v59 = *(v14 + 144);
    v60 = *(v14 + 160);
    v61 = *(v14 + 192);
    v86 = *(v14 + 176);
    v87 = v61;
    v84 = v59;
    v85 = v60;
    v62 = *(v14 + 208);
    v63 = *(v14 + 224);
    v64 = *(v14 + 256);
    v90 = *(v14 + 240);
    v91 = v64;
    v88 = v62;
    v89 = v63;
    v65 = *(v14 + 48);
    v77 = *(v14 + 32);
    v78 = v65;
    v79 = *(v14 + 64);
    v66 = v107;
    *(v14 + 48) = v108;
    v67 = v110;
    *(v14 + 64) = v109;
    v68 = v111;
    *(v14 + 112) = v112;
    v70 = v120;
    v69 = v121;
    *(v14 + 224) = v119;
    *(v14 + 240) = v70;
    *(v14 + 256) = v69;
    v72 = v117;
    v71 = v118;
    v73 = v116;
    *(v14 + 160) = v115;
    *(v14 + 176) = v73;
    *(v14 + 192) = v72;
    *(v14 + 208) = v71;
    v75 = v113;
    v74 = v114;
    *(v14 + 80) = v67;
    *(v14 + 96) = v68;
    *(v14 + 128) = v75;
    *(v14 + 144) = v74;
    *(v14 + 32) = v66;
    sub_1D8E2D078(&v77);
    return v14;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8E2EE00(uint64_t a1, char a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  *&v46 = MEMORY[0x1E69E7CD0];

  v7 = sub_1D8E35300(v6, KeyPath);

  *&v46 = v7;

  sub_1D8E31114(&v46);

  v8 = v46;

  v9 = sub_1D8E30D50(1, v8);
  MEMORY[0x1EEE9AC00](v9);

  v10 = sub_1D8E35530(v9, v8, 1, sub_1D8E35528);

  if (*(v10 + 16))
  {
    v11 = *(v8 + 16);
    if (v11)
    {
      v12 = (v8 + 240 * v11);
      v13 = *(v12 - 13);
      v14 = *(v12 - 11);
      v47 = *(v12 - 12);
      v48 = v14;
      v46 = v13;
      v15 = *(v12 - 10);
      v16 = *(v12 - 9);
      v17 = *(v12 - 7);
      v51 = *(v12 - 8);
      v52 = v17;
      v49 = v15;
      v50 = v16;
      v18 = *(v12 - 6);
      v19 = *(v12 - 5);
      v20 = *(v12 - 3);
      v55 = *(v12 - 4);
      v56 = v20;
      v53 = v18;
      v54 = v19;
      v21 = *(v12 - 2);
      v22 = *(v12 - 1);
      v23 = v12[1];
      v59 = *v12;
      v60 = v23;
      v57 = v21;
      v58 = v22;
      v24 = *&v49;
      v25 = BYTE8(v49);
      sub_1D8E2D01C(&v46, v45);

      v45[12] = v58;
      v45[13] = v59;
      v45[14] = v60;
      v45[8] = v54;
      v45[9] = v55;
      v45[10] = v56;
      v45[11] = v57;
      v45[4] = v50;
      v45[5] = v51;
      v45[6] = v52;
      v45[7] = v53;
      v45[0] = v46;
      v45[1] = v47;
      if (v25)
      {
        v26 = *&a1;
      }

      else
      {
        v26 = v24;
      }

      v27 = v25 & a2;
      v45[2] = v48;
      v45[3] = v49;
      if ((v25 & 1) == 0 && (a2 & 1) == 0)
      {
        v27 = 0;
        *&v28 = v24;
        if (*&a1 < v24)
        {
          v28 = a1;
        }

        v26 = *&v28;
      }

      sub_1D8E2F124(v26, v27, v44, *(&v48 + 1));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D8ECC5F4(0, *(v10 + 16) + 1, 1, v10);
      }

      v30 = *(v10 + 16);
      v29 = *(v10 + 24);
      if (v30 >= v29 >> 1)
      {
        v10 = sub_1D8ECC5F4((v29 > 1), v30 + 1, 1, v10);
      }

      sub_1D8E2D078(&v46);
      *(v10 + 16) = v30 + 1;
      v31 = (v10 + 240 * v30);
      v33 = v44[1];
      v32 = v44[2];
      v31[2] = v44[0];
      v31[3] = v33;
      v31[4] = v32;
      v34 = v44[6];
      v36 = v44[3];
      v35 = v44[4];
      v31[7] = v44[5];
      v31[8] = v34;
      v31[5] = v36;
      v31[6] = v35;
      v37 = v44[10];
      v39 = v44[7];
      v38 = v44[8];
      v31[11] = v44[9];
      v31[12] = v37;
      v31[9] = v39;
      v31[10] = v38;
      v40 = v44[14];
      v42 = v44[11];
      v41 = v44[12];
      v31[15] = v44[13];
      v31[16] = v40;
      v31[13] = v42;
      v31[14] = v41;
    }

    else
    {
    }

    return v10;
  }

  else
  {
  }

  return v8;
}

double sub_1D8E2F124@<D0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v8 = *(v4 + 11);
  v9 = *(v4 + 13);
  v47 = *(v4 + 12);
  v48 = v9;
  v10 = *(v4 + 13);
  v49 = *(v4 + 14);
  v11 = *(v4 + 7);
  v12 = *(v4 + 9);
  v43 = *(v4 + 8);
  v44 = v12;
  v13 = *(v4 + 9);
  v14 = *(v4 + 11);
  v45 = *(v4 + 10);
  v46 = v14;
  v15 = *(v4 + 5);
  v40[0] = *(v4 + 4);
  v40[1] = v15;
  v16 = *(v4 + 7);
  v18 = *(v4 + 4);
  v17 = *(v4 + 5);
  v41 = *(v4 + 6);
  v42 = v16;
  *&v38[119] = v8;
  *&v38[135] = v47;
  *&v38[151] = v10;
  *&v38[167] = *(v4 + 14);
  *&v38[55] = v11;
  *&v38[71] = v43;
  *&v38[87] = v13;
  *&v38[103] = v45;
  *&v38[7] = v18;
  *&v38[23] = v17;
  v20 = *v4;
  v19 = v4[1];
  v21 = *(v4 + 16);
  v23 = v4[3];
  v22 = v4[4];
  *&v38[39] = v41;
  if (a2)
  {
    v39 = 1;
LABEL_5:

    sub_1D8E2BAD4(v40, v37);
    goto LABEL_6;
  }

  if (a1 > a4)
  {
    v39 = 0;
    goto LABEL_5;
  }

  v39 = 1;

  if (v5 >= a4)
  {
    sub_1D8E2BAD4(v40, v37);
    v5 = 0.0;
  }

  else
  {
    sub_1D8E2BAD4(v40, v37);
    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1ECAB0C60);
    v32 = sub_1D917741C();
    v33 = sub_1D9178D0C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v33;
      v36 = v34;
      *v34 = 141558787;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2049;
      *(v34 + 14) = v5;
      *(v34 + 22) = 2160;
      *(v34 + 24) = 1752392040;
      *(v34 + 32) = 2049;
      *(v34 + 34) = a4;
      _os_log_impl(&dword_1D8CEC000, v32, v35, "Invalid endTime data %{private,mask.hash}f should be greater than startTime %{private,mask.hash}f.", v34, 0x2Au);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    v5 = 0.0;
  }

LABEL_6:
  *(a3 + 40) = a4;
  v24 = *&v38[144];
  *(a3 + 185) = *&v38[128];
  *(a3 + 201) = v24;
  *(a3 + 217) = *&v38[160];
  v25 = *&v38[80];
  *(a3 + 121) = *&v38[64];
  *(a3 + 137) = v25;
  v26 = *&v38[112];
  *(a3 + 153) = *&v38[96];
  *(a3 + 169) = v26;
  v27 = *&v38[16];
  *(a3 + 57) = *v38;
  *(a3 + 73) = v27;
  result = *&v38[32];
  v29 = *&v38[48];
  *(a3 + 89) = *&v38[32];
  v30 = v39;
  *a3 = v20;
  *(a3 + 8) = v19;
  *(a3 + 16) = v21;
  *(a3 + 24) = v23;
  *(a3 + 32) = v22;
  *(a3 + 48) = v5;
  *(a3 + 56) = v30;
  *(a3 + 232) = *&v38[175];
  *(a3 + 105) = v29;
  return result;
}

uint64_t sub_1D8E2F3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v92 = MEMORY[0x1E69E7CC0];
  sub_1D8E31360(0, 0, 0);
  v6 = v92;
  v7 = a3 - 1;
  if (a3 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a2 + 16);
    if (v7 >= v8)
    {
      v7 = *(a2 + 16);
    }

    if (v7 >= 2)
    {
      v9 = v7 & 0x7FFFFFFFFFFFFFFELL;
      v10 = v9;
      do
      {
        v10 -= 2;
      }

      while (v10);
    }

    else
    {
      v9 = 0;
    }

    while (v8 != v9)
    {
      if (a3 == ++v9)
      {
        v8 = a3;
        break;
      }
    }
  }

  if (v5)
  {
    v60 = a2 + 240 * v8;
    v12 = 32;
    do
    {
      v13 = (a1 + v12);
      v14 = *(a1 + v12 + 208);
      v89 = *(a1 + v12 + 192);
      v90 = v14;
      v91 = *(a1 + v12 + 224);
      v15 = *(a1 + v12 + 144);
      v85 = *(a1 + v12 + 128);
      v86 = v15;
      v16 = *(a1 + v12 + 160);
      v88 = *(a1 + v12 + 176);
      v87 = v16;
      v17 = *(a1 + v12 + 80);
      v81 = *(a1 + v12 + 64);
      v82 = v17;
      v18 = *(a1 + v12 + 96);
      v84 = *(a1 + v12 + 112);
      v83 = v18;
      v19 = *(a1 + v12 + 16);
      v78[0] = *(a1 + v12);
      v78[1] = v19;
      v20 = *(a1 + v12 + 32);
      v80 = *(a1 + v12 + 48);
      v79 = v20;
      v21 = *(a2 + 16);
      if (v8 == v21)
      {
        break;
      }

      if (v8 >= v21)
      {
        __break(1u);
        return result;
      }

      v22 = *(v60 + v12 + 176);
      v23 = *(v60 + v12 + 208);
      v73 = *(v60 + v12 + 192);
      v74 = v23;
      v24 = *(v60 + v12 + 208);
      v75 = *(v60 + v12 + 224);
      v25 = *(v60 + v12 + 112);
      v26 = *(v60 + v12 + 144);
      v69 = *(v60 + v12 + 128);
      v70 = v26;
      v27 = *(v60 + v12 + 144);
      v28 = *(v60 + v12 + 176);
      v71 = *(v60 + v12 + 160);
      v72 = v28;
      v29 = *(v60 + v12 + 48);
      v30 = *(v60 + v12 + 80);
      v65 = *(v60 + v12 + 64);
      v66 = v30;
      v31 = *(v60 + v12 + 80);
      v32 = *(v60 + v12 + 112);
      v67 = *(v60 + v12 + 96);
      v68 = v32;
      v33 = *(v60 + v12 + 16);
      v62[0] = *(v60 + v12);
      v62[1] = v33;
      v34 = *(v60 + v12 + 48);
      v35 = *(v60 + v12);
      v36 = *(v60 + v12 + 16);
      v63 = *(v60 + v12 + 32);
      v64 = v34;
      v37 = v13[13];
      v76[12] = v13[12];
      v76[13] = v37;
      v76[14] = v13[14];
      v38 = v13[9];
      v76[8] = v13[8];
      v76[9] = v38;
      v39 = v13[11];
      v76[10] = v13[10];
      v76[11] = v39;
      v40 = v13[5];
      v76[4] = v13[4];
      v76[5] = v40;
      v41 = v13[7];
      v76[6] = v13[6];
      v76[7] = v41;
      v42 = v13[1];
      v76[0] = *v13;
      v76[1] = v42;
      v43 = v13[3];
      v76[2] = v13[2];
      v76[3] = v43;
      v76[27] = v73;
      v76[28] = v24;
      v76[29] = *(v60 + v12 + 224);
      v76[23] = v69;
      v76[24] = v27;
      v76[25] = v71;
      v76[26] = v22;
      v76[19] = v65;
      v76[20] = v31;
      v76[21] = v67;
      v76[22] = v25;
      v76[15] = v35;
      v76[16] = v36;
      v76[17] = v63;
      v76[18] = v29;
      v44 = *(&v63 + 1);
      v45 = *(&v79 + 1);
      sub_1D8E2D01C(v78, v77);
      sub_1D8E2D01C(v62, v77);
      sub_1D8E2F124(v44, 0, v77, v45);
      result = sub_1D8E35890(v76);
      v92 = v6;
      v47 = *(v6 + 16);
      v46 = *(v6 + 24);
      if (v47 >= v46 >> 1)
      {
        result = sub_1D8E31360((v46 > 1), v47 + 1, 1);
        v6 = v92;
      }

      *(v6 + 16) = v47 + 1;
      v48 = (v6 + 240 * v47);
      v49 = v77[0];
      v50 = v77[2];
      v48[3] = v77[1];
      v48[4] = v50;
      v48[2] = v49;
      v51 = v77[3];
      v52 = v77[4];
      v53 = v77[6];
      v48[7] = v77[5];
      v48[8] = v53;
      v48[5] = v51;
      v48[6] = v52;
      v54 = v77[7];
      v55 = v77[8];
      v56 = v77[10];
      v48[11] = v77[9];
      v48[12] = v56;
      v48[9] = v54;
      v48[10] = v55;
      v57 = v77[11];
      v58 = v77[12];
      v59 = v77[14];
      v48[15] = v77[13];
      v48[16] = v59;
      v48[13] = v57;
      v48[14] = v58;
      v12 += 240;
      ++v8;
      --v5;
    }

    while (v5);
  }

  return v6;
}

double sub_1D8E2F780@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 56);
  if (v3 & 1 | (*(a2 + 40) >= *(a1 + 48)))
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = *(a2 + 40);
  }

  return sub_1D8E2F124(v4, v3 & 1, a3, *(a1 + 40));
}

void sub_1D8E2F860(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D8ECC4D4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[32 * v8 + 32], (a1 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1D8E2F94C(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D8ECC718(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1D8F0AF70(&v43, &v4[24 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v46 = v23;
          v47 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v43;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v4 + 2);
  v13 = v44;
  v14 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v19 = (v47 - 1) & v47;
  v20 = __clz(__rbit64(v47)) | (v46 << 6);
  v21 = (v45 + 64) >> 6;
LABEL_27:
  v40 = v14;
  v41 = result;
  v26 = result[6] + 24 * v20;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  sub_1D8DB5EC8(*v26, v28, v29);
  v30 = v42;
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v6;
  }

  v38 = sub_1D8ECC718((v31 > 1), v6 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v6 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[24 * v6 + 32];
    *v33 = v27;
    *(v33 + 8) = v28;
    *(v33 + 16) = v29 & 1;
    ++v6;
    if (!v19)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v37 = result[6] + 24 * (v36 | (v2 << 6));
    v27 = *v37;
    v28 = *(v37 + 8);
    v29 = *(v37 + 16);
    sub_1D8DB5EC8(*v37, v28, v29);
    v30 = v42;
    if (v6 == v32)
    {
      v6 = v32;
      goto LABEL_28;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v21)
    {
      break;
    }

    v19 = *(v30 + 8 * v35);
    ++v34;
    if (v19)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v21;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v6;
LABEL_13:
  result = sub_1D8D1B144(result);
  *v1 = v4;
  return result;
}

void sub_1D8E2FC34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1D8ECC5F4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D8E2FD2C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1D8ECCB94(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D8E2FE30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1D8D4241C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D8E2FF44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1D8ECD008(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D8E30068(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D8ECD264(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D8E3016C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D917935C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1D917935C();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D8E346D0(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D8E34DE0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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
    return;
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
}

void sub_1D8E302B8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D917935C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1D917935C();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D8E346D0(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1D8E303D0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v5 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void *sub_1D8E304F0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1D8ECC958(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_1D8D1B614(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(result[6] + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_1D8ECC958((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(result[6] + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_1D8D1B144(result);
  *v1 = v3;
  return result;
}

uint64_t sub_1D8E30778(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1D8ECC958(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = (a2)(v39, &v4[8 * v12 + 32], v10 - v12, v8);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v8 + 64) >> 6;
      if (v21 <= v13 + 1)
      {
        v22 = v13 + 1;
      }

      else
      {
        v22 = (v8 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v41 = v23;
          v42 = 0;
          goto LABEL_13;
        }

        v25 = *(v14 + 8 * v24);
        ++v13;
      }

      while (!v25);
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v39[0];
  if (v15 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  a2 = *(v4 + 2);
  v14 = v39[1];
  v8 = v40;
  v13 = v41;
  if (!v42)
  {
    goto LABEL_19;
  }

  v19 = (v42 - 1) & v42;
  v20 = __clz(__rbit64(v42)) | (v41 << 6);
  v21 = (v40 + 64) >> 6;
LABEL_27:
  v26 = *(*(result + 48) + 8 * v20);
  while (1)
  {
    v27 = *(v4 + 3);
    v28 = v27 >> 1;
    if ((v27 >> 1) < a2 + 1)
    {
      break;
    }

    if (a2 < v28)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v4 + 2) = a2;
  }

  v37 = v21;
  v38 = result;
  v32 = v14;
  v33 = v4;
  v34 = v19;
  v35 = sub_1D8ECC958((v27 > 1), a2 + 1, 1, v33);
  v19 = v34;
  v14 = v32;
  v4 = v35;
  v21 = v37;
  result = v38;
  v28 = *(v4 + 3) >> 1;
  if (a2 >= v28)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v4[8 * a2++ + 32] = v26;
    if (!v19)
    {
      break;
    }

LABEL_34:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = *(*(result + 48) + ((v13 << 9) | (8 * v29)));
    if (a2 == v28)
    {
      a2 = v28;
      goto LABEL_30;
    }
  }

  v30 = v13;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v31 >= v21)
    {
      break;
    }

    v19 = *(v14 + 8 * v31);
    ++v30;
    if (v19)
    {
      v13 = v31;
      goto LABEL_34;
    }
  }

  if (v21 <= v13 + 1)
  {
    v36 = v13 + 1;
  }

  else
  {
    v36 = v21;
  }

  v40 = v8;
  v41 = v36 - 1;
  v42 = 0;
  *(v4 + 2) = a2;
LABEL_13:
  result = sub_1D8D1B144(result);
  *v2 = v4;
  return result;
}

void sub_1D8E30A08(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D8ECC958(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D8E30AF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D8ECE510(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[32 * v8 + 32], (a1 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D8E30C0C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1D8E30D50(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 32;
        v8 = MEMORY[0x1E69E7CC0];
        v86 = MEMORY[0x1E69E7CC0];
        v84 = a2 + 32;
        while (1)
        {
          v85 = v6;
          v9 = (v7 + 240 * v5);
          v10 = v5;
          while (1)
          {
            if (v10 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_31;
            }

            v11 = v9[5];
            v107 = v9[4];
            v108 = v11;
            v12 = v9[3];
            v105 = v9[2];
            v106 = v12;
            v13 = v9[9];
            v111 = v9[8];
            v112 = v13;
            v14 = v9[7];
            v109 = v9[6];
            v110 = v14;
            v15 = v9[14];
            v116 = v9[13];
            v117 = v15;
            v16 = v9[12];
            v114 = v9[11];
            v115 = v16;
            v113 = v9[10];
            v17 = v9[1];
            v103 = *v9;
            v104 = v17;
            v5 = v10 + 1;
            v18 = *(v8 + 16);
            if (v18 >= v3)
            {
              break;
            }

            sub_1D8E2D01C(&v103, &v88);
            result = swift_isUniquelyReferenced_nonNull_native();
            v118 = v8;
            if ((result & 1) == 0)
            {
              result = sub_1D8E31360(0, v18 + 1, 1);
              v8 = v118;
            }

            v20 = *(v8 + 16);
            v19 = *(v8 + 24);
            if (v20 >= v19 >> 1)
            {
              result = sub_1D8E31360((v19 > 1), v20 + 1, 1);
              v8 = v118;
            }

            *(v8 + 16) = v20 + 1;
            v21 = (v8 + 240 * v20);
            v22 = v103;
            v23 = v105;
            v21[3] = v104;
            v21[4] = v23;
            v21[2] = v22;
            v24 = v106;
            v25 = v107;
            v26 = v109;
            v21[7] = v108;
            v21[8] = v26;
            v21[5] = v24;
            v21[6] = v25;
            v27 = v110;
            v28 = v111;
            v29 = v113;
            v21[11] = v112;
            v21[12] = v29;
            v21[9] = v27;
            v21[10] = v28;
            v30 = v114;
            v31 = v115;
            v32 = v117;
            v21[15] = v116;
            v21[16] = v32;
            v21[13] = v30;
            v21[14] = v31;
            v9 += 15;
            v10 = v5;
            if (v4 == v5)
            {
              goto LABEL_28;
            }
          }

          if (v85 >= v18)
          {
            goto LABEL_32;
          }

          v33 = (v8 + 240 * v85);
          v34 = v33[2];
          v35 = v33[4];
          v89 = v33[3];
          v90 = v35;
          v88 = v34;
          v36 = v33[5];
          v37 = v33[6];
          v38 = v33[8];
          v93 = v33[7];
          v94 = v38;
          v91 = v36;
          v92 = v37;
          v39 = v33[9];
          v40 = v33[10];
          v41 = v33[12];
          v97 = v33[11];
          v98 = v41;
          v95 = v39;
          v96 = v40;
          v42 = v33[13];
          v43 = v33[14];
          v44 = v33[16];
          v101 = v33[15];
          v102 = v44;
          v99 = v42;
          v100 = v43;
          sub_1D8E2D01C(&v103, v87);
          sub_1D8E2D01C(&v88, v87);
          v45 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119 = v86;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D8E31360(0, *(v86 + 16) + 1, 1);
            v45 = v119;
          }

          v48 = *(v45 + 16);
          v47 = *(v45 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1D8E31360((v47 > 1), v48 + 1, 1);
            v45 = v119;
          }

          *(v45 + 16) = v48 + 1;
          v86 = v45;
          v49 = (v45 + 240 * v48);
          v50 = v88;
          v51 = v90;
          v49[3] = v89;
          v49[4] = v51;
          v49[2] = v50;
          v52 = v91;
          v53 = v92;
          v54 = v94;
          v49[7] = v93;
          v49[8] = v54;
          v49[5] = v52;
          v49[6] = v53;
          v55 = v95;
          v56 = v96;
          v57 = v98;
          v49[11] = v97;
          v49[12] = v57;
          v49[9] = v55;
          v49[10] = v56;
          v58 = v99;
          v59 = v100;
          v60 = v102;
          v49[15] = v101;
          v49[16] = v60;
          v49[13] = v58;
          v49[14] = v59;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D8F5DE34(v8);
            v8 = result;
          }

          if (v85 >= *(v8 + 16))
          {
            goto LABEL_33;
          }

          v61 = (v8 + 240 * v85);
          v62 = v61[2];
          v63 = v61[4];
          v87[1] = v61[3];
          v87[2] = v63;
          v87[0] = v62;
          v64 = v61[5];
          v65 = v61[6];
          v66 = v61[8];
          v87[5] = v61[7];
          v87[6] = v66;
          v87[3] = v64;
          v87[4] = v65;
          v67 = v61[9];
          v68 = v61[10];
          v69 = v61[12];
          v87[9] = v61[11];
          v87[10] = v69;
          v87[7] = v67;
          v87[8] = v68;
          v70 = v61[13];
          v71 = v61[14];
          v72 = v61[16];
          v87[13] = v61[15];
          v87[14] = v72;
          v87[11] = v70;
          v87[12] = v71;
          v73 = v103;
          v74 = v105;
          v61[3] = v104;
          v61[4] = v74;
          v61[2] = v73;
          v75 = v106;
          v76 = v107;
          v77 = v109;
          v61[7] = v108;
          v61[8] = v77;
          v61[5] = v75;
          v61[6] = v76;
          v78 = v110;
          v79 = v111;
          v80 = v113;
          v61[11] = v112;
          v61[12] = v80;
          v61[9] = v78;
          v61[10] = v79;
          v81 = v114;
          v82 = v115;
          v83 = v117;
          v61[15] = v116;
          v61[16] = v83;
          v61[13] = v81;
          v61[14] = v82;
          result = sub_1D8E2D078(v87);
          if ((v85 + 1) < v3)
          {
            v6 = v85 + 1;
          }

          else
          {
            v6 = 0;
          }

          v7 = v84;
          if (v4 - 1 == v10)
          {
            goto LABEL_28;
          }
        }
      }

      v86 = MEMORY[0x1E69E7CC0];
LABEL_28:

      return v86;
    }

    return v2;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void sub_1D8E31114(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DE34(v2);
  }

  v3 = *(v2 + 2);
  v60[0] = (v2 + 32);
  v60[1] = v3;
  v4 = sub_1D9179A2C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 272;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 5) >= *(v12 - 25))
          {
            break;
          }

          v13 = v12 - 240;
          v14 = *v12;
          v15 = *(v12 + 2);
          v46 = *(v12 + 1);
          v47 = v15;
          v45 = v14;
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          v18 = *(v12 + 6);
          v50 = *(v12 + 5);
          v51 = v18;
          v48 = v16;
          v49 = v17;
          v19 = *(v12 + 7);
          v20 = *(v12 + 8);
          v21 = *(v12 + 10);
          v54 = *(v12 + 9);
          v55 = v21;
          v53 = v20;
          v52 = v19;
          v22 = *(v12 + 11);
          v23 = *(v12 + 12);
          v24 = *(v12 + 14);
          v58 = *(v12 + 13);
          v59 = v24;
          v56 = v22;
          v57 = v23;
          v25 = *(v12 - 2);
          *(v12 + 12) = *(v12 - 3);
          *(v12 + 13) = v25;
          *(v12 + 14) = *(v12 - 1);
          v26 = *(v12 - 6);
          *(v12 + 8) = *(v12 - 7);
          *(v12 + 9) = v26;
          v27 = *(v12 - 4);
          *(v12 + 10) = *(v12 - 5);
          *(v12 + 11) = v27;
          v28 = *(v12 - 10);
          *(v12 + 4) = *(v12 - 11);
          *(v12 + 5) = v28;
          v29 = *(v12 - 8);
          *(v12 + 6) = *(v12 - 9);
          *(v12 + 7) = v29;
          v30 = *(v12 - 14);
          *v12 = *(v12 - 15);
          *(v12 + 1) = v30;
          v31 = *(v12 - 12);
          *(v12 + 2) = *(v12 - 13);
          *(v12 + 3) = v31;
          v32 = v45;
          v33 = v47;
          *(v13 + 1) = v46;
          *(v13 + 2) = v33;
          *v13 = v32;
          v34 = v48;
          v35 = v49;
          v36 = v51;
          *(v13 + 5) = v50;
          *(v13 + 6) = v36;
          *(v13 + 3) = v34;
          *(v13 + 4) = v35;
          v37 = v52;
          v38 = v53;
          v39 = v55;
          *(v13 + 9) = v54;
          *(v13 + 10) = v39;
          *(v13 + 7) = v37;
          *(v13 + 8) = v38;
          v40 = v56;
          v41 = v57;
          v42 = v59;
          *(v13 + 13) = v58;
          *(v13 + 14) = v42;
          *(v13 + 11) = v40;
          *(v13 + 12) = v41;
          v12 -= 240;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 240;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v45 = v7 + 32;
    *(&v45 + 1) = v6;
    sub_1D8E33DB8(&v45, v44, v60, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}