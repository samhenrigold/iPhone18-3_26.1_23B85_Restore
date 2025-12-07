uint64_t AnyFlow.__deallocating_deinit()
{
  AnyFlow.deinit();

  return swift_deallocClassInstance();
}

void *AnyFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_82_0(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_1DCAFF068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_1DD0EF968;
}

BOOL OUTLINED_FUNCTION_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_37()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_151()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void OUTLINED_FUNCTION_53_2()
{

  sub_1DCE18E10();
}

void OUTLINED_FUNCTION_53_5()
{
}

void OUTLINED_FUNCTION_53_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_53_7()
{
  *(v1 + 8) = v0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return sub_1DD0DB3EC();
}

void OUTLINED_FUNCTION_53_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 + 32) = a14;
  *(v15 + 40) = a15;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_53_13()
{

  return swift_arrayDestroy();
}

void *OUTLINED_FUNCTION_53_14(void *result)
{
  *(v3 + 96) = result;
  result[2] = v2;
  result[3] = v1;
  result[4] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_1DD0DD10C();
}

uint64_t OUTLINED_FUNCTION_53_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for PromptResult(255, a1, a3, a4);
}

uint64_t OUTLINED_FUNCTION_53_19()
{

  return sub_1DD0DEC1C();
}

void sub_1DCAFF5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_50();
  v5 = v3;
  v7 = v6;
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v42 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[18] = 0;
  v5[7] = v15;
  __swift_allocate_boxed_opaque_existential_1Tm_0(v5 + 4);
  v16 = *(v9 + 16);
  OUTLINED_FUNCTION_152_0();
  v16();
  v40 = v9 + 16;
  v41 = v16;
  v17 = OUTLINED_FUNCTION_19();
  v5[8] = sub_1DCAFF068(v17, v18, v7);
  v5[9] = v19;
  v20 = OUTLINED_FUNCTION_19();
  v5[10] = sub_1DCAFFA00(v20, v21, v7);
  v5[11] = v22;
  v23 = OUTLINED_FUNCTION_19();
  v24 = v7;
  v39 = v7;
  v5[12] = sub_1DCAFFB24(v23, v25, v7);
  v5[13] = v26;
  v38 = v14;
  OUTLINED_FUNCTION_152_0();
  v16();
  v27 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v4;
  *(v28 + 24) = v24;
  v29 = *(v9 + 32);
  v29(v28 + v27, v14, v4);
  v30 = v29;
  v5[14] = sub_1DCB6137C;
  v5[15] = v28;
  v44 = 0x3C776F6C46796E41;
  v45 = 0xE800000000000000;
  OUTLINED_FUNCTION_19();
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v31 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v31);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v32 = v45;
  v5[2] = v44;
  v5[3] = v32;
  v5[18] = 0;

  v33 = v38;
  OUTLINED_FUNCTION_152_0();
  v41();
  v34 = swift_allocObject();
  v35 = v39;
  *(v34 + 16) = v4;
  *(v34 + 24) = v35;
  v30(v34 + v27, v33, v4);
  v5[16] = sub_1DCD271DC;
  v5[17] = v34;
  v36 = OUTLINED_FUNCTION_19();
  v37(v36);
  OUTLINED_FUNCTION_49();
}

id OUTLINED_FUNCTION_108_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void OUTLINED_FUNCTION_89(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_108_1()
{
  *(v0 + 424) = *(v0 + 152);
  sub_1DCAFF9E8((v0 + 112), v0 + 248);

  return sub_1DD0DD8EC();
}

void OUTLINED_FUNCTION_16_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

double OUTLINED_FUNCTION_108_2@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 16) = a2;
  v3 = *(v2 + 24);
  *(v2 + 24) = 3;
  sub_1DCD070F8(a1, v3);

  return static ExecuteResponse.complete()();
}

void OUTLINED_FUNCTION_108_3()
{
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[59];
  v7 = v0[60];
  v8 = v0[58];

  sub_1DCDEC7BC(v8, v6, v7, v4, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_108_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{

  return sub_1DCCC72DC(v16, &a17, &a9);
}

uint64_t OUTLINED_FUNCTION_108_8()
{
}

uint64_t sub_1DCAFF9E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t (*sub_1DCAFFA00(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_1DCD27240;
}

void *sub_1DCAFFB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_1DD0EF958;
}

uint64_t sub_1DCAFFC48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_62()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_4()
{
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_9()
{
}

BOOL OUTLINED_FUNCTION_22(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_25(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return __swift_getEnumTagSinglePayload(a1, 1, a2);
}

uint64_t OUTLINED_FUNCTION_32_15()
{
}

void OUTLINED_FUNCTION_35()
{

  JUMPOUT(0x1E12A6780);
}

__n128 OUTLINED_FUNCTION_107(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  result = *(a2 + 32);
  *(v2 + 48) = result;
  *(v2 + 64) = *(a2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_32_24(void *result)
{
  *(v3 + 480) = result;
  result[2] = v2;
  result[3] = v1;
  result[4] = v5;
  result[5] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_27(uint64_t a1)
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_32_29(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_32_31(__int128 *a1)
{
  sub_1DCAFF9E8(a1, v1 + 16);
  __swift_project_boxed_opaque_existential_1((v2 - 72), *(v2 - 48));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_80()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_92_0()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 1112) = a2;
  *(v2 + 1080) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  return sub_1DCB17C3C(va, &a27, a3, a4);
}

BOOL OUTLINED_FUNCTION_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 120) = 0;
  *(v9 + 104) = 0u;
  *(v9 + 88) = 0u;

  return sub_1DCB6C5E8(&a9, v9 + 88);
}

void OUTLINED_FUNCTION_21_10()
{
}

void OUTLINED_FUNCTION_10_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_21_11(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_12()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_1DCCEA1B0(v2, v3);
}

void OUTLINED_FUNCTION_21_14()
{

  sub_1DCBC61E8();
}

uint64_t OUTLINED_FUNCTION_21_18(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_19(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);

  return type metadata accessor for NLContextUpdate(0);
}

uint64_t OUTLINED_FUNCTION_21_30()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_21_34(__n128 *a1)
{
  v3[3].n128_u64[1] = a1;
  result = v3[2];
  a1[1] = result;
  a1[2].n128_u64[0] = v1;
  a1[2].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[5] = result;
  v3[6] = a2;
  v3[2] = v2;
  return result;
}

void *OUTLINED_FUNCTION_21_36()
{
  v2 = (*(v0 + 448) + 192);

  return memcpy((v0 + 192), v2, 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_21_40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[99] = v2;
  v3[98] = a2;
  v3[95] = a1;

  return type metadata accessor for LegacySiriKitOutputPublisher();
}

void OUTLINED_FUNCTION_21_42(uint64_t a1@<X8>, uint64_t a2@<X2>, uint64_t a3@<X3>)
{
  type metadata accessor for ResolvableStorage(0, *(v3 + a1 + 8), a2, a3);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_21_48()
{
  *(v0 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_21_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State(0, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_21_50(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEBC();
}

__n128 OUTLINED_FUNCTION_21_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a12, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a13, __int128 a14, uint64_t a15)
{
  result = a13;
  *(v15 + 16) = a13;
  *(v15 + 32) = a14;
  *(v15 + 48) = a15;
  return result;
}

__n128 OUTLINED_FUNCTION_21_53(uint64_t a1, uint64_t a2)
{
  *(v6 + 16) = v2;
  result = *(a2 + 8);
  *(v6 + 24) = result;
  *(v6 + 40) = v3;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[6] = result;
  v3[7] = a2;
  v3[9] = a3;
  v3[10] = 0x6E6F73726570;
  v3[15] = v4;
  v3[11] = 0xE600000000000000;
  v3[12] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v4 + 24) + 80);

  return type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter(0, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_21_57()
{
}

uint64_t OUTLINED_FUNCTION_21_58()
{

  return type metadata accessor for IdentifiedUser(0);
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_1DCBB5D20();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_75(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_52()
{

  JUMPOUT(0x1E12A8390);
}

void *OUTLINED_FUNCTION_6_5()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

void OUTLINED_FUNCTION_57()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E12A8390);
}

void OUTLINED_FUNCTION_60_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_156(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return AnyAppResolutionFlow.__allocating_init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_20_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_6_14(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_6_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DCB21038(a2, a3);
}

void OUTLINED_FUNCTION_6_18(void *a1)
{

  sub_1DCC65C38(v1, v2, a1);
}

__n128 OUTLINED_FUNCTION_6_20(uint64_t a1)
{
  *(v2 - 120) = a1;
  result = *(v2 - 368);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return sub_1DD0DDF8C();
}

void OUTLINED_FUNCTION_6_25()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_8_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return swift_getAssociatedTypeWitness();
}

BOOL OUTLINED_FUNCTION_6_29(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_storeEnumTagSinglePayload(v13 + v11, 1, 1, a1);
  *(v13 + *(v14 + 124)) = 2;
  *v13 = a11;
  v13[1] = v12;
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return sub_1DD0DDF7C();
}

__n128 *OUTLINED_FUNCTION_6_34(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656C61636F6CLL;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD0DEFAC();
}

void OUTLINED_FUNCTION_27_0()
{

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_39@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + ((*(v2 + 304) + 32) & ~*(v2 + 304)) + *(*(v2 + 184) + 72) * a1;
  v5 = *(v2 + 208);

  return sub_1DCCCF36C(v4, v5);
}

id OUTLINED_FUNCTION_6_40(uint64_t a1, ...)
{

  return sub_1DCF75218(&v5, v1 & 1, v2 & 1, 0);
}

uint64_t OUTLINED_FUNCTION_6_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_42(uint64_t a1)
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_6_47()
{

  sub_1DCDAC09C(v0);
}

uint64_t OUTLINED_FUNCTION_6_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  *(v17 + 24) = a1;
  a17 = 0;
  a15 = 0u;
  a16 = 0u;

  return sub_1DCDD4314(&a15, &a10);
}

uint64_t OUTLINED_FUNCTION_6_51(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return __swift_destroy_boxed_opaque_existential_1Tm(va);
}

uint64_t OUTLINED_FUNCTION_6_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _s11SiriKitFlow5StateOMa_0(0, a1, a3, a4);
}

uint64_t OUTLINED_FUNCTION_6_58(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_65(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD0DD7EC(a1, a2, 2, a4, v4);
}

__n128 OUTLINED_FUNCTION_4_3(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_6_68()
{
  v2 = *(v1 - 344);
  v3 = v2[3];
  v4 = v2[4];
  *(v1 - 312) = v3;
  *(v1 - 400) = v4;
  result = __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v1 - 344) = result;
  v6 = *(v0 + 40);
  *(v1 - 360) = *(v0 + 32);
  *(v1 - 392) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_82(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_85()
{
  *v0 = 32;
  *(v0 + 8) = 0x54746E6572727543;
  *(v0 + 16) = 0xEB000000006B7361;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
}

uint64_t OUTLINED_FUNCTION_6_89(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_93()
{

  return sub_1DD0DB5BC();
}

uint64_t AnyChildCompletion.__deallocating_deinit()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocClassInstance();
}

uint64_t AnyChildCompletion.init<A>(_:)()
{
  OUTLINED_FUNCTION_18_24();
  v4 = v3;
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v4;
  v5[4] = v2;
  *(v1 + 16) = sub_1DCB5EA34;
  *(v1 + 24) = v5;
  return v1;
}

uint64_t sub_1DCB019B8()
{

  return swift_deallocObject();
}

void OUTLINED_FUNCTION_88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_62_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_111_5()
{
  v3 = *(v1 - 192);
  *v3 = *(v1 - 184);
  v3[1] = v0;

  return sub_1DCB17D04(v1 - 120, (v3 + 2));
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_4_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_4_20@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t OUTLINED_FUNCTION_4_21(uint64_t a1)
{

  return sub_1DD0DE2EC();
}

void OUTLINED_FUNCTION_4_24()
{

  sub_1DD0DCBAC();
}

uint64_t OUTLINED_FUNCTION_4_25()
{
  v2 = *(v0 + 288);

  return sub_1DCB42D6C(v2, type metadata accessor for AceOutput);
}

void OUTLINED_FUNCTION_14_3()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1DD0DEDFC();
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_4_29(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_4_31(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_4_33(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

void OUTLINED_FUNCTION_4_34(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5)
{

  _os_signpost_emit_with_name_impl(a1, v5, v6, a4, a5, v7, v8, 2u);
}

void *OUTLINED_FUNCTION_4_35()
{
  v2 = 8 * v0[2] - 8;

  return memmove(v0 + 4, v0 + 5, v2);
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v0);
}

void *OUTLINED_FUNCTION_4_37()
{
  v2 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v2);
}

uint64_t OUTLINED_FUNCTION_4_40(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_4_43()
{
  *(v1 + 4) = v3;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v0;
  *v2 = v0;
  *(v1 + 22) = 2080;

  return v0;
}

void OUTLINED_FUNCTION_4_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x34u);
}

void OUTLINED_FUNCTION_4_45()
{

  sub_1DCBC61E8();
}

void OUTLINED_FUNCTION_4_46()
{
  sub_1DCB18FF0((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);

  sub_1DCCDE224(v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{
  *(v2 + 136) = v1;
  *(v2 + 160) = a1;
  sub_1DCB20B30((v2 + 136), (v2 + 168));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_4_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD0DD80C();
}

void OUTLINED_FUNCTION_4_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_61()
{
}

uint64_t OUTLINED_FUNCTION_4_66()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_4_68()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_4_74@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 192) = a1;
  v3 = v2 + a1;
  result = *v3;
  v5 = *(v3 + 8);
  *(v1 + 200) = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *(v1 + 16) = result;
  *(v1 + 208) = v10;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  *(v1 + 64) = v10;
  return result;
}

void OUTLINED_FUNCTION_4_77(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  sub_1DCB2502C(a1, a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_4_79()
{
  *(v0 + 16) = 0;

  return MEMORY[0x1EEE3A6C8](0);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_4_85(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_89(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_92()
{

  return sub_1DCB17CA0(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_4_95()
{
}

void OUTLINED_FUNCTION_4_99(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, uint64_t a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, v8, a6, v9, 2u);
}

uint64_t OUTLINED_FUNCTION_4_106()
{
  *(v0 + 16) = 0;

  return MEMORY[0x1EEE3B2C8](0);
}

id OUTLINED_FUNCTION_4_109(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)(v5, 1, 0, 0, a5);
}

void OUTLINED_FUNCTION_4_110()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_4_111()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  sub_1DCB4A6EC(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_4_113()
{
  v2 = *(v0 - 160);

  return sub_1DCFE37AC(v2, type metadata accessor for USOParse);
}

void *OUTLINED_FUNCTION_4_116()
{
  v2 = *(v0 - 128);
  *(v0 - 256) = v2;

  return __swift_project_boxed_opaque_existential_1((v0 - 152), v2);
}

uint64_t OUTLINED_FUNCTION_4_120(uint64_t result, uint64_t a2)
{
  v2[6] = result;
  v2[7] = a2;
  v2[9] = v3;
  v2[10] = 0x6E6F73726570;
  v2[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_121@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = a1[2];
  *v1 = v3;
  v1[1] = result;
  v1[2] = v4;
  return result;
}

double OUTLINED_FUNCTION_4_124()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 8) = 0u;
  *(v0 + 80) = 3;
  return result;
}

uint64_t sub_1DCB02C48(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_92_1()
{
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_8(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEF7C();
}

id OUTLINED_FUNCTION_49_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a11 + 28);
  v15 = *(v12 + v14);
  *(v11 + v14) = v15;

  return v15;
}

uint64_t OUTLINED_FUNCTION_49_12(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 24);
  *(v2 + 64) = v1;
  return result;
}

void OUTLINED_FUNCTION_49_13()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_49_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_21(uint64_t a1)
{

  return sub_1DD0DB31C();
}

uint64_t OUTLINED_FUNCTION_49_24()
{

  return sub_1DCFE37AC(v0, type metadata accessor for Input);
}

uint64_t OUTLINED_FUNCTION_49_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 + *(v13 + 124)) = 2;
  *v12 = a11;
  v12[1] = v11;
}

uint64_t OUTLINED_FUNCTION_49_29()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_49_30()
{
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return sub_1DCBB5CC8(v0, type metadata accessor for NLContextUpdate);
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return type metadata accessor for AceOutput(0);
}

void OUTLINED_FUNCTION_13_9()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_15_4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_13_10()
{

  return sub_1DCB0E9D8(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_73_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_54_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_59_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1DD0DD8EC();
}

id OUTLINED_FUNCTION_13_13()
{

  return sub_1DCC648A4(v6, v5, v4, v3, v2, v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return swift_setDeallocating();
}

id OUTLINED_FUNCTION_13_19()
{

  return sub_1DCC9DA1C(0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return swift_getAssociatedTypeWitness();
}

unint64_t OUTLINED_FUNCTION_13_23()
{

  return sub_1DCB10E9C(v0, v1, (v2 - 96));
}

void OUTLINED_FUNCTION_13_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void *OUTLINED_FUNCTION_13_28(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v2;
  result[5] = v1;
  return result;
}

__n128 *OUTLINED_FUNCTION_13_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656369766564;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_35()
{
  *(v4 - 128) = v1;
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = v0;
  return 255;
}

uint64_t *OUTLINED_FUNCTION_13_37@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v2);
}

void OUTLINED_FUNCTION_13_38()
{
}

uint64_t OUTLINED_FUNCTION_13_39()
{

  return swift_bridgeObjectRetain_n();
}

void *OUTLINED_FUNCTION_13_40()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

void OUTLINED_FUNCTION_13_41()
{

  sub_1DCE06C88();
}

uint64_t OUTLINED_FUNCTION_13_42(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1DD0DE06C();
}

uint64_t OUTLINED_FUNCTION_13_43()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_13_47()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_13_52()
{
}

void OUTLINED_FUNCTION_13_54()
{
  *(v0 + *(v1 + 28)) = 0;
  v2 = (v0 + *(v1 + 32));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_13_59(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_13_60(uint64_t a1)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_13_61()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_13_64()
{

  return sub_1DD0DD8BC();
}

void OUTLINED_FUNCTION_13_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, unint64_t a12, void *a13)
{

  sub_1DCF3A6B8(a9, a10, a11, a12, a13);
}

void OUTLINED_FUNCTION_13_68(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = 1;
  v7 = *(v3 + 32);
  *(v3 + 32) = 0x80;

  sub_1DCB3C730(v6, v5, v7);
}

uint64_t OUTLINED_FUNCTION_13_69(uint64_t a1)
{

  return sub_1DD0DE02C();
}

uint64_t OUTLINED_FUNCTION_13_70(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_73()
{
}

uint64_t OUTLINED_FUNCTION_13_74(uint64_t result)
{
  *(result + 8) = v1;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = v5;
  return result;
}

__n128 OUTLINED_FUNCTION_13_79(unint64_t a1)
{
  v1[18].n128_u64[1] = a1;
  result = v1[2];
  *v2 = result.n128_u32[0];
  return result;
}

uint64_t sub_1DCB039A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DCD190DC(a2, a3);
  *a1 = result & 1;
  return result;
}

void destroy for FlowTraceEvent(char *a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      goto LABEL_10;
    case 2u:

      v9 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5040, &qword_1DD0F0CF8) + 48)];
      v10 = sub_1DD0DB04C();
      (*(*(v10 - 8) + 8))(v9, v10);
      v11 = type metadata accessor for Input(0);
      v12 = &v9[*(v11 + 20)];
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v13 = sub_1DD0DC76C();
          goto LABEL_29;
        case 1u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 8))(v12, v34);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_58;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v13 = sub_1DD0DB1EC();
          goto LABEL_29;
        case 5u:
          v46 = *v12;
          goto LABEL_64;
        case 6u:
          v47 = sub_1DD0DB4BC();
          (*(*(v47 - 8) + 8))(v12, v47);
          v48 = *(type metadata accessor for USOParse(0) + 20);
          v49 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v12 + v48, 1, v49))
          {
            (*(*(v49 - 8) + 8))(v12 + v48, v49);
          }

          goto LABEL_58;
        case 7u:
          v31 = sub_1DD0DB4BC();
          (*(*(v31 - 8) + 8))(v12, v31);
          v32 = *(type metadata accessor for USOParse(0) + 20);
          v33 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v12 + v32, 1, v33))
          {
            (*(*(v33 - 8) + 8))(v12 + v32, v33);
          }

          type metadata accessor for LinkParse(0);

LABEL_58:

          break;
        case 8u:
          v50 = sub_1DD0DD12C();
          (*(*(v50 - 8) + 8))(v12, v50);
          v51 = type metadata accessor for NLRouterParse(0);

          v52 = v12 + *(v51 + 24);
          v53 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v52, 1, v53))
          {
            v54 = sub_1DD0DB4BC();
            (*(*(v54 - 8) + 8))(v52, v54);
            v55 = *(v53 + 20);
            v56 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v52 + v55, 1, v56))
            {
              (*(*(v56 - 8) + 8))(v52 + v55, v56);
            }
          }

          v46 = *(v12 + *(v51 + 28));
LABEL_64:

          break;
        case 9u:
          v13 = sub_1DD0DD08C();
LABEL_29:
          (*(*(v13 - 8) + 8))(v12, v13);
          break;
        default:
          break;
      }

      v2 = &v9[*(v11 + 28)];
      if (!*(v2 + 3))
      {
        return;
      }

      goto LABEL_5;
    case 3u:

      v14 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5030, &qword_1DD0F0CE0) + 48)];

      v15 = v14[48];
      if (v15 <= 0xFB)
      {
        sub_1DCD21390(*(v14 + 4), *(v14 + 5), v15);
      }

      v16 = type metadata accessor for ExecuteResponse(0);
      v17 = &v14[*(v16 + 36)];
      v18 = type metadata accessor for PluginAction(0);
      if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
      {

        v19 = v17 + v18[5];
        v20 = sub_1DD0DB04C();
        v21 = *(*(v20 - 8) + 8);
        v21(v19, v20);
        v22 = type metadata accessor for Input(0);
        v23 = (v19 + *(v22 + 20));
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v24 = sub_1DD0DC76C();
            goto LABEL_69;
          case 1u:
            v60 = sub_1DD0DC76C();
            (*(*(v60 - 8) + 8))(v23, v60);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

            break;
          case 2u:

            break;
          case 3u:
            swift_unknownObjectRelease();
            break;
          case 4u:
            v24 = sub_1DD0DB1EC();
            goto LABEL_69;
          case 5u:

            break;
          case 6u:
            v79 = v21;
            v61 = sub_1DD0DB4BC();
            (*(*(v61 - 8) + 8))(v23, v61);
            v62 = *(type metadata accessor for USOParse(0) + 20);
            v63 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v23 + v62, 1, v63))
            {
              (*(*(v63 - 8) + 8))(v23 + v62, v63);
            }

            goto LABEL_79;
          case 7u:
            v79 = v21;
            v57 = sub_1DD0DB4BC();
            (*(*(v57 - 8) + 8))(v23, v57);
            v58 = *(type metadata accessor for USOParse(0) + 20);
            v59 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v23 + v58, 1, v59))
            {
              (*(*(v59 - 8) + 8))(v23 + v58, v59);
            }

            type metadata accessor for LinkParse(0);

