uint64_t sub_1DCB17328()
{
  sub_1DCB1735C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB1735C()
{

  return v0;
}

uint64_t ParameterHints.__deallocating_deinit()
{

  OUTLINED_FUNCTION_0_76();

  return swift_deallocClassInstance();
}

void OUTLINED_FUNCTION_12_15(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v10 + 248) = v7;
  *(v10 + 216) = a1;
  *(v10 + 160) = v11;
  *(v10 + 168) = v9;
  *(v10 + 136) = v6;
  sub_1DCAFF9E8((v8 + 1000), v10 + 16);
  sub_1DCAFF9E8(v8 + 65, v10 + 56);
  sub_1DCAFF9E8((v8 + 1080), v10 + 96);
  sub_1DCAFF9E8(v8 + 60, v10 + 176);
  *(v10 + 256) = 0;
  *(v10 + 264) = 0;
  *(v10 + 272) = 4;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_12_19@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return sub_1DCC917E0(v0, type metadata accessor for Input);
}

__n128 OUTLINED_FUNCTION_12_24(uint64_t a1)
{
  *(v1 + 56) = a1;
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_26()
{

  return sub_1DD0DDF7C();
}

void OUTLINED_FUNCTION_12_28(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v12, 2u);
}

uint64_t OUTLINED_FUNCTION_12_30()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1DCD1B9B8(v2, v3, v4);
  *v0 = v2;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_12_33()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_34(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_12_35()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_12_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_40(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEBC();
}

uint64_t *OUTLINED_FUNCTION_12_41(uint64_t *result, uint64_t a2)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = v2;
  v4 = *result;
  *(v3 + 43) = *(result + 8);
  *(v3 + 44) = *(result + 9);
  v5 = result[2];
  *(v3 + 64) = v4;
  *(v3 + 72) = v5;
  *(v3 + 45) = *(result + 24);
  *(v3 + 46) = *(result + 25);
  *(v3 + 47) = *(result + 26);
  return result;
}

