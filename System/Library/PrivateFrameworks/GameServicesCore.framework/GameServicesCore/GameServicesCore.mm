void __swiftcall PrivacyVersions.init(gdpr:gamesPrivacy:gamesCrossUse:)(GameServicesCore::PrivacyVersions *__return_ptr retstr, Swift::Int_optional gdpr, Swift::Int_optional gamesPrivacy, Swift::Int_optional gamesCrossUse)
{
  retstr->gdpr.value = gdpr.value;
  retstr->gdpr.is_nil = gdpr.is_nil;
  *(&retstr->gamesPrivacy.value + 7) = gamesPrivacy.value;
  BYTE6(retstr->gamesCrossUse.value) = gamesPrivacy.is_nil;
  *(&retstr[1].gdpr.value + 5) = gamesCrossUse.value;
  BYTE4(retstr[1].gamesPrivacy.value) = gamesCrossUse.is_nil;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_227B0ECB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameServicesEnvironment.init(cacheTTLOverride:hostBundleId:isDebugMode:defaultLocale:deviceUDID:currentPrivacyVersions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v11 = *a7;
  v12 = *(a7 + 8);
  v13 = a7[2];
  v14 = *(a7 + 24);
  v15 = a7[4];
  v16 = *(a7 + 40);
  *a8 = a9;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  v17 = type metadata accessor for GameServicesEnvironment(0);
  v18 = v17[7];
  sub_227D49328();
  OUTLINED_FUNCTION_62_0();
  result = (*(v19 + 32))(a8 + v18, a4);
  v21 = (a8 + v17[8]);
  *v21 = a5;
  v21[1] = a6;
  v22 = a8 + v17[9];
  *v22 = v11;
  *(v22 + 8) = v12;
  *(v22 + 16) = v13;
  *(v22 + 24) = v14;
  *(v22 + 32) = v15;
  *(v22 + 40) = v16;
  return result;
}

void OUTLINED_FUNCTION_80_3()
{
}

uint64_t OUTLINED_FUNCTION_80_6()
{
}

uint64_t type metadata accessor for GameKitService(uint64_t a1)
{
  result = qword_280E7D2E0;
  if (!qword_280E7D2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{

  return sub_227D49D38();
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1, uint64_t a2)
{

  return sub_227D4D968();
}

id OUTLINED_FUNCTION_19_5()
{

  return [v0 addObserverForName:v2 object:v1 queue:0 usingBlock:v3];
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t a1)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_19_12()
{
}

uint64_t sub_227B0F2D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_227B11EE8(a1, (a2 + 1));
  sub_227B0F360(0, &qword_280E7A810, 0x277CEE3F8);
  v4 = sub_227B120D0(0x746E6543656D6147, 0xEB00000000447265, 49, 0xE100000000000000);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_227B0F360(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t *sub_227B0F3EC()
{
  if (qword_280E7BE20 != -1)
  {
    OUTLINED_FUNCTION_310(&qword_280E7BE20);
  }

  return &qword_280E7D370;
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return sub_227D4CE58();
}

void OUTLINED_FUNCTION_61_6()
{
}

uint64_t sub_227B0F660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B0F6A8(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227B0F6EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227B0F730(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_227B0F774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227B0F7BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227B0F800(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_227B0F844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227B0F88C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_227B0F8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227B0F918(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_227B0F95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227B0F9A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_198_4()
{
}

uint64_t OUTLINED_FUNCTION_0_0()
{
}

uint64_t OUTLINED_FUNCTION_0_3()
{
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1, uint64_t a2)
{

  return sub_227D4D518();
}

void OUTLINED_FUNCTION_0_27()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return sub_227D4D8D8();
}

uint64_t OUTLINED_FUNCTION_0_36()
{
}

uint64_t OUTLINED_FUNCTION_0_53(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_227B10250()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_27_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2)
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_18_7(uint64_t a1)
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t a1, uint64_t a2)
{

  return sub_227D49478();
}

double OUTLINED_FUNCTION_28()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_12@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v3 - 112) = v2;

  return sub_227C70C78(v2, &a2 - a1);
}

void OUTLINED_FUNCTION_18_13(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x277D0D4F8];

  sub_227C89F90(319, a2, a3, a4, v5);
}

void OUTLINED_FUNCTION_18_16(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x277D0D4F0];

  sub_227CF1940(0, a2, v3);
}

void OUTLINED_FUNCTION_5_2()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_227B7E068(v1, v0);
}

uint64_t OUTLINED_FUNCTION_31_2(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return sub_227D49498();
}

uint64_t OUTLINED_FUNCTION_31_7()
{
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1)
{

  return sub_227D4D9D8();
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_11_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_27_7()
{

  JUMPOUT(0x22AAA7130);
}

void *OUTLINED_FUNCTION_27_8(void *result)
{
  *(v2 - 72) = *result;
  *(v2 - 216) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_10(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);

  return __swift_destroy_boxed_opaque_existential_0((v2 - 120));
}

uint64_t OUTLINED_FUNCTION_27_16(uint64_t a1, uint64_t a2)
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_227D49D68();
}

uint64_t OUTLINED_FUNCTION_178()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_6(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CC8A08];

  return sub_227B15A74(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_95(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

double OUTLINED_FUNCTION_29_5()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return sub_227D4AA58();
}

uint64_t OUTLINED_FUNCTION_29_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_15()
{
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{
}

void OUTLINED_FUNCTION_77()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1, uint64_t a2)
{

  return sub_227D49478();
}

id OUTLINED_FUNCTION_10_11()
{
  v3 = *(v1 + 2816);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_10_17()
{
  result = v0[27];
  v2 = v0[24];
  v0[36] = *(v2 + 8);
  v0[37] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_5()
{
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1)
{
}

unint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_79(unint64_t *a1)
{
  v2 = MEMORY[0x277D0D520];

  return sub_227B3DB5C(a1, v2);
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1)
{

  return sub_227D49D18();
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_9(unint64_t *a1)
{
  v2 = MEMORY[0x277D0D520];

  return sub_227BDE464(a1, v2);
}

uint64_t OUTLINED_FUNCTION_8_11@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  return OnboardingState.PrivacyInfo.init(savedVersion:currentVersion:forceAcceptance:forceNotice:logDescription:)(a1, a2, a3, a4, a5, a6, 1380992071, 0xE400000000000000, a7);
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return sub_227D49478();
}

void OUTLINED_FUNCTION_8_19()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t sub_227B11A4C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_227BBF438;

  return v6(a1);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t a1@<X8>)
{
  v6[5] = v4;
  v6[6] = v5;
  result = v1 + 24;
  v6[3] = a1;
  v6[4] = v2;
  v6[2] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_227D49188();
}

unint64_t OUTLINED_FUNCTION_5_13(uint64_t a1)
{

  return sub_227BC4050(a1);
}

void OUTLINED_FUNCTION_1_2(uint64_t a1@<X8>)
{
  v3[3] = a1;
  v3[4] = v1;
  v3[2] = v2;
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_30(unint64_t *a1)
{
  v2 = MEMORY[0x277D0D520];

  return sub_227CABA60(a1, v2);
}

uint64_t static GameKitService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_16 != -1)
  {
    OUTLINED_FUNCTION_150_5(&_MergedGlobals_16);
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BDA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227B11EE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t OUTLINED_FUNCTION_73(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  *v22 = a1;

  return sub_227B1B1A4(v21, v20, va);
}

uint64_t OUTLINED_FUNCTION_73_1(uint64_t a1)
{
}

char *OUTLINED_FUNCTION_73_3(uint64_t a1, uint64_t a2)
{

  return sub_227B3CA88(0, a2, 0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_227B120D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_227D4CF78();

  v5 = sub_227D4CF78();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_1()
{
}

uint64_t OUTLINED_FUNCTION_72_2(uint64_t a1)
{
}

uint64_t *sub_227B122C8()
{
  if (qword_280E7BB30 != -1)
  {
    swift_once();
  }

  return &qword_280E7BB38;
}

uint64_t OUTLINED_FUNCTION_71()
{
}

uint64_t OUTLINED_FUNCTION_38()
{
  *(v0 + 16) = v1;

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_71_1()
{
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t a1)
{
  *(v1 + 184) = a1;

  return sub_227D4ACB8();
}

uint64_t OUTLINED_FUNCTION_71_3()
{

  return sub_227D48F68();
}

uint64_t OUTLINED_FUNCTION_71_4(void *a1)
{
  *v1 = a1;
  *a1 = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return sub_227D4D9A8();
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{

  return sub_227D4DA08();
}

uint64_t OUTLINED_FUNCTION_1_18()
{
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{

  return sub_227D4D7C8();
}

uint64_t OUTLINED_FUNCTION_1_29(uint64_t a1)
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_1_30@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = v1;
  v8[5] = v6;
  v8[6] = v7;
  result = v3 + 24;
  v8[3] = a1;
  v8[4] = v4;
  v8[2] = v5;
  return result;
}

uint64_t sub_227B128A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B128F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B12938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B12980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B129C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B12A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B12A58(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227B12A9C(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227B12AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227B12B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_30_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_task_reportUnexpectedExecutor();
}

uint64_t OUTLINED_FUNCTION_30_10(unint64_t *a1)
{
  v3 = MEMORY[0x277D0CE10];

  return sub_227C634DC(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_30_13(uint64_t a1)
{
}

uint64_t *sub_227B12D14()
{
  if (qword_280E7BB40 != -1)
  {
    OUTLINED_FUNCTION_12_5(&qword_280E7BB40);
  }

  return &qword_280E7BB48;
}

id OUTLINED_FUNCTION_9_7()
{

  return [v0 (v1 + 2865)];
}

void OUTLINED_FUNCTION_9_11(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x277D83D88];

  sub_227C6EF98(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_9_15()
{
}

uint64_t OUTLINED_FUNCTION_16_4(void *a1)
{

  return sub_227B4DB6C(v1, a1, v2);
}

void *OUTLINED_FUNCTION_16_7(void *a1)
{

  return sub_227B3A224(a1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t a1)
{

  return swift_once();
}

uint64_t *sub_227B13080()
{
  if (qword_280E7BB70 != -1)
  {
    OUTLINED_FUNCTION_7_12(&qword_280E7BB70);
  }

  return &qword_280E7BB78;
}

void *OUTLINED_FUNCTION_15_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{

  return sub_227BDCF04(a1, a2, 1, v8, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_15_7()
{
}

void OUTLINED_FUNCTION_15_14(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, int a11, os_log_type_t a12)
{

  _os_log_impl(a1, log, a12, a4, v12, 0xCu);
}

uint64_t sub_227B132F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227B13308@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_227B11EE8(a1, a3);
  sub_227B11EE8(a2, a3 + 120);
  sub_227B13374(a2, a3 + 40);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_227B13374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = &type metadata for GameDaemonSupportedTransport;
  v8 = sub_227B136B0();
  *&v6 = swift_allocObject();
  sub_227B11EE8(a1, v6 + 16);
  sub_227B11EE8(a1, v5);
  return sub_227B1342C(&v6, v5, a2);
}

uint64_t sub_227B133F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227B1342C@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_227B132F0(a1, a3);

  return sub_227B132F0(a2, a3 + 40);
}

void OUTLINED_FUNCTION_56_0()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_20_1@<X0>(void *a1@<X8>)
{
  v1 = a1[80];
  __swift_project_boxed_opaque_existential_1(a1 + 76, a1[79]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_227D4D048();
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

void *OUTLINED_FUNCTION_20_9()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t sub_227B1365C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_15_6();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_227B136B0()
{
  result = qword_280E7CA30;
  if (!qword_280E7CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7CA30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_115_0(uint64_t a1)
{
}

unint64_t OUTLINED_FUNCTION_53_1(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a11 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v15 = (*(a11 + 48) + 16 * v14);
  *v15 = v13;
  v15[1] = v12;
  return sub_227B132F0((v11 + 56), *(a11 + 56) + 40 * v14);
}

unint64_t OUTLINED_FUNCTION_53_6(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

uint64_t OUTLINED_FUNCTION_53_7(uint64_t result, uint64_t a2)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = a2;
  return result;
}

uint64_t GameKitService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_id;
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t OUTLINED_FUNCTION_54_2(unint64_t *a1)
{
  v4 = MEMORY[0x277D0D528];

  return sub_227B15A74(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_158()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_7(uint64_t a1)
{

  return sub_227D49D38();
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;

  return sub_227D49458();
}

uint64_t OUTLINED_FUNCTION_57_3(uint64_t a1)
{
}

id OUTLINED_FUNCTION_57_6(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1)
{

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a10 = a9;
  a11 = v11;

  return sub_227BBE5D4(v14, v13, v15, v12 == 0, &a10);
}

uint64_t OUTLINED_FUNCTION_17_15()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v2 + 16);
  v2 += 16;
  v0[25] = *(v2 + 56);
  v0[26] = v3;
  v0[27] = v2 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_17_19(uint64_t a1)
{
  *(v2 + 8) = v1;
  v9 = *(v3 + 16);
  v8[5] = v6;
  v8[6] = v7;
  v8[3] = a1;
  v8[4] = v4;
  v8[2] = v5;
  return v9;
}

uint64_t OUTLINED_FUNCTION_17_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t *sub_227B14000()
{
  if (qword_280E7BB60 != -1)
  {
    OUTLINED_FUNCTION_10_8(&qword_280E7BB60);
  }

  return &qword_280E7BB68;
}

uint64_t sub_227B14040(uint64_t a1)
{
  result = sub_227D49EF8();
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

uint64_t static GameKitService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameKitService(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_22_13();
  sub_227B0F8D0(v5, v6, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v7, v8, &protocol conformance descriptor for GameKitService);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v12 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_actorSystem) = a2;
  }

  return v10;
}

uint64_t sub_227B1429C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_0(v5);
  *v6 = v7;
  v6[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_117_0();

  return GameKitService.listGameActivities(game:filters:excludedFilters:after:)();
}

void OUTLINED_FUNCTION_435(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_64_2()
{
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return sub_227D49E08();
}

void OUTLINED_FUNCTION_64_8()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return 0;
}

void OUTLINED_FUNCTION_38_8()
{
  *(v3 + 16) = v1;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = *(v4 - 240);
  *(v5 + 40) = v0;
}

void OUTLINED_FUNCTION_7_4()
{

  sub_227B29AF0();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_227D49478();
}

void *OUTLINED_FUNCTION_7_15()
{
  v2 = *(v0 + 16) + 1;

  return sub_227B3A224(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_379()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  sub_227B1AC90(0, 0);
  sub_227B1AC90(0, 0);
}

uint64_t OUTLINED_FUNCTION_7_21()
{
}

uint64_t OUTLINED_FUNCTION_7_22(uint64_t a1)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_58_2(unint64_t *a1)
{
  v3 = MEMORY[0x277D0D4B0];

  return sub_227B0F660(a1, v1, v3);
}

__n128 OUTLINED_FUNCTION_58_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u64[0] = v11;
  a1[2].n128_u64[1] = v10;
  return result;
}

uint64_t *OUTLINED_FUNCTION_58_6()
{
  *(v0 + 136) = v1;

  return __swift_allocate_boxed_opaque_existential_1((v0 + 112));
}

uint64_t GameKitService.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = sub_227D49458();
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[13] = v9;
  OUTLINED_FUNCTION_5(v9);
  v1[14] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[15] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B00, &qword_227D4EE30);
  v1[18] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[19] = v13;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[22] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[23] = v15;
  v1[24] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[25] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[26] = v17;
  v1[27] = OUTLINED_FUNCTION_30();
  v18 = sub_227D49D58();
  v1[28] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[29] = v19;
  v1[30] = OUTLINED_FUNCTION_30();
  v20 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t OUTLINED_FUNCTION_104_3()
{

  return sub_227B11EE8(v0 + 16, v0 + 56);
}

uint64_t OUTLINED_FUNCTION_104_5()
{

  return sub_227CC1DD0();
}

uint64_t OUTLINED_FUNCTION_104_8()
{
}

uint64_t OUTLINED_FUNCTION_104_9(uint64_t a1, uint64_t a2)
{

  return sub_227D4DA78();
}

uint64_t sub_227B14EF4()
{
  OUTLINED_FUNCTION_28_1();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[30];
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_9_1();
    v3(v2);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v4, v5, v6, v7);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v12, v13, v14, v15);
    if (v1)
    {
      (*(v0[26] + 8))(v0[27], v0[25]);
      v16 = OUTLINED_FUNCTION_17_0();
      v17(v16);
      OUTLINED_FUNCTION_114_0();

      OUTLINED_FUNCTION_19_0();

      return v27();
    }

    else
    {
      v0[2] = v0[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B08, &qword_227D4EE40);
      sub_227D49478();
      sub_227B43CD4();
      sub_227B43D58();
      OUTLINED_FUNCTION_113_0();
      v0[3] = v0[7];
      sub_227D4CE58();
      sub_227D49478();
      OUTLINED_FUNCTION_113_0();
      sub_227B15F50(v0[8], v0[14], &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v26);
      v28 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
      OUTLINED_FUNCTION_55_2(&qword_280E7B820);
      v30 = OUTLINED_FUNCTION_54_2(&qword_280E7B828);
      OUTLINED_FUNCTION_17(v30);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v31 = swift_task_alloc();
      v0[31] = v31;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v32, v33, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48_0();
      *v31 = v34;
      v31[1] = sub_227B1E890;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B00](v35);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[33] = v18;
    *v18 = v19;
    v18[1] = sub_227B1E11C;
    v20 = v0[8];
    v21 = v0[6];
    v22 = v0[7];
    v23 = v0[4];
    v24 = v0[5];

    return sub_227B16DD4(v23, v24, v21, v22, v20);
  }
}

void OUTLINED_FUNCTION_25_0()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

char *OUTLINED_FUNCTION_25_3@<X0>(unint64_t a1@<X8>)
{

  return sub_227B25F88((a1 > 1), v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_105_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_4()
{
}

uint64_t OUTLINED_FUNCTION_105_5()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_105_9()
{
}

uint64_t OUTLINED_FUNCTION_40_10@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + v1) + 448;

  return sub_227C5FB5C(v4, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_14()
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_14_15()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t OUTLINED_FUNCTION_14_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_227D4DBF8();
}

uint64_t sub_227B15A74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_227B15ABC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_77_6()
{
}

uint64_t OUTLINED_FUNCTION_82_0(uint64_t a1)
{

  return sub_227D49D28();
}

uint64_t OUTLINED_FUNCTION_83_4(uint64_t a1)
{
}

unint64_t sub_227B15CD0()
{
  result = qword_280E7B7F0;
  if (!qword_280E7B7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B10, &qword_227D4EE48);
    sub_227B0F660(&qword_280E7B840, MEMORY[0x277D0CAA8], MEMORY[0x277D0CAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7F0);
  }

  return result;
}

unint64_t sub_227B15D84()
{
  result = qword_280E7B7F8;
  if (!qword_280E7B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6B10, &qword_227D4EE48);
    sub_227B0F660(qword_280E7B848, MEMORY[0x277D0CAA8], MEMORY[0x277D0CAB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_103_2()
{
}

uint64_t OUTLINED_FUNCTION_69_0()
{
}

uint64_t OUTLINED_FUNCTION_103_3()
{
  v2 = *(v0 + 64) + 16;

  return sub_227C19454(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_103_7()
{
}

uint64_t sub_227B15F50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_227B15FB0()
{
  result = qword_280E7B800;
  if (!qword_280E7B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6908, &unk_227D4E690);
    sub_227B0F660(&qword_280E7B810, MEMORY[0x277D0D538], MEMORY[0x277D0D548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B800);
  }

  return result;
}

unint64_t sub_227B16064()
{
  result = qword_280E7B808;
  if (!qword_280E7B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6908, &unk_227D4E690);
    sub_227B0F660(&qword_280E7B818, MEMORY[0x277D0D538], MEMORY[0x277D0D540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B808);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_88_0()
{
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_88_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = (*(a11 + 56) + 40 * v12);
  __swift_destroy_boxed_opaque_existential_0(v13);

  return sub_227B132F0((v11 + 56), v13);
}

void *OUTLINED_FUNCTION_88_5(void *a1)
{

  return memcpy(a1, (v1 + 2400), 0x68uLL);
}

void OUTLINED_FUNCTION_48_1()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_121()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_9()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_68_4(uint64_t a1)
{

  return sub_227D48F28();
}

uint64_t OUTLINED_FUNCTION_68_5()
{
}

uint64_t OUTLINED_FUNCTION_3_5(unint64_t *a1)
{
  v4 = MEMORY[0x277D0D500];

  return sub_227B15A74(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1)
{
  v4 = *(v1 + 72);
  *(v2 - 96) = *(v1 + 80);
  *(v2 - 88) = v4;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_227D4D9C8();
}

void OUTLINED_FUNCTION_3_21()
{
  v2 = v0[78];
  *(v1 - 144) = v0[81];
  *(v1 - 136) = v2;
  v3 = v0[76];
  *(v1 - 128) = v0[77];
  *(v1 - 120) = v3;
  *(v1 - 112) = v0[75];
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_25()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return v1 + 16;
}

double OUTLINED_FUNCTION_3_29(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 184);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 8222587;
  *(v2 + 40) = 0xE300000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1)
{
}

unint64_t OUTLINED_FUNCTION_89_4()
{

  return sub_227B2664C(v1, v0);
}

uint64_t sub_227B168BC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v8 = a2[3];
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = swift_task_alloc();
  v2[14] = v9;
  *v9 = v2;
  v9[1] = sub_227B1E418;

  return GameKitService.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_227B16DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_194()
{
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return sub_227D49D98();
}

void *OUTLINED_FUNCTION_149_3@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;

  return memcpy(a4 + 2, __src, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_227D4DB58();
}

char *OUTLINED_FUNCTION_24_3()
{
  v2 = *(v0 + 16) + 1;

  return sub_227B25F88(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_227D4D7F8();
}

double OUTLINED_FUNCTION_24_6()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return sub_227D48D98();
}

uint64_t OUTLINED_FUNCTION_65_8(uint64_t a1)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_65_9(uint64_t a1)
{

  return MEMORY[0x28211EE68](a1, 0);
}

uint64_t OUTLINED_FUNCTION_65_12@<X0>(uint64_t a1@<X8>)
{

  return sub_227B11EE8(a1 + 608, v1 + 16);
}

uint64_t *sub_227B17260()
{
  if (qword_280E7C640[0] != -1)
  {
    swift_once();
  }

  return &qword_280E7D400;
}

void sub_227B172B0()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92B8, &qword_227D5CC20);
  v4 = OUTLINED_FUNCTION_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_442_0();
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = type metadata accessor for GameActivityInstanceStoreRegistry.GameActivityStoreKey(0);
  v8 = OUTLINED_FUNCTION_5(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_226();
  sub_227C4BC80();
  if (v38)
  {
    sub_227B132F0(&v37, v39);
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v10 = OUTLINED_FUNCTION_93_0();
    v11(v10);
    v12 = sub_227D49328();
    OUTLINED_FUNCTION_62_0();
    v14 = *(v13 + 16);
    v15 = OUTLINED_FUNCTION_305();
    v14(v15);
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_120();
    swift_beginAccess();
    sub_227D4CE58();
    OUTLINED_FUNCTION_189_3();
    v16 = OUTLINED_FUNCTION_196_3();
    v18 = sub_227B17D84(v16, v17);

    if (v18)
    {
      sub_227B179FC();
    }

    else
    {
      type metadata accessor for GameActivityInstanceStore();
      v23 = OUTLINED_FUNCTION_323();
      v14(v23);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v12);
      sub_227C19454(v39, &v37);
      OUTLINED_FUNCTION_431_0();
      sub_227C278F8();
      if (v1)
      {

        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      OUTLINED_FUNCTION_189_3();
      v30 = OUTLINED_FUNCTION_341();
      sub_227B18028(v30, v31);
      OUTLINED_FUNCTION_397_0(v2 + 120, &v37);
      if (v28)
      {

        swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v2 + 120);
        v32 = OUTLINED_FUNCTION_236();
        sub_227C44ED0(v32, v33, v34);
        *(v2 + 120) = v36;
      }

      else
      {
        sub_227C44B64();
      }

      sub_227B179FC();
      swift_endAccess();
      OUTLINED_FUNCTION_193();
      sub_227B179FC();
      if (!v28)
      {
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_12_9();
    sub_227B180A0(v35);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(v39);
    goto LABEL_16;
  }

  sub_227C1CB1C(&v37, &unk_27D7E92C0);
  type metadata accessor for GameActivityInstanceStore();
  sub_227D49328();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_276_0();
  sub_227C278F8();
  if (v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_9();
    sub_227B180A0(v29);
  }

LABEL_16:
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_84(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_220(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227B15A74(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return sub_227D4A3D8();
}

uint64_t sub_227B17738()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_62_0();
  v3 = OUTLINED_FUNCTION_58();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_301_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 120) = 0xD000000000000017;
  *(v2 - 112) = a1;

  return sub_227D49E08();
}

uint64_t OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return MEMORY[0x28211E850](v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_28_11(float a1)
{
  *v1 = a1;

  return sub_227D4A5E8();
}

uint64_t OUTLINED_FUNCTION_253_0(uint64_t a1)
{

  return sub_227D48FE8();
}

uint64_t sub_227B179AC()
{
  v1 = OUTLINED_FUNCTION_419();
  v2(v1);
  OUTLINED_FUNCTION_15_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_227B179FC()
{
  v1 = OUTLINED_FUNCTION_419();
  v2(v1);
  OUTLINED_FUNCTION_15_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_227B17A4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_227B17AA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;

  return sub_227D49458();
}

uint64_t OUTLINED_FUNCTION_197@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
}

uint64_t OUTLINED_FUNCTION_238_0()
{
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_156_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_156_5(uint64_t a1)
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_156_6(uint64_t a1)
{
  *(v1 + 168) = a1;

  return type metadata accessor for GameKitService(0);
}

uint64_t OUTLINED_FUNCTION_392_1()
{
}

void sub_227B17CD8()
{
  OUTLINED_FUNCTION_242();
  sub_227D4DB58();
  sub_227D49328();
  OUTLINED_FUNCTION_42_4();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_187_2(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_227D4CEA8();
  sub_227D4DB98();
  OUTLINED_FUNCTION_416_0();
  OUTLINED_FUNCTION_296_0();
  sub_227B17ECC();
}

uint64_t sub_227B17D84(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227B17CD8();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_313()
{
}

unint64_t sub_227B17E0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_179_0()
{
  *(v1 + 12) = 2048;
  *(v1 + 14) = *(v0 + 16);
}

void sub_227B17ECC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v5 = v4(0);
  OUTLINED_FUNCTION_10_0(v5);
  v7 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104();
  v9 = ~(-1 << *(v0 + 32));
  for (i = v3 & v9; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_227B18028(*(v0 + 48) + *(v7 + 72) * i, v1);
    v11 = OUTLINED_FUNCTION_165_3();
    v12 = MEMORY[0x22AAA2030](v11);
    sub_227B179FC();
    if (v12)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227B18028(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_342();
  v4(v3);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return a2;
}

unint64_t sub_227B180A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4(v3);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_66_2()
{
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1, uint64_t a2)
{
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v3;
}

uint64_t OUTLINED_FUNCTION_66_6()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 17);
}

unint64_t OUTLINED_FUNCTION_66_9(uint64_t a1, uint64_t a2)
{

  return sub_227D17298(a1);
}

BOOL OUTLINED_FUNCTION_107()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_107_4(uint64_t a1)
{

  return sub_227D4D7C8();
}

uint64_t OUTLINED_FUNCTION_107_6()
{
}

void OUTLINED_FUNCTION_106_0(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;

  sub_227B63A14(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_106_2()
{

  return sub_227D4CC68();
}

uint64_t OUTLINED_FUNCTION_106_3()
{
}

uint64_t OUTLINED_FUNCTION_106_8()
{

  return sub_227D4A958();
}

void OUTLINED_FUNCTION_47_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_47_6()
{
}

uint64_t OUTLINED_FUNCTION_47_7()
{
}

char *OUTLINED_FUNCTION_47_9@<X0>(unint64_t a1@<X8>)
{

  return sub_227B3CA88((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_47_12()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_96_5(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_96_7(uint64_t a1)
{

  return sub_227D4DA78();
}

uint64_t sub_227B18738(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  OUTLINED_FUNCTION_414_0();
  OUTLINED_FUNCTION_224();
  sub_227B180A0(v3);
  v4 = OUTLINED_FUNCTION_416_0();

  return MEMORY[0x28212C8C8](v4);
}

uint64_t OUTLINED_FUNCTION_234_1(uint64_t a1)
{
}

void sub_227B189A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v24;
  a20 = v25;
  v26 = v21;
  v28 = v27;
  v30 = v29;
  v175 = v31;
  sub_227D498E8();
  OUTLINED_FUNCTION_9();
  v169 = v32;
  v170 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_3();
  v171 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v35);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26_0();
  v165 = v37;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9330, &unk_227D5DF40);
  OUTLINED_FUNCTION_9();
  v164 = v38;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_26_0();
  v167 = v40;
  OUTLINED_FUNCTION_191_2();
  v179 = sub_227D49658();
  OUTLINED_FUNCTION_9();
  v163 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_3();
  v178 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_9();
  v182 = v44;
  v183 = v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_3();
  v177 = v46;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_266();
  v176 = v48;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_266();
  v181 = v50;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_266();
  v180 = v53;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_266();
  v184 = v55;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_314();
  v59 = v58;
  v60 = OUTLINED_FUNCTION_141();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  OUTLINED_FUNCTION_5(v62);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_105_1();
  v166 = v20;
  sub_227B1980C();
  v186 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_251_0();
  sub_227C4BC80();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_318(v23, 1, v64);
  if (v65)
  {
    sub_227C1CB1C(v23, &qword_27D7E6CC8);
    v68 = v182;
    goto LABEL_8;
  }

  v69 = sub_227D4A6A8();
  if (!v21)
  {
    v73 = v69;
    v74 = v70;
    v175 = v30;
    v75 = v28;
    OUTLINED_FUNCTION_14_0();
    v76 = OUTLINED_FUNCTION_148();
    v78 = v77(v76);
    MEMORY[0x28223BE20](v78);
    *(&v159 - 2) = v73;
    *(&v159 - 1) = v74;
    v185 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
    OUTLINED_FUNCTION_395();
    sub_227D49378();

    OUTLINED_FUNCTION_100_3();
    sub_227B1BEF0();
    v80 = v79;
    v82 = *(v79 + 16);
    v81 = *(v79 + 24);
    v68 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      *(v80 + 16) = v68;
      v68 = v182;
      (*(v183 + 32))(v80 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v82, v59, v182);
      v186 = v80;
      v28 = v75;
      v30 = v175;
LABEL_8:
      v81 = &a16;
      v162 = v22;
      if (v30)
      {
        v83 = *(v30 + 2);
        v84 = MEMORY[0x277D84F90];
        if (v83)
        {
          v160 = v28;
          v172 = v26;
          v185 = MEMORY[0x277D84F90];
          sub_227B1C38C();
          v84 = v185;
          v85 = v163 + 16;
          OUTLINED_FUNCTION_19();
          v87 = &v30[v86];
          v174 = *(v85 + 56);
          v175 = v88;
          v173 = v183 + 32;
          v22 = v161;
          do
          {
            (v175)(v178, v87, v179);
            sub_227B1C430();
            v89 = OUTLINED_FUNCTION_299_0();
            v90(v89);
            v185 = v84;
            v92 = *(v84 + 16);
            v91 = *(v84 + 24);
            v59 = v92 + 1;
            if (v92 >= v91 >> 1)
            {
              OUTLINED_FUNCTION_12(v91);
              sub_227B1C38C();
              v84 = v185;
            }

            *(v84 + 16) = v59;
            OUTLINED_FUNCTION_104_2();
            (*(v94 + 32))(v84 + v93 + *(v94 + 72) * v92, v22);
            v87 += v174;
            --v83;
          }

          while (v83);
          v26 = v172;
          v28 = v160;
        }

        sub_227B1D528(v84, &unk_27D7E9368, &unk_227D5DF78, &qword_27D7E9308, &unk_227D5DF10, v66, v67);
        v68 = v182;
      }

      v95 = v184;
      if (v28)
      {
        v59 = *(v28 + 16);
        v75 = v186;
        if (v59)
        {
          OUTLINED_FUNCTION_104_2();
          v97 = v28 + v96;
          v178 = *(v98 + 72);
          v179 = (v183 + 32);
          do
          {
            sub_227B1C430();
            MEMORY[0x28223BE20](v99);
            *(&v159 - 2) = v95;
            v185 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
            OUTLINED_FUNCTION_395();
            sub_227D49378();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_21();
              sub_227B1BEF0();
              v75 = v107;
            }

            v101 = *(v75 + 16);
            v100 = *(v75 + 24);
            if (v101 >= v100 >> 1)
            {
              OUTLINED_FUNCTION_12(v100);
              sub_227B1BEF0();
              v75 = v108;
            }

            *(v75 + 16) = v101 + 1;
            v102 = v183;
            OUTLINED_FUNCTION_19();
            v104 = v75 + v103 + *(v102 + 72) * v101;
            v22 = v180;
            (*(v102 + 32))(v104, v180, v68);
            v95 = v184;
            v105 = OUTLINED_FUNCTION_236();
            v106(v105);
            v81 = v178;
            v97 += v178;
            --v59;
          }

          while (v59);
        }
      }

      else
      {
        v75 = v186;
      }

      v82 = *(v75 + 16);
      if (v82)
      {
        v172 = v26;
        v109 = v183 + 16;
        OUTLINED_FUNCTION_19();
        v111 = (v75 + v110);
        v180 = v112;
        v112(v181, (v75 + v110), v68);
        v113 = *(v109 + 56);
        v174 = v75;
        v175 = v113;
        v183 = v109;
        v178 = v109 - 8;
        v179 = (v109 + 16);
        sub_227D4CE58();
        v184 = v82 - 1;
        v114 = v182;
        while (1)
        {
          v115 = v176;
          v116 = v111;
          v117 = v180(v176, v111, v114);
          MEMORY[0x28223BE20](v117);
          *(&v159 - 2) = v181;
          *(&v159 - 1) = v115;
          v185 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
          OUTLINED_FUNCTION_395();
          sub_227D49378();
          v118 = *v178;
          (*v178)(v115, v114);
          v119 = OUTLINED_FUNCTION_324();
          v118(v119);
          v120 = v118;
          v121 = *v179;
          v122 = OUTLINED_FUNCTION_201();
          v121(v122);
          if (!v184)
          {
            break;
          }

          --v184;
          v111 = &v175[v116];
        }

        v123 = v162;
        v124 = v182;
        (v121)(v162, v181, v182);
        v125 = v165;
        OUTLINED_FUNCTION_71_0();
        __swift_storeEnumTagSinglePayload(v126, v127, v128, v124);
        OUTLINED_FUNCTION_0_41();
        sub_227B17E0C(v129);
        v130 = v167;
        sub_227D4CBF8();
        v180(v125, v123, v124);
        OUTLINED_FUNCTION_99();
        __swift_storeEnumTagSinglePayload(v131, v132, v133, v124);
        v134 = v168;
        sub_227D4CBE8();
        type metadata accessor for GameActivityInstanceStore();
        OUTLINED_FUNCTION_12_9();
        sub_227B180A0(v135);
        OUTLINED_FUNCTION_78_0();
        sub_227D4CAF8();
        OUTLINED_FUNCTION_353_0();
        v136 = v172;
        v137 = sub_227D4CB38();
        v26 = v136;
        if (v136)
        {

          OUTLINED_FUNCTION_163_1();
          v138(v130, v134);
          v120(v123, v124);

          goto LABEL_32;
        }

        v139 = v137;

        v140 = sub_227B4BF3C(v139);
        if (!v140)
        {

          OUTLINED_FUNCTION_163_1();
          v152 = OUTLINED_FUNCTION_478();
          v153(v152);
          v120(v123, v182);

          goto LABEL_32;
        }

        v141 = v140;
        v184 = v139;
        v172 = 0;
        v185 = MEMORY[0x277D84F90];
        sub_227C43000(0, v140 & ~(v140 >> 63), 0);
        v142 = v141;
        v75 = v174;
        if (v142 < 0)
        {
          __break(1u);
          return;
        }

        v59 = v142;
        v143 = 0;
        v144 = v184;
        v82 = v185;
        v22 = v184 & 0xC000000000000001;
        v81 = v170 + 32;
        v183 = v170 + 32;
        while (1)
        {
          v68 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            break;
          }

          sub_227C109CC(v143, v22 == 0, v144);
          v145 = v172;
          if (v22)
          {
            v146 = OUTLINED_FUNCTION_336();
            MEMORY[0x22AAA63D0](v146);
          }

          else
          {
            OUTLINED_FUNCTION_383();
          }

          sub_227C2B1E0();
          if (v145)
          {

            OUTLINED_FUNCTION_163_1();
            v154(v167, v168);
            v155 = OUTLINED_FUNCTION_409_0();
            (v120)(v155);

            goto LABEL_32;
          }

          v172 = 0;

          v185 = v82;
          v148 = *(v82 + 16);
          v147 = *(v82 + 24);
          v26 = v148 + 1;
          if (v148 >= v147 >> 1)
          {
            v151 = OUTLINED_FUNCTION_12(v147);
            sub_227C43000(v151, v148 + 1, 1);
            v82 = v185;
          }

          *(v82 + 16) = v26;
          OUTLINED_FUNCTION_104_2();
          (*(v150 + 32))(v82 + v149 + *(v150 + 72) * v148);
          ++v143;
          v75 = v174;
          v144 = v184;
          if (v68 == v59)
          {

            OUTLINED_FUNCTION_163_1();
            v156(v167, v168);
            v157 = OUTLINED_FUNCTION_409_0();
            (v120)(v157);

            goto LABEL_32;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_49:
      OUTLINED_FUNCTION_12(v81);
      sub_227B1BEF0();
      v80 = v158;
    }
  }

  OUTLINED_FUNCTION_14_0();
  v71 = OUTLINED_FUNCTION_148();
  v72(v71);
LABEL_32:
  OUTLINED_FUNCTION_352();
}

unint64_t OUTLINED_FUNCTION_329(uint64_t a1)
{

  return sub_227C164D0(a1);
}

void OUTLINED_FUNCTION_247_0(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_134_4()
{
}

char *OUTLINED_FUNCTION_134_5(uint64_t a1, uint64_t a2)
{

  return sub_227B3CA88(0, a2, 0);
}

void sub_227B1980C()
{
  OUTLINED_FUNCTION_11();
  sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v124 = v4;
  v125 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_3();
  v111 = v5;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_266();
  v116 = v7;
  OUTLINED_FUNCTION_6_0();
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_119_3(v9, v10, v11, v12, v13, v14, v15, v16, v109[0]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v17);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_117_2(v19);
  v20 = sub_227D49358();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v22);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_75_2();
  v120 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v115 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_3();
  v114 = v26;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_266();
  v113 = v28;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_266();
  v112 = v30;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_266();
  v119 = v32;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_65_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_226();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F8, &qword_227D5DF00);
  OUTLINED_FUNCTION_5(v35);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_68_3();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9300, &qword_227D5DF08);
  OUTLINED_FUNCTION_5(v37);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105_1();
  sub_227D48E98();
  OUTLINED_FUNCTION_9();
  v122 = v40;
  v123 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_311_0();
  type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v41);
  sub_227D4CAF8();
  sub_227D4CB78();

  sub_227D4CB88();
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_353_0();
  v42 = sub_227D4CB98();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v20);
  sub_227D49368();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  sub_227D48E88();
  sub_227D49348();
  v121 = v0;
  sub_227D49338();
  v50 = OUTLINED_FUNCTION_226_0();
  v51 = v120;
  v52(v50);
  OUTLINED_FUNCTION_318(v2, 1, v120);
  if (v53)
  {
    sub_227C1CB1C(v2, &qword_27D7E6D08);
    v54 = sub_227B1AF8C();
    v56 = v124;
    v55 = v125;
    v57 = v116;
    (*(v124 + 16))(v116, v54, v125);
    v58 = sub_227D4CA98();
    v59 = sub_227D4D438();
    if (os_log_type_enabled(v58, v59))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_218_1();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
    }

    (*(v56 + 8))(v57, v55);
    v65 = OUTLINED_FUNCTION_321_0();
    v66(v65);
  }

  else
  {
    v116 = v42;
    v68 = v124;
    v67 = v125;
    v69 = v115;
    v70 = OUTLINED_FUNCTION_243();
    v71(v70);
    v72 = v118;
    sub_227D49288();
    if (_MergedGlobals_9 != -1)
    {
      swift_once();
    }

    sub_227D4DC38();
    sub_227D49238();
    v73 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
    v109[1] = v109;
    v126[2] = MEMORY[0x28223BE20](v73);
    OUTLINED_FUNCTION_395();
    v74 = v117;
    sub_227D49378();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    OUTLINED_FUNCTION_0_41();
    sub_227B17E0C(v79);
    OUTLINED_FUNCTION_57_0();
    sub_227D4CB48();
    sub_227C1CB1C(v74, &qword_27D7E92F0);
    v80 = sub_227B1AF8C();
    (*(v68 + 16))(v110, v80, v67);
    v81 = *(v69 + 16);
    OUTLINED_FUNCTION_251_0();
    v81();
    v117 = v1;
    OUTLINED_FUNCTION_193_3();
    v81();
    (v81)(v114, v72, v51);
    v82 = sub_227D4CA98();
    v83 = v51;
    v84 = sub_227D4D418();
    if (os_log_type_enabled(v82, v84))
    {
      v85 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v126[0] = v111;
      *v85 = 136315906;
      *(v85 + 4) = OUTLINED_FUNCTION_375_0("GSGameActivityInstanceStore");
      *(v85 + 12) = 2080;
      OUTLINED_FUNCTION_16_9();
      sub_227B17E0C(v86);
      v87 = v112;
      OUTLINED_FUNCTION_341();
      sub_227D4DA38();
      v109[0] = v82;
      v88 = *(v69 + 8);
      v89 = OUTLINED_FUNCTION_269();
      v88(v89);
      v90 = OUTLINED_FUNCTION_278();
      sub_227B1B1A4(v90, v91, v92);
      OUTLINED_FUNCTION_353_0();

      *(v85 + 14) = v87;
      *(v85 + 22) = 2080;
      v93 = v113;
      OUTLINED_FUNCTION_341();
      sub_227D4DA38();
      LODWORD(v115) = v84;
      v94 = OUTLINED_FUNCTION_269();
      v88(v94);
      v95 = OUTLINED_FUNCTION_141();
      sub_227B1B1A4(v95, v96, v97);
      OUTLINED_FUNCTION_353_0();

      *(v85 + 24) = v93;
      *(v85 + 32) = 2080;
      v98 = v114;
      OUTLINED_FUNCTION_341();
      v99 = sub_227D4DA38();
      v101 = v100;
      (v88)(v98, v83);
      sub_227B1B1A4(v99, v101, v126);
      OUTLINED_FUNCTION_308();

      *(v85 + 34) = v99;
      v102 = v109[0];
      _os_log_impl(&dword_227B0D000, v109[0], v115, "%s purged old entries modified before: %s (or %s). Now: %s", v85, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();

      (*(v124 + 8))(v110, v125);
      (v88)(v118, v83);
    }

    else
    {

      v88 = *(v69 + 8);
      (v88)(v114, v83);
      (v88)(v113, v83);
      (v88)(v112, v83);
      v103 = OUTLINED_FUNCTION_246();
      v104(v103);
      v105 = OUTLINED_FUNCTION_269();
      v88(v105);
    }

    v106 = OUTLINED_FUNCTION_321_0();
    v107(v106);
    v108 = OUTLINED_FUNCTION_201();
    v88(v108);
    (v88)(v117, v83);
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_175_2()
{

  return sub_227D4DB78();
}

uint64_t OUTLINED_FUNCTION_175_3(uint64_t a1)
{
  *(v1 + 128) = a1;

  return type metadata accessor for GameDebuggerService(0);
}

uint64_t OUTLINED_FUNCTION_502(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_312_0()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 + 256));
}

uint64_t OUTLINED_FUNCTION_361_1()
{
  *(v1 - 72) = v0;

  return sub_227D4A2B8();
}

uint64_t OUTLINED_FUNCTION_316_0()
{
}

uint64_t OUTLINED_FUNCTION_265_1()
{
}

void OUTLINED_FUNCTION_265_2(uint64_t a1@<X8>)
{
  v2[13] = a1;
  v2[40] = *(v1 + 16);
  v2[41] = 0;
}

uint64_t OUTLINED_FUNCTION_55_2(unint64_t *a1)
{
  v4 = MEMORY[0x277D0D530];

  return sub_227B15A74(a1, v1, v2, v4);
}

unint64_t sub_227B1A6E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_356(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void OUTLINED_FUNCTION_36_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_36_3()
{
  v2 = MEMORY[0x277D0C568];

  return sub_227B796DC(v0, v2);
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a1)
{

  return sub_227D48D78();
}

uint64_t OUTLINED_FUNCTION_36_9()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2)
{

  return sub_227D4D938();
}

uint64_t OUTLINED_FUNCTION_2_18()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t result)
{
  *v1 = result;
  *(result + 176) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_28()
{
  v1 = *(v0 + 5736);
  sub_227B1AC90(&unk_227D5EE88, *(v0 + 5728));
  sub_227B1AC90(&unk_227D5EEB0, v1);
}

uint64_t OUTLINED_FUNCTION_2_36()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return v1 + 16;
}

uint64_t sub_227B1AC90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_137_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_259_0(uint64_t a1)
{
}

unint64_t sub_227B1AD64()
{
  result = qword_280E7B7C8;
  if (!qword_280E7B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9320, &qword_227D5DF30);
    sub_227C4A0A0();
    sub_227C1888C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7C8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_382()
{
}

uint64_t OUTLINED_FUNCTION_382_0()
{

  return sub_227D492A8();
}

uint64_t OUTLINED_FUNCTION_447(uint64_t a1, uint64_t a2)
{

  return sub_227D48F68();
}

BOOL OUTLINED_FUNCTION_447_0()
{

  return os_log_type_enabled(v0, v1);
}

char *OUTLINED_FUNCTION_130_5(char *a1)
{

  return sub_227B3CA88(a1, v1, 1);
}

uint64_t sub_227B1AF8C()
{
  if (qword_280E7D0C0 != -1)
  {
    OUTLINED_FUNCTION_0_53(&qword_280E7D0C0);
  }

  v0 = sub_227D4CAB8();

  return __swift_project_value_buffer(v0, qword_280E7D410);
}

uint64_t OUTLINED_FUNCTION_189_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  result = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  *(v1 + 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_189_5()
{
}

void OUTLINED_FUNCTION_215(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_215_3()
{
}

uint64_t OUTLINED_FUNCTION_215_4()
{
  *(v3 - 104) = v2;
  *(v3 - 208) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_187()
{

  return sub_227D4AA58();
}

uint64_t OUTLINED_FUNCTION_187_3(uint64_t a1)
{

  return sub_227D4DA78();
}

unint64_t sub_227B1B1A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_227D4CE58();
  v6 = sub_227B1B2C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_227B1B268(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_227B1B268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_227B1B2C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_227B29D4C(a5, a6);
    *a1 = v9;
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
    result = sub_227D4D6C8();
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

uint64_t OUTLINED_FUNCTION_229_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_229_1(uint64_t a1)
{
  *(v1 + 192) = a1;

  return sub_227D49D58();
}

uint64_t OUTLINED_FUNCTION_276_0()
{
  *(v1 - 96) = 0;
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_232()
{
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance.GameMetadata(0);

  return swift_arrayInitWithCopy();
}

BOOL OUTLINED_FUNCTION_126(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_126_3()
{

  return sub_227D49E08();
}

__n128 OUTLINED_FUNCTION_126_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12, uint64_t a13)
{
  result = a11;
  *v13 = a11;
  *(v13 + 16) = a12;
  *(v13 + 32) = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_328_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 336) = a2;
  return result;
}

unint64_t OUTLINED_FUNCTION_184(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  *v20 = a1;

  return sub_227B1B1A4(v22, v21, va);
}

uint64_t OUTLINED_FUNCTION_184_0()
{
}

uint64_t OUTLINED_FUNCTION_184_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_78_1(unint64_t *a1)
{
  v2 = MEMORY[0x277D0D500];

  return sub_227B3DB5C(a1, v2);
}

unint64_t OUTLINED_FUNCTION_52_0(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

unint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{

  return sub_227BC4050(a1);
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return sub_227D4D938();
}

uint64_t OUTLINED_FUNCTION_6_9(unint64_t *a1)
{
  v2 = MEMORY[0x277D0D500];

  return sub_227BDE464(a1, v2);
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{
  v2 = MEMORY[0x277D0C4B8];

  return sub_227BE00D4(a1, v2);
}

uint64_t OUTLINED_FUNCTION_6_12()
{
}

unint64_t OUTLINED_FUNCTION_6_19(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

uint64_t OUTLINED_FUNCTION_6_21(uint64_t a1, uint64_t a2)
{

  return sub_227D4D938();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
}

uint64_t OUTLINED_FUNCTION_191()
{
}

uint64_t OUTLINED_FUNCTION_191_1()
{
  *(v0 + 16) = *(v0 + 40);

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return sub_227D49458();
}

uint64_t OUTLINED_FUNCTION_191_5()
{
}

void OUTLINED_FUNCTION_209_0()
{
}

uint64_t OUTLINED_FUNCTION_209_3()
{
}

uint64_t OUTLINED_FUNCTION_26_6(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return sub_227D49498();
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_26_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_227D4DC08();
}

uint64_t OUTLINED_FUNCTION_378_0()
{

  return sub_227D49D98();
}

unint64_t sub_227B1BD94()
{
  result = qword_280E7B7A8;
  if (!qword_280E7B7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9340, &qword_227D5DF58);
    sub_227C4A15C();
    sub_227C186CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_192_0()
{
}

uint64_t OUTLINED_FUNCTION_192_2(uint64_t a1)
{
  *(v1 + 144) = a1;

  return sub_227D49D58();
}

uint64_t OUTLINED_FUNCTION_192_3(uint64_t a1)
{

  return sub_227D48F28();
}

void sub_227B1BEF0()
{
  OUTLINED_FUNCTION_189_0();
  if (v4)
  {
    OUTLINED_FUNCTION_154();
    if (v6 != v7)
    {
      if (v5 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v5 = v2;
  }

  sub_227B1BFE4(*(v0 + 16), v5, v3);
  v8 = OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_19();
  if (v1)
  {
    sub_227B1D62C(v0 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_227B1BFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (v3)
  {
    v5 = OUTLINED_FUNCTION_397(a1, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v7 = OUTLINED_FUNCTION_87_1();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_10_0(v9);
    v11 = *(v10 + 72);
    OUTLINED_FUNCTION_241_0();
    v12 = swift_allocObject();
    _swift_stdlib_malloc_size(v12);
    if (v11)
    {
      OUTLINED_FUNCTION_187_0();
      v14 = v14 && v11 == -1;
      if (!v14)
      {
        v12[2] = a1;
        v12[3] = 2 * (v13 / v11);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void OUTLINED_FUNCTION_78_7()
{
}

uint64_t OUTLINED_FUNCTION_78_8(uint64_t a1)
{

  return sub_227D4D5B8();
}

id OUTLINED_FUNCTION_404()
{
  *(v1 + 22) = 2112;

  return v0;
}

void sub_227B1C228()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_189_0();
  if (v5)
  {
    OUTLINED_FUNCTION_154();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = *(v0 + 16);
  if (v6 <= v9)
  {
    v10 = *(v0 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v11 = OUTLINED_FUNCTION_87_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_10_0(v13);
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_241_0();
  v16 = OUTLINED_FUNCTION_436_0();
  _swift_stdlib_malloc_size(v16);
  if (!v15)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_187_0();
  v18 = v18 && v15 == -1;
  if (v18)
  {
    goto LABEL_22;
  }

  v16[2] = v9;
  v16[3] = 2 * (v17 / v15);
LABEL_17:
  v19 = OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_19();
  if (v1)
  {
    sub_227B1D62C(v0 + v21);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_267_1(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227B15A74(a1, v5, v4, a4);
}

void sub_227B1C430()
{
  OUTLINED_FUNCTION_11();
  sub_227D49B48();
  OUTLINED_FUNCTION_9();
  v53 = v1;
  v54 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  sub_227D49648();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_104();
  sub_227D49658();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = OUTLINED_FUNCTION_427_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_93_0();
  v15 = v14(v13);
  if (v15 == *MEMORY[0x277D0CA90])
  {
    v16 = OUTLINED_FUNCTION_101_3();
    v17(v16);
    v18 = OUTLINED_FUNCTION_149_0();
    v19(v18);
    v20 = sub_227D4A898();
    MEMORY[0x28223BE20](v20);
    OUTLINED_FUNCTION_330();
    *(v34 - 16) = v32;
    *(v34 - 8) = v33;
    OUTLINED_FUNCTION_230();
    v35 = OUTLINED_FUNCTION_212_2();
    OUTLINED_FUNCTION_445(v35);

    v36 = OUTLINED_FUNCTION_165_3();
    v37(v36);
LABEL_8:
    OUTLINED_FUNCTION_8_1();
    return;
  }

  if (v15 == *MEMORY[0x277D0CA78])
  {
    v21 = OUTLINED_FUNCTION_101_3();
    v23 = v22(v21);
    v24 = *v10;
    MEMORY[0x28223BE20](v23);
    OUTLINED_FUNCTION_330();
    *(v25 - 16) = v24;
    OUTLINED_FUNCTION_230();
    v26 = sub_227C4A494;
LABEL_7:
    OUTLINED_FUNCTION_445(v26);

    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x277D0CAA0])
  {
    v27 = OUTLINED_FUNCTION_101_3();
    v29 = v28(v27);
    v30 = *v10;
    MEMORY[0x28223BE20](v29);
    OUTLINED_FUNCTION_330();
    *(v31 - 16) = v30;
    OUTLINED_FUNCTION_230();
    v26 = sub_227C4A470;
    goto LABEL_7;
  }

  if (v15 == *MEMORY[0x277D0CA88])
  {
    v38 = OUTLINED_FUNCTION_101_3();
    v39(v38);
    v40 = OUTLINED_FUNCTION_173();
    v42 = v41(v40);
    MEMORY[0x28223BE20](v42);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_212_2();
    sub_227D49378();
    v43 = OUTLINED_FUNCTION_478();
    v44(v43);
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x277D0CA80])
  {
    v45 = OUTLINED_FUNCTION_101_3();
    v46(v45);
    v47 = (*(v53 + 32))(v4, v10, v54);
    MEMORY[0x28223BE20](v47);
    OUTLINED_FUNCTION_230();
    OUTLINED_FUNCTION_212_2();
    sub_227D49378();
    v48 = OUTLINED_FUNCTION_87_1();
    v49(v48);
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x277D0CA98])
  {
    v50 = OUTLINED_FUNCTION_101_3();
    v52 = v51(v50);
    MEMORY[0x28223BE20](v52);
    OUTLINED_FUNCTION_230();
    v26 = sub_227C4A444;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_323_0();
  sub_227D4D7F8();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t result)
{
  *(v2 - 424) = result;
  *(v2 - 224) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_6(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_35_9()
{

  return sub_227D4D668();
}

uint64_t OUTLINED_FUNCTION_239(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227D49498();
}

uint64_t OUTLINED_FUNCTION_136_4(unint64_t *a1)
{
  v3 = MEMORY[0x277CC9790];

  return sub_227B0F8D0(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_136_5()
{
}

void sub_227B1CC58()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93E8, &qword_227D5DFC8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_75_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93F0, &qword_227D5DFD0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_72_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_2_24();
  v7 = sub_227B1A6E4(v6);
  OUTLINED_FUNCTION_222_0(v7);
  swift_getKeyPath();
  v8 = OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_384_0(v8, v9);

  v10 = OUTLINED_FUNCTION_307_0();
  v11(v10);
  v12 = sub_227D49648();
  OUTLINED_FUNCTION_253_0(v12);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  v14 = sub_227B1A6E4(v13);
  OUTLINED_FUNCTION_68_4(v14);

  v15 = OUTLINED_FUNCTION_75_3();
  v16(v15);
  *(v23 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93F8, &qword_227D5E008);
  v17 = sub_227C4A790();
  OUTLINED_FUNCTION_421(v17);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v18);
  sub_227B1A6E4(&unk_280E7B740);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v19 = OUTLINED_FUNCTION_74_4();
  v20(v19);
  v21 = OUTLINED_FUNCTION_196_3();
  v22(v21);
  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_118(uint64_t result, __n128 a2)
{
  *(result + 216) = a2;
  *(result + 200) = a2;
  *(result + 184) = a2;
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_186_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_84_0()
{
  v1 = *(v0 + 448);
  v2 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  return v2 + 48;
}

uint64_t OUTLINED_FUNCTION_84_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return __swift_destroy_boxed_opaque_existential_0(va);
}

uint64_t OUTLINED_FUNCTION_219()
{

  return sub_227B639C0(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_219_2()
{
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_129_3()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_129_5(uint64_t a1)
{
  *(a1 + 8) = sub_227CD39CC;
  result = *(v1 + 440);
  *(v3 + 88) = v2;
  return result;
}

void OUTLINED_FUNCTION_75_0(uint64_t a1@<X8>)
{
  v3[104] = v5;
  v3[103] = v1;
  v3[102] = v4;
  v3[101] = v2;
  v3[100] = v6;
  v3[99] = a1;
  v3[48] = a1;
  v3[49] = v6;
  v3[50] = v2;
  v3[51] = v4;
  v3[52] = v1;
  v3[53] = v5;
}

uint64_t OUTLINED_FUNCTION_75_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_75_7()
{

  return swift_task_isCurrentExecutor();
}

unint64_t sub_227B1D344()
{
  result = qword_280E7B7A0;
  if (!qword_280E7B7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9418, &qword_227D5E050);
    sub_227C4A15C();
    sub_227C4A988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227D49D18();
}

void sub_227B1D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_450_0();
  v8 = v7;
  v9 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v9;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v9 + 24) >> 1)
  {
    sub_227B1BEF0();
    *v6 = v11;
  }

  OUTLINED_FUNCTION_451_0();
}

void sub_227B1D528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_346_0(v12);
  if (v13)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_294_0();
  sub_227B1D498(v14, 1, v15, v16, v11, v10);
  v17 = *v8;
  if (!*(v9 + 16))
  {

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v18 = (*(v17 + 24) >> 1) - *(v17 + 16);
  v19 = OUTLINED_FUNCTION_201();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  if (v18 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v7)
  {
LABEL_8:
    *v8 = v17;
    OUTLINED_FUNCTION_451_0();
    return;
  }

  v21 = *(v17 + 16);
  v13 = __OFADD__(v21, v7);
  v22 = v21 + v7;
  if (!v13)
  {
    *(v17 + 16) = v22;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_227B1D62C(uint64_t a1)
{
  OUTLINED_FUNCTION_294_0();
  v4 = v3;
  OUTLINED_FUNCTION_37();
  if (v6 < v5 || (v7 = OUTLINED_FUNCTION_201(), __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8), OUTLINED_FUNCTION_62_0(), v2 + *(v9 + 72) * v1 <= v4))
  {
    v10 = OUTLINED_FUNCTION_201();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v2)
  {
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_227B1D700()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_385_0(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9();
  v36 = v2;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_61_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9370, &qword_227D5DF80);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9378, &qword_227D5DF88);
  OUTLINED_FUNCTION_9();
  v37 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_363_0(v10, v11, v12, v13, v14, v15, v16, v17, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_324();
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  v19 = sub_227B1A6E4(v18);
  OUTLINED_FUNCTION_377_0(v19);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v20);
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_612();
  v21 = *(v5 + 8);
  v22 = OUTLINED_FUNCTION_193();
  v21(v22);
  v23 = *(v36 + 8);
  v24 = OUTLINED_FUNCTION_227();
  v23(v24);
  OUTLINED_FUNCTION_394_0();
  sub_227D48FE8();
  OUTLINED_FUNCTION_439_0();
  OUTLINED_FUNCTION_612();
  v25 = OUTLINED_FUNCTION_193();
  v21(v25);
  v26 = OUTLINED_FUNCTION_227();
  v23(v26);
  v27 = OUTLINED_FUNCTION_9_2();
  *(v38 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_85_1();
  v30 = sub_227C4AAF4(v29);
  OUTLINED_FUNCTION_449_0(v30);
  OUTLINED_FUNCTION_87();
  sub_227B1A6E4(v31);
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_324();
  OUTLINED_FUNCTION_150_3();
  sub_227D48FA8();
  v32 = *(v37 + 8);
  v33 = OUTLINED_FUNCTION_167_2();
  v32(v33);
  v34 = OUTLINED_FUNCTION_127_1();
  v32(v34);
  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_203_1()
{

  return sub_227B179FC();
}

uint64_t OUTLINED_FUNCTION_410(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return sub_227D49498();
}

uint64_t OUTLINED_FUNCTION_348()
{
  *(v2 - 160) = v0;

  return sub_227C111E4(v1);
}

uint64_t OUTLINED_FUNCTION_226_1()
{

  return sub_227D49D68();
}

uint64_t OUTLINED_FUNCTION_359_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_400()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_275(uint64_t a1)
{

  return sub_227D4A2E8();
}

uint64_t OUTLINED_FUNCTION_169_1(uint64_t a1)
{
  *(v1 + 224) = a1;

  return type metadata accessor for ChallengeService(0);
}

uint64_t OUTLINED_FUNCTION_90_1()
{
}

uint64_t OUTLINED_FUNCTION_391_1()
{
}

uint64_t OUTLINED_FUNCTION_311()
{
  v7 = *(v5 - 128);

  return sub_227BEA370(v4, v2, v1, v3, v7, v0);
}

uint64_t OUTLINED_FUNCTION_311_1()
{
}

uint64_t sub_227B1DD70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D49B38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_125(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

unint64_t OUTLINED_FUNCTION_125_0(uint64_t a1)
{

  return sub_227B0F6EC(a1);
}

uint64_t OUTLINED_FUNCTION_125_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_125_2()
{
}

uint64_t sub_227B1DE58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_62_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_227B1DEB0(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B38, &unk_227D4EF40);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - v7;
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    sub_227B63B1C(0, v9, 0);
    v10 = v21;
    v11 = *(sub_227D498E8() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16[1] = v6 + 32;
    v16[0] = *(v11 + 72);
    while (1)
    {
      v18(v12, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_227B63B1C(v13 > 1, v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
      v12 += v16[0];
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_165_0()
{
}

double OUTLINED_FUNCTION_165_2()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t sub_227B1E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_77_0();
  v13 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v14 = v13;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_135_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_70_0()
{
}

uint64_t OUTLINED_FUNCTION_70_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_70_7()
{

  return sub_227B23878(v1 + 40, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_70_9()
{
  *(v0 + 16) = v1;

  return sub_227D4CE58();
}

uint64_t sub_227B1E418()
{
  OUTLINED_FUNCTION_14();
  v26 = *(v0 + 104);
  OUTLINED_FUNCTION_69();
  v25 = *(v1 + 96);
  OUTLINED_FUNCTION_69();
  v3 = *(v2 + 88);
  v24 = *(v4 + 80);
  OUTLINED_FUNCTION_69();
  v23 = *(v5 + 72);
  OUTLINED_FUNCTION_69();
  v7 = *(v6 + 64);
  v22 = *(v8 + 56);
  OUTLINED_FUNCTION_69();
  v21 = *(v9 + 48);
  OUTLINED_FUNCTION_69();
  v11 = *(v10 + 40);
  v13 = v12[4];
  v14 = v12[3];
  v15 = v12[2];
  OUTLINED_FUNCTION_80_0();
  v17 = v16;
  OUTLINED_FUNCTION_5_4();
  *v18 = v17;

  (*(v14 + 8))(v13, v15);
  (*(v21 + 8))(v22, v11);
  (*(v23 + 8))(v24, v7);
  (*(v25 + 8))(v26, v3);

  OUTLINED_FUNCTION_220_1();

  return v19();
}

id OUTLINED_FUNCTION_21_3()
{

  return [v2 (v0 + 1048)];
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_199_0()
{
  *(v4 - 176) = *(v3 + 16);
  *(v4 - 320) = v0;
  v5 = *(v3 + 72);
  v6 = v3 + 16;
  *(v4 - 192) = v6 - 8;
  *(v4 - 184) = v5;
  *(v4 - 144) = v6;
  *(v4 - 168) = v2;
  *(v4 - 200) = v1;
}

uint64_t sub_227B1E890()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B1E988()
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v39 = v0[28];
  v40 = v0[30];
  v35 = v0[25];
  v37 = v0[27];
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = OUTLINED_FUNCTION_86_5();
  v5(v4);
  v6 = OUTLINED_FUNCTION_113();
  v7(v6);
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_173();
  v8(v9);
  v10 = (v8)(v1, v3);
  v18 = OUTLINED_FUNCTION_219_3(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37);
  v20 = v19(v18);
  v28 = OUTLINED_FUNCTION_221_2(v20, v21, v22, v23, v24, v25, v26, v27, v34, v36, v38, v39, v40);
  v29(v28);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_176_1();

  return v30();
}

uint64_t OUTLINED_FUNCTION_82_1()
{
  *(v1 - 80) = v0[62];
  *(v1 - 88) = v0[41];
  return v0[22];
}

uint64_t OUTLINED_FUNCTION_211()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_82_5()
{
}

void OUTLINED_FUNCTION_82_7()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t OUTLINED_FUNCTION_82_8()
{
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_69_6(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_69_7(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_69_8(unint64_t *a1)
{
  v3 = MEMORY[0x277D0D058];

  return sub_227B0F8D0(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_69_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_41_1()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_59_2()
{
  *(v0 + 14) = v3;
  *(v0 + 22) = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_59_3(unint64_t *a1)
{
  v3 = MEMORY[0x277D0CB20];

  return sub_227B0F660(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return sub_227D4CF78();
}

uint64_t OUTLINED_FUNCTION_59_7()
{
  type metadata accessor for $DistributedIntegrationTestsServiceProtocol(0);

  return sub_227D49D48();
}

unint64_t OUTLINED_FUNCTION_194_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_227B1B1A4(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_194_2()
{

  return sub_227D49378();
}

uint64_t OUTLINED_FUNCTION_174_4()
{

  return sub_227D4DB78();
}

uint64_t OUTLINED_FUNCTION_174_5(uint64_t a1)
{
  *(v1 + 112) = a1;

  return type metadata accessor for GameDebuggerService(0);
}

uint64_t OUTLINED_FUNCTION_174_6(uint64_t a1)
{
}

uint64_t sub_227B1EF1C()
{

  if (*(v0 + 136))
  {
  }

  if (*(v0 + 272) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 280, 7);
}

uint64_t sub_227B1EFE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227B1F020()
{
  v1 = sub_227D4A058();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_227B1F0F0()
{

  if (*(v0 + 32) != 1)
  {
  }

  if (*(v0 + 120))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t sub_227B1F1B4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227B1F280(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F308(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1F3B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F438(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F568(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1F610(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1F740(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_227D49188();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B1F7C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_227D49188();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B1FBE0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_227B1FCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_227D4AC98();
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_227B1FD44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_227D4AC98();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B20094()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227B200E0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227B20120()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_227B20178(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 16);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_227D49328();
    v7 = OUTLINED_FUNCTION_36_4(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_227B20208()
{
  OUTLINED_FUNCTION_37();
  if (v3 == 2147483646)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    v4 = v2;
    sub_227D49328();
    v5 = OUTLINED_FUNCTION_36_4(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_227B202A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_227D49188();
    v6 = OUTLINED_FUNCTION_36_4(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_227B2032C()
{
  OUTLINED_FUNCTION_37();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_227D49188();
    v5 = OUTLINED_FUNCTION_36_4(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_227B203A4()
{
  OUTLINED_FUNCTION_37();
  v2 = sub_227D498E8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_227B203E8()
{
  OUTLINED_FUNCTION_37();
  v2 = sub_227D498E8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_227B204A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_11_12();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_227D492A8();
    OUTLINED_FUNCTION_11_12();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_227B205B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_11_12();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_227D492A8();
    OUTLINED_FUNCTION_11_12();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

BOOL sub_227B20770@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227B20738(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_227B207D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_227D49328();
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_227B20868(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_227D49328();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B209F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_342();
  v4 = sub_227D49328();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_227B20A38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_342();
  v4 = sub_227D49328();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_227B20AC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227B20B04()
{
  OUTLINED_FUNCTION_66_6();

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_227B20B3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227B20B88()
{

  OUTLINED_FUNCTION_94_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_227B20BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 176) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_66_6();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 9, v4 | 7);
}

uint64_t sub_227B20C90(uint64_t a1, int a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_11_12();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_58();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_227B20D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_11_12();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_227B20DEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
    OUTLINED_FUNCTION_11_12();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
      v11 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_227B20ECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
    OUTLINED_FUNCTION_11_12();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 28);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
      v11 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_227B210D8(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    OUTLINED_FUNCTION_11_12();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
      OUTLINED_FUNCTION_11_12();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        sub_227D492A8();
        OUTLINED_FUNCTION_11_12();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[7];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
          v11 = a3[11];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_227B21244(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    OUTLINED_FUNCTION_11_12();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
      OUTLINED_FUNCTION_11_12();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        sub_227D492A8();
        OUTLINED_FUNCTION_11_12();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[7];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
          v11 = a4[11];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_227B213AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_11_12();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_227D492A8();
    OUTLINED_FUNCTION_11_12();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_146_4(a1 + *(a3 + 28));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_227B21498()
{
  OUTLINED_FUNCTION_234_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_11_12();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_227D492A8();
    OUTLINED_FUNCTION_11_12();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 28) + 8) = v0;
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_227B21584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_11_12();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_146_4(a1 + *(a3 + 24));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_227B2162C()
{
  OUTLINED_FUNCTION_234_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_11_12();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = v0;
  }
}

uint64_t sub_227B2174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_227B217E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227B218E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_11_12();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_227B21990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_11_12();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v11 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_227B21A60()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  OUTLINED_FUNCTION_342_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_227B21AD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_227D4A408();
    OUTLINED_FUNCTION_11_12();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
      v11 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_227B21BA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_227D4A408();
    OUTLINED_FUNCTION_11_12();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
      v11 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_227B21C78()
{

  OUTLINED_FUNCTION_378();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_227B21CC8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_227B21D10()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227B21D58()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_227B21DC8(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_419();
  sub_227D4BA28();
  OUTLINED_FUNCTION_11_12();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_197_4();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

void sub_227B21E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_342();
  sub_227D4BA28();
  OUTLINED_FUNCTION_11_12();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_202_0();

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = a2;
  }
}

uint64_t sub_227B21F14(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_419();
  sub_227D4B9A8();
  OUTLINED_FUNCTION_11_12();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_197_4();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 3)
    {
      return v11 - 2;
    }

    else
    {
      return 0;
    }
  }
}

void sub_227B21FAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_342();
  sub_227D4B9A8();
  OUTLINED_FUNCTION_11_12();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_202_0();

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 2;
  }
}

uint64_t sub_227B220FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227B22134()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227B2216C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_227B223DC()
{
  OUTLINED_FUNCTION_6();
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  OUTLINED_FUNCTION_10_0(v2);
  v1[13] = v3;
  v1[14] = OUTLINED_FUNCTION_30();
  v4 = sub_227D4AE28();
  v1[15] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_30();
  v6 = swift_task_alloc();
  v1[18] = v6;
  *v6 = v1;
  v6[1] = sub_227B22510;
  OUTLINED_FUNCTION_13_2();

  return sub_227B22DC4();
}

uint64_t sub_227B22510()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 152) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227B22658()
{
  v1 = v0[19];
  result = sub_227B23878(v0[12] + 40, (v0 + 2));
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v0[20] = v5;
  v6 = (v1 + 40 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v6 + 2;
    ++v3;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);
      sub_227D4CE58();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_21();
        result = sub_227B25F88(v13, v14, v15, v5);
        v5 = result;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v16 = OUTLINED_FUNCTION_12(v10);
        result = sub_227B25F88(v16, v11 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      goto LABEL_2;
    }
  }

  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_227B227D4;
  v18 = OUTLINED_FUNCTION_13_2();

  return sub_227D45C98(v18);
}

uint64_t sub_227B227D4()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v2 + 176) = v6;
  *(v2 + 184) = v0;

  if (v0)
  {

    sub_227B26090(v2 + 16);
  }

  else
  {
    sub_227B26090(v2 + 16);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_227B22920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_1();
  a20 = v22;
  v25 = 0;
  v26 = v22[16];
  a10 = MEMORY[0x277D84F98];
  v28 = v22[22];
  v27 = v22[23];
  v29 = *(v28 + 16);
  for (i = (v26 + 8); ; (*i)(v22[17], v22[15]))
  {
    if (v29 == v25)
    {

      v31 = a10;
      goto LABEL_8;
    }

    if (v25 >= *(v28 + 16))
    {
      __break(1u);
      return;
    }

    (*(v26 + 16))(v22[17], v22[22] + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v22[15]);
    sub_227B238D4(&a10);
    if (v27)
    {
      break;
    }

    ++v25;
  }

  v32 = v22[17];
  v33 = v22[15];

  (*i)(v32, v33);

  v31 = 0;
LABEL_8:
  v34 = *(v22[19] + 16);
  if (v34)
  {
    v35 = v22[13];
    a10 = MEMORY[0x277D84F90];
    v36 = OUTLINED_FUNCTION_1_3();
    sub_227B26EC4(v36, v37, v38);
    v39 = 0;
    v40 = a10;
    while (1)
    {
      v41 = v22[19] + v39;
      v42 = *(v41 + 40);
      if (!v42 || !v31 || !*(v31 + 16))
      {
        break;
      }

      v43 = *(v41 + 32);
      sub_227D4CE58();
      v44 = sub_227B2664C(v43, v42);
      v45 = v22[14];
      if ((v46 & 1) == 0)
      {

        goto LABEL_16;
      }

      v47 = v44;
      a9 = *(v31 + 56);
      v48 = sub_227D4AB28();
      (*(*(v48 - 8) + 16))(v45, a9 + *(*(v48 - 8) + 72) * v47, v48);

      v49 = v45;
      v50 = 0;
      v51 = v48;
LABEL_17:
      __swift_storeEnumTagSinglePayload(v49, v50, 1, v51);
      a10 = v40;
      v53 = *(v40 + 16);
      v52 = *(v40 + 24);
      if (v53 >= v52 >> 1)
      {
        v56 = OUTLINED_FUNCTION_12(v52);
        sub_227B26EC4(v56, v53 + 1, 1);
        v40 = a10;
      }

      *(v40 + 16) = v53 + 1;
      OUTLINED_FUNCTION_19();
      sub_227B26EE4(v55, v40 + v54 + *(v35 + 72) * v53);
      v39 += 16;
      if (!--v34)
      {
        goto LABEL_22;
      }
    }

    v45 = v22[14];
LABEL_16:
    v51 = sub_227D4AB28();
    v49 = v45;
    v50 = 1;
    goto LABEL_17;
  }

LABEL_22:

  OUTLINED_FUNCTION_16_0();

  v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227B22C20()
{
  v1 = *(v0[19] + 16);
  if (v1)
  {
    v2 = v0[13];
    v12 = MEMORY[0x277D84F90];
    sub_227B26EC4(0, v1, 0);
    v3 = sub_227D4AB28();
    do
    {
      __swift_storeEnumTagSinglePayload(v0[14], 1, 1, v3);
      v5 = *(v12 + 16);
      v4 = *(v12 + 24);
      if (v5 >= v4 >> 1)
      {
        v8 = OUTLINED_FUNCTION_12(v4);
        sub_227B26EC4(v8, v5 + 1, 1);
      }

      *(v12 + 16) = v5 + 1;
      OUTLINED_FUNCTION_19();
      sub_227B26EE4(v7, v12 + v6 + *(v2 + 72) * v5);
      --v1;
    }

    while (v1);
  }

  v9 = OUTLINED_FUNCTION_8_0();

  return v10(v9);
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

uint64_t sub_227B22DC4()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_227D4AD28();
  v1[8] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[9] = v4;
  v1[10] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B22E6C()
{
  v0[2] = MEMORY[0x277D84FA0];
  v2 = MEMORY[0x277D84F98];
  v0[3] = MEMORY[0x277D84F98];
  v0[4] = v2;
  v0[5] = v2;
  sub_227B252DC(v0[6], (v0 + 2), (v0 + 4), v0 + 3, (v0 + 5));
  v3 = v0[2];
  v0[11] = v3;
  if (!*(v3 + 16))
  {
    v9 = v0[6];
    v10 = *(v9 + 16);
    if (v10)
    {
      v28 = MEMORY[0x277D84F90];
      v11 = OUTLINED_FUNCTION_1_3();
      sub_227B26EA4(v11, v12, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
      v15 = 0;
      OUTLINED_FUNCTION_5(v14);
      v26 = v9 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v27 = v16;
      v17 = v0[3];
      do
      {
        if (*(v17 + 16) && (v18 = sub_227B266C4(v26 + *(v27 + 72) * v15), (v19 & 1) != 0))
        {
          OUTLINED_FUNCTION_17_2(v18);
        }

        else
        {
          v1 = 0;
          v9 = 0;
        }

        v21 = *(v28 + 16);
        v20 = *(v28 + 24);
        if (v21 >= v20 >> 1)
        {
          v23 = OUTLINED_FUNCTION_12(v20);
          sub_227B26EA4(v23, v21 + 1, 1);
        }

        ++v15;
        *(v28 + 16) = v21 + 1;
        v22 = v28 + 16 * v21;
        *(v22 + 32) = v1;
        *(v22 + 40) = v9;
      }

      while (v10 != v15);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_23();

    __asm { BRAA            X2, X16 }
  }

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_227B23128;
  OUTLINED_FUNCTION_23();

  return sub_227B6EB28(v5, v6);
}

uint64_t sub_227B23128()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B23234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = *(v14[13] + 16);
  if (v15)
  {
    v16 = v14[9] + 16;
    OUTLINED_FUNCTION_19();
    v19 = v17 + v18;
    v39 = *(v16 + 56);
    v40 = v20;
    v21 = MEMORY[0x277D84F90];
    do
    {
      v22 = v14[10];
      v23 = v14[8];
      v40(v22, v19, v23);
      v24 = sub_227D4AD18();
      v26 = v25;
      (*(v16 - 8))(v22, v23);
      if (v26)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = OUTLINED_FUNCTION_21();
          v21 = sub_227B25F88(v30, v31, v32, v21);
        }

        v28 = *(v21 + 2);
        v27 = *(v21 + 3);
        if (v28 >= v27 >> 1)
        {
          v21 = sub_227B25F88((v27 > 1), v28 + 1, 1, v21);
        }

        *(v21 + 2) = v28 + 1;
        v29 = &v21[16 * v28];
        *(v29 + 4) = v24;
        *(v29 + 5) = v26;
      }

      v19 += v39;
      --v15;
    }

    while (v15);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v14[14] = v21;
  v33 = sub_227D4CE58();
  v14[15] = sub_227B25EF8(v33);
  v34 = swift_task_alloc();
  v14[16] = v34;
  *v34 = v14;
  v34[1] = sub_227B233FC;
  OUTLINED_FUNCTION_16_0();

  return sub_227D465B0(v35, v36);
}

uint64_t sub_227B233FC(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 136) = v1;

  if (v1)
  {
  }

  else
  {

    *(v4 + 144) = a1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_227B23570()
{
  sub_227B25854(v0[18], v0 + 4, v0 + 3, v0 + 5);

  v1 = v0[6];
  if (*(v1 + 16))
  {
    v17 = MEMORY[0x277D84F90];
    v2 = OUTLINED_FUNCTION_1_3();
    sub_227B26EA4(v2, v3, v4);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    OUTLINED_FUNCTION_5(v5);
    OUTLINED_FUNCTION_19();
    v16 = v1 + v6;
    v7 = v0[3];
    do
    {
      if (*(v7 + 16))
      {
        v8 = sub_227B266C4(v16);
        if (v9)
        {
          OUTLINED_FUNCTION_17_2(v8);
        }
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = OUTLINED_FUNCTION_12(v10);
        sub_227B26EA4(v13, v11 + 1, 1);
      }

      OUTLINED_FUNCTION_25_0();
    }

    while (!v12);
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_23();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_227B2370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[6];
  if (*(v15 + 16))
  {
    v38 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_1_3();
    sub_227B26EA4(v16, v17, v18);
    v19 = v38;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    OUTLINED_FUNCTION_5(v20);
    OUTLINED_FUNCTION_19();
    a9 = v14;
    a10 = v15 + v21;
    v22 = v14[3];
    do
    {
      if (*(v22 + 16))
      {
        v23 = sub_227B266C4(a10);
        if (v24)
        {
          OUTLINED_FUNCTION_17_2(v23);
        }
      }

      a11 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = OUTLINED_FUNCTION_12(v25);
        sub_227B26EA4(v28, v26 + 1, 1);
      }

      OUTLINED_FUNCTION_25_0();
    }

    while (!v27);
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227B238D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67E0, &qword_227D4E578);
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_0();
  v78 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67E8, &qword_227D4E580);
  OUTLINED_FUNCTION_5(v7);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  v10 = v73 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v11);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v83 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F8, &qword_227D4E588);
  OUTLINED_FUNCTION_5(v14);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_0();
  v81 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v17);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v20 = v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6808, &qword_227D4E590);
  OUTLINED_FUNCTION_5(v21);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  v24 = v73 - v23;
  v84 = sub_227D4AA88();
  OUTLINED_FUNCTION_9();
  v82 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = (v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v79 = v30;
  v80 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  v33 = v73 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  OUTLINED_FUNCTION_5(v34);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26_0();
  v77 = v36;
  result = sub_227D4AE08();
  if (v38)
  {
    v39 = result;
    v40 = v38;
    v85 = v28;
    v73[1] = a1;
    sub_227D4CE58();
    v75 = v40;
    v76 = v33;
    v73[0] = v39;
    sub_227D4A888();
    v41 = sub_227D4ADB8();
    if (v41 == 2 || (v41 & 1) == 0)
    {
      v86 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_3_3();
      v74 = sub_227B128A8(v46, v47, MEMORY[0x277D0D558]);
      v45 = &qword_227D4E598;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6818, &qword_227D4E598);
      OUTLINED_FUNCTION_4_2(&qword_27D7E6820);
      OUTLINED_FUNCTION_27_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6838, &qword_227D4E5A8);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_227D4E520;
      sub_227D4AA78();
      v86 = v42;
      OUTLINED_FUNCTION_3_3();
      v74 = sub_227B128A8(v43, v44, MEMORY[0x277D0D558]);
      v45 = &qword_227D4E598;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6818, &qword_227D4E598);
      OUTLINED_FUNCTION_4_2(&qword_27D7E6820);
      OUTLINED_FUNCTION_27_0();
    }

    v48 = v84;
    sub_227D4D5B8();
    sub_227D4ADC8();
    if (v49)
    {
      sub_227D4A8D8();
      if (v2)
      {

LABEL_17:
        (*(v82 + 8))(v45, v48);
        return (*(v79 + 8))(v76, v80);
      }

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6828, &qword_227D4E5A0);
    __swift_storeEnumTagSinglePayload(v24, v50, 1, v51);
    v74 = sub_227D4ADE8();
    v84 = v52;
    v53 = v81;
    sub_227D4AE18();
    sub_227D4AD48();
    v54 = OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_29(v54);
    if (v68)
    {
      sub_227B2746C(v53, &qword_27D7E67F8, &qword_227D4E588);
    }

    else
    {
      sub_227D4AD38();
      v56 = v55;
      OUTLINED_FUNCTION_22_4();
      (*(v57 + 8))(v58, &qword_227D4E598);
      if (v56)
      {
        sub_227D4CE58();
        sub_227D4A768();
        if (v2)
        {

          sub_227B2746C(v24, &qword_27D7E6808, &qword_227D4E590);
          v45 = v85;
          goto LABEL_17;
        }

        v59 = 0;
LABEL_19:
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
        __swift_storeEnumTagSinglePayload(v20, v59, 1, v60);
        v61 = v78;
        sub_227D4ADF8();
        sub_227D4B268();
        v62 = OUTLINED_FUNCTION_13_2();
        OUTLINED_FUNCTION_29(v62);
        if (v68)
        {
          v63 = &qword_27D7E67E0;
          v64 = &qword_227D4E578;
          v65 = v61;
        }

        else
        {
          sub_227D4B258();
          OUTLINED_FUNCTION_22_4();
          (*(v66 + 8))(v61, &qword_227D4E598);
          v67 = sub_227D4BB48();
          OUTLINED_FUNCTION_29(v10);
          if (!v68)
          {
            sub_227BD2BBC(v83);
            OUTLINED_FUNCTION_22_4();
            (*(v70 + 8))(v10, v67);
LABEL_26:
            sub_227D4ADA8();
            sub_227D4ADD8();
            v71 = v77;
            sub_227D4AAD8();
            v72 = sub_227D4AB28();
            __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
            return sub_227B240A8(v71, v73[0], v75);
          }

          v63 = &qword_27D7E67E8;
          v64 = &qword_227D4E580;
          v65 = v10;
        }

        sub_227B2746C(v65, v63, v64);
        v69 = sub_227D4AA38();
        __swift_storeEnumTagSinglePayload(v83, 1, 1, v69);
        goto LABEL_26;
      }
    }

    v59 = 1;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_227B240A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_227D4AB28();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_227B2746C(a1, &qword_27D7E67B0, &unk_227D62060);
    sub_227B263A4(a2, a3, v10);

    return sub_227B2746C(v10, &qword_27D7E67B0, &unk_227D62060);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_227B2676C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t sub_227B24274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_227B2746C(a1, &qword_27D7E6858, &qword_227D61390);
    sub_227B264EC(a2, a3, v10);

    return sub_227B2746C(v10, &qword_27D7E6858, &qword_227D61390);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_227B268E0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t sub_227B24448()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A218();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_227B24528;
  v6 = OUTLINED_FUNCTION_13_2();

  return sub_227B24B80(v6);
}

uint64_t sub_227B24528()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 64) = v9;

  if (v0)
  {

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    *(v5 + 72) = v3;
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_227B24668()
{
  OUTLINED_FUNCTION_20();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 120), *(*(v0 + 24) + 144));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_227B24728;

  return sub_227BC0AB4();
}

uint64_t sub_227B24728()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = swift_task_alloc();
    v3[12] = v10;
    *v10 = v5;
    v10[1] = sub_227B24894;
    v11 = v3[2];

    return sub_227D46F2C(v11);
  }
}

uint64_t sub_227B24894()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 104) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227B249D0()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v0 + 40);
      v15 = MEMORY[0x277D84F90];
      v4 = OUTLINED_FUNCTION_1_3();
      sub_227B26F54(v4, v5, v6);
      v7 = v1 + 40;
      do
      {
        sub_227D4CE58();
        sub_227D4A208();
        v9 = *(v15 + 16);
        v8 = *(v15 + 24);
        if (v9 >= v8 >> 1)
        {
          v11 = OUTLINED_FUNCTION_12(v8);
          sub_227B26F54(v11, v9 + 1, 1);
        }

        *(v15 + 16) = v9 + 1;
        OUTLINED_FUNCTION_19();
        (*(v3 + 32))(v15 + v10 + *(v3 + 72) * v9);
        v7 += 16;
        --v2;
      }

      while (v2);
    }
  }

  v12 = OUTLINED_FUNCTION_8_0();

  return v13(v12);
}

uint64_t sub_227B24B1C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B24B80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B24BAC()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B8, &qword_227D4E560);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[4] = v6;
  *(v6 + 16) = xmmword_227D4E520;
  (*(v4 + 16))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_227B24D04;
  OUTLINED_FUNCTION_13_2();

  return sub_227B24FC4();
}

uint64_t sub_227B24D04()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 48) = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
    swift_setDeallocating();
    sub_227B26320();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B24E14()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 48);
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
    sub_227D4CE58();

    v4 = *(v0 + 8);

    return v4(v2, v3);
  }

  else
  {

    sub_227D49E08();
    sub_227B128A8(&qword_27D7E67C8, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67D0, &qword_227D63360);
    sub_227D49DB8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v6();
  }
}

uint64_t sub_227B24F60()
{
  OUTLINED_FUNCTION_6();
  swift_setDeallocating();
  sub_227B26320();
  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B24FC4()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_227B25054;
  OUTLINED_FUNCTION_13_2();

  return sub_227B22DC4();
}

uint64_t sub_227B25054()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

void sub_227B25174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = 0;
  v16 = *(v14 + 32);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
LABEL_2:
  v19 = (v16 + 40 + 16 * v15);
  while (v17 != v15)
  {
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
      return;
    }

    v20 = v19 + 2;
    ++v15;
    v21 = *v19;
    v19 += 2;
    if (v21)
    {
      v22 = *(v20 - 3);
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = OUTLINED_FUNCTION_21();
        v18 = sub_227B25F88(v26, v27, v28, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_227B25F88((v23 > 1), v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v25 = &v18[16 * v24];
      *(v25 + 4) = v22;
      *(v25 + 5) = v21;
      goto LABEL_2;
    }
  }

  v29 = *(v14 + 40);

  sub_227D49DA8();
  if (v29)
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_16_0();

    v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227B252DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v57[1] = a3;
  v57[2] = a5;
  v64 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = v57 - v16;
  sub_227B27EC4();
  v67 = v17;
  result = MEMORY[0x28223BE20](v17);
  v68 = (v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = 0;
  v69 = *(a1 + 16);
  v70 = v11;
  v65 = (v12 + 32);
  v66 = (v12 + 8);
  v58 = a1;
  v59 = a4;
  v61 = v15;
  while (v69 != v20)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v22 = *(v21 - 8);
    v23 = *(v22 + 80);
    v24 = *(v22 + 72);
    v74 = v20;
    v25 = a1 + ((v23 + 32) & ~v23) + v24 * v20;
    v26 = v68;
    result = sub_227D4A8C8();
    if (v6)
    {
      break;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = v26[1];
    v71 = *v26;
    v72 = v28;
    if (!EnumCaseMultiPayload)
    {
      v39 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6898, &qword_227D4E5C8) + 48);
      v40 = v60;
      (*v65)(v60, v39, v70);
      v41 = sub_227D4A6A8();
      sub_227B274CC(&v73, v41, v42);

      v43 = v63;
      (*(v22 + 16))(v63, v25, v21);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v21);
      v44 = v43;
      v46 = v70;
      v45 = v71;
      v47 = v72;
LABEL_14:
      sub_227B24274(v44, v45, v47);
      result = (*v66)(v40, v46);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v48 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6898, &qword_227D4E5C8) + 48);
      v40 = v61;
      (*v65)(v61, v48, v70);
      v49 = sub_227D4A6A8();
      sub_227B274CC(&v73, v49, v50);

      v51 = v63;
      (*(v22 + 16))(v63, v25, v21);
      __swift_storeEnumTagSinglePayload(v51, 0, 1, v21);
      v44 = v51;
      v46 = v70;
      v45 = v71;
      v47 = v72;
      goto LABEL_14;
    }

    v62 = 0;
    swift_isUniquelyReferenced_nonNull_native();
    v73 = *a4;
    v29 = v73;
    v30 = sub_227B266C4(v25);
    if (__OFADD__(*(v29 + 16), (v31 & 1) == 0))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      result = sub_227D4DAE8();
      __break(1u);
      return result;
    }

    v32 = v30;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6860, &qword_227D4E5C0);
    if (sub_227D4D7C8())
    {
      v34 = sub_227B266C4(v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_22;
      }

      v32 = v34;
    }

    v36 = v73;
    if (v33)
    {
      v37 = (v73[7] + 16 * v32);
      v38 = v72;
      *v37 = v71;
      v37[1] = v38;
    }

    else
    {
      v73[(v32 >> 6) + 8] |= 1 << v32;
      result = (*(v22 + 16))(v36[6] + v32 * v24, v25, v21);
      v52 = (v36[7] + 16 * v32);
      v53 = v72;
      *v52 = v71;
      v52[1] = v53;
      v54 = v36[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_21;
      }

      v36[2] = v56;
    }

    a1 = v58;
    a4 = v59;
    *v59 = v36;
    v6 = v62;
LABEL_18:
    v20 = v74 + 1;
  }

  return result;
}

uint64_t sub_227B25854(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v73 = a4;
  v76 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v12 = MEMORY[0x28223BE20](v11);
  v79 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v80 = v69 - v15;
  v16 = 0;
  v82 = *(a1 + 16);
  v83 = result;
  v77 = v17 + 16;
  v78 = v17;
  v74 = (v17 + 32);
  v70 = (v17 + 8);
  v71 = a3;
  v72 = v9;
  v69[1] = a1;
  while (v82 != v16)
  {
    sub_227D4AE68();
    result = sub_227D4AE58();
    if (v18)
    {
      v19 = v18;
      v81 = result;
      v20 = sub_227D4AE38();
      if (v21)
      {
        v22 = *v76;
        if (*(*v76 + 16) && (v23 = sub_227B2664C(v20, v21), (v24 & 1) != 0))
        {
          v25 = *(v22 + 56) + *(v78 + 72) * v23;
          v26 = v75;
          (*(v78 + 16))(v75, v25, v83);
          v27 = 0;
        }

        else
        {
          v27 = 1;
          v26 = v75;
        }

        v28 = v83;
        __swift_storeEnumTagSinglePayload(v26, v27, 1, v83);

        if (__swift_getEnumTagSinglePayload(v26, 1, v28) == 1)
        {
          sub_227B2746C(v26, &qword_27D7E6858, &qword_227D61390);
        }

        else
        {
          v29 = v80;
          (*v74)(v80, v26, v28);
          sub_227D4CE58();
          swift_isUniquelyReferenced_nonNull_native();
          v84 = *a3;
          v30 = v84;
          v31 = sub_227B266C4(v29);
          if (__OFADD__(v30[2], (v32 & 1) == 0))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            result = sub_227D4DAE8();
            __break(1u);
            return result;
          }

          v33 = v31;
          v34 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6860, &qword_227D4E5C0);
          if (sub_227D4D7C8())
          {
            v35 = sub_227B266C4(v80);
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_44;
            }

            v33 = v35;
          }

          v37 = v84;
          if (v34)
          {
            v38 = (v84[7] + 16 * v33);
            *v38 = v81;
            v38[1] = v19;

            v39 = v83;
          }

          else
          {
            v84[(v33 >> 6) + 8] |= 1 << v33;
            v39 = v83;
            (*(v78 + 16))(v37[6] + *(v78 + 72) * v33, v80, v83);
            v40 = (v37[7] + 16 * v33);
            *v40 = v81;
            v40[1] = v19;
            v41 = v37[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_42;
            }

            v37[2] = v43;
          }

          v45 = v70;
          v44 = v71;
          *v71 = v37;
          a3 = v44;
          (*v45)(v80, v39);
          v9 = v72;
        }
      }

      v46 = sub_227D4AE48();
      if (v47)
      {
        v48 = *v73;
        if (*(*v73 + 16) && (v49 = sub_227B2664C(v46, v47), (v50 & 1) != 0))
        {
          (*(v78 + 16))(v9, *(v48 + 56) + *(v78 + 72) * v49, v83);
          v51 = 0;
        }

        else
        {
          v51 = 1;
        }

        v52 = v83;
        __swift_storeEnumTagSinglePayload(v9, v51, 1, v83);

        if (__swift_getEnumTagSinglePayload(v9, 1, v52) == 1)
        {

          result = sub_227B2746C(v9, &qword_27D7E6858, &qword_227D61390);
        }

        else
        {
          v53 = v79;
          (*v74)(v79, v9, v52);
          swift_isUniquelyReferenced_nonNull_native();
          v84 = *a3;
          v54 = v84;
          v55 = sub_227B266C4(v53);
          if (__OFADD__(v54[2], (v56 & 1) == 0))
          {
            goto LABEL_41;
          }

          v57 = v55;
          v58 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6860, &qword_227D4E5C0);
          if (sub_227D4D7C8())
          {
            v59 = sub_227B266C4(v79);
            v9 = v72;
            if ((v58 & 1) != (v60 & 1))
            {
              goto LABEL_44;
            }

            v57 = v59;
          }

          else
          {
            v9 = v72;
          }

          v61 = v84;
          if (v58)
          {
            v62 = (v84[7] + 16 * v57);
            *v62 = v81;
            v62[1] = v19;

            v63 = v83;
          }

          else
          {
            v84[(v57 >> 6) + 8] |= 1 << v57;
            v63 = v83;
            (*(v78 + 16))(v61[6] + *(v78 + 72) * v57, v79, v83);
            v64 = (v61[7] + 16 * v57);
            *v64 = v81;
            v64[1] = v19;
            v65 = v61[2];
            v42 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v42)
            {
              goto LABEL_43;
            }

            v61[2] = v66;
          }

          v68 = v70;
          v67 = v71;
          *v71 = v61;
          a3 = v67;
          result = (*v68)(v79, v63);
        }
      }

      else
      {
      }
    }

    ++v16;
  }

  return result;
}

void *sub_227B25EF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227B260E4(*(a1 + 16), 0);
  v4 = sub_227B27D68(&v6, v3 + 4, v2, a1);
  sub_227B223D4(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

char *sub_227B25F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227B260E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_227B26160(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227B2624C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A218(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A218();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227B26320()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_227B263A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_227B2664C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6840, &qword_227D4E5B0);
    sub_227D4D7C8();

    v8 = *(v14 + 56);
    v9 = sub_227D4AB28();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_227D4D7E8();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_227D4AB28();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_227B264EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_227B2664C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A0, &qword_227D4E5D0);
    sub_227D4D7C8();

    v8 = *(v14 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_227D4D7E8();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

unint64_t sub_227B2664C(uint64_t a1, uint64_t a2)
{
  sub_227D4DB58();
  sub_227D4D048();
  v4 = sub_227D4DB98();

  return sub_227B26BCC(a1, a2, v4);
}

unint64_t sub_227B266C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  sub_227B15A74(&qword_27D7E6868, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D508]);
  v2 = sub_227D4CE98();

  return sub_227B26C80(a1, v2);
}

uint64_t sub_227B2676C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_227B2664C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6840, &qword_227D4E5B0);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_227B2664C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = sub_227D4AB28();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_227B26A60(v12, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

uint64_t sub_227B268E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_227B2664C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A0, &qword_227D4E5D0);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_227B2664C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_227B26B10(v12, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

uint64_t sub_227B26A60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_227D4AB28();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_227B26B10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_227B26BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_227D4DA78() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_227B26C80(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B15A74(&qword_27D7E6870, &qword_27D7E67C0, &unk_227D4FB20, MEMORY[0x277D0D510]);
    v9 = sub_227D4CF38();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_227B26E40(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_227D4E530;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_227B26EA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227B26F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227B26EC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227B270A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_227B26EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_227B26F54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227B27270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227B26F74(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6878, &unk_227D571F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227B270A4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6848, &qword_227D4E5B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B26160(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_227B27270(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67D8, &qword_227D4E570);
  v10 = *(sub_227D4A218() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_227D4A218() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B2624C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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

uint64_t sub_227B2746C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL sub_227B274CC(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_227D4DB58();
  sub_227D4D048();
  v8 = sub_227D4DB98();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_227D4DA78() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      sub_227D4CE58();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  sub_227D4CE58();
  sub_227B27874(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_227B27618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  result = sub_227D4D638();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_227B26E40(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_227D4DB58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_227B27874(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_227B27618(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_227B27B34(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_227D4DB58();
      sub_227D4D048();
      result = sub_227D4DB98();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_227D4DA78() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_227B279DC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_227B279DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  v2 = *v0;
  v3 = sub_227D4D628();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_227D4CE58();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_227B27B34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  result = sub_227D4D638();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_227D4DB58();
        sub_227D4CE58();
        sub_227D4D048();
        result = sub_227D4DB98();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void *sub_227B27D68(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_227D4CE58();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_227D4CE58();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227B27EC4()
{
  if (!qword_27D7E6890)
  {
    v0 = sub_227D4A878();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7E6890);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_2(unint64_t *a1)
{
  v4 = MEMORY[0x277D83970];

  return sub_227B15A74(a1, v1, v2, v4);
}

uint64_t sub_227B27F4C(uint64_t a1)
{
  sub_227B27F84(a1);

  return MEMORY[0x28211DA50](v1);
}

double sub_227B27F84(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, a1);
  OUTLINED_FUNCTION_9_2();
  if (sub_227D4D538() < 65)
  {
    OUTLINED_FUNCTION_9_2();
    v10 = sub_227D4D548();
    OUTLINED_FUNCTION_9_2();
    v11 = sub_227D4D528();
    (*(v4 + 8))(v8, a1);
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    sub_227B280F4();
    sub_227B28148();
    sub_227D4CDF8();
    (*(v4 + 8))(v8, a1);
    v9 = v13;
  }

  return v9 / 1000.0;
}

unint64_t sub_227B280F4()
{
  result = qword_27D7E68B0;
  if (!qword_27D7E68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E68B0);
  }

  return result;
}

unint64_t sub_227B28148()
{
  result = qword_27D7E68B8;
  if (!qword_27D7E68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E68B8);
  }

  return result;
}

void sub_227B281D4()
{
  OUTLINED_FUNCTION_11();
  v81 = v1;
  v82 = v0;
  v3 = v2;
  v5 = v4;
  v86[1] = *MEMORY[0x277D85DE8];
  v6 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v74 = v10;
  OUTLINED_FUNCTION_6_0();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v73 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v73 - v15);
  v17 = sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_3();
  v76 = v21;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  sub_227D4AA58();
  v23 = *(v8 + 16);
  v80 = v5;
  v83 = v23;
  v84 = (v8 + 16);
  v23(v16, v5, v6);
  sub_227D4CE58();
  v24 = sub_227D4CA98();
  v25 = sub_227D4D418();
  v79 = v3;

  v75 = v25;
  v26 = v24;
  v27 = os_log_type_enabled(v24, v25);
  v78 = v8;
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_12_1();
    v77 = v19;
    v29 = v28;
    v86[0] = swift_slowAlloc();
    *v29 = 136315394;
    OUTLINED_FUNCTION_1_4();
    sub_227B2A160(v30, v31, MEMORY[0x277CC9290]);
    v32 = sub_227D4DA38();
    v33 = v8;
    v35 = v34;
    v85 = *(v33 + 8);
    v85(v16, v6);
    v36 = sub_227B1B1A4(v32, v35, v86);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    v37 = v79;
    *(v29 + 14) = sub_227B1B1A4(v81, v79, v86);
    _os_log_impl(&dword_227B0D000, v26, v75, "Removing contents of directory: %s, matching: %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    v19 = v77;
    OUTLINED_FUNCTION_5_2();

    v38 = OUTLINED_FUNCTION_10_1();
    v16(v38);
    v39 = v37;
  }

  else
  {

    v85 = *(v8 + 8);
    v85(v16, v6);
    v40 = OUTLINED_FUNCTION_10_1();
    v16(v40);
    v39 = v79;
  }

  v41 = v80;
  v42 = sub_227D490F8();
  v86[0] = 0;
  v43 = [v82 contentsOfDirectoryAtURL:v42 includingPropertiesForKeys:0 options:0 error:v86];

  v44 = v86[0];
  if (v43)
  {
    v45 = sub_227D4D1C8();
    v46 = v44;

    v47 = *(v45 + 16);
    if (v47)
    {
      v48 = v81;
      v49 = *(v78 + 80);
      v80 = v45;
      v50 = v45 + ((v49 + 32) & ~v49);
      v51 = *(v78 + 72);
      do
      {
        v83(v14, v50, v6);
        if (sub_227D490A8())
        {
          v52 = sub_227D490E8();
          v54 = sub_227B2889C(v48, v39, v52, v53);

          if (v54)
          {
            sub_227B289E0();
          }
        }

        v85(v14, v6);
        v50 += v51;
        --v47;
      }

      while (v47);
    }
  }

  else
  {
    v77 = v19;
    v82 = v17;
    v55 = v86[0];
    v56 = sub_227D49098();

    swift_willThrow();
    sub_227D4AA58();
    v57 = v74;
    v83(v74, v41, v6);
    sub_227D4CE58();
    v58 = v56;
    v59 = sub_227D4CA98();
    v60 = v39;
    v61 = sub_227D4D438();

    if (os_log_type_enabled(v59, v61))
    {
      v62 = OUTLINED_FUNCTION_14_5();
      v63 = OUTLINED_FUNCTION_13_3();
      v84 = swift_slowAlloc();
      v86[0] = v84;
      *v62 = 136315650;
      OUTLINED_FUNCTION_1_4();
      sub_227B2A160(v64, v65, MEMORY[0x277CC9290]);
      v66 = sub_227D4DA38();
      v67 = v57;
      v69 = v68;
      v85(v67, v6);
      v70 = sub_227B1B1A4(v66, v69, v86);

      *(v62 + 4) = v70;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_227B1B1A4(v81, v60, v86);
      *(v62 + 22) = 2112;
      v71 = v56;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 24) = v72;
      *v63 = v72;
      _os_log_impl(&dword_227B0D000, v59, v61, "Unable to retrieve contents of directory: %s, matching: %s, error: %@", v62, 0x20u);
      sub_227B2A0F8(v63);
      OUTLINED_FUNCTION_5_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_2();
    }

    else
    {

      v85(v57, v6);
    }

    (v16)(v76, v82);
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227B2889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_227D4CE58();
  sub_227D4CE58();
  do
  {
    while (1)
    {
      v4 = sub_227D4D068();
      if (!v5)
      {

        sub_227D4D068();
        v13 = v12;

        if (v13)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v6 = v4;
      v7 = v5;
      v8 = sub_227D4D068();
      if (!v9)
      {

        return 1;
      }

      if (v6 != v8 || v7 != v9)
      {
        break;
      }
    }

    v11 = sub_227D4DA78();
  }

  while ((v11 & 1) != 0);

LABEL_15:

  return 0;
}

void sub_227B289E0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = sub_227D490F8();
  v40[0] = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v18 error:v40];

  if (v1)
  {
    OUTLINED_FUNCTION_8_1();

    v21 = v19;
  }

  else
  {
    v22 = v40[0];
    v23 = sub_227D49098();

    swift_willThrow();
    sub_227D4AA58();
    (*(v6 + 16))(v10, v3, v4);
    v24 = v23;
    v25 = sub_227D4CA98();
    v26 = sub_227D4D438();

    if (os_log_type_enabled(v25, v26))
    {
      v39 = v11;
      v27 = OUTLINED_FUNCTION_12_1();
      v36 = OUTLINED_FUNCTION_13_3();
      v38 = OUTLINED_FUNCTION_14_5();
      v40[0] = v38;
      *v27 = 136315394;
      OUTLINED_FUNCTION_1_4();
      sub_227B2A160(v28, v29, MEMORY[0x277CC9290]);
      v30 = sub_227D4DA38();
      v37 = v13;
      v32 = v31;
      (*(v6 + 8))(v10, v4);
      v33 = sub_227B1B1A4(v30, v32, v40);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2112;
      v34 = v23;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v35;
      *v36 = v35;
      _os_log_impl(&dword_227B0D000, v25, v26, "Failed to remove item at: %s, error: %@", v27, 0x16u);
      sub_227B2A0F8(v36);
      OUTLINED_FUNCTION_5_2();
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_2();

      (*(v37 + 8))(v17, v39);
    }

    else
    {

      (*(v6 + 8))(v10, v4);
      (*(v13 + 8))(v17, v11);
    }

    OUTLINED_FUNCTION_8_1();
  }
}

void sub_227B28D88()
{
  OUTLINED_FUNCTION_11();
  v30 = v0;
  v29[11] = v1;
  v3 = v2;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  sub_227D49188();
  OUTLINED_FUNCTION_9();
  v29[7] = v10;
  v29[8] = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v29[4] = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v29[5] = v29 - v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v29[6] = v29 - v15;
  v16 = sub_227D4CCF8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_3();
  v29[1] = v18;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  v29[0] = v29 - v20;
  sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v31 = v22;
  v32 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  v29[3] = v23;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  v29[2] = v29 - v25;
  sub_227D4CBB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68D0, &qword_227D4E600);
  v26 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_227D4E520;
  v28 = *(v17 + 16);
  v33 = v3;
  v28(v27 + v26, v3, v16);

  v29[9] = v8;
  v29[10] = v6;
  sub_227D4CBA8();
  OUTLINED_FUNCTION_8_1();
}