LABEL_79:

            goto LABEL_85;
          case 8u:
            v79 = v21;
            v64 = sub_1DD0DD12C();
            (*(*(v64 - 8) + 8))(v23, v64);
            v65 = type metadata accessor for NLRouterParse(0);

            v66 = v23 + *(v65 + 24);
            v78 = type metadata accessor for USOParse(0);
            if (!__swift_getEnumTagSinglePayload(v66, 1, v78))
            {
              v67 = sub_1DD0DB4BC();
              (*(*(v67 - 8) + 8))(v66, v67);
              v77 = *(v78 + 20);
              v76 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v66 + v77, 1, v76))
              {
                (*(*(v76 - 8) + 8))(v66 + v77);
              }
            }

LABEL_85:
            v21 = v79;
            break;
          case 9u:
            v24 = sub_1DD0DD08C();
LABEL_69:
            (*(*(v24 - 8) + 8))(v23, v24);
            break;
          default:
            break;
        }

        v68 = (v19 + *(v22 + 28));
        if (v68[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v68);
        }

        v69 = v17 + v18[9];
        v70 = type metadata accessor for ActionParaphrase(0);
        if (!__swift_getEnumTagSinglePayload(v69, 1, v70))
        {

          v71 = v69 + *(v70 + 20);
          v72 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
          if (!__swift_getEnumTagSinglePayload(v71, 1, v72))
          {

            v73 = *(v72 + 24);
            v74 = sub_1DD0DB66C();
            (*(*(v74 - 8) + 8))(v71 + v73, v74);
          }
        }

        v75 = v18[10];
        if (!__swift_getEnumTagSinglePayload(v17 + v75, 1, v20))
        {
          v21(v17 + v75, v20);
        }
      }

      if (*&v14[*(v16 + 40) + 8])
      {
      }

      return;
    case 4u:

LABEL_10:

      return;
    case 5u:
      a1 += 8;

      goto LABEL_4;
    case 6u:
    case 7u:
    case 0xBu:
    case 0xCu:
LABEL_4:
      v2 = a1;
      goto LABEL_5;
    case 8u:
    case 0xAu:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v2 = a1 + 40;
      goto LABEL_5;
    case 9u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5160, &qword_1DD0F0EE8);
      v4 = &a1[*(v3 + 48)];
      v5 = sub_1DD0DB04C();
      (*(*(v5 - 8) + 8))(v4, v5);
      v6 = type metadata accessor for Input(0);
      v7 = &v4[*(v6 + 20)];
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v8 = sub_1DD0DC76C();
          goto LABEL_25;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 8))(v7, v29);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_44;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v8 = sub_1DD0DB1EC();
          goto LABEL_25;
        case 5u:
          v30 = *v7;
          goto LABEL_50;
        case 6u:
          v35 = sub_1DD0DB4BC();
          (*(*(v35 - 8) + 8))(v7, v35);
          v36 = *(type metadata accessor for USOParse(0) + 20);
          v37 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v7 + v36, 1, v37))
          {
            (*(*(v37 - 8) + 8))(v7 + v36, v37);
          }

          goto LABEL_44;
        case 7u:
          v26 = sub_1DD0DB4BC();
          (*(*(v26 - 8) + 8))(v7, v26);
          v27 = *(type metadata accessor for USOParse(0) + 20);
          v28 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v7 + v27, 1, v28))
          {
            (*(*(v28 - 8) + 8))(v7 + v27, v28);
          }

          type metadata accessor for LinkParse(0);

LABEL_44:

          break;
        case 8u:
          v38 = sub_1DD0DD12C();
          (*(*(v38 - 8) + 8))(v7, v38);
          v39 = type metadata accessor for NLRouterParse(0);

          v40 = v7 + *(v39 + 24);
          v41 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v40, 1, v41))
          {
            v42 = sub_1DD0DB4BC();
            (*(*(v42 - 8) + 8))(v40, v42);
            v43 = *(v41 + 20);
            v44 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v40 + v43, 1, v44))
            {
              (*(*(v44 - 8) + 8))(v40 + v43, v44);
            }
          }

          v30 = *(v7 + *(v39 + 28));
LABEL_50:

          break;
        case 9u:
          v8 = sub_1DD0DD08C();
LABEL_25:
          (*(*(v8 - 8) + 8))(v7, v8);
          break;
        default:
          break;
      }

      v45 = &v4[*(v6 + 28)];
      if (*(v45 + 3))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      v2 = &a1[*(v3 + 64)];
      if (v2[40] >= 2u)
      {
        return;
      }

LABEL_5:
      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      break;
    case 0xDu:
      v25 = *a1;

      break;
    default:
      return;
  }
}

uint64_t initializeWithCopy for Input(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB04C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v11 = sub_1DD0DC76C();
      (*(*(v11 - 8) + 16))(v8, v9, v11);
      goto LABEL_25;
    case 1u:
      v20 = sub_1DD0DC76C();
      (*(*(v20 - 8) + 16))(v8, v9, v20);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v8[*(v21 + 48)] = *&v9[*(v21 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v14 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v14;
      *(v8 + 2) = *(v9 + 2);

      goto LABEL_25;
    case 3u:
      *v8 = *v9;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v12 = sub_1DD0DB1EC();
      (*(*(v12 - 8) + 16))(v8, v9, v12);
      goto LABEL_25;
    case 5u:
      v22 = *v9;
      *v8 = *v9;
      v23 = v22;
      goto LABEL_25;
    case 6u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 16))(v8, v9, v24);
      v25 = type metadata accessor for USOParse(0);
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v26], &v9[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 16))(&v8[v26], &v9[v26], v27);
        __swift_storeEnumTagSinglePayload(&v8[v26], 0, 1, v27);
      }

      v60 = v25[6];
      v61 = &v8[v60];
      v62 = &v9[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      v64 = v25[7];
      v65 = &v8[v64];
      v66 = &v9[v64];
      v65[4] = v66[4];
      *v65 = *v66;

      goto LABEL_25;
    case 7u:
      v15 = sub_1DD0DB4BC();
      (*(*(v15 - 8) + 16))(v8, v9, v15);
      v16 = type metadata accessor for USOParse(0);
      v17 = v16[5];
      v18 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v18))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v8[v17], &v9[v17], *(*(v19 - 8) + 64));
      }

      else
      {
        (*(*(v18 - 8) + 16))(&v8[v17], &v9[v17], v18);
        __swift_storeEnumTagSinglePayload(&v8[v17], 0, 1, v18);
      }

      v40 = v16[6];
      v41 = &v8[v40];
      v42 = &v9[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v44 = v16[7];
      v45 = &v8[v44];
      v46 = &v9[v44];
      v45[4] = v46[4];
      *v45 = *v46;
      v47 = type metadata accessor for LinkParse(0);
      v48 = v47[5];
      v49 = &v8[v48];
      v50 = &v9[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v47[6];
      v53 = &v8[v52];
      v54 = &v9[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;
      v56 = v47[7];
      v57 = &v8[v56];
      v58 = &v9[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;

      goto LABEL_25;
    case 8u:
      v29 = sub_1DD0DD12C();
      (*(*(v29 - 8) + 16))(v8, v9, v29);
      v30 = type metadata accessor for NLRouterParse(0);
      v31 = *(v30 + 20);
      v32 = &v8[v31];
      v33 = &v9[v31];
      v34 = *(v33 + 1);
      *v32 = *v33;
      *(v32 + 1) = v34;
      v88 = v30;
      v35 = *(v30 + 24);
      v36 = &v8[v35];
      v37 = &v9[v35];
      v38 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v36, v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v67 = sub_1DD0DB4BC();
        (*(*(v67 - 8) + 16))(v36, v37, v67);
        v68 = v38[5];
        v87 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v37[v68], 1, v87))
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v36[v68], &v37[v68], *(*(v69 - 8) + 64));
        }

        else
        {
          (*(*(v87 - 8) + 16))(&v36[v68], &v37[v68]);
          __swift_storeEnumTagSinglePayload(&v36[v68], 0, 1, v87);
        }

        v70 = v38[6];
        v71 = &v36[v70];
        v72 = &v37[v70];
        v73 = *(v72 + 1);
        *v71 = *v72;
        *(v71 + 1) = v73;
        v74 = v38[7];
        v75 = &v36[v74];
        v76 = &v37[v74];
        v75[4] = v76[4];
        *v75 = *v76;

        __swift_storeEnumTagSinglePayload(v36, 0, 1, v38);
      }

      v77 = *(v88 + 28);
      v78 = *&v9[v77];
      *&v8[v77] = v78;
      v79 = v78;
      goto LABEL_25;
    case 9u:
      v13 = sub_1DD0DD08C();
      (*(*(v13 - 8) + 16))(v8, v9, v13);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v8, v9, *(*(v10 - 8) + 64));
      break;
  }

  v80 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v81 = a1 + v80;
  v82 = a2 + v80;
  v83 = *(a2 + v80 + 24);

  if (v83)
  {
    v84 = *(v82 + 32);
    *(v81 + 24) = v83;
    *(v81 + 32) = v84;
    (**(v83 - 8))(v81, v82, v83);
  }

  else
  {
    v85 = *(v82 + 16);
    *v81 = *v82;
    *(v81 + 16) = v85;
    *(v81 + 32) = *(v82 + 32);
  }

  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1DCB052DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1DD0DD17C();
    v8 = a3[14];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[7] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

void *destroy for Input(uint64_t a1, int *a2)
{
  v4 = sub_1DD0DB04C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = (a1 + a2[5]);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v10 = sub_1DD0DC76C();
      (*(*(v10 - 8) + 8))(v5, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_15;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      v6 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v11 = *v5;
      goto LABEL_21;
    case 6u:
      v12 = sub_1DD0DB4BC();
      (*(*(v12 - 8) + 8))(v5, v12);
      v13 = *(type metadata accessor for USOParse(0) + 20);
      v14 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v5 + v13, 1, v14))
      {
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
      }

      goto LABEL_15;
    case 7u:
      v7 = sub_1DD0DB4BC();
      (*(*(v7 - 8) + 8))(v5, v7);
      v8 = *(type metadata accessor for USOParse(0) + 20);
      v9 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v9))
      {
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
      }

      type metadata accessor for LinkParse(0);

LABEL_15:

      break;
    case 8u:
      v15 = sub_1DD0DD12C();
      (*(*(v15 - 8) + 8))(v5, v15);
      v16 = type metadata accessor for NLRouterParse(0);

      v17 = v5 + *(v16 + 24);
      v18 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
      {
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 8))(v17, v19);
        v20 = *(v18 + 20);
        v21 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v17 + v20, 1, v21))
        {
          (*(*(v21 - 8) + 8))(v17 + v20, v21);
        }
      }

      v11 = *(v5 + *(v16 + 28));