BOOL OUTLINED_FUNCTION_12_42(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_43()
{
}

void OUTLINED_FUNCTION_12_45()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_12_48(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEFBC();
}

uint64_t OUTLINED_FUNCTION_12_51(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_52()
{
  v3 = *(v1 + 88);
  *v3 = v0;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_12_53(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 4, 4, a1);

  sub_1DCB8BD60(v1);
}

uint64_t OUTLINED_FUNCTION_12_56()
{

  return sub_1DCB82B4C(v0, v1, v2);
}

void OUTLINED_FUNCTION_12_65()
{

  sub_1DD0DCEDC();
}

uint64_t OUTLINED_FUNCTION_12_66()
{
  v2 = *(v0 + 272);
  *v2 = *(v0 + 248);
  *(v2 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_67(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_69()
{
  v1 = *(v0 + 424);
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  return v2 + 8;
}

uint64_t OUTLINED_FUNCTION_12_74(uint64_t a1)
{
  *(v1 + 104) = a1;
}

uint64_t OUTLINED_FUNCTION_12_75()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_1DCB35460(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_12_76()
{
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);

  return sub_1DCB099BC(v3, v2, v0, v1);
}

uint64_t sub_1DCB17C3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_112();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB17CA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DCB17D04(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_112();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1DCB17D64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_3();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v4;
}

uint64_t sub_1DCB17DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_6();
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for Parse(0);
    OUTLINED_FUNCTION_11_1();
    if (*(v11 + 84) != a2)
    {
      OUTLINED_FUNCTION_54_9();
      return (v13 + 1);
    }

    v8 = v10;
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return type metadata accessor for NLContextUpdate(0);
}

double OUTLINED_FUNCTION_14_10()
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

uint64_t OUTLINED_FUNCTION_35_2()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_14_12()
{
  *v1 = v0;
  *(v1 + 8) = 0;
  return v1;
}

void *OUTLINED_FUNCTION_14_14()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  *(v0 + 57) = 27;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_15(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_14_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_56_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_14_17(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);

  sub_1DCC5F868(v3, v4);
}

uint64_t OUTLINED_FUNCTION_14_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return sub_1DCAFF9E8(&a9, a1 + 16);
}

__n128 OUTLINED_FUNCTION_14_24(uint64_t a1)
{
  *(v3 + 80) = a1;
  result = *(v3 + 32);
  v5 = *(v3 + 48);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

void OUTLINED_FUNCTION_14_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_14_27()
{
  v3 = v0[3];
  v4 = v0[4];
  v5 = __swift_project_boxed_opaque_existential_1(v0, v3);

  sub_1DCCE5F64(v5, v1, (v2 - 72), v3, v4);
}

uint64_t OUTLINED_FUNCTION_14_28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF1DC();
}

void OUTLINED_FUNCTION_14_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
}

uint64_t OUTLINED_FUNCTION_14_31@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5[8] = 0xD000000000000014;
  v5[9] = (a5 - 32) | 0x8000000000000000;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = result;
  v5[5] = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_14_36(uint64_t a1)
{
  *(a1 + 16) = v2;
  result = *(v1 + 88);
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_38()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

void OUTLINED_FUNCTION_14_39()
{

  sub_1DCE06C88();
}

id OUTLINED_FUNCTION_14_43(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_14_46(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_14_48()
{

  return type metadata accessor for OutputGenerationManifest(0);
}

void OUTLINED_FUNCTION_14_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{

  return sub_1DCAFF9E8(&a22, a1 + 16);
}

unint64_t OUTLINED_FUNCTION_14_57(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_14_58(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1DCB79378(v2, v3);
  v4 = *(v1 + 192);
  __swift_project_boxed_opaque_existential_1((v1 + 168), v4);

  return sub_1DCB651D0(v4);
}

void sub_1DCB18584(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1DCB185D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_112();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_62_4(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_62_6()
{
  result = v1[1];
  *v0 = *v1;
  v0[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_7()
{
}

uint64_t OUTLINED_FUNCTION_62_8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_62_10()
{
}

uint64_t OUTLINED_FUNCTION_62_11(uint64_t a1)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_62_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD0DEDBC();
}

uint64_t OUTLINED_FUNCTION_62_15(float a1)
{
  *v1 = a1;

  return sub_1DCB17CA0(v2 + 256, v2 + 296);
}

uint64_t sub_1DCB18D80(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2870, &qword_1DD0E6B80);
  result = sub_1DD0DEBFC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1DD0DF1DC();

    sub_1DD0DDF2C();
    result = sub_1DD0DF20C();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1DD0DF0AC() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1DCB18F54()
{
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_1DCB07294;
  v1 = swift_continuation_init();
  sub_1DCB076C0(v1, v0 + 10);
}

uint64_t dispatch thunk of CallStateEnvironmentProvider.updateCallState()()
{
  v4 = (*(*v0 + 288) + **(*v0 + 288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB193FC;

  return v4();
}

uint64_t sub_1DCB192E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCB19354(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2890, &qword_1DD0E6C40);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24(&qword_1EDE4DB40);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB193FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DCB194F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CallStateEnvironmentProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void sub_1DCB1952C(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2898, &qword_1DD0E6C90);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24(&qword_1EDE4DB40);
  sub_1DD0DCF8C();
}

void sub_1DCB196A8()
{
  if (qword_1EDE4DD00 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void SiriKitCommandHandler.notifyBegin(peerInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v3 = OUTLINED_FUNCTION_0_118();
  v4(v3);
  OUTLINED_FUNCTION_1_127();
  RefreshableDeviceState.setUnderlyingDeviceState(_:)();
  sub_1DCB16D50(v8, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  v5 = OUTLINED_FUNCTION_0_118();
  v6(v5);
  v7 = OUTLINED_FUNCTION_1_127();
  sub_1DCB19D68(v7);
}

uint64_t sub_1DCB19A80()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

void RefreshableDeviceState.setUnderlyingDeviceState(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 14);
  sub_1DCB19C90(&v1[4]);
  os_unfair_lock_unlock(v1 + 14);
}

uint64_t sub_1DCB19D2C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

void sub_1DCB19D68(uint64_t a1)
{
  sub_1DCB17C3C(a1, &v11, &qword_1ECCA1BF0, &qword_1DD100F20);
  if (v12)
  {
    sub_1DCAFF9E8(&v11, v13);
    sub_1DCB17D04(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BF8, &qword_1DD0E16C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C10, &qword_1DD0E16D8);
    if (swift_dynamicCast())
    {
      v1 = sub_1DCAFF9E8(v8, &v11);
      MEMORY[0x1EEE9AC00](v1, v2);
      sub_1DD0DCF8C();
    }

    __swift_destroy_boxed_opaque_existential_1Tm_0(v13);
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v3 = &qword_1ECCA1C08;
    v4 = &qword_1DD0E16D0;
    v5 = v8;
  }

  else
  {
    v3 = &qword_1ECCA1BF0;
    v4 = &qword_1DD100F20;
    v5 = &v11;
  }

  v6 = sub_1DCB185D0(v5, v3, v4);
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB1A0F4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRelease();
  *a1 = a2;
  a1[1] = a3;
  return swift_unknownObjectRetain();
}

void sub_1DCB1A1A8()
{
  if (qword_1EDE4DCD8 != -1)
  {
    swift_once();
  }

  v1 = [qword_1EDE4DCE0 outputVoice];
  if (v1)
  {
    v2 = v1;
    [v1 gender];
  }

  sub_1DD0DCAAC();
}

uint64_t sub_1DCB1A2AC()
{
  v0 = sub_1DD0DB0FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4DCD8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDE4DCE0;
  v6 = [qword_1EDE4DCE0 languageCode];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1DD0DDFBC();
    v10 = v9;
  }

  else
  {
    v8 = *aEnUs;
    v10 = unk_1ECCA4290;
  }

  v11 = [v5 outputVoice];
  if (v11 && (v12 = sub_1DCB1A7C0(v11), v13))
  {
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = *aEnUs;
    v15 = unk_1ECCA4290;
  }

  sub_1DD0DB05C();
  v43 = sub_1DD0DB08C();
  v17 = v16;
  v18 = *(v1 + 8);
  v18(v4, v0);

  v41 = v14;
  sub_1DD0DB05C();
  v42 = sub_1DD0DB08C();
  v20 = v19;
  v18(v4, v0);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v21 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v21, qword_1EDE57E00);

  v22 = sub_1DD0DD8EC();
  v23 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44[0] = v25;
    *v24 = 136315394;
    v39 = v10;
    v40 = v8;
    if (v17)
    {
      v26 = v43;
    }

    else
    {
      v26 = 7104878;
    }

    if (v17)
    {
      v27 = v17;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_1DCB10E9C(v26, v27, v44);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    if (v20)
    {
      v29 = v42;
    }

    else
    {
      v29 = 7104878;
    }

    if (v20)
    {
      v30 = v20;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DCB10E9C(v29, v30, v44);
    v10 = v39;

    *(v24 + 14) = v31;
    v8 = v40;
    _os_log_impl(&dword_1DCAFC000, v22, v23, "SiriLocale: inputLanguageCode: %s, outputVoiceLanguageCode: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v25, -1, -1);
    MEMORY[0x1E12A8390](v24, -1, -1);
  }

  if (!v17)
  {
    if (!v20)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (!v20)
  {
LABEL_35:

    goto LABEL_41;
  }

  if (v43 == v42 && v17 == v20)
  {

    goto LABEL_38;
  }

  v33 = sub_1DD0DF0AC();

  if ((v33 & 1) == 0)
  {
LABEL_41:

    return sub_1DD0DB05C();
  }

LABEL_38:
  if (qword_1EDE4DCF0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E32B0;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = v41;
  *(inited + 56) = v15;
  swift_beginAccess();
  v35 = qword_1EDE4DCF8;

  sub_1DCB1AA78(inited, v35);
  v37 = v36;
  swift_setDeallocating();
  sub_1DCB19D2C();
  swift_endAccess();
  if (v37)
  {
    goto LABEL_41;
  }

  return sub_1DD0DB05C();
}

uint64_t sub_1DCB1A7C0(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCB1A830(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DCB1A87C(a1, a2);
  sub_1DCB1A994(&unk_1F584D8D0);
  return v3;
}

uint64_t sub_1DCB1A87C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1DD0DE14C())
  {
    result = sub_1DCB1AF94(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DD0DEC0C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1DD0DECBC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DCB1A994(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1DCE06A14(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DCB1AA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_11(v4);
  return v3;
}

unint64_t sub_1DCB1AADC(uint64_t a1)
{
  OUTLINED_FUNCTION_16_9();
  sub_1DCB1AB40(v4, a1);
  v2 = sub_1DD0DF20C();

  return sub_1DCB1ABB8(a1, v2);
}

uint64_t sub_1DCB1AB40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12A7840](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_1DD0DDF2C();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1DCB1ABB8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1DD0DF0AC() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1DCB1ACC0()
{
  OUTLINED_FUNCTION_46_8();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_10_2();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v30 - v12;
  if (v0)
  {
    OUTLINED_FUNCTION_19();
    sub_1DD0DAFEC();
    v14 = sub_1DD0DB04C();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      v25 = *(v14 - 8);
      (*(v25 + 32))(v3, v13, v14);
      (*(v25 + 16))(v9, v3, v14);
      v26 = OUTLINED_FUNCTION_32_11();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v14);
      sub_1DCB28064();
    }

    sub_1DCB0E9D8(v13, &qword_1ECCA2618, &unk_1DD0E5C50);
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v15 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v15, qword_1EDE57DA0);

  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_151();
    v19 = OUTLINED_FUNCTION_83();
    v31 = v19;
    *v18 = 136315138;
    if (v0)
    {
      v20 = v0;
    }

    else
    {
      v1 = 4999502;
      v20 = 0xE300000000000000;
    }

    v21 = sub_1DCB10E9C(v1, v20, &v31);

    *(v18 + 4) = v21;
    OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v22, v23, "[ConversationSELFHelper] Invalid executionRequestId: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v24 = sub_1DD0DB04C();
  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v24);
}

void *sub_1DCB1AF94(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA74D0, &qword_1DD0E1BA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1DCB1B004()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_66();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_48_0();
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  if (v2)
  {
    static ConversationSELFHelper.makeUUID(fromExecutionRequestId:)(v4);
    sub_1DCB12BC0(v15, 14);
    (*(v10 + 8))(v15, v8);
    OUTLINED_FUNCTION_169();
    v16();
    v17 = OUTLINED_FUNCTION_32_11();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
    sub_1DCB130C4(v0);
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v20 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v20, qword_1EDE57DA0);
  v21 = sub_1DD0DD8EC();
  v22 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v22))
  {
    v23 = OUTLINED_FUNCTION_50_0();
    *v23 = 0;
    _os_log_impl(&dword_1DCAFC000, v21, v22, "[ConversationSELFHelper] Nil executionRequestId provided: not setting a Conversation ID", v23, 2u);
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_49();

  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

uint64_t OUTLINED_FUNCTION_87_2()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

unint64_t OUTLINED_FUNCTION_87_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1DCB10E9C(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_87_4(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

void OUTLINED_FUNCTION_87_5()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = v2;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_87_9(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_87_10(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = 0;
  a1[6] = v3;
  a1[7] = v2;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_223(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = *(v4 - 88);
  a1[2].n128_u64[1] = v3;
  a1[3].n128_u64[0] = v2;

  return sub_1DD0DEA7C();
}

unint64_t sub_1DCB1B410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DD0DF0AC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_3_14()
{
}

uint64_t OUTLINED_FUNCTION_3_15()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return sub_1DCC23580();
}

uint64_t OUTLINED_FUNCTION_3_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DCB17CA0(a4, v4 - 104);
}

void *OUTLINED_FUNCTION_3_24(void *result)
{
  result[2] = v3;
  result[3] = v1;
  v6 = *(v5 - 144);
  v7 = *(v5 - 136);
  result[4] = *(v5 - 152);
  result[5] = v6;
  result[6] = v7;
  result[7] = v4;
  result[8] = *(v5 - 120);
  result[9] = v2;
  return result;
}

id OUTLINED_FUNCTION_3_30(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_3_31(unint64_t a1@<X8>)
{
  *(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v6 = (v1[6] + 16 * a1);
  *v6 = v4;
  v6[1] = v5;
  *(v1[7] + 8 * a1) = v3;
  ++v1[2];
}

uint64_t OUTLINED_FUNCTION_3_34(uint64_t a1)
{
  v7 = *(v5 - 104);
  *(a1 + 16) = *(v5 - 120);
  *(a1 + 32) = v7;
  *(a1 + 48) = *(v5 - 88);

  return sub_1DCC85AA8(v4, a1 + v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_37()
{
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[12];

  return type metadata accessor for ConfirmationPrompt(0, v2, v3, v4);
}

__n128 OUTLINED_FUNCTION_3_38(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

void *OUTLINED_FUNCTION_3_39(void *result)
{
  result[2] = v6;
  result[3] = v7;
  result[4] = *(v8 - 104);
  result[5] = v5;
  result[6] = v1;
  result[7] = v3;
  result[8] = v4;
  result[9] = v2;
  result[10] = *(v8 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1DCCC53BC(va);
}

id OUTLINED_FUNCTION_3_42()
{

  return [v0 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_3_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEF7C();
}

uint64_t OUTLINED_FUNCTION_3_49(uint64_t a1)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  sub_1DCB20B30((v2 + 96), (v2 + 128));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_3_57(uint64_t a1, void *a2)
{

  sub_1DCD47034(a2);
}

uint64_t OUTLINED_FUNCTION_3_60()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_61()
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_3_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1DCB1C4D8();
}

uint64_t OUTLINED_FUNCTION_3_63()
{

  return sub_1DCD89260(v0, type metadata accessor for AceOutput);
}

uint64_t OUTLINED_FUNCTION_3_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *v11 = a1;

  return sub_1DCB17CA0(va, a1 + 16);
}

double OUTLINED_FUNCTION_3_67@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, __int16 a5)
{
  *(a1 + 34) = a4;
  *(a1 + 38) = a5;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_70@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + a1);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  v8 = v4[2];
  v9 = *(v4 + 24);
  v10 = *(v4 + 25);
  LOBYTE(v4) = *(v4 + 26);
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  *(v3 + 25) = v7;
  *(v3 + 32) = v8;
  *(v3 + 40) = v9;
  *(v3 + 41) = v10;
  *(v3 + 42) = v4;
  return *(v1 + 88);
}

uint64_t OUTLINED_FUNCTION_3_72(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEF7C();
}

uint64_t OUTLINED_FUNCTION_3_73()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_75(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_79()
{

  return type metadata accessor for NLContextUpdate(0);
}

uint64_t OUTLINED_FUNCTION_3_80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_3_82(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_89(uint64_t a1)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_3_90(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_92(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_3_95()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_97(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_3_98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return sub_1DCB17CA0(v23, va);
}

void OUTLINED_FUNCTION_3_100()
{
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));

  sub_1DCEDBDB0(v2, v0);
}

void *OUTLINED_FUNCTION_3_106(void *result)
{
  v4 = *(v3 - 304);
  result[2] = v1;
  result[3] = v4;
  result[4] = *(v3 - 296);
  *(v3 - 352) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_110(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_112(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_115(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_3_117()
{

  return sub_1DCF9E828(v1, v0);
}

void OUTLINED_FUNCTION_3_118()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_3_122(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_3_123(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void *OUTLINED_FUNCTION_3_128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[18] = v15;
  v13[19] = v16;
  v13[20] = v12;
  v13[21] = v14;
  v13[22] = a11;
  v13[23] = a10;
  v13[24] = v17;
  v13[25] = v18;
  v13[26] = v19;
  v13[27] = v11;

  return memcpy(v13 + 28, v13 + 18, 0x50uLL);
}

id sub_1DCB1C2BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1DCB1C328(void *a1)
{
  v1 = [a1 serializedContextByKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDE6C();

  return v3;
}

void sub_1DCB1C3C8()
{
  OUTLINED_FUNCTION_13_48();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_27_25();
    if (v4)
    {
      OUTLINED_FUNCTION_38_21(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_33_19();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * ((v15 - 32) / 32);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_25_19();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_24_25();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t Input.identifier.getter()
{
  OUTLINED_FUNCTION_4();
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_2();
  v0 = OUTLINED_FUNCTION_33_1();

  return v1(v0);
}

unint64_t sub_1DCB1C4D8()
{
  result = qword_1EDE4D738;
  if (!qword_1EDE4D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D738);
  }

  return result;
}

void OUTLINED_FUNCTION_7_12()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_7_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_7_15()
{
  *(v1 - 104) = v0;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_22()
{
}

uint64_t OUTLINED_FUNCTION_7_23()
{
}

double OUTLINED_FUNCTION_7_25@<D0>(uint64_t a1@<X0>, __int16 a2@<W8>)
{
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return result;
}

void OUTLINED_FUNCTION_7_31(uint64_t a1)
{

  sub_1DCE195E4();
}

uint64_t OUTLINED_FUNCTION_7_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_33(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_7_37()
{

  return memcpy((v1 - 136), v0, 0x48uLL);
}

unint64_t OUTLINED_FUNCTION_7_42()
{

  return sub_1DCDACAD8();
}

__n128 OUTLINED_FUNCTION_7_45()
{
  *(v4 + 72) = v3;
  result = *(v4 + 168);
  *(v4 + 80) = result;
  *(v4 + 96) = v2;
  *(v4 + 104) = v1;
  *(v4 + 112) = v0;
  return result;
}

size_t OUTLINED_FUNCTION_7_46(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_1DCAFF9E8(&a10, a1 + 16);
}

void OUTLINED_FUNCTION_7_48()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_7_49()
{
  v1 = *(type metadata accessor for ActionParaphrase(0) + 20);
  type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  return v0 + v1;
}

uint64_t OUTLINED_FUNCTION_7_54()
{
  v1 = *(v0 + 24);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  return v2;
}

int8x16_t OUTLINED_FUNCTION_7_55(uint64_t a1)
{
  *(v1 + 72) = a1;
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v2;
  result = vextq_s8(v3, v3, 8uLL);
  *(a1 + 48) = result;
  return result;
}

void OUTLINED_FUNCTION_7_59(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1DD0DB31C();
}

void OUTLINED_FUNCTION_7_65(__n128 a1)
{
  *(v1 + 72) = a1;
  *(v1 + 88) = 0;
  *(v1 + 56) = a1;
}

uint64_t OUTLINED_FUNCTION_7_67()
{

  return sub_1DCB0E9D8(v2 + 56, v1, v0);
}

void *OUTLINED_FUNCTION_7_68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[5] = a1;
  v4[6] = a3;
  v4[2] = v3;
  return __swift_project_boxed_opaque_existential_1(v4 + 2, a2);
}

uint64_t OUTLINED_FUNCTION_7_69(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_7_70(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_7_72()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_7_73()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_7_76(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEBC();
}

void OUTLINED_FUNCTION_7_89(uint64_t a1)
{

  sub_1DD0DCECC();
}

uint64_t OUTLINED_FUNCTION_7_93(uint64_t a1)
{
  *(v1 + 296) = a1;
  *v2 = *v1;
  return *(v1 + 88);
}

uint64_t OUTLINED_FUNCTION_7_94()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 152);

  return sub_1DCB21A14(v2, v3);
}

__n128 OUTLINED_FUNCTION_47_5()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  result = *(v0 + 96);
  *(v0 + 48) = result;
  return result;
}

void OUTLINED_FUNCTION_47_6()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_47_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_47_9()
{
}

uint64_t OUTLINED_FUNCTION_47_10(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(&v2[v3], 1, 1, a1);
  *v2 = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_11()
{
  v3 = v1[1];
  *v0 = *v1;
  v0[1] = v3;
  v4 = v1[3];
  v0[2] = v1[2];
  v0[3] = v4;

  return sub_1DD0DB66C();
}

uint64_t OUTLINED_FUNCTION_47_12(uint64_t a1, uint64_t a2)
{

  return sub_1DCB09910(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_47_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1DCB17D04(a1, a2);
}

uint64_t OUTLINED_FUNCTION_47_14()
{
}

void OUTLINED_FUNCTION_47_20()
{
  v3 = *(v1 + 360) + *(v1 + 416);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = v0;
  *(v3 + 8) = 0;
  v6 = *(v3 + 16);
  *(v3 + 16) = 3;

  sub_1DCF212A0(v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_47_23()
{
}

id OUTLINED_FUNCTION_47_24()
{

  return sub_1DCB56C84();
}

uint64_t OUTLINED_FUNCTION_47_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v13 + *(v14 + 124)) = 2;
  *v13 = a12;
  v13[1] = v12;
}

uint64_t OUTLINED_FUNCTION_47_26()
{
  *(v1 - 208) = v0;

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_47_28()
{

  return CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
}

uint64_t OUTLINED_FUNCTION_47_30()
{

  return type metadata accessor for IdentifiedUser(0);
}

uint64_t OUTLINED_FUNCTION_47_31(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 8) = 1024;
  *(result + 10) = v2;
  return result;
}

uint64_t static ConversationSELFHelper.convert(fromPlugin:)(void *a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v37 = 47;
  v38 = 0xE100000000000000;
  sub_1DCB1C4D8();
  v2 = sub_1DD0DEA0C();
  v3 = sub_1DCB1D5C0(v2);
  v5 = v4;

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (qword_1EDE4DFC8 != -1)
  {
    swift_once();
  }

  v8 = OUTLINED_FUNCTION_86();
  v9 = sub_1DCB1D5B8(v8);
  v10 = OUTLINED_FUNCTION_86();
  v11 = sub_1DCB1D5B8(v10);
  if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

  if (qword_1EDE48280 != -1)
  {
    swift_once();
  }

  v12 = OUTLINED_FUNCTION_86();
  v11 = sub_1DCB1D5B8(v12);
  if ((v11 & 0x100000000) != 0)
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v24 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v24, qword_1EDE57DA0);

    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_151();
      v28 = OUTLINED_FUNCTION_83();
      v33 = v28;
      *v27 = 136315138;
      v29 = OUTLINED_FUNCTION_138();
      *(v27 + 4) = sub_1DCB10E9C(v29, v30, v31);
      _os_log_impl(&dword_1DCAFC000, v25, v26, "[ConversationSELFHelper] No SELF enum value for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for CoreAnalyticsService();
    swift_initStaticObject();
    v33 = v6;
    v34 = v7;
    v35 = 0;
    v36 = 1;
    CoreAnalyticsService.sendReliabilityEvent(event:file:line:function:)(&v33, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/ConversationSELFHelper.swift", 94, 2, 744, 0xD000000000000014, 0x80000001DD117560);
    sub_1DCCD6E9C(v33, v34, v35, v36);
    return 0;
  }

  else
  {
LABEL_13:
    v13 = v11;

    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v14 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v14, qword_1EDE57DA0);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = sub_1DD0DE7BC();
      v20 = sub_1DCB10E9C(v18, v19, &v33);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      LODWORD(v37) = v9;
      BYTE4(v37) = BYTE4(v9) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41F0, &unk_1DD0EB060);
      v21 = sub_1DD0DE02C();
      v23 = sub_1DCB10E9C(v21, v22, &v33);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] Returning converted plugin name %s for %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_5_34();
    }
  }

  return v13;
}

uint64_t sub_1DCB1D5C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_33_1();
}

void AppInformationResolver.init(app:)(uint64_t a1)
{
  if (!a1)
  {
    sub_1DD0DD1FC();
    sub_1DD0DD19C();
  }

  sub_1DD0DCF8C();
}

uint64_t SiriKitEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_timestamp;
  sub_1DD0DAFDC();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1DCB1D6F0@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ActivityType.rawValue.getter()
{
  result = 0x7472617453;
  switch(*v0)
  {
    case 1:
      return 0x69746E6568747541;
    case 2:
      return 0x6974636572726F43;
    case 3:
      return 1953063255;
    case 4:
      return 0x656D75736552;
    case 5:
      return 0x64656C65636E6143;
    case 6:
      return 0x64656C696146;
    case 7:
      return 0x6574656C706D6F43;
    case 8:
      return 0x6B6361626C6C6146;
    case 9:
      return 0x466C616974726150;
    case 0xA:
      return 1701736270;
    case 0xB:
    case 0x11:
    case 0x4F:
    case 0x6E:
    case 0x77:
      OUTLINED_FUNCTION_0_11();
      return v10 + 1;
    case 0xC:
      return 0x6465766153;
    case 0xD:
      return 0xD000000000000011;
    case 0xE:
    case 0x17:
    case 0x29:
    case 0x2E:
    case 0x35:
    case 0x3D:
    case 0x45:
      OUTLINED_FUNCTION_0_11();
      return v16 | 2;
    case 0xF:
    case 0x28:
    case 0x41:
    case 0x63:
    case 0x71:
      OUTLINED_FUNCTION_0_11();
      return v21 + 3;
    case 0x10:
      return 0xD000000000000011;
    case 0x12:
      return 0x54726573556B7341;
    case 0x13:
      return 0x7341705565766947;
    case 0x14:
      return 0x6769626D61736944;
    case 0x15:
      return 0x6F4674706D6F7250;
    case 0x16:
      return 0x616D7269666E6F43;
    case 0x18:
      return 0x7461446863746546;
    case 0x19:
      return 0x4165766C6F736552;
    case 0x1A:
      return 0x4174736567677553;
    case 0x1B:
      return 0x6769626D61736944;
    case 0x1C:
      return 0x416D7269666E6F43;
    case 0x1D:
      v4 = 0x686372616553;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    case 0x1E:
      v8 = 0x686372616553;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6146000000000000;
    case 0x1F:
      return 0x636972656E6547;
    case 0x20:
      return 0x6E5574706D6F7250;
    case 0x21:
    case 0x42:
    case 0x5C:
      OUTLINED_FUNCTION_0_11();
      return v7 - 1;
    case 0x22:
      return 0xD000000000000011;
    case 0x23:
      return 0x6553656369766544;
    case 0x24:
      return 0xD000000000000011;
    case 0x25:
    case 0x2F:
    case 0x38:
    case 0x4A:
    case 0x4C:
    case 0x58:
      OUTLINED_FUNCTION_0_11();
      return v18 + 7;
    case 0x26:
    case 0x3C:
    case 0x3E:
      OUTLINED_FUNCTION_0_11();
      return v14 | 6;
    case 0x27:
    case 0x4E:
    case 0x72:
      OUTLINED_FUNCTION_0_11();
      return v19 + 9;
    case 0x2A:
      OUTLINED_FUNCTION_0_11();
      return v12 + 15;
    case 0x2B:
    case 0x43:
    case 0x4B:
      OUTLINED_FUNCTION_0_11();
      return v5 | 8;
    case 0x2C:
    case 0x2D:
    case 0x3B:
    case 0x3F:
    case 0x4D:
    case 0x56:
      OUTLINED_FUNCTION_0_11();
      return v13 + 5;
    case 0x30:
      return 0x5F6D7269666E6F43;
    case 0x31:
      return 0xD000000000000011;
    case 0x32:
      return 0x5F676E6964616552;
    case 0x33:
    case 0x44:
    case 0x6F:
    case 0x76:
      return 0xD00000000000001BLL;
    case 0x34:
      OUTLINED_FUNCTION_0_11();
      return v15 + 18;
    case 0x36:
    case 0x37:
    case 0x52:
    case 0x64:
      OUTLINED_FUNCTION_0_11();
      return v20 | 4;
    case 0x39:
      OUTLINED_FUNCTION_0_11();
      return v11 | 0xE;
    case 0x3A:
      OUTLINED_FUNCTION_0_11();
      return v6 + 13;
    case 0x40:
      return 0xD000000000000011;
    case 0x46:
      return 0xD000000000000011;
    case 0x47:
      v4 = 0x676F6C616944;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    case 0x48:
      v8 = 0x676F6C616944;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6146000000000000;
    case 0x49:
    case 0x50:
      OUTLINED_FUNCTION_0_11();
      return v17 + 16;
    case 0x51:
      return 0xD000000000000011;
    case 0x53:
      return 0x65636F7270657250;
    case 0x54:
      return 0x7265646E6552;
    case 0x55:
      return 0x6C706552776F6C46;
    case 0x57:
      return 0x53616956646E6553;
    case 0x59:
      return 0x646E65536F747541;
    case 0x5A:
      return 0x6963655274696445;
    case 0x5B:
      return 0x6552634374696445;
    case 0x5D:
      return 0x6A62755374696445;
    case 0x5E:
      return 0x79646F4274696445;
    case 0x5F:
      v2 = 0x6D45646E6553;
      goto LABEL_83;
    case 0x60:
      return 0x6D456C65636E6143;
    case 0x61:
      return 0x6F546E7275746552;
    case 0x62:
      return 0xD000000000000011;
    case 0x65:
      return 1885956947;
    case 0x66:
      return 1886352467;
    case 0x67:
      return 0x796C706552;
    case 0x68:
      v3 = 0x526F69647541;
      goto LABEL_77;
    case 0x69:
      v2 = 0x674164616552;
LABEL_83:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6961000000000000;
      break;
    case 0x6A:
      result = 0x654D796669646F4DLL;
      break;
    case 0x6B:
      result = 0x746957796C706552;
      break;
    case 0x6C:
      v3 = 0x636341434354;
LABEL_77:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7065000000000000;
      break;
    case 0x6D:
      result = 0x696C636544434354;
      break;
    case 0x70:
      result = 0x4F65747563657845;
      break;
    case 0x73:
      OUTLINED_FUNCTION_0_11();
      result = v9 + 17;
      break;
    case 0x74:
      result = 0x4974736575716552;
      break;
    case 0x75:
      result = 0x496D7269666E6F43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriKitReliabilityCodes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x84)
  {
    if (a2 + 124 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 124) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 125;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7D;
  v5 = v6 - 125;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t static SAAppInfoFactory.createAppInfo(app:)()
{
  sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v24 = v1;
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1EDE57DD0);
  (*(v7 + 16))(v11, v12, v5);
  sub_1DD0DD84C();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_1DD0DD87C();
  v15 = sub_1DD0DE7FC();
  v16 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v14, v15, v16, "AppInfoCreate", "", v13, 2u);
  v17 = sub_1DD0DD1BC();
  static SAAppInfoFactory.createAppInfo(appIdentifier:)(v17, v18);
  v20 = v19;

  v21 = sub_1DD0DE7EC();
  v22 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v14, v21, v22, "AppInfoCreate", "", v13, 2u);

  OUTLINED_FUNCTION_80();
  (*(v24 + 8))(v4, v25);
  (*(v7 + 8))(v11, v5);
  return v20;
}

void static SAAppInfoFactory.createAppInfo(appIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD0DAECC();
  OUTLINED_FUNCTION_9();
  v185 = v4;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v177[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v177[-v11];
  if (a2)
  {
    if (qword_1EDE49280 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDE49288;
    if ([qword_1EDE49288 tryLock])
    {
      if (qword_1EDE49298 != -1)
      {
        OUTLINED_FUNCTION_1_118(&qword_1EDE49298);
      }

      swift_beginAccess();
      v14 = OUTLINED_FUNCTION_86();
      v17 = sub_1DCB643AC(v14, v15, v16);
      swift_endAccess();
      [v13 unlock];
      if (v17)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v18 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_7_69(v18, qword_1EDE57E00);
        v19 = sub_1DD0DD8EC();
        v20 = sub_1DD0DE6DC();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = OUTLINED_FUNCTION_151();
          v22 = OUTLINED_FUNCTION_83();
          *&v188 = v22;
          *v21 = 136315138;
          v23 = OUTLINED_FUNCTION_86();
          *(v21 + 4) = sub_1DCB10E9C(v23, v24, v25);
          OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v26, v27, "App AppInfo cached for '%s'");
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

LABEL_12:

        return;
      }
    }

    v183 = v12;
    sub_1DCB10E5C(0, &qword_1EDE461A0, 0x1E69635E0);

    v28 = OUTLINED_FUNCTION_86();
    v184 = sub_1DCF71804(v28, v29);
    if (!v184)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v40 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_7_69(v40, qword_1EDE57E00);
      v19 = sub_1DD0DD8EC();
      v41 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v19, v41))
      {
        v42 = OUTLINED_FUNCTION_151();
        v43 = OUTLINED_FUNCTION_83();
        *&v188 = v43;
        *v42 = 136315138;
        v44 = OUTLINED_FUNCTION_86();
        *(v42 + 4) = sub_1DCB10E9C(v44, v45, v46);
        OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v47, v48, "App applicationProxy cannot be created for appIdentifier '%s'");
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_12;
    }

    v30 = [v184 bundleURL];
    if (v30)
    {
      v31 = v30;
      v32 = v183;
      sub_1DD0DAE9C();

      v33 = sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
      (*(v185 + 16))(v9, v32, v3);
      v34 = sub_1DCF71954(v9);
      if (v34)
      {
        v35 = v34;
        v181 = sub_1DCF732B4(v34);
        v182 = v35;
        if (!v181)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v67 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_7_69(v67, qword_1EDE57E00);
          v33 = sub_1DD0DD8EC();
          v68 = sub_1DD0DE6CC();

          if (os_log_type_enabled(v33, v68))
          {
            v69 = OUTLINED_FUNCTION_151();
            v70 = OUTLINED_FUNCTION_83();
            *&v188 = v70;
            *v69 = 136315138;
            v71 = OUTLINED_FUNCTION_86();
            *(v69 + 4) = sub_1DCB10E9C(v71, v72, v73);
            _os_log_impl(&dword_1DCAFC000, v33, v68, "App applicationProxy Bundle missing localizedInfoDictionary for appIdentifier '%s'", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v70);
            v35 = v182;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_80();
          }
        }

        v74 = objc_allocWithZone(MEMORY[0x1E69C7710]);
        OUTLINED_FUNCTION_39_1();

        v75 = [v33 init];
        v76 = *MEMORY[0x1E695E4F8];
        if (!*MEMORY[0x1E695E4F8])
        {
          __break(1u);
          goto LABEL_153;
        }

        v77 = v75;
        sub_1DD0DDFBC();
        sub_1DCB90D40();

        if (*(&v189 + 1))
        {
          if (swift_dynamicCast())
          {
            sub_1DCB2C534(v186, v187, v77, &selRef_setAppName_);
            goto LABEL_62;
          }
        }

        else
        {
          sub_1DCC8BC14(&v188);
        }

        v78 = [v35 objectForInfoDictionaryKey_];
        if (v78)
        {
          v76 = v78;
          sub_1DD0DEA6C();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_16_54();
        }

        OUTLINED_FUNCTION_5_99();
        if (v84)
        {
          v85 = OUTLINED_FUNCTION_3_112(v81, v82, v83, MEMORY[0x1E69E6158]);
          if (v85)
          {
            sub_1DD0DDF8C();
            OUTLINED_FUNCTION_39_1();

LABEL_61:
            OUTLINED_FUNCTION_19_45(v85, sel_setAppName_);

LABEL_62:
            v86 = [v35 localizations];
            v87 = sub_1DD0DE2EC();

            v88 = sub_1DCB35468(v35, &selRef_developmentLocalization);
            if (v89)
            {
              v90 = v88;
              v91 = v89;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
              v92 = swift_allocObject();
              *(v92 + 16) = xmmword_1DD0E07C0;
              *(v92 + 32) = v90;
              *(v92 + 40) = v91;
            }

            else
            {
              v92 = MEMORY[0x1E69E7CC0];
            }

            *&v188 = v87;
            sub_1DCBB9238(v92);
            v180 = v188;
            v93 = sub_1DCF719F0(v188, v184);
            sub_1DCF7323C(v93, v77);
            sub_1DCB90D40();
            if (*(&v189 + 1))
            {
              if (swift_dynamicCast())
              {
                v94 = sub_1DD0DDF8C();

                goto LABEL_70;
              }
            }

            else
            {
              sub_1DCC8BC14(&v188);
            }

            v94 = 0;
LABEL_70:
            OUTLINED_FUNCTION_10_74();

            sub_1DCB35468(v77, &selRef_displayAppName);
            if (v95)
            {
            }

            else
            {
              sub_1DCF73410(v184);
              if (v96)
              {
                v97 = sub_1DD0DDF8C();
              }

              else
              {
                v97 = 0;
              }

              OUTLINED_FUNCTION_10_74();
            }

            sub_1DCB35468(v77, &selRef_displayAppName);
            if (v98)
            {

              goto LABEL_87;
            }

            v99 = sub_1DD0DDF8C();
            v100 = [v182 objectForInfoDictionaryKey_];

            if (v100)
            {
              sub_1DD0DEA6C();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_16_54();
            }

            OUTLINED_FUNCTION_5_99();
            if (v104)
            {
              if (OUTLINED_FUNCTION_3_112(v101, v102, v103, MEMORY[0x1E69E6158]))
              {
                v105 = sub_1DD0DDF8C();

LABEL_86:
                OUTLINED_FUNCTION_10_74();

LABEL_87:
                sub_1DCB90D40();

                if (*(&v189 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v106 = sub_1DD0DDF8C();

                    goto LABEL_92;
                  }
                }

                else
                {
                  sub_1DCC8BC14(&v188);
                }

                v106 = 0;
LABEL_92:
                [v77 setSpokenName:v106];

                sub_1DCB35468(v77, &selRef_spokenName);
                if (v107)
                {

                  v108 = v182;
                  goto LABEL_103;
                }

                v109 = sub_1DD0DDF8C();
                v108 = v182;
                v110 = [v182 objectForInfoDictionaryKey_];

                if (v110)
                {
                  sub_1DD0DEA6C();
                  swift_unknownObjectRelease();
                }

                else
                {
                  OUTLINED_FUNCTION_16_54();
                }

                OUTLINED_FUNCTION_5_99();
                if (v114)
                {
                  if (OUTLINED_FUNCTION_3_112(v111, v112, v113, MEMORY[0x1E69E6158]))
                  {
                    v115 = sub_1DD0DDF8C();

LABEL_102:
                    [v77 setSpokenName:v115];

LABEL_103:
                    v116 = sub_1DD0DDF8C();
                    v117 = [v108 objectForInfoDictionaryKey_];

                    if (v117)
                    {
                      sub_1DD0DEA6C();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v188 = 0u;
                      v189 = 0u;
                    }

                    v118 = sub_1DCF71C8C(&v188);
                    sub_1DCC8BC14(&v188);
                    sub_1DCF73320(v118, v77);
                    v119 = *MEMORY[0x1E695E198];
                    if (*MEMORY[0x1E695E198])
                    {

                      if ([v108 objectForInfoDictionaryKey_])
                      {
                        sub_1DD0DEA6C();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v188 = 0u;
                        v189 = 0u;
                      }

                      v120 = sub_1DCF71E18(&v188);
                      sub_1DCC8BC14(&v188);
                      sub_1DCF733A4(v120, v77);
                      v121 = sub_1DD0DDF8C();
                      v122 = [v108 objectForInfoDictionaryKey_];

                      if (v122)
                      {
                        sub_1DD0DEA6C();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v188 = 0u;
                        v189 = 0u;
                      }

                      v123 = sub_1DCF71F94(&v188, v184);
                      v124 = sub_1DCC8BC14(&v188);
                      OUTLINED_FUNCTION_19_45(v124, sel_setSiriSupport_);

                      v125 = sub_1DD0DDF8C();
                      v126 = [v108 objectForInfoDictionaryKey_];

                      if (v126)
                      {
                        sub_1DD0DEA6C();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_16_54();
                      }

                      OUTLINED_FUNCTION_5_99();
                      if (v130)
                      {
                        v131 = OUTLINED_FUNCTION_3_112(v127, v128, v129, MEMORY[0x1E69E6158]);
                        if (v131)
                        {
                          sub_1DD0DDF8C();
                          OUTLINED_FUNCTION_39_1();

LABEL_121:
                          OUTLINED_FUNCTION_19_45(v131, sel_setCarPlayAlternativeDisplayName_);

                          sub_1DCF72570(v108);
                          v133 = v132;
                          OUTLINED_FUNCTION_19_45(v132, sel_setAppIdentifyingInfo_);

                          v134 = v184;
                          -[NSObject setBetaApp:](v77, sel_setBetaApp_, [v184 isBetaApp]);
                          [v77 setSupportsUniversalSearchSubscription:sub_1DCF728BC(v134) & 1];
                          if (sub_1DCF73480(v134, &selRef_plugInKitPlugins, &unk_1EDE461D0, 0x1E6963678))
                          {
                            sub_1DCB10E5C(0, &unk_1EDE461D0, 0x1E6963678);
                            sub_1DD0DE2DC();
                            OUTLINED_FUNCTION_39_1();
                          }

                          else
                          {
                            v134 = 0;
                          }

                          v135 = INSiriSupportedIntentsByExtensions();

                          if (v135)
                          {
                            v136 = sub_1DD0DE57C();

                            v137 = *(v136 + 16);

                            v138 = v137 == 0;
                          }

                          else
                          {
                            v138 = 0;
                          }

                          [v77 setHasSiriIntegration:v138];
                          if (qword_1EDE4F900 != -1)
                          {
                            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
                          }

                          v139 = sub_1DD0DD8FC();
                          OUTLINED_FUNCTION_7_69(v139, qword_1EDE57E00);
                          v140 = v77;
                          v141 = sub_1DD0DD8EC();
                          v142 = sub_1DD0DE6DC();

                          if (os_log_type_enabled(v141, v142))
                          {
                            v143 = swift_slowAlloc();
                            v180 = swift_slowAlloc();
                            v186 = v180;
                            *v143 = 136317954;
                            v144 = OUTLINED_FUNCTION_86();
                            *(v143 + 4) = sub_1DCB10E9C(v144, v145, v146);
                            *(v143 + 12) = 2080;
                            v147 = sub_1DCB35468(v140, &selRef_appName);
                            v181 = v13;
                            if (!v148)
                            {
                              v147 = 7104878;
                            }

                            v179 = v141;
                            v178 = v142;
                            OUTLINED_FUNCTION_9_72(v147);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 14) = v108;
                            *(v143 + 22) = 2080;
                            v149 = sub_1DCB35468(v140, &selRef_displayAppName);
                            if (!v150)
                            {
                              v149 = 7104878;
                            }

                            OUTLINED_FUNCTION_9_72(v149);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 24) = v108;
                            *(v143 + 32) = 2080;
                            v151 = sub_1DCB35468(v140, &selRef_spokenName);
                            if (!v152)
                            {
                              v151 = 7104878;
                            }

                            OUTLINED_FUNCTION_9_72(v151);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 34) = v108;
                            *(v143 + 42) = 2080;
                            *&v188 = [v140 appIdentifyingInfo];
                            v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB108, &qword_1DD1049D8);
                            v154 = OUTLINED_FUNCTION_13_69(v153);
                            OUTLINED_FUNCTION_14_57(v154, v155);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 44) = v108;
                            *(v143 + 52) = 2080;
                            *&v188 = sub_1DCF73480(v140, &selRef_appNameSynonyms, &qword_1EDE461A8, 0x1E69C7AA0);
                            v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB110, &qword_1DD1049E0);
                            v157 = OUTLINED_FUNCTION_13_69(v156);
                            OUTLINED_FUNCTION_14_57(v157, v158);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 54) = v108;
                            *(v143 + 62) = 2080;
                            *&v188 = sub_1DCF734F4(v140);
                            v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB118, &qword_1DD1049E8);
                            v160 = OUTLINED_FUNCTION_13_69(v159);
                            OUTLINED_FUNCTION_14_57(v160, v161);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 64) = v108;
                            *(v143 + 72) = 2080;
                            *&v188 = [v140 siriSupport];
                            v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB120, &unk_1DD1049F0);
                            v163 = OUTLINED_FUNCTION_13_69(v162);
                            OUTLINED_FUNCTION_14_57(v163, v164);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 74) = v108;
                            *(v143 + 82) = 2080;
                            *&v188 = sub_1DCB35468(v140, &selRef_carPlayAlternativeDisplayName);
                            *(&v188 + 1) = v165;
                            v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
                            v167 = OUTLINED_FUNCTION_13_69(v166);
                            OUTLINED_FUNCTION_14_57(v167, v168);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 84) = v108;
                            *(v143 + 92) = 2080;
                            if ([v140 betaApp])
                            {
                              v169 = 1702195828;
                            }

                            else
                            {
                              v169 = 0x65736C6166;
                            }

                            OUTLINED_FUNCTION_9_72(v169);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 94) = v108;
                            *(v143 + 102) = 2080;
                            if ([v140 supportsUniversalSearchSubscription])
                            {
                              v170 = 1702195828;
                            }

                            else
                            {
                              v170 = 0x65736C6166;
                            }

                            OUTLINED_FUNCTION_9_72(v170);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 104) = v108;
                            *(v143 + 112) = 2080;
                            if ([v140 hasSiriIntegration])
                            {
                              v171 = 1702195828;
                            }

                            else
                            {
                              v171 = 0x65736C6166;
                            }

                            v13 = v181;
                            OUTLINED_FUNCTION_9_72(v171);
                            OUTLINED_FUNCTION_55_4();
                            *(v143 + 114) = v108;
                            v108 = v182;
                            v172 = v179;
                            _os_log_impl(&dword_1DCAFC000, v179, v178, "App AppInfo appIdentifier: %s, appName: %s, displayAppName: %s, spokenName: %s, appIdentifyingInfo: %s, appNameSynonyms: %s, supportedSchemes: %s, siriSupport: %s, carPlayAlternativeDisplayName: %s, betaApp: %s, supportsUniversalSearchSubscription: %s, hasSiriIntegration: %s", v143, 0x7Au);
                            swift_arrayDestroy();
                            OUTLINED_FUNCTION_80();
                            OUTLINED_FUNCTION_80();
                          }

                          else
                          {
                          }

                          v173 = v183;
                          if ([v13 tryLock])
                          {
                            if (qword_1EDE49298 != -1)
                            {
                              OUTLINED_FUNCTION_1_118(&qword_1EDE49298);
                            }

                            swift_beginAccess();
                            v174 = v140;
                            swift_isUniquelyReferenced_nonNull_native();
                            v186 = qword_1EDE492A0;
                            sub_1DCC60648();
                            qword_1EDE492A0 = v186;
                            swift_endAccess();
                            [v13 unlock];

                            v175 = OUTLINED_FUNCTION_17_45();
                            v176(v175);
                          }

                          else
                          {
                            (*(v185 + 8))(v173, v3);
                          }

                          return;
                        }
                      }

                      else
                      {
                        v131 = sub_1DCC8BC14(&v188);
                      }

                      v126 = 0;
                      goto LABEL_121;
                    }

LABEL_153:
                    __break(1u);
                    return;
                  }
                }

                else
                {
                  sub_1DCC8BC14(&v188);
                }

                v115 = 0;
                goto LABEL_102;
              }
            }

            else
            {
              sub_1DCC8BC14(&v188);
            }

            v105 = 0;
            goto LABEL_86;
          }
        }

        else
        {
          v85 = sub_1DCC8BC14(&v188);
        }

        v76 = 0;
        goto LABEL_61;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v59 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_7_69(v59, qword_1EDE57E00);
      v60 = sub_1DD0DD8EC();
      v61 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_151();
        v63 = OUTLINED_FUNCTION_83();
        *&v188 = v63;
        *v62 = 136315138;
        v64 = OUTLINED_FUNCTION_86();
        *(v62 + 4) = sub_1DCB10E9C(v64, v65, v66);
        _os_log_impl(&dword_1DCAFC000, v60, v61, "App applicationProxy Bundle not found for appIdentifier '%s'", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      v79 = OUTLINED_FUNCTION_17_45();
      v80(v79);
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v49 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_7_69(v49, qword_1EDE57E00);
      v50 = sub_1DD0DD8EC();
      v51 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_151();
        v53 = OUTLINED_FUNCTION_83();
        *&v188 = v53;
        *v52 = 136315138;
        v54 = OUTLINED_FUNCTION_86();
        *(v52 + 4) = sub_1DCB10E9C(v54, v55, v56);
        _os_log_impl(&dword_1DCAFC000, v50, v51, "App applicationProxy BundleURL is '<NIL>' for appIdentifier '%s': assuming a system framework and returning an empty SAAppInfo object.", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_86();
      v57 = sub_1DCF71874();
      if ([v13 tryLock])
      {
        if (qword_1EDE49298 != -1)
        {
          OUTLINED_FUNCTION_1_118(&qword_1EDE49298);
        }

        swift_beginAccess();
        v58 = v57;
        swift_isUniquelyReferenced_nonNull_native();
        v186 = qword_1EDE492A0;
        sub_1DCC60648();
        qword_1EDE492A0 = v186;
        swift_endAccess();
        [v13 unlock];
      }
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v36 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v36, qword_1EDE57E00);
    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DCAFC000, v37, v38, "App identifier is '<NIL>'", v39, 2u);
      OUTLINED_FUNCTION_80();
    }
  }
}

uint64_t sub_1DCB1FC9C(SEL *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 appIdentifyingInfo];
  if (!v4)
  {
    return 0;
  }

  result = sub_1DCB643F4(v4, a1);
  if (!v6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1DCB1FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_1DCB21038(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  v4 = *(v2 + 632);
  v5 = *(v2 + 680);

  return AceServiceInvokerAsync.submitAndForget(_:executionSource:)(v5, v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_15_14()
{
  result = *(v0 + 64);
  v2 = *(v0 + 24);
  *(v0 + 88) = 28;
  *result = v2;
  return result;
}

void OUTLINED_FUNCTION_15_15(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_1DCE18E10();
}

void OUTLINED_FUNCTION_15_18()
{

  sub_1DCE19584();
}

BOOL OUTLINED_FUNCTION_15_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_17_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

__n128 OUTLINED_FUNCTION_15_21(uint64_t a1)
{
  v2 = *(v1 - 192);
  *(a1 + 32) = *(v1 - 208);
  *(a1 + 48) = v2;
  result = *(v1 - 176);
  *(a1 + 64) = result;
  *(a1 + 80) = *(v1 - 160);
  return result;
}

unint64_t OUTLINED_FUNCTION_15_23(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 152));
}

void OUTLINED_FUNCTION_15_25()
{

  sub_1DCCE6BC8(v0, 1);
}

uint64_t OUTLINED_FUNCTION_15_27()
{
}

uint64_t OUTLINED_FUNCTION_15_30()
{
  v2 = *(v0 - 384);
  v3 = *(v0 - 336);

  return sub_1DCB21A14(v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_39(unint64_t *a1)
{

  return sub_1DCD97628(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_15_44(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

void OUTLINED_FUNCTION_15_48()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_15_49(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DF0AC();
}

void OUTLINED_FUNCTION_15_54()
{

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_15_55(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_56()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_15_59()
{

  return sub_1DD0DEC1C();
}

uint64_t OUTLINED_FUNCTION_15_61(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_63()
{
  v1 = *(v0 - 232);
  *(v0 - 200) = *(v0 - 240);
  *(v0 - 192) = v1;
  v2 = *(v0 - 216);
  *(v0 - 184) = *(v0 - 224);
  *(v0 - 176) = v2;
}

void OUTLINED_FUNCTION_15_64()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);

  sub_1DCCDE224(v1, v2);
}

uint64_t OUTLINED_FUNCTION_15_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_15_71(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

unint64_t OUTLINED_FUNCTION_15_73@<X0>(uint64_t a1@<X8>)
{

  return sub_1DCB10E9C(0xD000000000000019, (a1 - 32) | 0x8000000000000000, (v1 - 88));
}

uint64_t OUTLINED_FUNCTION_15_74(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_11_15()
{

  return memcpy((v0 + 96), (v1 + 8), 0x49uLL);
}

void *OUTLINED_FUNCTION_11_17()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

uint64_t OUTLINED_FUNCTION_11_21()
{
}

uint64_t OUTLINED_FUNCTION_11_34()
{
}

uint64_t OUTLINED_FUNCTION_11_35(uint64_t a1)
{

  return sub_1DD0DD84C();
}

uint64_t OUTLINED_FUNCTION_11_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return __swift_getEnumTagSinglePayload(v14 + a14, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_38()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_40()
{
  *(v1 + 72) = v0;
  *(v1 + 80) = v2;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_11_41@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1DCB17D04(a1, a2);
}

uint64_t OUTLINED_FUNCTION_11_45(uint64_t result)
{
  v3 = *v1;
  *(v2 + 104) = result;
  *(v2 + 112) = v3;
  *(v2 + 128) = *(v1 + 8);
  *(v2 + 129) = *(v1 + 9);
  *(v2 + 120) = v1[2];
  *(v2 + 130) = *(v1 + 24);
  *(v2 + 131) = *(v1 + 25);
  *(v2 + 132) = *(v1 + 26);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return sub_1DCB16D50(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_50()
{

  return type metadata accessor for OutputGenerationManifest(0);
}

uint64_t OUTLINED_FUNCTION_11_52()
{

  return sub_1DD0DB3AC();
}

__n128 OUTLINED_FUNCTION_11_54()
{
  *(v4 + 16) = v3;
  result = *(v4 + 88);
  *(v4 + 24) = result;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  *(v4 + 56) = v0;
  return result;
}

void OUTLINED_FUNCTION_11_58()
{

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_11_64(uint64_t a1)
{

  return sub_1DD0DEDCC();
}

void OUTLINED_FUNCTION_11_65()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_11_67()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);

  sub_1DCB4A6EC(v2, v3, v4, v5, v6);
}

void OUTLINED_FUNCTION_11_70()
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

uint64_t OUTLINED_FUNCTION_11_72(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DDB6C();
}

uint64_t OUTLINED_FUNCTION_11_77@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_78()
{

  return swift_arrayDestroy();
}

_OWORD *sub_1DCB20B30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_22_7()
{

  return memcpy((v0 + 176), (v0 + 96), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_22_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_22_14()
{
}

uint64_t OUTLINED_FUNCTION_22_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);

  return sub_1DCB72FB0(0, 0xE000000000000000, v5);
}

uint64_t OUTLINED_FUNCTION_22_17()
{
  type metadata accessor for ExecuteResponse(0);

  return type metadata accessor for PluginAction(0);
}

uint64_t OUTLINED_FUNCTION_22_19(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_25@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(v1 + 16) = v3;
  *(v1 + 24) = result;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_26()
{

  return type metadata accessor for NLContextUpdate(0);
}

uint64_t OUTLINED_FUNCTION_22_30(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_22_31()
{

  return type metadata accessor for PluginAction(0);
}

uint64_t OUTLINED_FUNCTION_22_32()
{
}

uint64_t OUTLINED_FUNCTION_55_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return type metadata accessor for RefreshableDeviceState();
}

uint64_t OUTLINED_FUNCTION_22_34()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_22_35()
{
  *(v0 + *(v1 + 40)) = 0;
  *v0 = v2;
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3;
  return result;
}

double OUTLINED_FUNCTION_22_37()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

void OUTLINED_FUNCTION_22_38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[15] = a1;
  v3[16] = a2;
  v3[12] = v2;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_22_40()
{
  v3 = *(v1 - 120);

  return sub_1DCB2479C(v0, v3, type metadata accessor for Input);
}

uint64_t OUTLINED_FUNCTION_22_42(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_48()
{

  return sub_1DD0DB7DC();
}

uint64_t OUTLINED_FUNCTION_22_50(uint64_t a1, uint64_t a2)
{
  *v3 = v2;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DCB21038(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_9();
  sub_1DD0DDF2C();
  v4 = sub_1DD0DF20C();

  return sub_1DCB1B410(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_1DCBB5D20();
}

uint64_t OUTLINED_FUNCTION_240(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1)
{
  *(v1 + 40) = v2;

  return sub_1DD0DF0BC();
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return sub_1DD0DE06C();
}

unint64_t OUTLINED_FUNCTION_8_15(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1DCB10E9C(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_8_17(float a1)
{
  *v1 = a1;

  return sub_1DD0DF2AC();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1)
{

  return sub_1DCB16D50(a1, v1, v2);
}

double OUTLINED_FUNCTION_8_20()
{
  result = 0.0;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 240) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 + 56) + 32 * a1;

  return sub_1DCB0DF6C(v7, va);
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_8_27()
{

  JUMPOUT(0x1E12A72C0);
}

void OUTLINED_FUNCTION_8_30()
{
  *(v0 + 96) = v1;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_8_32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_8_33()
{
  *(v0 + 16) = v2 - 1;
  *(v1 + 112) = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_8_35(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_8_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DCF77328(a1, a2, v4, a4, 0);
}

double OUTLINED_FUNCTION_8_44@<D0>(uint64_t a1@<X0>, __int16 a2@<W8>)
{
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

id OUTLINED_FUNCTION_8_46()
{

  return sub_1DCD10120(0xD000000000000028, v0 | 0x8000000000000000);
}

void OUTLINED_FUNCTION_8_47(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[5] = a1;
  v4[6] = a3;
  v4[2] = v3;
  __swift_project_boxed_opaque_existential_1(v4 + 2, a2);

  sub_1DD0DCF8C();
}

void OUTLINED_FUNCTION_8_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_8_50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_55_4()
{
}

uint64_t OUTLINED_FUNCTION_8_51(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEBC();
}

uint64_t OUTLINED_FUNCTION_8_52(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_8_54(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  result = *(v1 + 1);
  *(v2 + 168) = result;
  *(v2 + 115) = *(v1 + 24);
  *(v2 + 184) = v1[4];
  *(v2 + 116) = *(v1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_57(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_58()
{
  type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

  return sub_1DD0DB66C();
}

uint64_t OUTLINED_FUNCTION_8_59(uint64_t a1)
{

  return sub_1DD0DEF4C();
}

void OUTLINED_FUNCTION_8_61()
{
  *(v4 + v5[6]) = v0;
  *(v4 + v5[7]) = v3;
  v6 = (v4 + v5[8]);
  *v6 = v2;
  v6[1] = v1;
}

char *OUTLINED_FUNCTION_8_62(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
  return a1 + v4;
}

void OUTLINED_FUNCTION_8_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, char a23)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0x80;
  a20 = a1;
  a21 = 0u;
  a22 = 0u;
  a23 = 8;

  sub_1DCB3B54C(&a20);
}

void OUTLINED_FUNCTION_8_69()
{
  *(v0 - 408) = *(*(v0 - 320) + 80);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_8_71()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_8_73()
{

  return sub_1DCB0E9D8(v2 + 16, v1, v0);
}

uint64_t OUTLINED_FUNCTION_8_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_8_79@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[5] = a1;
  v5[6] = a3;
  v5[2] = v4;
  return __swift_project_boxed_opaque_existential_1(v3, a2);
}

uint64_t type metadata accessor for NLContextUpdate(uint64_t a1)
{
  result = qword_1EDE4E978;
  if (!qword_1EDE4E978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB21A14(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_43_12(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_43_13()
{

  return sub_1DD0DD8FC();
}

void OUTLINED_FUNCTION_43_14(int *a1@<X8>)
{
  v2 = *a1;
  *(v1 + 4) = *(a1 + 4);
  *v1 = v2;
}

void OUTLINED_FUNCTION_43_15()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_43_18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(v1 + 16) = v3;
  *(v1 + 24) = result;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_21()
{
}

void OUTLINED_FUNCTION_43_22()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_43_23(uint64_t a1)
{

  return sub_1DD0DB31C();
}

uint64_t OUTLINED_FUNCTION_43_25()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_43_26(uint64_t a1)
{

  return sub_1DD0DF0AC();
}

void OUTLINED_FUNCTION_43_29(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 4) = BYTE4(v1) & 1;
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1)
{

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_35_8()
{
  v2 = *(v0 + 72);

  return sub_1DCB0DF6C(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_35_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_35_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  LOBYTE(a12) = 3;
  a16 = 3;

  sub_1DCC8D2F0(&a12);
}

double OUTLINED_FUNCTION_35_13()
{

  *&result = IntentPromptAnswer.init(answeredValue:updatedIntent:)(v1 - 192, v0, v1 - 160).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_35_25()
{
}

uint64_t OUTLINED_FUNCTION_35_26()
{
}

void *OUTLINED_FUNCTION_35_28(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v4;
  result[5] = v3;
  return result;
}

__n128 *OUTLINED_FUNCTION_35_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 96) = 0;
  *(v2 - 88) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_30(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_35_32()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_35_33()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_35_35(uint64_t a1)
{
  *(v1 + 136) = a1;
}

_BYTE *storeEnumTagSinglePayload for SiriKitReliabilityCodes(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 124 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 124) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x84)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x83)
  {
    v6 = ((a2 - 132) >> 8) + 1;
    *result = a2 + 124;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DCB2210CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 124;
        }

        break;
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_67_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DCB10E9C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_54_10(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t OUTLINED_FUNCTION_54_11(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  *v18 = a1;

  return sub_1DCB10E9C(a18, v19, va);
}

uint64_t OUTLINED_FUNCTION_54_13()
{
}

uint64_t OUTLINED_FUNCTION_54_14()
{
  *(v0 + 8) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_81()
{
}

void OUTLINED_FUNCTION_54_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1DCF352BC(va);
}

void OUTLINED_FUNCTION_54_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1DCC60044();
}

void *OUTLINED_FUNCTION_54_22(void *result)
{
  v3 = *(*(v2 - 216) + v1);
  *(v2 - 216) = v3;
  result[2] = v3;
  v4 = *(*(v2 - 224) + v1);
  *(v2 - 224) = v4;
  result[3] = v4;
  v5 = *(*(v2 - 232) + v1);
  *(v2 - 232) = v5;
  result[4] = v5;
  v6 = *(*(v2 - 248) + v1);
  *(v2 - 248) = v6;
  result[5] = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_5()
{
}

id OUTLINED_FUNCTION_29_7()
{

  return v0;
}

unint64_t OUTLINED_FUNCTION_29_12(uint64_t a1)
{

  return sub_1DCB10E9C(a1, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_29_13(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE69D98](a1, a2, v3, v4, v5, v2);
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_29_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char a11)
{
  a9 = *(v11 + 208);
  a10 = 0;
  a11 = 3;

  sub_1DCB79974(&a9);
}

uint64_t OUTLINED_FUNCTION_29_19(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_29_21(uint64_t result)
{
  *(v3 + 88) = result;
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_22(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_29_23()
{

  sub_1DCE18ECC();
}

void OUTLINED_FUNCTION_29_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_29_26()
{
  *(v0 + v1[20]) = 0;
  *(v0 + v1[21]) = 0;
  *(v0 + v1[22]) = 0;
  *(v0 + v1[23]) = 0;
  *(v0 + v1[24]) = 0;
  *(v0 + v1[25]) = 0;
  v2 = (v0 + v1[26]);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + v1[27]) = 0;
}

uint64_t OUTLINED_FUNCTION_29_27()
{
  sub_1DCB370A4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_29_31()
{

  return sub_1DCAFF9E8((v0 + 56), v0 + 16);
}

uint64_t OUTLINED_FUNCTION_29_39@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + a1), *(v1 + a1 + 24));

  return swift_task_alloc();
}

uint64_t sub_1DCB226E0(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_132_1()
{

  sub_1DCB38954();
}

void OUTLINED_FUNCTION_71_1()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2080;
}

id OUTLINED_FUNCTION_71_2()
{
  *(v1 + 104) = v0;
  *(v1 + 112) = 0;
  *(v1 + 184) = 5;

  return v0;
}

void OUTLINED_FUNCTION_233(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_71_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[7] = result;
  v2[8] = a2;
  v2[4] = v3;
  return result;
}

void *OUTLINED_FUNCTION_71_5(uint64_t a1, uint64_t a2, size_t a3)
{

  return memcpy(v3, v4, a3);
}

__n128 OUTLINED_FUNCTION_71_8(unint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v5[2].n128_u64[0] = a3;
  v5[2].n128_u64[1] = v4;
  v5[1].n128_u64[0] = a1;
  v5[1].n128_u64[1] = a2;
  result = *a4;
  v5[3] = *a4;
  v5[4].n128_u64[0] = a4[1].n128_u64[0];
  v5[6].n128_u8[0] = a4[1].n128_u8[8];
  return result;
}

char *OUTLINED_FUNCTION_71_12(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
  return a1 + v4;
}

id OUTLINED_FUNCTION_71_14(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0x80;

  return v2;
}

void OUTLINED_FUNCTION_71_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_71_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{

  sub_1DD046DA0(&a11, &a12);
}

char *SiriKitEvent.deinit()
{
  sub_1DCB22A50(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7]);
  sub_1DCB22AA4(v0 + OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_payload);
  v1 = OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_timestamp;
  sub_1DD0DAFDC();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SiriKitEvent.__deallocating_deinit()
{
  SiriKitEvent.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCB22A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1DCB22AA4(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitEventPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void destroy for SiriKitEventPayload(char *a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(a1 + 7))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 4);
      }

      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      v6 = sub_1DD0DD2FC();
      if (!__swift_getEnumTagSinglePayload(&a1[v5], 1, v6))
      {
        v7 = *(*(v6 - 8) + 8);

        v7(&a1[v5], v6);
      }

      return;
    case 1u:

      goto LABEL_39;
    case 2u:

      goto LABEL_13;
    case 3u:
LABEL_13:

      goto LABEL_39;
    case 4u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

      goto LABEL_39;
    case 5u:

      if (*(a1 + 9))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
      }

      return;
    case 6u:

      goto LABEL_39;
    case 7u:

      v4 = *(a1 + 3);
      if (v4 >= 4)
      {
      }

      goto LABEL_7;
    case 8u:

      if (*(a1 + 10))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 7);
      }

      v9 = *(a1 + 12);
      if (v9 >= 4)
      {
      }

      goto LABEL_39;
    case 9u:

      if (*(a1 + 8))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
      }

      goto LABEL_39;
    case 0xAu:

      if (*(a1 + 8))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
      }

      v8 = *(a1 + 10);
      if (v8 >= 4)
      {
      }

      goto LABEL_39;
    case 0xBu:

      if (*(a1 + 9))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
      }

      if (*(a1 + 15))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 12);
      }

LABEL_7:

      goto LABEL_39;
    case 0xCu:

      goto LABEL_39;
    case 0xDu:

      goto LABEL_39;
    case 0xEu:
    case 0xFu:
    case 0x11u:
LABEL_39:

      return;
    case 0x10u:
    case 0x12u:

      v3 = *(a1 + 2);
      goto LABEL_43;
    case 0x13u:
      v3 = *a1;
LABEL_43:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCB22EC8()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCB22FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitEventPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *initializeWithCopy for SiriKitEventPayload(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      v6 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v6;
      a1[24] = a2[24];
      v7 = *(a2 + 7);

      if (v7)
      {
        v8 = *(a2 + 8);
        *(a1 + 7) = v7;
        *(a1 + 8) = v8;
        (**(v7 - 8))(a1 + 32, a2 + 32, v7);
      }

      else
      {
        v64 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v64;
        *(a1 + 8) = *(a2 + 8);
      }

      *(a1 + 9) = *(a2 + 9);

      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      v66 = sub_1DD0DD2FC();
      if (__swift_getEnumTagSinglePayload(&a2[v65], 1, v66))
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
        memcpy(&a1[v65], &a2[v65], *(*(v67 - 8) + 64));
      }

      else
      {
        (*(*(v66 - 8) + 16))(&a1[v65], &a2[v65], v66);
        __swift_storeEnumTagSinglePayload(&a1[v65], 0, 1, v66);
      }

      goto LABEL_31;
    case 1u:
      v41 = *a2;
      v42 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v42;
      *(a1 + 2) = *(a2 + 2);
      v43 = v41;

      goto LABEL_31;
    case 2u:
      v28 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v28;
      v29 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v29;
      v30 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v30;
      *(a1 + 6) = *(a2 + 6);
      a1[56] = a2[56];

      v31 = v28;

      goto LABEL_31;
    case 3u:
      *a1 = *a2;
      v33 = *(a2 + 1);
      v34 = *(a2 + 2);
      *(a1 + 1) = v33;
      *(a1 + 2) = v34;
      v35 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v35;
      v36 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v36;
      a1[56] = a2[56];
      v37 = v33;

      goto LABEL_31;
    case 4u:
      v15 = *(a2 + 3);
      *(a1 + 3) = v15;
      (**(v15 - 8))(a1, a2);
      v16 = *(a2 + 4);
      v17 = *(a2 + 5);
      *(a1 + 4) = v16;
      *(a1 + 5) = v17;
      v18 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v18;
      v19 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v19;
      a1[80] = a2[80];
      v20 = v16;

      goto LABEL_31;
    case 5u:
      *a1 = *a2;
      v46 = *(a2 + 1);
      v47 = *(a2 + 2);
      *(a1 + 1) = v46;
      *(a1 + 2) = v47;
      v48 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v48;
      *(a1 + 5) = *(a2 + 5);
      v49 = *(a2 + 9);
      v50 = v46;

      if (v49)
      {
        *(a1 + 9) = v49;
        (**(v49 - 8))(a1 + 48, a2 + 48, v49);
      }

      else
      {
        v68 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v68;
      }

      *(a1 + 10) = *(a2 + 10);
      a1[88] = a2[88];
      goto LABEL_31;
    case 6u:
      *a1 = *a2;
      v54 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v54;
      v55 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v55;
      v56 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v56;
      v57 = *(a2 + 8);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = v57;
      v58 = *(a2 + 10);
      *(a1 + 9) = *(a2 + 9);
      *(a1 + 10) = v58;
      *(a1 + 11) = *(a2 + 11);
      a1[96] = a2[96];

      sub_1DD0DCF8C();
    case 7u:
      *a1 = *a2;
      v38 = *(a2 + 1);
      v39 = *(a2 + 2);
      *(a1 + 1) = v38;
      *(a1 + 2) = v39;
      v40 = v38;
      sub_1DD0DCF8C();
    case 8u:
      *a1 = *a2;
      v60 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v60;
      v61 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v61;
      *(a1 + 5) = *(a2 + 5);
      a1[48] = a2[48];
      sub_1DD0DCF8C();
    case 9u:
      *a1 = *a2;
      v27 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v27;
      *(a1 + 3) = *(a2 + 3);
      a1[32] = a2[32];
      sub_1DD0DCF8C();
    case 0xAu:
      *a1 = *a2;
      v59 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v59;
      *(a1 + 3) = *(a2 + 3);
      a1[32] = a2[32];
      sub_1DD0DCF8C();
    case 0xBu:
      *a1 = *a2;
      v13 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v13;
      v14 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v14;
      *(a1 + 5) = *(a2 + 5);

      sub_1DD0DCF8C();
    case 0xCu:
      *a1 = *a2;
      v21 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v21;
      v22 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v22;
      v23 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v23;
      v24 = *(a2 + 8);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = v24;
      v25 = *(a2 + 10);
      *(a1 + 9) = *(a2 + 9);
      *(a1 + 10) = v25;
      v26 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v26;
      a1[108] = a2[108];
      *(a1 + 26) = *(a2 + 26);

      sub_1DD0DCF8C();
    case 0xDu:
      v51 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v51;
      v52 = *(a2 + 2);
      v53 = *(a2 + 3);
      *(a1 + 2) = v52;
      *(a1 + 3) = v53;

      goto LABEL_31;
    case 0xEu:
    case 0x11u:
      v12 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v12;

      goto LABEL_31;
    case 0xFu:
      v32 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v32;
      *(a1 + 2) = *(a2 + 2);
      a1[24] = a2[24];

      goto LABEL_31;
    case 0x10u:
    case 0x12u:
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v9;
      v10 = *(a2 + 2);
      *(a1 + 2) = v10;

      v11 = v10;
      goto LABEL_31;
    case 0x13u:
      v62 = *a2;
      *a1 = *a2;
      v63 = v62;
LABEL_31:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v44 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v44);
      break;
  }

  return result;
}

double sub_1DCB23AC0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DCB22FCC(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 13)
  {
  }

  else if (EnumCaseMultiPayload != 14)
  {
    sub_1DCB22AA4(v9);
    if (!a2 || (swift_beginAccess(), !a2[3]) && (swift_beginAccess(), !a2[5]))
    {
      result = 0.0;
      *a3 = xmmword_1DD0E3FF0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      return result;
    }

    goto LABEL_10;
  }

  if (a2)
  {
LABEL_10:
    swift_beginAccess();
    v11 = a2[2];
    v12 = a2[3];

    v13 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
LABEL_11:
  v14 = sub_1DCB29900();
  v17 = v16;
  if (v13)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    swift_beginAccess();
    v18 = a2[4];
  }

  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_1DCB23C70(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 4);
  v13 = *(a3 + 5);
  sub_1DCB23DD0();
  sub_1DCB24480(v11, v4 + OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_payload);
  v14 = OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_timestamp;
  v15 = sub_1DD0DAFDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v18 = *a3;
  v22 = a3[1];
  v23 = v18;
  v17(v4 + v14, a2, v15);
  v19 = v22;
  *(v4 + 16) = v23;
  *(v4 + 32) = v19;
  *(v4 + 48) = v12;
  *(v4 + 56) = v13;
  v20 = mach_absolute_time();
  (*(v16 + 8))(a2, v15);
  sub_1DCB22AA4(a1);
  *(v4 + OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_machAbsoluteTime) = v20;
  return v4;
}

void sub_1DCB23DD0()
{
  OUTLINED_FUNCTION_50();
  v5 = v0;
  v7 = v6;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  sub_1DCB22FCC(v0, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v10 = *(v1 + 8);
      if (*v1)
      {
        v73 = *(v1 + 8);
        v11 = *v1;
        v12 = OUTLINED_FUNCTION_47_24();

        v10 = v73;
      }

      else
      {
        v12 = 0;
      }

      *v7 = v12;
      *(v7 + 8) = v10;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 2u:
      v50 = *v1;
      v52 = OUTLINED_FUNCTION_57_18();
      if (v51)
      {
        v77 = v52;
        v53 = v51;
        v54 = OUTLINED_FUNCTION_47_24();

        v52 = v77;
      }

      else
      {
        v54 = 0;
      }

      LOBYTE(v78) = v1;
      *v7 = v50;
      *(v7 + 8) = v54;
      *(v7 + 16) = v52;
      *(v7 + 32) = v2;
      *(v7 + 40) = v3;
      *(v7 + 48) = v4;
      *(v7 + 56) = v1;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 3u:
      v45 = *v1;
      v47 = OUTLINED_FUNCTION_57_18();
      if (v46)
      {
        v76 = v47;
        v48 = v46;
        v49 = OUTLINED_FUNCTION_47_24();

        v47 = v76;
      }

      else
      {
        v49 = 0;
      }

      LOBYTE(v78) = v1;
      *v7 = v45;
      *(v7 + 8) = v49;
      *(v7 + 16) = v47;
      *(v7 + 32) = v2;
      *(v7 + 40) = v3;
      *(v7 + 48) = v4;
      *(v7 + 56) = v1;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 4u:
      v37 = *(v1 + 32);
      v38 = *(v1 + 40);
      v39 = *(v1 + 48);
      v40 = *(v1 + 56);
      v41 = *(v1 + 64);
      v42 = *(v1 + 72);
      v43 = *(v1 + 80);
      sub_1DCB20B30(v1, &v78);
      sub_1DCB0DF6C(&v78, v7);
      if (v37)
      {
        v44 = v37;
        v37 = OUTLINED_FUNCTION_47_24();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v78);
      *(v7 + 32) = v37;
      *(v7 + 40) = v38;
      *(v7 + 48) = v39;
      *(v7 + 56) = v40;
      *(v7 + 64) = v41;
      *(v7 + 72) = v42;
      *(v7 + 80) = v43;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 5u:
      v20 = *v1;
      v21 = *(v1 + 8);
      v22 = *(v1 + 16);
      v23 = *(v1 + 32);
      v24 = *(v1 + 40);
      v25 = *(v1 + 80);
      v26 = *(v1 + 88);
      v27 = *(v1 + 64);
      v78 = *(v1 + 48);
      v79 = v27;
      *v7 = v20;
      if (v21)
      {
        v74 = v22;
        v28 = v21;
        v29 = OUTLINED_FUNCTION_47_24();

        v22 = v74;
      }

      else
      {
        v29 = 0;
      }

      *(v7 + 8) = v29;
      *(v7 + 16) = v22;
      *(v7 + 32) = v23;
      *(v7 + 40) = v24;
      v69 = v79;
      *(v7 + 48) = v78;
      *(v7 + 64) = v69;
      *(v7 + 80) = v25;
      *(v7 + 88) = v26;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 7u:
      v30 = *v1;
      v31 = *(v1 + 8);
      v32 = *(v1 + 16);
      v33 = *(v1 + 24);
      v34 = *(v1 + 32);
      v35 = *(v1 + 72);
      v75 = *(v1 + 80);
      v72 = *(v1 + 88);
      v70 = *(v1 + 56);
      v71 = *(v1 + 40);
      v36 = sub_1DCB56C84();

      *v7 = v30;
      *(v7 + 8) = v36;
      *(v7 + 16) = v32;
      *(v7 + 24) = v33;
      *(v7 + 32) = v34;
      *(v7 + 56) = v70;
      *(v7 + 40) = v71;
      *(v7 + 72) = v35;
      *(v7 + 80) = v75;
      *(v7 + 88) = v72;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 8u:
      v55 = *v1;
      v56 = *(v1 + 72);
      v78 = *(v1 + 56);
      v79 = v56;
      OUTLINED_FUNCTION_31_29(v55);
    case 9u:
      OUTLINED_FUNCTION_56_23();
      v57 = *(v1 + 56);
      v78 = *(v1 + 40);
      v79 = v57;
      OUTLINED_FUNCTION_31_29(v58);
    case 0xAu:
      OUTLINED_FUNCTION_56_23();
      v61 = *(v1 + 56);
      v78 = *(v1 + 40);
      v79 = v61;
      OUTLINED_FUNCTION_31_29(v62);
    case 0x10u:
      v14 = *v1;
      v13 = *(v1 + 8);
      v15 = *(v1 + 16);
      sub_1DCB3BE6C(v15);
      if (v59 >> 60 != 15)
      {
        v60 = objc_allocWithZone(MEMORY[0x1E69CEB08]);
        v18 = OUTLINED_FUNCTION_58_19();
        if (v18)
        {
          goto LABEL_6;
        }
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v68 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v68, qword_1EDE57E00);
      v64 = sub_1DD0DD8EC();
      v65 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v64, v65))
      {
        goto LABEL_33;
      }

      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "Failed to create copy of tierOneFlowEvent, using potentially thread unsafe original value";
      goto LABEL_32;
    case 0x12u:
      v14 = *v1;
      v13 = *(v1 + 8);
      v15 = *(v1 + 16);
      sub_1DCB3BE6C(v15);
      if (v16 >> 60 == 15 || (v17 = objc_allocWithZone(MEMORY[0x1E69CEB08]), (v18 = OUTLINED_FUNCTION_58_19()) == 0))
      {

        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v63 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v63, qword_1EDE57E00);
        v64 = sub_1DD0DD8EC();
        v65 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          v67 = "Failed to create copy of domainPerfActivity event, using potentially thread unsafe original value";
LABEL_32:
          _os_log_impl(&dword_1DCAFC000, v64, v65, v67, v66, 2u);
          MEMORY[0x1E12A8390](v66, -1, -1);
        }

LABEL_33:

        sub_1DCB22FCC(v5, v7);
      }

      else
      {
LABEL_6:
        v19 = v18;

        *v7 = v14;
        *(v7 + 8) = v13;
        *(v7 + 16) = v19;
        OUTLINED_FUNCTION_20();
LABEL_42:
        swift_storeEnumTagMultiPayload();
      }

LABEL_43:
      OUTLINED_FUNCTION_49();
      return;
    default:
      sub_1DCB22FCC(v0, v7);
      sub_1DCB22AA4(v1);
      goto LABEL_43;
  }
}

uint64_t sub_1DCB24480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitEventPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void SiriKitEvent.overrides.getter(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1DCB2502C(v2, v3, v4, v5, v6, v7);
}

uint64_t getEnumTagSinglePayload for SemanticValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t destroy for Parse.DirectInvocation(uint64_t a1)
{
}

uint64_t sub_1DCB245D0()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

uint64_t sub_1DCB24628(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB24688(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB246E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

uint64_t sub_1DCB24740(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DCB2479C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB247FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1DCB24858()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

void *initializeWithCopy for Parse(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      goto LABEL_27;
    case 1u:
      v15 = sub_1DD0DC76C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v9;
      *(a1 + 2) = *(a2 + 2);

      goto LABEL_27;
    case 3u:
      *a1 = *a2;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v7 = sub_1DD0DB1EC();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      goto LABEL_27;
    case 5u:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_27;
    case 6u:
      v19 = sub_1DD0DB4BC();
      (*(*(v19 - 8) + 16))(a1, a2, v19);
      v20 = type metadata accessor for USOParse(0);
      v21 = v20[5];
      v22 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
        __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
      }

      v57 = v20[6];
      v58 = &a1[v57];
      v59 = &a2[v57];
      v60 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v60;
      v61 = v20[7];
      v62 = &a1[v61];
      v63 = &a2[v61];
      v62[4] = v63[4];
      *v62 = *v63;

      goto LABEL_27;
    case 7u:
      v10 = sub_1DD0DB4BC();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      v11 = type metadata accessor for USOParse(0);
      v12 = v11[5];
      v13 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v12], 1, v13))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
      }

      else
      {
        (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
        __swift_storeEnumTagSinglePayload(&a1[v12], 0, 1, v13);
      }

      v37 = v11[6];
      v38 = &a1[v37];
      v39 = &a2[v37];
      v40 = *(v39 + 1);
      *v38 = *v39;
      *(v38 + 1) = v40;
      v41 = v11[7];
      v42 = &a1[v41];
      v43 = &a2[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      v44 = type metadata accessor for LinkParse(0);
      v45 = v44[5];
      v46 = &a1[v45];
      v47 = &a2[v45];
      v48 = *(v47 + 1);
      *v46 = *v47;
      *(v46 + 1) = v48;
      v49 = v44[6];
      v50 = &a1[v49];
      v51 = &a2[v49];
      v52 = *(v51 + 1);
      *v50 = *v51;
      *(v50 + 1) = v52;
      v53 = v44[7];
      v54 = &a1[v53];
      v55 = &a2[v53];
      v56 = *(v55 + 1);
      *v54 = *v55;
      *(v54 + 1) = v56;

      goto LABEL_27;
    case 8u:
      v26 = sub_1DD0DD12C();
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v27 = type metadata accessor for NLRouterParse(0);
      v28 = v27[5];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v31 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v31;
      v32 = v27[6];
      v33 = &a1[v32];
      v34 = &a2[v32];
      v35 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v34, 1, v35))
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v33, v34, *(*(v36 - 8) + 64));
      }

      else
      {
        v64 = sub_1DD0DB4BC();
        (*(*(v64 - 8) + 16))(v33, v34, v64);
        v65 = v35[5];
        v66 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v34[v65], 1, v66))
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v33[v65], &v34[v65], *(*(v67 - 8) + 64));
        }

        else
        {
          (*(*(v66 - 8) + 16))(&v33[v65], &v34[v65], v66);
          __swift_storeEnumTagSinglePayload(&v33[v65], 0, 1, v66);
        }

        v68 = v35[6];
        v69 = &v33[v68];
        v70 = &v34[v68];
        v71 = *(v70 + 1);
        *v69 = *v70;
        *(v69 + 1) = v71;
        v72 = v35[7];
        v73 = &v33[v72];
        v74 = &v34[v72];
        v73[4] = v74[4];
        *v73 = *v74;

        __swift_storeEnumTagSinglePayload(v33, 0, 1, v35);
      }

      v75 = v27[7];
      v76 = *&a2[v75];
      *&a1[v75] = v76;
      v77 = v76;
      goto LABEL_27;
    case 9u:
      v8 = sub_1DD0DD08C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v24 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v24);
      break;
  }

  return result;
}

void sub_1DCB2502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1DCB25080(uint64_t (*a1)(uint64_t))
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000018, 0x80000001DD127340);
  sub_1DD0DAFDC();
  sub_1DCB252A8(&qword_1EDE4F818, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v3 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v3);

  v4 = MEMORY[0x1E12A6780](0x616F6C796170202CLL, 0xEB00000000203A64);
  v5 = a1(v4);
  MEMORY[0x1E12A6780](v5);

  MEMORY[0x1E12A6780](0x69727265766F202CLL, 0xED0000203A736564);
  if (*(v1 + 24) == 1)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {

    v7 = sub_1DD0DE02C();
    v6 = v8;
  }

  MEMORY[0x1E12A6780](v7, v6);

  MEMORY[0x1E12A6780](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCB25260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCB252A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCB252F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SiriKitEvent.__allocating_init(_:builder:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DAFDC();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  v7 = type metadata accessor for SiriKitEventPayload(0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  sub_1DCB22FCC(a1, v11 - v10);
  sub_1DD0DAFBC();
  if (a2)
  {
    v12 = sub_1DCB4D7CC();
  }

  else
  {
    v12 = 0;
  }

  sub_1DCB23AC0(a1, v12, &v18);

  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_138();
  sub_1DCB23C70(v14, v15, v16);
  OUTLINED_FUNCTION_48_1();

  sub_1DCB22AA4(a1);
  return v13;
}

uint64_t OUTLINED_FUNCTION_40_7()
{

  return sub_1DD0DD8FC();
}

uint64_t OUTLINED_FUNCTION_40_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t a1)
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_40_10(void *a1)
{

  return [a1 v1];
}

unint64_t OUTLINED_FUNCTION_40_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_1DCB10E9C(v19, v20, va);
}

unint64_t OUTLINED_FUNCTION_40_16()
{

  return sub_1DCB10E9C(v0, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_40_17()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_40_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v13 + 32) = v12;
  *(v13 + 16) = a9;
  return a11;
}

uint64_t OUTLINED_FUNCTION_40_19@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  *(v4 + 16) = result;
  *(v4 + 24) = v5;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_22(uint64_t a1)
{
  v3 = *(v1 - 264);

  return sub_1DCB541A0(a1, v3);
}

void *OUTLINED_FUNCTION_40_23@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 16), (a1 + 16), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_40_25@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 104) = result;
  *(v3 - 96) = a2;
  *(v3 - 128) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_28(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void *OUTLINED_FUNCTION_40_29(void *result)
{
  *(v4 + 48) = result;
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  result[5] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_34(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DDB6C();
}

void OUTLINED_FUNCTION_40_35()
{

  sub_1DD0DCF8C();
}

void SiriKitEventPayload.debugDescription.getter()
{
  OUTLINED_FUNCTION_50();
  v1 = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v344 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v344 - v16;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_48(v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v148 = *v0;
      v149 = *(v0 + 1);
      v150 = *(v0 + 2);
      OUTLINED_FUNCTION_9_75();
      *&v358 = v152 | 0xC;
      *(&v358 + 1) = v151;
      if (v148 && (v153 = sub_1DCB8DC6C(v148), v154))
      {
        v155 = v154;
      }

      else
      {

        v155 = 0xE500000000000000;
        v153 = 0x3E4C494E3CLL;
      }

      MEMORY[0x1E12A6780](v153, v155);

      OUTLINED_FUNCTION_3_118();
      if (v150)
      {
        v259 = v149;
      }

      else
      {
        v259 = 0x3E4C494E3CLL;
      }

      if (v150)
      {
        v260 = v150;
      }

      else
      {
        v260 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v259, v260);

      break;
    case 2u:
      v94 = *v0;
      v95 = *(v0 + 1);
      v96 = *(v0 + 2);
      v97 = *(v0 + 3);
      v352 = *(v0 + 6);
      v98 = v0[56];
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](0xD000000000000031, 0x80000001DD1271D0);
      v99 = *(v94 + 16);

      v353 = v99;
      v100 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v100);

      OUTLINED_FUNCTION_5_108();
      if (v95 && (sub_1DCB8DC6C(v95), v101))
      {
        v102 = v101;
        OUTLINED_FUNCTION_25_32();
      }

      else
      {

        v102 = 0xE500000000000000;
        OUTLINED_FUNCTION_25_32();
        v103 = v94;
      }

      MEMORY[0x1E12A6780](v103, v102);

      OUTLINED_FUNCTION_3_118();
      if (v97)
      {
        v249 = v96;
      }

      else
      {
        v249 = v94;
      }

      if (v97)
      {
        v250 = v97;
      }

      else
      {
        v250 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v249, v250);

      OUTLINED_FUNCTION_24_36();
      v251 = OUTLINED_FUNCTION_19();
      MEMORY[0x1E12A6780](v251);

      OUTLINED_FUNCTION_44_30();
      v252 = v352;
      if (v98)
      {
        v252 = -1;
      }

      v353 = v252;
      v253 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v253);

      OUTLINED_FUNCTION_35();

      break;
    case 3u:
      OUTLINED_FUNCTION_49_23();
      v111 = *v0;
      v112 = *(v0 + 1);
      v113 = *(v0 + 2);
      v114 = *(v0 + 3);
      v352 = *(v0 + 6);
      v115 = v0[56];
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      v116 = MEMORY[0x1E12A6780](v8 + 21, 0x80000001DD127180);
      LOBYTE(v353) = v111;
      OUTLINED_FUNCTION_60_18(v116, v117, &type metadata for SiriKitConfirmationState, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      OUTLINED_FUNCTION_5_108();
      if (v112 && (sub_1DCB8DC6C(v112), v118))
      {
        v119 = v118;
        OUTLINED_FUNCTION_13_71();
      }

      else
      {

        v119 = 0xE500000000000000;
        OUTLINED_FUNCTION_13_71();
        v120 = v111;
      }

      MEMORY[0x1E12A6780](v120, v119);

      OUTLINED_FUNCTION_3_118();
      if (v114)
      {
        v254 = v113;
      }

      else
      {
        v254 = v111;
      }

      if (v114)
      {
        v255 = v114;
      }

      else
      {
        v255 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v254, v255);

      OUTLINED_FUNCTION_24_36();
      v256 = OUTLINED_FUNCTION_19();
      MEMORY[0x1E12A6780](v256);

      OUTLINED_FUNCTION_44_30();
      v257 = v352;
      if (v115)
      {
        v257 = -1;
      }

      v353 = v257;
      v258 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v258);

      OUTLINED_FUNCTION_35();

      break;
    case 4u:
      v47 = *(v0 + 4);
      v48 = *(v0 + 5);
      v49 = *(v0 + 6);
      v50 = *(v0 + 9);
      v51 = v0[80];
      sub_1DCB20B30(v0, &v358);
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD00000000000002BLL, 0x80000001DD127290);
      __swift_project_boxed_opaque_existential_1(&v358, *(&v359 + 1));
      swift_getDynamicType();
      v52 = sub_1DD0DF2AC();
      MEMORY[0x1E12A6780](v52);

      OUTLINED_FUNCTION_5_108();
      if (v47 && (sub_1DCB8DC6C(v47), v53))
      {
        v54 = v53;
        OUTLINED_FUNCTION_13_71();
      }

      else
      {

        v54 = 0xE500000000000000;
        OUTLINED_FUNCTION_13_71();
        v55 = 0xD000000000000013;
      }

      MEMORY[0x1E12A6780](v55, v54);

      OUTLINED_FUNCTION_3_118();
      if (v49)
      {
        v244 = v48;
      }

      else
      {
        v244 = 0xD000000000000013;
      }

      if (v49)
      {
        v245 = v49;
      }

      else
      {
        v245 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v244, v245);

      OUTLINED_FUNCTION_24_36();
      v246 = OUTLINED_FUNCTION_19();
      MEMORY[0x1E12A6780](v246);

      OUTLINED_FUNCTION_44_30();
      if (v51)
      {
        v247 = -1;
      }

      else
      {
        v247 = v50;
      }

      v357 = v247;
      v248 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v248);

      OUTLINED_FUNCTION_35();

      __swift_destroy_boxed_opaque_existential_1Tm(&v358);
      break;
    case 5u:
      OUTLINED_FUNCTION_49_23();
      v157 = *v0;
      v158 = *(v0 + 1);
      v159 = *(v0 + 2);
      v160 = *(v0 + 3);
      v352 = *(v0 + 10);
      v353 = 0;
      v161 = v0[88];
      v162 = *(v0 + 4);
      v358 = *(v0 + 3);
      v359 = v162;
      v354 = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](v8 + 19, 0x80000001DD127240);
      LOBYTE(v357) = v157;
      sub_1DD0DEDBC();
      OUTLINED_FUNCTION_5_108();
      if (v158 && (v163 = sub_1DCB8DC6C(v158), v164))
      {
        v165 = v164;
      }

      else
      {

        v165 = 0xE500000000000000;
        v163 = 0x3E4C494E3CLL;
      }

      MEMORY[0x1E12A6780](v163, v165);

      OUTLINED_FUNCTION_3_118();
      if (v160)
      {
        v261 = v159;
      }

      else
      {
        v261 = 0x3E4C494E3CLL;
      }

      if (v160)
      {
        v262 = v160;
      }

      else
      {
        v262 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v261, v262);

      MEMORY[0x1E12A6780](v8 - 2, 0x80000001DD126F70);
      v263 = OUTLINED_FUNCTION_19();
      MEMORY[0x1E12A6780](v263);

      MEMORY[0x1E12A6780](v8 - 2, 0x80000001DD127270);
      if (*(&v359 + 1))
      {
        v264 = 0x65746E6573657250;
      }

      else
      {
        v264 = 0x3E4C494E3CLL;
      }

      if (*(&v359 + 1))
      {
        v265 = 0xE900000000000064;
      }

      else
      {
        v265 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v264, v265);

      MEMORY[0x1E12A6780](v8 + 3, 0x80000001DD1271B0);
      v266 = v352;
      if (v161)
      {
        v266 = -1;
      }

      v357 = v266;
      v267 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v267);

      OUTLINED_FUNCTION_35();

      v268 = &dword_1ECCA3CE0;
      v269 = &unk_1DD0E4F80;
      goto LABEL_275;
    case 6u:
      v169 = *v0;
      v171 = *(v0 + 1);
      v170 = *(v0 + 2);
      v172 = *(v0 + 3);
      v174 = *(v0 + 5);
      v173 = *(v0 + 6);
      v347 = *(v0 + 4);
      v348 = v173;
      v176 = *(v0 + 7);
      v175 = *(v0 + 8);
      v177 = *(v0 + 9);
      v351 = *(v0 + 10);
      v178 = *(v0 + 11);
      v349 = v175;
      v350 = v178;
      LODWORD(v352) = v0[96];
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      v179 = MEMORY[0x1E12A6780](0xD000000000000025, 0x80000001DD127010);
      LOBYTE(v353) = v169;
      OUTLINED_FUNCTION_60_18(v179, v180, &type metadata for ActivityType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      OUTLINED_FUNCTION_30_40();
      MEMORY[0x1E12A6780](v171, v170);

      OUTLINED_FUNCTION_4_110();
      if (v172)
      {
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_39_31();
      MEMORY[0x1E12A6780](v169, 0xE500000000000000);

      OUTLINED_FUNCTION_7_73();
      if (v174)
      {
        v270 = v347;
      }

      else
      {
        v270 = v169;
      }

      if (v174)
      {
        v271 = v174;
      }

      else
      {
        v271 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v270, v271);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      if (v176)
      {
        v272 = v348;
      }

      else
      {
        v272 = v169;
      }

      if (v176)
      {
        v273 = v176;
      }

      else
      {
        v273 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v272, v273);

      OUTLINED_FUNCTION_0_120();
      if (v177)
      {
        v274 = v349;
      }

      else
      {
        v274 = v169;
      }

      if (v177)
      {
        v275 = v177;
      }

      else
      {
        v275 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v274, v275);

      OUTLINED_FUNCTION_34_38();
      if (v350)
      {
        v276 = v351;
      }

      else
      {
        v276 = v169;
      }

      if (v350)
      {
        v277 = v350;
      }

      else
      {
        v277 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v276, v277);

      OUTLINED_FUNCTION_35_33();
      LOBYTE(v353) = v352;
      v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v279 = OUTLINED_FUNCTION_46_27(v278);
      MEMORY[0x1E12A6780](v279);

      OUTLINED_FUNCTION_35();
      goto LABEL_280;
    case 7u:
      v121 = *v0;
      v122 = 0x3E4C494E3CLL;
      v124 = *(v0 + 1);
      v123 = *(v0 + 2);
      v125 = *(v0 + 3);
      LODWORD(v351) = *(v0 + 16);
      v126 = *(v0 + 6);
      v127 = *(v0 + 7);
      v128 = *(v0 + 8);
      v345 = *(v0 + 5);
      v346 = v127;
      v129 = *(v0 + 10);
      v348 = *(v0 + 9);
      v349 = v125;
      v347 = v129;
      LODWORD(v350) = v0[88];
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      v130 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD127080);
      LOBYTE(v353) = v121;
      OUTLINED_FUNCTION_60_18(v130, v131, &type metadata for ActivityType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      OUTLINED_FUNCTION_5_108();
      v352 = v124;
      v132 = sub_1DCFA4974(v124);
      if (v133)
      {
        v134 = v133;
      }

      else
      {
        v132 = 0x3E4C494E3CLL;
        v134 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v132, v134);

      OUTLINED_FUNCTION_4_110();
      if (v123)
      {
        sub_1DD0DCF8C();
      }

      MEMORY[0x1E12A6780](0x3E4C494E3CLL, 0xE500000000000000);

      OUTLINED_FUNCTION_23_33();
      MEMORY[0x1E12A6780](v135 + 2, v136 | 0x8000000000000000);
      v137 = 0xE500000000000000;
      v138 = v349;
      if (v349 != 3)
      {
        v353 = v349;
        LOWORD(v354) = v351;
        sub_1DCFA49D4(v349);
        v122 = sub_1DD0DE02C();
        v137 = v139;
      }

      MEMORY[0x1E12A6780](v122, v137);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      if (v126)
      {
        v140 = v345;
      }

      else
      {
        v140 = 0x3E4C494E3CLL;
      }

      if (v126)
      {
        v141 = v126;
      }

      else
      {
        v141 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v140, v141);

      OUTLINED_FUNCTION_0_120();
      if (v128)
      {
        v142 = v346;
      }

      else
      {
        v142 = 0x3E4C494E3CLL;
      }

      if (v128)
      {
        v143 = v128;
      }

      else
      {
        v143 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v142, v143);

      MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD127040);
      if (v347)
      {
        v144 = v348;
      }

      else
      {
        v144 = 0x3E4C494E3CLL;
      }

      if (v347)
      {
        v145 = v347;
      }

      else
      {
        v145 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v144, v145);

      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD126FF0);
      LOBYTE(v353) = v350;
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v147 = OUTLINED_FUNCTION_46_27(v146);
      MEMORY[0x1E12A6780](v147);

      OUTLINED_FUNCTION_35();
      sub_1DCCD86D4(v138);

      goto LABEL_280;
    case 8u:
      v207 = *v0;
      OUTLINED_FUNCTION_13_71();
      v209 = *(v0 + 1);
      v208 = *(v0 + 2);
      v211 = *(v0 + 3);
      v210 = *(v0 + 4);
      v344 = *(v0 + 5);
      v345 = v1;
      v212 = v0[48];
      LODWORD(v351) = *(v0 + 52);
      v213 = *(v0 + 14);
      v346 = *(v0 + 15);
      v347 = v213;
      LODWORD(v349) = v0[128];
      v214 = *(v0 + 72);
      v358 = *(v0 + 56);
      v359 = v214;
      v215 = *(v0 + 11);
      v348 = *(v0 + 12);
      v360 = v215;
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_52_28();
      OUTLINED_FUNCTION_63_16();
      LOBYTE(v353) = v207;
      OUTLINED_FUNCTION_62_14(v216, v217, &type metadata for ActivityType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      OUTLINED_FUNCTION_4_110();
      v350 = v209;
      v218 = v1;
      v219 = sub_1DD0DD1BC();
      if (v220)
      {
        v221 = v220;
      }

      else
      {
        v219 = v1;
        v221 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v219, v221);

      OUTLINED_FUNCTION_5_108();
      v352 = v208;
      v222 = sub_1DCFA4974(v208);
      if (v223)
      {
        v224 = v223;
      }

      else
      {
        v222 = v1;
        v224 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v222, v224);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      MEMORY[0x1E12A6780](v211, v210);

      OUTLINED_FUNCTION_5_108();
      v225 = v344;
      if (v212)
      {
        v225 = -1;
      }

      v353 = v225;
      v226 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v226);

      v227 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD126FB0);
      OUTLINED_FUNCTION_64_19(v227, v228, &unk_1ECCA3280, &unk_1DD0E23D0);
      if (v355)
      {
        v229 = v356;
        OUTLINED_FUNCTION_61_24();
        v230 = OUTLINED_FUNCTION_22_41();
        v231(v230, v229);
        OUTLINED_FUNCTION_55_16();
        __swift_destroy_boxed_opaque_existential_1Tm(&v353);
      }

      else
      {
        sub_1DCB0E9D8(&v353, &unk_1ECCA3280, &unk_1DD0E23D0);
      }

      v232 = v345;
      OUTLINED_FUNCTION_45_24();

      OUTLINED_FUNCTION_34_38();
      v334 = 0xE500000000000000;
      v335 = v348;
      if (v348 != 3)
      {
        v353 = v348;
        LOWORD(v354) = v351;
        sub_1DCFA49D4(v348);
        v232 = sub_1DD0DE02C();
        v334 = v336;
      }

      MEMORY[0x1E12A6780](v232, v334);

      OUTLINED_FUNCTION_0_120();
      if (v346)
      {
        v337 = v347;
      }

      else
      {
        v337 = v218;
      }

      if (v346)
      {
        v338 = v346;
      }

      else
      {
        v338 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v337, v338);

      OUTLINED_FUNCTION_35_33();
      LOBYTE(v353) = v349;
      v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v340 = OUTLINED_FUNCTION_46_27(v339);
      MEMORY[0x1E12A6780](v340);

      OUTLINED_FUNCTION_35();

      v333 = v335;
      goto LABEL_273;
    case 9u:
      v70 = *v0;
      OUTLINED_FUNCTION_39_31();
      v71 = *(v0 + 2);
      v72 = *(v0 + 3);
      v73 = v0[32];
      LODWORD(v352) = v0[96];
      v74 = *(v0 + 56);
      v358 = *(v0 + 40);
      v359 = v74;
      v75 = *(v0 + 11);
      v351 = *(v0 + 10);
      v360 = *(v0 + 9);
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_52_28();
      OUTLINED_FUNCTION_63_16();
      LOBYTE(v353) = v70;
      OUTLINED_FUNCTION_62_14(v76, v77, &type metadata for ActivityType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      OUTLINED_FUNCTION_4_110();
      v78 = sub_1DD0DD1BC();
      if (v79)
      {
        v80 = v79;
      }

      else
      {
        v78 = v14;
        v80 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v78, v80);

      OUTLINED_FUNCTION_5_108();
      v81 = sub_1DCFA4974(v71);
      if (v82)
      {
        v83 = v82;
      }

      else
      {
        v81 = v14;
        v83 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v81, v83);

      OUTLINED_FUNCTION_5_108();
      if (v73)
      {
        v84 = -1;
      }

      else
      {
        v84 = v72;
      }

      v353 = v84;
      v85 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v85);

      v86 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD126FB0);
      OUTLINED_FUNCTION_64_19(v86, v87, &unk_1ECCA3280, &unk_1DD0E23D0);
      if (v355)
      {
        v88 = v356;
        OUTLINED_FUNCTION_61_24();
        v89 = OUTLINED_FUNCTION_22_41();
        v91 = v90(v89, v88);
        v93 = v92;
        __swift_destroy_boxed_opaque_existential_1Tm(&v353);
      }

      else
      {
        sub_1DCB0E9D8(&v353, &unk_1ECCA3280, &unk_1DD0E23D0);
        v93 = 0xE500000000000000;
        v91 = v14;
      }

      MEMORY[0x1E12A6780](v91, v93);

      OUTLINED_FUNCTION_0_120();
      if (v75)
      {
        v319 = v351;
      }

      else
      {
        v319 = v14;
      }

      if (v75)
      {
        v320 = v75;
      }

      else
      {
        v320 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v319, v320);

      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD126FF0);
      LOBYTE(v353) = v352;
      v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v322 = OUTLINED_FUNCTION_46_27(v321);
      MEMORY[0x1E12A6780](v322);

      OUTLINED_FUNCTION_35();

      goto LABEL_274;
    case 0xAu:
      v183 = *v0;
      v185 = *(v0 + 1);
      v184 = *(v0 + 2);
      v186 = *(v0 + 3);
      v187 = v0[32];
      LODWORD(v352) = *(v0 + 44);
      v188 = *(v0 + 13);
      v348 = *(v0 + 12);
      v346 = 0x3E4C494E3CLL;
      v347 = v188;
      LODWORD(v349) = v0[112];
      v189 = *(v0 + 56);
      v358 = *(v0 + 40);
      v359 = v189;
      v190 = *(v0 + 10);
      v360 = *(v0 + 9);
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_52_28();
      OUTLINED_FUNCTION_63_16();
      LOBYTE(v353) = v183;
      OUTLINED_FUNCTION_62_14(v191, v192, &type metadata for ActivityType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      OUTLINED_FUNCTION_4_110();
      v350 = v185;
      v193 = sub_1DD0DD1BC();
      if (v194)
      {
        v195 = v194;
      }

      else
      {
        v193 = 0x3E4C494E3CLL;
        v195 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v193, v195);

      OUTLINED_FUNCTION_5_108();
      v351 = v184;
      v196 = sub_1DCFA4974(v184);
      if (v197)
      {
        v198 = v197;
      }

      else
      {
        v196 = 0x3E4C494E3CLL;
        v198 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v196, v198);

      OUTLINED_FUNCTION_5_108();
      if (v187)
      {
        v199 = -1;
      }

      else
      {
        v199 = v186;
      }

      v353 = v199;
      v200 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v200);

      v201 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD126FB0);
      OUTLINED_FUNCTION_64_19(v201, v202, &unk_1ECCA3280, &unk_1DD0E23D0);
      if (v355)
      {
        v203 = v356;
        OUTLINED_FUNCTION_61_24();
        v204 = OUTLINED_FUNCTION_22_41();
        v205(v204, v203);
        OUTLINED_FUNCTION_55_16();
        __swift_destroy_boxed_opaque_existential_1Tm(&v353);
      }

      else
      {
        sub_1DCB0E9D8(&v353, &unk_1ECCA3280, &unk_1DD0E23D0);
      }

      v206 = v346;
      OUTLINED_FUNCTION_45_24();

      OUTLINED_FUNCTION_34_38();
      v327 = 0xE500000000000000;
      if (v190 != 3)
      {
        v353 = v190;
        LOWORD(v354) = v352;
        sub_1DCFA49D4(v190);
        v206 = sub_1DD0DE02C();
        v327 = v328;
      }

      MEMORY[0x1E12A6780](v206, v327);

      MEMORY[0x1E12A6780](0xD00000000000002BLL, 0x80000001DD127110);
      if (v347)
      {
        v329 = v348;
      }

      else
      {
        v329 = 0x3E4C494E3CLL;
      }

      if (v347)
      {
        v330 = v347;
      }

      else
      {
        v330 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v329, v330);

      OUTLINED_FUNCTION_35_33();
      LOBYTE(v353) = v349;
      v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v332 = OUTLINED_FUNCTION_46_27(v331);
      MEMORY[0x1E12A6780](v332);

      OUTLINED_FUNCTION_35();

      v333 = v190;
