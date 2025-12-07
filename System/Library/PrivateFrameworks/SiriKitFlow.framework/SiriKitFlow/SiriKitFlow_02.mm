__n128 *OUTLINED_FUNCTION_66_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

void OUTLINED_FUNCTION_66_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 8u);
}

uint64_t OUTLINED_FUNCTION_66_3(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_66_4(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return memcpy((a13 + v13), (a12 + v13), a3);
}

uint64_t OUTLINED_FUNCTION_66_5()
{
}

unint64_t OUTLINED_FUNCTION_66_7(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DCB10E9C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_66_12()
{

  return sub_1DCB0E9D8(v0 + 56, v1, v2);
}

uint64_t OUTLINED_FUNCTION_66_13(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2080;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66_14(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66_15(uint64_t result)
{
  v2 = *(v1 + 32);
  *(result + 16) = *(v1 + 16);
  *(result + 24) = v2;
  return result;
}

unint64_t sub_1DCB2BB9C()
{
  result = qword_1EDE46658[0];
  if (!qword_1EDE46658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE46658);
  }

  return result;
}

_BYTE *sub_1DCB2BBF0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x1DCB2BCBCLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCB2BCF4(char a1)
{
  if (a1)
  {
    return 0x6174614472657375;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_1DCB2BD38(char a1)
{
  result = 0x6573726170;
  switch(a1)
  {
    case 1:
      result = 0x74616E7265746C61;
      break;
    case 2:
      result = 0x696669746E656469;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Input.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4990, &qword_1DD0EDE10);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_57_1(a1, a1[3]);
  sub_1DCB34278();
  sub_1DD0DF24C();
  v11 = type metadata accessor for Input(0);
  v12 = *(v11 + 20);
  v30 = 0;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_9_33();
  v15 = sub_1DCB2C054(v13, 255, v14, &protocol conformance descriptor for Parse);
  OUTLINED_FUNCTION_48_10(v4 + v12, &v30, v16, v17, v15);
  if (!v2)
  {
    v29 = *(v4 + *(v11 + 24));
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4998, &qword_1DD0EDE18);
    v18 = sub_1DCB2C1D8(&qword_1EDE462A8, &qword_1EDE46640, &protocol conformance descriptor for Parse, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_48_10(&v29, &v28, v19, v20, v18);
    v27 = 2;
    sub_1DD0DB04C();
    OUTLINED_FUNCTION_32_13();
    v23 = sub_1DCB2C054(v21, 255, v22, MEMORY[0x1E69695B0]);
    OUTLINED_FUNCTION_48_10(v4, &v27, v24, v25, v23);
    sub_1DCB342CC();
    sub_1DD0DEFFC();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1DCB2C054(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void static SnippetManager.sharedInstance.getter()
{
  if (qword_1EDE49808 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void *sub_1DCB2C100(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DCB2C1D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4998, &qword_1DD0EDE18);
    OUTLINED_FUNCTION_9_33();
    sub_1DCB2C054(a2, 255, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_56_10()
{
}

void OUTLINED_FUNCTION_56_11()
{

  sub_1DD0DCF8C();
}

unint64_t OUTLINED_FUNCTION_56_14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DCB10E9C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_56_18()
{

  return sub_1DCB24858();
}

double OUTLINED_FUNCTION_56_20()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  return result;
}

double OUTLINED_FUNCTION_56_26()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t type metadata accessor for IdentifiedUser(uint64_t a1)
{
  result = qword_1EDE4F910;
  if (!qword_1EDE4F910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB2C480()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_8(v1);

  return v4(v3);
}

uint64_t sub_1DCB2C520(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DCB21A14(result, a2);
  }

  return result;
}

void sub_1DCB2C534(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1DD0DDF8C();

  [a3 *a4];
}

unint64_t sub_1DCB2C5A0()
{
  result = qword_1EDE4F200;
  if (!qword_1EDE4F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F200);
  }

  return result;
}

uint64_t destroy for NLContextUpdate(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 256))
  {
  }

  v4 = *(a2 + 128);
  v5 = sub_1DD0DD72C();
  if (!__swift_getEnumTagSinglePayload(a1 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }
}

double OUTLINED_FUNCTION_30_5@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t OUTLINED_FUNCTION_30_14()
{

  return sub_1DCB10E9C(v0, v1, (v2 - 96));
}

void OUTLINED_FUNCTION_30_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_1DD0DCF8C();
}

__n128 OUTLINED_FUNCTION_30_19@<Q0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  *(v1 + a1) = result;
  return result;
}

id OUTLINED_FUNCTION_30_21(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return v12;
}

uint64_t OUTLINED_FUNCTION_30_23()
{

  return sub_1DCB285E0(v0, type metadata accessor for Parse);
}

BOOL OUTLINED_FUNCTION_30_26()
{
  *(v0 + 152) = v2;

  return os_log_type_enabled(v1, v2);
}

void *OUTLINED_FUNCTION_30_27(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB597F0(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_30_29()
{
  *v3 = v2;
  v3[1] = v1;
  v6 = v3 + *(v4 + 20);

  return sub_1DCC333DC(v0, v6);
}

uint64_t OUTLINED_FUNCTION_30_32(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_33(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v3 + 16) = v2;
  return *(v3 + 24);
}

void OUTLINED_FUNCTION_30_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_30_38(uint64_t a1)
{

  return [v1 (v2 + 259)];
}

void OUTLINED_FUNCTION_30_40()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_30_46@<X0>(uint64_t a1@<X8>, uint64_t a2@<X2>, uint64_t a3@<X3>)
{
  v4 = *(a1 + 80);

  return type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter(0, v4, a2, a3);
}

void OUTLINED_FUNCTION_30_47()
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

uint64_t OUTLINED_FUNCTION_30_48(uint64_t a1)
{
}

double OUTLINED_FUNCTION_126_0()
{
  *(v0 + 232) = 0;
  result = 0.0;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  return result;
}

void OUTLINED_FUNCTION_126_2(uint64_t a1)
{

  sub_1DD0DCA7C();
}

void sub_1DCB2CC34(uint64_t a1, unint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  if (*(v2 + 216))
  {
    v6 = *(v2 + 216);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v6 + 16);

  if (v7 || (*(v2 + 224) ? (v8 = *(v2 + 224)) : (v8 = v5), v9 = *(v8 + 16), , , v9))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);

    oslog = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1DCB10E9C(a1, a2, &v15);
      _os_log_impl(&dword_1DCAFC000, oslog, v11, "%s called on an NLContextUpdate containing SystemDialogActs or Reference Resolution entities. These will be lost in the conversion, this function should not be used.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A8390](v13, -1, -1);
      MEMORY[0x1E12A8390](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t Input.description.getter()
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0x6170287475706E49, 0xED0000203A657372);
  OUTLINED_FUNCTION_92_4();
  type metadata accessor for Parse(0);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0x6E7265746C61202CLL, 0xEF5B736576697461);
  v0 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v0);

  MEMORY[0x1E12A6780](2112093, 0xE300000000000000);
  v1 = OUTLINED_FUNCTION_20();
  v2 = MEMORY[0x1E12A6960](v1);
  MEMORY[0x1E12A6780](v2);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t NLContextUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 2;
  v2 = type metadata accessor for NLContextUpdate(0);
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  v3 = v2[32];
  v4 = sub_1DD0DD72C();
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  *(a1 + v2[33]) = 2;
  *(a1 + v2[34]) = 2;
  v6 = (a1 + v2[35]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t AppInformationResolver.__deallocating_deinit()
{
  AppInformationResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB2D10C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 displayAppName];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DD0DDFBC();

  return v4;
}

id sub_1DCB2D178()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result hasSiriIntegration];
  }

  return result;
}

void *DefaultFlowActivity.init(activityName:activityType:activityStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = v6;
  OUTLINED_FUNCTION_1_13();
  v11[6] = 0xD000000000000013;
  OUTLINED_FUNCTION_15_32();
  OUTLINED_FUNCTION_14_33();
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v14;
  v11[5] = v15;
  v11[7] = 0x80000001DD0EFB70;
  v11[8] = 0;
  v11[9] = 0;
  v11[10] = v14;
  v11[11] = v15;
  v11[13] = 0xBFF0000000000000;
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v11[6] = v10;
  v11[7] = v9;
  v11[14] = v8;
  v11[15] = v7;
  if (a6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "activityStartTime is nil", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    v11[12] = 0xBFF0000000000000;
  }

  else
  {
    v11[12] = a5;
  }

  return v11;
}

uint64_t sub_1DCB2D314(double a1)
{
  OUTLINED_FUNCTION_47_2();
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1DCB2D3C8(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D70, &qword_1DD0EFBA8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCB2D700();
  sub_1DD0DF24C();
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v6 = v2[2];

  OUTLINED_FUNCTION_1_53();
  sub_1DD0DEFBC();
  if (v6 || (, OUTLINED_FUNCTION_2_50(), swift_beginAccess(), v7 = v2[4], , OUTLINED_FUNCTION_1_53(), sub_1DD0DEFBC(), v7) || (, OUTLINED_FUNCTION_2_50(), swift_beginAccess(), v8 = v2[6], , OUTLINED_FUNCTION_1_53(), sub_1DD0DEFBC(), v8) || (, OUTLINED_FUNCTION_2_50(), swift_beginAccess(), v9 = v2[8], , OUTLINED_FUNCTION_1_53(), sub_1DD0DEF8C(), v9) || (, OUTLINED_FUNCTION_2_50(), swift_beginAccess(), v10 = v2[10], , OUTLINED_FUNCTION_1_53(), sub_1DD0DEFBC(), v10))
  {
    v11 = OUTLINED_FUNCTION_8_39();
    v12(v11);
  }

  else
  {

    OUTLINED_FUNCTION_2_50();
    swift_beginAccess();
    sub_1DD0DEFDC();
    OUTLINED_FUNCTION_2_50();
    swift_beginAccess();
    sub_1DD0DEFDC();
    OUTLINED_FUNCTION_2_50();
    swift_beginAccess();

    sub_1DD0DEFBC();
    v14 = OUTLINED_FUNCTION_8_39();
    v15(v14);
  }
}

unint64_t sub_1DCB2D700()
{
  result = qword_1EDE4F1C0[0];
  if (!qword_1EDE4F1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE4F1C0);
  }

  return result;
}

uint64_t sub_1DCB2D75C(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6D726F6674616C70;
      break;
    case 2:
    case 7:
      result = 0x7974697669746361;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    case 4:
      result = 0x6E696769726FLL;
      break;
    case 5:
      result = 0x6D617473656D6974;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DefaultFlowActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x1DCB2D920);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for USOParse(uint64_t a1)
{
  result = qword_1EDE4D890;
  if (!qword_1EDE4D890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriKitReliabilityCodes.rawValue.getter()
{
  result = 0x7261507974706D65;
  switch(*v0)
  {
    case 1:
    case 3:
    case 0x29:
    case 0x35:
    case 0x3B:
    case 0x3E:
    case 0x4A:
    case 0x4D:
      OUTLINED_FUNCTION_0_122();
      return v14 | 8;
    case 2:
    case 0x76:
      OUTLINED_FUNCTION_0_122();
      return v8 + 14;
    case 4:
    case 0x53:
    case 0x74:
    case 0x75:
      OUTLINED_FUNCTION_0_122();
      return v10 + 5;
    case 5:
    case 0xE:
    case 0xF:
    case 0x16:
    case 0x5C:
      OUTLINED_FUNCTION_0_122();
      return v6 - 1;
    case 6:
      return 0xD000000000000014;
    case 7:
    case 0xA:
    case 0x1A:
    case 0x2D:
    case 0x43:
    case 0x49:
    case 0x50:
    case 0x69:
      OUTLINED_FUNCTION_0_122();
      return v13 - 2;
    case 8:
      return 0xD000000000000014;
    case 9:
      return result;
    case 0xB:
    case 0x1E:
    case 0x20:
    case 0x39:
    case 0x5B:
    case 0x6B:
    case 0x6F:
    case 0x70:
    case 0x71:
      OUTLINED_FUNCTION_0_122();
      return v11 | 1;
    case 0xC:
      return 0xD000000000000014;
    case 0xD:
    case 0x1B:
    case 0x36:
    case 0x3C:
    case 0x59:
      OUTLINED_FUNCTION_0_122();
      return v21 + 4;
    case 0x10:
      return 0xD000000000000014;
    case 0x11:
      return 0xD000000000000014;
    case 0x12:
    case 0x61:
      v4 = 11;
      goto LABEL_65;
    case 0x13:
      return 0x6F43746E65746E69;
    case 0x14:
    case 0x24:
    case 0x26:
    case 0x4E:
    case 0x55:
      OUTLINED_FUNCTION_0_122();
      return v18 - 3;
    case 0x15:
    case 0x17:
    case 0x46:
    case 0x56:
    case 0x64:
    case 0x65:
    case 0x73:
    case 0x78:
      OUTLINED_FUNCTION_0_122();
      return v20 | 3;
    case 0x18:
      return 0x73696C6B63616C62;
    case 0x19:
      return 0x7473694C796E6564;
    case 0x1C:
    case 0x4B:
    case 0x66:
    case 0x79:
      OUTLINED_FUNCTION_0_122();
      return v9 + 13;
    case 0x1D:
      return 0x6C616D726F6ELL;
    case 0x21:
      return 0x5274726174736572;
    case 0x22:
      return 0x69536574756D6E75;
    case 0x23:
      return 0x61507463656A6572;
    case 0x25:
      return 0x746E49726566666FLL;
    case 0x27:
      return 0x74756F68636E7570;
    case 0x28:
      return 0xD000000000000014;
    case 0x2A:
      return 0xD000000000000014;
    case 0x2C:
      return 0x45636972656E6567;
    case 0x2E:
    case 0x32:
    case 0x33:
      OUTLINED_FUNCTION_0_122();
      return v16 + 6;
    case 0x2F:
      return 0x73736563637573;
    case 0x30:
      return 0x616552736D657469;
    case 0x31:
      return 0x6261646165526F6ELL;
    case 0x34:
      v4 = 10;
      goto LABEL_65;
    case 0x37:
    case 0x41:
      OUTLINED_FUNCTION_0_122();
      return v12 + 16;
    case 0x38:
    case 0x42:
    case 0x62:
    case 0x67:
      OUTLINED_FUNCTION_0_122();
      return v17 + 12;
    case 0x3A:
      OUTLINED_FUNCTION_0_122();
      return v3 + 15;
    case 0x3D:
      OUTLINED_FUNCTION_0_122();
      return v5 + 19;
    case 0x3F:
      return 0x655364726143656DLL;
    case 0x40:
      return 0x6F4E64726143656DLL;
    case 0x44:
      return 0xD000000000000014;
    case 0x45:
      return 0xD000000000000014;
    case 0x47:
      return 0x52736C65636E6163;
    case 0x48:
      return 0xD000000000000014;
    case 0x4C:
      return 0x6572676F72506E69;
    case 0x4F:
      return 0x65756E69746E6F63;
    case 0x51:
      return 0xD000000000000014;
    case 0x52:
      return 0x6E697265646E6572;
    case 0x54:
      OUTLINED_FUNCTION_0_122();
      return v2 - 4;
    case 0x57:
      return 0xD000000000000014;
    case 0x5A:
      return 0x614674706D6F7270;
    case 0x5D:
      return 0x7073655272657375;
    case 0x5E:
    case 0x60:
      v4 = 9;
LABEL_65:
      result = v4 | 0xD000000000000014;
      break;
    case 0x5F:
      OUTLINED_FUNCTION_0_122();
      result = v19 + 7;
      break;
    case 0x63:
      result = 0xD000000000000014;
      break;
    case 0x68:
      OUTLINED_FUNCTION_0_122();
      result = v15 + 24;
      break;
    case 0x6A:
      result = 0xD000000000000014;
      break;
    case 0x6C:
      result = 0x4D7463656A627573;
      break;
    case 0x6D:
      result = 0x69646F4D79646F62;
      break;
    case 0x6E:
    case 0x72:
      result = 0x746174536C6C6163;
      break;
    case 0x7A:
      result = 0xD000000000000014;
      break;
    case 0x7B:
      result = 0x6576726553706D61;
      break;
    case 0x7C:
      result = 0x656B636F4C707061;
      break;
    default:
      OUTLINED_FUNCTION_0_122();
      result = v7 | 2;
      break;
  }

  return result;
}

uint64_t sub_1DCB2E64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_80(v4, v8, v7);
  }

  return v10 & 1;
}

char *NLContextUpdate.toAceContextUpdate()()
{
  sub_1DCB2CC34(0xD000000000000014, 0x80000001DD11E850);
  v1 = 0;
  return NLContextUpdate.doConvertToAceContextUpdate(options:)(&v1);
}

char *NLContextUpdate.doConvertToAceContextUpdate(options:)(void *a1)
{
  v2 = v1;
  __dst[12] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v247 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v247 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v247 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  OUTLINED_FUNCTION_33_2();
  v253 = v18;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_33_2();
  v258 = v21;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_33_2();
  v255 = v24;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_33_2();
  v259 = v27;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_33_2();
  v256 = v30;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_33_2();
  v257 = v33;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_33_2();
  v254 = v36;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_33_2();
  v251 = v39;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_33_2();
  v249 = v42;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_33_2();
  v252 = v45;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v46, v47);
  v250 = &v247 - v48;
  v49 = sub_1DD0DE01C();
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  OUTLINED_FUNCTION_16();
  v266 = v52 - v51;
  if ((*v2 | *a1))
  {
    v53 = 0x1E69C7750;
  }

  else
  {
    v53 = 0x1E69C7748;
  }

  v54 = [objc_allocWithZone(*v53) init];
  __dst[0] = sub_1DD0DDFBC();
  __dst[1] = v55;
  sub_1DCB1C4D8();
  v56 = sub_1DD0DEA5C();

  if (!v56[2])
  {
    v142 = v12;

    OUTLINED_FUNCTION_24_24();
    sub_1DD0DEC1C();

    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_38_20();
    __dst[0] = v144 - 1;
    __dst[1] = v143;
    v145 = sub_1DD0DDFBC();
    MEMORY[0x1E12A6780](v145);

    v146 = qword_1EDE4F900;

    if (v146 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v147 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v147, qword_1EDE57E00);
    OUTLINED_FUNCTION_8_55();
    v149 = v148;
    (*(v148 + 16))(v142);
    __swift_storeEnumTagSinglePayload(v142, 0, 1, v147);
    sub_1DCB09910(v142, v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_17_3(v8);
    if (v129)
    {
      sub_1DCB0E9D8(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v197 = sub_1DD0DD8EC();
      v198 = sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_30_26())
      {
        OUTLINED_FUNCTION_83();
        v265 = OUTLINED_FUNCTION_19_30();
        v269[0] = v265;
        *v198 = 136315650;
        v199 = OUTLINED_FUNCTION_28_23("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Extensions/AceExtensions/NLContextUpdate+Ace.swift");
        v201 = OUTLINED_FUNCTION_42_22(v199, v200);

        *(v198 + 4) = v201;
        *(v198 + 12) = 2048;
        *(v198 + 24) = OUTLINED_FUNCTION_2_69(57);
        OUTLINED_FUNCTION_9_53(&dword_1DCAFC000, v202, v203, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_29_22(v204, v205, MEMORY[0x1E69E7CA0] + 8);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      (*(v149 + 8))(v8, v147);
    }

    v206 = OUTLINED_FUNCTION_131();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v206, v207);
  }

  v57 = v56[5];
  v58 = v56[7];

  __dst[0] = 0x3A4E4F534ALL;
  __dst[1] = 0xE500000000000000;
  v59 = OUTLINED_FUNCTION_131();
  v261 = v58;
  v60 = MEMORY[0x1E12A66E0](v59);
  MEMORY[0x1E12A6780](v60);

  v262 = v54;
  sub_1DCB2C534(__dst[0], __dst[1], v54, &selRef_setContextVersion_);
  v61 = [objc_allocWithZone(MEMORY[0x1E69C7740]) init];
  v62 = v61;
  v63 = *(v2 + 1);
  if (v63)
  {
    sub_1DCB10E5C(0, &qword_1EDE461F0, 0x1E69C77B8);
    OUTLINED_FUNCTION_75_0();
    v61 = sub_1DD0DE2DC();
    v63 = v61;
  }

  OUTLINED_FUNCTION_14_43(v61, sel_setApplicationContextObjects_);

  v65 = *(v2 + 2);
  if (v65)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7488, &unk_1DD0F8960);
    OUTLINED_FUNCTION_75_0();
    v64 = sub_1DD0DE2DC();
    v65 = v64;
  }

  OUTLINED_FUNCTION_14_43(v64, sel_setConversationStateAttachments_);

  v66 = *(v2 + 3);
  if (v66)
  {
    v66 = sub_1DD0DE2DC();
    v67 = v66;
  }

  else
  {
    v67 = 0;
  }

  OUTLINED_FUNCTION_14_43(v66, sel_setDictationPromptAbortValues_);

  if (*(v2 + 5))
  {
    v68 = sub_1DD0DDF8C();
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  OUTLINED_FUNCTION_14_43(v68, sel_setDictationPromptTargetDomain_);

  v70 = *(v2 + 6);
  if (v70)
  {
    v70 = sub_1DD0DE2DC();
    v71 = v70;
  }

  else
  {
    v71 = 0;
  }

  OUTLINED_FUNCTION_14_43(v70, sel_setDictationPromptTargetNodes_);

  v72 = *(v2 + 7);
  if (v72)
  {
    v72 = sub_1DD0DE2DC();
    v73 = v72;
  }

  else
  {
    v73 = 0;
  }

  OUTLINED_FUNCTION_14_43(v72, sel_setDisambiguationPromptAbortValues_);

  if ((v2[72] & 1) == 0)
  {
    v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    OUTLINED_FUNCTION_14_43(v74, sel_setDisambiguationPromptAmbiguityId_);
  }

  v75 = *(v2 + 10);
  if (v75)
  {
    v75 = sub_1DD0DE2DC();
    v76 = v75;
  }

  else
  {
    v76 = 0;
  }

  OUTLINED_FUNCTION_14_43(v75, sel_setDisambiguationPromptResponseTargets_);

  if (*(v2 + 12))
  {
    v77 = sub_1DD0DDF8C();
    v78 = v77;
  }

  else
  {
    v78 = 0;
  }

  OUTLINED_FUNCTION_14_43(v77, sel_setDisambiguationPromptTargetDomain_);

  v80 = *(v2 + 13);
  if (v80)
  {
    v260 = v2;
    sub_1DD0DAAFC();
    swift_allocObject();
    v265 = sub_1DD0DAAEC();
    v57 = *(v80 + 16);
    v81 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      v247 = v62;
      v248 = v16;
      v267 = MEMORY[0x1E69E7CC0];
      sub_1DCB38954();
      v82 = 0;
      v81 = v267;
      v83 = (v80 + 32);
      v263 = v57;
      v264 = v80;
      do
      {
        if (v82 >= *(v80 + 16))
        {
          __break(1u);
        }

        memcpy(__dst, v83, 0x60uLL);
        memcpy(v269, __dst, sizeof(v269));
        sub_1DCC089D8(__dst, &v268);
        sub_1DCE06CC8();
        v84 = sub_1DD0DAADC();
        v86 = v85;
        v269[0] = v84;
        v269[1] = v85;
        sub_1DD0DE00C();
        sub_1DCB2C5A0();
        v87 = sub_1DD0DDFEC();
        if (!v88)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v120 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v120, qword_1EDE57E00);
          OUTLINED_FUNCTION_22_27();
          v122 = v121;
          v123 = v249;
          (*(v121 + 16))(v249);
          v124 = OUTLINED_FUNCTION_61_0();
          __swift_storeEnumTagSinglePayload(v124, v125, v126, v120);
          v127 = v123;
          v128 = v251;
          sub_1DCB09910(v127, v251, &unk_1ECCA7470, &qword_1DD0E16E0);
          OUTLINED_FUNCTION_11_44(v128);
          if (v129)
          {
            sub_1DCB0E9D8(v251, &unk_1ECCA7470, &qword_1DD0E16E0);
          }

          else
          {
            v130 = sub_1DD0DD8EC();
            v131 = sub_1DD0DE6EC();
            if (OUTLINED_FUNCTION_75(v131))
            {
              OUTLINED_FUNCTION_83();
              v269[0] = OUTLINED_FUNCTION_54();
              *v86 = 136315650;
              v132 = OUTLINED_FUNCTION_28_23("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Extensions/AceExtensions/NLContextUpdate+Ace.swift");
              v134 = sub_1DCB10E9C(v132, v133, v269);

              *(v86 + 4) = v134;
              *(v86 + 12) = 2048;
              OUTLINED_FUNCTION_5_48(84);
              v135 = OUTLINED_FUNCTION_40_20();
              *(v86 + 24) = sub_1DCB10E9C(v135, v136, v137);
              OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v138, v139, "FatalError at %s:%lu - %s");
              swift_arrayDestroy();
              OUTLINED_FUNCTION_37();
              OUTLINED_FUNCTION_80();
            }

            (*(v122 + 8))(v251, v120);
          }

          v140 = OUTLINED_FUNCTION_40_20();
          static SiriKitLifecycle._logCrashToEventBus(_:)(v140, v141);
        }

        v89 = v87;
        v90 = v88;
        sub_1DCB21A14(v84, v86);
        sub_1DCC08A34(__dst);
        v267 = v81;
        v91 = *(v81 + 16);
        if (v91 >= *(v81 + 24) >> 1)
        {
          sub_1DCB38954();
          v81 = v267;
        }

        ++v82;
        *(v81 + 16) = v91 + 1;
        v92 = v81 + 16 * v91;
        *(v92 + 32) = v89;
        *(v92 + 40) = v90;
        v83 += 96;
        v57 = v263;
        v80 = v264;
      }

      while (v263 != v82);
      v62 = v247;
      v16 = v248;
    }

    sub_1DCE06D1C(v81, v62);

    v2 = v260;
  }

  if (*(v2 + 15))
  {
    v79 = sub_1DD0DDF8C();
    v93 = v79;
  }

  else
  {
    v93 = 0;
  }

  OUTLINED_FUNCTION_14_43(v79, sel_setNlInput_);

  if (v2[200] != 2)
  {
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v94 = sub_1DD0DE8CC();
    OUTLINED_FUNCTION_14_43(v94, sel_setObjectDisambiguation_);
  }

  [v62 setSiriKitMetrics_];
  [v62 setShouldResetFlowTaskState_];
  [v62 setSystemDialogActOutput_];
  v95 = *(v2 + 21);
  if (v95)
  {
    v95 = sub_1DD0DE2DC();
    v96 = v95;
  }

  else
  {
    v96 = 0;
  }

  OUTLINED_FUNCTION_14_43(v95, sel_setWeightedPromptResponseOptions_);

  v97 = *(v2 + 20);
  if (v97)
  {
    v97 = sub_1DD0DE2DC();
    v98 = v97;
  }

  else
  {
    v98 = 0;
  }

  OUTLINED_FUNCTION_14_43(v97, sel_setWeightedPromptResponseTargets_);

  if (v2[176] != 2)
  {
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v100 = sub_1DD0DE8CC();
    OUTLINED_FUNCTION_14_43(v100, sel_setWeightedPromptStrict_);
  }

  if (*(v2 + 24))
  {
    v99 = sub_1DD0DDF8C();
    v101 = v99;
  }

  else
  {
    v101 = 0;
  }

  OUTLINED_FUNCTION_14_43(v99, sel_setWeightedPromptTargetDomain_);

  v102 = [v62 dictionary];
  if (!v102)
  {
    v150 = v16;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v151 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v151, qword_1EDE57E00);
    OUTLINED_FUNCTION_22_27();
    v153 = v152;
    v154 = v253;
    (*(v152 + 16))(v253);
    v155 = OUTLINED_FUNCTION_61_0();
    __swift_storeEnumTagSinglePayload(v155, v156, v157, v151);
    sub_1DCB09910(v154, v16, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_11_44(v16);
    if (v129)
    {
      sub_1DCB0E9D8(v16, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v208 = sub_1DD0DD8EC();
      v209 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v209))
      {
        OUTLINED_FUNCTION_83();
        v266 = OUTLINED_FUNCTION_54();
        __dst[0] = v266;
        *v57 = 136315650;
        v210 = OUTLINED_FUNCTION_28_23("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Extensions/AceExtensions/NLContextUpdate+Ace.swift");
        v212 = sub_1DCB10E9C(v210, v211, __dst);

        *(v57 + 4) = v212;
        *(v57 + 12) = 2048;
        OUTLINED_FUNCTION_5_48(106);
        *(v57 + 24) = sub_1DCB10E9C(0xD00000000000005BLL, 0x80000001DD11E650, __dst);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v213, v214, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v153 + 8))(v150, v151);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000005BLL, 0x80000001DD11E650);
  }

  v103 = v102;
  v269[3] = sub_1DCB10E5C(0, &unk_1EDE4D6E0, 0x1E695DF90);
  v269[0] = v103;
  v104 = v103;
  sub_1DCB2FFBC(v269, __dst);
  __swift_destroy_boxed_opaque_existential_1Tm(v269);
  sub_1DCB10E5C(0, &unk_1EDE4D708, 0x1E695DF20);
  v105 = MEMORY[0x1E69E7CA0];
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_24_24();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_38_20();
    MEMORY[0x1E12A6780](v158 + 21, v159 | 0x8000000000000000);
    v160 = [v104 description];
    sub_1DD0DDFBC();

    v161 = OUTLINED_FUNCTION_131();
    MEMORY[0x1E12A6780](v161);

    v162 = qword_1EDE4F900;

    if (v162 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v163 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v163, qword_1EDE57E00);
    OUTLINED_FUNCTION_8_55();
    v165 = v164;
    v166 = v255;
    (*(v164 + 16))(v255);
    v167 = OUTLINED_FUNCTION_61_0();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v163);
    v170 = v166;
    v171 = v258;
    sub_1DCB09910(v170, v258, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_17_3(v171);
    if (v129)
    {
      sub_1DCB0E9D8(v258, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v215 = sub_1DD0DD8EC();
      v216 = sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_30_26())
      {
        OUTLINED_FUNCTION_83();
        v265 = OUTLINED_FUNCTION_19_30();
        v269[0] = v265;
        *v216 = 136315650;
        v217 = OUTLINED_FUNCTION_28_23("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Extensions/AceExtensions/NLContextUpdate+Ace.swift");
        OUTLINED_FUNCTION_42_22(v217, v218);

        OUTLINED_FUNCTION_23_19();
        *(v216 + 24) = OUTLINED_FUNCTION_2_69(110);
        OUTLINED_FUNCTION_9_53(&dword_1DCAFC000, v219, v220, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_29_22(v221, v222, v105 + 8);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      (*(v165 + 8))(v258, v163);
    }

    v223 = OUTLINED_FUNCTION_131();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v223, v224);
  }

  v106 = v269[0];
  v107 = objc_opt_self();
  __dst[0] = 0;
  v108 = [v107 dataWithJSONObject:v106 options:0 error:__dst];
  v109 = __dst[0];
  if (!v108)
  {
    v172 = v109;
    v173 = sub_1DD0DAE0C();

    swift_willThrow();
    OUTLINED_FUNCTION_24_24();
    sub_1DD0DEC1C();

    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_38_20();
    __dst[0] = v175 - 2;
    __dst[1] = v174;
    v176 = [v106 description];
    sub_1DD0DDFBC();

    v177 = OUTLINED_FUNCTION_131();
    MEMORY[0x1E12A6780](v177);

    v178 = qword_1EDE4F900;

    if (v178 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v179 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v179, qword_1EDE57E00);
    OUTLINED_FUNCTION_8_55();
    v181 = v180;
    v182 = v256;
    (*(v180 + 16))(v256);
    v183 = OUTLINED_FUNCTION_61_0();
    __swift_storeEnumTagSinglePayload(v183, v184, v185, v179);
    v186 = v182;
    v187 = v259;
    sub_1DCB09910(v186, v259, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_17_3(v187);
    if (v129)
    {
      sub_1DCB0E9D8(v259, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v225 = sub_1DD0DD8EC();
      v226 = sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_30_26())
      {
        OUTLINED_FUNCTION_83();
        v265 = OUTLINED_FUNCTION_19_30();
        v269[0] = v265;
        *v226 = 136315650;
        v227 = OUTLINED_FUNCTION_28_23("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Extensions/AceExtensions/NLContextUpdate+Ace.swift");
        OUTLINED_FUNCTION_42_22(v227, v228);

        OUTLINED_FUNCTION_23_19();
        *(v226 + 24) = OUTLINED_FUNCTION_2_69(114);
        OUTLINED_FUNCTION_9_53(&dword_1DCAFC000, v229, v230, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_29_22(v231, v232, v105 + 8);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      (*(v181 + 8))(v259, v179);
    }

    v233 = OUTLINED_FUNCTION_131();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v233, v234);
  }

  v110 = sub_1DD0DAF2C();
  v112 = v111;

  __dst[0] = v110;
  __dst[1] = v112;
  sub_1DD0DE00C();
  sub_1DCB2C5A0();
  v113 = sub_1DD0DDFEC();
  if (!v114)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v188 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v188, qword_1EDE57E00);
    OUTLINED_FUNCTION_22_27();
    v190 = v189;
    v191 = v254;
    (*(v189 + 16))(v254);
    v192 = OUTLINED_FUNCTION_61_0();
    __swift_storeEnumTagSinglePayload(v192, v193, v194, v188);
    v195 = v191;
    v196 = v257;
    sub_1DCB09910(v195, v257, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_11_44(v196);
    if (v129)
    {
      sub_1DCB0E9D8(v257, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v235 = sub_1DD0DD8EC();
      v236 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v236))
      {
        OUTLINED_FUNCTION_83();
        v266 = OUTLINED_FUNCTION_54();
        __dst[0] = v266;
        *v106 = 136315650;
        v237 = OUTLINED_FUNCTION_28_23("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Extensions/AceExtensions/NLContextUpdate+Ace.swift");
        v239 = sub_1DCB10E9C(v237, v238, __dst);

        *(v106 + 1) = v239;
        *(v106 + 6) = 2048;
        OUTLINED_FUNCTION_5_48(117);
        v240 = OUTLINED_FUNCTION_40_20();
        *(v106 + 3) = sub_1DCB10E9C(v240, v241, v242);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v243, v244, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v190 + 8))(v257, v188);
    }

    v245 = OUTLINED_FUNCTION_40_20();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v245, v246);
  }

  v115 = v113;
  v116 = v114;

  v117 = v115;
  v118 = v262;
  sub_1DCB2C534(v117, v116, v262, &selRef_setContext_);
  sub_1DCB21A14(v110, v112);

  return v118;
}