LABEL_21:

      break;
    case 9u:
      v6 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v6 - 8) + 8))(v5, v6);
      break;
    default:
      break;
  }

  result = (a1 + a2[7]);
  if (result[3])
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

uint64_t sub_1DCB05840(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  }

  OUTLINED_FUNCTION_5_13();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_110Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 48));
  a2(*(v2 + 56));

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v4 = sub_1DD0DC8CC();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    OUTLINED_FUNCTION_112();
    (*(v5 + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm()
{

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 48));
  a2(*(v2 + 56));

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  OUTLINED_FUNCTION_112();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t objectdestroy_21Tm()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for OptionalFlowMappingPlan(0, v1, v0[3], v0[4]) - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  OUTLINED_FUNCTION_18_43();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25()
{
  v1 = *(type metadata accessor for RelationshipLabel(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  OUTLINED_FUNCTION_20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1();
    (*(v5 + 8))(v0 + v2 + v4);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_49_28();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v0 + v2 + v4);
  }

  OUTLINED_FUNCTION_51_33();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_49_28();
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_34_42();

  if (v1 != 1)
  {
    v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1();
    (*(v3 + 8))(v0 + v2);
  }

  OUTLINED_FUNCTION_51_33();
  OUTLINED_FUNCTION_30_45();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t FlowRedirectContextProvider.__deallocating_deinit()
{
  FlowRedirectContextProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t FlowRedirectContextProvider.deinit()
{

  return v0;
}

uint64_t SiriCorrectionsClientProvider.__deallocating_deinit()
{
  SiriCorrectionsClientProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t NLRoutingDecisionProvider.__deallocating_deinit()
{
  NLRoutingDecisionProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t NLRoutingDecisionProvider.deinit()
{

  return v0;
}

uint64_t SiriCorrectionsClientProvider.deinit()
{

  return v0;
}

uint64_t FlowTaskProvider.__deallocating_deinit()
{
  FlowTaskProvider.deinit();
  OUTLINED_FUNCTION_18_3();

  return swift_deallocClassInstance();
}

void *OUTLINED_FUNCTION_58_2(void *a1)
{

  return memcpy(a1, (v1 - 160), 0x48uLL);
}

void OUTLINED_FUNCTION_58_4(uint64_t a1@<X8>)
{
  *(v3 + 992) = a1;
  *(v3 + 960) = v2;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));

  sub_1DD0DCF8C();
}

unint64_t OUTLINED_FUNCTION_58_5(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_1DD0DE4BC();
}

uint64_t OUTLINED_FUNCTION_58_7()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_58_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_58_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF24C();
}

uint64_t OUTLINED_FUNCTION_58_11()
{
}

__n128 OUTLINED_FUNCTION_58_12(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = *a2;
  result = *(a2 + 8);
  *(v3 + 88) = result;
  *(v3 + 57) = *(a2 + 24);
  *(v3 + 104) = *(a2 + 32);
  *(v3 + 58) = *(a2 + 40);
  return result;
}

void *OUTLINED_FUNCTION_58_13(void *result)
{
  result[2] = v4;
  result[3] = v3;
  result[4] = v2;
  result[5] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_16(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *(v5 - 232) = a5;
  *(v5 - 228) = a4;
  *(v5 - 240) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_17()
{
}

id OUTLINED_FUNCTION_58_19()
{

  return sub_1DCB3DEC0(v0, v1);
}

uint64_t OUTLINED_FUNCTION_58_20(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a1 = a2;
  *(a1 + 4) = *(v15 + 64);
  *(a1 + 8) = 1024;
  v16 = *(a15 + 48);
  __swift_project_boxed_opaque_existential_1((a15 + 24), v16);
  return v16;
}

void OUTLINED_FUNCTION_58_22()
{

  Resolvable.resolvedValuePublisher.getter((v0 - 232));
}

void *FlowTaskProvider.deinit()
{

  return v0;
}

uint64_t SessionConfigurationProvider.__deallocating_deinit()
{
  SessionConfigurationProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t SessionConfigurationProvider.deinit()
{

  return v0;
}

uint64_t UserIdentityProvider.__deallocating_deinit()
{
  UserIdentityProvider.deinit();

  return swift_deallocClassInstance();
}

void *UserIdentityProvider.deinit()
{

  sub_1DCB06F30(v0 + 80);
  return v0;
}

uint64_t destroy for UserIdentityCheckFlowStrategy(void *a1)
{

  result = a1[2];
  if (result)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 3);
  }

  return result;
}

uint64_t sub_1DCB06FC0(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:

      break;
    case 3uLL:
      return v2;
    default:
      v2 = swift_unknownObjectRelease();
      break;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ActionGroupTransition(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 16))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t ReadingFlow.__deallocating_deinit()
{
  ReadingFlow.deinit();
  OUTLINED_FUNCTION_18_3();

  return swift_deallocClassInstance();
}

void *ReadingFlow.deinit()
{
  swift_unknownObjectRelease();
  sub_1DCB070D4(*(v0 + 32), *(v0 + 40));
  return v0;
}

void sub_1DCB070D4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_1DCB06FC0(result, a2);
  }
}

void sub_1DCB070E0(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62 == 1)
  {
    v5 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (a1 >> 62)
    {
      return;
    }

    v5 = a3;
  }
}

uint64_t sub_1DCB07150()
{
  sub_1DCB07180(*(v0 + 16), *(v0 + 24));
  sub_1DCB0720C(v0 + 32);

  return v0;
}

uint64_t sub_1DCB07180(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1DCB06FC0(result, a2);
  }

  return result;
}

uint64_t sub_1DCB07194()
{
  sub_1DCB07150();

  return swift_deallocClassInstance();
}

void *sub_1DCB071CC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  return v0;
}

uint64_t AnyFlowAndActionGroupReturning.__deallocating_deinit()
{
  AnyFlowAndActionGroupReturning.deinit();
  OUTLINED_FUNCTION_5_11();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB07294()
{
  *(*v0 + 232) = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DCB07398, 0, 0);
}

void sub_1DCB07398()
{
  v1 = *(v0 + 232);
  if (!v1)
  {
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
LABEL_22:
    sub_1DCB192E4(v0 + 120, v0 + 192);
    if (*(v0 + 216))
    {
      sub_1DCB20B30((v0 + 192), (v0 + 160));
      sub_1DCB0DF6C(v0 + 160, v0 + 192);
      v17 = objc_allocWithZone(MEMORY[0x1E698D0F0]);
      v18 = [sub_1DCB1C2BC((v0 + 192)) callState];
      sub_1DCB19354(v18);
    }

    sub_1DCB185D0(v0 + 192, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    sub_1DCB19354(0);
  }

  v2 = 0;
  v19 = sub_1DCB08B14(*(v0 + 232));
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v19 == v2)
    {

      sub_1DCB078E8(v3, (v0 + 120));

      goto LABEL_22;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1E12A72C0](v2, v1);
    }

    else
    {
      if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v4 = *(v1 + 8 * v2 + 32);
    }

    v5 = v4;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v6 = sub_1DCB1C328(v4);
    if (!v6)
    {
      goto LABEL_27;
    }

    v7 = v6;
    v8 = sub_1DD0DDFBC();
    if (!*(v7 + 16))
    {

LABEL_17:

      goto LABEL_18;
    }

    v10 = sub_1DCB21038(v8, v9);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    sub_1DCB0DF6C(*(v7 + 56) + 32 * v10, v0 + 192);

    sub_1DCB20B30((v0 + 192), (v0 + 160));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DCB1C394(0, *(v3 + 16) + 1, 1, v3);
      v3 = v15;
    }

    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1DCB1C394(v13 > 1, v14 + 1, 1, v3);
      v3 = v16;
    }

    *(v3 + 16) = v14 + 1;
    sub_1DCB20B30((v0 + 160), (v3 + 32 * v14 + 32));
LABEL_18:
    ++v2;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1DCB076C0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = sub_1DD0DDFBC();
  *(inited + 40) = v4;
  sub_1DCB18D80(inited);
  *(swift_allocObject() + 16) = a1;
  sub_1DD0DD5EC();
}