LABEL_273:
      sub_1DCCD86D4(v333);
      goto LABEL_274;
    case 0xBu:
      OUTLINED_FUNCTION_49_23();
      v37 = *v0;
      v38 = *(v0 + 3);
      v39 = *(v0 + 4);
      v40 = *(v0 + 5);
      v41 = *(v0 + 10);

      v42 = *(v0 + 17);
      v346 = *(v0 + 18);
      v347 = v42;
      v43 = *(v0 + 19);
      v348 = *(v0 + 20);
      v349 = v43;
      v44 = *(v0 + 21);
      v350 = *(v0 + 22);
      v351 = v44;
      LODWORD(v352) = v0[184];
      v45 = *(v0 + 4);
      v358 = *(v0 + 3);
      v359 = v45;
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](v8 + 14, 0x80000001DD1270A0);
      LOBYTE(v357) = v37;
      sub_1DD0DEDBC();
      OUTLINED_FUNCTION_30_40();
      v46 = OUTLINED_FUNCTION_138();
      MEMORY[0x1E12A6780](v46);

      OUTLINED_FUNCTION_4_110();
      if (v38)
      {
        sub_1DD0DCF8C();
      }

      v238 = OUTLINED_FUNCTION_138();
      MEMORY[0x1E12A6780](v238);

      OUTLINED_FUNCTION_7_73();
      if (v40)
      {
        v239 = v39;
      }

      else
      {
        v239 = 0x3E4C494E3CLL;
      }

      if (v40)
      {
        v240 = v40;
      }

      else
      {
        v240 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v239, v240);

      MEMORY[0x1E12A6780](0x6E65736F6863202CLL, 0xEE00203A6D657449);
      if (*(&v359 + 1))
      {
        v241 = 0x65746E6573657250;
      }

      else
      {
        v241 = 0x3E4C494E3CLL;
      }

      if (*(&v359 + 1))
      {
        v242 = 0xE900000000000064;
      }

      else
      {
        v242 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v241, v242);

      MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD1270D0);
      if (v41)
      {
        v243 = *(v41 + 16);
      }

      else
      {
        v243 = 0;
      }

      v307 = v352;
      v309 = v350;
      v308 = v351;
      v357 = v243;
      v310 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v310);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      if (v346)
      {
        v311 = v347;
      }

      else
      {
        v311 = 0x3E4C494E3CLL;
      }

      if (v346)
      {
        v312 = v346;
      }

      else
      {
        v312 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v311, v312);

      OUTLINED_FUNCTION_0_120();
      if (v348)
      {
        v313 = v349;
      }

      else
      {
        v313 = 0x3E4C494E3CLL;
      }

      if (v348)
      {
        v314 = v348;
      }

      else
      {
        v314 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v313, v314);

      OUTLINED_FUNCTION_34_38();
      if (v309)
      {
        v315 = v308;
      }

      else
      {
        v315 = 0x3E4C494E3CLL;
      }

      if (v309)
      {
        v316 = v309;
      }

      else
      {
        v316 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v315, v316);

      OUTLINED_FUNCTION_35_33();
      LOBYTE(v357) = v307;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v317 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v317);

      sub_1DCB0E9D8(&v358, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v268 = &unk_1ECCA3280;
      v269 = &unk_1DD0E23D0;
      v318 = (v0 + 96);
      goto LABEL_276;
    case 0xCu:
      OUTLINED_FUNCTION_49_23();
      v56 = *v0;
      v58 = *(v0 + 1);
      v57 = *(v0 + 2);
      v59 = *(v0 + 3);
      v61 = *(v0 + 5);
      v60 = *(v0 + 6);
      v62 = *(v0 + 7);
      v63 = *(v0 + 8);
      v347 = *(v0 + 4);
      v348 = v62;
      v64 = *(v0 + 9);
      v65 = *(v0 + 10);
      v66 = *(v0 + 12);
      v351 = *(v0 + 11);
      v349 = v64;
      v350 = v66;
      LODWORD(v346) = *(v0 + 26);
      v67 = v0[108];

      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](v8 | 8, 0x80000001DD127140);
      LODWORD(v352) = v67;
      if (v56 > 0xD0)
      {
        v68 = @"FLOWSTATETYPE_UNKNOWN";
        v69 = @"FLOWSTATETYPE_UNKNOWN";
      }

      else
      {
        v68 = off_1E864C318[v56];
        v69 = off_1E864C9A0[v56];
      }

      v280 = 0x3E4C494E3CLL;
      v281 = v68;
      v282 = v69;
      v283 = sub_1DD0DDFBC();
      v285 = v284;

      MEMORY[0x1E12A6780](v283, v285);

      MEMORY[0x1E12A6780](0x79546B736174202CLL, 0xEC000000203A6570);
      MEMORY[0x1E12A6780](v58, v57);

      OUTLINED_FUNCTION_4_110();
      if (v59)
      {
        sub_1DD0DCF8C();
      }

      v286 = v351;
      MEMORY[0x1E12A6780](0x3E4C494E3CLL, 0xE500000000000000);

      OUTLINED_FUNCTION_7_73();
      if (v61)
      {
        v287 = v347;
      }

      else
      {
        v287 = 0x3E4C494E3CLL;
      }

      v288 = 0xE500000000000000;
      if (v61)
      {
        v289 = v61;
      }

      else
      {
        v289 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v287, v289);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      if (v63)
      {
        v290 = v348;
      }

      else
      {
        v290 = 0x3E4C494E3CLL;
      }

      if (v63)
      {
        v291 = v63;
      }

      else
      {
        v291 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v290, v291);

      OUTLINED_FUNCTION_0_120();
      if (v65)
      {
        v292 = v349;
      }

      else
      {
        v292 = 0x3E4C494E3CLL;
      }

      if (v65)
      {
        v293 = v65;
      }

      else
      {
        v293 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v292, v293);

      MEMORY[0x1E12A6780](0xD00000000000001BLL, 0x80000001DD127160);
      if (v350)
      {
        v294 = v286;
      }

      else
      {
        v294 = 0x3E4C494E3CLL;
      }

      if (v350)
      {
        v295 = v350;
      }

      else
      {
        v295 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v294, v295);

      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD126FF0);
      if ((v352 & 1) == 0)
      {
        if (v346 > 0x62)
        {
          v296 = @"FLOWSTATUSREASON_UNKNOWN";
          v297 = @"FLOWSTATUSREASON_UNKNOWN";
        }

        else
        {
          v296 = off_1E864D028[v346];
          v297 = off_1E864D340[v346];
        }

        v341 = v296;
        v342 = v297;
        v280 = sub_1DD0DDFBC();
        v288 = v343;
      }

      MEMORY[0x1E12A6780](v280, v288);