void sub_1DCB2FFBC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD0DAE2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB0DF6C(a1, &v31);
  sub_1DCB10E5C(0, &unk_1EDE4D708, 0x1E695DF20);
  if (swift_dynamicCast())
  {
    v9 = v27;
    v10 = [v27 count];
    v11 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity_];
    sub_1DD0DE6AC();
    while (1)
    {
      sub_1DD0DE6BC();
      v31 = v27;
      v32 = v28;
      v33[0] = v29;
      v33[1] = v30;
      if (!*(&v28 + 1))
      {
        break;
      }

      sub_1DCB20B30(v33, &v27);
      sub_1DCB20B30(&v31, &v34);
      sub_1DCB2FFBC(&v27, v26);
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      v12 = sub_1DD0DF09C();
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      [v11 __swift_setObject_forKeyedSubscript_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v27);
      __swift_destroy_boxed_opaque_existential_1Tm(&v34);
    }

    a2[3] = sub_1DCB10E5C(0, &unk_1EDE4D6E0, 0x1E695DF90);

    *a2 = v11;
    return;
  }

  sub_1DCB0DF6C(a1, &v31);
  sub_1DCB10E5C(0, &unk_1EDE4D6B0, 0x1E695DEC8);
  if (swift_dynamicCast())
  {
    v13 = v27;
    v14 = [v27 count];
    v15 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity_];
    sub_1DD0DE87C();
    while (1)
    {
      sub_1DD0DAE1C();
      if (!*(&v32 + 1))
      {
        break;
      }

      sub_1DCB20B30(&v31, &v27);
      sub_1DCB2FFBC(&v27, &v34);
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v16 = sub_1DD0DF09C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v34);
      [v15 addObject_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v27);
    }

    (*(v5 + 8))(v8, v4);
    a2[3] = sub_1DCB10E5C(0, &qword_1EDE461F8, 0x1E695DF70);

    *a2 = v15;
    return;
  }

  sub_1DCB0DF6C(a1, &v31);
  sub_1DCB10E5C(0, &qword_1EDE4D6C0, 0x1E695DF00);
  if (swift_dynamicCast())
  {
    v17 = v27;
    [v27 timeIntervalSince1970];
    v19 = v18 * 1000.0;
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v20 = v19;
        a2[3] = MEMORY[0x1E69E7360];

        *a2 = v20;
        return;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_1DCB0DF6C(a1, &v31);
  sub_1DCB10E5C(0, &qword_1EDE4F6B0, 0x1E695DEF0);
  if (swift_dynamicCast())
  {
    v21 = v27;
    v22 = [v27 base64EncodedStringWithOptions_];
    v23 = sub_1DD0DDFBC();
    v25 = v24;

    a2[3] = MEMORY[0x1E69E6158];
    *a2 = v23;
    a2[1] = v25;
  }

  else
  {
    sub_1DCB0DF6C(a1, a2);
  }
}

void *initializeBufferWithCopyOfBuffer for Parse(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      goto LABEL_29;
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

      goto LABEL_29;
    case 3u:
      *a1 = *a2;
      swift_unknownObjectRetain();
      goto LABEL_29;
    case 4u:
      v7 = sub_1DD0DB1EC();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      goto LABEL_29;
    case 5u:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_29;
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

      goto LABEL_29;
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

      goto LABEL_29;
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
      goto LABEL_29;
    case 9u:
      v8 = sub_1DD0DD08C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_29:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v24 = *(v5 + 64);

      result = memcpy(a1, a2, v24);
      break;
  }

  return result;
}

Swift::Void __swiftcall CoreAnalyticsService.sendHandleRequestEvent(intentTypeName:)(Swift::String intentTypeName)
{
  object = intentTypeName._object;
  countAndFlagsBits = intentTypeName._countAndFlagsBits;
  v4 = *(v1 + 16);
  OUTLINED_FUNCTION_88_0();
  v5 = swift_allocObject();
  *(v5 + 16) = countAndFlagsBits;
  *(v5 + 24) = object;
  OUTLINED_FUNCTION_88_0();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DCB5256C;
  *(v6 + 24) = v5;

  v4(0xD00000000000002DLL, 0x80000001DD117C90, sub_1DCB5259C, v6);
}

uint64_t sub_1DCB30D28()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