uint64_t sub_1DCB077C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB0780C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallStateEnvironmentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB0784C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCB07894(uint64_t a1, uint64_t a2)
{
  **(*(a2 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

double sub_1DCB078E8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1DCB0DF6C(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void SiriEnvironment.callState.getter()
{
  type metadata accessor for CallStateEnvironmentProvider();
  OUTLINED_FUNCTION_0_19(&qword_1EDE4DB38);

  sub_1DD0DCA7C();
}

double OUTLINED_FUNCTION_0_6()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3;
  return result;
}

unint64_t OUTLINED_FUNCTION_0_9()
{

  return sub_1DCBCFB38();
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16)
{
  a9 = a14;
  a10 = a15;
  a11 = a16;
  *(&a11 + 9) = *(&a16 + 9);

  return sub_1DCB340B4(&a9);
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_19(unint64_t *a1)
{

  return sub_1DCB0780C(a1, &protocol conformance descriptor for CallStateEnvironmentProvider);
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return sub_1DCC6DF90(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_0_24()
{
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26()
{
  sub_1DCC91E6C(v3, v1);
  sub_1DCC91E6C(v2, v0);
  return v3;
}

double OUTLINED_FUNCTION_0_27()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = nullsub_1;
  *(v0 + 88) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_28(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_36()
{
  v2 = (v0 + v1[14]);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + v1[15]);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + v1[16]) = 0;
  *(v0 + v1[18]) = 0;
  v4 = v0 + v1[19];
  *v4 = 0;
  *(v4 + 8) = 512;
  *(v0 + v1[20]) = 0;
  *(v0 + v1[21]) = 0;
  *(v0 + v1[22]) = 0;
  *(v0 + v1[23]) = 0;
  *(v0 + v1[24]) = 0;
  *(v0 + v1[25]) = 0;
  v5 = (v0 + v1[26]);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + v1[27]) = 0;
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_1DD0DDF7C();
}

void OUTLINED_FUNCTION_2_7(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  sub_1DCB40A04(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_0_40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_42(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_0_43(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *v17 = a1;

  return sub_1DCB10E9C(0x65725F7261646172, 0xEF202D2074726F70, va);
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1, ...)
{

  return sub_1DD0DEDBC();
}

uint64_t OUTLINED_FUNCTION_0_53(unint64_t *a1)
{

  return sub_1DCB70ABC(a1, &protocol conformance descriptor for FlowRedirectContextProvider);
}

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_56()
{
  v2 = *(v0 + 56);
  *(v0 + 56) = 1;
  v3 = *(v0 + 64);
  *(v0 + 64) = 0;

  sub_1DCD90050(v2, v3);
}

uint64_t OUTLINED_FUNCTION_0_59(uint64_t a1, uint64_t a2)
{

  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_0_61(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v4 = a1;

  return sub_1DCB10E9C(v5, v3, va);
}

double OUTLINED_FUNCTION_0_62(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_63@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = 0xD000000000000011;
  *(result + 24) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_67(unint64_t *a1)
{

  return sub_1DCDD4D04(a1, &protocol conformance descriptor for MetricsEnvironmentProvider);
}

void OUTLINED_FUNCTION_1_9()
{
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 25) = v4;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 41) = v1;
  *(v7 + 42) = v0;
}

uint64_t OUTLINED_FUNCTION_0_70(unint64_t *a1)
{

  return sub_1DCB708D0(a1, &protocol conformance descriptor for NLRoutingDecisionProvider);
}

void OUTLINED_FUNCTION_0_71()
{

  sub_1DCB22A50(0, 1, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_79()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return sub_1DD06E2FC(va, v22, v23);
}

uint64_t OUTLINED_FUNCTION_0_82(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return Flow.eraseToAnyFlow()();
}

uint64_t OUTLINED_FUNCTION_0_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);

  return sub_1DD0C552C(a4, v6);
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return type metadata accessor for Input(0);
}

uint64_t OUTLINED_FUNCTION_0_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return sub_1DCB84380(v10, (v11 - 128), &v15, &v14);
}

uint64_t OUTLINED_FUNCTION_0_104(uint64_t a1)
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_0_109(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  sub_1DCB2C534(v5, v6, v4, a4);
}

uint64_t OUTLINED_FUNCTION_0_110()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_111()
{
}

uint64_t OUTLINED_FUNCTION_0_113(unint64_t *a1)
{

  return sub_1DCB70528(a1, &protocol conformance descriptor for SessionConfigurationProvider);
}

uint64_t OUTLINED_FUNCTION_0_115(unint64_t *a1)
{

  return sub_1DCB672F4(a1, &protocol conformance descriptor for SiriCorrectionsClientProvider);
}

uint64_t OUTLINED_FUNCTION_0_116(unint64_t *a1)
{

  return sub_1DCB719B4(a1, &protocol conformance descriptor for FlowTaskProvider);
}

uint64_t OUTLINED_FUNCTION_0_117()
{

  return sub_1DD0DE33C();
}

void OUTLINED_FUNCTION_0_120()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_0_121()
{

  JUMPOUT(0x1E12A6780);
}

__n128 OUTLINED_FUNCTION_0_130@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1760);
  *a1 = *(v1 + 1744);
  *(a1 + 16) = v3;
  result = *(v1 + 1776);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_131(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_136(uint64_t a1)
{

  return sub_1DD0DEFFC();
}

uint64_t OUTLINED_FUNCTION_0_137(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_0_139(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

BOOL OUTLINED_FUNCTION_61_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t a1)
{

  return swift_once();
}

int8x16_t OUTLINED_FUNCTION_10_7(int8x16_t *a1)
{
  *(v1 + 40) = a1;
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_24()
{
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_28()
{
  v3 = v0 + v1;
  v4 = *(v2 - 144);
  *v3 = *(v2 - 160);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 - 128);
  return 0;
}

uint64_t OUTLINED_FUNCTION_5_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = a10;
  *(v11 + 24) = a11;
  return v11;
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return sub_1DCC9FB18(v0, type metadata accessor for Input);
}

void OUTLINED_FUNCTION_5_34()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_5_35(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_5_37()
{

  return sub_1DCB10E9C(v0, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_5_39(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 + *(v21 + 32)) = *(v20 + *(v21 + 32));
  *(v22 + *(a18 + 24)) = *(v18 + *(a18 + 24));
  *(v22 + *(a18 + 28)) = *(v18 + *(a18 + 28));
}

void OUTLINED_FUNCTION_5_52()
{
  v3 = *(v0 + 56);
  *(v0 + 56) = v1;
  v4 = *(v0 + 64);
  *(v0 + 64) = 1;

  sub_1DCD90050(v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1DCB17D04(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_57()
{

  return sub_1DD0DEE6C();
}

void OUTLINED_FUNCTION_5_58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_60@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_1DCB17CA0(a1 + 40 * v15 + 32, va);
}

void OUTLINED_FUNCTION_5_64()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_5_70(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);

  return sub_1DCB706C8(v2, v1);
}

uint64_t OUTLINED_FUNCTION_5_73()
{

  return type metadata accessor for OutputGenerationManifest(0);
}

uint64_t OUTLINED_FUNCTION_5_77()
{
}

uint64_t OUTLINED_FUNCTION_5_79(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_83()
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_5_85(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);
  *(v1 + 192) = 0;
  result = 0.0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  return result;
}

void OUTLINED_FUNCTION_5_86()
{

  sub_1DCEDB240(v1, v0);
}

uint64_t OUTLINED_FUNCTION_5_89(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;

  return sub_1DD0DD85C();
}

void OUTLINED_FUNCTION_5_93(uint64_t a1@<X8>)
{
  *(v4 - 304) = a1;
  v6 = *(v4 - 368);
  v7 = *(v4 - 336);

  sub_1DCF3A878(v3, v6, v1, v2, v7);
}

void OUTLINED_FUNCTION_5_97()
{
  sub_1DCAFF9E8((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);

  sub_1DCCDE224(v1, v2);
}

__n128 OUTLINED_FUNCTION_5_99()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_102(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);

  return sub_1DCB70320(v2, v1);
}

uint64_t OUTLINED_FUNCTION_5_103(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_104()
{
  v3 = *(v1 + 96);
  *v3 = v0;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_5_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  *(v17 + 16) = 0;
  a17 = 0;
  a15 = 0u;
  a16 = 0u;

  return sub_1DCB514AC(&a15, &a10);
}

uint64_t OUTLINED_FUNCTION_5_107()
{

  return sub_1DD0DEB3C();
}

void OUTLINED_FUNCTION_5_108()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_5_114()
{
}

uint64_t OUTLINED_FUNCTION_5_116(uint64_t a1)
{

  return sub_1DD0DDB6C();
}

uint64_t *OUTLINED_FUNCTION_5_118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 240);
  v4[3] = a1;
  v4[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v4);
}

void OUTLINED_FUNCTION_5_122(void *a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  sub_1DCDAC354(a1);
}

uint64_t OUTLINED_FUNCTION_5_124()
{

  return sub_1DCB28794(v0, type metadata accessor for Input);
}

void OUTLINED_FUNCTION_5_125(uint64_t a1, uint64_t *a2)
{
  v3 = a2[2];
  v4 = *(a2 + 24);
  v5 = *a2;
  v6 = a2[1];

  sub_1DD082870(v5, v6, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_127()
{

  return sub_1DD0DB46C();
}

uint64_t sub_1DCB09910(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB09970(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v4;
}

uint64_t sub_1DCB099BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

unint64_t *sub_1DCB09A18(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  sub_1DCB72E48(*a2, v4, v5);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  sub_1DCB070E0(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCB09A70(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DD0DEB3C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

double OUTLINED_FUNCTION_1_11()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 8) = 0u;
  *(v0 + 80) = 3;
  return result;
}

void *OUTLINED_FUNCTION_1_12(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return StaticActionGroup.init(actions:transition:debugDescription:)(a1, &a9, 0xD000000000000011, v9 | 0x8000000000000000);
}

double OUTLINED_FUNCTION_1_15(uint64_t a1)
{
  *(a1 + 16) = v1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return __swift_storeEnumTagSinglePayload(v2 + v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_1_23(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_24(unint64_t *a1)
{

  return sub_1DCB0780C(a1, &protocol conformance descriptor for CallStateEnvironmentProvider);
}

void OUTLINED_FUNCTION_1_25(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  sub_1DCB2C534(0x7079546567616D49, 0xEC0000004C525565, v4, a4);
}

unint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{
  *(v3 - 120) = a1;
  *v1 = *(v3 - 304);
  v5 = *(v3 - 240);

  return sub_1DCB10E9C(v5, v2, (v3 - 120));
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DEF8C();
}

void OUTLINED_FUNCTION_1_33()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = 446;
  *(v0 + 22) = 2080;
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  *(v0 + v1[9]) = 256;
  *(v0 + v1[11]) = 0;

  return type metadata accessor for NLContextUpdate(0);
}

void OUTLINED_FUNCTION_19_1()
{
}

unint64_t OUTLINED_FUNCTION_1_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 14) = a1;
  *(v16 + 22) = 2080;

  return sub_1DCB10E9C(a12, v17, va);
}

void OUTLINED_FUNCTION_2_11(uint64_t a1)
{

  sub_1DCC60044();
}

uint64_t OUTLINED_FUNCTION_1_50()
{
}

void *OUTLINED_FUNCTION_1_55(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_1_66(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1DCB17CA0(v10, va);
}

uint64_t OUTLINED_FUNCTION_1_78(unint64_t *a1)
{

  return sub_1DCDD4D04(a1, &protocol conformance descriptor for MetricsEnvironmentProvider);
}

uint64_t OUTLINED_FUNCTION_1_79@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *(v1 + 16) = *v3;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  *(v1 + 64) = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_81()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v0);

  return sub_1DCBCF6C8(v2, v1);
}

uint64_t OUTLINED_FUNCTION_1_82()
{
}

uint64_t OUTLINED_FUNCTION_1_83(unint64_t *a1)
{

  return sub_1DCB708D0(a1, &protocol conformance descriptor for NLRoutingDecisionProvider);
}

__n128 *OUTLINED_FUNCTION_1_86(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 - 296);
  result[2].n128_u64[0] = *(v2 - 304);
  result[2].n128_u64[1] = v3;
  return result;
}

id OUTLINED_FUNCTION_1_88()
{
  v3 = *(v0 + 664);

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_1_96(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1DCB17CA0(v10, va);
}

void OUTLINED_FUNCTION_1_101(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));

  sub_1DCED8D50(a3, a4);
}

void OUTLINED_FUNCTION_1_106()
{
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));

  sub_1DCEE0F08(v2, v0);
}

uint64_t OUTLINED_FUNCTION_1_110@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1DCC08BCC(v2, &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_1_112()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_118(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_121(unint64_t *a1)
{

  return sub_1DCB70528(a1, &protocol conformance descriptor for SessionConfigurationProvider);
}

uint64_t OUTLINED_FUNCTION_1_122@<X0>(uint64_t a2@<X8>, uint64_t a3)
{
  v5 = (&a3 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_1_124(unint64_t *a1)
{

  return sub_1DCB672F4(a1, &protocol conformance descriptor for SiriCorrectionsClientProvider);
}

uint64_t OUTLINED_FUNCTION_1_125(unint64_t *a1)
{

  return sub_1DCB719B4(a1, &protocol conformance descriptor for FlowTaskProvider);
}

uint64_t OUTLINED_FUNCTION_1_126()
{

  return sub_1DCF9D5C4(v0, type metadata accessor for Input);
}

double OUTLINED_FUNCTION_1_128(uint64_t a1)
{
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

_OWORD *OUTLINED_FUNCTION_1_129()
{
  v2 = v0[1];
  v1[4] = *v0;
  v1[5] = v2;
  v1[6] = v0[2];
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_139(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_140(uint64_t a1)
{
  *(v1 - 128) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_12(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "relationship");
  a1[2].n128_u8[13] = 0;
  a1[2].n128_u16[7] = -5120;

  return RelationshipLabel.asUnboundedSemanticValue.getter();
}

uint64_t OUTLINED_FUNCTION_1_142(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_1_145()
{

  return sub_1DD0817E0(v0, type metadata accessor for NLContextUpdate);
}

__n128 OUTLINED_FUNCTION_1_147(unint64_t a1)
{
  v1[18].n128_u64[1] = a1;
  result = v1[2];
  *v2 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_148(uint64_t a1)
{
  v5 = (v2 + *(a1 + 28));
  v6 = *v5;
  v7 = *(v5 + 4);
  *(v3 - 68) = v7;

  return Siri_Nlu_External_UserDialogAct.extractAppShortcutInvocation(groupIndex:)(v6 | (v7 << 32), v1);
}

void OUTLINED_FUNCTION_1_150()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t getEnumTagSinglePayload for AppResolutionFlowError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, uint64_t a2)
{

  return sub_1DCBB492C(0);
}

BOOL OUTLINED_FUNCTION_51_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_51_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = v3;
  *(a1 + 128) = v2;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_8_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51_10()
{

  return type metadata accessor for ActionParaphrase(0);
}

uint64_t OUTLINED_FUNCTION_51_12(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1)
{

  return swift_allocError();
}

BOOL OUTLINED_FUNCTION_51_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_15()
{
}

void OUTLINED_FUNCTION_51_16()
{

  type metadata accessor for AFLocationServiceError(0);
}

uint64_t OUTLINED_FUNCTION_51_22()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_51_24()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_56_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_51_26()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_51_27()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_51_28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_33()
{
}

void OUTLINED_FUNCTION_120(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_41_5@<X0>(void *a1@<X8>)
{
  v1 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  return v1;
}

void OUTLINED_FUNCTION_41_6(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *(v9 + 24) = v10;
  *(v9 + 32) = a1;
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *v9 = a9;

  return swift_getObjectType();
}

id OUTLINED_FUNCTION_41_8(void *a1)
{

  return [a1 v1];
}

unint64_t OUTLINED_FUNCTION_41_10(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_41_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;

  return sub_1DD0DD85C();
}

uint64_t OUTLINED_FUNCTION_41_13()
{

  return sub_1DCB35460(0, (v0 & 0xC000000000000001) == 0, v0);
}

void OUTLINED_FUNCTION_41_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_41_16(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_17(unint64_t a1)
{

  return sub_1DCB79C80(a1, 17, 2, v1);
}

uint64_t OUTLINED_FUNCTION_41_23()
{

  return sub_1DCEED454();
}

void OUTLINED_FUNCTION_41_26()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_41_29()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_30()
{
  __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v3);
  *v2 = v0;
}

void OUTLINED_FUNCTION_41_32(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = v1;
  *(a1 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_41_37()
{

  return sub_1DD0DE4BC();
}

uint64_t OUTLINED_FUNCTION_118()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return sub_1DCC11158(v0, type metadata accessor for Input);
}

void OUTLINED_FUNCTION_30_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_27_8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_27_15()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_27_16(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14)
{
  a13 = a1;
  a14 = a2;

  return type metadata accessor for DisambiguationPrompt.State(0, &a13);
}

uint64_t OUTLINED_FUNCTION_27_17()
{
  v3 = *(v2 + 24);
  result = *(v1 + v3);
  *(v0 + v3) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_27_20(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v3 + 32);
  *(v3 + 72) = v2;
  *(v3 + 80) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_21()
{
}

uint64_t OUTLINED_FUNCTION_27_22(uint64_t result)
{
  *(result + 48) = v7;
  *(result + 56) = v6;
  *(result + 64) = v4;
  *(result + 65) = v3;
  *(result + 72) = v5;
  *(result + 80) = v2;
  *(result + 81) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_30(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

id OUTLINED_FUNCTION_27_36()
{
  *(v0 - 128) = *(v0 - 392) & 1;

  return sub_1DCF78960((v0 - 128));
}

__n128 OUTLINED_FUNCTION_27_41()
{
  v1 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v1;
  result = *(v0 + 48);
  *(v0 + 104) = result;
  *(v0 + 120) = *(v0 + 64);
  return result;
}

void OUTLINED_FUNCTION_27_42(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_27_43(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(__srca, a12);
  __src = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);

  return memcpy(v12, __srca, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_26_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return sub_1DD0DDF8C();
}

uint64_t OUTLINED_FUNCTION_26_11()
{
}

uint64_t OUTLINED_FUNCTION_26_12()
{
  v3 = *(v2 - 176);
  *(v2 - 120) = v0;
  *(v2 - 112) = v3;
  *(v2 - 104) = *(v2 - 264);
  *(v2 - 96) = v1;
  return type metadata accessor for DisambiguationPrompt.Response(0, v2 - 120);
}

double OUTLINED_FUNCTION_26_15@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_17()
{
}

uint64_t OUTLINED_FUNCTION_26_19(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 32);
  *(v2 + 72) = v1;
  return result;
}

void OUTLINED_FUNCTION_26_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 OUTLINED_FUNCTION_12_6(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11)
{
  *(a1 + 16) = v13;
  *(a1 + 24) = a2;
  result = a11;
  *(a1 + 40) = a11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v11;
  return result;
}

void OUTLINED_FUNCTION_26_22()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  v5 = *(v0 - 104);
  v6 = *(v0 - 96);
  v7 = *(v0 - 88);

  sub_1DCB22A50(v2, v3, v4, v5, v6, v7);
}

void OUTLINED_FUNCTION_26_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = a4 + 96 * v27;
  *(v29 + 32) = a27;
  *(v29 + 40) = v28;
}

void *OUTLINED_FUNCTION_26_27(void *result)
{
  result[2] = v4;
  result[3] = v5;
  result[4] = v3;
  result[5] = v2;
  result[6] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_31()
{

  return sub_1DD0DE92C();
}

uint64_t OUTLINED_FUNCTION_26_33(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DCBF7DC0(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_26_34()
{

  return sub_1DD0DF0AC();
}

void OUTLINED_FUNCTION_26_35()
{
  v1 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_26_41()
{
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1)
{
  v6 = v2 + *(a1 + 28);

  return sub_1DCB4F190(v6, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_6()
{
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t result)
{
  *(v3 + 48) = result;
  *(result + 16) = v4;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *(result + 40) = v5;
  return result;
}

void OUTLINED_FUNCTION_9_12()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_9_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1)
{
  *(a1 + 16) = *(v2 - 224);
  *(v2 - 104) = v1;

  return sub_1DD0DD1FC();
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_9_18(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_21()
{
  *(v1 - 152) = v0;
  *(v1 - 144) = 0;
  result = 0;
  *(v1 - 136) = -256;
  return result;
}

double OUTLINED_FUNCTION_9_24@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 3;
  return result;
}

unint64_t OUTLINED_FUNCTION_9_26@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1DCB10E9C(0xD00000000000001CLL, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_9_28(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_29(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEBC();
}

void *OUTLINED_FUNCTION_9_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return memcpy(va, &__src, 0x49uLL);
}

void OUTLINED_FUNCTION_2_13(uint64_t a1)
{

  sub_1DCC60044();
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1)
{

  return sub_1DD0DEC8C();
}

uint64_t OUTLINED_FUNCTION_9_34()
{
}

__n128 *OUTLINED_FUNCTION_9_37(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v3 - 96) = 0;
  *(v3 - 88) = 0xE000000000000000;
  *(v3 - 104) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_40(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DCB17CA0(v2, va);
}

uint64_t OUTLINED_FUNCTION_9_41()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_42(uint64_t a1)
{
  v3[4] = a1;
  *v3 = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_44(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_9_45(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1DCB10E9C(a1, a2, va);
}

void OUTLINED_FUNCTION_9_47()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_9_53(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v4 + 152);

  _os_log_impl(a1, v5, v8, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_9_54()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_57(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEF4C();
}

uint64_t *OUTLINED_FUNCTION_9_64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v2);
}

void OUTLINED_FUNCTION_9_65()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  sub_1DCB74408(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_9_71()
{

  return sub_1DCF653F8(v0, type metadata accessor for OutputGenerationManifest);
}

unint64_t OUTLINED_FUNCTION_9_72(uint64_t a1)
{

  return sub_1DCB10E9C(a1, v1, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_9_80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_9_83()
{

  return swift_setDeallocating();
}

uint64_t *OUTLINED_FUNCTION_9_84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 320);
  v4[3] = a1;
  v4[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v4);
}

uint64_t OUTLINED_FUNCTION_24_8()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 112);

  return sub_1DCC3DF28(v2, v3);
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return type metadata accessor for CATTemplateExecutor();
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_24_11(void *a1)
{

  return [a1 _imageSize];
}

uint64_t OUTLINED_FUNCTION_24_12(uint64_t a1)
{

  return sub_1DD0DE2EC();
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_24_19(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = *(v1 - 88);
  v3 = *(v1 - 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

double OUTLINED_FUNCTION_24_22@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a1 + 16) = a3;
  *(a1 + 32) = 261;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0xD00000000000001ELL;
  *(a1 + 80) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_25()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_24_29(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_24_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DD0DF07C();
}

unint64_t OUTLINED_FUNCTION_24_32(uint64_t a1, uint64_t a2)
{

  return sub_1DCB21038(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_33()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_24_34()
{
  v2 = *(v0 + 56);

  return sub_1DCDC578C(v2, type metadata accessor for Input);
}

uint64_t OUTLINED_FUNCTION_24_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *(v16 - 96);
  v19 = *(v16 - 88);

  return sub_1DCF94300(a1, v11, v15, v14, v13, v12, v18, v19, a9, a10, a11);
}

void OUTLINED_FUNCTION_24_36()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_24_37()
{
}

uint64_t OUTLINED_FUNCTION_24_42(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

unint64_t OUTLINED_FUNCTION_24_43@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 4);
  *(v2 - 4) = v3;
  return v4 | (v3 << 32);
}

void OUTLINED_FUNCTION_24_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void destroy for Parse(char *a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v3 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v8 = sub_1DD0DC76C();
      (*(*(v8 - 8) + 8))(a1, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      return;
    case 2u:

      goto LABEL_21;
    case 3u:

      swift_unknownObjectRelease();
      return;
    case 4u:
      v3 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v9 = *a1;
      goto LABEL_29;
    case 6u:
      v10 = sub_1DD0DB4BC();
      (*(*(v10 - 8) + 8))(a1, v10);
      v11 = *(type metadata accessor for USOParse(0) + 20);
      v12 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&a1[v11], 1, v12))
      {
        (*(*(v12 - 8) + 8))(&a1[v11], v12);
      }

      goto LABEL_21;
    case 7u:
      v5 = sub_1DD0DB4BC();
      (*(*(v5 - 8) + 8))(a1, v5);
      v6 = *(type metadata accessor for USOParse(0) + 20);
      v7 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&a1[v6], 1, v7))
      {
        (*(*(v7 - 8) + 8))(&a1[v6], v7);
      }

      type metadata accessor for LinkParse(0);

LABEL_21:

      break;
    case 8u:
      v13 = sub_1DD0DD12C();
      (*(*(v13 - 8) + 8))(a1, v13);
      v14 = type metadata accessor for NLRouterParse(0);

      v15 = &a1[*(v14 + 24)];
      v16 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
      {
        v17 = sub_1DD0DB4BC();
        (*(*(v17 - 8) + 8))(v15, v17);
        v18 = *(v16 + 20);
        v19 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(&v15[v18], 1, v19))
        {
          (*(*(v19 - 8) + 8))(&v15[v18], v19);
        }
      }

      v9 = *&a1[*(v14 + 28)];
LABEL_29:

      break;
    case 9u:
      v3 = sub_1DD0DD08C();
LABEL_5:
      v4 = *(*(v3 - 8) + 8);

      v4(a1, v3);
      break;
    default:
      return;
  }
}

void sub_1DCB0D344()
{
  OUTLINED_FUNCTION_50();
  v76 = v2;
  v77 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_10_2();
  v75 = v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = v71 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v71 - v14;
  v16 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_10_2();
  v74 = v21 - v22;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = v71 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v79 = v71 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v71 - v32;
  v34 = OBJC_IVAR____TtC11SiriKitFlow22ConversationSELFHelper_conversationId;
  swift_beginAccess();
  sub_1DCB099BC(v0 + v34, v15, &qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_38_2(v15);
  if (v35)
  {
    sub_1DCB0E9D8(v15, &qword_1ECCA2618, &unk_1DD0E5C50);
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v36 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v36, qword_1EDE57DA0);
    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v38))
    {
      v39 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v39);
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v40, v41, "[ConversationSELFHelper] No conversationId has been set");
      OUTLINED_FUNCTION_62();
    }
  }

  else
  {
    v78 = v18;
    v42 = *(v18 + 32);
    v42(v33, v15, v16);
    v43 = [objc_allocWithZone(MEMORY[0x1E69CE970]) init];
    if (v43)
    {
      v44 = v43;
      v72 = v42;
      v45 = [objc_allocWithZone(MEMORY[0x1E69CE978]) init];
      if (v45)
      {
        v46 = v45;
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        v47 = v79;
        v71[0] = *(v78 + 16);
        v71[1] = v78 + 16;
        (v71[0])(v79, v33, v16);
        v48 = sub_1DCB0DEDC(v47);
        v73 = v46;
        [v46 setCnvId_];

        v49 = v76;
        if (v76)
        {
          sub_1DD0DAFEC();
          OUTLINED_FUNCTION_38_2(v12);
          if (v35)
          {
            sub_1DCB0E9D8(v12, &qword_1ECCA2618, &unk_1DD0E5C50);
          }

          else
          {
            v72(v27, v12, v16);
            v56 = v79;
            (v71[0])(v79, v27, v16);
            v57 = sub_1DCB0DEDC(v56);
            [v73 setTrpId_];

            (*(v78 + 8))(v27, v16);
          }
        }

        v58 = OBJC_IVAR____TtC11SiriKitFlow22ConversationSELFHelper_executionRequestId;
        swift_beginAccess();
        v59 = v0 + v58;
        v60 = v75;
        sub_1DCB099BC(v59, v75, &qword_1ECCA2618, &unk_1DD0E5C50);
        OUTLINED_FUNCTION_38_2(v60);
        if (v35)
        {
          sub_1DCB0E9D8(v60, &qword_1ECCA2618, &unk_1DD0E5C50);
          v61 = v78;
          if (!v49)
          {
LABEL_28:
            v62 = 0;
            goto LABEL_29;
          }
        }

        else
        {
          v63 = v74;
          v64 = OUTLINED_FUNCTION_19();
          (v72)(v64);
          v65 = AFDeviceSupportsSAE();
          v66 = v79;
          (v71[0])(v79, v63, v16);
          v67 = sub_1DCB0DEDC(v66);
          v68 = v67;
          v69 = &selRef_setSubRequestId_;
          if (!v65)
          {
            v69 = &selRef_setRequestId_;
          }

          [v73 *v69];

          v61 = v78;
          (*(v78 + 8))(v63, v16);
          if (!v49)
          {
            goto LABEL_28;
          }
        }

        v62 = sub_1DD0DDF8C();
LABEL_29:
        v70 = v73;
        [v73 setResultCandidateId_];

        [v44 setEventMetadata_];
        (*(v61 + 8))(v33, v16);
        goto LABEL_20;
      }
    }

    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v50 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v50, qword_1EDE57DA0);
    v51 = sub_1DD0DD8EC();
    v52 = sub_1DD0DE6EC();
    v53 = OUTLINED_FUNCTION_75(v52);
    v54 = v78;
    if (v53)
    {
      v55 = OUTLINED_FUNCTION_50_0();
      *v55 = 0;
      _os_log_impl(&dword_1DCAFC000, v51, v52, "[ConversationSELFHelper] Failed to create base SELF objects", v55, 2u);
      OUTLINED_FUNCTION_80();
    }

    (*(v54 + 8))(v33, v16);
  }

LABEL_20:
  OUTLINED_FUNCTION_49();
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return sub_1DD0DEE5C();
}

void OUTLINED_FUNCTION_18_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_18_17(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_1DCB4E718(va);
}

__n128 OUTLINED_FUNCTION_18_20@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X3>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[3] = *a3;
  return result;
}

void OUTLINED_FUNCTION_18_21()
{
  *(v4 - 200) = v1;
  *(v4 - 192) = v2;
  *(v4 - 184) = v3;
  *(v4 - 176) = v0;
}

void *OUTLINED_FUNCTION_18_22@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[15] = a1;
  v4[16] = a3;
  v4[12] = v3;
  return __swift_project_boxed_opaque_existential_1(v4 + 12, a2);
}

uint64_t OUTLINED_FUNCTION_18_23@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *a1 = 2;

  return sub_1DD0DD7BC();
}

uint64_t OUTLINED_FUNCTION_18_25(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *(a1 + 16) = *(v20 + 80);
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
  *(a1 + 48) = v21;
  *(a1 + 56) = v19;
  v25 = a17;
  *(a1 + 64) = a16;
  *(a1 + 80) = v25;
  *(a1 + 96) = a18;
  *(a1 + 112) = a19;

  return sub_1DCB18FF0(&a10, a1 + 120);
}

uint64_t OUTLINED_FUNCTION_18_33(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_18_36()
{
}

uint64_t OUTLINED_FUNCTION_18_38()
{

  return sub_1DD0DBB6C();
}

uint64_t OUTLINED_FUNCTION_18_39()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_18_40(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 3, a1);
}

uint64_t OUTLINED_FUNCTION_18_48@<X0>(uint64_t a1@<X8>)
{

  return sub_1DCB22FCC(v2, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_18_49()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_55()
{
}

id sub_1DCB0DEDC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD0DB00C();
  v4 = [v2 initWithNSUUID_];

  sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_1DCB0DF6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{

  return sub_1DD0DE33C();
}

void OUTLINED_FUNCTION_91_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 1;
}

void OUTLINED_FUNCTION_91_2()
{

  JUMPOUT(0x1E12A7840);
}

uint64_t OUTLINED_FUNCTION_91_3(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 32);
  *(v2 + 72) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_91_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  result = *(a3 + 32);
  *(v4 + 48) = result;
  *(v4 + 64) = *(a3 + 48);
  *(v4 + 72) = a1;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void OUTLINED_FUNCTION_16_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void OUTLINED_FUNCTION_16_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_16_8()
{

  sub_1DCE18E10();
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_16_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return sub_1DCAFF9E8(&a9, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_16_13(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_16_16()
{
  v4 = (v2 + *(v3 + 68));
  *v4 = v0;
  v4[1] = v1;
}

uint64_t OUTLINED_FUNCTION_16_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = *a5;
  *(a7 + 64) = a6;
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_1DD0DE4BC();
}

uint64_t OUTLINED_FUNCTION_16_21()
{

  return MEMORY[0x1EEE69D10](v1, 1, v2, v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_16_23()
{

  return sub_1DD0DE3AC();
}

void *OUTLINED_FUNCTION_16_30()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_16_34@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  v5 = *(v3 + 16);
  result = *(v3 + 24);
  v6 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 40);
  *(v1 + 16) = v5;
  *(v1 + 24) = result;
  *(v1 + 32) = v6;
  *(v1 + 40) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_39(uint64_t a1)
{

  return sub_1DCB0E9D8(a1, v1, v2);
}

void OUTLINED_FUNCTION_16_41()
{
  v2 = *(v0 + 456);
}

uint64_t OUTLINED_FUNCTION_16_48()
{

  return type metadata accessor for LegacySiriKitOutputPublisher();
}

uint64_t OUTLINED_FUNCTION_16_49(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_16_50()
{

  return ActingFlow.conclude(with:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_16_51()
{
  v4 = (*(v0 + 56) + 40 * v1);

  return sub_1DCAFF9E8(v4, v2);
}

double OUTLINED_FUNCTION_16_54()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_55()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_16_58(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEF7C();
}

double OUTLINED_FUNCTION_16_59()
{
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = -4;
  v2 = (v0 + *(v1 + 40));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_60()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 24), v2);
  return v2;
}

void OUTLINED_FUNCTION_16_63()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);

  sub_1DCCDE224(v1, v2);
}

uint64_t OUTLINED_FUNCTION_16_64()
{
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  v1 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 168), v1);
  return v1;
}

id OUTLINED_FUNCTION_16_68(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_16_70()
{
  result = *v1;
  *v0 = *v1;
  *(v0 + 8) = *(v1 + 8);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 24) = *(v1 + 24);
  v3 = *(v1 + 32);
  *(v0 + 40) = *(v1 + 40);
  *(v0 + 32) = v3;
  *(v0 + 48) = *(v1 + 48);
  return result;
}

uint64_t sub_1DCB0E9D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(a1);
  return a1;
}

double OUTLINED_FUNCTION_2_16()
{
  *(v0 + 120) = 0;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_2_18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1DCB0F8B0(a3);

  return sub_1DCB354C8(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_21()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_2_25()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

unint64_t OUTLINED_FUNCTION_2_30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DCB21038(a2, a3);
}

uint64_t OUTLINED_FUNCTION_10_9(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2_33()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_2_34()
{
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_1DCB35460(v1, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_2_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_1DCAFF9E8(&a10, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_2_41(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

id OUTLINED_FUNCTION_2_46()
{
  v2 = *v1;
  v3 = *(v1 + 9);
  v4 = *(v1 + 8);
  result = sub_1DCBF9BE8(v2, v4, v3);
  *v0 = v2;
  *(v0 + 8) = v4;
  *(v0 + 9) = v3;
  return result;
}

unint64_t OUTLINED_FUNCTION_2_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 12) = 2082;

  return sub_1DCB10E9C(v18, v17, va);
}

uint64_t OUTLINED_FUNCTION_2_53(unint64_t *a1)
{

  return sub_1DCB70ABC(a1, &protocol conformance descriptor for FlowRedirectContextProvider);
}

uint64_t OUTLINED_FUNCTION_2_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DD0DEA0C();
}

uint64_t OUTLINED_FUNCTION_2_56(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEBC();
}

uint64_t OUTLINED_FUNCTION_2_57(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v3 + 16);
  *(v3 + 56) = v2;
  *(v3 + 64) = v1;
  return result;
}

void OUTLINED_FUNCTION_2_62()
{

  JUMPOUT(0x1E12A8390);
}

unint64_t OUTLINED_FUNCTION_2_69@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 14) = a1;
  *(v4 + 22) = 2080;

  return sub_1DCB10E9C(v2, v3, (v1 + 272));
}

uint64_t OUTLINED_FUNCTION_2_70()
{
}

uint64_t OUTLINED_FUNCTION_2_73@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + a1))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_2_74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_76()
{

  return sub_1DCB6B83C(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return sub_1DD0DDE9C();
}

uint64_t OUTLINED_FUNCTION_2_85(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_2_89(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  result[2] = v20;
  result[3] = a16;
  result[4] = a17;
  result[5] = a19;
  result[6] = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_90(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_91()
{
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));

  sub_1DCEDFC80(v2, v0);
}

void OUTLINED_FUNCTION_2_92(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));

  sub_1DCEE0944(a3, a4);
}

uint64_t OUTLINED_FUNCTION_2_96(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_98(uint64_t a1)
{
  *(v1 + 56) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_100(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_103(uint64_t a1, uint64_t a2)
{

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t OUTLINED_FUNCTION_2_106(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_112()
{
  v2 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v2;
}

void OUTLINED_FUNCTION_2_114(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, int a2, __int16 a3, char a4, char a5, char a6)
{

  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
}

uint64_t OUTLINED_FUNCTION_2_115(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_2_118(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_2_119@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1760);
  *a1 = *(v1 + 1744);
  *(a1 + 16) = v3;
  result = *(v1 + 1776);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_121()
{
  v2 = *(v0 + 80);

  return sub_1DCB28794(v2, type metadata accessor for USOParse);
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_50_11()
{
  *(v0 + 4) = v3;
  *(v0 + 12) = 2080;
  *(v1 + 128) = v2;

  type metadata accessor for CLAccuracyAuthorization(0);
}

uint64_t OUTLINED_FUNCTION_50_13@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + a1), *(v1 + a1 + 24));

  return type metadata accessor for SiriKitEvent(0);
}

void OUTLINED_FUNCTION_50_17(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[49] = a1;
  v2[50] = a2;
  v2[46] = v3;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_50_18()
{
  *v0 = v1;
  *(v0 + 8) = v2 & 1;
  *(v0 + 9) = 1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_50_20()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_getObjectType();
}

double OUTLINED_FUNCTION_3_11()
{
  *(v0 + 120) = 0;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{

  return sub_1DD0DBCEC();
}

uint64_t OUTLINED_FUNCTION_10_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 160) = a1;
  *(v5 - 152) = a2;
  *(v5 - 184) = v4;

  return sub_1DCC174D4(v3, v2);
}

id OUTLINED_FUNCTION_10_14(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DCC1EF18(va, v2);
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_1DD0DDF7C();
}

uint64_t OUTLINED_FUNCTION_10_27(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_10_28@<Q0>(uint64_t a1@<X2>, __int128 *a2@<X3>, _OWORD *a3@<X5>, __n128 *a4@<X6>, _OWORD *a5@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  a5[2] = *(a1 + 16);
  a5[3] = v5;
  a5[4] = v6;
  v7 = a3[1];
  *(a5 + 88) = *a3;
  *(a5 + 104) = v7;
  result = *a4;
  *(a5 + 120) = *a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB28B08(v4, v5 + 56, a3, a4);
}

double OUTLINED_FUNCTION_10_32()
{
  *(v0 + 48) = -4;
  v2 = (v0 + *(v1 + 40));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_35()
{
  v3 = *(v1 - 208);

  return sub_1DCB21A14(v3, v0);
}

void *OUTLINED_FUNCTION_10_38(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_10_40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = (v3 + a2);
  result[2] = *v4;
  result[3] = *(v4[1] + 16);
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_43(uint64_t a1)
{

  return sub_1DD0DD8EC();
}

unint64_t OUTLINED_FUNCTION_10_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1DCB1C4D8();
}

uint64_t OUTLINED_FUNCTION_10_47(uint64_t a1)
{
  *(v1 - 88) = a1;

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_10_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_52()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_10_53()
{

  sub_1DCB82888();
}

uint64_t OUTLINED_FUNCTION_10_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_storeEnumTagSinglePayload(v10 + v11, 1, 1, v9);
  *(v10 + a9) = 0;

  return sub_1DD0DB03C();
}

uint64_t OUTLINED_FUNCTION_10_64(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_70()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_10_71()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_10_72()
{
  v2 = *(v0 + 248);

  return sub_1DCF653F8(v2, type metadata accessor for ResponseComponents);
}

uint64_t OUTLINED_FUNCTION_10_73(uint64_t a1)
{
  *(v2 + 176) = v1;
  *(v2 + 200) = a1;
  sub_1DCB20B30((v2 + 176), (v2 + 208));

  return swift_isUniquelyReferenced_nonNull_native();
}

id OUTLINED_FUNCTION_10_74()
{
  v4 = *(v1 + 976);

  return [v2 v4];
}

void OUTLINED_FUNCTION_10_77(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4, uint64_t a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, a3, a4, v6, a6, v7, 2u);
}

void OUTLINED_FUNCTION_10_79()
{
  v2 = (v0 + v1[14]);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + v1[15]);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + v1[16]) = 0;
  *(v0 + v1[18]) = 0;
  v4 = v0 + v1[19];
  *v4 = 0;
  *(v4 + 8) = 512;
  *(v0 + v1[20]) = 0;
  *(v0 + v1[21]) = 0;
  *(v0 + v1[22]) = 0;
  *(v0 + v1[23]) = 0;
  *(v0 + v1[24]) = 0;
  *(v0 + v1[25]) = 0;
  v5 = (v0 + v1[26]);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + v1[27]) = 0;
}

id OUTLINED_FUNCTION_10_80()
{
  v2 = *(v0 + 80);
  *(v0 + 40) = *(v0 + 96);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 16) = v2;

  return v2;
}

int8x16_t OUTLINED_FUNCTION_10_81(uint64_t a1)
{
  *(v2 + 64) = a1;
  v3 = *(v2 + 24);
  *(a1 + 16) = *(v2 + 40);
  *(a1 + 32) = v1;
  result = vextq_s8(v3, v3, 8uLL);
  *(a1 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_10_82(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[13] = a1;
  v4[14] = a3;
  v4[10] = v3;
  __swift_project_boxed_opaque_existential_1(v4 + 10, a2);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_10_87(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DF0AC();
}

__n128 OUTLINED_FUNCTION_20_8(uint64_t a1)
{
  *(v2 + 104) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  result = *(v1 + 25);
  *(v2 + 41) = result;
  return result;
}

id OUTLINED_FUNCTION_20_11()
{

  return [v0 (v1 + 1272)];
}

void *OUTLINED_FUNCTION_20_12(void *result)
{
  result[10] = v2;
  result[11] = v1;
  v4 = *(v3 - 336);
  result[12] = *(v3 - 344);
  result[13] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return sub_1DCB16D50(v2, v0, v1);
}

double OUTLINED_FUNCTION_20_17@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_18()
{
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = v0;
  *(v4 - 96) = v1;
  return 255;
}

uint64_t OUTLINED_FUNCTION_3_12()
{
}

uint64_t OUTLINED_FUNCTION_20_21(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_20_22(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEFC();
}

uint64_t OUTLINED_FUNCTION_61_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF23C();
}

uint64_t OUTLINED_FUNCTION_20_25()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_20_28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[126] = a2;
  v2[125] = result;
  v2[122] = v3;
  return result;
}

double OUTLINED_FUNCTION_20_33()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_20_39(uint64_t a1)
{
  *(v3 + 72) = a1;
  result = *(v3 + 48);
  v5 = *(v3 + 24);
  *(a1 + 16) = result;
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_41()
{
  result = *v1;
  v3 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v3;
  v4 = *(v1 + 24);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 24) = v4;
  *(v0 + 32) = *(v1 + 32);
  *(v0 + 40) = *(v1 + 40);
  *(v0 + 48) = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_7()
{
  *(v0 + 168) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_8(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_19_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1DCC51F14(va, v19 + 115, v18, v20, v19 + 54, v19 + 67, v17, v16);
}

uint64_t OUTLINED_FUNCTION_19_11(uint64_t a1)
{

  return sub_1DD0DEDCC();
}

uint64_t OUTLINED_FUNCTION_19_14@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = a2;
  *(v3 - 87) = a3;
  return v3 - 96;
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19_16(uint64_t result)
{
  *(v2 + 32) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + a9) = 0;

  return sub_1DD0DB03C();
}

uint64_t OUTLINED_FUNCTION_19_18()
{

  return sub_1DCB6B83C(v0, v1, v2, v3);
}

void OUTLINED_FUNCTION_19_23()
{

  sub_1DD0DCACC();
}

uint64_t OUTLINED_FUNCTION_19_29(uint64_t a1)
{

  return sub_1DD0DEEDC();
}

uint64_t OUTLINED_FUNCTION_19_30()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19_37()
{
  v3 = *(v1 + 288);
  *v3 = v0;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_19_38()
{

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_19_40()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_19_44()
{

  sub_1DCF3A6B8(v0, v1, v3, v4, v2);
}

id OUTLINED_FUNCTION_19_45(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_19_46()
{
  __swift_project_boxed_opaque_existential_1((v1 - 128), v0);

  return sub_1DD0DB28C();
}

uint64_t OUTLINED_FUNCTION_19_55()
{

  return type metadata accessor for IdentifiedUser(0);
}

uint64_t OUTLINED_FUNCTION_19_56()
{

  return swift_allocObject();
}

uint64_t sub_1DCB10E5C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1DCB10E9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DCB11BBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DCB0DF6C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

void sub_1DCB10F60(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_48_0();
  v8 = AFDeviceSupportsSAE();
  sub_1DCB11070(a1, 0xEu, v8, a2);
  v9 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2();
  (*(v10 + 16))(v2, a2, v9);
  v11 = OUTLINED_FUNCTION_32_11();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  sub_1DCB130C4(v2);
}

uint64_t sub_1DCB11070@<X0>(NSObject *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v114) = a3;
  v119 = a2;
  v122 = a4;
  v5 = sub_1DD0DB04C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v111 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v123 = &v111 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v118 = &v111 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v117 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v111 - v25;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v27 = sub_1DD0DD8FC();
  v28 = __swift_project_value_buffer(v27, qword_1EDE57DA0);
  v29 = *(v6 + 16);
  v121 = a1;
  v124 = v29;
  v29(v26, a1, v5);
  v120 = v28;
  v30 = sub_1DD0DD8EC();
  v31 = sub_1DD0DE6DC();
  v32 = os_log_type_enabled(v30, v31);
  v125 = v6;
  v116 = v14;
  if (v32)
  {
    v113 = v5;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v126 = v34;
    *v33 = 136315394;
    if (v119 > 0x42)
    {
      v35 = @"COMPONENTNAME_UNKNOWN";
      v36 = @"COMPONENTNAME_UNKNOWN";
    }

    else
    {
      v35 = off_1E8649FE0[v119];
      v36 = off_1E864A1F8[v119];
    }

    v38 = v35;
    v39 = v36;
    v40 = sub_1DD0DDFBC();
    v42 = v41;

    v43 = sub_1DCB10E9C(v40, v42, &v126);

    *(v33 + 4) = v43;
    *(v33 + 12) = 2080;
    v44 = sub_1DD0DAFFC();
    v46 = v45;
    v37 = *(v125 + 8);
    v47 = v26;
    v48 = v113;
    v37(v47, v113);
    v49 = sub_1DCB10E9C(v44, v46, &v126);

    *(v33 + 14) = v49;
    _os_log_impl(&dword_1DCAFC000, v30, v31, "[ConversationSELFHelper] Deriving identifier for: %s and execution ID: %s", v33, 0x16u);
    swift_arrayDestroy();
    v50 = v34;
    v5 = v48;
    MEMORY[0x1E12A8390](v50, -1, -1);
    MEMORY[0x1E12A8390](v33, -1, -1);
  }

  else
  {

    v37 = *(v6 + 8);
    v37(v26, v5);
  }

  v51 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  v52 = v123;
  if (v51)
  {
    v53 = v51;
    v54 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
    if (v54)
    {
      v55 = v54;
      v56 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
      if (v56)
      {
        v57 = v56;
        v113 = v37;
        v58 = sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        v59 = v117;
        v60 = v121;
        v61 = v124;
        v124(v117, v121, v5);
        v111 = v58;
        v62 = sub_1DCB0DEDC(v59);
        [v57 setUuid_];

        if (v114)
        {
          v63 = 43;
        }

        else
        {
          v63 = 1;
        }

        [v57 setComponent_];
        v64 = v57;
        v65 = v119;
        [v55 setComponent_];
        v114 = v55;
        [v53 setSource_];
        v112 = v64;
        [v53 setTarget_];
        v66 = v118;
        sub_1DCB12BC0(v60, v65);
        v61(v52, v66, v5);
        v67 = v116;
        v61(v116, v60, v5);
        v68 = sub_1DD0DD8EC();
        v69 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v68, v69))
        {
          LODWORD(v120) = v69;
          v121 = v68;
          v70 = v5;
          v71 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v126 = v115;
          *v71 = 136315650;
          v72 = v113;
          if (v65 > 0x42)
          {
            v73 = @"COMPONENTNAME_UNKNOWN";
            v74 = @"COMPONENTNAME_UNKNOWN";
          }

          else
          {
            v73 = off_1E864A410[v65];
            v74 = off_1E864A628[v65];
          }

          v87 = v73;
          v88 = v74;
          v89 = sub_1DD0DDFBC();
          v91 = v90;

          v92 = sub_1DCB10E9C(v89, v91, &v126);

          *(v71 + 4) = v92;
          *(v71 + 12) = 2080;
          v93 = v123;
          v94 = sub_1DD0DAFFC();
          v96 = v95;
          v85 = v125;
          v72(v93, v70);
          v97 = sub_1DCB10E9C(v94, v96, &v126);

          *(v71 + 14) = v97;
          *(v71 + 22) = 2080;
          v98 = v116;
          v99 = sub_1DD0DAFFC();
          v101 = v100;
          v72(v98, v70);
          v102 = sub_1DCB10E9C(v99, v101, &v126);

          *(v71 + 24) = v102;
          v103 = v121;
          _os_log_impl(&dword_1DCAFC000, v121, v120, "[ConversationSELFHelper] Emitting request link: %s/%s to ORCH:%s", v71, 0x20u);
          v104 = v115;
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v104, -1, -1);
          v105 = v71;
          v5 = v70;
          MEMORY[0x1E12A8390](v105, -1, -1);
        }

        else
        {

          v85 = v125;
          v86 = v113;
          v113(v67, v5);
          v86(v52, v5);
        }

        v106 = v112;
        v107 = v117;
        v108 = v118;
        v124(v117, v118, v5);
        v109 = sub_1DCB0DEDC(v107);
        v110 = v114;
        [v114 setUuid_];

        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();

        return (*(v85 + 32))(v122, v108, v5);
      }
    }

    else
    {
      v55 = v53;
    }
  }

  v124(v10, v121, v5);
  v75 = sub_1DD0DD8EC();
  v76 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v126 = v78;
    *v77 = 136315138;
    v79 = sub_1DD0DAFFC();
    v80 = v5;
    v82 = v81;
    v37(v10, v80);
    v83 = sub_1DCB10E9C(v79, v82, &v126);

    *(v77 + 4) = v83;
    _os_log_impl(&dword_1DCAFC000, v75, v76, "[ConversationSELFHelper] Unable to create RequestLink schemas for SELF for execution ID: %s. Will create an unlinked UUID.", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x1E12A8390](v78, -1, -1);
    MEMORY[0x1E12A8390](v77, -1, -1);
  }

  else
  {

    v37(v10, v5);
  }

  return sub_1DD0DB03C();
}

uint64_t static ConversationSELFHelper.makeUUID(fromExecutionRequestId:)(uint64_t a1)
{
  OUTLINED_FUNCTION_46_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v20 - v4;
  OUTLINED_FUNCTION_19();
  sub_1DD0DAFEC();
  v6 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DCB0E9D8(v5, &qword_1ECCA2618, &unk_1DD0E5C50);
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v7, qword_1EDE57DA0);

    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_151();
      v11 = OUTLINED_FUNCTION_83();
      v20[1] = v11;
      *v10 = 136315138;
      v12 = OUTLINED_FUNCTION_19();
      *(v10 + 4) = sub_1DCB10E9C(v12, v13, v14);
      OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] Unable to create UUID from executionRequestId: %s.");
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    return sub_1DD0DB03C();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_33_1();
    return v19(v18);
  }
}

void OUTLINED_FUNCTION_159()
{

  JUMPOUT(0x1E12A6780);
}

unint64_t sub_1DCB11BBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DCB1A830(a5, a6);
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
    result = sub_1DD0DECBC();
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

uint64_t OUTLINED_FUNCTION_80_0(float a1)
{
  *v1 = a1;

  return sub_1DD0DF2AC();
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  v3 = v1[1];
  *v0 = *v1;
  v0[1] = v3;

  return sub_1DD0DB66C();
}

void OUTLINED_FUNCTION_80_5(uint64_t a1)
{
  *(v1 + 152) = a1;

  sub_1DD0DD50C();
}

uint64_t OUTLINED_FUNCTION_80_6@<X0>(uint64_t a1@<X8>, __n128 a2@<Q1>, __int128 a3)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return v3;
}

unint64_t OUTLINED_FUNCTION_80_7()
{

  return sub_1DCE0E1C0();
}

uint64_t OUTLINED_FUNCTION_80_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PromptForValueFlowAsync.State(0, a2, a3, a4);
  *(v4 + 72) = result;
  return result;
}

id OUTLINED_FUNCTION_80_13()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);

  return sub_1DCFEB414(v2, v3, v4);
}

__n128 OUTLINED_FUNCTION_80_16(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a18)
{
  result = a18;
  *a1 = a18.n128_u32[0];
  return result;
}

void *OUTLINED_FUNCTION_79_2()
{

  return memcpy((v1 - 160), v0, 0x48uLL);
}

void OUTLINED_FUNCTION_79_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 400) = sub_1DCCCB3DC(v5, a2, a3, a4, a5, v6 + 224);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_79_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

void *OUTLINED_FUNCTION_79_7(void *result)
{
  result[2] = v3;
  result[3] = v4;
  result[4] = v2;
  result[5] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_10(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_79_13(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_1DD0DB04C();
}

uint64_t OUTLINED_FUNCTION_79_14()
{

  return type metadata accessor for NLContextUpdate(0);
}

uint64_t OUTLINED_FUNCTION_79_16@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);

  return type metadata accessor for ResolveConfirmFlow.ResolveConfirmFlowError(0, v3, v4, a2);
}

uint64_t OUTLINED_FUNCTION_79_17()
{

  return swift_getErrorValue();
}

void *OUTLINED_FUNCTION_79_20(void *result)
{
  v3 = *(*(v2 - 200) + v1);
  *(v2 - 200) = v3;
  result[2] = v3;
  v4 = *(*(v2 - 208) + v1);
  *(v2 - 208) = v4;
  result[3] = v4;
  v5 = *(*(v2 - 216) + v1);
  *(v2 - 216) = v5;
  result[4] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_21(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_44_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 14) = a1;
  *(v1 + 22) = 2080;

  return sub_1DCB10E9C(0xD000000000000048, v2 | 0x8000000000000000, (v3 - 88));
}

uint64_t OUTLINED_FUNCTION_44_4()
{
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB09910(v5, v4, a3, a4);
}

void OUTLINED_FUNCTION_44_8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v11, v10, v12, 2u);
}

unint64_t OUTLINED_FUNCTION_44_9(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 96));
}

id OUTLINED_FUNCTION_44_10()
{

  return [v0 (v1 + 1104)];
}

void *OUTLINED_FUNCTION_34_4()
{
  v0[168] = 0;

  return memcpy(v0 + 16, v0 + 96, 0x49uLL);
}

uint64_t *OUTLINED_FUNCTION_44_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v2);
}

uint64_t OUTLINED_FUNCTION_44_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  return a11;
}

void *OUTLINED_FUNCTION_44_17(void *result)
{
  *(v3 + 136) = result;
  result[2] = v4;
  result[3] = v1;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_19(uint64_t result)
{
  *(v2 + 56) = result;
  *(v2 + 64) = v1;
  return result;
}

BOOL OUTLINED_FUNCTION_44_22(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_44_26()
{

  return sub_1DD0DEDEC();
}

void OUTLINED_FUNCTION_44_30()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_44_31()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_44_32()
{

  return sub_1DCB4F1DC(v2 + 16, v2 + 136, v1, v0);
}

BOOL OUTLINED_FUNCTION_44_35(os_log_type_t a1)
{
  sub_1DD02C1D8(v1, *(v3 - 208), 1u);

  return os_log_type_enabled(v2, a1);
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return sub_1DD0DD8FC();
}

uint64_t OUTLINED_FUNCTION_46_7@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 56) + 48 * (__clz(__rbit64(v3)) | (a1 << 6));

  return sub_1DCC17FA8(v5, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_46_9()
{
}

id OUTLINED_FUNCTION_46_10(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_46_11()
{
  v3 = *(v1 + 16);
  *(v1 + 16) = v0;
  v4 = *(v1 + 24);
  *(v1 + 24) = 2;

  sub_1DCD070F8(v3, v4);
}

uint64_t OUTLINED_FUNCTION_46_12(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_46_13()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_46_14()
{
}

uint64_t OUTLINED_FUNCTION_46_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 424) = a1;

  return type metadata accessor for PromptResult(255, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_46_21(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1DCB651D0(v1);
}

void OUTLINED_FUNCTION_46_23(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
}

__n128 OUTLINED_FUNCTION_46_24()
{
  v1 = *(v0 - 144);
  result = *(v0 - 176);
  v3 = *(v0 - 160);
  *(v0 - 224) = result;
  *(v0 - 208) = v3;
  *(v0 - 192) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_27(uint64_t a1)
{

  return sub_1DD0DE02C();
}

BOOL OUTLINED_FUNCTION_245()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, __int128 a15)
{

  return swift_getErrorValue();
}

double OUTLINED_FUNCTION_31_7()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

void OUTLINED_FUNCTION_36_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31_12()
{
}

uint64_t OUTLINED_FUNCTION_31_16()
{
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return sub_1DCB285E0(v0, type metadata accessor for NLRouterParse);
}

__n128 OUTLINED_FUNCTION_31_19(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v10 + 144) = a1;
  result = a10;
  a1[1] = a10;
  a1[2].n128_u64[0] = v11;
  return result;
}

unint64_t OUTLINED_FUNCTION_31_20()
{

  return sub_1DCB10E9C(v1, v0, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_31_26()
{

  return type metadata accessor for SiriKitFlowFrameInput(0);
}

void OUTLINED_FUNCTION_31_28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_31_29(char a1@<W8>)
{
  *(v4 - 96) = v1;
  *v2 = a1;
  *(v2 + 8) = v3;

  sub_1DD0DCF8C();
}

void OUTLINED_FUNCTION_31_33(uint64_t a1)
{

  sub_1DD0DCEEC();
}

__n128 *OUTLINED_FUNCTION_83_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

unint64_t OUTLINED_FUNCTION_83_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DCB10E9C(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_83_4(uint64_t a1)
{

  return sub_1DCB0E9D8(a1, v1, v2);
}

void OUTLINED_FUNCTION_83_5(uint64_t a1@<X8>)
{
  *(a1 + 72) = v2;
  *(a1 + 80) = v1;
  *(a1 + 88) = 0;
}

uint64_t OUTLINED_FUNCTION_83_6()
{

  return swift_retain_n();
}

unint64_t OUTLINED_FUNCTION_83_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1DCB10E9C(v6, v7, va);
}

uint64_t OUTLINED_FUNCTION_83_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 + 144) + 120;

  return sub_1DCB099BC(v6, v4 + 760, a3, a4);
}

uint64_t OUTLINED_FUNCTION_83_12(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return swift_beginAccess();
}

void sub_1DCB12BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_1DD0DB00C();
  v21 = [v9 derivedIdentifierForComponentName:a2 fromSourceIdentifier:v10];

  if (v21)
  {
    sub_1DD0DB02C();
    v11 = v21;
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57DA0);
    (*(v5 + 16))(v8, a1, v4);
    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = sub_1DD0DAFFC();
      v19 = v18;
      (*(v5 + 8))(v8, v4);
      v20 = sub_1DCB10E9C(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DCAFC000, v13, v14, "[ConversationSELFHelper] Failed to create a derived identifier for SELF for execution ID: %s. Will create a random UUID.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A8390](v16, -1, -1);
      MEMORY[0x1E12A8390](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    sub_1DD0DB03C();
  }
}

void sub_1DCB12E8C()
{
  OUTLINED_FUNCTION_50();
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57DA0);
  sub_1DD0DCF8C();
}

void sub_1DCB130D8()
{
  OUTLINED_FUNCTION_46_8();
  v3 = *v2;
  swift_beginAccess();
  sub_1DCB13160(v1, v0 + v3);
  swift_endAccess();
  OUTLINED_FUNCTION_86();
  sub_1DCB12E8C();
}

uint64_t sub_1DCB13160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB131E0()
{
  sub_1DCB132FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB13214()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB1324C()
{

  return swift_deallocClassInstance();
}

uint64_t _s11SiriKitFlow27OutputPublisherAsyncAdapterCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB132BC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

void *sub_1DCB132FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t ContactsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ContactsManagerAsync.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB133A4()
{
  sub_1DCB133FC();

  return swift_deallocClassInstance();
}

char *sub_1DCB133FC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_59();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)], *(v1 + 80));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v3 + 112)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v4 + 120)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v5 + 128)]);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v6 + 136)]);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v8 = *(v7 + 152);
  v9 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for RCHFlowAsync.State(v9, v10, v11, v12);
  OUTLINED_FUNCTION_13_1();
  (*(v13 + 8))(&v0[v8]);
  return v0;
}