LABEL_280:

      break;
    case 0xDu:
      v166 = *v0;
      v167 = *(v0 + 1);
      v168 = *(v0 + 2);
      v32 = *(v0 + 3);
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](0xD00000000000001FLL, 0x80000001DD126F00);
      MEMORY[0x1E12A6780](v166, v167);

      MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD11DD70);
      v33 = v168;
      goto LABEL_66;
    case 0xEu:
      v32 = *(v0 + 1);
      OUTLINED_FUNCTION_9_75();
      v36 = v35 + 22;
      goto LABEL_61;
    case 0xFu:
      v104 = *v0;
      v105 = *(v0 + 1);
      v106 = *(v0 + 2);
      v107 = v0[24];
      v353 = 0xD000000000000025;
      v354 = 0x80000001DD126ED0;
      *&v358 = v104;
      *(&v358 + 1) = v105;
      *&v359 = v106;
      BYTE8(v359) = v107;
      v108 = TaskFlowConfiguration.debugDescription.getter();
      v110 = v109;

      MEMORY[0x1E12A6780](v108, v110);

      OUTLINED_FUNCTION_35();
      break;
    case 0x10u:
      v28 = *v0;
      v29 = *(v0 + 1);

      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      OUTLINED_FUNCTION_23_33();
      MEMORY[0x1E12A6780](v30 | 0x20, v31 | 0x8000000000000000);
      goto LABEL_70;
    case 0x11u:
      v32 = *(v0 + 1);
      OUTLINED_FUNCTION_9_75();
      v36 = v156 + 10;