void sub_1DCB30D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v14 - v10;
  sub_1DD0DE48C();
  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB30E90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for AppResolutionFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void static IntentTopic.make(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  v21 = v20;
  v344 = sub_1DD0DB22C();
  OUTLINED_FUNCTION_9();
  v343 = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_16();
  v342 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F60, &qword_1DD0F4448);
  OUTLINED_FUNCTION_20_0(v27);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v28, v29);
  v358 = &v335 - v30;
  v31 = OUTLINED_FUNCTION_12();
  v32 = type metadata accessor for Parse.PegasusResult(v31);
  v33 = OUTLINED_FUNCTION_20_0(v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_16();
  v37 = v36 - v35;
  v341 = type metadata accessor for IFClientActionParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_10_2();
  v340 = v40 - v41;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_33_2();
  v357 = v44;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v335 - v47;
  v339 = type metadata accessor for NLRouterParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_10_2();
  v338 = v51 - v52;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v53, v54);
  OUTLINED_FUNCTION_33_2();
  v355 = v55;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v56, v57);
  v360 = &v335 - v58;
  v59 = OUTLINED_FUNCTION_12();
  v60 = type metadata accessor for LinkParse(v59);
  v61 = OUTLINED_FUNCTION_20_0(v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_16();
  v359 = v64 - v63;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v65, v66);
  v346 = &v335 - v67;
  v68 = OUTLINED_FUNCTION_12();
  v345 = type metadata accessor for USOParse(v68);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v69, v70);
  OUTLINED_FUNCTION_10_2();
  v353 = v71 - v72;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v73, v74);
  OUTLINED_FUNCTION_33_2();
  v356 = v75;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_33_2();
  v352 = v78;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v79, v80);
  v354 = &v335 - v81;
  OUTLINED_FUNCTION_12();
  v351 = sub_1DD0DB3EC();
  OUTLINED_FUNCTION_9();
  v350 = v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  OUTLINED_FUNCTION_16();
  v348 = v86 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20E8, &unk_1DD0E40F0);
  OUTLINED_FUNCTION_20_0(v87);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v88, v89);
  v349 = &v335 - v90;
  OUTLINED_FUNCTION_12();
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_9();
  v362 = v92;
  v363 = v91;
  MEMORY[0x1EEE9AC00](v91, v93);
  OUTLINED_FUNCTION_16();
  v361 = v95 - v94;
  v96 = OUTLINED_FUNCTION_12();
  v97 = type metadata accessor for Parse(v96);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v98, v99);
  OUTLINED_FUNCTION_10_2();
  v102 = (v100 - v101);
  v105 = MEMORY[0x1EEE9AC00](v103, v104);
  v107 = &v335 - v106;
  MEMORY[0x1EEE9AC00](v105, v108);
  v110 = &v335 - v109;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v111 = sub_1DD0DD8FC();
  v112 = __swift_project_value_buffer(v111, qword_1EDE57E00);
  OUTLINED_FUNCTION_6_46();
  v364 = v21;
  sub_1DCB24740(v21, v110, v113);
  v114 = sub_1DD0DD8EC();
  v115 = sub_1DD0DE6DC();
  v116 = &off_1DD0E0000;
  if (os_log_type_enabled(v114, v115))
  {
    v117 = OUTLINED_FUNCTION_151();
    v336 = v112;
    v118 = v117;
    v119 = OUTLINED_FUNCTION_83();
    v337 = v48;
    v120 = v37;
    v121 = v119;
    v365[0] = v119;
    *v118 = 136315138;
    OUTLINED_FUNCTION_6_46();
    sub_1DCB24740(v110, v107, v122);
    v123 = sub_1DD0DE02C();
    v125 = v124;
    OUTLINED_FUNCTION_30_23();
    v126 = sub_1DCB10E9C(v123, v125, v365);
    v116 = &off_1DD0E0000;

    *(v118 + 4) = v126;
    _os_log_impl(&dword_1DCAFC000, v114, v115, "IntentTopic.make(from:) : %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    v37 = v120;
    v48 = v337;
    OUTLINED_FUNCTION_80();
    v112 = v336;
    OUTLINED_FUNCTION_80();
  }

  else
  {

    OUTLINED_FUNCTION_30_23();
  }

  OUTLINED_FUNCTION_6_46();
  sub_1DCB24740(v364, v102, v127);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      v223 = sub_1DD0DD8EC();
      v224 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v224))
      {
        v225 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v225);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v226, v227, v228, v229, v230, 2u);
        OUTLINED_FUNCTION_62();
      }

      sub_1DD0DCF8C();
    case 2u:
      v179 = v116;
      v181 = *v102;
      v180 = v102[1];
      v182 = HIBYTE(v180) & 0xF;
      if ((v180 & 0x2000000000000000) == 0)
      {
        v182 = *v102 & 0xFFFFFFFFFFFFLL;
      }

      if (v182)
      {

        v183 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();

        if (OUTLINED_FUNCTION_45_1())
        {
          v184 = OUTLINED_FUNCTION_151();
          v185 = OUTLINED_FUNCTION_83();
          v365[0] = v185;
          *v184 = *(v179 + 246);

          v186 = sub_1DCB10E9C(v181, v180, v365);

          *(v184 + 4) = v186;
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v187, v188, v189, v190, v191, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v185);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_62();
        }

        v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v193 = OUTLINED_FUNCTION_40_9(v192);
        *(v193 + 16) = xmmword_1DD0E07C0;

        OUTLINED_FUNCTION_72_8(260);
        *(v193 + 72) = v181;
        *(v193 + 80) = v180;
        *(v193 + 88) = 0;
      }

      else
      {

        v313 = sub_1DD0DD8EC();
        v314 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_22(v314))
        {
          v315 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v315);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v316, v317, v318, v319, v320, 2u);
          OUTLINED_FUNCTION_62();
        }

        v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v322 = OUTLINED_FUNCTION_40_9(v321);
        *(v322 + 16) = xmmword_1DD0E07C0;
        *&v323 = OUTLINED_FUNCTION_8_44(v322, 260);
        *(v324 + 72) = v323;
        *(v324 + 88) = 0;
      }

      break;
    case 3u:
      v194 = sub_1DD0DD8EC();
      v195 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v195))
      {
        v196 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v196);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v197, v198, v199, v200, v201, 2u);
        OUTLINED_FUNCTION_62();
      }

      v202 = v350;
      v203 = v348;
      v204 = v351;
      (*(v350 + 104))(v348, *MEMORY[0x1E69D0978], v351);
      v205 = OUTLINED_FUNCTION_16_18();
      static IntentTopic.makeFromTasks(userDialogAct:parserIdentifier:)(v205, v206);
      OUTLINED_FUNCTION_76_8();
      swift_unknownObjectRelease();
      (*(v202 + 8))(v203, v204);
      break;
    case 4u:
      v149 = OUTLINED_FUNCTION_65_7();
      sub_1DCDA9AC0(v149, v37, v150);
      v151 = v358;
      Parse.PegasusResult.clientComponent.getter();
      sub_1DD0DB20C();
      v152 = OUTLINED_FUNCTION_76_8();
      if (__swift_getEnumTagSinglePayload(v152, 1, v112) == 1)
      {
        sub_1DCB0E9D8(v151, &qword_1ECCA5F60, &qword_1DD0F4448);
        v153 = sub_1DD0DD8EC();
        v154 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_22(v154))
        {
          v155 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v155);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v156, v157, v158, v159, v160, 2u);
          OUTLINED_FUNCTION_80();
        }

        v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v162 = OUTLINED_FUNCTION_40_9(v161);
        OUTLINED_FUNCTION_24_22(v162, "com.apple.siri.pegasus.generic", xmmword_1DD0E07C0);
      }

      else
      {
        v278 = v116;
        v279 = v342;
        sub_1DD0DB1FC();
        OUTLINED_FUNCTION_112();
        (*(v280 + 8))(v151, v112);
        v281 = sub_1DD0DB21C();
        v283 = v282;
        (*(v343 + 8))(v279, v344);

        v284 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();

        if (OUTLINED_FUNCTION_45_1())
        {
          v285 = v37;
          v286 = OUTLINED_FUNCTION_151();
          v365[0] = OUTLINED_FUNCTION_83();
          *v286 = *(v278 + 246);
          v287 = OUTLINED_FUNCTION_16_18();
          *(v286 + 4) = sub_1DCB10E9C(v287, v288, v289);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v290, v291, v292, v293, v294, 0xCu);
          OUTLINED_FUNCTION_44_1();
          OUTLINED_FUNCTION_80();
          v37 = v285;
          OUTLINED_FUNCTION_80();
        }

        v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v296 = OUTLINED_FUNCTION_40_9(v295);
        *(v296 + 16) = xmmword_1DD0E07C0;
        OUTLINED_FUNCTION_8_44(v296, 261);
        *(v163 + 72) = v281;
        *(v163 + 80) = v283;
      }

      *(v163 + 88) = 0;
      v297 = type metadata accessor for Parse.PegasusResult;
      v298 = v37;
      goto LABEL_58;
    case 5u:
      v231 = *v102;
      sub_1DD0DD73C();
      if (v232)
      {
        OUTLINED_FUNCTION_50_9();

        v233 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();

        if (OUTLINED_FUNCTION_45_1())
        {
          v234 = OUTLINED_FUNCTION_151();
          v235 = OUTLINED_FUNCTION_83();
          v365[0] = v235;
          *v234 = *(v116 + 246);
          *(v234 + 4) = OUTLINED_FUNCTION_40_16();
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v236, v237, v238, v239, v240, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v235);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_62();
        }

        v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v242 = OUTLINED_FUNCTION_40_9(v241);
        *(v242 + 16) = xmmword_1DD0E07C0;
        OUTLINED_FUNCTION_8_44(v242, 261);
        *(v243 + 72) = v116;
        *(v243 + 80) = v48;
      }

      else
      {
        v325 = sub_1DD0DD8EC();
        v326 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_22(v326))
        {
          v327 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v327);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v328, v329, v330, v331, v332, 2u);
          OUTLINED_FUNCTION_62();
        }

        v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v334 = OUTLINED_FUNCTION_40_9(v333);
        OUTLINED_FUNCTION_24_22(v334, "com.apple.siri.pegasus.generic", xmmword_1DD0E07C0);
      }

      *(v243 + 88) = 0;

      break;
    case 6u:
      v244 = OUTLINED_FUNCTION_65_7();
      v208 = v354;
      sub_1DCDA9AC0(v244, v354, v245);
      v246 = v352;
      sub_1DCB24740(v208, v352, type metadata accessor for USOParse);
      v247 = sub_1DD0DD8EC();
      v248 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_51_14(v248))
      {
        v249 = OUTLINED_FUNCTION_151();
        v250 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_81_5(v250);
        OUTLINED_FUNCTION_75_7(COERCE_FLOAT(*(v116 + 246)));
        OUTLINED_FUNCTION_74_8();
        sub_1DCB099BC(v251, v252, v253, v254);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_50_9();
        OUTLINED_FUNCTION_1_71();
        sub_1DCB285E0(v246, v255);
        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_73_7();

        *(v249 + 4) = v116;
        OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v256, v257, "IntentTopic.make(from:) for .uso parse, parser: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_1_71();
        sub_1DCB285E0(v246, v310);
      }

      sub_1DCDA7FF8(v208);
      v304 = type metadata accessor for USOParse;
      goto LABEL_57;
    case 7u:
      v207 = OUTLINED_FUNCTION_65_7();
      v208 = v359;
      sub_1DCDA9AC0(v207, v359, v209);
      v210 = v356;
      sub_1DCB24740(v208, v356, type metadata accessor for USOParse);
      v211 = v353;
      sub_1DCB24740(v210, v353, type metadata accessor for USOParse);
      v212 = sub_1DD0DD8EC();
      v213 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_51_14(v213))
      {
        v214 = OUTLINED_FUNCTION_151();
        v215 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_81_5(v215);
        OUTLINED_FUNCTION_75_7(COERCE_FLOAT(*(v116 + 246)));
        OUTLINED_FUNCTION_74_8();
        sub_1DCB099BC(v216, v217, v218, v219);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_50_9();
        OUTLINED_FUNCTION_1_71();
        sub_1DCB285E0(v211, v220);
        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_73_7();

        *(v214 + 4) = v116;
        OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v221, v222, "IntentTopic.make(from:) for .link parse, parser: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_1_71();
        sub_1DCB285E0(v211, v302);
      }

      sub_1DCDA7FF8(v210);
      OUTLINED_FUNCTION_1_71();
      sub_1DCB285E0(v210, v303);
      v304 = type metadata accessor for LinkParse;
      goto LABEL_57;
    case 8u:
      v266 = OUTLINED_FUNCTION_65_7();
      v208 = v360;
      sub_1DCDA9AC0(v266, v360, v267);
      OUTLINED_FUNCTION_25_15();
      sub_1DCB24740(v208, v355, v268);
      v269 = sub_1DD0DD8EC();
      v270 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_51_14(v270))
      {
        v271 = OUTLINED_FUNCTION_151();
        v272 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_81_5(v272);
        *v271 = *(v116 + 246);
        OUTLINED_FUNCTION_25_15();
        OUTLINED_FUNCTION_74_8();
        sub_1DCB24740(v273, v274, v275);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_50_9();
        OUTLINED_FUNCTION_31_17();
        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_73_7();

        *(v271 + 4) = v116;
        OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v276, v277, "IntentTopic.make(from:) for .nlRouter parse, parser: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_31_17();
      }

      v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
      v312 = OUTLINED_FUNCTION_40_9(v311);
      *(v312 + 16) = xmmword_1DD0E07C0;
      *(v312 + 32) = 262;
      *(v312 + 40) = 0;
      *(v312 + 48) = 0;
      *(v312 + 56) = xmmword_1DD0F4420;
      *(v312 + 72) = 0;
      *(v312 + 80) = 0;
      *(v312 + 88) = 0;
      v304 = type metadata accessor for NLRouterParse;
LABEL_57:
      v297 = v304;
      v298 = v208;
      goto LABEL_58;
    case 9u:
      v164 = OUTLINED_FUNCTION_65_7();
      sub_1DCDA9AC0(v164, v48, v165);
      OUTLINED_FUNCTION_23_18();
      v166 = v357;
      sub_1DCB24740(v48, v357, v167);
      v168 = sub_1DD0DD8EC();
      v169 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_51_14(v169))
      {
        v170 = OUTLINED_FUNCTION_151();
        v171 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_81_5(v171);
        *v170 = *(v116 + 246);
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_74_8();
        sub_1DCB24740(v172, v173, v174);
        v175 = sub_1DD0DE02C();
        OUTLINED_FUNCTION_4_65();
        sub_1DCB285E0(v166, v176);
        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_73_7();

        *(v170 + 4) = v175;
        OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v177, v178, "IntentTopic.make(from:) for .ifClientAction parse, parser: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_4_65();
        sub_1DCB285E0(v166, v299);
      }

      v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
      v301 = OUTLINED_FUNCTION_40_9(v300);
      *(v301 + 16) = xmmword_1DD0E07C0;
      *(v301 + 32) = 263;
      *(v301 + 40) = 0;
      *(v301 + 48) = 0;
      *(v301 + 56) = xmmword_1DD0F4410;
      *(v301 + 72) = 0;
      *(v301 + 80) = 0;
      *(v301 + 88) = 0;
      OUTLINED_FUNCTION_4_65();
      v298 = v48;
LABEL_58:
      sub_1DCB285E0(v298, v297);
      break;
    case 0xAu:
      v258 = sub_1DD0DD8EC();
      v259 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v259))
      {
        v260 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v260);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v261, v262, v263, v264, v265, 2u);
        OUTLINED_FUNCTION_62();
      }

      break;
    default:
      v128 = v362;
      v129 = v363;
      (*(v362 + 32))(v361, v102, v363);
      v130 = sub_1DD0DD8EC();
      v131 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v131))
      {
        v132 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v132);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v133, v134, v135, v136, v137, 2u);
        OUTLINED_FUNCTION_62();
      }

      v138 = v349;
      v139 = v361;
      sub_1DD0DC72C();
      v140 = sub_1DD0DBD0C();
      if (__swift_getEnumTagSinglePayload(v138, 1, v140) == 1)
      {
        sub_1DCB0E9D8(v138, &qword_1ECCA20E8, &unk_1DD0E40F0);
        v141 = sub_1DD0DD8EC();
        v142 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_22(v142))
        {
          v143 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v143);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v144, v145, v146, v147, v148, 2u);
          OUTLINED_FUNCTION_62();
        }

        (*(v128 + 8))(v139, v129);
      }

      else
      {
        sub_1DD0DBCFC();
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_112();
        (*(v305 + 8))(v138, v140);
        v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v307 = OUTLINED_FUNCTION_40_9(v306);
        *(v307 + 16) = xmmword_1DD0E07C0;
        v308 = OUTLINED_FUNCTION_8_44(v307, 256);
        *(v309 + 72) = v138;
        *(v309 + 80) = v37;
        *(v309 + 88) = 0;
        (*(v128 + 8))(v139, v129, v308);
      }

      break;
  }

  OUTLINED_FUNCTION_49();
}

uint64_t type metadata accessor for IFClientActionParse(uint64_t a1)
{
  result = qword_1EDE4E1E8;
  if (!qword_1EDE4E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NLRouterParse(uint64_t a1)
{
  result = qword_1EDE4EAB0;
  if (!qword_1EDE4EAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LinkParse(uint64_t a1)
{
  result = qword_1EDE4D7F0;
  if (!qword_1EDE4D7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Input.init(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Input(0);
  v5 = a2 + v4[7];
  *(v5 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v5);
  OUTLINED_FUNCTION_1_51();
  sub_1DCB246E8(a1, a2 + v6);
  *(a2 + v4[6]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_5_42();
  result = sub_1DCB28538();
  *(a2 + v4[8]) = 0;
  return result;
}

uint64_t initializeWithCopy for IntentTopic(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t IntentTopic.makeWildcardFallbacks()()
{
  v1 = v0[1];
  v14 = *v0;
  v15 = v1;
  v16[0] = v0[2];
  *(v16 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
  v2 = swift_allocObject();
  v3 = *v0;
  v4 = v0[1];
  *(v2 + 16) = xmmword_1DD0E4000;
  *(v2 + 32) = v3;
  v5 = v0[2];
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 73) = *(v0 + 41);
  v6 = v14;
  v7 = BYTE1(v14);
  v8 = *(&v15 + 1);
  v9 = *&v16[0];
  *(v2 + 96) = v14;
  *(v2 + 97) = v7;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = v8;
  *(v2 + 128) = v9;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  v10 = *(&v14 + 1);
  v11 = v15;
  *(v2 + 160) = v6;
  *(v2 + 161) = v7;
  *(v2 + 168) = v10;
  *(v2 + 176) = v11;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0;
  *(v2 + 224) = v6;
  *(v2 + 225) = v7;
  *(v2 + 248) = 0u;
  *(v2 + 280) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 264) = 0u;
  sub_1DCB32880(&v14, &v13);

  return v2;
}

void *sub_1DCB3291C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69CEA28]) init];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x1E69CEA10]) init];
    if (v15)
    {
      v16 = v15;
      [v14 setPlugin_];
      [v16 setStartedOrChanged_];
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v9 + 16))(v12, a4, v8);
      v17 = sub_1DCB0DEDC(v12);
      [v16 setHypothesisId_];

      [a1 setFlowPluginLoadContext_];
      v18 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1EDE57DA0);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DCAFC000, v20, v21, "[ConversationSELFHelper] Failed to create context SELF objects", v22, 2u);
    MEMORY[0x1E12A8390](v22, -1, -1);
  }

  return 0;
}

int8x16_t OUTLINED_FUNCTION_52_5(int8x16_t *a1)
{
  v2[3].i64[0] = a1;
  result = vextq_s8(v2[2], v2[2], 8uLL);
  a1[1] = result;
  a1[2].i64[0] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_11()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void OUTLINED_FUNCTION_52_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

id OUTLINED_FUNCTION_52_16(float a1)
{
  *v3 = a1;
  *(v2 + 16) = v1;

  return v1;
}

void OUTLINED_FUNCTION_52_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
}

