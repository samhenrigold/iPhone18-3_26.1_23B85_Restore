void WeatherService.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_21_1();
  v3 = type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v7 = v6 - v5;
  if (qword_280B45350 != -1)
  {
    OUTLINED_FUNCTION_19_17(&qword_280B45350);
  }

  sub_23B50AB04();
  v8 = sub_23B50AB34();
  v9 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_51(v9, v10, v8);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_48();
    (*(v12 + 32))(v7, v0, v8);
    OUTLINED_FUNCTION_39_8(*(v3 + 20));
    if (qword_280B45360 != -1)
    {
      OUTLINED_FUNCTION_53_3(&qword_280B45360);
    }

    OUTLINED_FUNCTION_173_0();
    v13 = sub_23B50C2E4();
    OUTLINED_FUNCTION_45(v13);
    sub_23B50C2D4();
    v14 = OUTLINED_FUNCTION_36();
    WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:)(v14, v15, v16, v17);
  }
}

uint64_t type metadata accessor for WeatherService(uint64_t a1)
{
  result = qword_280B45BF8;
  if (!qword_280B45BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B38EC88(uint64_t a1)
{
  result = type metadata accessor for WDSEndpoint(319);
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

uint64_t type metadata accessor for WDSEndpoint(uint64_t a1)
{
  result = qword_280B45B18;
  if (!qword_280B45B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B38ED8C(uint64_t a1)
{
  sub_23B50AB34();
  if (v1 <= 0x3F)
  {
    sub_23B38EE10(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B38EE10(uint64_t a1)
{
  if (!qword_280B45318[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132180, &qword_23B510128);
    v1 = sub_23B50D504();
    if (!v2)
    {
      atomic_store(v1, qword_280B45318);
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_121(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return type metadata accessor for PrecipitationAmountByType(0);
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_9_8(uint64_t a1, uint64_t a2)
{

  return sub_23B50D834();
}

double OUTLINED_FUNCTION_9_9@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  if (result == 0.0)
  {
    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{

  return sub_23B50D0E4();
}

void OUTLINED_FUNCTION_9_11()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  v4 = v0 + *(v2 + 44);

  return sub_23B3B0A38(v1, v4, type metadata accessor for InstantWeatherQueryOptions);
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_9_16(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_9_22(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_9_23()
{

  return sub_23B4591A0(v0, type metadata accessor for MinuteWeather);
}

uint64_t OUTLINED_FUNCTION_9_29(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_9_30@<X0>(uint64_t a1@<X8>)
{
  v4[6] = a1;
  v4[7] = v1;
  v4[8] = v2;
  v4[9] = v3;
  return 255;
}

uint64_t OUTLINED_FUNCTION_9_31()
{
}

uint64_t OUTLINED_FUNCTION_9_34@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = v1 - a1;

  return sub_23B50AE64();
}

uint64_t OUTLINED_FUNCTION_9_38()
{

  return type metadata accessor for WeatherServiceFetchOptions(0);
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23B50D834();
}

__n128 *OUTLINED_FUNCTION_0_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u32[0] = 0;
  result[2].n128_u64[1] = 0x39353743343323;
  result[3].n128_u64[0] = 0xE700000000000000;
  result[3].n128_u32[2] = 1103626240;
  result[4].n128_u64[0] = 0x39353743343323;
  result[4].n128_u64[1] = 0xE700000000000000;
  result[5].n128_u32[0] = 1117126656;
  result[5].n128_u64[1] = 0x30304343464623;
  result[6].n128_u64[0] = 0xE700000000000000;
  result[6].n128_u32[2] = 1123680256;
  result[7].n128_u64[0] = 0x30303539464623;
  result[7].n128_u64[1] = 0xE700000000000000;
  result[8].n128_u32[0] = 1127153664;
  result[8].n128_u64[1] = 0x35354432464623;
  result[9].n128_u64[0] = 0xE700000000000000;
  result[9].n128_u32[2] = 1132068864;
  result[10].n128_u64[0] = 0x46463030414123;
  result[10].n128_u64[1] = 0xE700000000000000;
  result[11].n128_u32[0] = 1135542272;
  result[11].n128_u64[1] = 0x38423830433923;
  result[12].n128_u64[0] = 0xE700000000000000;
  result[12].n128_u32[2] = 1140457472;
  result[13].n128_u64[0] = 0x44323132353723;
  result[13].n128_u64[1] = 0xE700000000000000;
  return result;
}

void OUTLINED_FUNCTION_0_5()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_23B41EB24(va);
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return sub_23B50D144();
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return sub_23B50D7C4();
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_0_47@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = v5;
  v7 = v1 + v4[9];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = v6;
  v8 = v1 + v4[10];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = v6;
  __swift_storeEnumTagSinglePayload(v1 + v4[11], 1, 1, v2);
  v9 = v1 + v4[12];

  return __swift_storeEnumTagSinglePayload(v9, 1, 1, v3);
}

void OUTLINED_FUNCTION_0_50(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_0_51()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_0_52(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_57@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *v1 = *v3;
  v1[1].n128_u8[0] = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_0_60@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, int a6, unsigned __int16 a7, unint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, unsigned __int32 a12)
{
  *(v13 + a1) = v12;
  *(v13 + *(v14 + 44)) = 0;
  v15 = (v13 + *(v14 + 52));
  result = a9;
  *v15 = a9;
  v15[1].n128_u64[0] = a8;
  v15[1].n128_u8[14] = a5;
  v15[1].n128_u16[6] = a7;
  v15[1].n128_u32[2] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CC87F8];

  return sub_23B3F1C50(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

unint64_t OUTLINED_FUNCTION_3_10()
{
  *(v0 + 12) = 2081;
  v4 = *(v2 - 272);

  return sub_23B391F1C(v4, v1, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return type metadata accessor for DayTemperatureStatistics(0);
}

uint64_t OUTLINED_FUNCTION_3_16(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

void OUTLINED_FUNCTION_3_21()
{
  *(v0 + 12) = 2160;
  *(v0 + 14) = 1752392040;
  *(v0 + 22) = 2081;
}

uint64_t OUTLINED_FUNCTION_3_24(unint64_t *a1)
{

  return sub_23B3F1C50(a1, v1, v2, &protocol conformance descriptor for Trend<A>);
}

uint64_t OUTLINED_FUNCTION_2_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F054C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  *(v1 + 88) = v0;
  *(v1 + 96) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_29(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_3_30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D6C930];

  return sub_23B3F1C50(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_3_38(uint64_t a1, uint64_t a2)
{

  return sub_23B50D734();
}

void OUTLINED_FUNCTION_3_39(char a1@<W2>, char a2@<W3>, char a3@<W4>, uint64_t a4@<X8>)
{
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 25) = a3;
  *(a4 + 26) = 0;
  *(a4 + 27) = a1;
  *(a4 + 28) = a2;
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v2 + *(a1 + 28), 1, 1, v1);
  v5 = (v2 + *(a1 + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_44(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_3_45()
{
  v4[10] = v0;
  v4[11] = v1;
  v4[12] = v2;
  v4[13] = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_46@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(v3 - 88) + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return type metadata accessor for MonthTemperatureStatistics(0);
}

uint64_t OUTLINED_FUNCTION_3_51()
{

  return type metadata accessor for WeatherServiceOptions(0);
}

uint64_t OUTLINED_FUNCTION_3_53(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

void OUTLINED_FUNCTION_3_56()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

void OUTLINED_FUNCTION_3_59(char *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_36_13()
{

  return sub_23B50D0E4();
}

uint64_t sub_23B390374()
{
  type metadata accessor for WeatherAQIScaleCacheManager();
  v0 = swift_allocObject();
  result = WeatherAQIScaleCacheManager.init(store:)(sub_23B3A5340, 0);
  qword_280B45358 = v0;
  return result;
}

uint64_t WeatherAQIScaleCacheManager.init(store:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_23B50AFF4();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_23B390580();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132298, &qword_23B519F00);
  sub_23B390F60();
  sub_23B50D594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AB8, &qword_23B519F08);
  swift_allocObject();
  v8 = sub_23B50B024();

  *(v3 + 32) = v8;
  return v3;
}

uint64_t sub_23B390548()
{

  return swift_deallocObject();
}

unint64_t sub_23B390580()
{
  result = qword_280B45380;
  if (!qword_280B45380)
  {
    sub_23B50AFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45380);
  }

  return result;
}

void OUTLINED_FUNCTION_51_2()
{
  v2 = *(v0 + 168);
  *(v1 + 16) = *(v0 + 160);
  *(v1 + 24) = v2;
}

unint64_t OUTLINED_FUNCTION_47(uint64_t a1, unint64_t a2)
{

  return sub_23B391F1C(a1, a2, (v2 - 72));
}

void OUTLINED_FUNCTION_47_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_47_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[21] = a8;
  v9[22] = v8;
  v9[19] = a6;
  v9[20] = a7;
  v9[17] = a4;
  v9[18] = a5;
  v9[15] = a2;
  v9[16] = a3;
  v9[14] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_6(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_47_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_47_8(uint64_t a1, uint64_t a2)
{

  return sub_23B3EB988(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_56()
{

  return sub_23B50CDD4();
}

void OUTLINED_FUNCTION_203_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 224) = v1;
  *(v2 - 216) = v3;
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return type metadata accessor for InstantWeather(0);
}

uint64_t OUTLINED_FUNCTION_172@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 136) = v1;
  *(v2 - 184) = a1;

  return sub_23B50CCA4();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{

  return swift_allocObject();
}

void WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for WDSEndpoint(0);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_171();
  v13 = *v8;
  v14 = v8[1];
  v15 = v8[2];
  if (qword_280B45350 != -1)
  {
    OUTLINED_FUNCTION_19_17(&qword_280B45350);
  }

  v16 = OUTLINED_FUNCTION_16_16();
  sub_23B3943E8(v16, v4);
  v18[37] = v13;
  v18[38] = v14;
  v18[39] = v15;
  sub_23B3923E8(v6, v18);

  OUTLINED_FUNCTION_226_1();
  WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:attributionBundleIdentifier:)();

  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_6_25();
  sub_23B393E24(v10, v17);
  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_20();
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1, uint64_t a2)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_32_3@<X0>(uint64_t a1@<X8>)
{

  return sub_23B3CF890(v1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_32_8()
{

  return type metadata accessor for Wind(0);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_getWitnessTable();
}

BOOL OUTLINED_FUNCTION_10_10()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
  *(v0 - 88) = 1;

  return Forecast<>.isRelevant(in:)(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_10_14(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_10_24()
{

  return type metadata accessor for LocationInfo(0);
}

uint64_t OUTLINED_FUNCTION_10_25(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_10_28@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_23B39A5A8(v3, v4 + a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_10_30(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_23B50D1C4();
}

unint64_t sub_23B390F60()
{
  result = qword_280B45370;
  if (!qword_280B45370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132298, &qword_23B519F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45370);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

void OUTLINED_FUNCTION_2_7(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_2_10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CC87D8];

  return sub_23B3F1C50(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1, __n128 a2)
{

  return sub_23B50A9B4();
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_2_23(unint64_t *a1)
{

  return sub_23B3F1C50(a1, v1, v2, &protocol conformance descriptor for MonthlyWeatherStatistics<A>);
}

uint64_t OUTLINED_FUNCTION_1_0(unint64_t *a1)
{

  return sub_23B3F054C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23B50D7A4();
}

void OUTLINED_FUNCTION_2_27()
{

  JUMPOUT(0x23EE9D460);
}

void OUTLINED_FUNCTION_2_32()
{
  v2 = v0 + *(v1 + 36);
  *v2 = 0;
  *(v2 + 8) = 3;
}

uint64_t OUTLINED_FUNCTION_2_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_2_36()
{

  return sub_23B50AE84();
}

uint64_t OUTLINED_FUNCTION_2_38(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1 + *(a1 + 28), 1, 1, v2);
  v5 = (v1 + *(a1 + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_43()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

__n128 OUTLINED_FUNCTION_2_44@<Q0>(uint64_t a1@<X8>, uint64_t a2, unsigned __int8 a3, int a4, unsigned __int16 a5, unint64_t a6, __n128 a7, unsigned __int32 a8)
{
  v9 = (v8 + a1);
  result = a7;
  *v9 = a7;
  v9[1].n128_u64[0] = a6;
  v9[1].n128_u8[14] = a3;
  v9[1].n128_u16[6] = a5;
  v9[1].n128_u32[2] = a8;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_45(unint64_t *a1)
{
  v4 = MEMORY[0x277D6C928];

  return sub_23B3F1C50(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_2_49()
{

  return type metadata accessor for WeatherServiceFetchOptions(0);
}

unint64_t OUTLINED_FUNCTION_2_52()
{

  return sub_23B391F1C(v1, v0, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_2_53()
{

  return sub_23B493EA4(v1, v0);
}

uint64_t type metadata accessor for WeatherMetadata(uint64_t a1)
{
  result = qword_280B44548;
  if (!qword_280B44548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CurrentWeather(uint64_t a1)
{
  result = qword_280B44F68;
  if (!qword_280B44F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return sub_23B3EB798();
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  v2[5] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1)
{
  v4 = v2 + *(a1 + 28);

  return __swift_getEnumTagSinglePayload(v4, 1, v1);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return sub_23B3C7314(v0, type metadata accessor for WeatherMetadata);
}

void OUTLINED_FUNCTION_109_0()
{

  JUMPOUT(0x23EE9E260);
}

void OUTLINED_FUNCTION_109_1()
{
  v3[2] = v0;
  v3[3] = v1;
  v3[4] = v2;
}

void OUTLINED_FUNCTION_217()
{
  v1 = *(v0 - 112);
  *(v0 - 96) = *(v0 - 144);
  *(v0 - 88) = v1;
}

uint64_t sub_23B391884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GeocodeService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return result;
}

uint64_t sub_23B391960()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133068, &qword_23B516000);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23B391990()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133070, &qword_23B516008);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23B3919C0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1359D8, &qword_23B5267E0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23B3919F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23B50CDF4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_23B50CDE4();
}

id GeocodeManager.init(service:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23B50AFF4();
  MEMORY[0x28223BE20](v7);
  *(v3 + 32) = 0;
  *(v3 + 40) = MEMORY[0x277D84F98];
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v9 = sub_23B391C9C(result);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    *(v3 + 48) = 0;
    *(v3 + 56) = v11;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    *(v3 + 64) = v12;
    *(v3 + 16) = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    sub_23B390580();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132298, &qword_23B519F00);
    sub_23B390F60();
    sub_23B50D594();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133050, &qword_23B515F98);
    swift_allocObject();
    *(v3 + 24) = sub_23B50B024();
    sub_23B391D0C();
    os_unfair_lock_lock((v3 + 48));
    sub_23B391D88((v3 + 56));
    os_unfair_lock_unlock((v3 + 48));

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B391C64()
{

  return swift_deallocObject();
}

uint64_t sub_23B391C9C(void *a1)
{
  v2 = [a1 countryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23B50D164();

  return v3;
}

void sub_23B391D0C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_handleCountryConfigurationChange_ name:*MEMORY[0x277D0E7C8] object:0];
}

void sub_23B391D88(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v3 = sub_23B50CDF4();
  __swift_project_value_buffer(v3, qword_280B4E9F0);

  v4 = sub_23B50CDD4();
  v5 = sub_23B50D4C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    v8 = sub_23B391F1C(v2, v1, &v9);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_23B38D000, v4, v5, "Initializing GeocodeManager - configuredCountryCode=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EE9E260](v7, -1, -1);
    MEMORY[0x23EE9E260](v6, -1, -1);
  }

  else
  {
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

unint64_t sub_23B391F1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B3921B4(v11, 0, 0, 1, a1, a2);
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
    sub_23B3923E8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_23B391FE0(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B39202C(a1, a2);
  sub_23B3922B8(&unk_284E0D168);
  return v3;
}

uint64_t sub_23B39202C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_23B50D204())
  {
    result = sub_23B392144(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23B50D5B4();
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
          result = sub_23B50D604();
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

  return MEMORY[0x277D84F90];
}

void *sub_23B392144(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FE0, &qword_23B50F758);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_23B3921B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B391FE0(a5, a6);
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
    result = sub_23B50D604();
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

uint64_t sub_23B3922B8(uint64_t result)
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

    result = sub_23B3E8798(result, v7, 1, v3);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_23B3923E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_23B392468(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_23B3924C0(255, a3, a4);
    v5 = sub_23B50A9E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23B3924C0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t type metadata accessor for WeatherStatisticsModel(uint64_t a1)
{
  result = qword_280B42860;
  if (!qword_280B42860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39255C(uint64_t a1)
{
  if (!qword_280B42970[0])
  {
    v4[0] = type metadata accessor for HourTemperatureStatistics(255);
    v4[1] = sub_23B392958(&qword_280B42228, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
    v4[2] = sub_23B392958(qword_280B42238, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
    v4[3] = sub_23B392958(&qword_280B42230, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
    v2 = type metadata accessor for HourlyWeatherStatistics(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_280B42970);
    }
  }
}

void sub_23B392660(uint64_t a1)
{
  sub_23B39255C(319);
  if (v1 <= 0x3F)
  {
    sub_23B392B40(319);
    if (v2 <= 0x3F)
    {
      sub_23B392D84(319);
      if (v3 <= 0x3F)
      {
        sub_23B392FC0(319);
        if (v4 <= 0x3F)
        {
          sub_23B393110(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for HourTemperatureStatistics(uint64_t a1)
{
  result = qword_280B42218;
  if (!qword_280B42218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B392790(uint64_t a1)
{
  if (!qword_280B425B0[0])
  {
    v2 = sub_23B392894();
    v5 = type metadata accessor for Percentiles(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_280B425B0);
    }
  }
}

void sub_23B3927E8(uint64_t a1)
{
  sub_23B392790(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23B392894()
{
  result = qword_280B43388;
  if (!qword_280B43388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B43388);
  }

  return result;
}

uint64_t sub_23B3928E0(uint64_t a1)
{
  result = sub_23B50A9E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B392958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B3929C0(uint64_t a1)
{
  result = sub_23B50D304();
  if (v2 <= 0x3F)
  {
    result = sub_23B50AD24();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for WeatherMetadata(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23B392A60(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B392AF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B392AF0()
{
  if (!qword_280B44CC8[0])
  {
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, qword_280B44CC8);
    }
  }
}

void sub_23B392B40(uint64_t a1)
{
  if (!qword_280B42A80[0])
  {
    v4[0] = type metadata accessor for DayPrecipitationStatistics(255);
    v4[1] = sub_23B392958(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
    v4[2] = sub_23B392958(qword_280B42190, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
    v4[3] = sub_23B392958(&qword_280B42188, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
    v2 = type metadata accessor for DailyWeatherStatistics(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_280B42A80);
    }
  }
}

uint64_t type metadata accessor for DayPrecipitationStatistics(uint64_t a1)
{
  result = qword_280B42170;
  if (!qword_280B42170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B392C90(uint64_t a1)
{
  sub_23B392D14(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B392D14(uint64_t a1)
{
  if (!qword_280B452F8)
  {
    sub_23B3E3A54();
    v1 = sub_23B50A9E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280B452F8);
    }
  }
}

void sub_23B392D84(uint64_t a1)
{
  if (!qword_280B428C8[0])
  {
    v4[0] = type metadata accessor for MonthTemperatureStatistics(255);
    v4[1] = sub_23B392958(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
    v4[2] = sub_23B392958(qword_280B420E0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
    v4[3] = sub_23B392958(&qword_280B420D8, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
    v2 = type metadata accessor for MonthlyWeatherStatistics(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_280B428C8);
    }
  }
}

uint64_t type metadata accessor for MonthTemperatureStatistics(uint64_t a1)
{
  result = qword_280B420C0;
  if (!qword_280B420C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B392ED4(uint64_t a1)
{
  sub_23B392F50(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B392F50(uint64_t a1)
{
  if (!qword_280B452E0)
  {
    sub_23B392894();
    v1 = sub_23B50A9E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280B452E0);
    }
  }
}

void sub_23B392FC0(uint64_t a1)
{
  if (!qword_280B428C0)
  {
    v4[0] = type metadata accessor for MonthPrecipitationStatistics(255);
    v4[1] = sub_23B392958(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
    v4[2] = sub_23B392958(&qword_280B41D50, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
    v4[3] = sub_23B392958(&qword_280B41D48, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
    v2 = type metadata accessor for MonthlyWeatherStatistics(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280B428C0);
    }
  }
}

uint64_t type metadata accessor for MonthPrecipitationStatistics(uint64_t a1)
{
  result = qword_280B41D30;
  if (!qword_280B41D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B393110(uint64_t a1)
{
  if (!qword_280B429F8[0])
  {
    v4[0] = type metadata accessor for DayPrecipitationSummary(255);
    v4[1] = sub_23B392958(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
    v4[2] = sub_23B392958(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
    v4[3] = sub_23B392958(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
    v2 = type metadata accessor for DailyWeatherSummary(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_280B429F8);
    }
  }
}

uint64_t type metadata accessor for DayPrecipitationSummary(uint64_t a1)
{
  result = qword_280B422C8;
  if (!qword_280B422C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B393260(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B392D14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B393304(uint64_t a1)
{
  result = sub_23B50D304();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherMetadata(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Wind(uint64_t a1)
{
  result = qword_280B43878;
  if (!qword_280B43878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3933F8(uint64_t a1)
{
  sub_23B392468(319, &qword_280B45310, &qword_280B433B0, 0x277CCADA8);
  if (v1 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
    if (v2 <= 0x3F)
    {
      sub_23B3934D4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B3934D4(uint64_t a1)
{
  if (!qword_280B45300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E10, &unk_23B5100F0);
    v1 = sub_23B50D504();
    if (!v2)
    {
      atomic_store(v1, &qword_280B45300);
    }
  }
}

uint64_t sub_23B393588(uint64_t a1)
{
  v1 = sub_23B50AD24();
  if (v2 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_23B392468(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_23B392468(319, &qword_280B452F0, &qword_280B43398, 0x277CCAE38);
      if (v7 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for PrecipitationAmount(319);
      if (v8 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for PrecipitationAmountByType(319);
      if (v9 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_23B396F20(319);
        v1 = v10;
        if (v11 <= 0x3F)
        {
          sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
          v1 = v12;
          if (v13 <= 0x3F)
          {
            v1 = type metadata accessor for Wind(319);
            if (v14 <= 0x3F)
            {
              v1 = type metadata accessor for WeatherMetadata(319);
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for PrecipitationAmount(uint64_t a1)
{
  result = qword_280B43C48;
  if (!qword_280B43C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B393818(uint64_t a1)
{
  sub_23B392D14(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for PrecipitationAmountByType(uint64_t a1)
{
  result = qword_280B43928;
  if (!qword_280B43928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3938DC(uint64_t a1)
{
  sub_23B392D14(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SnowfallAmount(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_23B39396C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132290, &qword_23B510418);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23B50ED30;
  *(v0 + 32) = sub_23B50D984();
  *(v0 + 40) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23B50ED30;
  *(v2 + 32) = sub_23B50D984();
  *(v2 + 40) = v3;
  LOBYTE(xmmword_280B4EA08) = 0;
  *(&xmmword_280B4EA08 + 1) = v0;
  word_280B4EA18 = 0;
  byte_280B4EA1A = 1;
  *&result = 1;
  unk_280B4EA20 = xmmword_23B5102B0;
  byte_280B4EA30 = 1;
  qword_280B4EA38 = MEMORY[0x277D84F90];
  unk_280B4EA40 = v2;
  return result;
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

id static Automation.shouldShowSimulatedAlert.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_0_20();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_23B393B54(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_25_11();
  (*v3)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_1@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;

  return sub_23B50D704();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return sub_23B50D8E4();
}

uint64_t OUTLINED_FUNCTION_22_2()
{
  v2 = *(v0 - 376);

  return sub_23B3C7314(v2, type metadata accessor for MoonEvents);
}

void OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_23B4226D4();
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return sub_23B398890(v2, v0, v1);
}

void OUTLINED_FUNCTION_22_10()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t sub_23B393E24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B393E78()
{
  sub_23B3FD99C();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t WDSEndpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WDSEndpoint(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B50AA64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132360, &qword_23B510B40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  v18 = v2 + *(v5 + 28);
  v19 = *v18;
  if (*v18)
  {
    v20 = *(v18 + 8);

    v21 = sub_23B50AA34();
    v42 = v20;
    v41 = v19(v21);
    if (!__swift_getEnumTagSinglePayload(v17, 1, v8))
    {
      sub_23B50AA54();
    }

    if (__swift_getEnumTagSinglePayload(v17, 1, v8))
    {
      v22 = sub_23B50AB34();
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v22);
    }

    else
    {
      (*(v9 + 16))(v11, v17, v8);
      sub_23B50AA44();
      (*(v9 + 8))(v11, v8);
      v27 = sub_23B50AB34();
      if (__swift_getEnumTagSinglePayload(v14, 1, v27) != 1)
      {
        sub_23B401D08(v19, v42);
        (*(*(v27 - 8) + 32))(a1, v14, v27);
        return sub_23B398890(v17, &qword_27E132360, &qword_23B510B40);
      }
    }

    sub_23B398890(v14, &qword_27E131FC0, &qword_23B515170);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v28 = sub_23B50CDF4();
    __swift_project_value_buffer(v28, qword_280B4E9D8);
    sub_23B401CA4(v2, v7);
    v29 = sub_23B50CDD4();
    v30 = sub_23B50D4B4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = a1;
      v33 = v32;
      v43 = v32;
      *v31 = 136446466;
      sub_23B50AB34();
      sub_23B401D74();
      v34 = sub_23B50D824();
      v36 = v35;
      sub_23B401D18(v7);
      v37 = sub_23B391F1C(v34, v36, &v43);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2050;
      *(v31 + 14) = v41;
      _os_log_impl(&dword_23B38D000, v29, v30, "Failed to generate URL from component with url: %{public}s and port: %{public}ld", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v38 = v33;
      a1 = v40;
      MEMORY[0x23EE9E260](v38, -1, -1);
      MEMORY[0x23EE9E260](v31, -1, -1);
      sub_23B401D08(v19, v42);
    }

    else
    {
      sub_23B401D08(v19, v42);

      sub_23B401D18(v7);
    }

    sub_23B50AB34();
    OUTLINED_FUNCTION_6();
    (*(v39 + 16))(a1, v2);
    return sub_23B398890(v17, &qword_27E132360, &qword_23B510B40);
  }

  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  v25 = *(v24 + 16);

  return v25(a1, v2, v23);
}

uint64_t sub_23B3943D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B3943E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return a2;
}

id OUTLINED_FUNCTION_57_0()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_57_4()
{
  v4 = v1 + *(v2 + 48);

  return __swift_getEnumTagSinglePayload(v4, 1, v0);
}

uint64_t sub_23B3944A0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 8))(&v4, v1, v2);

  sub_23B50C8B4();
  return sub_23B39463C(&v4);
}

uint64_t sub_23B3945AC@<X0>(_OWORD *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 64);
  v9[2] = *(*v1 + 48);
  v9[3] = v5;
  v9[0] = v3;
  v9[1] = v4;
  v6 = v2[2];
  *a1 = v2[1];
  a1[1] = v6;
  a1[2] = v2[3];
  a1[3] = v5;
  return sub_23B3918CC(v9, &v8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_43_0()
{
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1)
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_43_4@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_43_7()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_43_12@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 112) = result;
  *(v2 - 104) = v3;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void *sub_23B3947EC(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v72 = a4;
  v73 = a5;
  v57 = a3;
  v13 = sub_23B50AB34();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_23B50BE34();
  v60 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v55 - v18;
  v70 = sub_23B50B774();
  v61 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v59 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v63 = &v55 - v21;
  v68 = sub_23B50B7C4();
  v58 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v66 = sub_23B50B614();
  v26 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v55 - v29;
  v84[3] = type metadata accessor for WeatherServiceFetchOptionsProvider();
  v84[4] = &protocol witness table for WeatherServiceFetchOptionsProvider;
  v84[0] = a6;
  v83[3] = type metadata accessor for StaticServiceConfigurationProvider();
  v83[4] = &off_284E0EE38;
  v83[0] = a7;
  v31 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  type metadata accessor for WeatherModelFactory();
  swift_allocObject();
  *(a8 + v31) = sub_23B39523C();
  v32 = OBJC_IVAR____TtC10WeatherKit14WeatherService_shouldShowSimulatedAlert;
  type metadata accessor for Automation();
  *(a8 + v32) = static Automation.shouldShowSimulatedAlert.getter() & 1;
  a8[7] = a1;
  sub_23B393B54(v84, (a8 + 8));
  v74 = a2;
  sub_23B3943E8(a2, a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_endpoint);
  sub_23B50AFE4();
  v65 = a1;

  sub_23B50AFD4();
  sub_23B50AF04();
  sub_23B50AFC4();

  if (v80 == 1)
  {
    v33 = sub_23B50B644();
    swift_allocObject();
    v34 = sub_23B50B634();
    v35 = MEMORY[0x277D7ABF0];
    a8[5] = v33;
    a8[6] = v35;
    a8[2] = v34;
  }

  else
  {
    v36 = v57;
    v37 = v30;
    v56 = v30;
    sub_23B39530C(v57 & 0x10101, v30);
    v38 = v25;
    v55 = v25;
    sub_23B395450(v36 & 1, v25);
    sub_23B39551C(v36 & 0x101, v63);
    v39 = v74;
    WDSEndpoint.url.getter(v15);
    v40 = (v39 + *(type metadata accessor for WDSEndpoint(0) + 20));
    sub_23B3943D8(*v40, v40[1]);
    v41 = v67;
    sub_23B50BE24();
    v42 = v60;
    (*(v60 + 16))(v69, v41, v71);
    (*(v26 + 16))(v62, v37, v66);
    v43 = v58;
    (*(v58 + 16))(v64, v38, v68);
    v44 = v61;
    v45 = v63;
    (*(v61 + 16))(v59, v63, v70);
    sub_23B3923E8(v72, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C8, &qword_23B523840);
    swift_dynamicCast();
    sub_23B3923E8(v73, &v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353D0, &qword_23B523848);
    swift_dynamicCast();
    sub_23B393B54(v83, &v75);
    v46 = type metadata accessor for WeatherServiceClientSettingsProvider();
    v47 = swift_allocObject();
    sub_23B399858(&v75, v47 + 16);
    v76 = v46;
    v77 = sub_23B391884(qword_280B45810, type metadata accessor for WeatherServiceClientSettingsProvider, &unk_23B5103D8);
    *&v75 = v47;
    v48 = sub_23B50B764();
    v49 = objc_allocWithZone(v48);
    v50 = sub_23B50B754();
    v81 = v48;
    v82 = MEMORY[0x277D7AC40];
    *&v80 = v50;
    (*(v42 + 8))(v67, v71);
    (*(v44 + 8))(v45, v70);
    (*(v43 + 8))(v55, v68);
    (*(v26 + 8))(v56, v66);
    sub_23B399858(&v80, (a8 + 2));
  }

  v51 = v72;
  v52 = v73;
  sub_23B393B54((a8 + 2), &v80);
  type metadata accessor for WeatherAQIScaleService();
  v53 = swift_allocObject();
  *(v53 + 16) = v65;
  sub_23B399858(&v80, v53 + 24);
  *(a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService) = v53;

  sub_23B395624();

  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v51);
  sub_23B393E24(v74, type metadata accessor for WDSEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v83);
  return a8;
}

id sub_23B394FA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_23B50AEF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B50ADC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23B50AD74();
  v12 = sub_23B50ADA4();
  (*(v8 + 8))(v10, v7);
  [v11 setLocale_];

  sub_23B395284(0x2D4D4D2D59595959, 0xEA00000000006464, v11);
  sub_23B50AEA4();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v14 = sub_23B50AEB4();
    (*(v4 + 8))(v6, v3);
    [v11 setTimeZone_];

    return v11;
  }

  return result;
}

uint64_t sub_23B39523C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_23B394FA0();
  return v0;
}

void sub_23B395284(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23B50D144();

  [a3 setDateFormat_];
}

uint64_t sub_23B39530C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_23B50AFE4();
  sub_23B50AFD4();
  sub_23B50AF14();
  sub_23B50AFC4();

  sub_23B50AFD4();
  sub_23B50AF34();
  sub_23B50AFC4();

  if ((v10 & 1) != 0 || v9)
  {
    v6 = *MEMORY[0x277D7ABE0];
    v7 = sub_23B50B614();
    return (*(*(v7 - 8) + 104))(a2, v6, v7);
  }

  else
  {
    v4 = sub_23B50B614();
    if ((a1 & 0x10000) != 0)
    {
      v5 = MEMORY[0x277D7ABD8];
    }

    else
    {
      v5 = MEMORY[0x277D7ABE0];
    }

    return (*(*(v4 - 8) + 104))(a2, *v5, v4);
  }
}

uint64_t sub_23B395450@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23B50AFE4();
  sub_23B50AFD4();
  sub_23B50AF64();
  sub_23B50AFC4();

  v4 = sub_23B50B7C4();
  v5 = *MEMORY[0x277D7AC58];
  if ((a1 & 1) == 0)
  {
    v5 = *MEMORY[0x277D7AC60];
  }

  if (v8)
  {
    v6 = *MEMORY[0x277D7AC60];
  }

  else
  {
    v6 = v5;
  }

  return (*(*(v4 - 8) + 104))(a2, v6, v4);
}

uint64_t sub_23B39551C@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  sub_23B50AFE4();
  sub_23B50AFD4();
  sub_23B50AF44();
  sub_23B50AFC4();

  if (v9 == 1)
  {
    v4 = *MEMORY[0x277D7AC50];
    v5 = sub_23B50B774();
    return (*(*(v5 - 8) + 104))(a2, v4, v5);
  }

  else
  {
    v7 = sub_23B50B774();
    if ((a1 & 0x100) != 0)
    {
      v8 = MEMORY[0x277D7AC48];
    }

    else
    {
      v8 = MEMORY[0x277D7AC50];
    }

    return (*(*(v7 - 8) + 104))(a2, *v8, v7);
  }
}

uint64_t sub_23B395624()
{
  sub_23B50AFE4();
  sub_23B50AFD4();
  sub_23B50AF54();
  sub_23B50AFC4();

  if (v1 == 1)
  {
    sub_23B50AF24();
    sub_23B50AF54();
    sub_23B50AF74();

    return sub_23B47E484();
  }

  return result;
}

uint64_t sub_23B3956C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_23B50D8E4();
}

uint64_t OUTLINED_FUNCTION_7_2@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_23B50D7C4();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return type metadata accessor for SunEvents(0);
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_23B3CE510(v4 + a1, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_4_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CC87F0];

  return sub_23B3F1C50(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  result = *(v1 - 104);
  *(v1 - 136) = result + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  *(v1 - 144) = v0 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2)
{

  return sub_23B50D794();
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1, uint64_t a2)
{

  return sub_23B50D6D4();
}

uint64_t OUTLINED_FUNCTION_8_9(unint64_t *a1)
{
  v4 = MEMORY[0x277CC87E0];

  return sub_23B3F1C50(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_23B3CE510(v0 + v4, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return type metadata accessor for PrecipitationAmount(0);
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return type metadata accessor for SnowfallAmount(0);
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return sub_23B4591A0(v0, type metadata accessor for DayWeather);
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return type metadata accessor for WeatherMetadata(0);
}

uint64_t OUTLINED_FUNCTION_8_27(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v10 + 16);
  v9[23] = *(v10 + 24);
  v9[24] = v8;
  v9[21] = a8;
  v9[22] = v11;
  v9[19] = a6;
  v9[20] = a7;
  v9[17] = a4;
  v9[18] = a5;
  v9[15] = a2;
  v9[16] = a3;
  v9[14] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_23B4FB78C();
}

uint64_t sub_23B395C50(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherMetadata(0);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23B395CEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata(0);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B395D80(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_34_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[11];
    }

    else
    {
      sub_23B50AB34();
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[14];
        }

        else
        {
          v8 = type metadata accessor for WeatherMetadata(0);
          v14 = a3[17];
        }
      }
    }

    v9 = v3 + v14;
    goto LABEL_15;
  }

  v10 = *(v3 + a3[6] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_23B395F38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B395FE0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_25:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[15];
        }

        else
        {
          type metadata accessor for PrecipitationAmount(0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[17];
          }

          else
          {
            type metadata accessor for PrecipitationAmountByType(0);
            OUTLINED_FUNCTION_8_0();
            if (*(v22 + 84) == a2)
            {
              v8 = v21;
              v14 = a3[19];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
              OUTLINED_FUNCTION_8_0();
              if (*(v24 + 84) == a2)
              {
                v8 = v23;
                v14 = a3[29];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
                OUTLINED_FUNCTION_8_0();
                if (*(v26 + 84) == a2)
                {
                  v8 = v25;
                  v14 = a3[32];
                }

                else
                {
                  type metadata accessor for Wind(0);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v28 + 84) == a2)
                  {
                    v8 = v27;
                    v14 = a3[33];
                  }

                  else
                  {
                    v8 = type metadata accessor for WeatherMetadata(0);
                    v14 = a3[34];
                  }
                }
              }
            }
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_25;
  }

  v10 = *(a1 + a3[11] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t OUTLINED_FUNCTION_7_6()
{
}

double OUTLINED_FUNCTION_7_12(double result)
{
  if (result == 0.0)
  {
    return v1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1, uint64_t a2)
{

  return sub_23B50D6D4();
}

void OUTLINED_FUNCTION_7_21(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v6);

  sub_23B42E4E4(0, 0, v5, v4, v3, v2);
}

void OUTLINED_FUNCTION_7_23(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_7_27(uint64_t a1, uint64_t a2)
{

  return sub_23B50D794();
}

uint64_t OUTLINED_FUNCTION_7_28(unint64_t *a1)
{
  v2 = MEMORY[0x277CC87E0];

  return sub_23B3E38E8(a1, v2);
}

uint64_t OUTLINED_FUNCTION_7_31()
{

  return sub_23B4591A0(v0, type metadata accessor for HourWeather);
}

uint64_t OUTLINED_FUNCTION_7_32@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 120) = a1;
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  return 0;
}

void OUTLINED_FUNCTION_7_33()
{
  *(v0 + *(v1 + 32)) = v5;
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_7_43()
{

  return type metadata accessor for WeatherServiceOptions(0);
}

uint64_t OUTLINED_FUNCTION_7_47()
{

  return sub_23B396CA4();
}

uint64_t sub_23B396754(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3967F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_19();
  v7 = type metadata accessor for AirPollutantMeasurement(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24));
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

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return type metadata accessor for HourWeather(0);
}

uint64_t OUTLINED_FUNCTION_34_9(uint64_t a1)
{

  return sub_23B50D6A4();
}

uint64_t type metadata accessor for AirPollutantMeasurement(uint64_t a1)
{
  result = qword_280B439D0;
  if (!qword_280B439D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B396A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AirPollutantMeasurement(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_23B396AC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_34_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[6] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      sub_23B50AB34();
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[14];
        }

        else
        {
          v10 = type metadata accessor for WeatherMetadata(0);
          v14 = a4[17];
        }
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t CurrentWeather.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44_6();
}

uint64_t sub_23B396CA4()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_42_3()
{

  JUMPOUT(0x23EE9DB40);
}

uint64_t OUTLINED_FUNCTION_42_4()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_42_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return type metadata accessor for Forecast(0, &a9);
}

uint64_t OUTLINED_FUNCTION_59_0()
{
}

uint64_t WeatherMetadata.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeatherMetadata(0) + 20);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SnowfallAmount(uint64_t a1)
{
  result = qword_280B43FA8;
  if (!qword_280B43FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B396F20(uint64_t a1)
{
  if (!qword_280B452D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E30, &qword_23B511AC0);
    v1 = sub_23B50D504();
    if (!v2)
    {
      atomic_store(v1, &qword_280B452D8);
    }
  }
}

uint64_t sub_23B396F94(uint64_t a1)
{
  v1 = sub_23B50AD24();
  if (v2 <= 0x3F)
  {
    sub_23B397278(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_23B397228(319, &qword_280B452B0, MEMORY[0x277CC9578]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_23B397278(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          v1 = type metadata accessor for PrecipitationAmountByType(319);
          if (v9 <= 0x3F)
          {
            v1 = type metadata accessor for SunEvents(319);
            if (v10 <= 0x3F)
            {
              v1 = type metadata accessor for MoonEvents(319);
              if (v11 <= 0x3F)
              {
                v1 = type metadata accessor for Wind(319);
                if (v12 <= 0x3F)
                {
                  sub_23B3934D4(319);
                  v1 = v13;
                  if (v14 <= 0x3F)
                  {
                    sub_23B397278(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
                    v1 = v15;
                    if (v16 <= 0x3F)
                    {
                      v1 = type metadata accessor for DayPartForecast(319);
                      if (v17 <= 0x3F)
                      {
                        sub_23B397228(319, qword_280B43E88, type metadata accessor for DayPartForecast);
                        v1 = v18;
                        if (v19 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                          return 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_23B397228(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_77();
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B397278(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_23B3924C0(255, a3, a4);
    OUTLINED_FUNCTION_77();
    v5 = sub_23B50A9E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2)
{

  return sub_23B50D1C4();
}

uint64_t type metadata accessor for SunEvents(uint64_t a1)
{
  result = qword_280B43588;
  if (!qword_280B43588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397358(uint64_t a1)
{
  sub_23B3973DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B3973DC(uint64_t a1)
{
  if (!qword_280B452B0)
  {
    sub_23B50AD24();
    v1 = sub_23B50D504();
    if (!v2)
    {
      atomic_store(v1, &qword_280B452B0);
    }
  }
}

uint64_t type metadata accessor for MoonEvents(uint64_t a1)
{
  result = qword_280B443D8;
  if (!qword_280B443D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397480(uint64_t a1)
{
  sub_23B3973DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for DayPartForecast(uint64_t a1)
{
  result = qword_280B43F08;
  if (!qword_280B43F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397548(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PrecipitationAmountByType(319);
      if (v3 <= 0x3F)
      {
        sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Wind(319);
          if (v5 <= 0x3F)
          {
            sub_23B392468(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B3976E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for MinuteCondition(uint64_t a1)
{
  result = qword_280B43E18;
  if (!qword_280B43E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397778(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B3973DC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PrecipitationShift(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for PrecipitationShift(uint64_t a1)
{
  result = qword_280B43CE0;
  if (!qword_280B43CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397870(uint64_t a1)
{
  sub_23B3973DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for MinuteSummary(uint64_t a1)
{
  result = qword_280B44148;
  if (!qword_280B44148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397938(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B3973DC(319);
    if (v2 <= 0x3F)
    {
      sub_23B3979E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B3979E8()
{
  if (!qword_280B43890[0])
  {
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, qword_280B43890);
    }
  }
}

uint64_t sub_23B397A38(uint64_t a1)
{
  v1 = sub_23B50AD24();
  if (v2 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_23B392468(319, &qword_280B452F0, &qword_280B43398, 0x277CCAE38);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          v1 = type metadata accessor for Wind(319);
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for HourWeather(uint64_t a1)
{
  result = qword_280B450F0;
  if (!qword_280B450F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherNetworkActivity.Label(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x23B397D3CLL);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Wind.CompassDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23B397E44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AB34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_23B397F28(uint64_t a1)
{
  sub_23B50D304();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WeatherMetadata(319);
    if (v2 <= 0x3F)
    {
      sub_23B3976E0(319, &qword_280B43430, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_23B490060(319, &qword_280B43408, &qword_27E133D70, &qword_23B51B168);
        if (v4 <= 0x3F)
        {
          sub_23B490060(319, &qword_280B43410, &qword_27E133D78, &qword_23B51B170);
          if (v5 <= 0x3F)
          {
            sub_23B3976E0(319, qword_280B443E8, &type metadata for Coordinate);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B398060(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_265(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_23B50D504();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t static WeatherAQIScaleCacheManager.shared.getter()
{
  if (qword_280B45350 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23B398120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AB34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t WDSEndpoint.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  (*(v4 + 32))(a2, a1);
  result = type metadata accessor for WDSEndpoint(0);
  v6 = (a2 + *(result + 20));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

void static WeatherServiceCaching.disabled.getter()
{
  if (qword_27E131C48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_59(&word_27E135B58);
}

uint64_t type metadata accessor for DayWeather(uint64_t a1)
{
  result = qword_280B451F8;
  if (!qword_280B451F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WDSEndpoint.portOverrideProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for WDSEndpoint(0) + 20));
  v2 = *v1;
  sub_23B3943D8(*v1, v1[1]);
  return v2;
}

uint64_t WeatherServiceFetchOptionsProvider.init(geocodeManager:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

void sub_23B398340()
{
  OUTLINED_FUNCTION_21();
  v9 = v0;
  v2 = v1;
  OUTLINED_FUNCTION_148_0();
  __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v6 = OUTLINED_FUNCTION_180_1(v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_195_1();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_20();
}

void sub_23B398454(uint64_t a1)
{
  sub_23B3984D8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B3984D8(uint64_t a1)
{
  if (!qword_280B452A8)
  {
    sub_23B50AD64();
    v1 = sub_23B50D504();
    if (!v2)
    {
      atomic_store(v1, &qword_280B452A8);
    }
  }
}

uint64_t type metadata accessor for WeatherNetworkActivity(uint64_t a1)
{
  result = qword_280B44C00;
  if (!qword_280B44C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39857C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WeatherNetworkActivity.createNWActivity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  v2 = OUTLINED_FUNCTION_3(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = sub_23B50AD64();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_23B50D094();
  swift_allocObject();
  v15 = sub_23B50D084();
  v16 = type metadata accessor for WeatherNetworkActivity(0);
  sub_23B398820(v0 + *(v16 + 28), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_23B398890(v4, &qword_27E1321E8, &qword_23B5101C0);
  }

  else
  {
    (*(v7 + 32))(v14, v4, v5);
    (*(v7 + 16))(v11, v14, v5);
    swift_allocObject();
    sub_23B50D074();

    sub_23B50D064();

    (*(v7 + 8))(v14, v5);
  }

  return v15;
}

uint64_t sub_23B398820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B398890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B3988E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23B398958()
{
  result = qword_280B43250;
  if (!qword_280B43250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43250);
  }

  return result;
}

double WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v59 = a8;
  v57 = a2;
  v58 = a6;
  v56 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v15 = OUTLINED_FUNCTION_3(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v51 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v19 = OUTLINED_FUNCTION_3(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v55 = *a4;
  v54 = *(a4 + 4);
  v22 = *a5;
  v47 = v22;
  v23 = a3;
  sub_23B39A44C(a3, &v46 - v20, &qword_27E131F68, &unk_23B50F2A0);
  sub_23B39A44C(a7, v17, &qword_27E1338B0, &unk_23B519390);
  v65 = v22;
  WeatherServiceCaching.Options.cacheReadPolicy.getter(&v60);
  v50 = v60;
  v53 = v63;
  v52 = v62;
  v48 = v64;
  v49 = v61;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  v25 = Options[5];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = a9 + Options[6];
  *v30 = 0;
  *(v30 + 4) = 768;
  v31 = Options[9];
  type metadata accessor for WeatherNetworkActivity(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = Options[14];
  sub_23B398890(a7, &qword_27E1338B0, &unk_23B519390);
  sub_23B398890(v23, &qword_27E131F68, &unk_23B50F2A0);
  *(a9 + v40) = MEMORY[0x277D84F90];
  v41 = v57;
  *a9 = v56;
  a9[1] = v41;
  sub_23B39A558(v21, a9 + v25, &qword_27E131F68, &unk_23B50F2A0);
  *v30 = v55;
  *(v30 + 4) = v54;
  *(a9 + Options[7]) = v47;
  *(a9 + Options[8]) = v58;
  sub_23B39A558(v51, a9 + v31, &qword_27E1338B0, &unk_23B519390);
  *(a9 + Options[10]) = v59;
  *(a9 + Options[11]) = 0;
  v42 = a9 + Options[13];
  result = *&v50;
  *v42 = v50;
  v44 = v48;
  *(v42 + 2) = v49;
  v42[30] = v44;
  v45 = v52;
  *(v42 + 14) = v53;
  *(v42 + 6) = v45;
  *(a9 + Options[15]) = 0;
  return result;
}

void sub_23B398C94(uint64_t a1)
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v1 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v2 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v3 <= 0x3F)
      {
        sub_23B399C6C(319, &qword_280B426E0, type metadata accessor for PeriodicForecasts);
        if (v4 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
          if (v5 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
            if (v6 <= 0x3F)
            {
              sub_23B39A134(319, &qword_280B42EF8, &qword_27E131EF0, &unk_23B50F220);
              if (v7 <= 0x3F)
              {
                sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
                if (v8 <= 0x3F)
                {
                  sub_23B39B0D4(319, v8, v9, v10);
                  if (v11 <= 0x3F)
                  {
                    sub_23B39A134(319, &qword_280B426D0, &qword_27E131ED8, &qword_23B50F208);
                    if (v12 <= 0x3F)
                    {
                      sub_23B39A134(319, &qword_280B426D8, &qword_27E131E88, &unk_23B519360);
                      if (v13 <= 0x3F)
                      {
                        sub_23B39A134(319, &qword_280B426E8, &qword_27E131EF8, &unk_23B50F230);
                        if (v14 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_23B398F80(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v85 = a5;
  v83 = a4;
  v71 = a2;
  v15 = sub_23B50AB34();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_23B50BE34();
  v70 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v65 - v20;
  v81 = sub_23B50B774();
  v69 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v67 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v75 = &v65 - v23;
  v79 = sub_23B50B7C4();
  v68 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v73 = &v65 - v26;
  v76 = sub_23B50B614();
  v66 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v65 - v29;
  v92[3] = a9;
  v92[4] = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v92);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a7, a9);
  v32 = *a3;
  v33 = a3[1];
  v34 = a3[2];
  v35 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  type metadata accessor for WeatherModelFactory();
  swift_allocObject();
  *(a8 + v35) = sub_23B39523C();
  v36 = OBJC_IVAR____TtC10WeatherKit14WeatherService_shouldShowSimulatedAlert;
  type metadata accessor for Automation();
  *(a8 + v36) = static Automation.shouldShowSimulatedAlert.getter() & 1;
  a8[7] = a1;
  v84 = a6;
  v37 = a6;
  v38 = v71;
  sub_23B393B54(v37, (a8 + 8));
  sub_23B3943E8(v38, a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_endpoint);
  sub_23B50AFE4();
  v77 = a1;

  sub_23B50AFD4();
  sub_23B50AF04();
  sub_23B50AFC4();

  if (v89 == 1)
  {
    v39 = sub_23B50B644();
    swift_allocObject();
    v40 = sub_23B50B634();
    v41 = MEMORY[0x277D7ABF0];
    a8[5] = v39;
    a8[6] = v41;
    a8[2] = v40;
    v42 = v83;
  }

  else
  {
    if (v34)
    {
      v43 = 0x10000;
    }

    else
    {
      v43 = 0;
    }

    if (v33)
    {
      v44 = 256;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44 | v32;
    v46 = v30;
    v65 = v30;
    sub_23B39530C(v44 | v32 | v43, v30);
    v47 = v17;
    v48 = v73;
    sub_23B395450(v45 | v43, v73);
    v49 = v75;
    sub_23B39551C(v45 | v43, v75);
    WDSEndpoint.url.getter(v47);
    v50 = (v38 + *(type metadata accessor for WDSEndpoint(0) + 20));
    sub_23B3943D8(*v50, v50[1]);
    v51 = v78;
    sub_23B50BE24();
    v52 = v70;
    (*(v70 + 16))(v80, v51, v82);
    v53 = v66;
    (*(v66 + 16))(v72, v46, v76);
    v54 = v68;
    (*(v68 + 16))(v74, v48, v79);
    v55 = v69;
    (*(v69 + 16))(v67, v49, v81);
    v56 = v83;
    sub_23B3923E8(v83, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C8, &qword_23B523840);
    swift_dynamicCast();
    sub_23B3923E8(v85, v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353D0, &qword_23B523848);
    swift_dynamicCast();
    sub_23B393B54(v92, v86);
    v57 = type metadata accessor for WeatherServiceClientSettingsProvider();
    v58 = swift_allocObject();
    sub_23B399858(v86, v58 + 16);
    v86[3] = v57;
    v86[4] = sub_23B391884(qword_280B45810, type metadata accessor for WeatherServiceClientSettingsProvider, &unk_23B5103D8);
    v86[0] = v58;
    v59 = sub_23B50B764();
    v60 = objc_allocWithZone(v59);
    v61 = sub_23B50B754();
    v90 = v59;
    v91 = MEMORY[0x277D7AC40];
    *&v89 = v61;
    (*(v52 + 8))(v78, v82);
    (*(v55 + 8))(v75, v81);
    (*(v54 + 8))(v73, v79);
    (*(v53 + 8))(v65, v76);
    sub_23B399858(&v89, (a8 + 2));
    v42 = v56;
  }

  v62 = v85;
  sub_23B393B54((a8 + 2), &v89);
  type metadata accessor for WeatherAQIScaleService();
  v63 = swift_allocObject();
  *(v63 + 16) = v77;
  sub_23B399858(&v89, v63 + 24);
  *(a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService) = v63;

  sub_23B395624();

  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_23B393E24(v38, type metadata accessor for WDSEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v92);
  return a8;
}

uint64_t sub_23B399858(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for WeatherServiceFetchOptions(uint64_t a1)
{
  result = qword_280B44A88;
  if (!qword_280B44A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3998BC(uint64_t a1)
{
  sub_23B399B1C(319, &qword_280B43430, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23B399ABC(319, &qword_280B452A0, MEMORY[0x277CC9A70]);
    if (v2 <= 0x3F)
    {
      sub_23B399B1C(319, qword_280B449D8, &type metadata for WeatherServiceLocationOptions, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23B399B1C(319, &qword_280B433C0, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_23B399ABC(319, qword_280B44BC8, type metadata accessor for WeatherNetworkActivity);
          if (v5 <= 0x3F)
          {
            sub_23B399ABC(319, &qword_280B452B0, MEMORY[0x277CC9578]);
            if (v6 <= 0x3F)
            {
              sub_23B399B1C(319, &qword_280B433D0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23B399ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B399B1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t WeatherNetworkActivity.init(domain:label:token:parentToken:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = *a2;
  *a5 = *a1;
  a5[1] = v8;
  v9 = type metadata accessor for WeatherNetworkActivity(0);
  sub_23B39857C(a3, &a5[*(v9 + 24)]);
  v10 = &a5[*(v9 + 28)];

  return sub_23B39857C(a4, v10);
}

unint64_t sub_23B399BF8()
{
  result = qword_280B43248;
  if (!qword_280B43248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43248);
  }

  return result;
}

void sub_23B399C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v8 = type metadata accessor for WeatherQuery(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23B399CD8(uint64_t a1)
{
  sub_23B399E40(319, &qword_280B452C8, MEMORY[0x277CC88A8]);
  if (v1 <= 0x3F)
  {
    sub_23B3976E0(319, &qword_280B449D0, &type metadata for WeatherQueryDailyRelativeRange);
    if (v2 <= 0x3F)
    {
      sub_23B3976E0(319, &qword_280B449C8, &type metadata for WeatherQueryHourlyRelativeRange);
      if (v3 <= 0x3F)
      {
        sub_23B3976E0(319, qword_280B44870, &type metadata for WeatherQueryMarineHourlyRelativeRange);
        if (v4 <= 0x3F)
        {
          sub_23B399E40(319, qword_280B44D40, type metadata accessor for InstantWeatherQueryOptions);
          if (v5 <= 0x3F)
          {
            sub_23B399E40(319, qword_280B44978, type metadata accessor for WeatherQueryPeriodicRelativeRange);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B399E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B399E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for InstantWeatherQueryOptions(uint64_t a1)
{
  result = qword_280B44D70;
  if (!qword_280B44D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B399F34(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B399FA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23B399FA8(uint64_t a1)
{
  if (!qword_280B452C0)
  {
    sub_23B50AA24();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B452C0);
    }
  }
}

uint64_t type metadata accessor for WeatherQueryPeriodicRelativeRange(uint64_t a1)
{
  result = qword_280B449B0;
  if (!qword_280B449B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A060(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B39A0E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B39A0E4()
{
  if (!qword_280B433C8)
  {
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B433C8);
    }
  }
}

void sub_23B39A134(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = type metadata accessor for WeatherQuery(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for MinuteWeather(uint64_t a1)
{
  result = qword_280B45008;
  if (!qword_280B45008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A1D4(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B39A5F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

WeatherKit::WeatherServiceLocationOptions __swiftcall WeatherServiceLocationOptions.init(decimalPrecision:limitsPrecision:)(Swift::Int_optional decimalPrecision, Swift::Bool_optional limitsPrecision)
{
  *v2 = decimalPrecision.value;
  *(v2 + 8) = decimalPrecision.is_nil;
  *(v2 + 9) = limitsPrecision;
  result.decimalPrecision = decimalPrecision;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for WeatherServiceLocationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

_BYTE *sub_23B39A2FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B39A398(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
    v9 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B39A44C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_23B39A49C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void WeatherServiceCaching.Options.cacheReadPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if ((*v1 & 8) != 0)
  {
    v3 = 0;
    v6 = 0;
    v7 = 512;
  }

  else
  {
    v3 = (v2 & 1) == 0;
    v4 = (v2 >> 1) & 1;
    v5 = (v2 >> 2) & 1;
    v6 = 1;
    v7 = (v4 << 8) | (v5 << 16) | 0x10000000001;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 30) = 0;
  *(a1 + 24) = v7;
  *(a1 + 28) = WORD2(v7);
}

uint64_t sub_23B39A558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_23B39A5A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 40))(v4, v5);
  return v4;
}

void sub_23B39A5F4(uint64_t a1)
{
  if (!qword_280B45308)
  {
    sub_23B3EA0E8();
    v1 = sub_23B50A9E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280B45308);
    }
  }
}

uint64_t type metadata accessor for PeriodicForecasts(uint64_t a1)
{
  result = qword_280B43D78;
  if (!qword_280B43D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A698(uint64_t a1)
{
  type metadata accessor for WeatherMetadata(319);
  if (v1 <= 0x3F)
  {
    sub_23B39A71C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B39A71C()
{
  if (!qword_280B43400)
  {
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B43400);
    }
  }
}

uint64_t type metadata accessor for AirQuality(uint64_t a1)
{
  result = qword_280B444A8;
  if (!qword_280B444A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A7B8(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B39A928(319, qword_280B43B78, type metadata accessor for ProviderAttribution);
    if (v2 <= 0x3F)
    {
      sub_23B50AB34();
      if (v3 <= 0x3F)
      {
        sub_23B39AA9C(319);
        if (v4 <= 0x3F)
        {
          sub_23B39A928(319, qword_280B44260, type metadata accessor for AirPollutant);
          if (v5 <= 0x3F)
          {
            type metadata accessor for WeatherMetadata(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B39A928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ProviderAttribution(uint64_t a1)
{
  result = qword_280B43BA8;
  if (!qword_280B43BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A9C8(uint64_t a1)
{
  sub_23B39AA44(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B39AA44(uint64_t a1)
{
  if (!qword_280B452B8)
  {
    sub_23B50AB34();
    v1 = sub_23B50D504();
    if (!v2)
    {
      atomic_store(v1, &qword_280B452B8);
    }
  }
}

void sub_23B39AA9C(uint64_t a1)
{
  if (!qword_280B43438)
  {
    type metadata accessor for AirPollutant(255);
    v1 = sub_23B50D0C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280B43438);
    }
  }
}

uint64_t type metadata accessor for AirPollutant(uint64_t a1)
{
  result = qword_280B44298;
  if (!qword_280B44298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39AB50(uint64_t a1)
{
  result = type metadata accessor for AirPollutantMeasurement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23B39ABD4(uint64_t a1)
{
  sub_23B392468(319, &qword_280B452E8, &qword_280B43390, 0x277CCADC8);
  if (v1 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452D0, &qword_280B43378, 0x277CCADB8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WeatherChanges(uint64_t a1)
{
  result = qword_280B44670;
  if (!qword_280B44670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39ACC4(uint64_t a1)
{
  if (!qword_280B43418)
  {
    type metadata accessor for WeatherChange(255);
    v1 = sub_23B50D304();
    if (!v2)
    {
      atomic_store(v1, &qword_280B43418);
    }
  }
}

void sub_23B39AD1C(uint64_t a1)
{
  sub_23B39ACC4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WeatherMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WeatherChange(uint64_t a1)
{
  result = qword_280B44710;
  if (!qword_280B44710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39AE04(uint64_t a1)
{
  result = sub_23B50AD24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WeatherAlert(uint64_t a1)
{
  result = qword_280B44858;
  if (!qword_280B44858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39AED0(uint64_t a1)
{
  sub_23B50AB34();
  if (v1 <= 0x3F)
  {
    sub_23B50AD24();
    if (v2 <= 0x3F)
    {
      sub_23B39B030(319, &qword_280B452B0, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_23B39B030(319, &qword_280B452B8, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          sub_23B39B084();
          if (v5 <= 0x3F)
          {
            type metadata accessor for WeatherMetadata(319);
            if (v6 <= 0x3F)
            {
              sub_23B50AD64();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23B39B030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B39B084()
{
  if (!qword_280B43430)
  {
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B43430);
    }
  }
}

void sub_23B39B0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280B426F0)
  {
    v4 = type metadata accessor for WeatherQuery(0, &type metadata for WeatherAvailability, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_280B426F0);
    }
  }
}

uint64_t type metadata accessor for HistoricalComparisons(uint64_t a1)
{
  result = qword_280B43A68;
  if (!qword_280B43A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39B170(uint64_t a1)
{
  sub_23B39B1F4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WeatherMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B39B1F4(uint64_t a1)
{
  if (!qword_280B433F8)
  {
    type metadata accessor for HistoricalComparison(255);
    v1 = sub_23B50D304();
    if (!v2)
    {
      atomic_store(v1, &qword_280B433F8);
    }
  }
}

uint64_t type metadata accessor for HistoricalComparison(uint64_t a1)
{
  result = qword_280B43B10;
  if (!qword_280B43B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39B298(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    v6 = sub_23B3924C0(255, a3, a4);
    v9 = type metadata accessor for Trend(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23B39B2F0(uint64_t a1)
{
  sub_23B39B298(319, &qword_280B436C8, &qword_280B43388, 0x277CCAE48);
  if (v1 <= 0x3F)
  {
    sub_23B39B298(319, qword_280B436D0, &qword_280B433A0, 0x277CCAE20);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23B39B3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TrendBaseline(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_23B50A9E4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B39B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TrendBaseline.Kind(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_23B50A9E4();
    if (v6 <= 0x3F)
    {
      result = sub_23B50AD24();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void ProductRequirementsFactory.appRequiredProducts(for:)()
{
  OUTLINED_FUNCTION_21();
  v122 = v0;
  v125 = v1;
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  MEMORY[0x28223BE20](PeriodicRelativeRange);
  OUTLINED_FUNCTION_27();
  v126 = v4 - v3;
  v134 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v124 = v5;
  MEMORY[0x28223BE20](v6);
  v133 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v131 = &v121 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v121 - v11);
  v13 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  v19 = v18 - v17;
  v132 = sub_23B50AE84();
  OUTLINED_FUNCTION_5();
  v123 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = &v121 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  v27 = (v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v121 - v28;
  v30 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  v128 = v37;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  OUTLINED_FUNCTION_1();
  v127 = PeriodicRelativeRange;
  __swift_storeEnumTagSinglePayload(v41, v42, v43, PeriodicRelativeRange);
  v44 = &v29[v27[10]];
  *v44 = xmmword_23B51CAD0;
  v44[16] = 0;
  v45 = &v29[v27[11]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v45[16] = 2;
  v46 = v27[12];
  v129 = v29;
  v47 = &v29[v46];
  *v47 = 0;
  *(v47 + 1) = 0;
  v47[16] = 2;
  sub_23B39E56C(v122, v12, &qword_27E131F68, &unk_23B50F2A0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23B50AEC4();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_23B497228(v12);
    }
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
  }

  sub_23B50ADF4();
  (*(v15 + 8))(v19, v13);
  sub_23B50B9D4();
  v48 = v133;
  sub_23B50B994();
  sub_23B50ADE4();
  v49 = v124;
  (*(v124 + 8))(v48, v134);
  sub_23B50AE44();
  sub_23B50AB84();
  v123 = *(v123 + 8);
  (v123)(v23, v132);
  v50 = v125;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v30);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v30);
  v58 = v50 + v54[8];
  *v58 = 0;
  *(v58 + 8) = 0;
  *(v58 + 16) = 1;
  v59 = v50 + v54[9];
  *v59 = 0;
  *(v59 + 8) = 0;
  *(v59 + 16) = 2;
  v60 = v50 + v54[10];
  *v60 = 0;
  *(v60 + 8) = 0;
  *(v60 + 16) = 2;
  OUTLINED_FUNCTION_1();
  v61 = v128;
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v128);
  OUTLINED_FUNCTION_1();
  v65 = v127;
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v127);
  v69 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts(0);
  v70 = *(v69 + 20);
  v71 = v69;
  v122 = v69;
  OUTLINED_FUNCTION_15_18(v70);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  OUTLINED_FUNCTION_2_38(v72);
  OUTLINED_FUNCTION_55_3(v73);
  OUTLINED_FUNCTION_18_17(v12[9]);
  OUTLINED_FUNCTION_18_17(v12[10]);
  v74 = OUTLINED_FUNCTION_6_23();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v61);
  v77 = OUTLINED_FUNCTION_9_24(v12[12]);
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v65);
  OUTLINED_FUNCTION_15_18(*(v71 + 24));
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  OUTLINED_FUNCTION_2_38(v80);
  OUTLINED_FUNCTION_55_3(v81);
  OUTLINED_FUNCTION_18_17(v12[9]);
  OUTLINED_FUNCTION_18_17(v12[10]);
  v82 = OUTLINED_FUNCTION_6_23();
  v83 = v61;
  __swift_storeEnumTagSinglePayload(v82, v84, v85, v61);
  v86 = OUTLINED_FUNCTION_9_24(v12[12]);
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v65);
  (v123)(v130, v132);
  v89 = *(v49 + 32);
  v90 = v126;
  v91 = v134;
  v89(v126, v131, v134);
  v89(v90 + *(v65 + 20), v133, v91);
  *(v90 + *(v65 + 24)) = &unk_284E0DED8;
  v92 = v122;
  OUTLINED_FUNCTION_15_18(v122[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
  OUTLINED_FUNCTION_31_8();
  v94 = OUTLINED_FUNCTION_9_24(v93);
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v30);
  v97 = OUTLINED_FUNCTION_6_23();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v83);
  v100 = v12[12];
  sub_23B3A003C(v90, v91 + v100);
  __swift_storeEnumTagSinglePayload(v91 + v100, 0, 1, v65);
  v101 = v91 + v12[8];
  *v101 = 0;
  *(v101 + 8) = 0;
  *(v101 + 16) = 1;
  v102 = (v91 + v12[9]);
  *v102 = 0;
  v102[1] = 0;
  OUTLINED_FUNCTION_19_14(v102);
  OUTLINED_FUNCTION_15_18(v92[9]);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  OUTLINED_FUNCTION_1_32(v103);
  *(v104 + 16) = 2;
  OUTLINED_FUNCTION_20_15();
  *(v105 + 16) = 2;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v92[10]);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
  OUTLINED_FUNCTION_1_32(v106);
  OUTLINED_FUNCTION_19_14(v107);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v92[11]);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  OUTLINED_FUNCTION_1_32(v108);
  *(v109 + 16) = 2;
  OUTLINED_FUNCTION_20_15();
  *(v110 + 16) = 2;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v92[12]);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
  OUTLINED_FUNCTION_1_32(v111);
  OUTLINED_FUNCTION_19_14(v112);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v92[13]);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
  OUTLINED_FUNCTION_1_32(v113);
  *(v114 + 16) = 2;
  OUTLINED_FUNCTION_20_15();
  *(v115 + 16) = 2;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v92[14]);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
  OUTLINED_FUNCTION_1_32(v116);
  OUTLINED_FUNCTION_19_14(v117);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v92[15]);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
  OUTLINED_FUNCTION_1_32(v118);
  *(v119 + 16) = 2;
  OUTLINED_FUNCTION_20_15();
  *(v120 + 16) = 2;
  OUTLINED_FUNCTION_4_31();
  sub_23B3A09CC(v129, v50 + v92[8]);
  OUTLINED_FUNCTION_20();
}

uint64_t type metadata accessor for WeatherServiceLastFetched(uint64_t a1)
{
  result = qword_280B427A0;
  if (!qword_280B427A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39BDA8(uint64_t a1)
{
  v1 = sub_23B50AD24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_21();
  a19 = v37;
  a20 = v38;
  v162[2] = v39;
  v161 = v40;
  v166 = v41;
  OUTLINED_FUNCTION_147_0(a25);
  OUTLINED_FUNCTION_114_0(v42);
  OUTLINED_FUNCTION_115_0(v43);
  OUTLINED_FUNCTION_94_0(v44);
  OUTLINED_FUNCTION_93_0(v45);
  OUTLINED_FUNCTION_231_0(v46);
  OUTLINED_FUNCTION_73_1(v47);
  OUTLINED_FUNCTION_116_0(a28);
  v48 = a29;
  v154 = a29;
  v49 = a30;
  v50 = a31;
  v51 = a32;
  v52 = a33;
  v53 = a34;
  v54 = a35;
  v55 = OUTLINED_FUNCTION_80_1(a36, v176);
  v59 = type metadata accessor for WeatherQuery(v55, v56, v57, v58);
  OUTLINED_FUNCTION_2_0(v59, v175);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_52();
  v62 = OUTLINED_FUNCTION_35(v61);
  v65 = type metadata accessor for WeatherQuery(v62, v54, v63, v64);
  OUTLINED_FUNCTION_2_0(v65, &v173);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  v68 = OUTLINED_FUNCTION_35(v67);
  v171 = type metadata accessor for WeatherQuery(v68, v53, v69, v70);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_52();
  v73 = OUTLINED_FUNCTION_35(v72);
  v76 = type metadata accessor for WeatherQuery(v73, v52, v74, v75);
  OUTLINED_FUNCTION_2_0(v76, &v169);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_52();
  v79 = OUTLINED_FUNCTION_35(v78);
  v82 = type metadata accessor for WeatherQuery(v79, v51, v80, v81);
  OUTLINED_FUNCTION_2_0(v82, &a15);
  v170[0] = v83;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_52();
  v86 = OUTLINED_FUNCTION_35(v85);
  v89 = type metadata accessor for WeatherQuery(v86, v50, v87, v88);
  OUTLINED_FUNCTION_2_0(v89, &a13);
  v168[1] = v90;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_18_14();
  v92 = OUTLINED_FUNCTION_69_2();
  type metadata accessor for WeatherQuery(v92, v93, v94, v95);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v96, v162);
  v147 = v97;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_52();
  v100 = OUTLINED_FUNCTION_35(v99);
  type metadata accessor for WeatherQuery(v100, v48, v101, v102);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v103, &v163);
  v151 = v104;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_258(v106, v107, v108, v109);
  OUTLINED_FUNCTION_174_0();
  OUTLINED_FUNCTION_2_28(v110, v165);
  v157 = v111;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_13();
  v113 = OUTLINED_FUNCTION_192_0(v164);
  type metadata accessor for WeatherQuery(v113, v170[4], v114, v115);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v116, &v167);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_159_0();
  v118();
  v175[0] = v52;
  OUTLINED_FUNCTION_279();
  v119();
  v175[1] = v50;
  OUTLINED_FUNCTION_167_0();
  v120();
  v175[2] = v53;
  OUTLINED_FUNCTION_160(&a9);
  OUTLINED_FUNCTION_131_0();
  v121();
  v175[3] = v53;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_136();
  v122();
  v176[0] = v54;
  OUTLINED_FUNCTION_50_1();
  v123 = OUTLINED_FUNCTION_49_2();
  v124(v123, v161, v170[1]);
  v176[1] = v53;
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_166_0();
  v125();
  v176[2] = v53;
  OUTLINED_FUNCTION_53_1();
  v126 = OUTLINED_FUNCTION_269();
  v127(v126, v162[1], v171);
  v176[3] = v48;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_183_0();
  v128();
  v177 = v36;
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_224_0();
  v129();
  v178 = v50;
  OUTLINED_FUNCTION_184_0();
  v172[0] = v131;
  v172[1] = v130;
  OUTLINED_FUNCTION_297(v168);
  OUTLINED_FUNCTION_204_0(v170);
  OUTLINED_FUNCTION_144_0(&v174);
  OUTLINED_FUNCTION_120_0(v176);
  sub_23B39C90C(v166, v175, v164[1], v165[1], v165[0], 10, v172, v132, v54, v145, v147, v53, v149, v151, v152, v154, v155, v157, v52, v159);
  v133 = OUTLINED_FUNCTION_32();
  v134(v133);
  v135 = OUTLINED_FUNCTION_243();
  v136(v135);
  (*(v53 + 8))(v170[2], v171);
  (*(v52 + 8))(v168[2], v49);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_268();
  v137();
  OUTLINED_FUNCTION_56_1();
  v138 = OUTLINED_FUNCTION_128_0();
  v139(v138);
  OUTLINED_FUNCTION_56_1();
  v140 = OUTLINED_FUNCTION_277();
  v141(v140, v146);
  OUTLINED_FUNCTION_56_1();
  v142(v148, v150);
  OUTLINED_FUNCTION_56_1();
  v143(v153, v156);
  OUTLINED_FUNCTION_56_1();
  v144(v158, v160);
  OUTLINED_FUNCTION_20();
}

void OUTLINED_FUNCTION_144_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 200) = v1;
  *(v2 - 192) = v3;
}

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_16_7(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_16_10()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_16_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_16_17(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_140_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 200);
  *(a1 - 16) = v3;
  *(a1 - 8) = v4;
  return 0;
}

void sub_23B39C90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v175 = v31;
  v33 = v32;
  v161 = v34;
  v183 = v20;
  v178 = *v20;
  v35 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v181 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v177 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v41);
  MEMORY[0x28223BE20](v42);
  v44 = (&v160 - v43);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_76();
  v185 = v46;
  OUTLINED_FUNCTION_24_0();
  sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v179 = v48;
  v180 = v47;
  MEMORY[0x28223BE20](v47);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_76();
  v184 = v51;
  v188 = v24;
  v189 = v26;
  v186 = v35;
  v172 = v30;
  v173 = v28;
  v168 = v38;
  v166 = v52;
  v163 = v53;
  v162 = v44;
  if (v26 == 1)
  {
    v54 = OUTLINED_FUNCTION_230_0();
    TupleTypeMetadata = type metadata accessor for WeatherQuery(v54, v55, v56, v57);
    v59 = v189;
  }

  else
  {
    MEMORY[0x28223BE20](v50);
    OUTLINED_FUNCTION_248_0();
    v62 = 0;
    v63 = v24 & 0xFFFFFFFFFFFFFFFELL;
    while (v189 != v62)
    {
      v26[v62] = type metadata accessor for WeatherQuery(255, *(v63 + 8 * v62), v60, v61);
      ++v62;
    }

    v59 = v189;
    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v171 = &v160;
  v187 = TupleTypeMetadata;
  OUTLINED_FUNCTION_5();
  v176 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_55(&v160 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = &v160;
  v164 = v67;
  MEMORY[0x28223BE20](v68);
  v69 = OUTLINED_FUNCTION_248();
  _s21WeatherServiceRequestVMa(v69);
  OUTLINED_FUNCTION_73_1(&v160);
  v174 = v70;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_0();
  v182 = v72;
  OUTLINED_FUNCTION_100(&v160);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_248_0();
  if (v59)
  {
    v76 = (v188 & 0xFFFFFFFFFFFFFFFELL);
    v77 = (v187 + 32);
    v78 = v33;
    v79 = v26;
    v80 = v59;
    do
    {
      if (v59 == 1)
      {
        v81 = 0;
      }

      else
      {
        v81 = *v77;
      }

      v83 = *v76++;
      v82 = v83;
      v84 = v35 + v81;
      v85 = *v78++;
      type metadata accessor for WeatherQuery(0, v82, v74, v75);
      OUTLINED_FUNCTION_2();
      (*(v86 + 16))(v84, v85);
      *v79++ = v84;
      v77 += 4;
      --v80;
      v59 = v189;
    }

    while (v80);
  }

  v87 = v182;
  v88 = v161;
  v89 = v26;
  v90 = v175;
  sub_23B3ADF24(v89, v175, v59, v188, v182);
  (*(v176 + 8))(v35, v187);
  sub_23B3A0F38(v90, v87 + v174[5], v91, v92, v93, v94, v95, v96, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
  v97 = v185;
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v98 = sub_23B50CDF4();
  __swift_project_value_buffer(v98, qword_280B4E9D8);
  v99 = v181;
  OUTLINED_FUNCTION_107_0();
  v100 = OUTLINED_FUNCTION_161_0();
  v101 = v186;
  v174 = v103;
  v175 = v102;
  (v103)(v100, v97, v186);
  v104 = v88;
  v105 = sub_23B50CDD4();
  v106 = sub_23B50D4C4();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = OUTLINED_FUNCTION_42_0();
    v108 = v101;
    v109 = OUTLINED_FUNCTION_303();
    v161 = OUTLINED_FUNCTION_42_0();
    v190 = v161;
    OUTLINED_FUNCTION_189_0(7.2226e-34);
    *(v107 + 14) = v104;
    *v109 = v104;
    *(v107 + 22) = 2082;
    v110 = OUTLINED_FUNCTION_222_0(&a9);
    (v174)(v110, v87, v108);
    v111 = v104;
    v112 = sub_23B50D1A4();
    v113 = v87;
    v115 = v114;
    v162 = *(v99 + 8);
    v162(v113, v108);
    v88 = sub_23B391F1C(v112, v115, &v190);

    *(v107 + 24) = v88;
    OUTLINED_FUNCTION_300(&dword_23B38D000, v116, v117, "About to fetch weather data; location=%{private,mask.hash}@, startTime=%{public}s");
    sub_23B398890(v109, &qword_27E132D80, &qword_23B5192E0);
    v101 = v108;
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1(v161);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_109_0();
  }

  else
  {

    v119 = OUTLINED_FUNCTION_227_0();
    v162 = v120;
    v118 = (v120)(v119);
  }

  MEMORY[0x28223BE20](v118);
  v121 = v182;
  *(&v160 - 4) = v183;
  *(&v160 - 3) = v121;
  v122 = v184;
  *(&v160 - 2) = v104;
  *(&v160 - 1) = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133950, &unk_23B519500);
  sub_23B50B0C4();
  v124 = v179;
  v123 = v180;
  OUTLINED_FUNCTION_107_0();
  v125 = OUTLINED_FUNCTION_199();
  v126(v125, v122, v123);
  v127 = (*(v124 + 80) + 24) & ~*(v124 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = v104;
  (*(v124 + 32))(v128 + v127, v88, v123);
  v163 = v104;
  v129 = sub_23B50B034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v166 = sub_23B50B064();

  (v174)(v177, v185, v101);
  v132 = v189;
  v133 = v168;
  v134 = v165;
  if (v189)
  {
    v135 = (v188 & 0xFFFFFFFFFFFFFFFELL);
    v136 = (v187 + 32);
    v137 = v189;
    do
    {
      if (v132 == 1)
      {
        v138 = 0;
      }

      else
      {
        v138 = *v136;
      }

      v140 = *v135++;
      v139 = v140;
      v141 = *v33++;
      type metadata accessor for WeatherQuery(0, v139, v130, v131);
      OUTLINED_FUNCTION_2();
      (*(v142 + 16))(v134 + v138, v141);
      v136 += 4;
      --v137;
    }

    while (v137);
  }

  v143 = v132;
  v144 = v181;
  v145 = (*(v181 + 80) + 32) & ~*(v181 + 80);
  v146 = (v133 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
  v147 = v176;
  v148 = (*(v176 + 80) + v146 + 8) & ~*(v176 + 80);
  v149 = (v164 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
  v150 = swift_allocObject();
  *(v150 + 16) = v143;
  OUTLINED_FUNCTION_175();
  *(v150 + 24) = swift_allocateMetadataPack();
  (*(v144 + 32))(v150 + v145, v177, v186);
  v151 = v163;
  *(v150 + v146) = v163;
  (*(v147 + 32))(v150 + v148, v134, v187);
  v152 = (v150 + v149);
  v154 = v172;
  v153 = v173;
  *v152 = v172;
  v152[1] = v153;
  v155 = v151;

  v156 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();

  v157 = swift_allocObject();
  v157[2] = v143;
  OUTLINED_FUNCTION_175();
  v157[3] = swift_allocateMetadataPack();
  v157[4] = v155;
  v157[5] = v154;
  v157[6] = v153;
  v158 = v155;

  v159 = sub_23B50B034();
  sub_23B50B084();

  v162(v185, v186);
  (*(v179 + 8))(v184, v180);
  sub_23B3A24BC(v182, _s21WeatherServiceRequestVMa);
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_175_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B39D33C()
{
  v1 = sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_23B39D3F4()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  v8 = *(v6 + 80);
  v10 = *(v9 + 64);
  if (v2 == 1)
  {
    v11 = OUTLINED_FUNCTION_230_0();
    TupleTypeMetadata = type metadata accessor for WeatherQuery(v11, v12, v13, v14);
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27_3();
    v18 = 0;
    v19 = v3 & 0xFFFFFFFFFFFFFFFELL;
    while (v2 != v18)
    {
      *(v1 + 8 * v18) = type metadata accessor for WeatherQuery(255, *(v19 + 8 * v18), v16, v17);
      ++v18;
    }

    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v20 = (v8 + 32) & ~v8;
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(TupleTypeMetadata - 8);
  v23 = (v21 + *(v22 + 80) + 8) & ~*(v22 + 80);
  (*(v7 + 8))(v0 + v20, v4);

  (*(v22 + 8))(v0 + v23, TupleTypeMetadata);

  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B39D5BC()
{

  return swift_deallocObject();
}

uint64_t _s21WeatherServiceRequestVMa(uint64_t a1)
{
  result = qword_280B445D8;
  if (!qword_280B445D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39D648()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AC8, &unk_23B519F60);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_23B39D678(uint64_t a1)
{
  sub_23B39D6FC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WeatherServiceOptions(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B39D6FC()
{
  if (!qword_280B433D8)
  {
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B433D8);
    }
  }
}

uint64_t type metadata accessor for WeatherServiceOptions(uint64_t a1)
{
  result = qword_280B44CA8;
  if (!qword_280B44CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39D798(uint64_t a1)
{
  sub_23B399E94(319, &qword_280B452C8, MEMORY[0x277CC88A8]);
  if (v1 <= 0x3F)
  {
    sub_23B3976E0(319, &qword_280B449C0, &type metadata for WeatherServiceDailyRelativeRange);
    if (v2 <= 0x3F)
    {
      sub_23B3976E0(319, qword_280B44918, &type metadata for WeatherServiceHourlyRelativeRange);
      if (v3 <= 0x3F)
      {
        sub_23B399E94(319, qword_280B448D0, type metadata accessor for WeatherServicePeriodicRelativeRange);
        if (v4 <= 0x3F)
        {
          sub_23B3976E0(319, &qword_280B44868, &type metadata for WeatherServiceMarineHourlyRelativeRange);
          if (v5 <= 0x3F)
          {
            sub_23B399E94(319, qword_280B44D40, type metadata accessor for InstantWeatherQueryOptions);
            if (v6 <= 0x3F)
            {
              sub_23B399E94(319, &qword_280B452A0, MEMORY[0x277CC9A70]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for WeatherServicePeriodicRelativeRange(uint64_t a1)
{
  result = qword_280B44908;
  if (!qword_280B44908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39D980(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  v60 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v63 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v64 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x28223BE20](v12);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = &v59 - v15;
  *a1 = MEMORY[0x277D84F90];
  v16 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  v23 = type metadata accessor for WeatherServicePeriodicRelativeRange(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  Options = type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, Options);
  v31 = sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  v35 = a1 + *(_s21WeatherServiceRequestVMa(0) + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v16);
  v39 = type metadata accessor for WeatherServiceOptions(0);
  v40 = v39[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v16);
  v44 = &v35[v39[6]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v44[16] = 1;
  v45 = &v35[v39[7]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v45[16] = 2;
  v46 = v39[8];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v23);
  v50 = &v35[v39[9]];
  *v50 = 0;
  *(v50 + 1) = 0;
  v50[16] = 2;
  v51 = v39[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, Options);
  v55 = v39[11];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v31);
  sub_23B39A558(v61, v35, &qword_27E131F00, &unk_23B5257B0);
  sub_23B39A558(v62, &v35[v40], &qword_27E131F00, &unk_23B5257B0);
  *v44 = 0;
  *(v44 + 1) = 0;
  v44[16] = 1;
  *v45 = 0;
  *(v45 + 1) = 0;
  v45[16] = 2;
  sub_23B39A558(v64, &v35[v46], &qword_27E131F58, &qword_23B50F290);
  *v50 = 0;
  *(v50 + 1) = 0;
  v50[16] = 2;
  sub_23B39A558(v63, &v35[v51], &qword_27E131F70, &unk_23B5192B0);
  sub_23B39A558(v60, &v35[v55], &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_20();
}

void sub_23B39DCFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v5 = *(a2 + *(type metadata accessor for WeatherServiceFetchOptions(0) + 56));
  v10[0] = sub_23B50B624();
  v10[1] = v6;
  v9[2] = v10;
  LOBYTE(v5) = sub_23B39DDB8(sub_23B3E46FC, v9, v5);

  if ((v5 & 1) == 0)
  {
    sub_23B3AE65C();
    v7 = *(*a3 + 16);
    sub_23B3AEAD8(v7);
    v8 = *a3;
    *(v8 + 16) = v7 + 1;
    *(v8 + v7 + 32) = v4;
  }
}

BOOL sub_23B39DDB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_23B39DE94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v70 = a2;
  v72 = sub_23B50AA24();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v62 - v9;
  v12 = type metadata accessor for WeatherQuery(0, a3, v10, v11);
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F08, &unk_23B50F240);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  v24 = type metadata accessor for WeatherServiceOptions(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = *(_s21WeatherServiceRequestVMa(0) + 20);
  sub_23B3AEEF0(a1 + v28, v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  if (v29 == v75)
  {
    v65 = v23;
    v66 = v17;
    v63 = v14;
    v64 = v20;
    v75 = v12;
    v67 = v28;
    v30 = v74;

    if (sub_23B3AF288(3, v27))
    {

      return sub_23B3AF34C(v26, type metadata accessor for WeatherServiceOptions);
    }

    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B3AE984(0, *(v27 + 16) + 1, 1, v27);
      v27 = v60;
    }

    v33 = *(v27 + 16);
    v32 = *(v27 + 24);
    v34 = v75;
    v35 = v73;
    v36 = v66;
    if (v33 >= v32 >> 1)
    {
      sub_23B3AE984(v32 > 1, v33 + 1, 1, v27);
      v35 = v73;
      v27 = v61;
    }

    v37 = v71;
    *(v27 + 16) = v33 + 1;
    *(v27 + v33 + 32) = 3;
    v38 = v24;
    v39 = &v26[*(v24 + 28)];
    if (v39[16] == 2)
    {
      (*(v37 + 16))(v36, v70, v34);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      v41 = v65;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v40);
        v42 = v41 + *(v40 + 36);
        v43 = v41;
        v44 = *v42;
        v45 = *(v42 + 8);
        v46 = *(v42 + 16);
        sub_23B398890(v43, &qword_27E131F10, &unk_23B51CB10);
        v35 = v73;
        v38 = v24;
        if (v46 != 2)
        {
          *v39 = v44;
          *(v39 + 1) = v45;
          v39[16] = v46 & 1;
          v47 = v62;
          v48 = v67;
LABEL_20:
          sub_23B3AEEF0(v26, v47 + v48);
          *v47 = v27;
          return sub_23B3AF34C(v26, type metadata accessor for WeatherServiceOptions);
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v41, 1, 1, v40);
        sub_23B398890(v41, &qword_27E131F08, &unk_23B50F240);
        v35 = v73;
        v38 = v24;
      }
    }

    v49 = *(v38 + 20);
    v50 = v35;
    sub_23B39A44C(&v26[v49], v35, &qword_27E131F00, &unk_23B5257B0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v72);
    sub_23B398890(v50, &qword_27E131F00, &unk_23B5257B0);
    v52 = EnumTagSinglePayload == 1;
    v47 = v62;
    v48 = v67;
    if (!v52)
    {
      goto LABEL_20;
    }

    (*(v37 + 16))(v63, v70, v75);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
    v54 = v64;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v54, 0, 1, v53);
      v55 = v69;
      sub_23B39A44C(v54 + *(v53 + 28), v69, &qword_27E131F00, &unk_23B5257B0);
      sub_23B398890(v54, &qword_27E131F10, &unk_23B51CB10);
      v56 = v72;
      if (__swift_getEnumTagSinglePayload(v55, 1, v72) != 1)
      {
        v57 = *(v30 + 32);
        v58 = v68;
        v57(v68, v55, v56);
        sub_23B398890(&v26[v49], &qword_27E131F00, &unk_23B5257B0);
        v57(&v26[v49], v58, v56);
        v47 = v62;
        __swift_storeEnumTagSinglePayload(&v26[v49], 0, 1, v56);
        goto LABEL_20;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v54, 1, 1, v53);
      sub_23B398890(v54, &qword_27E131F08, &unk_23B50F240);
      v55 = v69;
      __swift_storeEnumTagSinglePayload(v69, 1, 1, v72);
    }

    sub_23B398890(v55, &qword_27E131F00, &unk_23B5257B0);
    goto LABEL_20;
  }

  return sub_23B3AF34C(v26, type metadata accessor for WeatherServiceOptions);
}

uint64_t sub_23B39E56C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B39E5D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v67 = a2;
  v70 = sub_23B50AA24();
  v65 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - v9;
  v12 = type metadata accessor for WeatherQuery(0, a3, v10, v11);
  v68 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F18, &unk_23B50F250);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = type metadata accessor for WeatherServiceOptions(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = *(_s21WeatherServiceRequestVMa(0) + 20);
  sub_23B3AEEF0(a1 + v28, v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  if (v29 == v71)
  {
    v61 = v20;
    v62 = v23;
    v60 = v14;
    v71 = v12;
    v63 = v28;
    v30 = v70;

    if (sub_23B3AF288(2, v27))
    {

      return sub_23B3AF34C(v26, type metadata accessor for WeatherServiceOptions);
    }

    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B3AE984(0, *(v27 + 16) + 1, 1, v27);
      v27 = v56;
    }

    v33 = *(v27 + 16);
    v32 = *(v27 + 24);
    v34 = v71;
    v35 = v69;
    v36 = v62;
    if (v33 >= v32 >> 1)
    {
      sub_23B3AE984(v32 > 1, v33 + 1, 1, v27);
      v35 = v69;
      v34 = v71;
      v27 = v57;
    }

    *(v27 + 16) = v33 + 1;
    *(v27 + v33 + 32) = 2;
    v37 = &v26[*(v24 + 24)];
    v38 = v68;
    if (v37[16] == 1)
    {
      (*(v68 + 16))(v17, v67, v34);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v36, 0, 1, v39);
        v40 = v36 + *(v39 + 32);
        v41 = v36;
        v42 = *v40;
        v43 = *(v40 + 8);
        v44 = *(v40 + 16);
        sub_23B398890(v41, &qword_27E131F20, &unk_23B51CB20);
        v35 = v69;
        if ((v44 & 1) == 0)
        {
          *v37 = v42;
          *(v37 + 1) = v43;
          v37[16] = 0;
          v45 = v59;
          v46 = v63;
LABEL_20:
          sub_23B3AEEF0(v26, v45 + v46);
          *v45 = v27;
          return sub_23B3AF34C(v26, type metadata accessor for WeatherServiceOptions);
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v36, 1, 1, v39);
        sub_23B398890(v36, &qword_27E131F18, &unk_23B50F250);
        v35 = v69;
      }
    }

    v47 = v35;
    sub_23B39A44C(v26, v35, &qword_27E131F00, &unk_23B5257B0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v30);
    sub_23B398890(v47, &qword_27E131F00, &unk_23B5257B0);
    v49 = EnumTagSinglePayload == 1;
    v45 = v59;
    v46 = v63;
    if (!v49)
    {
      goto LABEL_20;
    }

    (*(v38 + 16))(v60, v67, v71);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
    v51 = v61;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v51, 0, 1, v50);
      v52 = v66;
      sub_23B39A44C(v51, v66, &qword_27E131F00, &unk_23B5257B0);
      sub_23B398890(v51, &qword_27E131F20, &unk_23B51CB20);
      if (__swift_getEnumTagSinglePayload(v52, 1, v30) != 1)
      {
        v53 = v64;
        v54 = *(v65 + 32);
        v54(v64, v52, v30);
        sub_23B398890(v26, &qword_27E131F00, &unk_23B5257B0);
        v54(v26, v53, v30);
        v45 = v59;
        __swift_storeEnumTagSinglePayload(v26, 0, 1, v30);
        goto LABEL_20;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v50);
      sub_23B398890(v51, &qword_27E131F18, &unk_23B50F250);
      v52 = v66;
      __swift_storeEnumTagSinglePayload(v66, 1, 1, v30);
    }

    sub_23B398890(v52, &qword_27E131F00, &unk_23B5257B0);
    goto LABEL_20;
  }

  return sub_23B3AF34C(v26, type metadata accessor for WeatherServiceOptions);
}

uint64_t type metadata accessor for HourMarineWeather(uint64_t a1)
{
  result = qword_280B45290;
  if (!qword_280B45290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39ECF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_23B39EDA0(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Swell(319);
    if (v2 <= 0x3F)
    {
      sub_23B392F50(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void OUTLINED_FUNCTION_54_1(uint64_t a1@<X8>)
{
  *(v4 - 96) = a1;
  *(v4 - 88) = v1;
  *(v4 - 80) = v2;
  *(v4 - 72) = v3;
}

void sub_23B39EEA0(uint64_t a1, uint64_t a2, uint64_t *a3, ValueMetadata *a4)
{
  v7 = type metadata accessor for WeatherQuery(0, a4, a3, a4);
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  if (type metadata accessor for CurrentWeather(0) == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0) == a4)
  {
    goto LABEL_21;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70) == a4)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_20();

    sub_23B39DE94(v30, v31, v32);
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60) == a4)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_20();

    sub_23B39E5D4(v34, v35, v36);
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC8, &unk_23B50F1F0) == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40) == a4)
  {
    goto LABEL_21;
  }

  if (a4 == &type metadata for WeatherAvailability)
  {
    v38 = sub_23B3B06B0(*a3);

    *a3 = v38;
LABEL_33:
    OUTLINED_FUNCTION_20();
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200) == a4)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_20();

    sub_23B3E3E88(v39, v40, v41, v42);
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED8, &qword_23B50F208) == a4)
  {
    goto LABEL_21;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210) == a4)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_20();

    sub_23B3E422C(v43, v44, v45, v46);
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE8, &qword_23B50F218) == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220) == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360) == a4 || type metadata accessor for LocationInfo(0) == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF8, &unk_23B50F230) == a4)
  {
LABEL_21:
    OUTLINED_FUNCTION_20();

    sub_23B39DCFC(v26, v27, v28);
    return;
  }

  if (type metadata accessor for PeriodicForecasts(0) != a4)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v16 = sub_23B50CDF4();
    __swift_project_value_buffer(v16, qword_280B4E9D8);
    v17 = *(v9 + 16);
    v17(v15, a1, v7);
    v18 = sub_23B50CDD4();
    v19 = sub_23B50D4B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v52 = v21;
      *v20 = 136446210;
      v17(v12, v15, v7);
      v22 = sub_23B50D184();
      v24 = v23;
      (*(v9 + 8))(v15, v7);
      v25 = sub_23B391F1C(v22, v24, &v52);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_23B38D000, v18, v19, "Unknown default; availableDataSets=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x23EE9E260](v21, -1, -1);
      MEMORY[0x23EE9E260](v20, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v15, v7);
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_20();

  sub_23B3C255C(v47, v48, v49, v50);
}

uint64_t type metadata accessor for Swell(uint64_t a1)
{
  result = qword_280B437E0;
  if (!qword_280B437E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39F440(uint64_t a1)
{
  sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
  if (v1 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B45310, &qword_280B433B0, 0x277CCADA8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_6_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F1C50(a1, a2, a3, &protocol conformance descriptor for MonthlyWeatherStatistics<A>);
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1, ...)
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_6_24(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_6_27()
{

  return sub_23B4E2428(v0, type metadata accessor for HistoricalFact.Argument);
}

uint64_t OUTLINED_FUNCTION_6_28()
{

  return type metadata accessor for WeatherServiceOptions(0);
}

uint64_t OUTLINED_FUNCTION_6_29()
{

  return sub_23B50D8C4();
}

uint64_t OUTLINED_FUNCTION_6_30()
{
  v3 = v0 + *(v1 + 24);
  *v3 = 0;
  *(v3 + 8) = 768;

  return type metadata accessor for WeatherNetworkActivity(0);
}

uint64_t OUTLINED_FUNCTION_6_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23B50D734();
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23B50D794();
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_23B50D824();
}

void OUTLINED_FUNCTION_17_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_17_15@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_20(uint64_t a1, uint64_t a2)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return type metadata accessor for MonthPrecipitationStatistics(0);
}

void OUTLINED_FUNCTION_4_7(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

BOOL OUTLINED_FUNCTION_4_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_4_11()
{

  return [v0 (v1 + 1016)];
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return sub_23B50AD24();
}

uint64_t OUTLINED_FUNCTION_4_14(uint64_t a1, uint64_t a2)
{

  return sub_23B50D794();
}

uint64_t OUTLINED_FUNCTION_4_17@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return type metadata accessor for DayPrecipitationStatistics(0);
}

uint64_t OUTLINED_FUNCTION_4_31()
{
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 44), 1, 1, v2);
  v4 = v1 + *(v3 + 48);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_34()
{

  return type metadata accessor for WeatherServiceFetchOptions(0);
}

uint64_t OUTLINED_FUNCTION_4_37()
{
  v6 = *(v3 + 8 * v5);
  v7 = *(v1 + 8 * v5);
  v8 = *(v0 + 8 * v5);
  v2[6] = *(v4 + 8 * v5);
  v2[7] = v6;
  v2[8] = v7;
  v2[9] = v8;
  return 255;
}

void OUTLINED_FUNCTION_4_39()
{
  v2 = v0 + *(v1 + 32);
  *v2 = 0;
  *(v2 + 8) = 3;
  v3 = v0 + *(v1 + 36);
  *v3 = 0;
  *(v3 + 8) = 3;
}

void OUTLINED_FUNCTION_4_41(uint64_t a1@<X8>)
{
  v5 = v2 + a1;
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t OUTLINED_FUNCTION_4_44()
{

  return sub_23B4F21E8(v0, type metadata accessor for AirQualityData);
}

void OUTLINED_FUNCTION_4_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, uint64_t a11, uint64_t a12)
{
  *(v13 + 8) = a10;
  *(v12 + *(v14 + 28)) = a11;
  *(v12 + *(v14 + 32)) = a12;
}

void OUTLINED_FUNCTION_4_46()
{
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

uint64_t type metadata accessor for TideEvents(uint64_t a1)
{
  result = qword_280B44340;
  if (!qword_280B44340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39FF38(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B3A00A0(319, &qword_280B433E8, type metadata accessor for TideEvent);
    if (v2 <= 0x3F)
    {
      sub_23B3A00A0(319, &qword_280B433F0, type metadata accessor for HourTide);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D();
        if (v4 <= 0x3F)
        {
          type metadata accessor for WeatherMetadata(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B3A003C(uint64_t a1, uint64_t a2)
{
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  (*(*(PeriodicRelativeRange - 8) + 32))(a2, a1, PeriodicRelativeRange);
  return a2;
}

void sub_23B3A00A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OUTLINED_FUNCTION_14_3()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_14_4@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_23B50D7C4();
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return sub_23B50AA24();
}

uint64_t OUTLINED_FUNCTION_14_18()
{

  return type metadata accessor for PrecipitationAmount(0);
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return type metadata accessor for SnowfallAmount(0);
}

uint64_t OUTLINED_FUNCTION_14_20(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_14_24(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v2;
}

void OUTLINED_FUNCTION_14_28(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = v4;
  *(v1 + 8) = v3;
}

void OUTLINED_FUNCTION_1_2(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1, uint64_t a2)
{

  return sub_23B50D524();
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1)
{

  return sub_23B50D704();
}

uint64_t OUTLINED_FUNCTION_1_16()
{
  *(v3 - 124) = *v0;
  result = v1;
  *(v3 - 120) = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_1_17(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_1_29@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v3 = *(result + 8);
  v5 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_32(int *a1)
{
  result = __swift_storeEnumTagSinglePayload(v2 + a1[7], 1, 1, v3);
  v6 = v2 + a1[8];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = v1;
  v7 = (v2 + a1[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_35()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_1_37(uint64_t a1, __n128 a2)
{

  return sub_23B50A9B4();
}

uint64_t OUTLINED_FUNCTION_1_38(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_1_39@<X0>(uint64_t a1@<X8>)
{
  v5 = *v2;
  v6 = *v3;
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = v5;
  v4[5] = v6;
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_44(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, void *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t type metadata accessor for TideEvent(uint64_t a1)
{
  result = qword_280B434D8;
  if (!qword_280B434D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3A0940(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B392D14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B3A09CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HourTide(uint64_t a1)
{
  result = qword_280B43618;
  if (!qword_280B43618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double OUTLINED_FUNCTION_11_3@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  if (result == 0.0)
  {
    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_11_21()
{
  result = __swift_storeEnumTagSinglePayload(v1 + v0[7], 1, 1, v3);
  v5 = v1 + v0[8];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = v2;
  v6 = (v1 + v0[9]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_24()
{
  *(v2 - 96) = v1;

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_11_25@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_23B39A49C(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_11_27()
{

  return sub_23B50D8C4();
}

void sub_23B3A0D24(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B392D14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_25_5()
{
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_23B4338F4(v3, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return sub_23B398890(v2 - 128, v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_12@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return sub_23B50D6E4();
}

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_280B43380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280B43380);
    }
  }
}

void sub_23B3A0F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  sub_23B50CB54();
  OUTLINED_FUNCTION_5();
  v144 = v28;
  v145 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v146 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  OUTLINED_FUNCTION_3(v30);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v33);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_29_8(v35, v128);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  OUTLINED_FUNCTION_3(v36);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_52();
  v143 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  OUTLINED_FUNCTION_3(v39);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52();
  v147 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  OUTLINED_FUNCTION_3(v42);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  v142 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v45);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v47);
  v48 = sub_23B50B844();
  v49 = OUTLINED_FUNCTION_2_0(v48, &v157);
  v130 = v50;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  OUTLINED_FUNCTION_3(v52);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_52();
  v152 = v54;
  OUTLINED_FUNCTION_24_0();
  v55 = sub_23B50AD24();
  v56 = OUTLINED_FUNCTION_2_0(v55, &a10);
  v132 = v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
  OUTLINED_FUNCTION_3(v61);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_52();
  v64 = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  OUTLINED_FUNCTION_3(v65);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  v151 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v69 = OUTLINED_FUNCTION_3(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_214_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_76();
  v150 = v71;
  OUTLINED_FUNCTION_24_0();
  v72 = sub_23B50B7E4();
  OUTLINED_FUNCTION_5();
  v74 = v73;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_6_0();
  v149 = v76;
  OUTLINED_FUNCTION_24_0();
  v77 = sub_23B50B604();
  v78 = OUTLINED_FUNCTION_3(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6_0();
  v148 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  OUTLINED_FUNCTION_3(v80);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_23();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v82);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_15_13();
  v138 = sub_23B50AD84();
  v85 = OUTLINED_FUNCTION_80_1(v84, &a14);
  Options = type metadata accessor for WeatherServiceFetchOptions(v85);
  v139 = v21;
  sub_23B3A23E0();
  OUTLINED_FUNCTION_145_0(*v26);
  v153 = Options;
  v135 = v87;
  if ((*(v26 + Options[6] + 8) & 0xFF00) == 0x300)
  {
    sub_23B50B834();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  }

  else
  {

    sub_23B50B824();
    sub_23B50B834();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  }

  v154 = *(v26 + Options[7]);
  sub_23B3A1C3C();
  v96 = v26 + Options[13];
  v97 = *(v96 + 6) | ((*(v96 + 14) | (v96[30] << 16)) << 32);
  if ((*(v96 + 6) & 0xFF00) == 0x200)
  {
    (*(v74 + 104))(v149, *MEMORY[0x277D7AC70], v72);
  }

  else
  {
    v98 = *(v96 + 2);
    v99 = *(v96 + 2);
    v100 = *v96;
    v162 = v99 & 1;
    v161 = v97 & 1;
    v101 = vdupq_n_s64(v97);
    v154 = v100;
    v155 = v99 & 1;
    v156 = v98;
    v157 = v97 & 1;
    *v101.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v101, xmmword_23B5192A0), vshlq_u64(v101, xmmword_23B519290))), 0x1000100010001);
    v158 = vuzp1_s8(*v101.i8, *v101.i8).u32[0];
    v159 = BYTE5(v97) & 1;
    v160 = BYTE6(v97) & 1;
    sub_23B3A205C();
    (*(v74 + 104))(v149, *MEMORY[0x277D7AC68], v72);
  }

  v140 = v20;
  v102 = *(v26 + Options[8]);
  OUTLINED_FUNCTION_160(&a17);
  sub_23B3A23E0();
  v103 = type metadata accessor for WeatherServiceOptions(0);
  sub_23B3A23E0();
  sub_23B3A23E0();
  v104 = type metadata accessor for WeatherServicePeriodicRelativeRange(0);
  OUTLINED_FUNCTION_51(v64, 1, v104);
  if (v105)
  {

    sub_23B398890(v64, &qword_27E131F58, &qword_23B50F290);
  }

  else
  {
    v106 = v26;
    v107 = v102;
    v108 = *(v132 + 16);
    v109 = OUTLINED_FUNCTION_222_0(&v154);
    v108(v109, v64);
    v108(v129, v64 + *(v104 + 5));
    v102 = v107;
    v26 = v106;
    v104 = *(v64 + *(v104 + 6));

    sub_23B50B884();
    sub_23B3A24BC(v64, type metadata accessor for WeatherServicePeriodicRelativeRange);
  }

  v110 = v147;
  v111 = sub_23B50B894();
  OUTLINED_FUNCTION_254_0(v111);
  v112 = v22;
  if ((*(v20 + v103[6] + 16) & 1) == 0)
  {
    (*(v130 + 104))(v134, *MEMORY[0x277D7ACA8]);
    sub_23B3A23E0();
    v113 = OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_51(v113, v114, v133);
    if (v105)
    {
      sub_23B50ACE4();
      v115 = OUTLINED_FUNCTION_172_0();
      OUTLINED_FUNCTION_51(v115, v116, v133);
      if (!v105)
      {
        sub_23B398890(v131, &qword_27E131E18, &unk_23B50F710);
      }
    }

    else
    {
      v117 = OUTLINED_FUNCTION_243();
      v118(v117);
    }

    sub_23B50B854();
    v104 = 0;
    v112 = v22;
    v110 = v147;
  }

  v119 = sub_23B50B864();
  __swift_storeEnumTagSinglePayload(v152, v104, 1, v119);
  v120 = *(v20 + v103[7] + 16);
  if (v120 != 2)
  {
    OUTLINED_FUNCTION_271(v120);
    v104 = &v154;
    sub_23B3D112C();
  }

  v121 = sub_23B50B874();
  OUTLINED_FUNCTION_254_0(v121);
  v122 = *(v20 + v103[9] + 16);
  if (v122 != 2)
  {
    OUTLINED_FUNCTION_271(v122);
    sub_23B3D112C();
    v104 = 0;
  }

  v123 = sub_23B50B8A4();
  __swift_storeEnumTagSinglePayload(v110, v104, 1, v123);
  sub_23B3A23E0();
  v124 = type metadata accessor for WeatherNetworkActivity(0);
  OUTLINED_FUNCTION_51(v141, 1, v124);
  if (v105)
  {
    sub_23B398890(v141, &qword_27E1338B0, &unk_23B519390);
    v125 = 1;
  }

  else
  {
    sub_23B3A23E0();
    sub_23B50C824();
    sub_23B3A24BC(v141, type metadata accessor for WeatherNetworkActivity);
    v125 = 0;
  }

  v126 = sub_23B50C834();
  __swift_storeEnumTagSinglePayload(v143, v125, 1, v126);
  v127 = *(v26 + v153[10]);
  sub_23B50AD94();
  (*(v144 + 104))(v146, *MEMORY[0x277D7B100], v145);
  sub_23B50B784(v138, v137, v139, v146, v136, v135, v140, v148, v149, v102, v150, v112, v151, v152, v142, v110, v143, v127);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3A1C3C()
{
  v1 = sub_23B50B604();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v6 = *v0;
  v17[1] = MEMORY[0x277D84F90];
  v7 = sub_23B3A1EB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D50, &unk_23B527680);
  sub_23B3A1F08();
  result = sub_23B50D594();
  if (v6)
  {
    sub_23B50B5C4();
    OUTLINED_FUNCTION_2_53();
    v11 = OUTLINED_FUNCTION_1_49();
    v7(v11);
    v12 = OUTLINED_FUNCTION_119();
    result = (v7)(v12);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  sub_23B50B5E4();
  OUTLINED_FUNCTION_2_53();
  v13 = OUTLINED_FUNCTION_1_49();
  v7(v13);
  v14 = OUTLINED_FUNCTION_119();
  result = (v7)(v14);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  sub_23B50B5F4();
  OUTLINED_FUNCTION_2_53();
  v15 = OUTLINED_FUNCTION_1_49();
  v7(v15);
  v16 = OUTLINED_FUNCTION_119();
  result = (v7)(v16);
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_5:
  sub_23B50B5D4();
  OUTLINED_FUNCTION_2_53();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v10 = OUTLINED_FUNCTION_119();
  return (v9)(v10);
}

uint64_t sub_23B3A1E54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23B50AD24();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

unint64_t sub_23B3A1EB0()
{
  result = qword_280B43448[0];
  if (!qword_280B43448[0])
  {
    sub_23B50B604();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B43448);
  }

  return result;
}

unint64_t sub_23B3A1F08()
{
  result = qword_280B433E0;
  if (!qword_280B433E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132D50, &unk_23B527680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B433E0);
  }

  return result;
}

uint64_t sub_23B3A1F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_23B3A205C()
{
  OUTLINED_FUNCTION_25();
  sub_23B50B814();
  OUTLINED_FUNCTION_5();
  v32 = v5;
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v31 = v6;
  OUTLINED_FUNCTION_24_0();
  v7 = sub_23B50B804();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_248();
  v15 = sub_23B50B744();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_214_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_30_4();
  v20 = *v0;
  v21 = v0[2];
  v22 = *(v0 + 24);
  v30 = *(v0 + 29);
  if (*(v0 + 8) == 1)
  {
    if (v20)
    {
      v23 = MEMORY[0x277D7AC38];
    }

    else
    {
      v23 = MEMORY[0x277D7AC30];
    }

    (*(v17 + 104))(v2, *v23, v15);
  }

  else
  {
    *v2 = v20;
    (*(v17 + 104))(v2, *MEMORY[0x277D7AC28], v15);
  }

  if (v22)
  {
    v24 = MEMORY[0x277D7AC90];
  }

  else
  {
    *v1 = v21;
    v24 = MEMORY[0x277D7AC88];
  }

  (*(v9 + 104))(v1, *v24, v7);
  OUTLINED_FUNCTION_117_0();
  v25(v3, v2, v15);
  OUTLINED_FUNCTION_88_0();
  v26(v13, v1, v7);
  v27 = MEMORY[0x277D7ACA0];
  if (!v30)
  {
    v27 = MEMORY[0x277D7AC98];
  }

  (*(v32 + 104))(v31, *v27, v33);
  sub_23B50B7D4();
  v28 = OUTLINED_FUNCTION_32();
  v29(v28);
  (*(v17 + 8))(v2, v15);
  OUTLINED_FUNCTION_26_3();
}

uint64_t sub_23B3A23E0()
{
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_265(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t sub_23B3A24BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B3A2564(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [a3 coordinate];
  return sub_23B50B734();
}

uint64_t sub_23B3A2604()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 32));
}

_BYTE *storeEnumTagSinglePayload for WeatherCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
        JUMPOUT(0x23B3A2708);
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
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return type metadata accessor for PrecipitationAmountByType(0);
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_12(uint64_t a1, uint64_t a2)
{

  return sub_23B50D114();
}

void OUTLINED_FUNCTION_12_17(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2113;
}

uint64_t OUTLINED_FUNCTION_12_25()
{
  v4[10] = v0;
  v4[11] = v1;
  v4[12] = v2;
  v4[13] = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_12_26(uint64_t a1)
{

  return sub_23B50D8C4();
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_23B3C7DF4(v3 + v1, v2 + v0);
}

__n128 OUTLINED_FUNCTION_35_8@<Q0>(__n128 *a1@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 - 112) = *a1;
  *(v1 - 96) = v2;
  return result;
}

uint64_t sub_23B3A2A80()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 36));
}

uint64_t getEnumTagSinglePayload for WeatherCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23B3A2B68()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 40));
}

uint64_t sub_23B3A2BC8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v169 = a2;
  v6 = *v4;
  v163 = v4;
  v161 = a3;
  v162 = v6;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52();
  v166 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v165 = v11;
  OUTLINED_FUNCTION_24_0();
  v164 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v160 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v17);
  v159 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_76();
  v167 = v20;
  OUTLINED_FUNCTION_24_0();
  v21 = sub_23B50BAE4();
  OUTLINED_FUNCTION_5();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_0();
  v156 = v25 - v26;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_1();
  v157 = v28;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  v178 = v30;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_76();
  v172 = v32;
  OUTLINED_FUNCTION_24_0();
  sub_23B50B654();
  OUTLINED_FUNCTION_5();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_0();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v156 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D68, &qword_23B515158);
  v43 = OUTLINED_FUNCTION_3(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_0();
  v168 = (v44 - v45);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_76();
  v173 = v47;
  v174 = v15;
  v48 = *(a1 + 16);
  v175 = v21;
  v176 = v23;
  v171 = a1;
  if (v48)
  {
    OUTLINED_FUNCTION_52_0();
    v50 = a1 + v49;
    v51 = *(v34 + 72);
    v177 = (v23 + 32);
    v52 = MEMORY[0x277D84F90];
    do
    {
      sub_23B3A52DC(v50, v41);
      sub_23B3A39AC(v41, v38);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_23B3A582C(v38);
      }

      else if (__swift_getEnumTagSinglePayload(v38, 1, v21) == 1)
      {
        sub_23B398890(v38, &qword_27E132D68, &qword_23B515158);
      }

      else
      {
        v53 = *v177;
        (*v177)(v178, v38, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3A5A20(0, *(v52 + 16) + 1, 1, v52);
          v52 = v58;
        }

        v55 = *(v52 + 16);
        v54 = *(v52 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_23B3A5A20(v54 > 1, v55 + 1, 1, v52);
          v52 = v59;
        }

        *(v52 + 16) = v55 + 1;
        v21 = v175;
        OUTLINED_FUNCTION_52_0();
        v53(v52 + v56 + *(v57 + 72) * v55, v178, v21);
        v15 = v174;
      }

      v50 += v51;
      --v48;
    }

    while (v48);
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  v60 = v173;
  sub_23B3A60F0(v52, v173);

  v61 = v168;
  sub_23B3A61A0(v60, v168);
  if (__swift_getEnumTagSinglePayload(v61, 1, v21) == 1)
  {
    sub_23B398890(v61, &qword_27E132D68, &qword_23B515158);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280B43440);
    }

    v62 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v62, qword_280B4E9D8);
    v63 = v169;
    v64 = sub_23B50CDD4();
    sub_23B50D4C4();

    if (OUTLINED_FUNCTION_20_7())
    {
      v65 = swift_slowAlloc();
      v66 = OUTLINED_FUNCTION_42_0();
      v179 = v63;
      v180[0] = v66;
      OUTLINED_FUNCTION_5_13(7.2225e-34);
      OUTLINED_FUNCTION_24_6();
      v67 = v63;
      v68 = sub_23B50D1A4();
      v70 = sub_23B391F1C(v68, v69, v180);

      *(v65 + 14) = v70;
      OUTLINED_FUNCTION_7_20();
      _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();
    }

    v77 = v170;
    v76 = v171;
    v79 = v165;
    v78 = v166;
    sub_23B50C3C4();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    v84 = *(v77 + 48);
    *v78 = v76;
    sub_23B3AEA68(v79, v78 + v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D78, &qword_23B515168);
    swift_allocObject();

    v85 = sub_23B50B094();
  }

  else
  {
    v86 = v176;
    (*(v176 + 32))(v172, v61, v21);
    v87 = sub_23B50BAC4();
    if (v88)
    {
      v177 = v88;
      v178 = v87;
      v89 = v167;
      sub_23B50AD14();
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v90 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v90, qword_280B4E9D8);
      v91 = v160;
      v92 = v158;
      v93 = v164;
      v168 = *(v160 + 16);
      v168(v158, v89, v164);
      v94 = v169;
      v95 = sub_23B50CDD4();
      v96 = sub_23B50D4C4();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = OUTLINED_FUNCTION_42_0();
        v165 = swift_slowAlloc();
        v179 = v94;
        v180[0] = v165;
        *v97 = 141558531;
        *(v97 + 4) = 1752392040;
        *(v97 + 12) = 2081;
        sub_23B3A3BC8();
        v98 = v92;
        v99 = v94;
        v100 = sub_23B50D1A4();
        v102 = sub_23B391F1C(v100, v101, v180);

        *(v97 + 14) = v102;
        *(v97 + 22) = 2082;
        v168(v174, v92, v93);
        v103 = sub_23B50D1A4();
        v105 = v104;
        OUTLINED_FUNCTION_13_7();
        v166 = v106;
        v169 = v107;
        (v107)(v98, v93);
        v108 = sub_23B391F1C(v103, v105, v180);

        *(v97 + 24) = v108;
        _os_log_impl(&dword_23B38D000, v95, v96, "About to fetch AQI Scale; location=%{private,mask.hash}s, startTime=%{public}s", v97, 0x20u);
        swift_arrayDestroy();
        v15 = v174;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        OUTLINED_FUNCTION_13_7();
        v166 = v129;
        v169 = v130;
        v109 = (v130)(v92, v93);
      }

      v131 = v94;
      MEMORY[0x28223BE20](v109);
      v133 = v177;
      v132 = v178;
      *(&v156 - 4) = v163;
      *(&v156 - 3) = v132;
      v134 = v161;
      *(&v156 - 2) = v133;
      *(&v156 - 1) = v134;
      sub_23B50C3C4();
      sub_23B50B0C4();
      v168(v15, v167, v93);
      v135 = (*(v91 + 80) + 16) & ~*(v91 + 80);
      v136 = (v159 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
      v137 = swift_allocObject();
      v138 = v93;
      (*(v91 + 32))(v137 + v135, v15, v93);
      *(v137 + v136) = v131;
      v139 = v171;
      *(v137 + ((v136 + 15) & 0xFFFFFFFFFFFFFFF8)) = v171;
      v140 = v131;

      v141 = sub_23B50B034();
      sub_23B50B064();

      v142 = swift_allocObject();
      v143 = v177;
      v142[2] = v178;
      v142[3] = v143;
      v142[4] = v140;
      v142[5] = v139;
      v144 = v140;

      v145 = sub_23B50B034();
      v85 = sub_23B50B0A4();

      (v169)(v167, v138);
      (*(v176 + 8))(v172, v175);
      v60 = v173;
    }

    else
    {
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_280B43440);
      }

      v110 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v110, qword_280B4E9D8);
      v111 = *(v86 + 16);
      v112 = v157;
      v111(v157, v172, v21);
      v113 = v169;
      v114 = sub_23B50CDD4();
      sub_23B50D4B4();

      if (OUTLINED_FUNCTION_20_7())
      {
        OUTLINED_FUNCTION_42_0();
        v178 = OUTLINED_FUNCTION_23_7();
        v180[0] = v178;
        *v86 = 136315651;
        v111(v156, v112, v175);
        v115 = sub_23B50D184();
        v117 = v116;
        v118 = *(v86 + 8);
        v118(v112, v175);
        v119 = sub_23B391F1C(v115, v117, v180);
        v60 = v173;

        *(v86 + 4) = v119;
        OUTLINED_FUNCTION_3_21();
        v179 = v113;
        v120 = sub_23B3A3BC8();
        v121 = v113;
        v122 = sub_23B50D1A4();
        sub_23B391F1C(v122, v123, v180);
        OUTLINED_FUNCTION_25_5();
        *(v86 + 24) = v120;
        OUTLINED_FUNCTION_7_20();
        _os_log_impl(v124, v125, v126, v127, v128, 0x20u);
        swift_arrayDestroy();
        v21 = v175;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_9_11();
      }

      else
      {

        v118 = *(v86 + 8);
        v118(v112, v21);
      }

      v147 = v170;
      v146 = v171;
      v148 = v166;
      sub_23B50C3C4();
      v149 = v165;
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
      v154 = *(v147 + 48);
      *v148 = v146;
      sub_23B3AEA68(v149, v148 + v154);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D78, &qword_23B515168);
      swift_allocObject();

      v85 = sub_23B50B094();
      v118(v172, v21);
    }
  }

  sub_23B398890(v60, &qword_27E132D68, &qword_23B515158);
  return v85;
}

uint64_t sub_23B3A38D0()
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_22_6();
  v3(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_23B3A3964()
{

  return swift_deallocObject();
}

uint64_t sub_23B3A39AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50B654();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3A3A10()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 44));
}

void sub_23B3A3A48(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_18();
    if (v12 != v13)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_23B3B8AE0(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_23B3A3B68()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 48));
}

unint64_t sub_23B3A3BC8()
{
  result = qword_280B433B8;
  if (!qword_280B433B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B433B8);
  }

  return result;
}

uint64_t sub_23B3A3C34(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v54 = sub_23B50C3C4();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v52 = a1;
  v53 = a2;
  v55 = a1;
  v56 = a2;

  MEMORY[0x23EE9D460](45, 0xE100000000000000);
  v49 = a3;
  v18 = sub_23B50B7A4();
  MEMORY[0x23EE9D460](v18);

  v20 = v55;
  v19 = v56;
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v21 = sub_23B50CDF4();
  __swift_project_value_buffer(v21, qword_280B4E9D8);

  v22 = sub_23B50CDD4();
  v23 = sub_23B50D4C4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v47 = v12;
    v25 = v24;
    v26 = swift_slowAlloc();
    v48 = v4;
    v27 = v26;
    v55 = v26;
    *v25 = 136446210;
    *(v25 + 4) = OUTLINED_FUNCTION_2_52();
    _os_log_impl(&dword_23B38D000, v22, v23, "Attempting to retrieve air quality scale with cache key: %{public}s from cache", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v4 = v48;
    OUTLINED_FUNCTION_38();
    v12 = v47;
    OUTLINED_FUNCTION_38();
  }

  sub_23B3A4498(v20, v19, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v54) == 1)
  {
    sub_23B4FFCEC(v10);

    v28 = sub_23B50CDD4();
    v29 = sub_23B50D4C4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55 = v31;
      *v30 = 136446210;
      *(v30 + 4) = OUTLINED_FUNCTION_2_52();
      _os_log_impl(&dword_23B38D000, v28, v29, "Unable to retrieve air quality scale with cache key: %{public}s from cache, fetching it ...", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    MEMORY[0x28223BE20](v32);
    v33 = v52;
    v34 = v53;
    *(&v47 - 4) = v4;
    *(&v47 - 3) = v33;
    v35 = v49;
    *(&v47 - 2) = v34;
    *(&v47 - 1) = v35;
    sub_23B50B0C4();
    v36 = swift_allocObject();
    *(v36 + 16) = v20;
    *(v36 + 24) = v19;
    v37 = sub_23B50B034();
    v38 = sub_23B50B064();
  }

  else
  {
    (*(v12 + 32))(v17, v10, v54);

    v39 = sub_23B50CDD4();
    v40 = sub_23B50D4C4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_23B391F1C(v52, v53, &v55);
      *(v41 + 12) = 2082;
      v42 = OUTLINED_FUNCTION_2_52();

      *(v41 + 14) = v42;
      _os_log_impl(&dword_23B38D000, v39, v40, "Successfully retrieved air quality scale: %{public}s with cache key:  %{public}s from cache", v41, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    v43 = v17;
    v44 = v17;
    v45 = v54;
    (*(v12 + 16))(v50, v43, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B50, &unk_23B5273F0);
    swift_allocObject();
    v38 = sub_23B50B094();
    (*(v12 + 8))(v44, v45);
  }

  return v38;
}

uint64_t sub_23B3A4204()
{

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_27_8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_27_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_16(uint64_t a1, uint64_t a2)
{

  return sub_23B50D734();
}

uint64_t sub_23B3A43A8()
{
  OUTLINED_FUNCTION_209_0();
  v2 = sub_23B50B7B4();
  OUTLINED_FUNCTION_3(v2);
  return sub_23B3A2BC8(*v1, *(v0 + 16), v0 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
}

uint64_t sub_23B3A441C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_23B50B7B4();
  OUTLINED_FUNCTION_3(v5);
  return sub_23B45F774(a1, a2, *(v2 + 16), v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));
}

void sub_23B3A4498(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  os_unfair_lock_lock((v3 + 16));
  v8 = sub_23B3A461C((v3 + 24));
  if (*(v8 + 16) && (v9 = sub_23B3A7084(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = sub_23B50C3C4();
    OUTLINED_FUNCTION_6();
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);

    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {

    v17 = sub_23B50C3C4();
    v15 = a3;
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_23B3A4598()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 52));
}

void OUTLINED_FUNCTION_205_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 256) = v1;
  *(v2 - 248) = v3;
}

uint64_t sub_23B3A461C(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  else
  {
    v3 = sub_23B3A4A40();
    if (v3)
    {
      v1 = v3;
      *a1 = v3;
    }

    else
    {
      v1 = MEMORY[0x277D84F98];
      *a1 = MEMORY[0x277D84F98];
    }
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23B50D834();
}

uint64_t OUTLINED_FUNCTION_5_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CC87E0];

  return sub_23B3F1C50(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

void OUTLINED_FUNCTION_5_16(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t a1, uint64_t a2)
{

  return sub_23B50D6D4();
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return sub_23B50D0E4();
}

void OUTLINED_FUNCTION_5_20()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_5_28(uint64_t a1, uint64_t a2)
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_5_31(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_23B50D1C4();
}

uint64_t OUTLINED_FUNCTION_5_33()
{

  return type metadata accessor for WeatherServiceFetchOptions(0);
}

void OUTLINED_FUNCTION_5_34()
{
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

uint64_t sub_23B3A4A08()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 56));
}

uint64_t sub_23B3A4A40()
{
  v0 = sub_23B50D044();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D6C988], v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AC0, &qword_23B519F10);
  sub_23B50D054();
  (*(v1 + 8))(v4, v0);
  return v6[1];
}

void sub_23B3A4B70(void *a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133548, &unk_23B519F90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v39 - v4;
  v6 = sub_23B50C3C4();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23B3A528C();
  if (!v10)
  {
    if (qword_280B43440 != -1)
    {
LABEL_27:
      swift_once();
    }

    v14 = sub_23B50CDF4();
    __swift_project_value_buffer(v14, qword_280B4E9D8);
    v15 = sub_23B50CDD4();
    v16 = sub_23B50D4B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B38D000, v15, v16, "no store AQI scale database is setup - returning nil", v17, 2u);
      MEMORY[0x23EE9E260](v17, -1, -1);
    }

    v13 = 0;
    goto LABEL_23;
  }

  v11 = v10;
  sub_23B50CF14();
  v12 = sub_23B50CEE4();
  if (v1)
  {

    v13 = 0;
LABEL_23:
    *v40 = v13;
    return;
  }

  v18 = v12;
  v39[0] = v11;
  v39[1] = 0;

  v42 = v47 + 32;
  v13 = MEMORY[0x277D84F98];
  v41 = v47 + 40;
  v19 = *(v18 + 16);
  v44 = v5;
  v45 = v19;
  v20 = v18 + 48;
  v43 = v18;
  while (1)
  {
    if (v45 == v2)
    {

      goto LABEL_23;
    }

    if (v2 >= *(v18 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v21 = *(v20 - 16);
    v22 = *(v20 - 8);

    v50 = v22;

    v51 = v21;
    sub_23B50CF54();
    v23 = v53;
    if (!v53)
    {
      break;
    }

    v48 = v20;
    v49 = v2;
    v24 = v52;
    sub_23B50CF54();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133550, &qword_23B517AC8);
    if (__swift_getEnumTagSinglePayload(v5, 1, v25) == 1)
    {
      goto LABEL_29;
    }

    v26 = v9;
    sub_23B50CEC4();
    (*(*(v25 - 8) + 8))(v5, v25);
    swift_isUniquelyReferenced_nonNull_native();
    v54 = v13;
    v27 = sub_23B3A7084(v24, v23);
    if (__OFADD__(v13[2], (v28 & 1) == 0))
    {
      goto LABEL_25;
    }

    v29 = v27;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AE0, &qword_23B519F80);
    if (sub_23B50D624())
    {
      v31 = sub_23B3A7084(v24, v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_30;
      }

      v29 = v31;
    }

    if (v30)
    {

      v13 = v54;
      v33 = v54[7] + *(v47 + 72) * v29;
      v9 = v26;
      (*(v47 + 40))(v33, v26, v46);
    }

    else
    {
      v13 = v54;
      v54[(v29 >> 6) + 8] |= 1 << v29;
      v34 = (v13[6] + 16 * v29);
      *v34 = v24;
      v34[1] = v23;
      v35 = v13[7] + *(v47 + 72) * v29;
      v9 = v26;
      (*(v47 + 32))(v35, v26, v46);

      v36 = v13[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v13[2] = v38;
    }

    v20 = v48 + 24;
    v2 = v49 + 1;
    v18 = v43;
    v5 = v44;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_23B50D864();
  __break(1u);
}

unint64_t OUTLINED_FUNCTION_24_6()
{
  *(v0 + 12) = 2081;

  return sub_23B3A3BC8();
}

uint64_t OUTLINED_FUNCTION_24_10(uint64_t a1)
{

  return sub_23B50D964();
}

uint64_t OUTLINED_FUNCTION_24_11@<X0>(uint64_t a1@<X8>)
{

  return sub_23B39E56C(v2 + a1, v4, v3, v1);
}

void OUTLINED_FUNCTION_24_14(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return type metadata accessor for DayWeather(0);
}

void OUTLINED_FUNCTION_58()
{
  *(v0 + 24) = v1;
}

uint64_t sub_23B3A52DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50B654();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3A5344@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_23B3A5398()
{
  v0 = sub_23B50CFB4();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v23 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23B50CFD4();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v22 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23B50CFA4();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B50D024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_23B50CE84();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_23B50D014();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = sub_23B50D034();
  if (qword_280B43210 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280B4E9B8);
  (*(v13 + 16))(v15, v16, v12);
  sub_23B50CE74();
  *v10 = 32;
  (*(v8 + 104))(v10, *MEMORY[0x277D6C978], v7);
  (*(v4 + 104))(v6, *MEMORY[0x277D6C940], v20);
  (*(v2 + 104))(v22, *MEMORY[0x277D6C958], v21);
  (*(v24 + 104))(v23, *MEMORY[0x277D6C948], v25);
  v26 = 1;
  v17 = sub_23B50CFC4();
  type metadata accessor for AQIScaleStore();
  swift_allocObject();
  return sub_23B3A5A60(v17);
}

uint64_t sub_23B3A582C(uint64_t a1)
{
  v2 = sub_23B50B654();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3A58AC()
{
  v0 = sub_23B50CDF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23B50D014();
  __swift_allocate_value_buffer(v4, qword_280B4E9B8);
  __swift_project_value_buffer(v4, qword_280B4E9B8);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280B4E9D8);
  (*(v1 + 16))(v3, v5, v0);
  sub_23B50CFF4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23B3A5A60(uint64_t a1)
{
  v3 = v1;
  if (a1)
  {
    sub_23B3A5C1C();
    v4 = sub_23B50CFE4();
    if (v2)
    {

      OUTLINED_FUNCTION_0_51();
    }

    else
    {
      *(v1 + 16) = v4;

      sub_23B50CF24();

      sub_23B50CF74();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_51();
    return 0;
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_68_3(uint64_t a1)
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1, uint64_t a2)
{

  return sub_23B50D834();
}

uint64_t OUTLINED_FUNCTION_112_0()
{
  v0[3] = *(v0 + 152);
  v0[4] = *(v0 + 168);
  return 0;
}

unint64_t sub_23B3A5C1C()
{
  result = qword_280B43200;
  if (!qword_280B43200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43200);
  }

  return result;
}

void OUTLINED_FUNCTION_78_0()
{
  *(v5 - 192) = v4;
  *(v5 - 184) = v3;
  *(v5 - 176) = v0;
  *(v5 - 168) = v2;
  *(v5 - 160) = v1;
}

void *sub_23B3A5CB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23B3A5DB8()
{
  result = qword_280B431E0;
  if (!qword_280B431E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431E0);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_26_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26_5(uint64_t a1)
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_26_8(uint64_t a1)
{

  return sub_23B398890(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_23B4338F4(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_10@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_23B3C2510(v3, v4 + a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_26_11()
{
  *(v0 - 83) = 771;
  *(v0 - 81) = 3;

  return type metadata accessor for HistoricalComparisons(0);
}

void OUTLINED_FUNCTION_26_12(uint64_t a1@<X8>)
{
  *(v4 - 112) = a1;
  *(v4 - 104) = v1;
  *(v4 - 96) = v2;
  *(v4 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_26_15(uint64_t a1)
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_26_17(uint64_t a1, uint64_t a2)
{

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_26_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23B50D7F4();
}

unint64_t sub_23B3A6058()
{
  result = qword_280B431D0;
  if (!qword_280B431D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_101_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_task_alloc();
}

uint64_t sub_23B3A60F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_23B50BAE4();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}