LABEL_61:
      *&v358 = v36;
      *(&v358 + 1) = v34;
LABEL_66:
      MEMORY[0x1E12A6780](v33, v32);
      goto LABEL_71;
    case 0x12u:
      v28 = *v0;
      v29 = *(v0 + 1);

      OUTLINED_FUNCTION_9_75();
      *&v358 = v182 + 10;
      *(&v358 + 1) = v181;
LABEL_70:
      MEMORY[0x1E12A6780](v28, v29);
LABEL_71:

      OUTLINED_FUNCTION_35();
      break;
    case 0x13u:
      v233 = *v0;
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      OUTLINED_FUNCTION_23_33();
      MEMORY[0x1E12A6780](v234 + 21, v235 | 0x8000000000000000);
      v353 = [v233 whichContextevent];
      type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionPromptContext_WhichContextevent(0);
      OUTLINED_FUNCTION_60_18(v236, v237, v236, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);

      break;
    case 0x14u:
      break;
    default:
      v21 = *v0;
      v23 = *(v0 + 1);
      v22 = *(v0 + 2);
      LODWORD(v351) = v0[24];
      v352 = *(v0 + 9);
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      v25 = *(v0 + 3);
      v358 = *(v0 + 2);
      v359 = v25;
      v360 = *(v0 + 8);
      sub_1DCFA49F4(&v0[v24], v17);
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_52_28();
      OUTLINED_FUNCTION_23_33();
      OUTLINED_FUNCTION_63_16();
      LOBYTE(v353) = v21;
      OUTLINED_FUNCTION_62_14(v26, v27, &type metadata for ActivityType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      MEMORY[0x1E12A6780](0xD000000000000012, 0x80000001DD127320);
      MEMORY[0x1E12A6780](v23, v22);

      MEMORY[0x1E12A6780](0x746C75736572202CLL, 0xEA0000000000203ALL);
      sub_1DCB09970(v17, v14, &qword_1ECCA2278, &qword_1DD0E4830);
      if (__swift_getEnumTagSinglePayload(v14, 1, v1) != 1)
      {
        (*(v3 + 32))(v8, v14, v1);
        sub_1DCB252A8(&qword_1EDE46328, MEMORY[0x1E69CE260], MEMORY[0x1E69CE268]);
        sub_1DD0DF03C();
        OUTLINED_FUNCTION_55_16();
        v298 = *(v3 + 8);
        v3 += 8;
        v298(v8, v1);
      }

      OUTLINED_FUNCTION_25_32();
      OUTLINED_FUNCTION_45_24();

      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD126FF0);
      LOBYTE(v353) = v351;
      v299 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v299);

      v300 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD126FB0);
      OUTLINED_FUNCTION_64_19(v300, v301, &unk_1ECCA3280, &unk_1DD0E23D0);
      if (v355)
      {
        v302 = v356;
        OUTLINED_FUNCTION_61_24();
        v303 = OUTLINED_FUNCTION_22_41();
        v3 = v304(v303, v302);
        v306 = v305;
        __swift_destroy_boxed_opaque_existential_1Tm(&v353);
      }

      else
      {
        sub_1DCB0E9D8(&v353, &unk_1ECCA3280, &unk_1DD0E23D0);
        v306 = 0xE500000000000000;
      }

      v323 = v352;
      MEMORY[0x1E12A6780](v3, v306);

      MEMORY[0x1E12A6780](0x61646174656D202CLL, 0xEC000000203A6174);
      if (!v323)
      {
        sub_1DD0DDE9C();
      }

      v324 = sub_1DD0DDE7C();
      v326 = v325;

      MEMORY[0x1E12A6780](v324, v326);

      OUTLINED_FUNCTION_35();
      sub_1DCB0E9D8(v17, &qword_1ECCA2278, &qword_1DD0E4830);