uint64_t OUTLINED_FUNCTION_52_21()
{
  v2 = *(v0 + 56);

  return sub_1DCB28690(v2, type metadata accessor for Input);
}

__n128 OUTLINED_FUNCTION_52_22(uint64_t a1)
{
  *(v3 + 112) = a1;
  result = *(v3 + 80);
  v5 = *(v3 + 96);
  *(a1 + 16) = result;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2;
  *(a1 + 56) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for OutputGenerationManifest(0);
}

uint64_t OUTLINED_FUNCTION_52_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for SiriKitRequestTCCAcceptanceFlowNLOnlyStrategy(0, a3, a3, a4);
}

uint64_t OUTLINED_FUNCTION_52_26()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_52_28()
{
  v1 = *(v0 - 176);
  *(v0 - 144) = *(v0 - 184);
  *(v0 - 136) = v1;
}

uint64_t OUTLINED_FUNCTION_52_29()
{
  *(v0 + *(v1 + 44)) = 0;

  return type metadata accessor for NLContextUpdate(0);
}

uint64_t OUTLINED_FUNCTION_52_31(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21)
{
  v23 = a20;
  a1[1] = a19;
  a1[2] = v23;
  a1[3] = a21;

  return sub_1DCB17D04(v21, &a19);
}

uint64_t sub_1DCB32E94(uint64_t a1)
{
  sub_1DD0DF1DC();
  IntentTopic.hash(into:)();
  return sub_1DD0DF20C();
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void *OUTLINED_FUNCTION_72_0(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_72_2()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_72_3()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_72_5(void *a1@<X8>)
{
  v2 = a1[1];
  *v1 = *a1;
  v1[1] = v2;
}

void OUTLINED_FUNCTION_72_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

double OUTLINED_FUNCTION_72_8@<D0>(__int16 a1@<W8>)
{
  *(v1 + 32) = a1;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_13()
{
}

__n128 OUTLINED_FUNCTION_72_15(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 368) = *a1;
  *(v1 + 384) = v2;
  result = *(a1 + 32);
  *(v1 + 400) = result;
  *(v1 + 416) = *(a1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_17(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a6;
  v6[11] = result;
  v6[12] = a5;
  return result;
}

void OUTLINED_FUNCTION_72_18()
{
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);

  sub_1DCF212A0(v2, v3, 2);
}

uint64_t OUTLINED_FUNCTION_72_21(uint64_t a1)
{

  return swift_once();
}

uint64_t destroy for IntentTopic(void *a1)
{
}

void IntentTopic.hash(into:)()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_1DCB33260(v4, *v0);
  sub_1DD0DDF2C();

  if (v1)
  {
    MEMORY[0x1E12A7840](0);
    sub_1DD0DDF2C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    MEMORY[0x1E12A7840](1);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1DD0DF1FC();
    OUTLINED_FUNCTION_49();
    return;
  }

  MEMORY[0x1E12A7840](1);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  MEMORY[0x1E12A7840](0);
  sub_1DD0DDF2C();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1DD0DF1FC();
  OUTLINED_FUNCTION_49();

  sub_1DD0DDF2C();
}

uint64_t sub_1DCB33260(void *a1, char a2)
{
  switch(a2)
  {
    case 4:
    case 5:
      OUTLINED_FUNCTION_57_8();
      break;
    default:
      break;
  }

  sub_1DD0DDF2C();
}

void static IntentTopic.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = a2[1];
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v16 = *(a2 + 5);
  v17 = *(a1 + 5);
  v18 = *(a2 + 6);
  v19 = *(a1 + 6);
  if (sub_1DCB33588(*a1, *a2) & 1) != 0 && (sub_1DCB33500(v2, v7) & 1) != 0 && (v22 = v3, v23 = v4, v20 = v8, v21 = v9, , , v12 = static IntentTopic.IntentTopicWildcardString.== infix(_:_:)(&v22, &v20), , , (v12) && (v22 = v5, v23 = v6, v20 = v10, v21 = v11, , , v13 = static IntentTopic.IntentTopicWildcardString.== infix(_:_:)(&v22, &v20), , , (v13) && v19 && v18 && (v17 == v16 ? (v14 = v19 == v18) : (v14 = 0), !v14))
  {
    OUTLINED_FUNCTION_88_5();

    sub_1DD0DF0AC();
  }

  else
  {
    OUTLINED_FUNCTION_88_5();
  }
}

uint64_t sub_1DCB33500(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1701736302;
  }

  else
  {
    v3 = 0x33764F5355;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1701736302;
  }

  else
  {
    v5 = 0x33764F5355;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
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
    v8 = OUTLINED_FUNCTION_3_80(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DCB33588(unsigned __int8 a1, uint64_t a2)
{
  v2 = 863390798;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 863390798;
  switch(v4)
  {
    case 1:
      v5 = 880168014;
      break;
    case 2:
      v5 = 1885430133;
      break;
    case 3:
      v5 = 0x4974694B69726973;
      v3 = 0xED0000746E65746ELL;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v6 = "pp";
      goto LABEL_8;
    case 5:
      v5 = 0xD000000000000010;
      v6 = "directInvocation";
LABEL_8:
      v3 = v6 | 0x8000000000000000;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x726574756F526C6ELL;
      break;
    case 7:
      v5 = 0x746E65696C436669;
      v3 = 0xEE006E6F69746341;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 880168014;
      break;
    case 2:
      v2 = 1885430133;
      break;
    case 3:
      v2 = 0x4974694B69726973;
      v7 = 0xED0000746E65746ELL;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v8 = "pp";
      goto LABEL_18;
    case 5:
      v2 = 0xD000000000000010;
      v8 = "directInvocation";
LABEL_18:
      v7 = v8 | 0x8000000000000000;
      break;
    case 6:
      v7 = 0xE800000000000000;
      v2 = 0x726574756F526C6ELL;
      break;
    case 7:
      v2 = 0x746E65696C436669;
      v7 = 0xEE006E6F69746341;
      break;
    case 8:
      v7 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_80(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t static IntentTopic.IntentTopicWildcardString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1DD0DF0AC();
}

void IntentTopic.makeCacheKeyAndWildcardFallbacks()()
{
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  v2 = v0[1];
  v44 = *(v0 + 2);
  v45 = *(v0 + 3);
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v6 = *(v0 + 3);
  v5 = *(v0 + 4);
  v8 = *(v0 + 5);
  v7 = *(v0 + 6);
  v9 = v0[56];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F58, &qword_1DD0F4440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0EB8D0;
  v42 = v1;
  v43 = v2;
  v46 = v4;
  v47 = v3;
  v48 = v6;
  v49 = v5;
  v50 = v8;
  v51 = v7;
  v52 = v9;
  v11 = IntentTopic.cacheKey.getter();
  v12 = 0;
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  if (v1 > 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    if (((1 << v1) & 0x39) != 0)
    {

      v12 = v8;
      v14 = v7;
    }
  }

  *(inited + 48) = v12;
  *(inited + 56) = v14;
  LOBYTE(v35[0]) = v1;
  BYTE1(v35[0]) = v2 & 1;
  v35[1] = 0;
  *&v36 = 0;
  *(&v36 + 1) = v6;
  *v37 = v5;
  *&v37[16] = 0;
  v38 = 0;
  v33[2] = v35[0];
  v33[3] = v36;
  v34[0] = v5;
  *(v34 + 9) = *&v37[9];

  v15 = IntentTopic.cacheKey.getter();
  v17 = v16;
  sub_1DCB340B4(v35);
  *(inited + 64) = v15;
  *(inited + 72) = v17;
  LOBYTE(v39) = v1;
  BYTE1(v39) = v2 & 1;
  *(&v39 + 1) = v4;
  *&v40[0] = v3;
  memset(v40 + 8, 0, 33);
  v32[0] = v39;
  v32[1] = v40[0];
  v33[0] = v40[1];
  *(v33 + 9) = *(&v40[1] + 9);

  IntentTopic.cacheKey.getter();
  OUTLINED_FUNCTION_17_2();
  sub_1DCB340B4(&v39);
  *(inited + 80) = v32;
  *(inited + 88) = v3;
  LOBYTE(v41[0]) = v1;
  BYTE1(v41[0]) = v2 & 1;
  memset(v41 + 8, 0, 49);
  v30[0] = v41[0];
  v30[1] = v41[1];
  v31[0] = v41[2];
  *(v31 + 9) = *(&v41[2] + 9);
  IntentTopic.cacheKey.getter();
  OUTLINED_FUNCTION_17_2();
  sub_1DCB340B4(v41);
  v18 = 0;
  *(inited + 96) = v30;
  *(inited + 104) = v3;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v20 = v18 - 1;
  v21 = 16 * v18 + 40;
  while (1)
  {
    if (v20 == 4)
    {
      swift_setDeallocating();
      sub_1DCB3424C();
      OUTLINED_FUNCTION_49();
      return;
    }

    if (++v20 > 4)
    {
      break;
    }

    v22 = v21 + 16;
    v23 = *(inited + v21);
    v21 += 16;
    if (v23)
    {
      v24 = *(inited + v22 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCB34108(0, *(v19 + 16) + 1, 1, v19);
        v19 = v28;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1DCB34108(v25 > 1, v26 + 1, 1, v19);
        v19 = v29;
      }

      v18 = v20 + 1;
      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t IntentTopic.cacheKey.getter()
{
  v1 = 863390798;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  v32 = *(v0 + 3);
  v6 = *(v0 + 6);
  if (v6)
  {
    v31 = *(v0 + 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DD0EB8D0;
    v8 = v7;
    switch(v2)
    {
      case 1:
        v1 = 880168014;
        break;
      case 2:
        v1 = 1885430133;
        break;
      case 3:
        OUTLINED_FUNCTION_37_20();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_85_6();
        break;
      case 6:
        OUTLINED_FUNCTION_64_9();
        break;
      case 7:
        OUTLINED_FUNCTION_36_20();
        break;
      case 8:
        OUTLINED_FUNCTION_63_9();
        break;
      default:
        break;
    }

    v11 = MEMORY[0x1E69E6158];
    v8[7] = MEMORY[0x1E69E6158];
    v12 = sub_1DCB34060();
    v13 = v12;
    v8[4] = v1;
    v8[5] = 0xE400000000000000;
    v14 = 1701736302;
    if (!v3)
    {
      v14 = 0x33764F5355;
    }

    v15 = 0xE500000000000000;
    v8[12] = v11;
    v8[13] = v12;
    if (v3)
    {
      v15 = 0xE400000000000000;
    }

    v8[8] = v12;
    v8[9] = v14;
    v8[10] = v15;

    if (v4)
    {
      v16 = OUTLINED_FUNCTION_16_18();
      MEMORY[0x1E12A6780](v16);
      OUTLINED_FUNCTION_49_13();
      v17 = 34;
    }

    else
    {
      v17 = 42;
    }

    v8[17] = v11;
    v8[18] = v13;
    v8[14] = v17;
    v8[15] = 0xE100000000000000;
    if (v5)
    {
      MEMORY[0x1E12A6780](v32, v5);
      OUTLINED_FUNCTION_49_13();
      v18 = 34;
    }

    else
    {
      v18 = 42;
    }

    v8[22] = v11;
    v8[23] = v13;
    v8[19] = v18;
    v8[20] = 0xE100000000000000;
    v8[27] = v11;
    v8[28] = v13;
    v8[24] = v31;
    v8[25] = v6;
    v19 = 0xD000000000000039;
    v20 = 0x80000001DD11D520;
    v21 = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DD0E4000;
    v10 = v9;
    switch(v2)
    {
      case 1:
        v1 = 880168014;
        break;
      case 2:
        v1 = 1885430133;
        break;
      case 3:
        OUTLINED_FUNCTION_37_20();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_85_6();
        break;
      case 6:
        OUTLINED_FUNCTION_64_9();
        break;
      case 7:
        OUTLINED_FUNCTION_36_20();
        break;
      case 8:
        OUTLINED_FUNCTION_63_9();
        break;
      default:
        break;
    }

    v22 = MEMORY[0x1E69E6158];
    v10[7] = MEMORY[0x1E69E6158];
    v23 = sub_1DCB34060();
    v24 = v23;
    v10[4] = v1;
    v10[5] = 0xE400000000000000;
    v25 = 1701736302;
    if (!v3)
    {
      v25 = 0x33764F5355;
    }

    v26 = 0xE500000000000000;
    v10[12] = v22;
    v10[13] = v23;
    if (v3)
    {
      v26 = 0xE400000000000000;
    }

    v10[8] = v23;
    v10[9] = v25;
    v10[10] = v26;
    if (v4)
    {
      v27 = OUTLINED_FUNCTION_16_18();
      MEMORY[0x1E12A6780](v27);
      OUTLINED_FUNCTION_49_13();
      v28 = 34;
    }

    else
    {
      v28 = 42;
    }

    v10[17] = v22;
    v10[18] = v24;
    v10[14] = v28;
    v10[15] = 0xE100000000000000;
    if (v5)
    {
      MEMORY[0x1E12A6780](v32, v5);
      OUTLINED_FUNCTION_49_13();
      v29 = 34;
    }

    else
    {
      v29 = 42;
    }

    v10[22] = v22;
    v10[23] = v24;
    v10[19] = v29;
    v10[20] = 0xE100000000000000;
    v19 = 0xD00000000000002BLL;
    v20 = 0x80000001DD11D4F0;
    v21 = v10;
  }

  return MEMORY[0x1EEDC5E80](v19, v20, v21);
}

uint64_t OUTLINED_FUNCTION_85_3(unint64_t *a1)
{

  return sub_1DCC5DEBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_85_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_85_7()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_85_8()
{
}

uint64_t OUTLINED_FUNCTION_85_10()
{

  return sub_1DCAFF9E8((v0 + 760), v1 - 128);
}

uint64_t OUTLINED_FUNCTION_85_11(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a11, uint64_t a9, uint64_t a10, int8x16_t a12)
{
  a1[1] = vextq_s8(a12, a12, 8uLL);

  return sub_1DD02AA70(v12, a1->i64 + v14, v13);
}

uint64_t OUTLINED_FUNCTION_85_12(uint64_t result)
{
  *(result + 16) = *(v2 - 96);
  *(result + 24) = v1;
  return result;
}

unint64_t sub_1DCB34060()
{
  result = qword_1EDE4D730;
  if (!qword_1EDE4D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D730);
  }

  return result;
}

void sub_1DCB34138()
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
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_12_46();
      v14[2] = v3;
      v14[3] = v15;
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

char *sub_1DCB341E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

uint64_t sub_1DCB34204(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCB34278()
{
  result = qword_1EDE4D990;
  if (!qword_1EDE4D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D990);
  }

  return result;
}

unint64_t sub_1DCB342CC()
{
  result = qword_1EDE481D0;
  if (!qword_1EDE481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE481D0);
  }

  return result;
}

void InputContinuationState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_3();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49A8, &qword_1DD0EDE28);
  OUTLINED_FUNCTION_9();
  v50 = v27;
  v51 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_34_0();
  v49 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49B0, &qword_1DD0EDE30);
  OUTLINED_FUNCTION_9();
  v47 = v32;
  v48 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v47 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49B8, &qword_1DD0EDE38);
  OUTLINED_FUNCTION_9();
  v39 = v38;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v47 - v42;
  v44 = *v23;
  OUTLINED_FUNCTION_57_1(v25, v25[3]);
  sub_1DCB347BC();
  sub_1DD0DF24C();
  v45 = (v39 + 8);
  if (v44)
  {
    sub_1DCD1BA84();
    v46 = v49;
    sub_1DD0DEF7C();
    (*(v50 + 8))(v46, v51);
  }

  else
  {
    sub_1DCB34810();
    sub_1DD0DEF7C();
    (*(v47 + 8))(v36, v48);
  }

  (*v45)(v43, v37);
  OUTLINED_FUNCTION_19_19();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_78_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 96) = a1;
  v6 = *(v1 + 16);

  return sub_1DCB4F1DC(v4, v6, v2, v3);
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  *(v1 + 128) = v0;
  *(v1 + 136) = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1)
{

  return sub_1DD0DE02C();
}

uint64_t OUTLINED_FUNCTION_78_7(uint64_t result)
{
  *(result + 16) = 1;
  *(result + 18) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_8(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_78_9()
{
}

id OUTLINED_FUNCTION_78_11(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_78_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_78_13(uint64_t result)
{
  *(v1 + 104) = result;
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_78_14@<Q0>(char a1@<W8>)
{
  *(v5 + 16) = v4;
  result = *v3;
  *(v5 + 24) = *v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  *(v5 + 56) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_16()
{

  return sub_1DD0DD72C();
}

uint64_t OUTLINED_FUNCTION_78_17()
{
  *(v0 + 56) = v1;

  return sub_1DCB17D04(v1, v2 - 208);
}

uint64_t OUTLINED_FUNCTION_78_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1DCFEAEC4(a1, a2, a3, v10, a5, 0, 0, 255, a9, a10);
}

uint64_t OUTLINED_FUNCTION_78_22()
{
}

unint64_t sub_1DCB347BC()
{
  result = qword_1EDE4DD20;
  if (!qword_1EDE4DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD20);
  }

  return result;
}

unint64_t sub_1DCB34810()
{
  result = qword_1EDE4DD48[0];
  if (!qword_1EDE4DD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE4DD48);
  }

  return result;
}

unint64_t sub_1DCB34864()
{
  result = qword_1EDE4D978;
  if (!qword_1EDE4D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D978);
  }

  return result;
}

uint64_t sub_1DCB348C0(char a1)
{
  if (a1)
  {
    return 0x61756E69746E6F63;
  }

  else
  {
    return 0x496C616974696E69;
  }
}

_BYTE *sub_1DCB34910(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x1DCB349D8);
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
          result = OUTLINED_FUNCTION_10_18(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCB34A08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_64_5(-1);
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
      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_64_5(v8);
}

void Input.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_20_3();
  v69 = v26;
  v29 = v28;
  v62 = v30;
  v31 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v63 = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_16();
  v37 = v36 - v35;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_16();
  v65 = v41 - v40;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49A0, &qword_1DD0EDE20);
  OUTLINED_FUNCTION_9();
  v64 = v42;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v62 - v45;
  v47 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v51 = v27 + *(v50 + 28);
  *(v51 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v51);
  v68 = v52;
  v53 = v29[3];
  v70 = v29;
  OUTLINED_FUNCTION_57_1(v29, v53);
  sub_1DCB34278();
  v66 = v46;
  v54 = v69;
  sub_1DD0DF23C();
  if (v54)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    sub_1DCB0E9D8(v68, &qword_1ECCA4988, &qword_1DD100F00);
  }

  else
  {
    v69 = v37;
    v55 = v64;
    OUTLINED_FUNCTION_9_33();
    sub_1DCB2C054(v56, 255, v57, &protocol conformance descriptor for Parse);
    v58 = v65;
    sub_1DD0DEF4C();
    sub_1DCB541FC(v58, v27 + v47[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4998, &qword_1DD0EDE18);
    sub_1DCB2C1D8(&qword_1EDE462A0, &qword_1EDE46638, &protocol conformance descriptor for Parse, MEMORY[0x1E69E6330]);
    sub_1DD0DEF4C();
    *(v27 + v47[6]) = v71;
    OUTLINED_FUNCTION_32_13();
    sub_1DCB2C054(v59, 255, v60, MEMORY[0x1E69695D0]);
    v61 = v69;
    v65 = 0;
    sub_1DD0DEF4C();
    (*(v63 + 32))(v27, v61, v31);
    sub_1DCB54260();
    sub_1DD0DEF4C();
    (*(v55 + 8))(v66, v67);
    *(v27 + v47[8]) = a13;
    sub_1DCB246E8(v27, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    sub_1DCB28538();
  }

  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCB34FA8()
{
  result = qword_1EDE4D8E0;
  if (!qword_1EDE4D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D8E0);
  }

  return result;
}

uint64_t ConditionalFlow.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 88);
  type metadata accessor for ConditionalFlow.State(0, *(*v4 + 80), a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v4 + v5);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();

  return v4;
}

uint64_t ConditionalFlow.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ConditionalFlow.deinit(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t AnyValueFlow.__deallocating_deinit()
{
  AnyValueFlow.deinit();

  return swift_deallocClassInstance();
}

void *AnyValueFlow.deinit()
{

  return v0;
}

void AnyValueFlow.init<A>(_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_46_8();
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v0[4] = Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_152_0();
  v12();
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = *(v5 + 80);
  *(v14 + 3) = v1;
  *(v14 + 4) = v4;
  (*(v7 + 32))(&v14[v13], v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v2[5] = sub_1DCD1BFB0;
  v2[6] = v14;
  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  sub_1DD0DEC1C();

  strcpy(&v20, "AnyValueFlow<");
  HIWORD(v20) = -4864;
  OUTLINED_FUNCTION_19();
  v19[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v15 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v15);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v16 = *(&v20 + 1);
  v2[2] = v20;
  v2[3] = v16;
  v17 = OUTLINED_FUNCTION_19();
  v18(v17);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB35350()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t GuardFlow.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *SharingPolicyCheckFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  return v0;
}

uint64_t SharingPolicyCheckFlow.__deallocating_deinit()
{
  SharingPolicyCheckFlow.deinit();
  OUTLINED_FUNCTION_12_63();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB35468(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DD0DDFBC();

  return v4;
}

unint64_t sub_1DCB354C8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_145_0()
{

  return swift_retain_n();
}

void OUTLINED_FUNCTION_145_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 8u);
}

uint64_t ResponseFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB35574()
{

  v1 = OBJC_IVAR____TtC11SiriKitFlow21IntentServicesAdapter_appIntentRegistry;
  sub_1DD0DD39C();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_114(unint64_t a1)
{

  return sub_1DCB41FF4(a1, v1, v2);
}

uint64_t sub_1DCB35974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t ParameterResolutionResult.__deallocating_deinit()
{
  ParameterResolutionResult.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCB359BC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v53 = v2;
  v3 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v48 - v10;
  if (qword_1EDE4EC80 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v12 = sub_1DD0DD88C();
    OUTLINED_FUNCTION_92(v12, qword_1EDE57DD0);
    sub_1DD0DD84C();
    v13 = sub_1DD0DD87C();
    v14 = sub_1DD0DE7FC();
    if (sub_1DD0DE92C())
    {
      v15 = OUTLINED_FUNCTION_50_0();
      *v15 = 0;
      v16 = sub_1DD0DD83C();
      _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v13, v14, v16, "MakeResolutionResults", "", v15, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_99_8();
    v17();
    sub_1DD0DD8CC();
    swift_allocObject();
    OUTLINED_FUNCTION_33_4();
    v48[1] = sub_1DD0DD8BC();
    (*(v5 + 8))(v11, v3);
    v18 = sub_1DCB369DC(v1);
    if (!v18)
    {
      goto LABEL_39;
    }

    v1 = v18;
    v19 = sub_1DCB08B14(v18);
    v54 = 0;
    v20 = 0;
    v51 = v1 & 0xC000000000000001;
    v52 = v19;
    v50 = v1 + 32;
    v21 = MEMORY[0x1E69E7CC8];
    v22 = 0xE000000000000000;
    v3 = &selRef_setResetFlowTaskState_;
    v5 = 1;
    v49 = v1;
LABEL_6:
    if (v20 == v52)
    {

LABEL_28:
      v43 = v54;
      type metadata accessor for ParameterResolutionResult();
      swift_allocObject();
      v44 = v53;
      sub_1DCB35974(v53, v21, v43, v22, 0);
      v45 = qword_1EDE4F900;
      v46 = v44;
      if (v45 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v47 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v47, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    v23 = v51;
    sub_1DCB35460(v20, v51 == 0, v1);
    if (v23)
    {
      v24 = MEMORY[0x1E12A72C0](v20, v1);
    }

    else
    {
      v24 = *(v50 + 8 * v20);
    }

    v25 = v24;
    v26 = __OFADD__(v20, 1);
    v11 = (v20 + 1);
    if (v26)
    {
      goto LABEL_35;
    }

    v27 = OUTLINED_FUNCTION_48_5();
    v54 = sub_1DCB35468(v27, v28);
    v58 = v29;
    if (!v29)
    {
      break;
    }

    sub_1DCB361E8();
    if (!v30)
    {

      sub_1DCB3B864();

      OUTLINED_FUNCTION_49();
      return;
    }

    v31 = v30;
    v55 = v11;
    v57 = v25;
    v32 = OUTLINED_FUNCTION_48_5();
    v34 = sub_1DCB35468(v32, v33);
    if (!v35)
    {
      goto LABEL_38;
    }

    v36 = v34;
    v37 = v35;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v21;
    sub_1DCB361D4(v31, v36, v37, isUniquelyReferenced_nonNull_native);

    v56 = v59;
    v39 = sub_1DCB08B14(v31);
    for (i = 0; ; ++i)
    {
      if (v39 == i)
      {

        v22 = v58;
        v20 = v55;
        v21 = v56;
        v1 = v49;
        goto LABEL_6;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1E12A72C0](i, v31);
      }

      else
      {
        if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v41 = *(v31 + 8 * i + 32);
      }

      v11 = v41;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v1 = [v41 resolutionResultCode];

      if (v1 > 7 || ((1 << v1) & 0xA1) == 0)
      {

        v22 = v58;
        v21 = v56;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

id sub_1DCB35F18()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = [v2 batchSlotResolutionResult];
  sub_1DCB36A4C();
  v8 = v7;

  if (!v8)
  {
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_93_8();
    v17 = 0xD000000000000037;
LABEL_10:
    *v5 = CommandFailure.init(errorCode:reason:)(v15, v17, v16);
    goto LABEL_11;
  }

  result = [v3 batchSlotResolutionResult];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  sub_1DCB359BC();
  v12 = v11;

  if (!v12)
  {

    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    OUTLINED_FUNCTION_94_9();
    v17 = v18 + 15;
LABEL_9:
    v16 = v1 | 0x8000000000000000;
    v15 = -1;
    goto LABEL_10;
  }

  v13 = [v3 confirmIntentCompleted];
  sub_1DCB389FC();
  v1 = v14;

  if (!v1)
  {

    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    OUTLINED_FUNCTION_94_9();
    v17 = v19 + 6;
    goto LABEL_9;
  }

  *v5 = v8;
  v5[1] = v12;
  v5[2] = v1;
  type metadata accessor for ResolveConfirmProcessingResult(0);
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB0, &qword_1DD103690);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_5();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCB360BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_2_30(a1, a2, a3);
  OUTLINED_FUNCTION_0_17();
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v14 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v14, v6);
    OUTLINED_FUNCTION_5_21();
    if (!v16)
    {
      goto LABEL_14;
    }

    v10 = v15;
  }

  if (v9)
  {
    *(*(*v8 + 56) + 8 * v10) = v7;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_8_22();
    sub_1DCB361A4(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_49();
  }
}

unint64_t sub_1DCB361A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

void sub_1DCB361E8()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD0DE01C();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = [v5 _intentInstanceDescription];
  v15 = sub_1DCB35468(v3, &selRef_base64EncodedProtobufMessage);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    sub_1DD0DAEEC();
    OUTLINED_FUNCTION_16_10();
    if (!(!v22 & v21))
    {
      v36 = v19;
      v1 = v20;

      goto LABEL_14;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v23 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);

    v24 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_125_4();

    if (!os_log_type_enabled(v24, v1))
    {

LABEL_36:

LABEL_37:
      goto LABEL_38;
    }

    v25 = OUTLINED_FUNCTION_151();
    v26 = OUTLINED_FUNCTION_83();
    v96 = v26;
    *v25 = 136315138;
    v27 = sub_1DCB10E9C(v17, v18, &v96);

    *(v25 + 4) = v27;
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v28, v29, v30, v31, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_80();
LABEL_21:
    OUTLINED_FUNCTION_41_26();
    goto LABEL_36;
  }

  v32 = sub_1DCB35468(v3, &selRef_jsonEncodedSlotResolutionResult);
  if (!v33)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v38 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v38, qword_1EDE57E00);
    v24 = sub_1DD0DD8EC();
    v39 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_5(v39))
    {
      goto LABEL_36;
    }

LABEL_20:
    v40 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_74_18(v40);
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v41, v42, v43, v44, v0, 2u);
    goto LABEL_21;
  }

  v0 = v32;
  sub_1DD0DE00C();
  sub_1DD0DDFCC();
  OUTLINED_FUNCTION_102_6();

  (*(v8 + 8))(v13, v6);
  if (v1 >> 60 == 15)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v34 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
    v24 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_5(v35))
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v65 = OUTLINED_FUNCTION_20();
  v36 = v0;
  if (sub_1DCF49B24(v65, v66, v5))
  {

    v67 = OUTLINED_FUNCTION_19();
    sub_1DCB2C520(v67, v68);
    goto LABEL_38;
  }

LABEL_14:
  sub_1DCB35468(v3, &selRef_keyPath);
  if (v37)
  {
    sub_1DD0DDF8C();
    OUTLINED_FUNCTION_33_4();
  }

  else
  {
    v3 = 0;
  }

  v45 = [v14 slotByName_];

  if (!v45)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v59 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v59, qword_1EDE57E00);
    v24 = sub_1DD0DD8EC();
    v60 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v60))
    {
      v61 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_74_18(v61);
      OUTLINED_FUNCTION_59_22(&dword_1DCAFC000, v62, v60, "Failed to unwrap object.");
      OUTLINED_FUNCTION_41_26();
    }

    v63 = OUTLINED_FUNCTION_19();
    sub_1DCB21A14(v63, v64);
    goto LABEL_36;
  }

  if (![v45 resolutionResultClass])
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_19();
  sub_1DD0DAEFC();
  OUTLINED_FUNCTION_33_4();
  v46 = [swift_getObjCClassFromMetadata() _resolutionResultWithData_slotDescription_];

  v96 = v46;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAAF0, &qword_1DD103308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB90, &unk_1DD0E8AB0);
  if (swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v47 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v47, qword_1EDE57E00);
    v48 = v45;
    v49 = sub_1DD0DD8EC();
    v50 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_75(v50))
    {
      v82 = OUTLINED_FUNCTION_19();
      sub_1DCB21A14(v82, v83);

      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    v94 = v14;
    v95 = v36;
    v51 = OUTLINED_FUNCTION_151();
    v52 = OUTLINED_FUNCTION_83();
    v96 = v52;
    *v51 = 136315138;
    sub_1DCB35468(v48, &selRef_name);
    v54 = v53;

    if (v54)
    {
      v55 = OUTLINED_FUNCTION_17_1();
      v58 = sub_1DCB10E9C(v55, v56, v57);

      *(v51 + 4) = v58;
      _os_log_impl(&dword_1DCAFC000, v49, v50, "Found a multicardinal resolution result for parameter %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
      sub_1DCB21A14(v95, v1);

      swift_unknownObjectRelease();
LABEL_38:
      OUTLINED_FUNCTION_49();
      return;
    }

    goto LABEL_56;
  }

  objc_opt_self();
  v69 = swift_dynamicCastObjCClass();
  if (!v69)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v84 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v84, qword_1EDE57E00);
    v85 = sub_1DD0DD8EC();
    v86 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v86))
    {
      v87 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_74_18(v87);
      OUTLINED_FUNCTION_59_22(&dword_1DCAFC000, v88, v86, "Unable to convert data provider into either multicardinal results or single results.");
      OUTLINED_FUNCTION_41_26();
    }

    v89 = OUTLINED_FUNCTION_19();
    sub_1DCB21A14(v89, v90);

    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v70 = v69;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v71 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v71, qword_1EDE57E00);
  v72 = v45;
  v73 = sub_1DD0DD8EC();
  v74 = sub_1DD0DE6DC();
  if (!OUTLINED_FUNCTION_75(v74))
  {

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_151();
  v75 = OUTLINED_FUNCTION_109();
  v96 = v75;
  *v45 = 136315138;
  sub_1DCB35468(v72, &selRef_name);
  v77 = v76;

  if (v77)
  {
    v78 = OUTLINED_FUNCTION_17_1();
    v81 = sub_1DCB10E9C(v78, v79, v80);

    *(v45 + 1) = v81;
    _os_log_impl(&dword_1DCAFC000, v73, v74, "Found a single resolution result for parameter %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();

LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    OUTLINED_FUNCTION_92_2();
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1DD0E15D0;
    *(v91 + 32) = v70;

    v92 = OUTLINED_FUNCTION_19();
    sub_1DCB21A14(v92, v93);
    goto LABEL_38;
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_1DCB369DC(void *a1)
{
  v1 = [a1 stepResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DCB10E5C(0, &qword_1EDE46250, 0x1E69C7838);
  v3 = sub_1DD0DE2EC();

  return v3;
}

void sub_1DCB36A4C()
{
  OUTLINED_FUNCTION_20_10();
  v2 = v1;
  v3 = sub_1DD0DE01C();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  if (!v2)
  {
    goto LABEL_15;
  }

  v8 = sub_1DCB35468(v2, &selRef_base64EncodedIntent);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_1DD0DAEEC();
    OUTLINED_FUNCTION_16_10();
    if (!(!v13 & v12))
    {

      goto LABEL_20;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v14 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);

    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();

    if (!os_log_type_enabled(v15, v16))
    {

      goto LABEL_31;
    }

    v17 = OUTLINED_FUNCTION_151();
    v18 = OUTLINED_FUNCTION_83();
    v50 = v18;
    *v17 = 136315138;
    v19 = sub_1DCB10E9C(v10, v11, &v50);

    *(v17 + 4) = v19;
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_37();
LABEL_19:
    OUTLINED_FUNCTION_62();
LABEL_31:

    goto LABEL_32;
  }

  sub_1DCB35468(v2, &selRef_jsonEncodedIntent);
  if (!v25)
  {
LABEL_15:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v30 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
    v15 = sub_1DD0DD8EC();
    v31 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_22(v31))
    {
      goto LABEL_31;
    }

LABEL_18:
    v32 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v32);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v33, v34, v35, v36, v37, 2u);
    goto LABEL_19;
  }

  sub_1DD0DE00C();
  sub_1DD0DDFCC();
  v27 = v26;

  (*(v5 + 8))(v0, v3);
  if (v27 >> 60 == 15)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v28 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
    v15 = sub_1DD0DD8EC();
    v29 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_22(v29))
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