void sub_1DCB135A4(unint64_t *a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = sub_1DD0DB04C();
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = type metadata accessor for Input(0);
      v6 = (a1 + *(v5 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v7 = sub_1DD0DC76C();
          goto LABEL_43;
        case 1u:
          v35 = sub_1DD0DC76C();
          (*(*(v35 - 8) + 8))(v6, v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_53;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v7 = sub_1DD0DB1EC();
          goto LABEL_43;
        case 5u:
          v36 = *v6;
          goto LABEL_59;
        case 6u:
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 8))(v6, v37);
          v38 = *(type metadata accessor for USOParse(0) + 20);
          v39 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v6 + v38, 1, v39))
          {
            (*(*(v39 - 8) + 8))(v6 + v38, v39);
          }

          goto LABEL_53;
        case 7u:
          v32 = sub_1DD0DB4BC();
          (*(*(v32 - 8) + 8))(v6, v32);
          v33 = *(type metadata accessor for USOParse(0) + 20);
          v34 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v6 + v33, 1, v34))
          {
            (*(*(v34 - 8) + 8))(v6 + v33, v34);
          }

          type metadata accessor for LinkParse(0);

LABEL_53:

          break;
        case 8u:
          v40 = sub_1DD0DD12C();
          (*(*(v40 - 8) + 8))(v6, v40);
          v41 = type metadata accessor for NLRouterParse(0);

          v42 = v6 + *(v41 + 24);
          v43 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v42, 1, v43))
          {
            v44 = sub_1DD0DB4BC();
            (*(*(v44 - 8) + 8))(v42, v44);
            v45 = *(v43 + 20);
            v46 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v42 + v45, 1, v46))
            {
              (*(*(v46 - 8) + 8))(v42 + v45, v46);
            }
          }

          v36 = *(v6 + *(v41 + 28));