LABEL_274:
      v268 = &unk_1ECCA3280;
      v269 = &unk_1DD0E23D0;
LABEL_275:
      v318 = &v358;
LABEL_276:
      sub_1DCB0E9D8(v318, v268, v269);
      break;
  }

  OUTLINED_FUNCTION_49();
}

uint64_t SAIntentGroupRunSiriKitExecutor.hasExecuteOnRemotePayload.getter()
{
  v1 = [v0 parse];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DCB28184(v1, &selRef_type);
    if (v4)
    {
      v5 = v4;
      if (v3 == sub_1DD0DDFBC() && v5 == v6)
      {
      }

      else
      {
        v8 = sub_1DD0DF0AC();

        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v10 = [v2 directInvocation];
      if (v10)
      {
        v11 = v10;
        v9 = sub_1DCB281E0();
        v12 = v2;
        v2 = v11;
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v13 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v13, qword_1EDE57E00);
        v12 = sub_1DD0DD8EC();
        v14 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_5(v14))
        {
          v15 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_14_1(v15);
          OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v16, v17, "Could not extract ExecuteOnRemotePayload: Parse is type directInvocation but directInvocation is nil");
          OUTLINED_FUNCTION_52();
        }

        v9 = 0;
      }

      goto LABEL_19;
    }