LABEL_20:
  sub_1DCB35468(v2, &selRef_typeName);
  if (v38)
  {
    v39 = sub_1DD0DDF8C();
  }

  else
  {
    v39 = 0;
  }

  OUTLINED_FUNCTION_86();
  v40 = sub_1DD0DAEFC();
  v41 = INIntentCreate();

  if (v41)
  {
    v42 = OUTLINED_FUNCTION_86();
    sub_1DCB21A14(v42, v43);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v44 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
    v45 = sub_1DD0DD8EC();
    v46 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v46))
    {
      v47 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v47);
      _os_log_impl(&dword_1DCAFC000, v45, v46, "Failed to create object", v40, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v48 = OUTLINED_FUNCTION_86();
    sub_1DCB21A14(v48, v49);
  }

LABEL_32:
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1DCB36E44()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t sub_1DCB36E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(int, int, int, int, int, int, int, int, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RCHDelegateToNeedsValueFlowStrategyAdapter(0, a5, a6, a4);
  OUTLINED_FUNCTION_1_100(v12, v13, v14, v15, v16, v17, v18, v19, *&v53[0], *(&v53[0] + 1));
  *&v54[0] = sub_1DCB84D04();
  swift_getWitnessTable();
  v20 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  v22 = v21;
  swift_unknownObjectRetain();

  v23 = sub_1DCB370A4(*a4, a4[1]);
  *a4 = v20;
  a4[1] = v22;
  OUTLINED_FUNCTION_1_100(v23, v24, v25, v26, v27, v28, v29, v30, *&v53[0], *(&v53[0] + 1));
  OUTLINED_FUNCTION_7_3();
  v31 = swift_allocObject();
  *(v31 + 16) = a5;
  *(v31 + 24) = a6;
  *(v31 + 32) = a1;
  sub_1DCAFF9E8(v54, v31 + 40);
  v32 = a4[2];
  v33 = a4[3];
  swift_unknownObjectRetain();
  sub_1DCB370A4(v32, v33);
  a4[2] = sub_1DCED7774;
  a4[3] = v31;
  v34 = OUTLINED_FUNCTION_0_96();
  v38 = type metadata accessor for RCHDelegateToNeedsDisambiguationFlowStrategyAdapter(v34, v35, v36, v37);
  OUTLINED_FUNCTION_1_100(v38, v39, v40, v41, v42, v43, v44, v45, *&v53[0], *(&v53[0] + 1));
  sub_1DCB17CA0(a3, v53);
  *&v54[0] = sub_1DCB84E4C(a1, v54, v53);
  swift_getWitnessTable();
  v46 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  v48 = v47;
  swift_unknownObjectRetain();

  sub_1DCB370A4(a4[4], a4[5]);
  a4[4] = v46;
  a4[5] = v48;
  sub_1DCB17CA0(a3, v54);
  sub_1DCB17CA0(a2, v53);
  v49 = swift_allocObject();
  *(v49 + 16) = a5;
  *(v49 + 24) = a6;
  sub_1DCAFF9E8(v54, v49 + 32);
  *(v49 + 72) = a1;
  sub_1DCAFF9E8(v53, v49 + 80);
  v50 = a4[8];
  v51 = a4[9];
  swift_unknownObjectRetain();
  result = sub_1DCB370A4(v50, v51);
  a4[8] = sub_1DCED7C00;
  a4[9] = v49;
  return result;
}

uint64_t sub_1DCB370A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DCB370B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return swift_deallocObject();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)())(int, int, int, int, int, int, int, int, uint64_t)
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
  *(v18 + 32) = sub_1DCEBF854;
  *(v18 + 40) = v1;
  return j__OUTLINED_FUNCTION_7_57;
}

uint64_t sub_1DCB371F0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return v0;
}

uint64_t sub_1DCB37228()
{
  sub_1DCB371F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB3725C()
{
  sub_1DCB3728C();

  return swift_deallocClassInstance();
}

void *sub_1DCB3728C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  return v0;
}

uint64_t sub_1DCB372C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 96))(a4, a5))
  {
    v10 = OUTLINED_FUNCTION_0_96();
    type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy(v10, v11, v12, v13);
    sub_1DCB17CA0(a2, v21);
    *&v21[0] = sub_1DCED8FD4(a1, v21);
    swift_getWitnessTable();
    v14 = static RCHChildFlowFactoryHelper.makeConfirmIntentWithAutoCompletionFlowProducer<A>(strategy:)();
    v16 = v15;
    swift_unknownObjectRetain();

    result = sub_1DCB370A4(*(a3 + 80), *(a3 + 88));
    *(a3 + 80) = v14;
    *(a3 + 88) = v16;
  }

  else
  {
    sub_1DCB17CA0(a2, v21);
    OUTLINED_FUNCTION_7_3();
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a1;
    sub_1DCAFF9E8(v21, (v18 + 5));
    v19 = *(a3 + 80);
    v20 = *(a3 + 88);
    swift_unknownObjectRetain();
    result = sub_1DCB370A4(v19, v20);
    *(a3 + 80) = sub_1DCED8784;
    *(a3 + 88) = v18;
  }

  return result;
}