LABEL_59:

          break;
        case 9u:
          v7 = sub_1DD0DD08C();
LABEL_43:
          (*(*(v7 - 8) + 8))(v6, v7);
          break;
        default:
          break;
      }

      v47 = (a1 + *(v5 + 28));
      if (v47[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
      }

      swift_getAssociatedTypeWitness();
      v3 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
      goto LABEL_63;
    case 1u:
    case 7u:
      goto LABEL_38;
    case 2u:
    case 3u:
    case 6u:

      return;
    case 4u:
      v11 = sub_1DD0DB04C();
      (*(*(v11 - 8) + 8))(a1, v11);
      v9 = type metadata accessor for Input(0);
      v10 = (a1 + *(v9 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_13;
        case 1u:
          goto LABEL_24;
        case 2u:
          goto LABEL_19;
        case 3u:
          goto LABEL_20;
        case 4u:
          goto LABEL_16;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_26;
        case 7u:
          goto LABEL_21;
        case 8u:
          goto LABEL_29;
        case 9u:
          goto LABEL_17;
        default:
          goto LABEL_35;
      }

      goto LABEL_35;
    case 5u:
      v8 = sub_1DD0DB04C();
      (*(*(v8 - 8) + 8))(a1, v8);
      v9 = type metadata accessor for Input(0);
      v10 = (a1 + *(v9 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
LABEL_13:
          v12 = sub_1DD0DC76C();
          goto LABEL_18;
        case 1u:
LABEL_24:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 8))(v10, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:
LABEL_19:

          goto LABEL_28;
        case 3u:
LABEL_20:
          swift_unknownObjectRelease();
          break;
        case 4u:
LABEL_16:
          v12 = sub_1DD0DB1EC();
          goto LABEL_18;
        case 5u:
LABEL_25:
          v17 = *v10;
          goto LABEL_34;
        case 6u:
LABEL_26:
          v18 = sub_1DD0DB4BC();
          (*(*(v18 - 8) + 8))(v10, v18);
          v19 = *(type metadata accessor for USOParse(0) + 20);
          v20 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v10 + v19, 1, v20))
          {
            (*(*(v20 - 8) + 8))(v10 + v19, v20);
          }

          goto LABEL_28;
        case 7u:
LABEL_21:
          v13 = sub_1DD0DB4BC();
          (*(*(v13 - 8) + 8))(v10, v13);
          v14 = *(type metadata accessor for USOParse(0) + 20);
          v15 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v10 + v14, 1, v15))
          {
            (*(*(v15 - 8) + 8))(v10 + v14, v15);
          }

          type metadata accessor for LinkParse(0);