LABEL_8:
    v9 = 0;
LABEL_19:

    return v9 & 1;
  }

  v9 = 0;
  return v9 & 1;
}

void sub_1DCB27A48(uint64_t a1, uint64_t a2, Class *a3, SEL *a4)
{
  sub_1DCB0D344();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1DCB28078(v7, a3, a4);

    if (v9)
    {
      (*(v4 + 16))(v9);
    }
  }
}

uint64_t dispatch thunk of SiriKitEventSending.sendAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB22EC8;

  return v9(a1, a2, a3);
}

uint64_t sub_1DCB27C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v34 = a4;
  v32 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v32 - v9;
  v11 = sub_1DD0DE4BC();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v32 - v18;
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  sub_1DCB28B08(v4 + 112, v37, &qword_1ECCA54E8, &unk_1DD0F2080);
  v20 = v38;
  sub_1DCB16D50(v37, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (!v20 && (*(v4 + 152) & 1) == 0)
  {
    *(v4 + 152) = 1;
    sub_1DD0DE48C();
    if (sub_1DCFEE0F8())
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      v27 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_5_109();
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1DCAFC000, v25, v26, "Boosting the Suggestion loading task priority to low", v29, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      sub_1DD0DE49C();
      (*(v12 + 8))(v19, v11);
      (*(v12 + 32))(v19, v16, v11);
    }

    (*(v12 + 16))(v10, v19, v11);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v31 = v33;
    v30[4] = v32;
    v30[5] = a2;
    v30[6] = v5;
    v30[7] = v31;
    v30[8] = v34;
    sub_1DD0DCF8C();
  }

  sub_1DCB28B08(v4 + 112, &v35, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (!v36)
  {
    return sub_1DCB16D50(&v35, &qword_1ECCA54E8, &unk_1DD0F2080);
  }

  sub_1DCB18FF0(&v35, v37);
  v21 = v38;
  v22 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v22 + 16))(v21, v22);
  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t sub_1DCB28014()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_1DCB28078(void *a1, Class *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(*a2) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E69CE9C8]) init];
    if (v7)
    {
      v8 = v7;
      [v7 *a3];
      [a1 setExecutionPrepareContext_];

      v9 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v10 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v10, qword_1EDE57DA0);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v12))
  {
    v13 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v13);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v14, v15, "[ConversationSELFHelper] Failed to create context SELF objects");
    OUTLINED_FUNCTION_62();
  }

  return 0;
}