uint64_t (*static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)())()
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
  *(v18 + 32) = sub_1DCEC433C;
  *(v18 + 40) = v1;
  return sub_1DCEC9040;
}

uint64_t sub_1DCB37504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_100(a1, a2, a3, a4, a5, a6, a7, a8, *&v32[0], *(&v32[0] + 1));
  OUTLINED_FUNCTION_7_3();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a1;
  sub_1DCAFF9E8(v33, (v13 + 5));
  v14 = a4[14];
  v15 = a4[15];
  swift_unknownObjectRetain();
  sub_1DCB370A4(v14, v15);
  a4[14] = sub_1DCED8720;
  a4[15] = v13;
  v16 = OUTLINED_FUNCTION_0_96();
  v20 = type metadata accessor for RCHDelegateToHandleIntentFlowStrategy(v16, v17, v18, v19);
  OUTLINED_FUNCTION_1_100(v20, v21, v22, v23, v24, v25, v26, v27, *&v32[0], *(&v32[0] + 1));
  sub_1DCB17CA0(a3, v32);
  *&v33[0] = sub_1DCB869F4(a1, v33, v32);
  swift_getWitnessTable();
  v28 = static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  v30 = v29;
  swift_unknownObjectRetain();

  result = sub_1DCB370A4(a4[12], a4[13]);
  a4[12] = v28;
  a4[13] = v30;
  return result;
}

uint64_t sub_1DCB37644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for RCHDelegateToAppResolutionFlowStrategyAdapter(0, a7, a8, a4);
  sub_1DCB17CA0(a2, v29);
  v15 = sub_1DCB86BC0(a1, v29);
  *&v29[0] = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v18 = static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(strategy:)(v29, v14, AssociatedTypeWitness, WitnessTable);
  v20 = v19;
  v21 = a6[16];
  v22 = a6[17];
  swift_unknownObjectRetain();
  sub_1DCB370A4(v21, v22);
  a6[16] = v18;
  a6[17] = v20;
  sub_1DCB17CA0(a3, v29);
  sub_1DCB17CA0(a4, v28);
  sub_1DCB17CA0(a5, v27);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v15;
  sub_1DCAFF9E8(v29, v23 + 32);
  sub_1DCAFF9E8(v28, v23 + 72);
  sub_1DCAFF9E8(v27, v23 + 112);
  v24 = a6[18];
  v25 = a6[19];
  swift_unknownObjectRetain();
  result = sub_1DCB370A4(v24, v25);
  a6[18] = sub_1DCED86E4;
  a6[19] = v23;
  return result;
}

uint64_t sub_1DCB377E8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);

  return swift_deallocObject();
}

uint64_t sub_1DCB37840()
{
  sub_1DCB3786C();
  OUTLINED_FUNCTION_0_3();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB3786C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t sub_1DCB37950()
{
  sub_1DCB3786C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OutputGenerationManifest(uint64_t a1)
{
  result = qword_1EDE47F30;
  if (!qword_1EDE47F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)()
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

uint64_t sub_1DCB37A98()
{
  sub_1DCB36E44();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ParameterClause(uint64_t a1)
{
  result = qword_1EDE49550;
  if (!qword_1EDE49550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t INIntent.debugDescriptionLite.getter()
{
  v1 = v0;
  v2 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  v18 = qword_1EDE57E18;
  v19 = sub_1DD0DE6DC();
  if (!os_log_type_enabled(v18, v19))
  {
    return 0xD00000000000001BLL;
  }

  v29 = v4;
  v30 = v2;
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_1EDE57DD0);
  (*(v12 + 16))(v17, v20, v10);
  sub_1DD0DD84C();
  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = sub_1DD0DD87C();
  v23 = sub_1DD0DE7FC();
  v24 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v22, v23, v24, "INIntent.debugDescriptionLite", "", v21, 2u);
  sub_1DCB37DE4(v1, &v31);
  v25 = sub_1DD0DE7EC();
  v26 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v22, v25, v26, "INIntent.debugDescriptionLite", "", v21, 2u);

  v27 = v31;
  OUTLINED_FUNCTION_80();
  (*(v29 + 8))(v9, v30);
  (*(v12 + 8))(v17, v10);
  return v27;
}

uint64_t sub_1DCB37DE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DCB3BD10(a1);
  if (!v3)
  {
    sub_1DD0DEC1C();

    swift_getObjectType();
    v105 = sub_1DD0DF2AC();
    MEMORY[0x1E12A6780](v105);

    result = MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD11CE70);
    v101 = 0x746E65746E494E49;
    v103 = 0xE900000000000028;
LABEL_58:
    *a2 = v101;
    a2[1] = v103;
    return result;
  }

  v4 = v3;
  v106 = a2;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v113 = v10;
  v111 = v9;
  v112 = v5;
  if (v8)
  {
    while (1)
    {
LABEL_9:
      v14 = (v4[6] + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v15 = *v14;
      v16 = v14[1];
      v17 = v4[2];

      if (v17 && (v18 = sub_1DCB21038(v15, v16), (v19 & 1) != 0))
      {
        sub_1DCB0DF6C(v4[7] + 32 * v18, &v122);
        sub_1DCB20B30(&v122, &v125);
      }

      else
      {
        v126 = MEMORY[0x1E69E6158];
        *&v125 = 0x3E6C6C756E3CLL;
        *(&v125 + 1) = 0xE600000000000000;
      }

      sub_1DCB0DF6C(&v125, &v122);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);
      v114 = (v8 - 1) & v8;
      v115 = v16;
      v116 = v15;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_27;
      }

      v108 = v12;
      v20 = v118;
      v21 = *(v118 + 16);
      if (!v21)
      {
        break;
      }

      v127 = MEMORY[0x1E69E7CC0];
      sub_1DCB38954();
      v22 = v127;
      v23 = v20 + 32;
      do
      {
        sub_1DCB0DF6C(v23, v121);
        sub_1DCB0DF6C(v121, v117);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B40, &qword_1DD0F3BD0);
        if (swift_dynamicCast())
        {
          sub_1DCAFF9E8(&v118, &v122);
          v24 = v123;
          v25 = v124;
          __swift_project_boxed_opaque_existential_1(&v122, v123);
          v26 = (*(v25 + 8))(v24, v25);
          v28 = v27;
          __swift_destroy_boxed_opaque_existential_1Tm(v121);
          v29 = &v122;
        }

        else
        {
          v120 = 0;
          v118 = 0u;
          v119 = 0u;
          sub_1DCB16D50(&v118, &qword_1ECCA5B48, &qword_1DD0F3BD8);
          sub_1DCB0DF6C(v121, &v122);
          sub_1DD0DE02C();
          sub_1DD0DE0FC();
          v30 = sub_1DD0DE1EC();
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v26 = MEMORY[0x1E12A66E0](v30, v32, v34, v36);
          v28 = v37;

          v29 = v121;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        v127 = v22;
        v38 = *(v22 + 16);
        if (v38 >= *(v22 + 24) >> 1)
        {
          sub_1DCB38954();
          v22 = v127;
        }

        *(v22 + 16) = v38 + 1;
        v39 = v22 + 16 * v38;
        *(v39 + 32) = v26;
        *(v39 + 40) = v28;
        v23 += 32;
        --v21;
      }

      while (v21);

      *&v122 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
      sub_1DCB38974();
      v40 = sub_1DD0DDF6C();
      v42 = v41;

      *&v122 = 91;
      *(&v122 + 1) = 0xE100000000000000;
      MEMORY[0x1E12A6780](v40, v42);

      MEMORY[0x1E12A6780](93, 0xE100000000000000);

      v43 = sub_1DD0DE9CC();
      v45 = v44;
      v47 = v46;
      v107 = v48;
      swift_isUniquelyReferenced_nonNull_native();
      *&v122 = v108;
      v49 = sub_1DCB21038(v116, v115);
      if (__OFADD__(v108[2], (v50 & 1) == 0))
      {
        goto LABEL_62;
      }

      v51 = v49;
      v52 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B50, &unk_1DD0F3BE0);
      if (sub_1DD0DEDCC())
      {
        v53 = v116;
        v54 = sub_1DCB21038(v116, v115);
        if ((v52 & 1) != (v55 & 1))
        {
          goto LABEL_65;
        }

        v51 = v54;
      }

      else
      {
        v53 = v116;
      }

      v12 = v122;
      if (v52)
      {
        v96 = (*(v122 + 56) + 32 * v51);
        *v96 = v43;
        v96[1] = v45;
        v96[2] = v47;
        v96[3] = v107;
      }

      else
      {
        sub_1DCB3B4FC(v51, v53, v115, v43, v45, v47, v107, v122);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v125);
LABEL_54:
      v5 = v112;
      v4 = v113;
      v9 = v111;
      v8 = v114;
      if (!v114)
      {
        goto LABEL_5;
      }
    }

    v12 = v108;
LABEL_27:
    sub_1DCB0DF6C(&v125, v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B40, &qword_1DD0F3BD0);
    if (swift_dynamicCast())
    {
      sub_1DCAFF9E8(&v118, &v122);
      v56 = v123;
      v57 = v124;
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      (*(v57 + 8))(v56, v57);
      v109 = sub_1DD0DE9CC();
      v59 = v58;
      v61 = v60;
      v63 = v62;
      swift_isUniquelyReferenced_nonNull_native();
      *&v118 = v12;
      v64 = sub_1DCB21038(v116, v16);
      if (__OFADD__(v12[2], (v65 & 1) == 0))
      {
        goto LABEL_61;
      }

      v66 = v64;
      v67 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B50, &unk_1DD0F3BE0);
      if (sub_1DD0DEDCC())
      {
        v68 = v116;
        v69 = sub_1DCB21038(v116, v115);
        if ((v67 & 1) != (v70 & 1))
        {
          goto LABEL_65;
        }

        v66 = v69;
      }

      else
      {
        v68 = v116;
      }

      if (v67)
      {

        v12 = v118;
        v84 = (*(v118 + 56) + 32 * v66);
        *v84 = v109;
        v84[1] = v59;
        v84[2] = v61;
        v84[3] = v63;
      }

      else
      {
        v12 = v118;
        *(v118 + 8 * (v66 >> 6) + 64) |= 1 << v66;
        v86 = (v12[6] + 16 * v66);
        *v86 = v68;
        v86[1] = v115;
        v87 = (v12[7] + 32 * v66);
        *v87 = v109;
        v87[1] = v59;
        v87[2] = v61;
        v87[3] = v63;
        v88 = v12[2];
        v89 = __OFADD__(v88, 1);
        v90 = v88 + 1;
        if (v89)
        {
          goto LABEL_64;
        }

        v12[2] = v90;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v125);
      v91 = &v122;
    }

    else
    {
      v120 = 0;
      v118 = 0u;
      v119 = 0u;
      sub_1DCB16D50(&v118, &qword_1ECCA5B48, &qword_1DD0F3BD8);
      sub_1DCB0DF6C(&v125, &v122);
      sub_1DD0DE02C();
      sub_1DD0DE0FC();
      v110 = sub_1DD0DE1EC();
      v72 = v71;
      v74 = v73;
      v76 = v75;

      swift_isUniquelyReferenced_nonNull_native();
      *&v122 = v12;
      v77 = sub_1DCB21038(v15, v16);
      if (__OFADD__(v12[2], (v78 & 1) == 0))
      {
        goto LABEL_60;
      }

      v79 = v77;
      v80 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B50, &unk_1DD0F3BE0);
      if (sub_1DD0DEDCC())
      {
        v81 = v116;
        v82 = sub_1DCB21038(v116, v115);
        if ((v80 & 1) != (v83 & 1))
        {
          goto LABEL_65;
        }

        v79 = v82;
      }

      else
      {
        v81 = v116;
      }

      v12 = v122;
      if (v80)
      {
        v85 = (*(v122 + 56) + 32 * v79);
        *v85 = v110;
        v85[1] = v72;
        v85[2] = v74;
        v85[3] = v76;
      }

      else
      {
        *(v122 + 8 * (v79 >> 6) + 64) |= 1 << v79;
        v92 = (v12[6] + 16 * v79);
        *v92 = v81;
        v92[1] = v115;
        v93 = (v12[7] + 32 * v79);
        *v93 = v110;
        v93[1] = v72;
        v93[2] = v74;
        v93[3] = v76;
        v94 = v12[2];
        v89 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v89)
        {
          goto LABEL_63;
        }

        v12[2] = v95;
      }

      v91 = &v125;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    goto LABEL_54;
  }

LABEL_5:
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      swift_getObjectType();
      *&v122 = sub_1DD0DF2AC();
      *(&v122 + 1) = v97;
      MEMORY[0x1E12A6780](40, 0xE100000000000000);
      v98 = sub_1DD0DDE7C();
      v100 = v99;

      MEMORY[0x1E12A6780](v98, v100);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      *&v118 = 92;
      *(&v118 + 1) = 0xE100000000000000;
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;
      sub_1DCB1C4D8();
      v101 = sub_1DD0DEA3C();
      v103 = v102;

      a2 = v106;
      goto LABEL_58;
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1DD0DF12C();
  __break(1u);
  return result;
}

void sub_1DCB38890()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v6);
      OUTLINED_FUNCTION_11_18(v7 / 16);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCB341E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1DCB38974()
{
  result = qword_1EDE46280;
  if (!qword_1EDE46280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA2758, &unk_1DD0E6880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46280);
  }

  return result;
}

void sub_1DCB389FC()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_70();
  v6 = sub_1DD0DE01C();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  if (!v0)
  {
    goto LABEL_12;
  }

  v11 = [v0 intentResponse];
  if (!v11)
  {
    sub_1DCB35468(v0, &selRef_jsonEncodedIntentResponse);
    if (v17)
    {
      sub_1DD0DE00C();
      sub_1DD0DDFCC();
      v19 = v18;

      (*(v8 + 8))(v1, v6);
      if (v19 >> 60 != 15)
      {
        v53[0] = v5;
        v53[1] = v3;

        v32 = OUTLINED_FUNCTION_126_1();
        MEMORY[0x1E12A6780](v32, 0xE800000000000000);
        goto LABEL_19;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      if (!OUTLINED_FUNCTION_22(v22))
      {
LABEL_16:

LABEL_27:
        OUTLINED_FUNCTION_49();
        return;
      }

LABEL_15:
      v25 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v25);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_62();
      goto LABEL_16;
    }

LABEL_12:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v23 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
    v21 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_22(v24))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = v11;
  sub_1DCB3B800(v11);
  OUTLINED_FUNCTION_16_10();
  if (!(!v14 & v13))
  {
    v15 = [v12 typeName];
    if (!v15)
    {

      v31 = 0;
      goto LABEL_20;
    }

    v16 = v15;
    sub_1DD0DDFBC();

LABEL_19:
    v31 = sub_1DD0DDF8C();

LABEL_20:
    OUTLINED_FUNCTION_19();
    v33 = sub_1DD0DAEFC();
    v34 = INIntentResponseCreate();

    if (v34)
    {
      v35 = OUTLINED_FUNCTION_19();
      sub_1DCB21A14(v35, v36);
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v37 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v37, qword_1EDE57E00);
      v38 = v0;
      v39 = sub_1DD0DD8EC();
      v40 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v39, v40))
      {
        OUTLINED_FUNCTION_151();
        v41 = OUTLINED_FUNCTION_109();
        v53[0] = v41;
        *v33 = 136315138;
        v42 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA8, &qword_1DD103688);
        v43 = sub_1DD0DE02C();
        v45 = sub_1DCB10E9C(v43, v44, v53);

        *(v33 + 1) = v45;
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_37();
      }

      v51 = OUTLINED_FUNCTION_19();
      sub_1DCB21A14(v51, v52);
    }

    goto LABEL_27;
  }

  __break(1u);
}