LABEL_28:

          break;
        case 8u:
LABEL_29:
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 8))(v10, v21);
          v22 = type metadata accessor for NLRouterParse(0);

          v23 = v10 + *(v22 + 24);
          v24 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
          {
            v25 = sub_1DD0DB4BC();
            (*(*(v25 - 8) + 8))(v23, v25);
            v26 = *(v24 + 20);
            v27 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v23 + v26, 1, v27))
            {
              (*(*(v27 - 8) + 8))(v23 + v26, v27);
            }
          }

          v17 = *(v10 + *(v22 + 28));
LABEL_34:

          break;
        case 9u:
LABEL_17:
          v12 = sub_1DD0DD08C();
LABEL_18:
          (*(*(v12 - 8) + 8))(v10, v12);
          break;
        default:
          break;
      }

LABEL_35:

      v28 = (a1 + *(v9 + 28));
      if (v28[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v30, v31);
      sub_1DD0DE97C();
      swift_getTupleTypeMetadata2();
LABEL_38:

      return;
    case 8u:

      v3 = a1[2];
      goto LABEL_63;
    case 9u:

      v3 = a1[1];
LABEL_63:

      goto LABEL_7;
    case 0xAu:
      sub_1DCB070E0(*a1, a1[1], a1[2]);
      return;
    case 0xBu:
      v3 = *a1;

LABEL_7:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCB14140()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v1 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v2 + 120)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 128)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 136)));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v6 = v0 + *(v5 + 152);
  sub_1DCB150B8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40));
  return v0;
}

uint64_t sub_1DCB14268()
{
  sub_1DCB14140();

  return swift_deallocClassInstance();
}

void *sub_1DCB142C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t sub_1DCB142F0()
{
  sub_1DCB142C0();

  return swift_deallocClassInstance();
}

void sub_1DCB14324()
{
  v142 = v0;
  v1 = v0[48];
  OUTLINED_FUNCTION_21_43();
  sub_1DCB3B4A0(v2, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = v0[41];
      v6 = *(v0[48] + 16);

      v7 = *(v5 + 80);
      v8 = sub_1DCB3BACC(v7, v7);
      if (v8)
      {
        v9 = v8;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v11 = sub_1DCB3BB68(AssociatedTypeWitness, AssociatedTypeWitness);
        if (v11)
        {
          v12 = v11;
          sub_1DCB3BBC0(v9);
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v13 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
          v14 = sub_1DD0DD8EC();
          v15 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_75(v15))
          {
            v16 = OUTLINED_FUNCTION_50_0();
            *v16 = 0;
            _os_log_impl(&dword_1DCAFC000, v14, v15, "ResolveConfirmFlow transitioning to state confirm with intent", v16, 2u);
            OUTLINED_FUNCTION_80();
          }

          v18 = v0[36];
          v17 = v0[37];

          v138 = v18;
          *&v139 = v12;
          v140 = 0uLL;
          *(&v139 + 1) = v17;
          v141 = 6;
          sub_1DD0DCF8C();
        }
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v98 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v98, qword_1EDE57E00);
      v99 = sub_1DD0DD8EC();
      v100 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v100))
      {
        v136 = v6;
        v101 = v0[40];
        v102 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *v102 = 136315394;
        v0[30] = v7;
        swift_getMetatypeMetadata();
        v103 = sub_1DD0DE02C();
        v105 = sub_1DCB10E9C(v103, v104, &v138);

        *(v102 + 4) = v105;
        *(v102 + 12) = 2080;
        v106 = *(v101 + 88);
        v0[31] = swift_getAssociatedTypeWitness();
        swift_getMetatypeMetadata();
        v107 = sub_1DD0DE02C();
        v109 = sub_1DCB10E9C(v107, v108, &v138);

        *(v102 + 14) = v109;
        OUTLINED_FUNCTION_71_15();
        _os_log_impl(v110, v111, v112, v113, v114, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_80();
      }

      else
      {
        v116 = v0[40];

        v106 = *(v116 + 88);
      }

      v117 = type metadata accessor for ResolveConfirmFlow.ResolveConfirmFlowError(0, v0[44], v106, v115);
      OUTLINED_FUNCTION_0_106();
      WitnessTable = swift_getWitnessTable();
      v119 = OUTLINED_FUNCTION_34(v117, WitnessTable);
      OUTLINED_FUNCTION_8_68(v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
    }

    v33 = v0[48];
    v34 = v0[43];
    v35 = v0[41];
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48);
    OUTLINED_FUNCTION_20_31();
    sub_1DCB398D0(v33 + v36, v34, v37);
    v38 = *(v35 + 80);
    if (sub_1DCB3BACC(v38, v38))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v39 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
      v40 = sub_1DD0DD8EC();
      v41 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v41))
      {
        v42 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v42);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v43, v44, v45, v46, v47, 2u);
        OUTLINED_FUNCTION_62();
      }

      v48 = v0[36];
      v49 = v0[37];

      v138 = v48;
      v139 = v49;
      v140 = 0uLL;
      v141 = 5;
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v74 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v74, qword_1EDE57E00);
    v75 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_137();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_151();
      v78 = OUTLINED_FUNCTION_83();
      v138 = v78;
      *v77 = 136315138;
      v0[27] = v38;
      swift_getMetatypeMetadata();
      v79 = sub_1DD0DE02C();
      v81 = sub_1DCB10E9C(v79, v80, &v138);

      *(v77 + 4) = v81;
      OUTLINED_FUNCTION_71_15();
      _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v88 = type metadata accessor for ResolveConfirmFlow.ResolveConfirmFlowError(0, v0[44], *(v0[40] + 88), v87);
    OUTLINED_FUNCTION_0_106();
    v89 = swift_getWitnessTable();
    v90 = OUTLINED_FUNCTION_34(v88, v89);
    OUTLINED_FUNCTION_8_68(v90, v91, v92, v93, v94, v95, v96, v97, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
  }

  v19 = *(v1 + 8);
  v20 = *(v0[41] + 80);
  v21 = sub_1DCB3BACC(v20, v20);
  if (v21)
  {
    v22 = v21;
    v23 = v0[37];
    v24 = *(v19 + 24);

    sub_1DCB8CD88(v25, v22, v24, v23);
    v27 = v26;

    sub_1DCB3BBC0(v22);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v28 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v30))
    {
      v31 = OUTLINED_FUNCTION_50_0();
      *v31 = 0;
      _os_log_impl(&dword_1DCAFC000, v29, v30, "ResolveConfirmFlow transitioning to state resolve", v31, 2u);
      OUTLINED_FUNCTION_80();
    }

    v32 = v0[36];

    v138 = v32;
    v139 = v27;
    v140 = 0uLL;
    v141 = 4;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v50 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
  v51 = sub_1DD0DD8EC();
  v52 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v52))
  {
    v53 = OUTLINED_FUNCTION_151();
    v54 = OUTLINED_FUNCTION_83();
    v138 = v54;
    *v53 = 136315138;
    v0[33] = v20;
    swift_getMetatypeMetadata();
    v55 = sub_1DD0DE02C();
    v57 = sub_1DCB10E9C(v55, v56, &v138);

    *(v53 + 4) = v57;
    OUTLINED_FUNCTION_71_15();
    _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_80();
  }

  v64 = type metadata accessor for ResolveConfirmFlow.ResolveConfirmFlowError(0, v0[44], *(v0[40] + 88), v63);
  OUTLINED_FUNCTION_0_106();
  v65 = swift_getWitnessTable();
  v66 = OUTLINED_FUNCTION_34(v64, v65);
  OUTLINED_FUNCTION_8_68(v66, v67, v68, v69, v70, v71, v72, v73, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
}

uint64_t sub_1DCB15000()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB15038()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t SiriKitParameterMetadata.__deallocating_deinit()
{
  SiriKitParameterMetadata.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCB150B8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:

      goto LABEL_3;
    case 1:

      goto LABEL_3;
    case 6:

LABEL_3:

      break;
    case 7:

      sub_1DCB151A8(a1, a2);
      break;
    case 8:

      break;
    default:
      return;
  }
}

void sub_1DCB151A8(id a1, unsigned __int8 a2)
{
  if ((a2 >> 6) <= 1u)
  {
  }
}

uint64_t OUTLINED_FUNCTION_131_1(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v1;

  return type metadata accessor for SimpleOutputFlowAsync();
}

uint64_t OUTLINED_FUNCTION_131_2(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t SiriKitParameterMetadata.deinit()
{

  return v0;
}

uint64_t PromptForValueFlowAsync.__deallocating_deinit()
{
  PromptForValueFlowAsync.deinit();

  return swift_deallocClassInstance();
}

char *PromptForValueFlowAsync.deinit()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);

  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 112);
  type metadata accessor for PromptForValueFlowAsync.State(0, *(v1 + 80), v4, v5);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(&v0[v3]);
  return v0;
}

uint64_t sub_1DCB15340()
{
  sub_1DCB1536C();
  OUTLINED_FUNCTION_63_12();

  return swift_deallocClassInstance();
}

void *sub_1DCB1536C()
{

  return v0;
}

uint64_t (*sub_1DCB153BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE96070;
}

uint64_t *sub_1DCB15440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v3[16] = swift_getObjectType();
  v8 = *(v7 + 80);
  v9 = OUTLINED_FUNCTION_16_46();
  v3[2] = sub_1DCB153BC(v9, v10, v11, v12);
  v3[3] = v13;
  v14 = OUTLINED_FUNCTION_16_46();
  v3[4] = sub_1DCB15548(v14, v15, v16, v17);
  v3[5] = v18;
  v19 = OUTLINED_FUNCTION_16_46();
  v3[6] = sub_1DCB155CC(v19, v20, v21, v22);
  v3[7] = v23;
  v24 = OUTLINED_FUNCTION_16_46();
  v3[8] = sub_1DCB1564C(v24, v25, v26, v27);
  v3[9] = v28;
  v29 = OUTLINED_FUNCTION_16_46();
  v3[10] = sub_1DCB91EF4(v29, v30, v31, v32);
  v3[11] = v33;
  v34 = OUTLINED_FUNCTION_16_46();
  v3[12] = sub_1DCB15790(v34, v35, v36, v37);
  v3[13] = v38;
  OUTLINED_FUNCTION_136();
  v39 = swift_allocObject();
  v39[2] = v8;
  v39[3] = a2;
  v39[4] = a3;
  v39[5] = a1;
  v3[14] = &unk_1DD0FE2A0;
  v3[15] = v39;
  return v3;
}