uint64_t sub_1DCB28184(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1DD0DDFBC();
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCB281E0()
{
  v1 = sub_1DCB28184(v0, &selRef_invocationIdentifier);
  if (v2)
  {
    if (v1 == 0xD000000000000025 && v2 == 0x80000001DD119FA0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1DD0DF0AC();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

_BYTE *storeEnumTagSinglePayload for SiriKitConfirmationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DCB28338);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t Input.init(parse:alternatives:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_9();
  v6 = v3 + *(OUTLINED_FUNCTION_92_4() + 28);
  *(v6 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v6);
  OUTLINED_FUNCTION_1_51();
  sub_1DCB246E8(v2, v3 + v7);
  *(v3 + *(v4 + 24)) = a2;
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_5_42();
  result = sub_1DCB28538();
  *(v3 + *(v4 + 32)) = 0;
  return result;
}

uint64_t sub_1DCB283D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28430(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28484()
{
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DCB284D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DCB28538()
{
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DCB2858C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB285E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28638(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28690(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB286E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28740(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28794(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1DCB287FC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = AFDeviceSupportsSAE();
  sub_1DCB11070(v5, v3, v16, v7);
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v17 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v17, qword_1EDE57DA0);
  (*(v10 + 16))(v15, v7, v8);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_151();
    v21 = OUTLINED_FUNCTION_83();
    v30 = v21;
    *v20 = 136315138;
    sub_1DCB28A60();
    v22 = sub_1DD0DF03C();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_19();
    v26(v25);
    v27 = sub_1DCB10E9C(v22, v24, &v30);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1DCAFC000, v18, v19, v1, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    v28 = OUTLINED_FUNCTION_19();
    v29(v28);
  }

  OUTLINED_FUNCTION_49();
}

unint64_t sub_1DCB28A60()
{
  result = qword_1EDE4D650;
  if (!qword_1EDE4D650)
  {
    sub_1DD0DB04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D650);
  }

  return result;
}

uint64_t sub_1DCB28B08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DCB28B74()
{
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_48(v3);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60);
      sub_1DCB0E9D8(v0 + *(v4 + 112), &qword_1ECCA2278, &qword_1DD0E4830);
      v5 = &unk_1ECCA3280;
      v6 = &unk_1DD0E23D0;
      v7 = v0 + 32;
      goto LABEL_13;
    case 6u:

      goto LABEL_9;
    case 7u:
      v11 = *(v0 + 8);
      v12 = *(v0 + 24);

      sub_1DCCD86D4(v12);

LABEL_9:

      goto LABEL_14;
    case 8u:

      sub_1DCCD86D4(*(v0 + 96));

      v5 = &unk_1ECCA3280;
      v6 = &unk_1DD0E23D0;
      v7 = v0 + 56;
      goto LABEL_13;
    case 9u:

      goto LABEL_12;
    case 0xAu:

      sub_1DCCD86D4(*(v0 + 80));
LABEL_12:

      v5 = &unk_1ECCA3280;
      v6 = &unk_1DD0E23D0;
      v7 = v0 + 40;
      goto LABEL_13;
    case 0xBu:

      sub_1DCB0E9D8(v0 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
      v5 = &dword_1ECCA3CE0;
      v6 = &unk_1DD0E4F80;
      v7 = v0 + 48;
LABEL_13:
      sub_1DCB0E9D8(v7, v5, v6);
LABEL_14:
      v8 = ActivityType.flowStateType.getter();
      goto LABEL_15;
    case 0xCu:
      v8 = *v0;
      v10 = *(v0 + 48);

LABEL_15:
      v9 = 0;
      break;
    default:
      sub_1DCB22AA4(v0);
      v8 = 0;
      v9 = 1;
      break;
  }

  return v8 | (v9 << 32);
}

uint64_t SiriKitEventPayload.description.getter()
{
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_48(v4);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DCB22AA4(v0);
      return 0x7453746E65746E69;
    case 2u:
    case 0xEu:
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      goto LABEL_9;
    case 3u:
    case 0x13u:
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      goto LABEL_25;
    case 4u:

      OUTLINED_FUNCTION_16_56();
      __swift_destroy_boxed_opaque_existential_1Tm(v0);
      OUTLINED_FUNCTION_33_26();
      return v6 | 1;
    case 5u:
      OUTLINED_FUNCTION_50_22();

      OUTLINED_FUNCTION_16_56();
      goto LABEL_16;
    case 6u:
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      OUTLINED_FUNCTION_33_26();
      return v14 | 4;
    case 7u:
      sub_1DCB22AA4(v0);
      v9 = 0x746E65746E69;
      goto LABEL_21;
    case 8u:
      OUTLINED_FUNCTION_50_22();

      sub_1DCCD86D4(*(v0 + 96));

      OUTLINED_FUNCTION_16_56();
      v11 = &unk_1ECCA3280;
      v12 = &unk_1DD0E23D0;
      v13 = v0 + 56;
      goto LABEL_23;
    case 9u:

      OUTLINED_FUNCTION_16_56();
      sub_1DCB0E9D8(v0 + 40, &unk_1ECCA3280, &unk_1DD0E23D0);
LABEL_25:
      OUTLINED_FUNCTION_33_26();
      v1 = v15 + 2;
      break;
    case 0xAu:

      sub_1DCCD86D4(*(v0 + 80));

      sub_1DCB0E9D8(v0 + 40, &unk_1ECCA3280, &unk_1DD0E23D0);
      v9 = 0x656C646E6168;
LABEL_21:
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
      break;
    case 0xBu:
      OUTLINED_FUNCTION_50_22();

      OUTLINED_FUNCTION_16_56();
      sub_1DCB0E9D8(v0 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
LABEL_16:
      v11 = &dword_1ECCA3CE0;
      v12 = &unk_1DD0E4F80;
      v13 = v0 + 48;
LABEL_23:
      sub_1DCB0E9D8(v13, v11, v12);
      break;
    case 0xCu:
      sub_1DCB22AA4(v0);
      v1 = 0x69746341776F6C66;
      break;
    case 0xDu:
      sub_1DCB22AA4(v0);
      v1 = 0x536E6F6973736573;
      break;
    case 0xFu:
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      OUTLINED_FUNCTION_33_26();
      v1 = v8 - 1;
      break;
    case 0x10u:
      sub_1DCB22AA4(v0);
      v1 = 0x7463413172656974;
      break;
    case 0x11u:
      sub_1DCB22AA4(v0);
      v1 = 0x6168436369706F74;
      break;
    case 0x12u:
      OUTLINED_FUNCTION_50_22();
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      break;
    case 0x14u:
      OUTLINED_FUNCTION_16_56();
      OUTLINED_FUNCTION_33_26();
      v1 = v10 + 21;
      break;
    default:

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60);
      sub_1DCB0E9D8(v0 + *(v5 + 112), &qword_1ECCA2278, &qword_1DD0E4830);
      sub_1DCB0E9D8(v0 + 32, &unk_1ECCA3280, &unk_1DD0E23D0);
LABEL_9:
      OUTLINED_FUNCTION_33_26();
      v1 = v7 + 3;
      break;
  }

  return v1;
}

void static Metrics.setMetricsState(_:)(uint64_t a1)
{
  if (qword_1EDE4D8C0 != -1)
  {
    OUTLINED_FUNCTION_3_75(&qword_1EDE4D8C0);
  }

  v2 = qword_1EDE57D98;
  os_unfair_lock_lock((qword_1EDE57D98 + 16));
  sub_1DCB16D50(&v2[6], &qword_1ECCA6818, &qword_1DD0F69D0);
  sub_1DCB17CA0(a1, &v2[6]);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t OUTLINED_FUNCTION_244()
{
}

uint64_t OUTLINED_FUNCTION_33_10()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_33_12()
{
}

__n128 OUTLINED_FUNCTION_33_18(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  result = *(a2 + 32);
  *(v3 + 48) = result;
  *(v3 + 64) = *(a2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_19()
{

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_33_21(void *a1)
{
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = *(v8 - 88);
  a1[5] = v6;
  a1[6] = v2;
  a1[7] = v7;
  a1[8] = v1;
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_33_22()
{

  return type metadata accessor for NLContextUpdate(0);
}

uint64_t OUTLINED_FUNCTION_33_25(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_33_30()
{

  return swift_dynamicCast();
}

void sub_1DCB29750(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_88_4()
{
}

uint64_t OUTLINED_FUNCTION_88_8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_88_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_88_11()
{

  sub_1DCB7C864(v0);
}

uint64_t OUTLINED_FUNCTION_88_12(uint64_t a1, void *a2)
{
  *a2 = v3;
  **(v2 + 96) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_88_13(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

unint64_t OUTLINED_FUNCTION_88_14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DCB10E9C(a1, a2, va);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DCB29900()
{
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_48(v3);
  OUTLINED_FUNCTION_20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 13)
  {
    v5 = v0[2];
  }

  else if (EnumCaseMultiPayload == 14)
  {
    return *v0;
  }

  else
  {
    sub_1DCB22AA4(v0);
    return 0;
  }

  return v5;
}

void SiriKitEvent.withPayload(_:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD0DAFDC();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = type metadata accessor for SiriKitEventPayload(0);
  v13 = OUTLINED_FUNCTION_20_0(v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  sub_1DCB22FCC(v3, v16 - v15);
  (*(v6 + 16))(v11, v1 + OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_timestamp, v4);
  v18 = v1[2];
  v19 = v1[3];
  v20 = v1[4];
  v21 = v1[5];
  v23 = v1[6];
  v22 = v1[7];
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v25 = v20;
  v26 = v21;
  v27 = v23;
  v28 = v22;
  swift_allocObject();
  sub_1DCB2502C(v18, v19, v20, v21, v23, v22);
  sub_1DCB23C70(v17, v11, &v24);
  OUTLINED_FUNCTION_49();
}

uint64_t ActivityType.flowStateType.getter()
{
  v1 = *v0;
  if (v1 > 0x77)
  {
    return 131;
  }

  else
  {
    return dword_1DD0E3BD4[v1];
  }
}

uint64_t Parse.parseType.getter()
{
  v1 = v0;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  sub_1DCB29E58(v1, v5 - v4);
  v7 = 0x7974706D65;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      sub_1DD0DC76C();
      OUTLINED_FUNCTION_2();
      (*(v9 + 8))(v6);
      v7 = 0xD00000000000001ELL;
      break;
    case 2u:
      v7 = 0xD000000000000010;
      sub_1DCB29EBC(v6);
      break;
    case 3u:
      sub_1DCB29EBC(v6);
      v8 = 880168014;
      goto LABEL_4;
    case 4u:
      sub_1DCB29EBC(v6);
      v7 = 0x5273757361676570;
      break;
    case 5u:
      sub_1DCB29EBC(v6);
      v7 = 0x655273656D6D6F70;
      break;
    case 6u:
      sub_1DCB29EBC(v6);
      v7 = 7304053;
      break;
    case 7u:
      sub_1DCB29EBC(v6);
      v7 = 1802398060;
      break;
    case 8u:
      sub_1DCB29EBC(v6);
      v7 = 0x726574756F526C6ELL;
      break;
    case 9u:
      sub_1DCB29EBC(v6);
      v7 = 0x746E65696C436669;
      break;
    case 0xAu:
      return v7;
    default:
      sub_1DCB29EBC(v6);
      v8 = 863390798;
LABEL_4:
      v7 = v8 | 0x65746E4900000000;
      break;
  }

  return v7;
}

uint64_t sub_1DCB29E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB29EBC(uint64_t a1)
{
  v2 = type metadata accessor for Parse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithCopy for SemanticValue(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

uint64_t storeEnumTagSinglePayload for SemanticValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t destroy for SemanticValue(void *a1)
{
}

uint64_t Input.parse.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  type metadata accessor for Input(v0);
  OUTLINED_FUNCTION_1_51();
  v2 = OUTLINED_FUNCTION_59_2(v1);
  return sub_1DCB246E8(v2, v3);
}

void Parse.nlLocation.getter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4();
  type metadata accessor for Parse(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  sub_1DCB29E58(v1, v6 - v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      sub_1DD0DC76C();
      OUTLINED_FUNCTION_2();
      (*(v8 + 8))(v7);
      goto LABEL_7;
    case 2u:
      sub_1DCB29EBC(v7);
      goto LABEL_5;
    case 3u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
      sub_1DCB29EBC(v7);
      sub_1DD0DCE7C();
    case 0xAu:
LABEL_5:
      sub_1DD0DCE6C();
    default:
      sub_1DCB29EBC(v7);
LABEL_7:
      sub_1DD0DCE8C();
  }
}

void sub_1DCB2A23C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v40 = a8;
  v37 = a7;
  v38 = a9;
  v35 = a6;
  v39 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  v34 = a1;
  v36 = a2;
  sub_1DCB0D344();
  if (v23 && (v24 = v23, v25 = sub_1DCB3291C(v23, a3, a4, a5), v24, v25))
  {
    v26 = *(v10 + 16);
    v27 = v25;
    v26();
  }

  else
  {
    v27 = 0;
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_1_41();
    swift_once();
  }

  v28 = sub_1DD0DD88C();
  v29 = __swift_project_value_buffer(v28, qword_1EDE57DD0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = v35;
  *(&v33 - 8) = v40;
  *(&v33 - 7) = v31;
  *(&v33 - 6) = v37;
  *(&v33 - 5) = v10;
  v32 = v36;
  *(&v33 - 4) = v34;
  *(&v33 - 3) = v32;
  *(&v33 - 2) = a5;
  sub_1DD0DD84C();
  sub_1DCB2A488("execution_flow_plugin_load_time", 31, 2, v22, sub_1DCB2A76C);
  (*(v17 + 8))(v22, v39);
}

void sub_1DCB2A488(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_76();
  if (v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v9 >> 16 > 0x10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = &v13;
LABEL_8:
  OUTLINED_FUNCTION_5_109();
  v11 = swift_slowAlloc();
  *v11 = 0;
  sub_1DCB2A574(v11, 2u, v5, a4, v9, "enableTelemetry=YES", a5);
  if (!v6)
  {
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v12);
  }
}

void sub_1DCB2A574(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t (*a7)(void))
{
  v11 = sub_1DD0DD87C();
  v12 = sub_1DD0DE7FC();
  v13 = sub_1DD0DD83C();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = sub_1DD0DE7EC();
    v15 = sub_1DD0DD83C();
    _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v11, v14, v15, a5, a6, v16, a2);
  }
}

void sub_1DCB2A678(void (*a1)(uint64_t (*)(), void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  a1(sub_1DCB2A850, v12);
  if (v6)
  {
    sub_1DCB0D344();
    if (v8)
    {
      v9 = v8;
      sub_1DCB52F18();
      v11 = v10;

      if (v11)
      {
        (*(a3 + 16))(v11);
      }
    }

    else
    {
      v11 = 0;
    }

    swift_willThrow();
  }
}

void sub_1DCB2A794(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  sub_1DCB0D344();
  if (v9)
  {
    v10 = v9;
    v11 = v8 ? 256 : 0;
    v12 = sub_1DCB2A85C(v9, v11 | v7, a5);

    if (v12)
    {
      (*(a2 + 16))(v12);
    }
  }
}

void *sub_1DCB2A85C(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69CEA18]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E69CEA10]) init];
    if (v13)
    {
      v14 = v13;
      [v12 setHasPluginCached_];
      [v14 setEnded_];
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v7 + 16))(v10, a3, v6);
      v15 = sub_1DCB0DEDC(v10);
      [v14 setHypothesisId_];

      [a1 setFlowPluginLoadContext_];
      v16 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57DA0);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DCAFC000, v18, v19, "[ConversationSELFHelper] Failed to create context SELF objects", v20, 2u);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  return 0;
}

_BYTE *_s11SiriKitFlow19ExecuteResponseTypeOwst_0_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DCB2ABA8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_10_18(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t _s11SiriKitFlow19ExecuteResponseTypeOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_64_5(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_64_5(v8);
}

id OUTLINED_FUNCTION_60_4()
{

  return [v0 (v1 + 3448)];
}

void OUTLINED_FUNCTION_60_5()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_60_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_60_9()
{
  v3 = *(v1 - 160);

  return sub_1DCB21A14(v3, v0);
}

unint64_t OUTLINED_FUNCTION_60_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DCB10E9C(v5, v4, va);
}

uint64_t OUTLINED_FUNCTION_60_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD0DEDBC();
}

uint64_t OUTLINED_FUNCTION_60_21(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_60_22()
{
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  *(v0 + v1[9]) = 256;
  *(v0 + v1[11]) = 0;

  return type metadata accessor for NLContextUpdate(0);
}

uint64_t type metadata accessor for NLv3ServerParse(uint64_t a1)
{
  result = qword_1EDE4E860;
  if (!qword_1EDE4E860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB2AE9C(char a1)
{
  if (a1)
  {
    return 0x746169636F737361;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

void Parse.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v118 = v2;
  v116 = v1;
  v5 = v4;
  v125 = *MEMORY[0x1E69E9840];
  v112 = type metadata accessor for NLv3ServerParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_11_2();
  v113 = v8;
  v9 = OUTLINED_FUNCTION_12();
  v106[3] = type metadata accessor for IFClientActionParse(v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_11_2();
  v111 = v12;
  v13 = OUTLINED_FUNCTION_12();
  v106[2] = type metadata accessor for NLRouterParse(v13);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_11_2();
  v110 = v16;
  v17 = OUTLINED_FUNCTION_12();
  v106[1] = type metadata accessor for LinkParse(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_11_2();
  v109 = v20;
  v21 = OUTLINED_FUNCTION_12();
  v106[0] = type metadata accessor for USOParse(v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_11_2();
  v107 = v24;
  OUTLINED_FUNCTION_12();
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_9();
  v114 = v26;
  v115 = v25;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v108 = v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = v106 - v31;
  v33 = type metadata accessor for Parse.PegasusResult(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_75_8();
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7C50, &unk_1DD0FAFB0);
  OUTLINED_FUNCTION_9();
  v117 = v38;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v106 - v41;
  OUTLINED_FUNCTION_57_1(v5, v5[3]);
  sub_1DCB34864();
  v119 = v42;
  sub_1DD0DF24C();
  sub_1DCB247FC(v116, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v0 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));
      v75 = v114;
      v74 = v115;
      v76 = v108;
      (*(v114 + 32))(v108, v3, v115);
      v77 = v113;
      (*(v75 + 16))(v113, v76, v74);
      *(v77 + *(v112 + 20)) = v0;
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_36_25(0xD000000000000014, 0x80000001DD11F4E0, &v122);
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_29_24();
        sub_1DCE2FDA8(v78, v79, &unk_1DD0FB75C);
        OUTLINED_FUNCTION_18_37();
        sub_1DD0DEFFC();
      }

      OUTLINED_FUNCTION_23_21();
      sub_1DCE2D030(v77, v80);
      (*(v75 + 8))(v76, v74);
      goto LABEL_32;
    case 2u:
      v62 = *v3;
      v61 = v3[1];
      v63 = v3[2];
      LOBYTE(v122) = 0;
      v64 = v120;
      v65 = v118;
      sub_1DD0DEFBC();
      if (!v65)
      {
        v122 = v62;
        v123 = v61;
        v124 = v63;
        v121 = 1;
        sub_1DCB2BB9C();
        OUTLINED_FUNCTION_70_9();
        sub_1DD0DEFFC();
      }

      v66 = OUTLINED_FUNCTION_6_56();
      v67(v66, v64);

      goto LABEL_35;
    case 3u:
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_42_24(0x34766C6Eu);
      v68 = v120;
      v69 = v118;
      sub_1DD0DEFBC();
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_6_56();
        v71(v70, v68);
        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      v90 = objc_opt_self();
      v122 = 0;
      v91 = OUTLINED_FUNCTION_78_11(v90, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
      v92 = v122;
      if (v91)
      {
        v93 = sub_1DD0DAF2C();
        v95 = v94;

        v122 = v93;
        v123 = v95;
        v121 = v33;
        sub_1DCB51540();
        OUTLINED_FUNCTION_70_9();
        sub_1DD0DEFFC();
        v96 = OUTLINED_FUNCTION_6_56();
        v97(v96, v68);
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

      v104 = v92;
      sub_1DD0DAE0C();

      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_43;
    case 4u:
      OUTLINED_FUNCTION_5_74();
      sub_1DCB541A0(v3, v0);
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_68_13();
      OUTLINED_FUNCTION_67_12();
      v50 = v120;
      v51 = v118;
      sub_1DD0DEFBC();
      if (!v51)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_21_27();
        sub_1DCE2FDA8(v52, v53, &protocol conformance descriptor for Parse.PegasusResult);
        OUTLINED_FUNCTION_18_37();
        sub_1DD0DEFFC();
      }

      sub_1DCE2D030(v0, type metadata accessor for Parse.PegasusResult);
      v49 = OUTLINED_FUNCTION_6_56();
      v54 = v50;
      goto LABEL_34;
    case 5u:
      v81 = *v3;
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_72_11();
      v68 = v120;
      v82 = v118;
      sub_1DD0DEFBC();
      if (v82)
      {
        v83 = OUTLINED_FUNCTION_6_56();
        v84(v83, v68);
      }

      else
      {
        v98 = objc_opt_self();
        v122 = 0;
        v99 = OUTLINED_FUNCTION_78_11(v98, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
        v100 = v122;
        if (v99)
        {
          v93 = sub_1DD0DAF2C();
          v95 = v101;

          v122 = v93;
          v123 = v95;
          v121 = v33;
          sub_1DCB51540();
          OUTLINED_FUNCTION_70_9();
          sub_1DD0DEFFC();
          v102 = OUTLINED_FUNCTION_6_56();
          v103(v102, v68);

LABEL_40:
          sub_1DCB21A14(v93, v95);
        }

        else
        {
          v105 = v100;
          sub_1DD0DAE0C();

          swift_willThrow();
LABEL_43:
          v49 = OUTLINED_FUNCTION_6_56();
          v54 = v68;
LABEL_34:
          v48(v49, v54);
        }
      }

LABEL_35:
      OUTLINED_FUNCTION_19_19();
      return;
    case 6u:
      OUTLINED_FUNCTION_28_25();
      v55 = v107;
      sub_1DCB541A0(v3, v107);
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_36_25(7304053, 0xE300000000000000, &v122);
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_26_25();
        sub_1DCE2FDA8(v85, v86, &protocol conformance descriptor for USOParse);
        OUTLINED_FUNCTION_12_49();
        sub_1DD0DEFFC();
      }

      v60 = type metadata accessor for USOParse;
      goto LABEL_31;
    case 7u:
      OUTLINED_FUNCTION_32_21();
      v55 = v109;
      sub_1DCB541A0(v3, v109);
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_36_25(1802398060, 0xE400000000000000, &v122);
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_30_28();
        sub_1DCE2FDA8(v72, v73, &protocol conformance descriptor for LinkParse);
        OUTLINED_FUNCTION_12_49();
        sub_1DD0DEFFC();
      }

      v60 = type metadata accessor for LinkParse;
      goto LABEL_31;
    case 8u:
      OUTLINED_FUNCTION_25_20();
      v55 = v110;
      sub_1DCB541A0(v3, v110);
      LOBYTE(v122) = 0;
      v87 = OUTLINED_FUNCTION_77_8();
      OUTLINED_FUNCTION_36_25(v87, 0xE800000000000000, &v122);
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_24_26();
        sub_1DCE2FDA8(v88, v89, &protocol conformance descriptor for NLRouterParse);
        OUTLINED_FUNCTION_12_49();
        sub_1DD0DEFFC();
      }

      v60 = type metadata accessor for NLRouterParse;
      goto LABEL_31;
    case 9u:
      OUTLINED_FUNCTION_20_23();
      v55 = v111;
      sub_1DCB541A0(v3, v111);
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_65_10();
      OUTLINED_FUNCTION_64_11();
      OUTLINED_FUNCTION_36_25(v56, v57, &v122);
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_19_34();
        sub_1DCE2FDA8(v58, v59, &protocol conformance descriptor for IFClientActionParse);
        OUTLINED_FUNCTION_12_49();
        sub_1DD0DEFFC();
      }

      v60 = type metadata accessor for IFClientActionParse;
LABEL_31:
      sub_1DCE2D030(v55, v60);
      goto LABEL_32;
    case 0xAu:
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_36_25(0x7974706D65, 0xE500000000000000, &v122);
LABEL_32:
      v49 = OUTLINED_FUNCTION_6_56();
      goto LABEL_33;
    default:
      v44 = v114;
      v43 = v115;
      (*(v114 + 32))(v32, v3, v115);
      LOBYTE(v122) = 0;
      OUTLINED_FUNCTION_42_24(0x33766C6Eu);
      v45 = v119;
      v0 = v120;
      v46 = v118;
      sub_1DD0DEFBC();
      if (!v46)
      {
        v122 = sub_1DD0DC73C();
        v123 = v47;
        v121 = 1;
        sub_1DCB51540();
        OUTLINED_FUNCTION_70_9();
        sub_1DD0DEFFC();
        sub_1DCB21A14(v122, v123);
      }

      (*(v44 + 8))(v32, v43);
      v48 = *(v117 + 8);
      v49 = v45;
LABEL_33:
      v54 = v0;
      goto LABEL_34;
  }
}