uint64_t type metadata accessor for ResolveConfirmProcessingResult(uint64_t a1)
{
  result = qword_1EDE46940;
  if (!qword_1EDE46940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB38E1C()
{
  v40 = v0;
  sub_1DCB74408(*(v0 + 144), "SubmitProcessIntent", 19, 2, *(v0 + 152));

  v1 = OUTLINED_FUNCTION_15_9();
  v2(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = OUTLINED_FUNCTION_20();
  sub_1DCB390C4(v6, v7, v5);
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();
  v10 = OUTLINED_FUNCTION_20();
  sub_1DCB390D0(v10, v11, v5);
  if (os_log_type_enabled(v8, v9))
  {
    v12 = OUTLINED_FUNCTION_151();
    v13 = OUTLINED_FUNCTION_83();
    v38 = v13;
    *v12 = 136315138;
    *(v0 + 32) = v3;
    *(v0 + 40) = v4;
    *(v0 + 41) = v5;
    v14 = OUTLINED_FUNCTION_20();
    sub_1DCB390C4(v14, v15, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAABE0, &qword_1DD1036B8);
    v16 = sub_1DD0DE02C();
    v18 = sub_1DCB10E9C(v16, v17, &v38);

    *(v12 + 4) = v18;
    OUTLINED_FUNCTION_61_3();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_14_3();
  }

  if (v5)
  {
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    v38 = v3;
    v39 = v4;
    v26 = OUTLINED_FUNCTION_20();
    sub_1DCB6DECC(v26, v27);
    sub_1DCF46B44(v24, &v38, v25);
    v28 = OUTLINED_FUNCTION_20();
    sub_1DCB390D0(v28, v29, 1);
    v30 = OUTLINED_FUNCTION_20();
    sub_1DCB390D0(v30, v31, 1);
  }

  else
  {
    sub_1DCB390DC();
    v32 = OUTLINED_FUNCTION_20();
    sub_1DCB390D0(v32, v33, 0);
    OUTLINED_FUNCTION_124();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v35 = *(v0 + 104);
    if (EnumCaseMultiPayload == 1)
    {
      **(v0 + 48) = *v35;
    }

    else
    {
      sub_1DCB3998C(v35, *(v0 + 48), type metadata accessor for ResolveConfirmProcessingResult);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_29();

  return v36();
}

id sub_1DCB390C4(id a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return sub_1DCB6DECC(a1, a2);
  }

  else
  {
    return a1;
  }
}

void sub_1DCB390D0(id a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    sub_1DCB6DE90(a1, a2);
  }

  else
  {
  }
}

void sub_1DCB390DC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v86[1] = v3;
  v86[2] = v4;
  v6 = v5;
  v87 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v9 = OUTLINED_FUNCTION_20_0(v8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v86[0] = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v86 - v14;
  v16 = type metadata accessor for NLContextUpdate(0);
  v17 = OUTLINED_FUNCTION_20_0(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  v22 = [v6 batchSlotResolutionResult];
  if (v22)
  {
    v23 = v22;
    NLContextUpdate.init()(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    OUTLINED_FUNCTION_92_2();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DD0E15D0;
    *(v24 + 32) = v23;
    v25 = v23;

    *(v21 + 16) = v24;
    v26 = v2[10];
    v27 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v26);
    v28 = (*(v27 + 88))(v26, v27) & 1;
    v29 = v2[5];
    v30 = v2[6];
    v0 = __swift_project_boxed_opaque_existential_1(v2 + 2, v29);
    v88 = v28;
    v31 = NLContextUpdate.doConvertToAceContextUpdate(options:)(&v88);
    AceServiceInvokerAsync.submitAndForget(_:)(v31, v29, v30);

    sub_1DCB41F98(v21);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v32 = sub_1DD0DD8FC();
  v33 = __swift_project_value_buffer(v32, qword_1EDE57E00);
  v34 = v6;
  v35 = sub_1DD0DD8EC();
  v36 = sub_1DD0DE6CC();

  if (os_log_type_enabled(v35, v36))
  {
    v0 = OUTLINED_FUNCTION_151();
    v37 = swift_slowAlloc();
    *v0 = 138412290;
    *(v0 + 4) = v34;
    *v37 = v34;
    v38 = v34;
    _os_log_impl(&dword_1DCAFC000, v35, v36, "Process Intent Command completed with response %@", v0, 0xCu);
    sub_1DCB16D50(v37, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_41_26();
  }

  v39 = sub_1DCB35468(v34, &selRef_lastAttemptedStep);
  v41 = v40;
  v42 = sub_1DD0DDFBC();
  if (v41)
  {
    if (v42 == v39 && v41 == v43)
    {

LABEL_23:

      v48 = sub_1DD0DD8EC();
      v49 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v49))
      {
        v50 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_74_18(v50);
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v51, v52, v53, v54, v0, 2u);
        OUTLINED_FUNCTION_41_26();
      }

      sub_1DCB8C088(v34, v87);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_99_8();
    v0 = sub_1DD0DF0AC();

    if (v0)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v45 = sub_1DD0DDFBC();
  if (v41)
  {
    if (v45 == v39 && v41 == v46)
    {

LABEL_35:

      v59 = sub_1DD0DD8EC();
      v60 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v60))
      {
        v61 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_74_18(v61);
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v62, v63, v64, v65, v0, 2u);
        OUTLINED_FUNCTION_41_26();
      }

      sub_1DCB35F18();
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_99_8();
    v0 = sub_1DD0DF0AC();

    if (v0)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v55 = sub_1DD0DDFBC();
  if (v41)
  {
    if (v55 == v39 && v41 == v56)
    {

      goto LABEL_47;
    }

    v58 = sub_1DD0DF0AC();

    if (v58)
    {
LABEL_47:
      OUTLINED_FUNCTION_0_1();
      v77 = v76;
      (*(v78 + 16))(v15, v33, v32);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v32);
      v79 = v86[0];
      sub_1DCBCF6C8(v15, v86[0]);
      if (__swift_getEnumTagSinglePayload(v79, 1, v32) == 1)
      {
        sub_1DCB16D50(v86[0], &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v80 = sub_1DD0DD8EC();
        v81 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = OUTLINED_FUNCTION_83();
          v88 = swift_slowAlloc();
          *v82 = 136315650;
          v83 = sub_1DD0DEC3C();
          v85 = sub_1DCB10E9C(v83, v84, &v88);

          *(v82 + 4) = v85;
          *(v82 + 12) = 2048;
          *(v82 + 14) = 232;
          *(v82 + 22) = 2080;
          *(v82 + 24) = sub_1DCB10E9C(0xD00000000000006ALL, 0x80000001DD1251E0, &v88);
          _os_log_impl(&dword_1DCAFC000, v80, v81, "FatalError at %s:%lu - %s", v82, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_80();
        }

        (*(v77 + 8))(v86[0], v32);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000006ALL, 0x80000001DD1251E0);
    }
  }

  else
  {
  }

  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v88 = 0xD000000000000020;
  v89 = 0x80000001DD1251B0;
  v66 = sub_1DCB35468(v34, &selRef_lastAttemptedStep);
  if (v67)
  {
    v68 = v67;
  }

  else
  {
    v66 = 0x3E6C696E3CLL;
    v68 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v66, v68);

  v69 = v88;
  v70 = v89;
  v71 = sub_1DD0DD8EC();
  v72 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v72))
  {
    v73 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_74_18(v73);
    OUTLINED_FUNCTION_59_22(&dword_1DCAFC000, v74, v72, "Unknown ExecutionStep received");
    OUTLINED_FUNCTION_41_26();
  }

  type metadata accessor for CommandFailure();
  OUTLINED_FUNCTION_41_4();
  swift_allocObject();
  v75 = CommandFailure.init(errorCode:reason:)(-1, v69, v70);
  *v87 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB0, &qword_1DD103690);
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
LABEL_45:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB398D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DCB3992C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DCB3998C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DCB399F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB39AF4()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_103_8();
  sub_1DCB3B864();

  OUTLINED_FUNCTION_108_8();

  OUTLINED_FUNCTION_29();

  return v1();
}

void OUTLINED_FUNCTION_104_2(const char *a1, uint64_t a2)
{

  sub_1DCB70034(a1, a2, 2, v2);
}

uint64_t OUTLINED_FUNCTION_104_3(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_104_4(uint64_t a1, uint64_t a2)
{

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_104_5()
{

  sub_1DCB7C864(v0);
}

uint64_t sub_1DCB39C34()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  v2[16] = v5;
  *v5 = v4;
  v5[1] = sub_1DCB3CEF4;
  v6 = v1[9];
  v7 = v1[5];
  v8 = v1[4];
  v9 = v1[3];

  return sub_1DCB39DBC(v9, v6, v8, v7);
}

uint64_t sub_1DCB39DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v5[31] = *v4;
  type metadata accessor for ResolveConfirmProcessingResult(0);
  v5[32] = swift_task_alloc();
  v5[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB39EB8, 0, 0);
}

BOOL OUTLINED_FUNCTION_86_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_86_5(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_86_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_86_8()
{
}

uint64_t OUTLINED_FUNCTION_86_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for RCHFlow(0, v4, a1, a4);
}

void OUTLINED_FUNCTION_86_12()
{
}

void *initializeWithCopy for ResolveConfirmProcessingResult(void *a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *a2;
  *a1 = *a2;
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      a1[1] = v8;
      a1[2] = v7;
      v9 = v6;
      sub_1DD0DCF8C();
    }

    a1[1] = *(a2 + 8);
    v20 = v6;
    sub_1DD0DCF8C();
  }

  v10 = *(a2 + 16);
  a1[1] = *(a2 + 8);
  a1[2] = v10;
  v11 = v6;

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
  v13 = a1 + v12;
  v14 = a2 + v12;
  *(a1 + v12) = *(a2 + v12);
  v15 = *(type metadata accessor for ParameterClause(0) + 20);
  v16 = &v13[v15];
  v17 = (v14 + v15);
  v18 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v19 = sub_1DD0DC76C();
      (*(*(v19 - 8) + 16))(v16, v17, v19);
      goto LABEL_29;
    case 1u:
      v29 = sub_1DD0DC76C();
      (*(*(v29 - 8) + 16))(v16, v17, v29);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v16[*(v30 + 48)] = *&v17[*(v30 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v23 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v23;
      *(v16 + 2) = *(v17 + 2);

      goto LABEL_29;
    case 3u:
      *v16 = *v17;
      swift_unknownObjectRetain();
      goto LABEL_29;
    case 4u:
      v21 = sub_1DD0DB1EC();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      goto LABEL_29;
    case 5u:
      v31 = *v17;
      *v16 = *v17;
      v32 = v31;
      goto LABEL_29;
    case 6u:
      v33 = sub_1DD0DB4BC();
      (*(*(v33 - 8) + 16))(v16, v17, v33);
      v34 = type metadata accessor for USOParse(0);
      v35 = v34[5];
      v36 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v17[v35], 1, v36))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v16[v35], &v17[v35], *(*(v37 - 8) + 64));
      }

      else
      {
        (*(*(v36 - 8) + 16))(&v16[v35], &v17[v35], v36);
        __swift_storeEnumTagSinglePayload(&v16[v35], 0, 1, v36);
      }

      v69 = v34[6];
      v70 = &v16[v69];
      v71 = &v17[v69];
      v72 = *(v71 + 1);
      *v70 = *v71;
      *(v70 + 1) = v72;
      v73 = v34[7];
      v74 = &v16[v73];
      v75 = &v17[v73];
      v74[4] = v75[4];
      *v74 = *v75;

      goto LABEL_29;
    case 7u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 16))(v16, v17, v24);
      v25 = type metadata accessor for USOParse(0);
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v17[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v16[v26], &v17[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 16))(&v16[v26], &v17[v26], v27);
        __swift_storeEnumTagSinglePayload(&v16[v26], 0, 1, v27);
      }

      v49 = v25[6];
      v50 = &v16[v49];
      v51 = &v17[v49];
      v52 = *(v51 + 1);
      *v50 = *v51;
      *(v50 + 1) = v52;
      v53 = v25[7];
      v54 = &v16[v53];
      v55 = &v17[v53];
      v54[4] = v55[4];
      *v54 = *v55;
      v56 = type metadata accessor for LinkParse(0);
      v57 = v56[5];
      v58 = &v16[v57];
      v59 = &v17[v57];
      v60 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v60;
      v61 = v56[6];
      v62 = &v16[v61];
      v63 = &v17[v61];
      v64 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v64;
      v65 = v56[7];
      v66 = &v16[v65];
      v67 = &v17[v65];
      v68 = *(v67 + 1);
      *v66 = *v67;
      *(v66 + 1) = v68;

      goto LABEL_29;
    case 8u:
      v38 = sub_1DD0DD12C();
      (*(*(v38 - 8) + 16))(v16, v17, v38);
      v39 = type metadata accessor for NLRouterParse(0);
      v40 = *(v39 + 20);
      v41 = &v16[v40];
      v42 = &v17[v40];
      v43 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v43;
      v91 = v39;
      v44 = *(v39 + 24);
      v45 = &v16[v44];
      v46 = &v17[v44];
      v47 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v46, 1, v47))
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v45, v46, *(*(v48 - 8) + 64));
      }

      else
      {
        v76 = sub_1DD0DB4BC();
        (*(*(v76 - 8) + 16))(v45, v46, v76);
        v77 = v47[5];
        v90 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v46[v77], 1, v90))
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v45[v77], &v46[v77], *(*(v78 - 8) + 64));
        }

        else
        {
          (*(*(v90 - 8) + 16))(&v45[v77], &v46[v77]);
          __swift_storeEnumTagSinglePayload(&v45[v77], 0, 1, v90);
        }

        v79 = v47[6];
        v80 = &v45[v79];
        v81 = &v46[v79];
        v82 = *(v81 + 1);
        *v80 = *v81;
        *(v80 + 1) = v82;
        v83 = v47[7];
        v84 = &v45[v83];
        v85 = &v46[v83];
        v84[4] = v85[4];
        *v84 = *v85;

        __swift_storeEnumTagSinglePayload(v45, 0, 1, v47);
      }

      v86 = *(v91 + 28);
      v87 = *&v17[v86];
      *&v16[v86] = v87;
      v88 = v87;
      goto LABEL_29;
    case 9u:
      v22 = sub_1DD0DD08C();
      (*(*(v22 - 8) + 16))(v16, v17, v22);
LABEL_29:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v16, v17, *(*(v18 - 8) + 64));
      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCB3B308(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v6 = *v4;
  v5[40] = *v4;
  v5[41] = *a2;
  type metadata accessor for ParameterClause(0);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v7 = *(v6 + 80);
  v5[44] = v7;
  v5[45] = *(v7 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = type metadata accessor for ResolveConfirmProcessingResult(0);
  v5[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB14324, 0, 0);
}

uint64_t sub_1DCB3B4A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

unint64_t sub_1DCB3B4FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

void sub_1DCB3B54C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v1 + *(*v1 + 152);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  *(v4 + 32) = v2;
  v11 = *(v4 + 40);
  *(v4 + 40) = v3;
  sub_1DCB150B8(v6, v5, v7, v8, v9, v11);

  sub_1DCB3B5B8();
}

void sub_1DCB3B5B8()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB3B800(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DAF2C();

  return v3;
}

void sub_1DCB3B864()
{
  OUTLINED_FUNCTION_50();
  v10 = v1;
  OUTLINED_FUNCTION_70();
  sub_1DD0DD89C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v6 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v6, qword_1EDE57DD0);
  v7 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if ((sub_1DD0DE92C() & 1) == 0)
  {

    v8 = OUTLINED_FUNCTION_19();
    v9(v8);
    OUTLINED_FUNCTION_49();
    return;
  }

  if ((v10 & 1) == 0)
  {
    if (v0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (HIDWORD(v0))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v0 & 0xFFFFF800) != 0xD800)
  {
    if (v0 >> 16 <= 0x10)
    {
LABEL_10:
      sub_1DD0DCF8C();
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1DCB3BAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = v3;
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v10 = a3(v3);
    if (v10)
    {
      v11 = v10;
      v7 = swift_dynamicCastUnknownClass();
      if (!v7)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t IntentResolutionRecord.init(app:intent:intentResponse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_221_0()
{

  return sub_1DD0DC61C();
}

void sub_1DCB3BBC0(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = a1;

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = v3;
  oslog = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = INIntent.debugDescriptionLite.getter();
    v11 = sub_1DCB10E9C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DCAFC000, oslog, v6, "Intent updated: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }
}

uint64_t sub_1DCB3BD10(void *a1)
{
  v1 = [a1 parametersByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDE6C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_207()
{
  v2 = *(v0 + 64);

  return sub_1DCB17CA0(v2 + 88, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB17C3C(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return type metadata accessor for AceOutput(0);
}

uint64_t OUTLINED_FUNCTION_147_1()
{

  return sub_1DD0DD8FC();
}

uint64_t sub_1DCB3BE6C(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DAF2C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2)
{

  return sub_1DCB4F1DC(a1, a2, v2, v3);
}

BOOL OUTLINED_FUNCTION_94_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1DD0DEDFC();
}

uint64_t OUTLINED_FUNCTION_94_3(uint64_t a1)
{
  *(v1 + 576) = a1;
}

void OUTLINED_FUNCTION_94_4()
{

  sub_1DCBB9980(v0);
}

void OUTLINED_FUNCTION_94_5()
{
  v2[12] = v1;
  v2[13] = v0;
  v2[14] = v3;
}

void OUTLINED_FUNCTION_94_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_94_10()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_99_1()
{

  return sub_1DD0DD8FC();
}

double OUTLINED_FUNCTION_99_2()
{
  v2 = *(v1 + 16);
  *(v1 + 16) = 3;
  v3 = *(v1 + 24);
  *(v1 + 24) = 3;
  sub_1DCD070F8(v2, v3);

  return static ExecuteResponse.ongoing(requireInput:)(1, v0);
}

uint64_t OUTLINED_FUNCTION_175(uint64_t result)
{
  *(v1 + 104) = result;
  *(result + 16) = v3;
  *(result + 24) = v2;
  return result;
}

void *OUTLINED_FUNCTION_175_0(void *result)
{
  result[2] = v1;
  result[3] = v4;
  result[4] = v3;
  result[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_93_0(uint64_t a1)
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return sub_1DD0DEC1C();
}

uint64_t OUTLINED_FUNCTION_93_3(uint64_t a1)
{

  return sub_1DCB0E9D8(a1, v1, v2);
}

void OUTLINED_FUNCTION_93_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

id OUTLINED_FUNCTION_93_9(float a1)
{
  *v3 = a1;
  *(v2 + 16) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_93_12()
{
  v4 = v2 + *(v1 + 52);

  return __swift_getEnumTagSinglePayload(v4, 1, v0);
}

uint64_t OUTLINED_FUNCTION_95_1(uint64_t a1, uint64_t a2)
{

  return sub_1DCB4F1DC(a1, a2, v2, v3);
}

BOOL OUTLINED_FUNCTION_95_2()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_95_3()
{

  return sub_1DD0DDE9C();
}

void OUTLINED_FUNCTION_95_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_95_10()
{

  return swift_beginAccess();
}

id sub_1DCB3C2E8(id result, void *a2, void *a3, void *a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
      sub_1DD0DCF8C();
    case 1:
      sub_1DD0DCF8C();
    case 6:
      sub_1DD0DCF8C();
    case 7:

      result = sub_1DCB8E3C0(result, a2);
      break;
    case 8:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCB3C3FC()
{
  result = 0x646574726174732ELL;
  switch(*(v0 + 40))
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x74656C706D6F632ELL;
      break;
    case 8:
      result = 0x726F7272652ELL;
      break;
    case 9:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCB3C564(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1DCB3C5D0(a1, a2, a3);
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(v7 + 32) = 0;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB3C5D0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCB3C628(a1, a2, a3);
  return v6;
}

uint64_t sub_1DCB3C628(uint64_t a1, uint64_t a2, __int128 *a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 104), a1);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v3 + *(v6 + 112));
  OUTLINED_FUNCTION_66();
  *(v3 + *(v7 + 120)) = a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = -96;
  return v3;
}

void sub_1DCB3C730(void *a1, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
    case 1:

      a1 = a2;

      goto LABEL_4;
    case 2:

      break;
    case 3:
      v3 = a3 & 0x1F;

      sub_1DCBB1310(a1, a2, v3);
      break;
    case 4:

LABEL_4:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCB3C80C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB3C8F0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  sub_1DCB3C978(v2, type metadata accessor for ResolveConfirmProcessingResult);
  OUTLINED_FUNCTION_65_15();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCB3C978(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

void destroy for ResolveConfirmProcessingResult(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
      v6 = (a1 + *(type metadata accessor for ParameterClause(0) + 20) + v5);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v7 = sub_1DD0DC76C();
          goto LABEL_17;
        case 1u:
          v12 = sub_1DD0DC76C();
          (*(*(v12 - 8) + 8))(v6, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          goto LABEL_5;
        case 2u:

          goto LABEL_31;
        case 3u:

          swift_unknownObjectRelease();
          return;
        case 4u:
          v7 = sub_1DD0DB1EC();
          goto LABEL_17;
        case 5u:
          v4 = *v6;
          goto LABEL_9;
        case 6u:
          v13 = sub_1DD0DB4BC();
          (*(*(v13 - 8) + 8))(v6, v13);
          v14 = *(type metadata accessor for USOParse(0) + 20);
          v15 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v6 + v14, 1, v15))
          {
            (*(*(v15 - 8) + 8))(v6 + v14, v15);
          }

          goto LABEL_31;
        case 7u:
          v9 = sub_1DD0DB4BC();
          (*(*(v9 - 8) + 8))(v6, v9);
          v10 = *(type metadata accessor for USOParse(0) + 20);
          v11 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v6 + v10, 1, v11))
          {
            (*(*(v11 - 8) + 8))(v6 + v10, v11);
          }

          type metadata accessor for LinkParse(0);

LABEL_31:

          break;
        case 8u:
          v16 = sub_1DD0DD12C();
          (*(*(v16 - 8) + 8))(v6, v16);
          v17 = type metadata accessor for NLRouterParse(0);

          v18 = v6 + *(v17 + 24);
          v19 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v18, 1, v19))
          {
            v20 = sub_1DD0DB4BC();
            (*(*(v20 - 8) + 8))(v18, v20);
            v21 = *(v19 + 20);
            v22 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v18 + v21, 1, v22))
            {
              (*(*(v22 - 8) + 8))(v18 + v21, v22);
            }
          }

          v4 = *(v6 + *(v17 + 28));
          goto LABEL_9;
        case 9u:
          v7 = sub_1DD0DD08C();
LABEL_17:
          v8 = *(*(v7 - 8) + 8);

          v8(v6, v7);
          break;
        default:
          return;
      }

      break;
    case 1:

      v4 = *(a1 + 16);
LABEL_9:

      break;
    case 0:

LABEL_5:

      break;
  }
}

uint64_t sub_1DCB3CEF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB3CFD8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  sub_1DCB0E9D8(v2, &qword_1ECCAABD0, &qword_1DD0EA240);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t AnnotatedIntent.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t AnnotatedIntent.__deallocating_deinit()
{
  AnnotatedIntent.deinit();

  return swift_deallocClassInstance();
}

uint64_t ParameterResolutionResult.deinit()
{

  return v0;
}

uint64_t SiriKitIntentExecutionBehavior.__deallocating_deinit()
{
  SiriKitIntentExecutionBehavior.deinit();
  OUTLINED_FUNCTION_5_13();

  return swift_deallocClassInstance();
}

void *SiriKitIntentExecutionBehavior.deinit()
{
  sub_1DCB3D1F0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

void sub_1DCB3D1F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
  }
}