uint64_t sub_1DCB15510()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

void *sub_1DCB15548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2F0;
}

void *sub_1DCB155CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2E0;
}

void *sub_1DCB1564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2D0;
}

uint64_t *RCHChildFlowFactory.deinit()
{
  v1 = *v0;
  memcpy(__dst, v0 + 2, 0x160uLL);
  type metadata accessor for RCHChildFlowFactory.Producers(0, *(v1 + 80), *(v1 + 88), v2);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(__dst);
  sub_1DCB16DB0((v0 + 46), qword_1ECCA8F08, &qword_1DD0FEF08);
  return v0;
}

void *sub_1DCB15790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2B0;
}

uint64_t sub_1DCB1582C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB15888()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();
  v4 = v0 + *(v3 + 104);
  v5 = *(v4 + 8);

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v6 + 112)));
  return v0;
}

void sub_1DCB15964(unsigned __int8 *a1, uint64_t a2)
{
  v80 = *(sub_1DD0DB04C() - 8);
  v93 = *(v80 + 64);
  v77 = sub_1DD0DC76C();
  v86 = *(v77 - 8);
  v76 = v86;
  v2 = *(v86 + 80);
  v3 = sub_1DD0DB1EC();
  v85 = *(v3 - 8);
  v75 = v3;
  v90 = *(v85 + 80) | v2;
  v79 = sub_1DD0DB4BC();
  v83 = *(v79 - 8);
  v4 = v83;
  v5 = *(v83 + 80) & 0xF8;
  v78 = sub_1DD0DB3EC();
  v6 = *(v78 - 8);
  v7 = *(v6 + 80);
  v81 = v5 | v7 | 7;
  v8 = sub_1DD0DD12C();
  v9 = *(v8 - 8);
  v73 = v9;
  v74 = v8;
  v88 = *(v9 + 80);
  v10 = sub_1DD0DD08C();
  v72 = *(v10 - 8);
  v11 = *(v86 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v85 + 64))
  {
    v11 = *(v85 + 64);
  }

  v12 = *(v83 + 64);
  v13 = v12 + v7;
  v14 = v7;
  v84 = v6;
  v15 = *(v6 + 84);
  if (v15)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  v17 = (v16 + 7 + ((v12 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v11 <= v18)
  {
    v11 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  if (v11 <= (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v20 = *(v9 + 64);
  v87 = v4;
  v21 = *(v4 + 84);
  if (v15)
  {
    v22 = v15 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  else
  {
    v24 = v23;
  }

  v25 = ((v19 + ((v81 + 16 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v81)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v25)
  {
    v11 = v25;
  }

  if (v11 <= *(*(v10 - 8) + 64))
  {
    v26 = *(*(v10 - 8) + 64);
  }

  else
  {
    v26 = v11;
  }

  v27 = *(*(a2 + 16) - 8);
  if (v26 <= 0x18)
  {
    v28 = 24;
  }

  else
  {
    v28 = v26;
  }

  v96 = *(*(a2 + 16) - 8);
  v29 = *(v27 + 64);
  v30 = (v90 | (v88 | *(v72 + 80))) & 0xF8 | v81;
  v31 = v93 + v30;
  v32 = ((((v28 + ((v93 + v30) & ~v30) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v29 <= 9)
  {
    v29 = 9;
  }

  if (v29 + 1 > v32)
  {
    v32 = v29 + 1;
  }

  if (v32 <= 9)
  {
    v33 = 9;
  }

  else
  {
    v33 = v32;
  }

  v34 = a1[v33];
  v35 = v34 - 4;
  if (v34 >= 4)
  {
    if (v33 <= 3)
    {
      v36 = v33;
    }

    else
    {
      v36 = 4;
    }

    switch(v36)
    {
      case 1:
        v37 = *a1;
        goto LABEL_45;
      case 2:
        v37 = *a1;
        goto LABEL_45;
      case 3:
        v37 = *a1 | (a1[2] << 16);
        goto LABEL_45;
      case 4:
        v37 = *a1;
LABEL_45:
        if (v33 < 4)
        {
          v37 |= v35 << (8 * v33);
        }

        v34 = v37 + 4;
        break;
      default:
        break;
    }
  }

  v38 = ~v30;
  switch(v34)
  {
    case 0u:
      v70 = ~v81;
      v89 = ~v14;
      v97 = v15;
      v39 = v20;
      v40 = v81 + 16;
      v71 = v24;
      v91 = v13;
      v82 = v16 + 7;
      v94 = v28 + 1;
      (*(v80 + 8))();
      v41 = (&a1[v31] & v38);
      v42 = v41[v28];
      v43 = v42 - 10;
      if (v42 < 0xA)
      {
        v45 = v40;
        v46 = v39;
        v47 = v97;
      }

      else
      {
        if (v28 <= 3)
        {
          v44 = v28;
        }

        else
        {
          v44 = 4;
        }

        v45 = v40;
        v46 = v39;
        v47 = v97;
        switch(v44)
        {
          case 1:
            v48 = *v41;
            goto LABEL_88;
          case 2:
            v48 = *v41;
            goto LABEL_88;
          case 3:
            v48 = *v41 | (v41[2] << 16);
            goto LABEL_88;
          case 4:
            v48 = *v41;
LABEL_88:
            if (v28 < 4)
            {
              v42 = (v48 | (v43 << (8 * v28))) + 10;
            }

            else
            {
              v42 = v48 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v42)
      {
        case 0u:
          goto LABEL_98;
        case 1u:
          goto LABEL_105;
        case 2u:
          goto LABEL_100;
        case 3u:
          goto LABEL_101;
        case 4u:
          goto LABEL_99;
        case 5u:
          goto LABEL_106;
        case 6u:
          goto LABEL_107;
        case 7u:
          goto LABEL_102;
        case 8u:
          goto LABEL_110;
        case 9u:
          (*(v72 + 8))(v41, v10);
          break;
        default:
          goto LABEL_129;
      }

      goto LABEL_129;
    case 1u:
      v70 = ~v81;
      v89 = ~v14;
      v98 = v15;
      v53 = v20;
      v54 = v81 + 16;
      v71 = v24;
      v91 = v13;
      v82 = v16 + 7;
      v94 = v28 + 1;
      (*(v80 + 8))();
      v41 = (&a1[v31] & v38);
      v55 = v41[v28];
      v56 = v55 - 10;
      if (v55 < 0xA)
      {
        v58 = v10;
        v45 = v54;
        v46 = v53;
        v47 = v98;
      }

      else
      {
        if (v28 <= 3)
        {
          v57 = v28;
        }

        else
        {
          v57 = 4;
        }

        v58 = v10;
        v45 = v54;
        v46 = v53;
        v47 = v98;
        switch(v57)
        {
          case 1:
            v59 = *v41;
            goto LABEL_94;
          case 2:
            v59 = *v41;
            goto LABEL_94;
          case 3:
            v59 = *v41 | (v41[2] << 16);
            goto LABEL_94;
          case 4:
            v59 = *v41;
LABEL_94:
            if (v28 < 4)
            {
              v55 = (v59 | (v56 << (8 * v28))) + 10;
            }

            else
            {
              v55 = v59 + 10;
            }

            break;
          default:
            goto LABEL_97;
        }
      }

      break;
    case 2u:
      v49 = a1[v29];
      v50 = v49 - 2;
      if (v49 >= 2)
      {
        if (v29 <= 3)
        {
          v51 = v29;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *a1;
            goto LABEL_76;
          case 2:
            v52 = *a1;
            goto LABEL_76;
          case 3:
            v52 = *a1 | (a1[2] << 16);
            goto LABEL_76;
          case 4:
            v52 = *a1;
LABEL_76:
            if (v29 < 4)
            {
              v49 = (v52 | (v50 << (8 * v29))) + 2;
            }

            else
            {
              v49 = v52 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v49 == 1)
      {
        goto LABEL_84;
      }

      if (!v49)
      {
        v60 = *(v96 + 8);

        v60();
      }

      return;
    case 3u:
LABEL_84:
      v61 = *a1;

      return;
    default:
      return;
  }

LABEL_97:
  switch(v55)
  {
    case 0u:
LABEL_98:
      v62 = v76;
      v58 = v77;
      goto LABEL_114;
    case 1u:
LABEL_105:
      (*(v76 + 8))(v41, v77);

      goto LABEL_129;
    case 2u:
LABEL_100:

      goto LABEL_109;
    case 3u:
LABEL_101:
      swift_unknownObjectRelease();
      goto LABEL_129;
    case 4u:
LABEL_99:
      v62 = v85;
      v58 = v75;
      goto LABEL_114;
    case 5u:
LABEL_106:
      v63 = *v41;
      goto LABEL_128;
    case 6u:
LABEL_107:
      (*(v87 + 8))(v41, v79);
      if (!__swift_getEnumTagSinglePayload(&v41[v91] & v89, 1, v78))
      {
        (*(v84 + 8))(&v41[v91] & v89, v78);
      }

      goto LABEL_109;
    case 7u:
LABEL_102:
      (*(v87 + 8))(v41, v79);
      if (!__swift_getEnumTagSinglePayload(&v41[v91] & v89, 1, v78))
      {
        (*(v84 + 8))(&v41[v91] & v89, v78);
      }

LABEL_109:

      goto LABEL_129;
    case 8u:
LABEL_110:
      (*(v73 + 8))(v41, v74);
      v64 = &v41[v46 + 7] & 0xFFFFFFFFFFFFFFF8;

      v65 = (v45 + v64) & v70;
      if (v21 == v71)
      {
        if (__swift_getEnumTagSinglePayload((v45 + v64) & v70, v21, v79))
        {
          goto LABEL_127;
        }

        v66 = (v91 + v65) & v89;
        goto LABEL_123;
      }

      v66 = (v91 + v65) & v89;
      if (v22 == v71)
      {
        v67 = v78;
        if (v47 < 2)
        {
LABEL_124:
          (*(v87 + 8))(v65, v79);
          if (!__swift_getEnumTagSinglePayload(v66, 1, v67))
          {
            (*(v84 + 8))(v66, v67);
          }

          goto LABEL_127;
        }

        if (__swift_getEnumTagSinglePayload((v91 + v65) & v89, v47, v78) >= 2)
        {
          goto LABEL_127;
        }

LABEL_123:
        v67 = v78;
        goto LABEL_124;
      }

      v68 = *(((v82 + v66) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v68 >= 0xFFFFFFFF)
      {
        LODWORD(v68) = -1;
      }

      if ((v68 + 1) < 2)
      {
        goto LABEL_123;
      }

LABEL_127:
      v63 = *((v18 + v65 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_128:

LABEL_129:

      v69 = (((&v41[v94 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v69[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
      }

      return;
    case 9u:
      v62 = v72;
LABEL_114:
      (*(v62 + 8))(v41, v58);
      goto LABEL_129;
    default:
      goto LABEL_129;
  }
}

uint64_t sub_1DCB1656C()
{
  sub_1DCB165A0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB165A0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  sub_1DCB17238(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t RCHChildFlowFactory.__deallocating_deinit()
{
  RCHChildFlowFactory.deinit();
  OUTLINED_FUNCTION_63_14();

  return swift_deallocClassInstance();
}

uint64_t static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)()
{
  OUTLINED_FUNCTION_1_98();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v16);
  v11(v10);
  OUTLINED_FUNCTION_10_62();
  v12 = OUTLINED_FUNCTION_39_24();
  v13 = OUTLINED_FUNCTION_3_97(v12);
  v14(v13);
  return OUTLINED_FUNCTION_11_56();
}

uint64_t static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)()
{
  OUTLINED_FUNCTION_1_98();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v16);
  v11(v10);
  OUTLINED_FUNCTION_10_62();
  v12 = OUTLINED_FUNCTION_39_24();
  v13 = OUTLINED_FUNCTION_3_97(v12);
  v14(v13);
  return OUTLINED_FUNCTION_11_56();
}

{
  OUTLINED_FUNCTION_1_98();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v16);
  v11(v10);
  OUTLINED_FUNCTION_10_62();
  v12 = OUTLINED_FUNCTION_39_24();
  v13 = OUTLINED_FUNCTION_3_97(v12);
  v14(v13);
  return OUTLINED_FUNCTION_11_56();
}

uint64_t objectdestroy_62Tm()
{
  OUTLINED_FUNCTION_18_43();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)()
{
  OUTLINED_FUNCTION_1_98();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v16);
  v11(v10);
  OUTLINED_FUNCTION_10_62();
  v12 = OUTLINED_FUNCTION_39_24();
  v13 = OUTLINED_FUNCTION_3_97(v12);
  v14(v13);
  return OUTLINED_FUNCTION_11_56();
}

void *sub_1DCB1697C(void *result)
{
  v1 = result;
  if (*result)
  {
    if (*result == 1)
    {
      goto LABEL_24;
    }
  }

  if (v1[2])
  {
  }

  if (v1[4])
  {
  }

  if (v1[6])
  {
  }

  if (v1[8])
  {
  }

  if (v1[10])
  {
  }

  if (v1[12])
  {
  }

  if (v1[14])
  {
  }

  if (v1[16])
  {
  }

  if (v1[18])
  {
  }

  if (v1[20])
  {
  }

LABEL_24:
  v2 = v1[22];
  if (v2)
  {
    if (v2 == 1)
    {
      return result;
    }
  }

  if (v1[24])
  {
  }

  if (v1[26])
  {
  }

  if (v1[28])
  {
  }

  if (v1[30])
  {
  }

  if (v1[32])
  {
  }

  if (v1[34])
  {
  }

  if (v1[36])
  {
  }

  if (v1[38])
  {
  }

  if (v1[40])
  {
  }

  if (v1[42])
  {
  }

  return result;
}

uint64_t (*static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)())(int, int, int, int, int, int, int, int, uint64_t)
{
  OUTLINED_FUNCTION_1_98();
  v1 = *(v0 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v12 = OUTLINED_FUNCTION_0_93(v4, v5, v6, v7, v8, v9, v10, v11, v20);
  v13(v12);
  OUTLINED_FUNCTION_10_62();
  v14 = OUTLINED_FUNCTION_39_24();
  v15 = OUTLINED_FUNCTION_3_97(v14);
  v16(v15);
  OUTLINED_FUNCTION_136();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_30_32(v17);
  *(v18 + 32) = sub_1DCEBE3A0;
  *(v18 + 40) = v1;
  return j__OUTLINED_FUNCTION_7_57;
}

uint64_t sub_1DCB16C10()
{

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB16D50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DCB16DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB16E04(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_10_42(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t OUTLINED_FUNCTION_69_0(uint64_t a1)
{

  return sub_1DD0DE33C();
}

__n128 OUTLINED_FUNCTION_54_4(unint64_t a1, __n128 *a2)
{
  v3[1].n128_u64[0] = a1;
  v3[1].n128_u64[1] = v2;
  result = *a2;
  v3[2] = *a2;
  v3[3].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1)
{
  *(v1 + 16) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_69_5()
{
  v2 = v0[76];
  v0[7] = v0[77];

  return __swift_mutable_project_boxed_opaque_existential_1((v0 + 73), v2);
}

uint64_t OUTLINED_FUNCTION_69_8()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1)
{

  return sub_1DCB4F1DC(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return sub_1DD0DD8FC();
}

id OUTLINED_FUNCTION_64_3(float a1)
{
  *v3 = a1;
  *(v2 + 384) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_64_6()
{

  return sub_1DD0DB4BC();
}

uint64_t OUTLINED_FUNCTION_64_7(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_96_3()
{
}

uint64_t OUTLINED_FUNCTION_64_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_64_14(uint64_t a1)
{
  *(v1 + 120) = a1;

  return type metadata accessor for OutputGenerationManifest(0);
}

uint64_t OUTLINED_FUNCTION_64_16(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_64_17(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_64_18(uint64_t a1)
{

  return sub_1DCB0E9D8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_19(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB09970(v4 - 128, v4 - 184, a3, a4);
}

unint64_t OUTLINED_FUNCTION_64_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1DCB10E9C(v6, v7, va);
}

uint64_t OUTLINED_FUNCTION_64_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_1DD019284(v18, va, &a14, &a9);
}

void sub_1DCB17238(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:

      break;
    case 1:

      break;
    case 2:

      sub_1DCF70DB4(a1, a2, a3, a4);
      break;
    case 3:

      break;
    default:
      return;
  }
}