double static ExecuteResponse.complete()()
{
  v1 = OUTLINED_FUNCTION_4();
  v2 = type metadata accessor for ExecuteResponse(v1);
  v3 = *(v2 + 36);
  v4 = type metadata accessor for PluginAction(0);
  OUTLINED_FUNCTION_7_5(v0 + v3, v5, v6, v4);
  *v0 = 1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = -4;
  return OUTLINED_FUNCTION_26_15((v0 + *(v2 + 40)));
}

void sub_1DCB3D2C0()
{
  OUTLINED_FUNCTION_125();
  v17 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[11] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v5, v6, "Confirm routing pushing ConfirmIntentFlow.");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[6];

  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v0[12] = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  IntentResolutionRecord.init(app:intent:intentResponse:)(v10, v11, v8, v15);
  v12 = v15[0];
  v13 = v15[1];
  v0[13] = v15[0];
  v0[14] = v13;
  v14 = v16;
  v0[15] = v16;
  v0[2] = v12;
  v0[3] = v13;
  v0[4] = v14;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB3D474()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB3D558(uint64_t a1)
{
  *(v2 + 384) = v1;
  *(v2 + 392) = *v1;
  *(v2 + 400) = *a1;
  *(v2 + 416) = *(a1 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB3D5A4()
{
  OUTLINED_FUNCTION_40_23(*(v0 + 384));
  OUTLINED_FUNCTION_24_28();
  if (!v1 && *(v0 + 96))
  {
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_39_23(*(v0 + 384));
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    *(v0 + 424) = v3;
    *(v0 + 432) = v2;
    if (v3)
    {
      v4 = *(v0 + 416);
      v5 = *(v0 + 384);
      v6 = swift_task_alloc();
      *(v0 + 440) = v6;
      v7 = *(v0 + 400);
      *(v6 + 16) = v3;
      *(v6 + 24) = v2;
      *(v6 + 32) = v5;
      *(v6 + 40) = v7;
      *(v6 + 56) = v4;
      sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v9, v10))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_90_10(&dword_1DCAFC000, v11, v10, "No completion configured for ConfirmIntentFlow. Completing with nil");
    OUTLINED_FUNCTION_62();
  }

  v12 = OUTLINED_FUNCTION_129();

  return v13(v12);
}

uint64_t sub_1DCB3D80C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCB3D8F8(uint64_t a1)
{
  v25 = v1;
  if (v1[17])
  {
    v2 = v1[8];
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    *(v2 + 16) = v1[6];
    *(v2 + 24) = 0;
    v5 = *(v2 + 32);
    *(v2 + 32) = 64;
    sub_1DCB3C730(v3, v4, v5);
    sub_1DCF6E3B8();
  }

  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v7))
  {
    v8 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v8);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v9, v10, "No ConfirmIntentFlow was provided. This will be treated as inferred confirmation. Proceeding to complete.");
    OUTLINED_FUNCTION_62();
  }

  v12 = v1[14];
  v11 = v1[15];
  v13 = v1[8];
  v14 = v1[6];

  v24 = 0;
  v15 = *(v14 + 24);
  ConfirmIntentAnswer.init(confirmationResponse:intent:)(&v24, v15, v22);
  v16 = v23;
  v17 = *(v13 + 16);
  v18 = *(v13 + 24);
  *(v13 + 16) = v22[0];
  *(v13 + 24) = v16;
  LOBYTE(v12) = *(v13 + 32);
  *(v13 + 32) = 96;
  v19 = v15;
  sub_1DCB3C730(v17, v18, v12);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v20();
}

uint64_t sub_1DCB3DA94()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();

  v0 = OUTLINED_FUNCTION_52_27();
  sub_1DCB150B8(v0, v1, v2, v3, v4, 0);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

_BYTE *ConfirmIntentAnswer.init(confirmationResponse:intent:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1DCB3DB1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB3DC00()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 33);

  sub_1DCB3C730(v1, v2, v3);
  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCB3DC80()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = (v11 - v10);
  type metadata accessor for SiriKitEvent.SiriKitOverridesEventBuilder();
  OUTLINED_FUNCTION_136();
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  v14 = v13;
  if (v1)
  {
    v1(&v14);
  }

  *v12 = v7;
  v12[1] = v5;
  v12[2] = v3;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB3DD8C(uint64_t a1, void *a2)
{
  v4 = sub_1DD0DAFDC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB22FCC(a1, v11);
  sub_1DD0DAFBC();
  sub_1DCB23AC0(a1, a2, v15);
  v14[0] = v15[0];
  v14[1] = v15[1];
  v14[2] = v15[2];
  swift_allocObject();
  v12 = sub_1DCB23C70(v11, v7, v14);

  sub_1DCB22AA4(a1);
  return v12;
}

id sub_1DCB3DEC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1DD0DAEFC();
    sub_1DCB2C520(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

void sub_1DCB3DF34()
{
  OUTLINED_FUNCTION_20_10();
  Flow.eraseToAnyFlow()();
  type metadata accessor for AnyChildCompletion();
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void static ExecuteResponse.ongoing<A>(next:childCompletion:)()
{
  sub_1DCB3DF34();
}

{
  sub_1DCB817D8();
}

uint64_t AnyChildCompletion.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_88_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_116();
  AnyChildCompletion.init<A>(_:)();
  return v0;
}

uint64_t OUTLINED_FUNCTION_75_2()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 56), *(*(v0 + 72) + 80));

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_75_3()
{

  return sub_1DCB0E9D8(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_75_5@<X0>(void *a1@<X8>)
{
  result = a1[1];
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_11()
{
}

uint64_t OUTLINED_FUNCTION_75_14()
{
}

uint64_t OUTLINED_FUNCTION_75_16()
{
}

uint64_t OUTLINED_FUNCTION_75_17()
{

  return swift_task_alloc();
}

void sub_1DCB3E244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t ExecuteResponse.retriggerNL.getter()
{
  v1 = v0 + *(type metadata accessor for ExecuteResponse(0) + 40);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_33_1();
  sub_1DCB3E244(v4, v5, v2, v3);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t destroy for ExecuteResponse(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 48);
  if (v4 <= 0xFB)
  {
    sub_1DCD21390(*(a1 + 32), *(a1 + 40), v4);
  }

  v5 = a1 + *(a2 + 36);
  v6 = type metadata accessor for PluginAction(0);
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {

    v7 = v5 + v6[5];
    v8 = sub_1DD0DB04C();
    v9 = *(*(v8 - 8) + 8);
    v9(v7, v8);
    v10 = type metadata accessor for Input(0);
    v11 = (v7 + *(v10 + 20));
    type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        goto LABEL_8;
      case 1u:
        v16 = sub_1DD0DC76C();
        (*(*(v16 - 8) + 8))(v11, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

        break;
      case 2u:

        break;
      case 3u:
        swift_unknownObjectRelease();
        break;
      case 4u:
        v12 = sub_1DD0DB1EC();
        goto LABEL_8;
      case 5u:

        break;
      case 6u:
        v36 = v9;
        v17 = sub_1DD0DB4BC();
        (*(*(v17 - 8) + 8))(v11, v17);
        v18 = *(type metadata accessor for USOParse(0) + 20);
        v19 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v11 + v18, 1, v19))
        {
          (*(*(v19 - 8) + 8))(v11 + v18, v19);
        }

        goto LABEL_18;
      case 7u:
        v36 = v9;
        v13 = sub_1DD0DB4BC();
        (*(*(v13 - 8) + 8))(v11, v13);
        v14 = *(type metadata accessor for USOParse(0) + 20);
        v15 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v11 + v14, 1, v15))
        {
          (*(*(v15 - 8) + 8))(v11 + v14, v15);
        }

        type metadata accessor for LinkParse(0);

LABEL_18:

        goto LABEL_24;
      case 8u:
        v36 = v9;
        v20 = sub_1DD0DD12C();
        (*(*(v20 - 8) + 8))(v11, v20);
        v21 = type metadata accessor for NLRouterParse(0);

        v22 = v11 + *(v21 + 24);
        v35 = type metadata accessor for USOParse(0);
        if (!__swift_getEnumTagSinglePayload(v22, 1, v35))
        {
          v23 = sub_1DD0DB4BC();
          (*(*(v23 - 8) + 8))(v22, v23);
          v34 = *(v35 + 20);
          v33 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v22 + v34, 1, v33))
          {
            (*(*(v33 - 8) + 8))(v22 + v34);
          }
        }

LABEL_24:
        v9 = v36;
        break;
      case 9u:
        v12 = sub_1DD0DD08C();
LABEL_8:
        (*(*(v12 - 8) + 8))(v11, v12);
        break;
      default:
        break;
    }

    v24 = (v7 + *(v10 + 28));
    if (v24[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    v25 = v5 + v6[9];
    v26 = type metadata accessor for ActionParaphrase(0);
    if (!__swift_getEnumTagSinglePayload(v25, 1, v26))
    {

      v27 = v25 + *(v26 + 20);
      v28 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
      {

        v29 = *(v28 + 24);
        v30 = sub_1DD0DB66C();
        (*(*(v30 - 8) + 8))(v27 + v29, v30);
      }
    }

    v31 = v6[10];
    if (!__swift_getEnumTagSinglePayload(v5 + v31, 1, v8))
    {
      v9(v5 + v31, v8);
    }
  }

  result = *(a1 + *(a2 + 40) + 8);
  if (result)
  {
  }

  return result;
}

void initializeWithCopy for ExecuteResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_1DD0DCF8C();
}

uint64_t type metadata accessor for PluginAction(uint64_t a1)
{
  result = qword_1EDE4EB78;
  if (!qword_1EDE4EB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB3F5F8(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for Input(0);
    OUTLINED_FUNCTION_11_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      OUTLINED_FUNCTION_11_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        v11 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1DCB3F72C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
    v6 = OUTLINED_FUNCTION_59_2(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DCB3F7C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_54_9();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
    v7 = OUTLINED_FUNCTION_59_2(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_1DCB3F870(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Input(0);
    OUTLINED_FUNCTION_11_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      OUTLINED_FUNCTION_11_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1DCB3F98C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCB3FA6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCB3FB64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47_3();

  return v0();
}

uint64_t sub_1DCB3FBB8()
{
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 712) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCB3FCE4()
{
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_23_5();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_9(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_10(v2);

  return v6(v4);
}

uint64_t sub_1DCB3FDDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 176) = v0;

  if (v0)
  {
    v7 = sub_1DCE20D60;
  }

  else
  {
    v7 = sub_1DCB3FEDC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCB3FEDC()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA79F8, &qword_1DD0FA160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB3FF64()
{

  OUTLINED_FUNCTION_29();

  return v0();
}

void OUTLINED_FUNCTION_34_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

id OUTLINED_FUNCTION_34_7(void *a1)
{

  return sub_1DCC1EF18(a1, v1);
}

uint64_t OUTLINED_FUNCTION_34_9(unint64_t *a1)
{

  return sub_1DCC5DEBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_34_12(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_34_15(uint64_t a1@<X8>)
{
  v4 = (v2 + a1);
  v5 = v4[1];
  v6 = v4[2];
  v1[7] = *v4;
  v1[8] = v5;
  v1[9] = v6;

  sub_1DD0DCF8C();
}

void OUTLINED_FUNCTION_34_17()
{
  v4 = *(v3 - 176);
  *(v3 - 120) = v0;
  *(v3 - 112) = v4;
  *(v3 - 104) = v1;
  *(v3 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_34_18(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DEEBC();
}

uint64_t OUTLINED_FUNCTION_34_19(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

void OUTLINED_FUNCTION_34_21()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_34_22()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_34_25(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = v3;
  v5 = a2[1];
  *(v4 + 72) = *a2;
  *(v4 + 88) = v5;
  *(v4 + 97) = *(a2 + 25);
  v6 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v6;
  result = *(a3 + 32);
  *(v4 + 48) = result;
  *(v4 + 64) = *(a3 + 48);
  return result;
}

void OUTLINED_FUNCTION_34_27(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a1[6] = v18;
  a1[7] = v19;
  a1[8] = a18;
  a1[9] = v20;
  a1[10] = v21;
  a1[11] = v22;
  a1[12] = v23;
  a1[13] = a17;
}

uint64_t OUTLINED_FUNCTION_34_28@<X0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  *a2 = a5;
  *(a2 + 8) = v5;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_34_29()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 3, v0);
}

void OUTLINED_FUNCTION_34_30(char a1@<W8>)
{
  *v1 = a1;
  *(v1 + 8) = 0x54746E6572727543;
  *(v1 + 16) = 0xEB000000006B7361;
}

uint64_t OUTLINED_FUNCTION_34_34(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_34_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_1DCF352A0(va);
}

uint64_t OUTLINED_FUNCTION_34_36()
{

  return sub_1DCAFF9E8((v0 + 136), v0 + 96);
}

uint64_t OUTLINED_FUNCTION_34_37()
{

  return __swift_storeEnumTagSinglePayload(v2 + v0, 1, 1, v1);
}

void OUTLINED_FUNCTION_34_38()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_34_42()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_43@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  v5 = v4[1];
  *(v2 - 120) = *v4;
  *(v2 - 112) = v5;
}

double sub_1DCB404E0@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_47_10(v4);
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  return OUTLINED_FUNCTION_10_32();
}

uint64_t sub_1DCB4053C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v3 + 120) = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCB406A0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB40710(v0[3], v0[4], v0[5]);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t initializeWithCopy for TemplatingSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);

  if (v7)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v7;
    v8 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v8;
  }

  else
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
  }

  *(a1 + 80) = *(a2 + 80);
  v10 = *(a2 + 96);
  if (v10)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = v10;
    v11 = *(a2 + 112);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = v11;
  }

  else
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  v12 = *(a2 + 128);
  if (v12)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = v12;
    v13 = *(a2 + 144);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
  }

  v14 = *(a2 + 160);
  if (v14)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = v14;
    v15 = *(a2 + 176);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = v15;
  }

  else
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
  }

  v16 = *(a2 + 192);
  if (v16)
  {
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = v16;
    v17 = *(a2 + 208);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = v17;
  }

  else
  {
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
  }

  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t destroy for TemplatingSection(void *a1)
{

  if (a1[7])
  {
  }

  if (a1[12])
  {
  }

  if (a1[16])
  {
  }

  if (a1[20])
  {
  }

  result = a1[24];
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DCB40994(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DCB409A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t destroy for TemplatingText(uint64_t a1)
{
}

void sub_1DCB40A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t getEnumTagSinglePayload for TemplatingText(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t destroy for TemplatingResult(void *a1)
{

  if (a1[7] >= 3uLL)
  {
  }
}

uint64_t sub_1DCB40AF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_1DCE20C70;
  }

  else
  {
    v7 = sub_1DCB40BF4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCB40BF4()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 32))(0, 0);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB40C58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);

  return sub_1DCB40CD4(a1);
}

uint64_t sub_1DCB40CD4(uint64_t a1)
{
  v2 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1DCB246E8(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCB40D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - v10;
  v30 = a2;
  DynamicType = swift_getDynamicType();
  v31 = a3;
  v32 = DynamicType;
  swift_getMetatypeMetadata();
  v13 = sub_1DD0DE02C();
  v15 = v14;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);

  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = a4;
    v21 = v20;
    v32 = v20;
    *v19 = 136315138;
    v22 = sub_1DCB10E9C(v13, v15, &v32);

    *(v19 + 4) = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v23 = v21;
    a4 = v28;
    MEMORY[0x1E12A8390](v23, -1, -1);
    MEMORY[0x1E12A8390](v19, -1, -1);
  }

  else
  {
  }

  (*(v8 + 16))(v11, v29, v7);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v24, v11, v7);
  (*(a4 + 32))(sub_1DCB40C58, v25, v31, a4);
}

uint64_t sub_1DCB4105C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB410E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCB4130C(uint64_t a1)
{
  if (*(a1 + 72) <= 2u)
  {
    return *(a1 + 72);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DCB4132C(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCB41510();
}

uint64_t sub_1DCB413DC()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v2[91] = v0;

  if (v0)
  {
    memcpy(v2 + 42, v2 + 22, 0x49uLL);
    sub_1DCB431E0((v2 + 42));
  }

  else
  {
    memcpy(v2 + 52, v2 + 22, 0x49uLL);
    sub_1DCB431E0((v2 + 52));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCB41510()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  memcpy(v1 + 2, v3, 0x49uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DCB411DC, 0, 0);
}

uint64_t sub_1DCB4159C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 128) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCD3A35C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }
}

uint64_t sub_1DCB416D8()
{
  v1 = OUTLINED_FUNCTION_18_5();
  v2(v1);
  OUTLINED_FUNCTION_0_7();
  sub_1DCB42D14(v0, v3);
  OUTLINED_FUNCTION_9_6();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCB417A0()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCB418CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a4(a1, a2, a3))
  {
    OUTLINED_FUNCTION_27_14();
    v4();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
    oslog = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      OUTLINED_FUNCTION_44_8(&dword_1DCAFC000, v8, v9, v10, v11, v12, v13, v14, v15, oslog);
      OUTLINED_FUNCTION_62();
    }
  }
}

uint64_t sub_1DCB41998()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = OUTLINED_FUNCTION_45_7();
  sub_1DCB099BC(v4, v5, &qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_138();
  sub_1DCB0D344();
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_169();
    v10 = sub_1DCB41A90(v8, v9);
  }

  else
  {
    v10 = 0;
  }

  sub_1DCB0E9D8(v0, &qword_1ECCA2618, &unk_1DD0E5C50);
  return v10;
}

uint64_t sub_1DCB41A90(void *a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E69CEA50]) init];
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E69CEA58]) init];
  if (!v19)
  {

LABEL_9:
    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v24 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v24, qword_1EDE57DA0);
    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DCAFC000, v25, v26, "[ConversationSELFHelper] Failed to create context SELF objects", v27, 2u);
      MEMORY[0x1E12A8390](v27, -1, -1);
    }

    return 0;
  }

  v20 = v19;
  [v19 setEagerStatus_];
  result = sub_1DCB41DFC();
  if (v22)
  {
LABEL_6:
    [v18 setEnded_];
    sub_1DCB099BC(a2, v16, &qword_1ECCA2618, &unk_1DD0E5C50);
    if (__swift_getEnumTagSinglePayload(v16, 1, v4) == 1)
    {
      v23 = 0;
    }

    else
    {
      (*(v5 + 32))(v12, v16, v4);
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v5 + 16))(v9, v12, v4);
      v23 = sub_1DCB0DEDC(v9);
      (*(v5 + 8))(v12, v4);
    }

    [v18 setHypothesisId_];

    [a1 setIntentFinalExecutionContext_];
    v28 = a1;
    return a1;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    [v20 setMaxRss_];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCB41DFC()
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(&v5, 0x90uLL);
  if (!getrusage(0, &v5))
  {
    return v5.ru_maxrss;
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57DA0);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "[ConversationSELFHelper] Could not get maxrss; getrusage indicated error", v3, 2u);
    MEMORY[0x1E12A8390](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_1DCB41F98(uint64_t a1)
{
  v2 = type metadata accessor for NLContextUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB41FF4(unint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v7 = sub_1DCB09A70(a1);
  v8 = sub_1DCB09A70(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  a2(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}