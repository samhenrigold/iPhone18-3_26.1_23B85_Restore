unint64_t sub_1C6FF6EDC()
{
  result = qword_1EC215C40;
  if (!qword_1EC215C40)
  {
    result = swift_getWitnessTable(asc_1C7560408, &type metadata for ECRPersonGroundingResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215C40);
  }

  return result;
}

uint64_t sub_1C6FF6F30()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState;
  v2 = type metadata accessor for AppleMusicSubscriptionState(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + 16) = 0;
  *(v0 + 33) = 0;
  return v0;
}

uint64_t sub_1C6FF6F88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C58, &unk_1C75605B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001C7599670;
  *(inited + 48) = sub_1C7550C7C();
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001C7599690;
  sub_1C6FA7014();
  *(inited + 72) = sub_1C75513BC();
  sub_1C75504DC();
  sub_1C70C0278();
  v2 = v1;

  return v2;
}

uint64_t sub_1C6FF7070()
{
  OUTLINED_FUNCTION_0_14();
  v23 = type metadata accessor for AppleMusicSubscriptionState(0);
  MEMORY[0x1EEE9AC00](v23);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  if (*(v1 + 32))
  {
    v6 = 0xE700000000000000;
    v22 = v0;
  }

  else
  {
    v7 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E63B0];
    *(v8 + 16) = xmmword_1C755BAB0;
    v10 = MEMORY[0x1E69E6438];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = v7;
    v22 = sub_1C75506BC();
    v6 = v11;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1C755180C();
  v26 = v24;
  v27 = v25;
  MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C7599730);
  if (*(v1 + 16))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v1 + 16))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v12, v13);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C7599760);
  if (*(v1 + 17))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + 17))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v15);

  MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C7599780);
  MEMORY[0x1CCA5CD70](v22, v6);

  MEMORY[0x1CCA5CD70](0xD00000000000001FLL, 0x80000001C75997A0);
  v16 = OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState;
  swift_beginAccess();
  sub_1C6FF75B4(v1 + v16, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v23))
  {
    sub_1C6FF754C(v5);
    v17 = 0xE700000000000000;
    OUTLINED_FUNCTION_0_14();
  }

  else
  {
    v18 = v21;
    sub_1C6FF7624(v5, v21);
    sub_1C6FF754C(v5);
    v16 = AppleMusicSubscriptionState.description.getter();
    v17 = v19;
    sub_1C6FF7688(v18);
  }

  MEMORY[0x1CCA5CD70](v16, v17);

  return v26;
}

uint64_t sub_1C6FF736C()
{
  sub_1C6FF754C(v0 + OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MusicStatistics(uint64_t a1)
{
  result = qword_1EC215C48;
  if (!qword_1EC215C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6FF7424(uint64_t a1)
{
  sub_1C6FF74D0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C6FF74D0(uint64_t a1)
{
  if (!qword_1EDD0D8A0)
  {
    type metadata accessor for AppleMusicSubscriptionState(255);
    v1 = sub_1C755149C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD0D8A0);
    }
  }
}

uint64_t sub_1C6FF754C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6FF75B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6FF7624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleMusicSubscriptionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6FF7688(uint64_t a1)
{
  v2 = type metadata accessor for AppleMusicSubscriptionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6FF7714(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF7814()
{
  OUTLINED_FUNCTION_456();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_414();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF78DC(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF7954(uint64_t a1, unsigned __int8 a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF79CC()
{
  OUTLINED_FUNCTION_196();
  sub_1C75505AC();
}

uint64_t sub_1C6FF7ABC(uint64_t a1, unsigned __int8 a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF7B44(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_113_0();
      break;
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_56_7();
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF7C54(uint64_t a1, unsigned __int8 a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF7D14()
{
  OUTLINED_FUNCTION_3_1();
  sub_1C75505AC();
}

uint64_t sub_1C6FF7DA4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_55_2();
      break;
    case 2:
      OUTLINED_FUNCTION_569();
      OUTLINED_FUNCTION_113_0();
      break;
    case 3:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF7E68()
{
  OUTLINED_FUNCTION_459();
  sub_1C75505AC();
}

uint64_t sub_1C6FF7F64()
{
  OUTLINED_FUNCTION_126_2();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_566();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF8004(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_564();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF80B8()
{
  OUTLINED_FUNCTION_562();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_113_0();
      break;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_560();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF81B8()
{
  OUTLINED_FUNCTION_167();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_167();
      break;
    case 3:
      OUTLINED_FUNCTION_414();
      break;
    case 6:
    case 8:
      OUTLINED_FUNCTION_445();
      break;
    case 7:
      OUTLINED_FUNCTION_445();
      OUTLINED_FUNCTION_562();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF82F8()
{
  OUTLINED_FUNCTION_456();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_414();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF83E4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    case 2:
      OUTLINED_FUNCTION_566();
      break;
    case 4:
      OUTLINED_FUNCTION_445();
      break;
    default:
      OUTLINED_FUNCTION_113_0();
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF84C8(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_542();
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF8560()
{
  OUTLINED_FUNCTION_3_1();
  sub_1C75505AC();
}

uint64_t sub_1C6FF8600(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_56_7();
      break;
    case 3:
      OUTLINED_FUNCTION_113_0();
      break;
    case 5:
    case 6:
    case 7:
    case 8:
      OUTLINED_FUNCTION_372();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF8728()
{
  OUTLINED_FUNCTION_459();
  sub_1C75505AC();
}

uint64_t sub_1C6FF87E8()
{
  OUTLINED_FUNCTION_196();
  sub_1C75505AC();
}

uint64_t sub_1C6FF88B0(uint64_t a1, unsigned __int8 a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8928(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8994(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_167();
  switch(v2)
  {
    case 8:
      OUTLINED_FUNCTION_44_3();
      goto LABEL_3;
    case 9:
LABEL_3:
      OUTLINED_FUNCTION_532();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF8AAC(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8BC0(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8C6C(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8CC8(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8D30(uint64_t a1, unsigned __int8 a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_108_1(v3, v4);
}

uint64_t sub_1C6FF8E4C()
{
  OUTLINED_FUNCTION_579();
  switch(v0)
  {
    case 5:
      OUTLINED_FUNCTION_569();
      OUTLINED_FUNCTION_113_0();
      break;
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_55_2();
      break;
  }

  sub_1C75505AC();
}

void sub_1C6FF8F38(uint64_t a1)
{
  v1 = ActivityFeatureCode.rawValue.getter();
  sub_1C75513FC();
}

uint64_t sub_1C6FF8F94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_167();
  switch(v2)
  {
    case 3:
      OUTLINED_FUNCTION_579();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9024(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_542();
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF90BC(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF9140(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_542();
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF91E0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 5:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_524();
      break;
    case 2:
      OUTLINED_FUNCTION_304();
      break;
    case 3:
      OUTLINED_FUNCTION_360();
      break;
    case 4:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF92B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_304();
  switch(v2)
  {
    case 2:
    case 5:
      break;
    case 3:
      OUTLINED_FUNCTION_360();
      break;
    case 4:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_524();
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9384(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF94FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF9584(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_569();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9650(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF96C4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_437();
      break;
    case 2:
      OUTLINED_FUNCTION_562();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9788(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_569();
  sub_1C75505AC();
}

uint64_t sub_1C6FF9844()
{
  OUTLINED_FUNCTION_3_1();
  sub_1C75505AC();
}

uint64_t sub_1C6FF98AC(uint64_t a1, unsigned __int8 a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF993C()
{
  OUTLINED_FUNCTION_126_2();
  switch(v0)
  {
    case 5:
      OUTLINED_FUNCTION_269();
      break;
    case 6:
      OUTLINED_FUNCTION_327();
      break;
    case 7:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9A34(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9B1C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_562();
      OUTLINED_FUNCTION_566();
      break;
    case 3:
      OUTLINED_FUNCTION_445();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9BE4(uint64_t a1, char a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF9C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_108_1(v3, v4);
}

uint64_t sub_1C6FF9CB4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_566();
      break;
    case 2:
      OUTLINED_FUNCTION_113_0();
      break;
    case 4:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_196();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9D9C()
{
  OUTLINED_FUNCTION_126_2();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_269();
      break;
    case 5:
      OUTLINED_FUNCTION_327();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9E80(uint64_t a1, unsigned __int8 a2)
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF9F08(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_269();
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9F88(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_532();
  }

  sub_1C75505AC();
}

uint64_t ExtendedTokenSource.description.getter()
{
  if (*(v0 + 8))
  {
    return OUTLINED_FUNCTION_30_2();
  }

  OUTLINED_FUNCTION_23_9();
  v2 = PLDebugStringForAmbiguityType();
  sub_1C755068C();
  OUTLINED_FUNCTION_324();

  v3 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v3);

  OUTLINED_FUNCTION_189();
  return v4;
}

uint64_t static ExtendedTokenSource.~= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return OUTLINED_FUNCTION_10_6();
}

uint64_t static ExtendedTokenSource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_10_6();
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1C6FFA100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C6FFA1CC(char a1)
{
  if (a1)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_1C6FFA204(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7469756769626D61 && a2 == 0xED00006570795479)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FFA2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFA100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFA2E0(uint64_t a1)
{
  v2 = sub_1C70181EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFA31C(uint64_t a1)
{
  v2 = sub_1C70181EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFA358(uint64_t a1)
{
  v2 = sub_1C7018240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFA394(uint64_t a1)
{
  v2 = sub_1C7018240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFA3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFA204(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FFA400(uint64_t a1)
{
  v2 = sub_1C7018294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFA43C(uint64_t a1)
{
  v2 = sub_1C7018294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExtendedTokenSource.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C68, &qword_1C75605D0);
  OUTLINED_FUNCTION_3_0();
  v18 = v3;
  v19 = v2;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_36();
  v17 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C70, &qword_1C75605D8);
  OUTLINED_FUNCTION_3_0();
  v20 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C78, &qword_1C75605E0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v0 + 8);
  v10 = OUTLINED_FUNCTION_431();
  OUTLINED_FUNCTION_70(v10, v11);
  sub_1C70181EC();
  sub_1C755200C();
  if (v9)
  {
    OUTLINED_FUNCTION_188_0();
    sub_1C7018240();
    OUTLINED_FUNCTION_352();
    sub_1C7551C6C();
    (*(v18 + 8))(v17, v19);
  }

  else
  {
    sub_1C7018294();
    OUTLINED_FUNCTION_352();
    sub_1C7551C6C();
    type metadata accessor for PHSearchAmbiguityType(0);
    OUTLINED_FUNCTION_214();
    sub_1C70259B4(v14, v15, protocol conformance descriptor for PHSearchAmbiguityType);
    sub_1C7551D2C();
    OUTLINED_FUNCTION_429();
    v16(v1, v20);
  }

  v12 = OUTLINED_FUNCTION_35_0();
  v13(v12);
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

void ExtendedTokenSource.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v59 = v3;
  v60 = v1;
  v5 = v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C80, &qword_1C75605E8);
  OUTLINED_FUNCTION_3_0();
  v55 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C88, &qword_1C75605F0);
  OUTLINED_FUNCTION_3_0();
  v56 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_390();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C90, &qword_1C75605F8);
  OUTLINED_FUNCTION_3_0();
  v58 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_391();
  v16 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_70(v16, v17);
  sub_1C70181EC();
  v18 = v60;
  sub_1C7551FFC();
  if (v18)
  {
    goto LABEL_10;
  }

  v53 = v9;
  v54 = v2;
  v60 = v5;
  v52 = v10;
  v19 = v59;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  v23 = v13;
  if (v21 == v22 >> 1)
  {
    goto LABEL_9;
  }

  v51 = 0;
  if (v21 < (v22 >> 1))
  {
    v24 = *(v20 + v21);
    sub_1C6FD80C8();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = v57;
    if (v26 == v28 >> 1)
    {
      v30 = v24;
      if (v24)
      {
        OUTLINED_FUNCTION_188_0();
        sub_1C7018240();
        v31 = v53;
        OUTLINED_FUNCTION_352();
        v32 = v51;
        sub_1C7551B4C();
        if (v32)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        (*(v55 + 8))(v31, v29);
        v41 = OUTLINED_FUNCTION_173();
        v42(v41);
        v43 = 0;
      }

      else
      {
        sub_1C7018294();
        OUTLINED_FUNCTION_352();
        v38 = v51;
        sub_1C7551B4C();
        if (v38)
        {
LABEL_13:
          v39 = OUTLINED_FUNCTION_173();
          v40(v39);
          swift_unknownObjectRelease();
          v5 = v60;
          goto LABEL_10;
        }

        LODWORD(v57) = v24;
        type metadata accessor for PHSearchAmbiguityType(0);
        OUTLINED_FUNCTION_214();
        sub_1C70259B4(v44, v45, protocol conformance descriptor for PHSearchAmbiguityType);
        sub_1C7551C1C();
        swift_unknownObjectRelease();
        v46 = OUTLINED_FUNCTION_249();
        v47(v46);
        v48 = OUTLINED_FUNCTION_173();
        v49(v48);
        v43 = v61;
        v30 = v57;
      }

      *v19 = v43;
      *(v19 + 8) = v30;
      __swift_destroy_boxed_opaque_existential_1(v60);
      goto LABEL_11;
    }

    v23 = v13;
LABEL_9:
    v33 = sub_1C75518EC();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v35 = &type metadata for ExtendedTokenSource;
    v36 = sub_1C7551B5C();
    OUTLINED_FUNCTION_588(v36);
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_429();
    v37(v0, v23);
    v5 = v60;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_11:
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_125();
    return;
  }

  __break(1u);
}

uint64_t sub_1C6FFACA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746553746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F63537465737361 && a2 == 0xEC000000676E6970;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74657373416E6F6ELL && a2 == 0xEF676E69706F6353)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C6FFADB8(char a1)
{
  if (!a1)
  {
    return 0x746553746F6ELL;
  }

  if (a1 == 1)
  {
    return 0x6F63537465737361;
  }

  return 0x74657373416E6F6ELL;
}

uint64_t sub_1C6FFAE20(uint64_t a1)
{
  v2 = sub_1C7025AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFAE5C(uint64_t a1)
{
  v2 = sub_1C7025AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFAEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFACA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFAEC8(uint64_t a1)
{
  v2 = sub_1C70259FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFAF04(uint64_t a1)
{
  v2 = sub_1C70259FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFAF40(uint64_t a1)
{
  v2 = sub_1C7025A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFAF7C(uint64_t a1)
{
  v2 = sub_1C7025A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFAFB8(uint64_t a1)
{
  v2 = sub_1C7025AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFAFF4(uint64_t a1)
{
  v2 = sub_1C7025AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetScopingStatus.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C98, &qword_1C7560608);
  OUTLINED_FUNCTION_3_0();
  v29 = v6;
  v30 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v28 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CA0, &qword_1C7560610);
  OUTLINED_FUNCTION_3_0();
  v26 = v10;
  v27 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CA8, &qword_1C7560618);
  OUTLINED_FUNCTION_3_0();
  v23 = v14;
  v24 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_61_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CB0, &qword_1C7560620);
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_389();
  v20 = *v0;
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C70259FC();
  sub_1C755200C();
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1C7025AA4();
      v1 = v25;
      OUTLINED_FUNCTION_153();
      sub_1C7551C6C();
      v22 = v26;
      v21 = v27;
    }

    else
    {
      OUTLINED_FUNCTION_286();
      sub_1C7025A50();
      v1 = v28;
      OUTLINED_FUNCTION_153();
      sub_1C7551C6C();
      v22 = v29;
      v21 = v30;
    }
  }

  else
  {
    sub_1C7025AF8();
    OUTLINED_FUNCTION_153();
    sub_1C7551C6C();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v1, v21);
  (*(v18 + 8))(v2, v16);
  OUTLINED_FUNCTION_125();
}

uint64_t AssetScopingStatus.hashValue.getter()
{
  sub_1C7551F3C();
  v0 = OUTLINED_FUNCTION_224();
  MEMORY[0x1CCA5E460](v0);
  return sub_1C7551FAC();
}

void AssetScopingStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  a23 = v27;
  a24 = v28;
  v89 = v24;
  v30 = v29;
  v84 = v31;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CB8, &qword_1C7560628);
  OUTLINED_FUNCTION_3_0();
  v85 = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_36();
  v87 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CC0, &qword_1C7560630);
  OUTLINED_FUNCTION_3_0();
  v82 = v36;
  v83 = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_390();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CC8, &qword_1C7560638);
  OUTLINED_FUNCTION_3_0();
  v81 = v39;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_251();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CD0, &qword_1C7560640);
  OUTLINED_FUNCTION_3_0();
  v86 = v42;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v76 - v44;
  OUTLINED_FUNCTION_70(v30, v30[3]);
  sub_1C70259FC();
  v46 = v89;
  sub_1C7551FFC();
  if (v46)
  {
    goto LABEL_10;
  }

  v78 = v38;
  v79 = v26;
  v80 = v25;
  v48 = v87;
  v47 = v88;
  v89 = v30;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  if (v50 == v51 >> 1)
  {
    goto LABEL_9;
  }

  v77 = 0;
  if (v50 < (v51 >> 1))
  {
    v52 = *(v49 + v50);
    sub_1C6FD80C8();
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    v57 = v54 == v56 >> 1;
    v58 = v85;
    if (v57)
    {
      if (v52)
      {
        if (v52 == 1)
        {
          a13 = 1;
          sub_1C7025AA4();
          v59 = v80;
          OUTLINED_FUNCTION_595(&type metadata for AssetScopingStatus.AssetScopingCodingKeys, &a13);
          v60 = v84;
          swift_unknownObjectRelease();
          (*(v82 + 8))(v59, v83);
          v70 = OUTLINED_FUNCTION_505();
          v71(v70);
        }

        else
        {
          LODWORD(v83) = v52;
          OUTLINED_FUNCTION_286();
          sub_1C7025A50();
          v67 = v77;
          sub_1C7551B4C();
          v60 = v84;
          if (v67)
          {
            v68 = OUTLINED_FUNCTION_291();
            v69(v68);
            swift_unknownObjectRelease();
            v30 = v89;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v58 + 8))(v48, v47);
          v74 = OUTLINED_FUNCTION_291();
          v75(v74);
          LOBYTE(v52) = v83;
        }
      }

      else
      {
        a12 = 0;
        sub_1C7025AF8();
        v66 = v79;
        OUTLINED_FUNCTION_595(&type metadata for AssetScopingStatus.NotSetCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v81 + 8))(v66, v78);
        OUTLINED_FUNCTION_429();
        v72 = OUTLINED_FUNCTION_431();
        v73(v72);
        v60 = v84;
      }

      *v60 = v52;
      __swift_destroy_boxed_opaque_existential_1(v89);
      goto LABEL_11;
    }

LABEL_9:
    v61 = sub_1C75518EC();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v63 = &type metadata for AssetScopingStatus;
    v64 = sub_1C7551B5C();
    OUTLINED_FUNCTION_588(v64);
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_429();
    v65(v45, v41);
    v30 = v89;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  __break(1u);
}

BOOL ExtendedToken.isUsedForAssetScoping.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v4((&v7 + 1));
  if (BYTE1(v7))
  {
    (v4)(&v7, a1, a2);
    return v7 == 1;
  }

  else
  {
    sub_1C7025B4C();
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C6FFB9DC()
{
  OUTLINED_FUNCTION_593();

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_196();
  v12 = v1;
  v13 = v0;
  v2 = OUTLINED_FUNCTION_64();
  v3 = MEMORY[0x1CCA5CD70](v2);
  OUTLINED_FUNCTION_195(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
}

uint64_t sub_1C6FFBA54()
{
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_1C6FFBAA8()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_1C6FFBAFC()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_1C6FFBB4C()
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_1C6FFBB9C()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t sub_1C6FFBBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1CCA5CD70](*v3, v3[1]);
  OUTLINED_FUNCTION_195(v4, v5, v6, v7, v8, v9, v10, v11, a2, a3);
}

uint64_t sub_1C6FFBC3C()
{
  OUTLINED_FUNCTION_410();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t ExtendedToken.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 64))(a2, a3);
  OUTLINED_FUNCTION_108_1(v3, v4);
}

uint64_t sub_1C6FFBCDC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&DynamicType);
  if (v24)
  {
    v3 = 0xEA00000000006E6FLL;
    v4 = 0x697463656C6C6F63;
  }

  else
  {
    OUTLINED_FUNCTION_542();
    if (!v8)
    {
      v6 = 0xD000000000000012;
      v5 = 0x80000001C7599F00;
    }

    if (v8 == 1)
    {
      v6 = 0xD000000000000018;
      v5 = 0x80000001C7599EE0;
    }

    if (v8 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = v6;
    }

    if (v8 == 2)
    {
      v3 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  OUTLINED_FUNCTION_64();
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  DynamicType = sub_1C75506EC();
  v24 = v9;
  v10 = 0xE000000000000000;
  sub_1C6FB5E8C();
  v11 = sub_1C755155C();
  v13 = v12;

  DynamicType = v11;
  v24 = v13;
  MEMORY[0x1CCA5CD70](656420128, 0xE400000000000000);
  v14 = OUTLINED_FUNCTION_295();
  v16 = v15(v14);
  MEMORY[0x1CCA5CD70](v16);

  MEMORY[0x1CCA5CD70](2108455, 0xE300000000000000);
  MEMORY[0x1CCA5CD70](v4, v3);

  v17 = *(a2 + 56);
  v18 = OUTLINED_FUNCTION_295();
  v19 = v17(v18);
  if (v19)
  {

    v20 = OUTLINED_FUNCTION_295();
    if (v17(v20))
    {
    }

    v21 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v21);

    MEMORY[0x1CCA5CD70](0x2973746573736120, 0xE800000000000000);
    v19 = 10272;
    v10 = 0xE200000000000000;
  }

  MEMORY[0x1CCA5CD70](v19, v10);

  return DynamicType;
}

uint64_t PersonRelationshipAgeInfo.init(ageType:confirmedRelationship:highRecallRelationship:isMyChild:isMe:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  *a6 = result;
  *(a6 + 2) = v6;
  *(a6 + 3) = v7;
  *(a6 + 4) = a4;
  *(a6 + 5) = a5;
  return result;
}

void PersonRelationshipAgeInfo.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_597();
  v25 = *(v24 + 2);
  v26 = *(v24 + 3);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  MEMORY[0x1CCA5CD70](0x3A65707954656761, 0xE900000000000020);
  type metadata accessor for PHPersonAgeType(0);
  sub_1C75519EC();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  if (v25 == 18)
  {
    OUTLINED_FUNCTION_113_0();
  }

  else
  {
    StoryPersonRelationshipType.rawValue.getter();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000019);
  if (v26 == 18)
  {
    OUTLINED_FUNCTION_113_0();
  }

  else
  {
    StoryPersonRelationshipType.rawValue.getter();
  }

  OUTLINED_FUNCTION_341();

  MEMORY[0x1CCA5CD70](0x696843794D73690ALL, 0xEC000000203A646CLL);
  OUTLINED_FUNCTION_341();

  MEMORY[0x1CCA5CD70](0x203A654D73690ALL, 0xE700000000000000);
  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_596();
}

uint64_t static PersonRelationshipAgeInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  if (v4 == 18)
  {
    if (v8 != 18)
    {
      return 0;
    }
  }

  else if (v8 == 18 || (sub_1C6FA0848(v4, v8) & 1) == 0)
  {
    return 0;
  }

  if (v5 == 18)
  {
    result = 0;
    if (v9 != 18)
    {
      return result;
    }

LABEL_15:
    if (((v6 ^ v10) & 1) == 0)
    {
      return v7 ^ v11 ^ 1u;
    }

    return result;
  }

  if (v9 == 18)
  {
    return 0;
  }

  v13 = sub_1C6FA0848(v5, v9);
  result = 0;
  if (v13)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1C6FFC3DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954656761 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C7599CC0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C7599CE0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C696843794D7369 && a2 == 0xE900000000000064;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1699574633 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C6FFC590(char a1)
{
  result = 0x65707954656761;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6C696843794D7369;
      break;
    case 4:
      result = 1699574633;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFC63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFC3DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFC664(uint64_t a1)
{
  v2 = sub_1C7025BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFC6A0(uint64_t a1)
{
  v2 = sub_1C7025BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonRelationshipAgeInfo.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CE0, &qword_1C7560648);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_61_1();
  v2 = OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_70(v2, v3);
  v4 = sub_1C7025BA0();
  OUTLINED_FUNCTION_230(&type metadata for PersonRelationshipAgeInfo.CodingKeys, v5, v4);
  type metadata accessor for PHPersonAgeType(0);
  OUTLINED_FUNCTION_219();
  sub_1C70259B4(v6, v7, protocol conformance descriptor for PHPersonAgeType);
  OUTLINED_FUNCTION_442();
  sub_1C7551D2C();
  if (!v0)
  {
    sub_1C7025BF4();
    OUTLINED_FUNCTION_442();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_442();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_442();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_534();
    OUTLINED_FUNCTION_442();
    sub_1C7551CDC();
  }

  v8 = OUTLINED_FUNCTION_295();
  v9(v8);
  OUTLINED_FUNCTION_125();
}

uint64_t PersonRelationshipAgeInfo.hash(into:)()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  sub_1C7551F6C();
  sub_1C7551F5C();
  if (v1 != 18)
  {
    v3 = StoryPersonRelationshipType.rawValue.getter();
    OUTLINED_FUNCTION_108_1(v3, v4);
  }

  sub_1C7551F5C();
  if (v2 != 18)
  {
    v5 = StoryPersonRelationshipType.rawValue.getter();
    OUTLINED_FUNCTION_108_1(v5, v6);
  }

  sub_1C7551F5C();
  return sub_1C7551F5C();
}

uint64_t PersonRelationshipAgeInfo.hashValue.getter()
{
  sub_1C7551F3C();
  PersonRelationshipAgeInfo.hash(into:)();
  return sub_1C7551FAC();
}

void PersonRelationshipAgeInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, __int16 a14)
{
  OUTLINED_FUNCTION_124();
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CE8, &qword_1C7560650);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v16, v16[3]);
  sub_1C7025BA0();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (!v14)
  {
    type metadata accessor for PHPersonAgeType(0);
    OUTLINED_FUNCTION_219();
    sub_1C70259B4(v20, v21, protocol conformance descriptor for PHPersonAgeType);
    OUTLINED_FUNCTION_421();
    sub_1C7551C1C();
    sub_1C7025C48();
    OUTLINED_FUNCTION_352();
    OUTLINED_FUNCTION_421();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_352();
    OUTLINED_FUNCTION_421();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_421();
    v22 = sub_1C7551BCC();
    OUTLINED_FUNCTION_534();
    OUTLINED_FUNCTION_421();
    v23 = sub_1C7551BCC();
    v24 = OUTLINED_FUNCTION_497();
    v25(v24);
    *v18 = a14;
    *(v18 + 2) = a13;
    *(v18 + 3) = a11;
    *(v18 + 4) = v22 & 1;
    *(v18 + 5) = v23 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C6FFCC88(uint64_t a1)
{
  sub_1C7551F3C();
  PersonRelationshipAgeInfo.hash(into:)();
  return sub_1C7551FAC();
}

void PersonExtendedToken.relationshipInfo.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 52);
  v3 = *(v1 + 53);
  *a1 = *(v1 + 48);
  *(a1 + 4) = v2;
  *(a1 + 5) = v3;
}

uint64_t PersonExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PersonExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_358();
  return v1;
}

uint64_t PersonExtendedToken.init(name:source:uuid:relationshipInfo:assetUUIDs:isFavorite:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *a6;
  v12 = *(a6 + 4);
  v13 = *(a6 + 5);
  *(a9 + 54) = 0;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 24) = v10;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = v11;
  *(a9 + 52) = v12;
  *(a9 + 53) = v13;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

uint64_t static PersonExtendedToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v4 == v6 && v5 == v7)
  {
    return OUTLINED_FUNCTION_10_6();
  }

  else
  {
    return OUTLINED_FUNCTION_313(v4, v5, v6, v7);
  }
}

uint64_t sub_1C6FFD0E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684632949 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C7599D00 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C6FFD324(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 1684632949;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x4955557465737361;
      break;
    case 6:
      result = 0x69726F7661467369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFD3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFD0E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFD420(uint64_t a1)
{
  v2 = sub_1C7025CF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFD45C(uint64_t a1)
{
  v2 = sub_1C7025CF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CF0, &unk_1C7560658);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v12 = *(v0 + 16);
  v8 = v3[3];
  v9 = v3;
  v11 = v10;
  OUTLINED_FUNCTION_70(v9, v8);
  sub_1C7025CF0();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_431();
  sub_1C7551CCC();
  if (!v1)
  {
    OUTLINED_FUNCTION_85_1(v12);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_359();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_359();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_184();
    sub_1C7025D98();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_359();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_359();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_359();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_395();
    OUTLINED_FUNCTION_359();
    sub_1C7551CDC();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_125();
}

uint64_t PersonExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190(v0, v1, v2);

  return sub_1C7551FAC();
}

void PersonExtendedToken.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CF8, &qword_1C7560668);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_251();
  v30 = OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_70(v30, v31);
  v32 = sub_1C7025CF0();
  OUTLINED_FUNCTION_471(&type metadata for PersonExtendedToken.CodingKeys, v33, v32);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    LOBYTE(v69) = 0;
    OUTLINED_FUNCTION_101_1();
    v34 = sub_1C7551BBC();
    v36 = v35;
    sub_1C7025E40();
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_155(v37, v38, v39, v40, v41);
    v66 = v28;
    v67 = v69;
    v83 = v70;
    LOBYTE(v69) = 2;
    OUTLINED_FUNCTION_101_1();
    v42 = sub_1C7551BBC();
    v44 = v43;
    v65 = v42;
    sub_1C7025E94();
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_155(v45, v46, v47, v48, v49);
    v62 = v69;
    v61 = BYTE2(v69);
    v60 = BYTE3(v69);
    v64 = BYTE4(v69);
    v63 = BYTE5(v69);
    sub_1C7025EE8();
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_155(v50, v51, v52, v53, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_162();
    sub_1C7551BAC();
    v59 = v34;
    v55 = v69;
    OUTLINED_FUNCTION_101_1();
    v56 = sub_1C7551BCC();
    v57 = OUTLINED_FUNCTION_160();
    v58(v57);
    v68[0] = v59;
    v68[1] = v36;
    v68[2] = v67;
    LOBYTE(v68[3]) = v70;
    v68[4] = v65;
    v68[5] = v44;
    LODWORD(v68[6]) = v69;
    WORD2(v68[6]) = WORD2(v69);
    BYTE6(v68[6]) = 2;
    v68[7] = v69;
    LOBYTE(v68[8]) = v56 & 1;
    memcpy(v66, v68, 0x41uLL);
    sub_1C7025F3C(v68, &v69);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v69 = v59;
    v70 = v36;
    v71 = v67;
    v72 = v83;
    v73 = v65;
    v74 = v44;
    v75 = v62;
    v76 = v61;
    v77 = v60;
    v78 = v64;
    v79 = v63;
    v80 = 2;
    v81 = v55;
    v82 = v56 & 1;
    sub_1C7025F74(&v69);
  }

  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C6FFDBD4()
{
  memcpy(__dst, v0, sizeof(__dst));
  OUTLINED_FUNCTION_224();
  return sub_1C6FFBAFC();
}

uint64_t sub_1C6FFDC14(uint64_t a1)
{
  sub_1C7551F3C();
  v1 = PersonExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_109_4(v1, v2, v3);

  return sub_1C7551FAC();
}

uint64_t PetExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PetExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_410();
  OUTLINED_FUNCTION_358();
  return v1;
}

uint64_t PetExtendedToken.init(name:source:uuid:detectionType:assetUUIDs:isFavorite:isMyPet:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  *(a9 + 50) = 0;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 24) = v11;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 65) = a10;
  return result;
}

uint64_t static PetExtendedToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v4 == v6 && v5 == v7)
  {
    return OUTLINED_FUNCTION_10_6();
  }

  else
  {
    return OUTLINED_FUNCTION_313(v4, v5, v6, v7);
  }
}

void PetExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_14_9();
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1C755180C();
  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  v4 = OUTLINED_FUNCTION_55();
  MEMORY[0x1CCA5CD70](v4);
  v5 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v5);
  if (v1)
  {
    v6 = 0xEA00000000006E6FLL;
    v7 = OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
    v14 = v8;
    v15 = v9;
    v10 = PLDebugStringForAmbiguityType();
    sub_1C755068C();

    v11 = OUTLINED_FUNCTION_15_1();
    MEMORY[0x1CCA5CD70](v11);

    MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
    v7 = v14;
    v6 = v15;
  }

  MEMORY[0x1CCA5CD70](v7, v6);

  MEMORY[0x1CCA5CD70](0x7575202020200A2CLL, 0xEC000000203A6469);
  v12 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v12);
  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70](0xD000000000000015);
  static StoryGenerationCharacterTypes.detectionTypeString(for:isPlural:)(v2, 0);
  OUTLINED_FUNCTION_602();

  v13 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v13);
  if (v3)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_602();

  MEMORY[0x1CCA5CD70](0x50794D7369090A2CLL, 0xEC000000203A7465);
  OUTLINED_FUNCTION_602();

  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_1C6FFE168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684632949 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F69746365746564 && a2 == 0xED0000657079546ELL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x746550794D7369 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C7551DBC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C6FFE3F8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 1684632949;
      break;
    case 3:
      result = 0x6F69746365746564;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x4955557465737361;
      break;
    case 6:
      result = 0x69726F7661467369;
      break;
    case 7:
      result = 0x746550794D7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFE4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFE168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFE510@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_1_18();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FFE538(uint64_t a1)
{
  v2 = sub_1C7025FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFE574(uint64_t a1)
{
  v2 = sub_1C7025FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PetExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D00, &qword_1C7560670);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_263();
  v11 = v6;
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_70(v7, v8);
  sub_1C7025FA4();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  sub_1C7551CCC();
  if (!v0)
  {
    OUTLINED_FUNCTION_85_1(v11);
    OUTLINED_FUNCTION_48_6();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_255();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_184();
    type metadata accessor for PHDetectionType(0);
    OUTLINED_FUNCTION_212();
    sub_1C70259B4(v9, v10, protocol conformance descriptor for PHDetectionType);
    OUTLINED_FUNCTION_48_6();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_48_6();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_48_6();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_395();
    sub_1C7551CDC();
    sub_1C7551CDC();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t PetExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_410();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190(v0, v1, v2);

  return sub_1C7551FAC();
}

void PetExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D18, &qword_1C7560678);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_251();
  v10 = OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_70(v10, v11);
  v12 = sub_1C7025FA4();
  OUTLINED_FUNCTION_471(&type metadata for PetExtendedToken.CodingKeys, v13, v12);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_101_1();
    v14 = sub_1C7551BBC();
    v16 = v15;
    sub_1C7025E40();
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_155(v17, v18, v19, v20, v21);
    v37 = v39;
    v57 = v40;
    LOBYTE(v39) = 2;
    OUTLINED_FUNCTION_101_1();
    v36 = sub_1C7551BBC();
    v58 = v22;
    type metadata accessor for PHDetectionType(0);
    OUTLINED_FUNCTION_212();
    sub_1C70259B4(v23, v24, protocol conformance descriptor for PHDetectionType);
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_162();
    sub_1C7551C1C();
    v35 = v39;
    sub_1C7025EE8();
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_155(v25, v26, v27, v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    LOBYTE(v38[0]) = 5;
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_162();
    sub_1C7551BAC();
    v34 = v14;
    v30 = v39;
    LOBYTE(v39) = 6;
    OUTLINED_FUNCTION_101_1();
    v33 = sub_1C7551BCC();
    v53 = 7;
    OUTLINED_FUNCTION_101_1();
    v33 &= 1u;
    v31 = sub_1C7551BCC();
    (*(v8 + 8))(v1, v6);
    v38[0] = v34;
    v38[1] = v16;
    v38[2] = v37;
    v32 = v40;
    LOBYTE(v38[3]) = v40;
    *(&v38[3] + 1) = *v56;
    HIDWORD(v38[3]) = *&v56[3];
    v38[4] = v36;
    v38[5] = v58;
    LOWORD(v38[6]) = v35;
    BYTE2(v38[6]) = 2;
    *(&v38[6] + 3) = v54;
    HIBYTE(v38[6]) = v55;
    v38[7] = v30;
    LOBYTE(v38[8]) = v33;
    BYTE1(v38[8]) = v31 & 1;
    memcpy(v5, v38, 0x42uLL);
    sub_1C7025FF8(v38, &v39);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v39 = v34;
    v40 = v16;
    v41 = v37;
    v42 = v32;
    *v43 = *v56;
    *&v43[3] = *&v56[3];
    v44 = v36;
    v45 = v58;
    v46 = v35;
    v47 = 2;
    v48 = v54;
    v49 = v55;
    v50 = v30;
    v51 = v33;
    v52 = v31 & 1;
    sub_1C7026030(&v39);
  }

  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C6FFED50()
{
  memcpy(__dst, v0, sizeof(__dst));
  OUTLINED_FUNCTION_224();
  return sub_1C6FFBC3C();
}

uint64_t sub_1C6FFED90(uint64_t a1)
{
  sub_1C7551F3C();
  v1 = PetExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_109_4(v1, v2, v3);

  return sub_1C7551FAC();
}

uint64_t LocationExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t LocationExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_358();
  return v1;
}

void static LocationExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v12 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    if (!v11)
    {
LABEL_20:
      OUTLINED_FUNCTION_135_0();
      return;
    }
  }

  else
  {
    if (v6 == v10)
    {
      v13 = v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_20;
    }
  }

  if (v4 == v8 && v5 == v9)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_135_0();

  sub_1C7551DBC();
}

uint64_t LocationExtendedToken.init(name:detailedName:source:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = *(a5 + 8);
  *(a7 + 41) = 0;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = v8;
  *(a7 + 48) = a6;
  return result;
}

void LocationExtendedToken.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_597();
  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  v15 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v15);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000014);
  v16 = OUTLINED_FUNCTION_15_1();
  MEMORY[0x1CCA5CD70](v16);
  v17 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v17);
  if (v13)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v18 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v19 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v19);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  v20 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v20);
  if (v14)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_596();
}

uint64_t sub_1C6FFF164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656C6961746564 && a2 == 0xEC000000656D614ELL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C6FFF314(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x64656C6961746564;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFF3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFF164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFF3E4(uint64_t a1)
{
  v2 = sub_1C7026060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFF420(uint64_t a1)
{
  v2 = sub_1C7026060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D28, &qword_1C7560680);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_61_1();
  v3 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_70(v3, v4);
  sub_1C7026060();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_316();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_467(v5, v6, v7);
  if (!v0)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_286();
    sub_1C7025D44();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_184();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v8 = OUTLINED_FUNCTION_380();
  v9(v8, v1);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t LocationExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190(v0, v1, v2);

  return sub_1C7551FAC();
}

void LocationExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_247();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D30, &qword_1C7560688);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C7026060();
  OUTLINED_FUNCTION_248();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_139();
    v4 = sub_1C7551BBC();
    v6 = v5;
    v14 = v4;
    LOBYTE(v19) = 1;
    OUTLINED_FUNCTION_139();
    *&v13 = sub_1C7551BBC();
    *(&v13 + 1) = v7;
    sub_1C7025E40();
    sub_1C7551C1C();
    v12 = v19;
    v27 = v20;
    sub_1C7025EE8();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v8 = OUTLINED_FUNCTION_12_7();
    v9(v8);
    v10 = v26;
    *&v15 = v14;
    *(&v15 + 1) = v6;
    v16 = v13;
    *&v17 = v19;
    BYTE8(v17) = v20;
    BYTE9(v17) = 1;
    v18 = v26;
    *(v2 + 48) = v26;
    v11 = v16;
    *v2 = v15;
    *(v2 + 16) = v11;
    *(v2 + 32) = v17;
    sub_1C70260B4(&v15, &v19);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v19 = v14;
    v20 = v6;
    v21 = v13;
    v22 = v12;
    v23 = v27;
    v24 = 1;
    v25 = v10;
    sub_1C70260EC(&v19);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C6FFFA30(uint64_t a1)
{
  sub_1C7551F3C();
  v1 = LocationExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_109_4(v1, v2, v3);

  return sub_1C7551FAC();
}

uint64_t GenericLocationExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_593();

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_196();
  v3 = v0;
  v1 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v1);
  return v3;
}

uint64_t static GenericLocationExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (*(v3 + 24))
    {
      return v7 & 1;
    }

LABEL_8:
    v7 = (v4 == v6) & ~v7;
    return v7 & 1;
  }

  v9 = sub_1C7551DBC();
  if (!(v5 & 1 | ((v9 & 1) == 0)))
  {
    goto LABEL_8;
  }

  v7 &= v9;
  return v7 & 1;
}

uint64_t GenericLocationExtendedToken.init(name:source:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  *(a5 + 25) = 0;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = v6;
  *(a5 + 32) = a4;
  return result;
}

uint64_t GenericLocationExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_575();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD00000000000003DLL);
  v3 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v3);
  v4 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v4);
  if (v1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v5 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v6 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  v7 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v7);
  if (v2)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  return v9;
}

uint64_t sub_1C6FFFCDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C6FFFE48(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFFED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFFCDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFFEF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FFFE40();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FFFF20(uint64_t a1)
{
  v2 = sub_1C702611C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFFF5C(uint64_t a1)
{
  v2 = sub_1C702611C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GenericLocationExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D38, &qword_1C7560690);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  v13 = *(v0 + 16);
  v5 = v3[3];
  v6 = v3;
  v8 = v7;
  OUTLINED_FUNCTION_70(v6, v5);
  v9 = sub_1C702611C();
  OUTLINED_FUNCTION_230(&type metadata for GenericLocationExtendedToken.CodingKeys, v10, v9);
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v1)
  {
    OUTLINED_FUNCTION_85_1(v13);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_286();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v11 = OUTLINED_FUNCTION_380();
  v12(v11, v8);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t GenericLocationExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_57_0();
  v1 = MEMORY[0x1CCA5CD70](v0);
  OUTLINED_FUNCTION_190(v1, v2, v3);

  return sub_1C7551FAC();
}

void GenericLocationExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_247();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D48, &qword_1C7560698);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C702611C();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_488();
    v4 = sub_1C7551BBC();
    v6 = v5;
    OUTLINED_FUNCTION_188_0();
    sub_1C7025E40();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_488();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_286();
    sub_1C7025EE8();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_488();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_488();
    sub_1C7551BAC();
    v7 = OUTLINED_FUNCTION_401();
    v8(v7);
    *v2 = v4;
    *(v2 + 8) = v6;
    *(v2 + 16) = v9;
    *(v2 + 24) = v10;
    *(v2 + 25) = v9;
    *(v2 + 32) = v9;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7000498()
{
  OUTLINED_FUNCTION_279_0();
  v0 = sub_1C7551F3C();
  OUTLINED_FUNCTION_278(v0, v1, v2, v3, v4, v5, v6, v7, v17);
  v8 = GenericLocationExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_473(v8, v9, v10, v11, v12, v13, v14, v15, v18);

  return sub_1C7551FAC();
}

uint64_t TimeType.description.getter()
{
  result = 7954788;
  switch(*v0)
  {
    case 1:
      result = 0x61655968746E6F6DLL;
      break;
    case 2:
      result = 1918985593;
      break;
    case 3:
      result = 0x596568547265766FLL;
      break;
    case 4:
      result = 0x6E6F73616573;
      break;
    case 5:
      result = 0x796164696C6F68;
      break;
    case 6:
      result = 0x6D72657465646E75;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::TimeType_optional __swiftcall TimeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C7000654@<X0>(uint64_t *a1@<X8>)
{
  result = TimeType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TimeExtendedToken.startDateComponents.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = *(type metadata accessor for TimeExtendedToken(v2) + 36);
  sub_1C754DABC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t TimeExtendedToken.endDateComponents.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = v1 + *(type metadata accessor for TimeExtendedToken(v2) + 40);

  return sub_1C7026190(v3, v0);
}

uint64_t TimeExtendedToken.assetScopingStatus.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  result = type metadata accessor for TimeExtendedToken(v2);
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t TimeExtendedToken.assetScopingStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TimeExtendedToken(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t TimeExtendedToken.assetScopingStatus.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for TimeExtendedToken(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t TimeExtendedToken.assetUUIDs.getter()
{
  type metadata accessor for TimeExtendedToken(0);

  return sub_1C75504FC();
}

uint64_t TimeExtendedToken.assetUUIDs.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for TimeExtendedToken(v2) + 48);

  *(v1 + v3) = v0;
  return result;
}

uint64_t TimeExtendedToken.assetUUIDs.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for TimeExtendedToken(v0);
  return OUTLINED_FUNCTION_525();
}

void static TimeExtendedToken.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_0();
  v32 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_61_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50, &qword_1C75606A8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = *v25 == *v23 && *(v25 + 8) == *(v23 + 8);
  if (!v38 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v39 = *(v23 + 56);
  if (*(v25 + 56))
  {
    if (!*(v23 + 56))
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v25 + 48) != *(v23 + 48))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_23;
    }
  }

  if (sub_1C6F9F3D0(*(v25 + 57), *(v23 + 57)))
  {
    v40 = type metadata accessor for TimeExtendedToken(0);
    if (MEMORY[0x1CCA59F10](v25 + *(v40 + 36), v23 + *(v40 + 36)))
    {
      v41 = *(v40 + 40);
      v42 = *(v34 + 48);
      sub_1C7026190(v25 + v41, v37);
      sub_1C7026190(v23 + v41, &v37[v42]);
      OUTLINED_FUNCTION_601(v37);
      if (!v38)
      {
        v43 = OUTLINED_FUNCTION_64();
        sub_1C7026190(v43, v44);
        OUTLINED_FUNCTION_601(&v37[v42]);
        if (!v45)
        {
          (*(v28 + 32))(v32, &v37[v42], v26);
          OUTLINED_FUNCTION_68_4();
          sub_1C70259B4(v48, v49, MEMORY[0x1E6968290]);
          OUTLINED_FUNCTION_295();
          sub_1C755063C();
          v50 = *(v28 + 8);
          v51 = OUTLINED_FUNCTION_90();
          v50(v51);
          v52 = OUTLINED_FUNCTION_294();
          v50(v52);
          sub_1C6FD7FC8(v37, &qword_1EC218C50, &qword_1C75606A0);
          goto LABEL_23;
        }

        v46 = OUTLINED_FUNCTION_294();
        v47(v46);
LABEL_22:
        sub_1C6FD7FC8(v37, &qword_1EC215D50, &qword_1C75606A8);
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_601(&v37[v42]);
      if (!v38)
      {
        goto LABEL_22;
      }

      sub_1C6FD7FC8(v37, &qword_1EC218C50, &qword_1C75606A0);
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_25_0();
}

void TimeExtendedToken.init(name:source:type:startDateComponents:endDateComponents:month:year:assetUUIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  OUTLINED_FUNCTION_14_9();
  v51 = v29;
  v50 = v30;
  v49 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = *v40;
  v42 = *(v40 + 8);
  v44 = *v43;
  v45 = type metadata accessor for TimeExtendedToken(0);
  *(v39 + v45[11]) = 0;
  v46 = v45[12];
  *v39 = v37;
  *(v39 + 8) = v35;
  *(v39 + 48) = v41;
  *(v39 + 56) = v42;
  *(v39 + 57) = v44;
  v47 = v45[9];
  sub_1C754DABC();
  OUTLINED_FUNCTION_12();
  (*(v48 + 32))(v39 + v47, v33);
  sub_1C7026200(v49, v39 + v45[10]);
  *(v39 + 16) = v50;
  *(v39 + 24) = v51 & 1;
  *(v39 + 32) = a27;
  *(v39 + 40) = a28 & 1;
  *(v39 + v46) = a29;
  OUTLINED_FUNCTION_13_5();
}

uint64_t TimeExtendedToken.description.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](*v0, *(v0 + 8));
  v2 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v2);
  if (*(v0 + 56))
  {
    v3 = 0xEA00000000006E6FLL;
    v4 = OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v5 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v6 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_189();
    v4 = v14;
    v3 = v15;
  }

  MEMORY[0x1CCA5CD70](v4, v3);

  MEMORY[0x1CCA5CD70](0x7974202020200A2CLL, 0xEC000000203A6570);
  v7 = 0xE300000000000000;
  v8 = 7954788;
  switch(*(v1 + 57))
  {
    case 1:
      v7 = 0xE900000000000072;
      v8 = 0x61655968746E6F6DLL;
      break;
    case 2:
      v7 = 0xE400000000000000;
      v8 = 1918985593;
      break;
    case 3:
      v7 = 0xEC00000073726165;
      v8 = 0x596568547265766FLL;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v8 = 0x6E6F73616573;
      break;
    case 5:
      v7 = 0xE700000000000000;
      v8 = 0x796164696C6F68;
      break;
    case 6:
      v7 = 0xEC00000064656E69;
      v8 = 0x6D72657465646E75;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v8, v7);

  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  v9 = type metadata accessor for TimeExtendedToken(0);
  v10 = MEMORY[0x1CCA59EF0]();
  MEMORY[0x1CCA5CD70](v10);

  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000019);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v11 = sub_1C755148C();
  MEMORY[0x1CCA5CD70](v11);

  v12 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v12);
  if (*(v1 + *(v9 + 48)))
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  return v16;
}

uint64_t sub_1C7001034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1918985593 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001C7599D40 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C7599D60 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C7551DBC();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C7001300(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x68746E6F6DLL;
      break;
    case 2:
      result = 1918985593;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70013F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7001034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C700141C(uint64_t a1)
{
  v2 = sub_1C7026270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7001458(uint64_t a1)
{
  v2 = sub_1C7026270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TimeExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D60, &qword_1C75606B0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C7026270();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v0)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551CAC();
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_97();
    sub_1C7551CAC();
    OUTLINED_FUNCTION_184();
    sub_1C7025D44();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    sub_1C70262C4();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    type metadata accessor for TimeExtendedToken(0);
    sub_1C754DABC();
    OUTLINED_FUNCTION_68_4();
    sub_1C70259B4(v4, v5, MEMORY[0x1E6968280]);
    OUTLINED_FUNCTION_365();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_365();
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v6 = OUTLINED_FUNCTION_295();
  v7(v6);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

void TimeExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_391();
  v44 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v41 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D70, &qword_1C75606B8);
  OUTLINED_FUNCTION_3_0();
  v42 = v11;
  v43 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_251();
  type metadata accessor for TimeExtendedToken(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v45 = v15;
  v16 = v15[11];
  v19 = v18 - v17;
  *(v18 - v17 + v16) = 0;
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C7026270();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    *v19 = sub_1C7551BBC();
    *(v19 + 8) = v20;
    *(v19 + 16) = OUTLINED_FUNCTION_590(1);
    *(v19 + 24) = v21 & 1;
    *(v19 + 32) = OUTLINED_FUNCTION_590(2);
    *(v19 + 40) = v22 & 1;
    OUTLINED_FUNCTION_184();
    sub_1C7025E40();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_466(v23, v24, v25, v26, v27);
    *(v19 + 48) = v46;
    *(v19 + 56) = v47;
    OUTLINED_FUNCTION_183();
    sub_1C7026318();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_466(v28, v29, v30, v31, v32);
    *(v19 + 57) = v46;
    LOBYTE(v46) = 5;
    OUTLINED_FUNCTION_68_4();
    sub_1C70259B4(v33, v34, MEMORY[0x1E6968298]);
    OUTLINED_FUNCTION_425();
    sub_1C7551C1C();
    (*(v41 + 32))(v19 + v45[9], v10, v44);
    OUTLINED_FUNCTION_395();
    OUTLINED_FUNCTION_425();
    sub_1C7551BAC();
    sub_1C7026200(v0, v19 + v45[10]);
    sub_1C7025EE8();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_466(v35, v36, v37, v38, v39);
    *(v19 + v16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_138_0();
    sub_1C7551BAC();
    v40 = v45[12];
    (*(v43 + 8))(v2, v42);
    *(v19 + v40) = v46;
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_1C70265F0();
  }

  OUTLINED_FUNCTION_125();
}

uint64_t PartOfDayExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t PartOfDayExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_358();
  return v1;
}

uint64_t static PartOfDayExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v8 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((v5 & 1) == 0)
  {
    if (v4 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_8;
    }

LABEL_13:
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_90();
    sub_1C7003D44();
    return v9 & 1;
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = 0;
  return v9 & 1;
}

void sub_1C7001EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Asset(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_392();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16) && v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    do
    {
      sub_1C702659C();
      OUTLINED_FUNCTION_295();
      sub_1C702659C();
      if (*v11 == *v7 && v11[1] == v7[1])
      {
        sub_1C70265F0();
        sub_1C70265F0();
      }

      else
      {
        v18 = sub_1C7551DBC();
        sub_1C70265F0();
        sub_1C70265F0();
        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      v15 += v16;
      v14 += v16;
      --v12;
    }

    while (v12);
  }

  OUTLINED_FUNCTION_135_0();
}

uint64_t sub_1C70020D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C7002160()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = v1 + 32;
    while (v3 != v2)
    {
      v6 = (v4 + 40 * v3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[4];
      v12 = (v5 + 40 * v3);
      v13 = v12[2];
      v14 = v12[3];
      v15 = v12[4];
      v16 = v7 == *v12 && v8 == v12[1];
      if (!v16 && (sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_30;
      }

      if (v9 != v13 || v10 != v14)
      {
        OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_179();
        if ((sub_1C7551DBC() & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v18 = *(v11 + 16);
      if (v18 != *(v15 + 16))
      {
        goto LABEL_30;
      }

      if (v18)
      {
        v19 = v11 == v15;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = (v11 + 40);
        v21 = (v15 + 40);
        while (v18)
        {
          v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
          if (!v22 && (sub_1C7551DBC() & 1) == 0)
          {
            goto LABEL_30;
          }

          v20 += 2;
          v21 += 2;
          if (!--v18)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }

LABEL_29:
      if (++v3 == v2)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C7002298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 72);
    for (i = (a1 + 72); ; i += 9)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v3 += 9;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C7002324(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v11)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == v10)
        {
          v13 = v11;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          return 0;
        }
      }

      v14 = v4 == v8 && v5 == v9;
      if (!v14 && (sub_1C7551DBC() & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C7002438(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 40)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v8)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == v7)
        {
          v10 = v8;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C70024FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C754DABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50, &qword_1C75606A8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v42 - v10;
  v49 = type metadata accessor for TimeExtendedToken(0);
  MEMORY[0x1EEE9AC00](v49);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v43 = (v5 + 32);
    v44 = (v5 + 8);
    v47 = *(v15 + 72);
    v22 = v49;
    v45 = v9;
    while (1)
    {
      v51 = v20;
      sub_1C702659C();
      sub_1C702659C();
      v23 = *v17 == *v13 && *(v17 + 1) == *(v13 + 1);
      if (!v23 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v24 = v13[56];
      if (v17[56])
      {
        if (!v13[56])
        {
          break;
        }
      }

      else
      {
        if (*(v17 + 6) != *(v13 + 6))
        {
          v24 = 1;
        }

        if (v24)
        {
          break;
        }
      }

      v25 = 0xE300000000000000;
      v26 = 7954788;
      switch(v17[57])
      {
        case 1:
          v26 = 0x61655968746E6F6DLL;
          v25 = 0xE900000000000072;
          break;
        case 2:
          v25 = 0xE400000000000000;
          v26 = 1918985593;
          break;
        case 3:
          v26 = 0x596568547265766FLL;
          v27 = 1936875877;
          goto LABEL_23;
        case 4:
          v25 = 0xE600000000000000;
          v26 = 0x6E6F73616573;
          break;
        case 5:
          v25 = 0xE700000000000000;
          v26 = 0x796164696C6F68;
          break;
        case 6:
          v26 = 0x6D72657465646E75;
          v27 = 1684369001;
LABEL_23:
          v25 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v28 = 0xE300000000000000;
      v29 = 7954788;
      switch(v13[57])
      {
        case 1:
          v29 = 0x61655968746E6F6DLL;
          v28 = 0xE900000000000072;
          break;
        case 2:
          v28 = 0xE400000000000000;
          v29 = 1918985593;
          break;
        case 3:
          v29 = 0x596568547265766FLL;
          v30 = 1936875877;
          goto LABEL_31;
        case 4:
          v28 = 0xE600000000000000;
          v29 = 0x6E6F73616573;
          break;
        case 5:
          v28 = 0xE700000000000000;
          v29 = 0x796164696C6F68;
          break;
        case 6:
          v29 = 0x6D72657465646E75;
          v30 = 1684369001;
LABEL_31:
          v28 = v30 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      if (v26 == v29 && v25 == v28)
      {
      }

      else
      {
        v32 = sub_1C7551DBC();

        if ((v32 & 1) == 0)
        {
          break;
        }
      }

      if ((MEMORY[0x1CCA59F10](&v17[*(v22 + 36)], &v13[*(v22 + 36)]) & 1) == 0)
      {
        break;
      }

      v33 = *(v22 + 40);
      v34 = *(v50 + 48);
      sub_1C7026190(&v17[v33], v11);
      sub_1C7026190(&v13[v33], &v11[v34]);
      if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v11[v34], 1, v4) != 1)
        {
          goto LABEL_48;
        }

        sub_1C6FD7FC8(v11, &qword_1EC218C50, &qword_1C75606A0);
        sub_1C70265F0();
        sub_1C70265F0();
      }

      else
      {
        v35 = v45;
        sub_1C7026190(v11, v45);
        if (__swift_getEnumTagSinglePayload(&v11[v34], 1, v4) == 1)
        {
          (*v44)(v35, v4);
LABEL_48:
          sub_1C6FD7FC8(v11, &qword_1EC215D50, &qword_1C75606A8);
          break;
        }

        v36 = v48;
        (*v43)(v48, &v11[v34], v4);
        sub_1C70259B4(&qword_1EC215D58, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
        v46 = sub_1C755063C();
        v37 = v11;
        v38 = v35;
        v39 = *v44;
        (*v44)(v36, v4);
        v40 = v38;
        v11 = v37;
        v22 = v49;
        v39(v40, v4);
        sub_1C6FD7FC8(v11, &qword_1EC218C50, &qword_1C75606A0);
        sub_1C70265F0();
        sub_1C70265F0();
        if ((v46 & 1) == 0)
        {
          return 0;
        }
      }

      v21 += v47;
      v20 = v51 + v47;
      if (!--v18)
      {
        return 1;
      }
    }

    sub_1C70265F0();
    sub_1C70265F0();
  }

  return 0;
}

void sub_1C7002C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C754F65C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16) && v11 && a1 != a2)
  {
    v12 = 0;
    v46 = a2 + 32;
    v47 = a1 + 32;
    v50 = v5 + 16;
    v13 = (v5 + 8);
    v42 = v11;
    while (v12 != v11)
    {
      v14 = (v47 + 56 * v12);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = *(v14 + 24);
      v19 = v14[4];
      v48 = v14[5];
      v20 = (v46 + 56 * v12);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = *(v20 + 24);
      v26 = v20[4];
      v25 = v20[5];
      v53 = v26;
      v54 = v19;
      v49 = v25;
      if (v15 != v21 || v16 != v22)
      {
        v28 = v16;
        v29 = v22;
        v30 = v12;
        v52 = v17;
        LODWORD(v51) = v24;
        v45 = v23;
        v31 = sub_1C7551DBC();
        v23 = v45;
        v24 = v51;
        v17 = v52;
        v16 = v28;
        v12 = v30;
        v22 = v29;
        if ((v31 & 1) == 0)
        {
          return;
        }
      }

      if (v18)
      {
        if (!v24)
        {
          return;
        }
      }

      else
      {
        if (v17 == v23)
        {
          v32 = v24;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          return;
        }
      }

      v33 = *(v54 + 16);
      if (v33 != *(v53 + 16))
      {
        return;
      }

      if (v33 && v54 != v53)
      {
        v43 = v12;
        v34 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v51 = v53 + v34;
        v52 = v54 + v34;
        v35 = v16;
        sub_1C75504FC();
        v44 = v35;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v45 = v22;
        sub_1C75504FC();
        sub_1C75504FC();
        v36 = 0;
        while (v36 < *(v54 + 16))
        {
          v37 = *(v5 + 72) * v36;
          v38 = *(v5 + 16);
          v38(v10, v52 + v37, v4);
          if (v36 >= *(v53 + 16))
          {
            goto LABEL_33;
          }

          v38(v7, v51 + v37, v4);
          sub_1C70259B4(&qword_1EC215FE8, MEMORY[0x1E69C19F0], MEMORY[0x1E69C1A08]);
          v39 = sub_1C755063C();
          v40 = *v13;
          (*v13)(v7, v4);
          v40(v10, v4);
          if ((v39 & 1) == 0)
          {

            return;
          }

          if (v33 == ++v36)
          {

            v11 = v42;
            v12 = v43;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

LABEL_27:
      if (++v12 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C7002FDC(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for PartOfWeekExtendedToken(0);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      return 1;
    }

    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = *(v7 + 72);
    while (1)
    {
      sub_1C702659C();
      sub_1C702659C();
      v15 = *v9 == *v5 && *(v9 + 1) == *(v5 + 1);
      if (!v15 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v16 = v5[24];
      if (v9[24])
      {
        if (!v5[24])
        {
          break;
        }
      }

      else
      {
        if (*(v9 + 2) != *(v5 + 2))
        {
          v16 = 1;
        }

        if (v16)
        {
          break;
        }
      }

      sub_1C754F09C();
      sub_1C70259B4(&qword_1EC2147B8, MEMORY[0x1E69C1750], MEMORY[0x1E69C1768]);
      sub_1C7550A5C();
      sub_1C7550A5C();
      if (v24 == v22 && v25 == v23)
      {

        sub_1C70265F0();
        sub_1C70265F0();
      }

      else
      {
        v18 = sub_1C7551DBC();

        sub_1C70265F0();
        sub_1C70265F0();
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v13 += v14;
      v12 += v14;
      if (!--v10)
      {
        return 1;
      }
    }

    sub_1C70265F0();
    sub_1C70265F0();
  }

  return 0;
}

uint64_t sub_1C70032E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 64)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        if (!v9)
        {
          return 0;
        }
      }

      else
      {
        if (v4 == v8)
        {
          v13 = v9;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          return 0;
        }
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1C7551DBC() & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C70033FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = 0xEB00000000797261;
    while (1)
    {
      v5 = v4;
      v6 = *(a1 + v3 + 48);
      v7 = *(a1 + v3 + 56);
      v8 = *(a1 + v3 + 57);
      v9 = *(a2 + v3 + 48);
      v10 = *(a2 + v3 + 56);
      v11 = *(a2 + v3 + 57);
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32) || *(a1 + v3 + 40) != *(a2 + v3 + 40))
      {
        v13 = *(a2 + v3 + 57);
        v14 = sub_1C7551DBC();
        v11 = v13;
        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      if (v7)
      {
        if (!v10)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == v9)
        {
          v15 = v10;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          return 0;
        }
      }

      v4 = v5;
      v16 = v5;
      v17 = 0x73726576696E6E61;
      v18 = 0x73726576696E6E61;
      switch(v8)
      {
        case 1:
          v16 = 0xE800000000000000;
          v18 = 0x7961646874726962;
          break;
        case 2:
          v16 = 0xE700000000000000;
          v18 = 0x676E6964646577;
          break;
        case 3:
          v16 = 0xE700000000000000;
          v18 = 0x747265636E6F63;
          break;
        case 4:
          v18 = 0x45796164696C6F68;
          v16 = 0xEC000000746E6576;
          break;
        case 5:
          v18 = 0x65764574726F7073;
          v16 = 0xEA0000000000746ELL;
          break;
        case 6:
          v16 = 0xE700000000000000;
          v18 = 0x64656D616E6E75;
          break;
        default:
          break;
      }

      v19 = v5;
      switch(v11)
      {
        case 1:
          v19 = 0xE800000000000000;
          v17 = 0x7961646874726962;
          break;
        case 2:
          v19 = 0xE700000000000000;
          v17 = 0x676E6964646577;
          break;
        case 3:
          v19 = 0xE700000000000000;
          v17 = 0x747265636E6F63;
          break;
        case 4:
          v17 = 0x45796164696C6F68;
          v19 = 0xEC000000746E6576;
          break;
        case 5:
          v17 = 0x65764574726F7073;
          v19 = 0xEA0000000000746ELL;
          break;
        case 6:
          v19 = 0xE700000000000000;
          v17 = 0x64656D616E6E75;
          break;
        default:
          break;
      }

      if (v18 == v17 && v16 == v19)
      {
        sub_1C75504FC();
        sub_1C75504FC();
      }

      else
      {
        v21 = sub_1C7551DBC();
        sub_1C75504FC();
        sub_1C75504FC();

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C700377C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_10_6();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C70037D4()
{
  OUTLINED_FUNCTION_14_9();
  v2 = *(v0 + 16);
  if (v2 != *(v1 + 16) || !v2 || v0 == v1)
  {
LABEL_42:
    OUTLINED_FUNCTION_13_5();
    return;
  }

  v3 = 0;
  v26 = v1 + 32;
  v27 = v0 + 32;
  while (v3 != v2)
  {
    v4 = (v27 + (v3 << 6));
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v10 = v4[4];
    v9 = v4[5];
    v12 = v4[6];
    v11 = v4[7];
    v13 = (v26 + (v3 << 6));
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[4];
    v28 = v13[5];
    v29 = v9;
    v17 = v13[6];
    v30 = v13[7];
    v31 = v11;
    v18 = v5 == *v13 && v6 == v13[1];
    if (!v18 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_42;
    }

    if (v7 != v14 || v8 != v15)
    {
      OUTLINED_FUNCTION_15_1();
      if ((sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v20 = *(v10 + 16);
    if (v20 != *(v16 + 16))
    {
      goto LABEL_42;
    }

    if (v20)
    {
      v21 = v10 == v16;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v10 + 40);
      v23 = (v16 + 40);
      while (v20)
      {
        v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
        if (!v24 && (sub_1C7551DBC() & 1) == 0)
        {
          goto LABEL_42;
        }

        v22 += 2;
        v23 += 2;
        if (!--v20)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      break;
    }

LABEL_29:
    if (v12)
    {
      if (!v17)
      {
        goto LABEL_42;
      }

      if (v29 == v28 && v12 == v17)
      {
        if (v31 != v30)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if ((sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v17)
    {
      goto LABEL_42;
    }

    if (v31 != v30)
    {
      goto LABEL_42;
    }

LABEL_41:
    if (++v3 == v2)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
}

uint64_t sub_1C7003984(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_10_6();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C70039DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          break;
        }

        v11 = *(v3 - 3);
        v12 = *(v4 - 3);
        v13 = v11 == v12 && v5 == v8;
        if (!v13 && (OUTLINED_FUNCTION_387(v11, v5, v12) & 1) == 0)
        {
          break;
        }
      }

      else
      {

        if (v8)
        {
          break;
        }
      }

      if (v7)
      {
        if (!v10)
        {
          break;
        }
      }

      else
      {
        if (v6 == v9)
        {
          v14 = v10;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          break;
        }
      }

      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C7003B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28(0) - 8;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_392();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &a9 - v35;
  v37 = *(v27 + 16);
  if (v37 == *(v25 + 16) && v37 && v27 != v25)
  {
    v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v39 = v27 + v38;
    v40 = v25 + v38;
    v41 = *(v34 + 72);
    do
    {
      OUTLINED_FUNCTION_296();
      sub_1C702659C();
      sub_1C702659C();
      v42 = v23(v36, v32);
      sub_1C70265F0();
      OUTLINED_FUNCTION_294();
      sub_1C70265F0();
      if ((v42 & 1) == 0)
      {
        break;
      }

      v40 += v41;
      v39 += v41;
      --v37;
    }

    while (v37);
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C7003D44()
{
  OUTLINED_FUNCTION_33();
  v35 = v0;
  v36 = v1;
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = *(v6 + 16);
  if (v18 == *(v4 + 16) && v18 && v6 != v4)
  {
    OUTLINED_FUNCTION_191();
    v20 = v6 + v19;
    v21 = v4 + v19;
    v23 = *(v10 + 16);
    v22 = v10 + 16;
    v24 = (v22 - 8);
    v32 = *(v22 + 56);
    v33 = v23;
    while (1)
    {
      v25 = OUTLINED_FUNCTION_55();
      v26 = v33;
      (v33)(v25);
      if (!v18)
      {
        break;
      }

      v27 = v22;
      v26(v14, v21, v8);
      sub_1C70259B4(v34, v35, v36);
      v28 = sub_1C755063C();
      v29 = *v24;
      (*v24)(v14, v8);
      v29(v17, v8);
      if (v28)
      {
        v21 += v32;
        v20 += v32;
        v30 = v18-- == 1;
        v22 = v27;
        if (!v30)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C7003F10()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = *(v3 + 16);
  if (v13 == *(v1 + 16) && v13 && v3 != v1)
  {
    v14 = 0;
    v15 = v3 + 32;
    v16 = v1 + 32;
    v36 = v3 + 32;
    v37 = v13;
    v35 = v1 + 32;
    do
    {
      memcpy(v42, (v15 + 120 * v14), sizeof(v42));
      memcpy(v43, (v16 + 120 * v14), 0x78uLL);
      if (v42[2] != v43[2] || v42[3] != v43[3])
      {
        OUTLINED_FUNCTION_15_1();
        if ((sub_1C7551DBC() & 1) == 0)
        {
          break;
        }
      }

      if (v42[8])
      {
        if (!v43[8])
        {
          break;
        }

        v18 = *(v42[8] + 16);
        if (v18 != *(v43[8] + 16))
        {
          break;
        }

        if (v18)
        {
          v19 = v42[8] == v43[8];
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v20 = (v42[8] + 40);
          v21 = (v43[8] + 40);
          while (v18)
          {
            v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
            if (!v22 && (sub_1C7551DBC() & 1) == 0)
            {
              goto LABEL_47;
            }

            v20 += 2;
            v21 += 2;
            if (!--v18)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_50;
        }
      }

      else if (v43[8])
      {
        break;
      }

LABEL_27:
      v23 = v42[10];
      v24 = v43[10];
      v25 = *(v42[10] + 16);
      if (v25 != *(v43[10] + 16))
      {
        break;
      }

      v38 = v14;
      if (v25 && v42[10] != v43[10])
      {
        OUTLINED_FUNCTION_191();
        v39 = v23 + v26;
        sub_1C6FCA6E4(v42, v41);
        sub_1C6FCA6E4(v43, v41);
        v27 = 0;
        while (v27 < *(v23 + 16))
        {
          sub_1C702659C();
          if (v27 >= *(v24 + 16))
          {
            goto LABEL_49;
          }

          sub_1C702659C();
          v28 = static QueryTokenSuggestion.== infix(_:_:)(v12, v9);
          sub_1C70265F0();
          OUTLINED_FUNCTION_216();
          sub_1C70265F0();
          if ((v28 & 1) == 0)
          {
            sub_1C6FDD548(v43);
            sub_1C6FDD548(v42);
            goto LABEL_47;
          }

          if (v25 == ++v27)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      sub_1C6FCA6E4(v42, v41);
      sub_1C6FCA6E4(v43, v41);
LABEL_37:
      v30 = v42[5];
      v29 = v42[6];
      v31 = v42[7];
      v33 = v43[5];
      v32 = v43[6];
      v34 = v43[7];
      sub_1C6FDD548(v43);
      sub_1C6FDD548(v42);
      if (v31)
      {
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      else if ((v34 & 1) != 0 || v30 != v33 || v29 != v32)
      {
        break;
      }

      v14 = v38 + 1;
      v16 = v35;
      v15 = v36;
    }

    while (v38 + 1 != v37);
  }

LABEL_47:
  OUTLINED_FUNCTION_25_0();
}

uint64_t PartOfDayExtendedToken.init(name:source:partsOfDay:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  *(a6 + 48) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = v7;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

void PartOfDayExtendedToken.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_597();
  OUTLINED_FUNCTION_575();
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  v15 = *(v12 + 40);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  v16 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v16);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000012);
  v17 = sub_1C754F65C();
  v18 = MEMORY[0x1CCA5D090](v14, v17);
  MEMORY[0x1CCA5CD70](v18);

  v19 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v19);
  if (v13)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v20 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v21 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v21);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  v22 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v22);
  if (v15)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_596();
}

uint64_t sub_1C70043EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44664F7374726170 && a2 == 0xEA00000000007961;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C700459C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x44664F7374726170;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7004644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70043EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C700466C(uint64_t a1)
{
  v2 = sub_1C702636C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70046A8(uint64_t a1)
{
  v2 = sub_1C702636C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PartOfDayExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D80, &unk_1C75606C0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_263();
  v13 = v4;
  v5 = v2[3];
  v6 = v2;
  v8 = v7;
  OUTLINED_FUNCTION_70(v6, v5);
  v9 = sub_1C702636C();
  OUTLINED_FUNCTION_230(&type metadata for PartOfDayExtendedToken.CodingKeys, v10, v9);
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v0)
  {
    OUTLINED_FUNCTION_85_1(v13);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_286();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D90, &unk_1C7563BE0);
    sub_1C70263C0();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_183();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  v11 = OUTLINED_FUNCTION_380();
  v12(v11, v8);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t PartOfDayExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190(v0, v1, v2);

  return sub_1C7551FAC();
}

void PartOfDayExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DA8, &qword_1C75606D0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_158();
  v7 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_70(v7, v8);
  sub_1C702636C();
  OUTLINED_FUNCTION_248();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_139();
    v9 = sub_1C7551BBC();
    v13 = v10;
    OUTLINED_FUNCTION_188_0();
    sub_1C7025E40();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D90, &unk_1C7563BE0);
    OUTLINED_FUNCTION_286();
    sub_1C7026474();
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_183();
    sub_1C7025EE8();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    v11 = OUTLINED_FUNCTION_150();
    v12(v11, v5);
    *v4 = v9;
    *(v4 + 8) = v13;
    *(v4 + 16) = v14;
    *(v4 + 24) = v15;
    *(v4 + 32) = v14;
    *(v4 + 40) = v14;
    *(v4 + 48) = v14;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7004CC8()
{
  OUTLINED_FUNCTION_279_0();
  v0 = sub_1C7551F3C();
  OUTLINED_FUNCTION_278(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  PartOfDayExtendedToken.uniquingKey.getter();
  sub_1C75505AC();

  return sub_1C7551FAC();
}

uint64_t PartOfWeekExtendedToken.partOfWeek.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = *(type metadata accessor for PartOfWeekExtendedToken(v2) + 24);
  sub_1C754F09C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t PartOfWeekExtendedToken.assetUUIDs.getter()
{
  type metadata accessor for PartOfWeekExtendedToken(0);

  return sub_1C75504FC();
}

uint64_t PartOfWeekExtendedToken.assetUUIDs.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for PartOfWeekExtendedToken(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t PartOfWeekExtendedToken.assetUUIDs.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for PartOfWeekExtendedToken(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t PartOfWeekExtendedToken.assetScopingStatus.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  result = type metadata accessor for PartOfWeekExtendedToken(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t PartOfWeekExtendedToken.assetScopingStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PartOfWeekExtendedToken(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t PartOfWeekExtendedToken.assetScopingStatus.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for PartOfWeekExtendedToken(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t static PartOfWeekExtendedToken.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v7 = *(type metadata accessor for PartOfWeekExtendedToken(0) + 24);

  return sub_1C6FA1028(a1 + v7, a2 + v7);
}

void PartOfWeekExtendedToken.init(name:source:partOfWeek:assetUUIDs:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = type metadata accessor for PartOfWeekExtendedToken(0);
  v14 = v13[7];
  *(a6 + v13[8]) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  v15 = v13[6];
  sub_1C754F09C();
  OUTLINED_FUNCTION_12();
  (*(v16 + 32))(a6 + v15, a4);
  *(a6 + v14) = a5;
  OUTLINED_FUNCTION_135_0();
}

uint64_t PartOfWeekExtendedToken.description.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](*v0, *(v0 + 8));
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000012);
  v2 = type metadata accessor for PartOfWeekExtendedToken(0);
  sub_1C754F09C();
  sub_1C75519EC();
  v3 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v3);
  if (*(v0 + 24))
  {
    v4 = 0xEA00000000006E6FLL;
    v5 = OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v6 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_61_4();

    v7 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v7);

    OUTLINED_FUNCTION_189();
    v5 = v10;
    v4 = v11;
  }

  MEMORY[0x1CCA5CD70](v5, v4);

  v8 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v8);
  if (*(v1 + *(v2 + 28)))
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  return v12;
}

uint64_t sub_1C7005240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6557664F74726170 && a2 == 0xEA00000000006B65;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C70053F0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x6557664F74726170;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7005498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7005240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70054C0(uint64_t a1)
{
  v2 = sub_1C7026548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70054FC(uint64_t a1)
{
  v2 = sub_1C7026548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PartOfWeekExtendedToken.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DC0, &qword_1C75606D8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C7026548();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v1)
  {
    sub_1C7025D44();
    OUTLINED_FUNCTION_386();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    type metadata accessor for PartOfWeekExtendedToken(0);
    sub_1C754F09C();
    OUTLINED_FUNCTION_213();
    sub_1C70259B4(v4, v5, MEMORY[0x1E69C1758]);
    OUTLINED_FUNCTION_46_6();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_386();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_534();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_386();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  v6 = OUTLINED_FUNCTION_295();
  return v7(v6);
}

uint64_t sub_1C700579C()
{
  OUTLINED_FUNCTION_420();
  v1 = MEMORY[0x1CCA5CD70](*v0, v0[1]);
  OUTLINED_FUNCTION_190(v1, v2, v3);

  return sub_1C7551FAC();
}

void PartOfWeekExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  v24 = v5;
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DD8, &qword_1C75606E0);
  OUTLINED_FUNCTION_3_0();
  v23 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_391();
  v11 = type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v17 = *(v16 + 32);
  *(v14 - v13 + v17) = 0;
  v18 = OUTLINED_FUNCTION_505();
  OUTLINED_FUNCTION_70(v18, v19);
  sub_1C7026548();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    *v15 = sub_1C7551BBC();
    *(v15 + 8) = v20;
    OUTLINED_FUNCTION_188_0();
    sub_1C7025E40();
    OUTLINED_FUNCTION_138_0();
    sub_1C7551C1C();
    *(v15 + 16) = v27;
    *(v15 + 24) = v28;
    LOBYTE(v27) = 2;
    OUTLINED_FUNCTION_213();
    sub_1C70259B4(v21, v22, MEMORY[0x1E69C1770]);
    sub_1C7551C1C();
    (*(v24 + 32))(v15 + *(v11 + 24), v8, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_50_5();
    sub_1C7551BAC();
    *(v15 + *(v11 + 28)) = v27;
    OUTLINED_FUNCTION_183();
    sub_1C7025EE8();
    OUTLINED_FUNCTION_138_0();
    sub_1C7551C1C();
    (*(v23 + 8))(v0, v26);
    *(v15 + v17) = 2;
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_294();
    sub_1C70265F0();
  }

  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7005C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1C7551F3C();
  v6 = a4(v5);
  OUTLINED_FUNCTION_109_4(v6, v7, v8);

  return sub_1C7551FAC();
}

uint64_t TripExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t TripExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_358();
  return v1;
}

void static TripExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v12 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v5)
  {
    if (!v9)
    {
LABEL_20:
      OUTLINED_FUNCTION_135_0();
      return;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_20;
    }
  }

  if (v6 == v10 && v7 == v11)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_135_0();

  sub_1C7551DBC();
}

uint64_t TripExtendedToken.init(name:source:highlightUUID:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  *(a7 + 48) = 0;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = v8;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t TripExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_575();
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000032);
  v3 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v3);
  v4 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v4);
  if (v1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v5 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v6 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  v7 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v7);
  if (v2)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  return v9;
}

uint64_t sub_1C7005FF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6867696C68676968 && a2 == 0xED00004449555574;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C70061A8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x6867696C68676968;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7006254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7005FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C700627C(uint64_t a1)
{
  v2 = sub_1C7026644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70062B8(uint64_t a1)
{
  v2 = sub_1C7026644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TripExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DE8, &qword_1C75606E8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_263();
  v11 = v3;
  v4 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_70(v4, v5);
  sub_1C7026644();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_316();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_467(v6, v7, v8);
  if (!v0)
  {
    OUTLINED_FUNCTION_85_1(v11);
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_184();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v9 = OUTLINED_FUNCTION_380();
  v10(v9, v1);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t TripExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190(v0, v1, v2);

  return sub_1C7551FAC();
}

void TripExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_247();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DF8, &qword_1C75606F0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_158();
  v5 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_70(v5, v6);
  sub_1C7026644();
  OUTLINED_FUNCTION_248();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    LOBYTE(v23) = 0;
    OUTLINED_FUNCTION_139();
    v7 = sub_1C7551BBC();
    v9 = v8;
    sub_1C7025E40();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    v17 = v23;
    v32 = v24;
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_139();
    v16 = sub_1C7551BBC();
    v18 = v10;
    sub_1C7025EE8();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v11 = OUTLINED_FUNCTION_150();
    v12(v11, v3);
    v15 = v31;
    *&v19 = v7;
    *(&v19 + 1) = v9;
    *&v20 = v17;
    BYTE8(v20) = v24;
    *&v21 = v16;
    *(&v21 + 1) = v18;
    LOBYTE(v22) = 2;
    *(&v22 + 1) = v31;
    v13 = v20;
    *v2 = v19;
    v2[1] = v13;
    v14 = v22;
    v2[2] = v21;
    v2[3] = v14;
    sub_1C7026698(&v19, &v23);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v23 = v7;
    v24 = v9;
    v25 = v17;
    v26 = v32;
    v27 = v16;
    v28 = v18;
    v29 = 2;
    v30 = v15;
    sub_1C70266D0(&v23);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C70068B0(uint64_t a1)
{
  sub_1C7551F3C();
  v1 = TripExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_109_4(v1, v2, v3);

  return sub_1C7551FAC();
}

PhotosIntelligence::ExtendedTokenEventType_optional __swiftcall ExtendedTokenEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExtendedTokenEventType.rawValue.getter()
{
  result = 0x73726576696E6E61;
  switch(*v0)
  {
    case 1:
      result = 0x7961646874726962;
      break;
    case 2:
      result = 0x676E6964646577;
      break;
    case 3:
      result = 0x747265636E6F63;
      break;
    case 4:
      result = 0x45796164696C6F68;
      break;
    case 5:
      result = 0x65764574726F7073;
      break;
    case 6:
      result = 0x64656D616E6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7006A5C@<X0>(uint64_t *a1@<X8>)
{
  result = ExtendedTokenEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EventExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t EventExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_358();
  return v1;
}

uint64_t EventExtendedToken.init(name:source:eventType:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *a4;
  *(a6 + 26) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = v7;
  *(a6 + 25) = v8;
  *(a6 + 32) = a5;
  return result;
}

uint64_t static EventExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 25);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 25);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v10 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  return sub_1C6FA10B8(v6, v9);
}

void EventExtendedToken.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_597();
  OUTLINED_FUNCTION_575();
  v23 = *(v22 + 24);
  v24 = *(v22 + 32);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000033);
  v25 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v25);
  v26 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v26);
  if (v23)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v27 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v28 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v28);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  MEMORY[0x1CCA5CD70](0x746E657665090A2CLL, 0xEE00203A65707954);
  sub_1C75519EC();
  v29 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v29);
  if (v24)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_596();
}

uint64_t sub_1C7006E64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C7007018(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x707954746E657665;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70070BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7006E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70070E4(uint64_t a1)
{
  v2 = sub_1C7026700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7007120(uint64_t a1)
{
  v2 = sub_1C7026700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E00, &qword_1C75606F8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_61_1();
  v10 = *(v0 + 16);
  v4 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_70(v4, v5);
  v6 = sub_1C7026700();
  OUTLINED_FUNCTION_230(&type metadata for EventExtendedToken.CodingKeys, v7, v6);
  OUTLINED_FUNCTION_297();
  sub_1C7551CCC();
  if (!v1)
  {
    OUTLINED_FUNCTION_85_1(v10);
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_286();
    sub_1C7026754();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_184();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v8 = OUTLINED_FUNCTION_380();
  v9(v8, v2);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t EventExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190(v0, v1, v2);

  return sub_1C7551FAC();
}

void EventExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_247();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E18, &qword_1C7560700);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C7026700();
  OUTLINED_FUNCTION_248();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_139();
    v4 = sub_1C7551BBC();
    v6 = v5;
    OUTLINED_FUNCTION_188_0();
    sub_1C7025E40();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_286();
    sub_1C70267A8();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_184();
    sub_1C7025EE8();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v7 = OUTLINED_FUNCTION_12_7();
    v8(v7);
    *v2 = v4;
    *(v2 + 8) = v6;
    *(v2 + 16) = v9;
    *(v2 + 24) = v10;
    *(v2 + 25) = v9;
    *(v2 + 26) = v9;
    *(v2 + 32) = v9;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7007690()
{
  OUTLINED_FUNCTION_279_0();
  v0 = sub_1C7551F3C();
  OUTLINED_FUNCTION_278(v0, v1, v2, v3, v4, v5, v6, v7, v17);
  v8 = EventExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_473(v8, v9, v10, v11, v12, v13, v14, v15, v18);

  return sub_1C7551FAC();
}

void __swiftcall ExtendedTokenCollection.init(personExtendedTokens:petExtendedTokens:locationExtendedTokens:genericLocationExtendedTokens:homeExtendedTokens:timeExtendedTokens:partOfDayExtendedTokens:partOfWeekExtendedTokens:tripExtendedTokens:eventExtendedTokens:)(PhotosIntelligence::ExtendedTokenCollection *__return_ptr retstr, Swift::OpaquePointer personExtendedTokens, Swift::OpaquePointer petExtendedTokens, Swift::OpaquePointer locationExtendedTokens, Swift::OpaquePointer genericLocationExtendedTokens, Swift::OpaquePointer homeExtendedTokens, Swift::OpaquePointer timeExtendedTokens, Swift::OpaquePointer partOfDayExtendedTokens, Swift::OpaquePointer partOfWeekExtendedTokens, Swift::OpaquePointer tripExtendedTokens, Swift::OpaquePointer eventExtendedTokens)
{
  retstr->personExtendedTokens = personExtendedTokens;
  retstr->petExtendedTokens = petExtendedTokens;
  retstr->locationExtendedTokens = locationExtendedTokens;
  retstr->genericLocationExtendedTokens = genericLocationExtendedTokens;
  retstr->homeExtendedTokens = homeExtendedTokens;
  retstr->timeExtendedTokens = timeExtendedTokens;
  retstr->partOfDayExtendedTokens = partOfDayExtendedTokens;
  retstr->partOfWeekExtendedTokens = partOfWeekExtendedTokens;
  retstr->tripExtendedTokens = tripExtendedTokens;
  retstr->eventExtendedTokens = eventExtendedTokens;
}

void ExtendedTokenCollection.description.getter()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for PartOfWeekExtendedToken(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v317 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = type metadata accessor for TimeExtendedToken(0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v308 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = *v0;
  v10 = v0[1];
  v309 = v0[2];
  OUTLINED_FUNCTION_319(v0[3]);
  v311 = v12;
  v312 = v13;
  OUTLINED_FUNCTION_586(v0[7]);
  v315 = v14;
  v316 = v15;
  *&v326 = 0;
  *(&v326 + 1) = 0xE000000000000000;
  sub_1C755180C();
  v331 = 0;
  v332 = 0xE000000000000000;
  v16 = MEMORY[0x1CCA5CD70](0xD000000000000040, 0x80000001C7599B90);
  v23 = *(v11 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v318 = v6;
  if (v23)
  {
    OUTLINED_FUNCTION_145_0(v16, v17, v18, v19, v20, v21, v22);
    v24 = v330;
    v11 += 32;
    do
    {
      OUTLINED_FUNCTION_578();
      memcpy(v25, v26, v27);
      OUTLINED_FUNCTION_578();
      memcpy(v28, v29, v30);
      v31 = sub_1C7025F3C(&v326, &v319);
      v32 = PersonExtendedToken.description.getter(v31);
      OUTLINED_FUNCTION_107_1(v32, v33);
      OUTLINED_FUNCTION_381();
      sub_1C7025F74(&v326);

      v34 = v319;
      v35 = v320;
      v330 = v24;
      v37 = *(v24 + 16);
      v36 = *(v24 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_15(v36);
        OUTLINED_FUNCTION_321();
        sub_1C6F7ED9C(v39, v40, v41, v42, v43, v44, v45);
        v24 = v330;
      }

      *(v24 + 16) = v37 + 1;
      v38 = v24 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v35;
      v11 += 72;
      --v23;
    }

    while (v23);
    OUTLINED_FUNCTION_309_0();
  }

  MEMORY[0x1CCA5D090](v24, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v46 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v46);

  OUTLINED_FUNCTION_125_1();
  v49 = MEMORY[0x1CCA5CD70](v47 + 1, v48 | 0x8000000000000000);
  v56 = *(v10 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    OUTLINED_FUNCTION_145_0(v49, v50, v51, v52, v53, v54, v55);
    v57 = v330;
    v11 = v10 + 32;
    do
    {
      OUTLINED_FUNCTION_577();
      memcpy(v58, v59, v60);
      OUTLINED_FUNCTION_577();
      memcpy(v61, v62, v63);
      sub_1C7025FF8(&v326, &v319);
      PetExtendedToken.description.getter();
      OUTLINED_FUNCTION_107_1(v64, v65);
      OUTLINED_FUNCTION_381();
      sub_1C7026030(&v326);

      v66 = v319;
      v67 = v320;
      v330 = v57;
      v69 = *(v57 + 16);
      v68 = *(v57 + 24);
      if (v69 >= v68 >> 1)
      {
        OUTLINED_FUNCTION_15(v68);
        OUTLINED_FUNCTION_321();
        sub_1C6F7ED9C(v71, v72, v73, v74, v75, v76, v77);
        v57 = v330;
      }

      *(v57 + 16) = v69 + 1;
      v70 = v57 + 16 * v69;
      *(v70 + 32) = v66;
      *(v70 + 40) = v67;
      v11 += 72;
      --v56;
    }

    while (v56);
    OUTLINED_FUNCTION_309_0();
  }

  MEMORY[0x1CCA5D090](v57, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v78 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v78);

  OUTLINED_FUNCTION_125_1();
  v81 = MEMORY[0x1CCA5CD70](v79 + 6, v80 | 0x8000000000000000);
  v88 = *(v309 + 16);
  v89 = MEMORY[0x1E69E7CC0];
  if (v88)
  {
    OUTLINED_FUNCTION_145_0(v81, v82, v83, v84, v85, v86, v87);
    v89 = v330;
    v90 = v309 + 32;
    do
    {
      v91 = OUTLINED_FUNCTION_185();
      LocationExtendedToken.description.getter(v91, v92, v93, v94, v95, v96, v97, v98, v308, v309, v310, v311);
      v11 = v99;
      OUTLINED_FUNCTION_107_1(v100, v99);
      OUTLINED_FUNCTION_381();
      sub_1C70260EC(&v326);

      OUTLINED_FUNCTION_491();
      v330 = v89;
      OUTLINED_FUNCTION_238();
      if (v102)
      {
        OUTLINED_FUNCTION_15(v101);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C(v103, v104, v105, v106, v107, v108, v109);
        v89 = v330;
      }

      OUTLINED_FUNCTION_413();
      v90 += 56;
      --v88;
    }

    while (v88);
    OUTLINED_FUNCTION_309_0();
  }

  MEMORY[0x1CCA5D090](v89, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v110 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v110);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v111 + 10, v112 | 0x8000000000000000);
  v117 = *(v310 + 16);
  v118 = MEMORY[0x1E69E7CC0];
  if (v117)
  {
    v319 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v117, 0, v113, v114, v115, v116);
    v118 = v319;
    v119 = (v310 + 64);
    v120 = v317;
    do
    {
      v11 = *(v119 - 3);
      v121 = *(v119 - 2);
      v122 = *(v119 - 8);
      v123 = *(v119 - 7);
      v124 = *v119;
      *&v326 = *(v119 - 4);
      *(&v326 + 1) = v11;
      *&v327 = v121;
      BYTE8(v327) = v122;
      BYTE9(v327) = v123;
      *&v328 = v124;
      sub_1C75504FC();
      sub_1C75504FC();
      v125 = GenericLocationExtendedToken.description.getter();
      OUTLINED_FUNCTION_246(v125, v126);
      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);

      OUTLINED_FUNCTION_318();
      v319 = v118;
      OUTLINED_FUNCTION_238();
      if (v102)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C(v127, v128, v129, v130, v131, v132, v133);
        v118 = v319;
      }

      v119 += 5;
      OUTLINED_FUNCTION_413();
      --v117;
    }

    while (v117);
    OUTLINED_FUNCTION_309_0();
  }

  else
  {
    v120 = v317;
  }

  MEMORY[0x1CCA5D090](v118, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v134 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v134);

  v135 = MEMORY[0x1CCA5CD70](0x54656D6F68090A2CLL, 0xEE00203A6E656B6FLL);
  v142 = *(v311 + 16);
  v143 = MEMORY[0x1E69E7CC0];
  if (v142)
  {
    OUTLINED_FUNCTION_145_0(v135, v136, v137, v138, v139, v140, v141);
    v143 = v330;
    v144 = v311 + 32;
    do
    {
      v145 = OUTLINED_FUNCTION_185();
      LocationExtendedToken.description.getter(v145, v146, v147, v148, v149, v150, v151, v152, v308, v309, v310, v311);
      v11 = v153;
      OUTLINED_FUNCTION_107_1(v154, v153);
      OUTLINED_FUNCTION_381();
      sub_1C70260EC(&v326);

      OUTLINED_FUNCTION_491();
      v330 = v143;
      OUTLINED_FUNCTION_238();
      if (v102)
      {
        OUTLINED_FUNCTION_15(v155);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C(v156, v157, v158, v159, v160, v161, v162);
        v143 = v330;
      }

      OUTLINED_FUNCTION_413();
      v144 += 56;
      --v142;
    }

    while (v142);
    OUTLINED_FUNCTION_309_0();
  }

  MEMORY[0x1CCA5D090](v143, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v163 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v163);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v164 + 2, v165 | 0x8000000000000000);
  v170 = *(v312 + 16);
  v171 = MEMORY[0x1E69E7CC0];
  if (v170)
  {
    *&v322 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v170, 0, v166, v167, v168, v169);
    v171 = v322;
    OUTLINED_FUNCTION_70_4();
    v11 = v312 + (v173 & ~v172);
    v175 = *(v174 + 72);
    do
    {
      sub_1C702659C();
      *&v326 = TimeExtendedToken.description.getter();
      *(&v326 + 1) = v176;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](2604, 0xE200000000000000);

      v177 = v326;
      OUTLINED_FUNCTION_216();
      sub_1C70265F0();
      *&v322 = v171;
      v179 = *(v171 + 16);
      v178 = *(v171 + 24);
      if (v179 >= v178 >> 1)
      {
        OUTLINED_FUNCTION_63_5(v178);
        OUTLINED_FUNCTION_146();
        sub_1C6F7ED9C(v180, v181, v182, v183, v184, v185, v186);
        v171 = v322;
      }

      *(v171 + 16) = v179 + 1;
      *(v171 + 16 * v179 + 32) = v177;
      v11 += v175;
      --v170;
    }

    while (v170);
    OUTLINED_FUNCTION_309_0();
    v120 = v317;
  }

  MEMORY[0x1CCA5D090](v171, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_61_4();

  v187 = OUTLINED_FUNCTION_216();
  MEMORY[0x1CCA5CD70](v187);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v188 + 15, v189 | 0x8000000000000000);
  v194 = *(v313 + 16);
  v195 = MEMORY[0x1E69E7CC0];
  if (v194)
  {
    v319 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v194, 0, v190, v191, v192, v193);
    OUTLINED_FUNCTION_491();
    v196 = (v313 + 80);
    do
    {
      v197 = *(v196 - 5);
      v198 = *(v196 - 4);
      v199 = *(v196 - 24);
      v200 = *(v196 - 2);
      v201 = *(v196 - 1);
      v202 = *v196;
      *&v326 = *(v196 - 6);
      *(&v326 + 1) = v197;
      *&v327 = v198;
      BYTE8(v327) = v199;
      *&v328 = v200;
      *(&v328 + 1) = v201;
      LOBYTE(v329) = v202;
      sub_1C75504FC();
      sub_1C75504FC();
      v203 = sub_1C75504FC();
      PartOfDayExtendedToken.description.getter(v203, v204, v205, v206, v207, v208, v209, v210, v308, v309, v310, v311);
      v212 = v211;
      OUTLINED_FUNCTION_246(v213, v211);
      MEMORY[0x1CCA5CD70](2604, 0xE200000000000000);

      v11 = *(&v322 + 1);
      v214 = v322;
      v319 = v195;
      OUTLINED_FUNCTION_274_0();
      if (v102)
      {
        OUTLINED_FUNCTION_186();
        sub_1C6F7ED9C(v216, v217, v218, v219, v220, v221, v222);
        OUTLINED_FUNCTION_491();
      }

      v196 += 56;
      *(v195 + 16) = v197;
      v215 = v195 + 16 * v212;
      *(v215 + 32) = v214;
      *(v215 + 40) = v11;
      --v194;
    }

    while (v194);
  }

  v223 = MEMORY[0x1CCA5D090](v195, MEMORY[0x1E69E6158]);
  v225 = v224;

  MEMORY[0x1CCA5CD70](v223, v225);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v226 + 8, v227 | 0x8000000000000000);
  v232 = *(v314 + 16);
  v233 = MEMORY[0x1E69E7CC0];
  if (v232)
  {
    *&v322 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v232, 0, v228, v229, v230, v231);
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_191();
    v235 = v314 + v234;
    v11 = *(v120 + 72);
    do
    {
      sub_1C702659C();
      *&v326 = PartOfWeekExtendedToken.description.getter();
      *(&v326 + 1) = v236;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](2604, 0xE200000000000000);

      v237 = v326;
      sub_1C70265F0();
      *&v322 = v233;
      v239 = *(v233 + 16);
      v238 = *(v233 + 24);
      if (v239 >= v238 >> 1)
      {
        OUTLINED_FUNCTION_63_5(v238);
        OUTLINED_FUNCTION_177();
        sub_1C6F7ED9C(v240, v241, v242, v243, v244, v245, v246);
        OUTLINED_FUNCTION_318();
      }

      *(v233 + 16) = v239 + 1;
      *(v233 + 16 * v239 + 32) = v237;
      v235 += v11;
      --v232;
    }

    while (v232);
  }

  MEMORY[0x1CCA5D090](v233, MEMORY[0x1E69E6158]);

  v247 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v247);

  MEMORY[0x1CCA5CD70](0x5470697274090A2CLL, 0xEF203A736E656B6FLL);
  v252 = *(v315 + 16);
  v253 = MEMORY[0x1E69E7CC0];
  if (v252)
  {
    v330 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v252, 0, v248, v249, v250, v251);
    v253 = v330;
    v254 = (v315 + 32);
    do
    {
      v255 = *v254;
      v256 = v254[1];
      v257 = v254[3];
      v328 = v254[2];
      v329 = v257;
      v326 = v255;
      v327 = v256;
      v258 = v254[1];
      v322 = *v254;
      v259 = v254[2];
      v260 = v254[3];
      v323 = v258;
      v324 = v259;
      v325 = v260;
      sub_1C7026698(&v326, &v319);
      v261 = TripExtendedToken.description.getter();
      v263 = v262;
      OUTLINED_FUNCTION_107_1(v261, v262);
      MEMORY[0x1CCA5CD70](663596, 0xE300000000000000);
      sub_1C70266D0(&v326);

      v264 = v319;
      v265 = v320;
      v330 = v253;
      OUTLINED_FUNCTION_407();
      if (v102)
      {
        OUTLINED_FUNCTION_15(v266);
        OUTLINED_FUNCTION_116_0();
        sub_1C6F7ED9C(v268, v269, v270, v271, v272, v273, v274);
        v253 = v330;
      }

      *(v253 + 16) = v263;
      v267 = v253 + 16 * v11;
      *(v267 + 32) = v264;
      *(v267 + 40) = v265;
      v254 += 4;
      --v252;
    }

    while (v252);
  }

  MEMORY[0x1CCA5D090](v253, MEMORY[0x1E69E6158]);

  v275 = OUTLINED_FUNCTION_173();
  MEMORY[0x1CCA5CD70](v275);

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C7599CA0);
  v280 = *(v316 + 16);
  v281 = MEMORY[0x1E69E7CC0];
  if (v280)
  {
    v319 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v280, 0, v276, v277, v278, v279);
    v281 = v319;
    v282 = (v316 + 64);
    do
    {
      v283 = *(v282 - 3);
      v284 = *(v282 - 2);
      v285 = *(v282 - 8);
      v286 = *(v282 - 7);
      v287 = *v282;
      *&v326 = *(v282 - 4);
      *(&v326 + 1) = v283;
      *&v327 = v284;
      BYTE8(v327) = v285;
      *(&v327 + 9) = v286;
      *&v328 = v287;
      sub_1C75504FC();
      v288 = sub_1C75504FC();
      EventExtendedToken.description.getter(v288, v289, v290, v291, v292, v293, v294, v295, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
      OUTLINED_FUNCTION_246(v296, v297);
      MEMORY[0x1CCA5CD70](663596, 0xE300000000000000);

      OUTLINED_FUNCTION_318();
      v298 = *(&v322 + 1);
      v319 = v281;
      OUTLINED_FUNCTION_407();
      if (v102)
      {
        OUTLINED_FUNCTION_116_0();
        sub_1C6F7ED9C(v300, v301, v302, v303, v304, v305, v306);
        v281 = v319;
      }

      v282 += 5;
      *(v281 + 16) = v283;
      v299 = v281 + 16 * v11;
      *(v299 + 32) = v287;
      *(v299 + 40) = v298;
      --v280;
    }

    while (v280);
  }

  MEMORY[0x1CCA5D090](v281, MEMORY[0x1E69E6158]);

  v307 = OUTLINED_FUNCTION_173();
  MEMORY[0x1CCA5CD70](v307);

  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_25_0();
}

void ExtendedTokenCollection.intersecting(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = OUTLINED_FUNCTION_424(v23);
  v25 = type metadata accessor for PartOfWeekExtendedToken(v24);
  v26 = OUTLINED_FUNCTION_18(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_140_1();
  v29 = OUTLINED_FUNCTION_119(v28);
  v30 = type metadata accessor for TimeExtendedToken(v29);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_118_1(v33, v34, v35, v36, v37, v38, v39, v40, v272);
  v41 = OUTLINED_FUNCTION_90();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  sub_1C7009510();
  sub_1C706D154();
  v44 = v43;
  v45 = 0;
  v46 = *(v20 + 16);
  OUTLINED_FUNCTION_382(MEMORY[0x1E69E7CC0]);
LABEL_2:
  while (v45 != v46)
  {
    if (v45 >= *(v20 + 16))
    {
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
      return;
    }

    memcpy(v282, (v20 + 32 + 72 * v45++), 0x41uLL);
    v47 = v282[2].n128_u64[0];
    OUTLINED_FUNCTION_91_2();
    v289 = v48;
    v49 = OUTLINED_FUNCTION_81_3(0xE700000000000000);
    sub_1C7025F3C(v49, v50);
    v51 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v51);
    OUTLINED_FUNCTION_458();
    if (v52)
    {
      v53 = v289;
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v55 = v54 & &v283;
        OUTLINED_FUNCTION_136();
        if (((v56 >> v55) & 1) == 0)
        {
          break;
        }

        v57 = OUTLINED_FUNCTION_298(*(v44 + 48) + 16 * v55);
        v59 = v59 && v58 == v47;
        if (!v59)
        {
          v60 = OUTLINED_FUNCTION_312(v57, v58);
          v54 = v55 + 1;
          if ((v60 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v287);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_376();
        if ((v61 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716D97C();
        }

        OUTLINED_FUNCTION_123_1();
        if (v64)
        {
          OUTLINED_FUNCTION_40_11(v62);
          sub_1C716D97C();
          v63 = v291;
        }

        *(v63 + 16) = v47;
        v65 = OUTLINED_FUNCTION_540(v63 + 72 * v53);
        memcpy(v65, v66, 0x41uLL);
        goto LABEL_2;
      }
    }

    sub_1C7025F74(v282);
  }

  v67 = 0;
  OUTLINED_FUNCTION_147_0();
  v69 = v68 + 32;
  v70 = *(v68 + 16);
LABEL_19:
  while (v67 != v70)
  {
    OUTLINED_FUNCTION_83_1();
    if (v64)
    {
      goto LABEL_175;
    }

    memcpy(v282, (v69 + 72 * v67++), 0x42uLL);
    v71 = v282[2].n128_u64[0];
    v289 = 980706640;
    v72 = OUTLINED_FUNCTION_81_3(0xE400000000000000);
    sub_1C7025FF8(v72, v73);
    v74 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v74);
    OUTLINED_FUNCTION_458();
    if (v75)
    {
      v76 = v289;
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v78 = v77 & &v283;
        OUTLINED_FUNCTION_136();
        if (((v79 >> v78) & 1) == 0)
        {
          break;
        }

        v80 = OUTLINED_FUNCTION_298(*(v44 + 48) + 16 * v78);
        if (!v59 || v81 != v71)
        {
          v83 = OUTLINED_FUNCTION_312(v80, v81);
          v77 = v78 + 1;
          if ((v83 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v286);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_376();
        if ((v84 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716D940();
        }

        OUTLINED_FUNCTION_123_1();
        if (v64)
        {
          OUTLINED_FUNCTION_40_11(v85);
          sub_1C716D940();
          v86 = v291;
        }

        *(v86 + 16) = v71;
        v87 = OUTLINED_FUNCTION_540(v86 + 72 * v76);
        memcpy(v87, v88, 0x42uLL);
        goto LABEL_19;
      }
    }

    sub_1C7026030(v282);
  }

  v89 = 0;
  OUTLINED_FUNCTION_333();
  v91 = *(v90 + 16);
  v92 = v90 + 32;
  OUTLINED_FUNCTION_538(MEMORY[0x1E69E7CC0]);
LABEL_36:
  while (v89 != v91)
  {
    OUTLINED_FUNCTION_114_1();
    if (v89 >= v93)
    {
      goto LABEL_176;
    }

    OUTLINED_FUNCTION_54_5((v92 + 56 * v89++));
    v94 = v282[1].n128_u64[0];
    OUTLINED_FUNCTION_36_5();
    v289 = v95;
    OUTLINED_FUNCTION_234();
    v97 = OUTLINED_FUNCTION_81_3(v96);
    sub_1C70260B4(v97, v98);
    v99 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v99);
    OUTLINED_FUNCTION_458();
    if (v100)
    {
      v101 = v289;
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v102 & 1) == 0)
        {
          break;
        }

        v103 = OUTLINED_FUNCTION_172();
        if (v103 != v101 || v104 != v94)
        {
          OUTLINED_FUNCTION_312(v103, v104);
          OUTLINED_FUNCTION_443();
          if ((v106 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v285);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_376();
        if ((v107 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716DD2C();
        }

        OUTLINED_FUNCTION_123_1();
        if (v64)
        {
          OUTLINED_FUNCTION_40_11(v108);
          sub_1C716DD2C();
          v109 = v291;
        }

        *(v109 + 16) = v94;
        v110 = OUTLINED_FUNCTION_121_2();
        OUTLINED_FUNCTION_47_8(v111, v110, v112, v113);
        goto LABEL_36;
      }
    }

    sub_1C70260EC(v282);
  }

  v114 = 0;
  OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_302(v115 + 32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_330(v116);
LABEL_53:
  while (1)
  {
    OUTLINED_FUNCTION_266();
    if (v114 == v117)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v114 >= v118)
    {
      goto LABEL_177;
    }

    v119 = (v274 + 40 * v114);
    v121 = *v119;
    v120 = v119[1];
    OUTLINED_FUNCTION_122_1(v119);
    v123 = *(v122 + 32);
    ++v114;
    v283 = 0;
    v284 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C755180C();

    OUTLINED_FUNCTION_370();
    MEMORY[0x1CCA5CD70](v121, v120);
    v89 = v284;
    if (*(v44 + 16))
    {
      v124 = v283;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v91 = v125 & &v283;
        OUTLINED_FUNCTION_136();
        if (((v126 >> v91) & 1) == 0)
        {
          break;
        }

        v127 = (*(v44 + 48) + 16 * v91);
        v128 = v127[1];
        if (*v127 != v124 || v128 != v89)
        {
          v130 = OUTLINED_FUNCTION_598(*v127, v128, v124);
          v125 = v91 + 1;
          if ((v130 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_117_2(&v284);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v282[0].n128_u64[0] = &v283;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1C716DCF0();
          OUTLINED_FUNCTION_231_0();
        }

        v91 = v285;
        v89 = v285 + 1;
        if (v285 >= v286 >> 1)
        {
          OUTLINED_FUNCTION_63_5(v286);
          OUTLINED_FUNCTION_186();
          sub_1C716DCF0();
          OUTLINED_FUNCTION_231_0();
        }

        v285 = v89;
        OUTLINED_FUNCTION_535(&v284);
        v133 = (&v283 + v91 * v132);
        v133[4] = v121;
        v133[5] = v120;
        v133[6] = v279;
        OUTLINED_FUNCTION_293(v133);
        OUTLINED_FUNCTION_432(v134);
        *(v135 + 64) = v123;
        goto LABEL_53;
      }
    }
  }

  v136 = 0;
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_302(MEMORY[0x1E69E7CC0]);
  v137 = 56;
LABEL_70:
  while (v136 != v89)
  {
    OUTLINED_FUNCTION_114_1();
    if (v136 >= v138)
    {
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_54_5((v91 + 56 * v136++));
    v139 = v282[1].n128_u64[0];
    OUTLINED_FUNCTION_36_5();
    v289 = v140;
    OUTLINED_FUNCTION_234();
    v142 = OUTLINED_FUNCTION_81_3(v141);
    sub_1C70260B4(v142, v143);
    v144 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v144);
    OUTLINED_FUNCTION_458();
    if (v145)
    {
      v146 = v289;
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v147 & 1) == 0)
        {
          break;
        }

        v148 = OUTLINED_FUNCTION_172();
        if (v148 != v146 || v149 != v139)
        {
          OUTLINED_FUNCTION_312(v148, v149);
          OUTLINED_FUNCTION_443();
          if ((v151 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v292);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_376();
        if ((v152 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716DD2C();
        }

        OUTLINED_FUNCTION_123_1();
        if (v64)
        {
          OUTLINED_FUNCTION_40_11(v153);
          sub_1C716DD2C();
          v154 = v291;
        }

        *(v154 + 16) = v139;
        v155 = OUTLINED_FUNCTION_121_2();
        OUTLINED_FUNCTION_47_8(v156, v155, v157, v158);
        goto LABEL_70;
      }
    }

    sub_1C70260EC(v282);
  }

  v159 = 0;
  OUTLINED_FUNCTION_346();
  v161 = *(v160 + 16);
  while (v159 != v161)
  {
    if (v159 >= *(v160 + 16))
    {
      goto LABEL_179;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_403();
    sub_1C702659C();
    ++v159;
    OUTLINED_FUNCTION_366();
    MEMORY[0x1CCA5CD70](*v281, v281[1]);
    v162 = v284;
    if (*(v44 + 16))
    {
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_89_3();
        if ((v163 & 1) == 0)
        {
          break;
        }

        v164 = OUTLINED_FUNCTION_298(*(v44 + 48) + 896);
        if (!v59 || v165 != v162)
        {
          OUTLINED_FUNCTION_312(v164, v165);
          OUTLINED_FUNCTION_537();
          if ((v167 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_1_19();
        OUTLINED_FUNCTION_402(&a16);
        sub_1C70267FC();
        OUTLINED_FUNCTION_144_0(&a9);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_406();
        if ((v168 & 1) == 0)
        {
          v169 = OUTLINED_FUNCTION_32_6();
          sub_1C716DCA8(v169, v170, v171);
          OUTLINED_FUNCTION_287();
        }

        OUTLINED_FUNCTION_123_1();
        if (v64)
        {
          v174 = OUTLINED_FUNCTION_28_4(v172);
          sub_1C716DCA8(v174, v175, v176);
          OUTLINED_FUNCTION_287();
        }

        *(v173 + 16) = v162;
        OUTLINED_FUNCTION_1_19();
        sub_1C70267FC();
        goto LABEL_103;
      }
    }

    OUTLINED_FUNCTION_3_12();
    sub_1C70265F0();
LABEL_103:
    OUTLINED_FUNCTION_346();
  }

  v177 = 0;
  OUTLINED_FUNCTION_377(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_52_6(&v290);
LABEL_105:
  while (1)
  {
    OUTLINED_FUNCTION_151();
    if (v177 == v178)
    {
      break;
    }

    OUTLINED_FUNCTION_83_1();
    if (v64)
    {
      goto LABEL_180;
    }

    OUTLINED_FUNCTION_266();
    v180 = (v179 + 56 * v177);
    v181 = *v180;
    v182 = v180[1];
    OUTLINED_FUNCTION_559(v180);
    v184 = *(v183 + 32);
    v137 = *(v183 + 40);
    v277 = *(v183 + 48);
    ++v177;
    OUTLINED_FUNCTION_93_2();
    OUTLINED_FUNCTION_474(v185);
    sub_1C75504FC();
    sub_1C75504FC();
    v275 = v181;
    v186 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v186);
    v161 = v284;
    if (*(v44 + 16))
    {
      v187 = v283;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v188 & 1) == 0)
        {
          break;
        }

        v189 = OUTLINED_FUNCTION_172();
        if (v189 != v187 || v190 != v161)
        {
          OUTLINED_FUNCTION_598(v189, v190, v187);
          OUTLINED_FUNCTION_443();
          if ((v192 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v293);
        v193 = swift_isUniquelyReferenced_nonNull_native();
        v282[0].n128_u64[0] = v187;
        if ((v193 & 1) == 0)
        {
          v194 = OUTLINED_FUNCTION_32_6();
          sub_1C716DC6C(v194, v195, v196, v197, v198, v199, v200);
          v187 = v282[0].n128_u64[0];
        }

        v161 = *(v187 + 16);
        v201 = *(v187 + 24);
        if (v161 >= v201 >> 1)
        {
          v207 = OUTLINED_FUNCTION_28_4(v201);
          sub_1C716DC6C(v207, v208, v209, v210, v211, v212, v213);
          OUTLINED_FUNCTION_287();
        }

        OUTLINED_FUNCTION_541();
        v204 = v203 + v161 * v202;
        *(v204 + 32) = v275;
        *(v204 + 40) = v182;
        OUTLINED_FUNCTION_433(v204);
        OUTLINED_FUNCTION_293(v205);
        *(v206 + 64) = v184;
        *(v206 + 72) = v137;
        *(v206 + 80) = v277;
        goto LABEL_105;
      }
    }
  }

  v214 = 0;
  OUTLINED_FUNCTION_368();
  OUTLINED_FUNCTION_330(MEMORY[0x1E69E7CC0]);
  while (v214 != v161)
  {
    if (v214 >= *(v215 + 16))
    {
      goto LABEL_181;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_403();
    OUTLINED_FUNCTION_197();
    ++v214;
    OUTLINED_FUNCTION_281();
    v216 = v284;
    if (*(v44 + 16))
    {
      v217 = v283;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_89_3();
        if ((v218 & 1) == 0)
        {
          break;
        }

        v219 = OUTLINED_FUNCTION_259(*(v44 + 48) + 16 * v137);
        if (!v59 || v220 != v216)
        {
          OUTLINED_FUNCTION_387(v219, v220, v217);
          OUTLINED_FUNCTION_537();
          if ((v222 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_0_15();
        OUTLINED_FUNCTION_325();
        sub_1C70267FC();
        OUTLINED_FUNCTION_144_0(&v291);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_406();
        if ((v224 & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1C716DC24();
          OUTLINED_FUNCTION_287();
        }

        v226 = *(v223 + 16);
        v225 = *(v223 + 24);
        if (v226 >= v225 >> 1)
        {
          OUTLINED_FUNCTION_28_4(v225);
          sub_1C716DC24();
          OUTLINED_FUNCTION_287();
        }

        *(v223 + 16) = v226 + 1;
        OUTLINED_FUNCTION_0_15();
        sub_1C70267FC();
        goto LABEL_138;
      }
    }

    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_325();
    sub_1C70265F0();
LABEL_138:
    v215 = v273;
  }

  v227 = 0;
  OUTLINED_FUNCTION_159_0();
LABEL_140:
  while (v227 != v161)
  {
    OUTLINED_FUNCTION_114_1();
    if (v227 >= v228)
    {
      goto LABEL_182;
    }

    OUTLINED_FUNCTION_361(v177 + (v227++ << 6));
    v230 = v282[2].n128_i64[1];
    v229 = v282[2].n128_u64[0];
    OUTLINED_FUNCTION_169();
    v289 = v231;
    v290 = 0xE500000000000000;
    sub_1C7026698(v282, &v283);
    v232 = OUTLINED_FUNCTION_457();
    MEMORY[0x1CCA5CD70](v232);
    OUTLINED_FUNCTION_458();
    if (v233)
    {
      OUTLINED_FUNCTION_252_0();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_89_3();
        if ((v234 & 1) == 0)
        {
          break;
        }

        v235 = OUTLINED_FUNCTION_259(*(v44 + 48) + 16 * v137);
        if (!v59 || v236 != v229)
        {
          OUTLINED_FUNCTION_387(v235, v236, v230);
          OUTLINED_FUNCTION_537();
          if ((v238 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v290);
        v239 = swift_isUniquelyReferenced_nonNull_native();
        v291 = v229;
        if ((v239 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716DBE8();
          v229 = v291;
        }

        v241 = *(v229 + 16);
        v240 = *(v229 + 24);
        v242 = v229;
        if (v241 >= v240 >> 1)
        {
          OUTLINED_FUNCTION_40_11(v240);
          sub_1C716DBE8();
          v242 = v291;
        }

        *(v242 + 16) = v241 + 1;
        v243 = OUTLINED_FUNCTION_121_2();
        OUTLINED_FUNCTION_233(v244, v243, v245, v246, v282[3]);
        goto LABEL_140;
      }
    }

    sub_1C70266D0(v282);
  }

  v247 = 0;
  v248 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_52_6(&v288);
LABEL_157:
  while (1)
  {
    OUTLINED_FUNCTION_151();
    if (v247 == v249)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v247 >= v250)
    {
      goto LABEL_183;
    }

    OUTLINED_FUNCTION_266();
    v252 = (v251 + 40 * v247);
    v253 = *v252;
    v254 = v252[1];
    v276 = v252[2];
    v280 = *(v252 + 26);
    v255 = v252[4];
    ++v247;
    OUTLINED_FUNCTION_170();
    OUTLINED_FUNCTION_591(v256);
    sub_1C75504FC();
    v278 = v253;
    MEMORY[0x1CCA5CD70](v253, v254);
    v257 = v284;
    if (*(v44 + 16))
    {
      v258 = v283;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v260 = v259 & &v283;
        OUTLINED_FUNCTION_136();
        if (((v261 >> v260) & 1) == 0)
        {
          break;
        }

        v262 = (*(v44 + 48) + 16 * v260);
        v263 = v262[1];
        if (*v262 != v258 || v263 != v257)
        {
          v265 = OUTLINED_FUNCTION_387(*v262, v263, v258);
          v259 = v260 + 1;
          if ((v265 & 1) == 0)
          {
            continue;
          }
        }

        v266 = swift_isUniquelyReferenced_nonNull_native();
        v282[0].n128_u64[0] = v248;
        if ((v266 & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1C716DBAC();
          OUTLINED_FUNCTION_231_0();
        }

        v268 = *(v248 + 16);
        v267 = *(v248 + 24);
        if (v268 >= v267 >> 1)
        {
          OUTLINED_FUNCTION_28_4(v267);
          sub_1C716DBAC();
          OUTLINED_FUNCTION_231_0();
        }

        *(v248 + 16) = v268 + 1;
        v269 = (v248 + 40 * v268);
        v269[4] = v278;
        v269[5] = v254;
        v269[6] = v276;
        OUTLINED_FUNCTION_293(v269);
        OUTLINED_FUNCTION_432(v270);
        *(v271 + 58) = v280;
        *(v271 + 64) = v255;
        goto LABEL_157;
      }
    }
  }

  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_25_0();
}

void sub_1C7009510()
{
  OUTLINED_FUNCTION_124();
  v56 = v2;
  v3 = v1;
  v60 = v0;
  v5 = v4;
  v70 = v6;
  v71 = v7;
  v69 = v8;
  v9 = MEMORY[0x1E69E6208];
  v11 = v10;
  v13 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v64 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_36();
  v57 = v5;
  v58 = v17;
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  v67 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_140_1();
  v65 = v21;
  sub_1C755149C();
  OUTLINED_FUNCTION_3_0();
  v53 = v23;
  v54 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_78();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_2();
  v66 = v31;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v32);
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_0();
  v62 = v35 - v34;
  v61 = v11;
  v72 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v59 = v36;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_61_1();
  v38 = sub_1C75509BC();
  sub_1C755199C();
  v68 = sub_1C75519AC();
  sub_1C755194C();
  (*(v63 + 16))(v62, v60, v13);
  v71 = v9;
  v63 = v13;
  sub_1C75509AC();
  if (v38 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (v38)
  {
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1C755150C();
      if (__swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_18;
      }

      v69(v29, v65);
      if (v3)
      {
        v48 = OUTLINED_FUNCTION_397();
        v49(v48);

        (*(v55 + 32))(v56, v65, v57);
        v50 = OUTLINED_FUNCTION_180();
        v51(v50);
        goto LABEL_16;
      }

      v3 = 0;
      v39 = OUTLINED_FUNCTION_180();
      v40(v39);
      sub_1C755198C();
      if (!--v38)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v41 = (v64 + 32);
  v42 = (v64 + 8);
  v43 = v58;
  while (1)
  {
    sub_1C755150C();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      v44 = OUTLINED_FUNCTION_397();
      v45(v44);
      (*(v53 + 8))(v26, v54);
      goto LABEL_16;
    }

    (*v41)(v43, v26, AssociatedTypeWitness);
    v69(v43, v67);
    if (v3)
    {
      break;
    }

    v3 = 0;
    (*v42)(v43, AssociatedTypeWitness);
    sub_1C755198C();
  }

  (*v42)(v43, AssociatedTypeWitness);
  v46 = OUTLINED_FUNCTION_397();
  v47(v46);

  (*(v55 + 32))(v56, v67, v57);
LABEL_16:
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

void sub_1C7009ADC()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_47_0();
  v3 = type metadata accessor for Hastings.Asset(v2);
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = (v6 - v5);
  if (*(v0 + 16))
  {
    sub_1C7551F3C();
    v8 = *v1;
    v9 = v1[1];
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_79_1();
    v12 = ~v11;
    do
    {
      v13 = v10 & v12;
      OUTLINED_FUNCTION_136();
      if (((1 << v13) & v14) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_519();
      sub_1C702659C();
      v15 = v7[1];
      if (*v7 == v8 && v15 == v9)
      {
        OUTLINED_FUNCTION_241();
        break;
      }

      v17 = OUTLINED_FUNCTION_598(*v7, v15, v8);
      OUTLINED_FUNCTION_241();
      v10 = v13 + 1;
    }

    while ((v17 & 1) == 0);
  }

  OUTLINED_FUNCTION_25_0();
}

char *sub_1C7009C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_470(a1, a2, a3);
  sub_1C75505AC();
  v6 = &v11;
  sub_1C7551FAC();
  OUTLINED_FUNCTION_79_1();
  do
  {
    OUTLINED_FUNCTION_326();
    if (!v7)
    {
      break;
    }

    OUTLINED_FUNCTION_298(*(v3 + 48) + 16 * v5);
    v9 = v9 && v8 == v4;
    if (v9)
    {
      break;
    }

    OUTLINED_FUNCTION_501();
  }

  while ((sub_1C7551DBC() & 1) == 0);
  return v6;
}

void sub_1C7009CE0()
{
  OUTLINED_FUNCTION_33();
  if (*(v1 + 16))
  {
    v2 = v1;
    v3 = v0;
    sub_1C72DF388(*(v1 + 40), v0);
    OUTLINED_FUNCTION_79_1();
    v6 = v5 & ~v4;
    if ((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v4;
      while (1)
      {
        v8 = 0xE400000000000000;
        v9 = 1701736302;
        switch(*(*(v2 + 48) + v6))
        {
          case 1:
            v8 = 0xE600000000000000;
            v10 = 1936876912;
            goto LABEL_22;
          case 2:
            v9 = 0x67416E6F73726570;
            v13 = 0x6570795465;
            goto LABEL_13;
          case 3:
            v9 = 1702125924;
            break;
          case 4:
            v8 = 0xE900000000000079;
            v9 = 0x6144664F74726170;
            break;
          case 5:
            OUTLINED_FUNCTION_437();
            v8 = v14 + 1529;
            v9 = 0x6557664F74726170;
            break;
          case 6:
            v8 = 0xE600000000000000;
            v10 = 1935762803;
LABEL_22:
            v9 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
            break;
          case 7:
            v8 = 0xE800000000000000;
            v11 = 1633906540;
            goto LABEL_17;
          case 8:
            v9 = 0x4C636972656E6567;
            v8 = 0xEF6E6F697461636FLL;
            break;
          case 9:
            v9 = 1952540791;
            break;
          case 0xA:
            v9 = 0x764563696C627570;
            v8 = 0xEB00000000746E65;
            break;
          case 0xB:
            v9 = 0x6C616E6F73726570;
            v13 = 0x746E657645;
LABEL_13:
            v8 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0xC:
            v9 = 0x746954636973756DLL;
            v8 = 0xEA0000000000656CLL;
            break;
          case 0xD:
            v8 = 0xEB00000000747369;
            v9 = 0x747241636973756DLL;
            break;
          case 0xE:
            OUTLINED_FUNCTION_437();
            v8 = v12 + 6;
            v9 = 0x6E6547636973756DLL;
            break;
          case 0xF:
            v9 = 1685024621;
            break;
          case 0x10:
            v8 = 0xE800000000000000;
            v11 = 1634891108;
LABEL_17:
            v9 = v11 | 0x6E6F697400000000;
            break;
          case 0x11:
            v8 = 0xE600000000000000;
            v9 = 0x706972547369;
            break;
          case 0x12:
            v9 = 0x6D69546C6C417369;
            v8 = 0xE900000000000065;
            break;
          case 0x13:
            v8 = 0xE900000000000072;
            v9 = 0x6564724F74726F73;
            break;
          default:
            break;
        }

        v15 = 0xE400000000000000;
        v16 = 1701736302;
        switch(v3)
        {
          case 1:
            v15 = 0xE600000000000000;
            v17 = 1936876912;
            goto LABEL_45;
          case 2:
            v16 = 0x67416E6F73726570;
            v20 = 0x6570795465;
            goto LABEL_36;
          case 3:
            v16 = 1702125924;
            break;
          case 4:
            v15 = 0xE900000000000079;
            v16 = 0x6144664F74726170;
            break;
          case 5:
            OUTLINED_FUNCTION_437();
            v15 = v21 + 1529;
            v16 = 0x6557664F74726170;
            break;
          case 6:
            v15 = 0xE600000000000000;
            v17 = 1935762803;
LABEL_45:
            v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
            break;
          case 7:
            v15 = 0xE800000000000000;
            v18 = 1633906540;
            goto LABEL_40;
          case 8:
            v16 = 0x4C636972656E6567;
            v15 = 0xEF6E6F697461636FLL;
            break;
          case 9:
            v16 = 1952540791;
            break;
          case 10:
            v16 = 0x764563696C627570;
            v15 = 0xEB00000000746E65;
            break;
          case 11:
            v16 = 0x6C616E6F73726570;
            v20 = 0x746E657645;
LABEL_36:
            v15 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 12:
            v16 = 0x746954636973756DLL;
            v15 = 0xEA0000000000656CLL;
            break;
          case 13:
            v15 = 0xEB00000000747369;
            v16 = 0x747241636973756DLL;
            break;
          case 14:
            OUTLINED_FUNCTION_437();
            v15 = v19 + 6;
            v16 = 0x6E6547636973756DLL;
            break;
          case 15:
            v16 = 1685024621;
            break;
          case 16:
            v15 = 0xE800000000000000;
            v18 = 1634891108;
LABEL_40:
            v16 = v18 | 0x6E6F697400000000;
            break;
          case 17:
            v15 = 0xE600000000000000;
            v16 = 0x706972547369;
            break;
          case 18:
            v16 = 0x6D69546C6C417369;
            v15 = 0xE900000000000065;
            break;
          case 19:
            v15 = 0xE900000000000072;
            v16 = 0x6564724F74726F73;
            break;
          default:
            break;
        }

        if (v9 == v16 && v8 == v15)
        {
          break;
        }

        OUTLINED_FUNCTION_179();
        v23 = sub_1C7551DBC();

        if ((v23 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        goto LABEL_56;
      }
    }
  }

LABEL_56:
  OUTLINED_FUNCTION_25_0();
}

char *sub_1C700A1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_470(a1, a2, a3);
  sub_1C75505AC();
  v6 = &v11;
  sub_1C7551FAC();
  OUTLINED_FUNCTION_79_1();
  do
  {
    OUTLINED_FUNCTION_326();
    if (!v7)
    {
      break;
    }

    OUTLINED_FUNCTION_298(*(v3 + 48) + 16 * v5);
    v9 = v9 && v8 == v4;
    if (v9)
    {
      break;
    }

    OUTLINED_FUNCTION_501();
  }

  while ((sub_1C7551DBC() & 1) == 0);
  return v6;
}

void sub_1C700A254()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_276();
  type metadata accessor for Hastings.Feature(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  if (*(v0 + 16))
  {
    sub_1C7551F3C();
    v7 = *v1;
    v8 = v1[1];
    sub_1C75505AC();
    sub_1C6FF7814();
    sub_1C754F58C();
    OUTLINED_FUNCTION_211();
    sub_1C70259B4(v9, v10, MEMORY[0x1E69C1938]);
    sub_1C755059C();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_79_1();
    v13 = v12 & ~v11;
    v26 = v14;
    if ((*(v14 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v25 = ~v11;
      while (1)
      {
        sub_1C702659C();
        v15 = *v6 == v7 && *(v6 + 8) == v8;
        if (!v15 && (sub_1C7551DBC() & 1) == 0)
        {
          break;
        }

        v16 = 0xE900000000000072;
        v17 = 0x6574636172616843;
        switch(*(v6 + 16))
        {
          case 1:
            v16 = 0xE800000000000000;
            v17 = 0x6E6F697461636F4CLL;
            break;
          case 2:
            v16 = 0xE500000000000000;
            v17 = 0x746E657645;
            break;
          case 3:
            v16 = 0xE400000000000000;
            v17 = 1885958740;
            break;
          case 4:
            v16 = 0xE500000000000000;
            v17 = 0x7972657551;
            break;
          case 5:
            v17 = 0x6B61657262656954;
            v16 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        v18 = 0x6574636172616843;
        v19 = 0xE900000000000072;
        switch(*(v1 + 16))
        {
          case 1:
            v19 = 0xE800000000000000;
            v18 = 0x6E6F697461636F4CLL;
            break;
          case 2:
            v19 = 0xE500000000000000;
            v18 = 0x746E657645;
            break;
          case 3:
            v19 = 0xE400000000000000;
            v18 = 1885958740;
            break;
          case 4:
            v19 = 0xE500000000000000;
            v18 = 0x7972657551;
            break;
          case 5:
            v18 = 0x6B61657262656954;
            v19 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        if (v17 == v18 && v16 == v19)
        {
        }

        else
        {
          v21 = sub_1C7551DBC();

          if ((v21 & 1) == 0)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_211();
        sub_1C70259B4(&qword_1EC2147A0, v22, MEMORY[0x1E69C1950]);
        OUTLINED_FUNCTION_323();
        sub_1C7550A5C();
        OUTLINED_FUNCTION_323();
        sub_1C7550A5C();
        if (v29 == v27 && v30 == v28)
        {

          OUTLINED_FUNCTION_80_3();
          goto LABEL_36;
        }

        v24 = sub_1C7551DBC();

        OUTLINED_FUNCTION_80_3();
        if (v24)
        {
          goto LABEL_36;
        }

LABEL_33:
        v13 = (v13 + 1) & v25;
        if (((*(v26 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_80_3();
      goto LABEL_33;
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C700A668(unsigned __int8 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = a1;
    sub_1C7551F3C();
    MEMORY[0x1CCA5E460](v4);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_345_0();
    do
    {
      OUTLINED_FUNCTION_317();
    }

    while (v6 && *(a2[6] + v5) != v4);
  }

  return v2;
}

BOOL sub_1C700A700(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  sub_1C755068C();
  OUTLINED_FUNCTION_61_4();
  sub_1C7551F3C();
  sub_1C75505AC();
  v2 = sub_1C7551FAC();

  OUTLINED_FUNCTION_79_1();
  v4 = ~v3;
  do
  {
    OUTLINED_FUNCTION_444();
    v6 = !v11;
    if (!v5)
    {
      break;
    }

    v7 = sub_1C755068C();
    v9 = v8;
    v11 = v7 == sub_1C755068C() && v9 == v10;
    if (v11)
    {

      return 1;
    }

    OUTLINED_FUNCTION_179();
    v12 = sub_1C7551DBC();

    v2 = (v2 & v4) + 1;
  }

  while ((v12 & 1) == 0);
  return v6;
}

void sub_1C700A830()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_276();
  sub_1C754E9AC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_388();
  if (v1)
  {
    OUTLINED_FUNCTION_201();
    v4 = sub_1C70259B4(v2, v3, MEMORY[0x1E69A1170]);
    OUTLINED_FUNCTION_264(v4);
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_396();
    do
    {
      OUTLINED_FUNCTION_84_2();
      if (!v5)
      {
        break;
      }

      v6 = OUTLINED_FUNCTION_100_2();
      v7(v6);
      OUTLINED_FUNCTION_201();
      v9 = sub_1C70259B4(&unk_1EDD10090, v8, MEMORY[0x1E69A1178]);
      v10 = OUTLINED_FUNCTION_250(v9);
      v11 = OUTLINED_FUNCTION_35_0();
      v12(v11);
    }

    while ((v10 & 1) == 0);
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C700A970()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_276();
  sub_1C754E97C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_388();
  if (v1)
  {
    OUTLINED_FUNCTION_200_0();
    v4 = sub_1C70259B4(v2, v3, MEMORY[0x1E69A0FA8]);
    OUTLINED_FUNCTION_264(v4);
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_396();
    do
    {
      OUTLINED_FUNCTION_84_2();
      if (!v5)
      {
        break;
      }

      v6 = OUTLINED_FUNCTION_100_2();
      v7(v6);
      OUTLINED_FUNCTION_200_0();
      v9 = sub_1C70259B4(&qword_1EDD0CB28, v8, MEMORY[0x1E69A0FB0]);
      v10 = OUTLINED_FUNCTION_250(v9);
      v11 = OUTLINED_FUNCTION_35_0();
      v12(v11);
    }

    while ((v10 & 1) == 0);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C700AAB0(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    sub_1C7551F3C();
    MEMORY[0x1CCA5E460](a1);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_345_0();
    do
    {
      OUTLINED_FUNCTION_317();
    }

    while (v6 && *(a2[6] + 8 * v5) != a1);
  }

  return v2;
}

void sub_1C700AB48()
{
  OUTLINED_FUNCTION_33();
  v4 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = v0;
    sub_1C755170C();
  }

  else if (*(v1 + 16))
  {
    sub_1C6F65BE8(0, v2, v3);
    sub_1C75513DC();
    OUTLINED_FUNCTION_38_5();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      OUTLINED_FUNCTION_444();
      if (!v10)
      {
        break;
      }

      v11 = *(*(v4 + 48) + 8 * v9);
      v12 = sub_1C75513EC();

      v6 = v9 + 1;
    }

    while ((v12 & 1) == 0);
  }

  OUTLINED_FUNCTION_25_0();
}

void ExtendedTokenCollection.excluding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = OUTLINED_FUNCTION_424(v25);
  v27 = type metadata accessor for PartOfWeekExtendedToken(v26);
  v28 = OUTLINED_FUNCTION_18(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_140_1();
  v31 = OUTLINED_FUNCTION_119(v30);
  v32 = type metadata accessor for TimeExtendedToken(v31);
  v33 = OUTLINED_FUNCTION_18(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_118_1(v35, v36, v37, v38, v39, v40, v41, v42, v277);
  v43 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1C7009510();
  sub_1C706D154();
  v45 = v44;
  v46 = 0;
  v47 = *(v20 + 16);
  OUTLINED_FUNCTION_382(MEMORY[0x1E69E7CC0]);
LABEL_2:
  while (v46 != v47)
  {
    if (v46 >= *(v20 + 16))
    {
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
      return;
    }

    memcpy(v285, (v20 + 32 + 72 * v46++), 0x41uLL);
    v48 = *&v285[2];
    OUTLINED_FUNCTION_91_2();
    v292 = v49;
    v50 = OUTLINED_FUNCTION_81_3(0xE700000000000000);
    sub_1C7025F3C(v50, v51);
    v43 = &v292;
    v52 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v52);
    OUTLINED_FUNCTION_460();
    if (v53)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      v43 = &v286;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v55 = v54 & &v286;
        OUTLINED_FUNCTION_136();
        if (((v56 >> v55) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 16 * v55);
        v58 = v58 && v57 == v48;
        if (!v58)
        {
          OUTLINED_FUNCTION_179();
          v59 = sub_1C7551DBC();
          v54 = v55 + 1;
          if ((v59 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C7025F74(v285);
        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_144_0(&v290);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_376();
    if ((v61 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716D97C();
      v60 = v294;
    }

    v62 = v60[2];
    OUTLINED_FUNCTION_337();
    if (v65)
    {
      OUTLINED_FUNCTION_78_3(v63);
      OUTLINED_FUNCTION_116_0();
      sub_1C716D97C();
      v64 = v294;
    }

    v64[2] = v48;
    v66 = OUTLINED_FUNCTION_540(&v64[9 * v62]);
    memcpy(v66, v67, 0x41uLL);
  }

  v68 = 0;
  OUTLINED_FUNCTION_147_0();
  v70 = v69 + 32;
  v71 = *(v69 + 16);
LABEL_19:
  while (v68 != v71)
  {
    OUTLINED_FUNCTION_83_1();
    if (v65)
    {
      goto LABEL_175;
    }

    memcpy(v285, (v70 + 72 * v68++), 0x42uLL);
    v72 = *&v285[2];
    v292 = 980706640;
    v73 = OUTLINED_FUNCTION_81_3(0xE400000000000000);
    sub_1C7025FF8(v73, v74);
    v43 = &v292;
    v75 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v75);
    OUTLINED_FUNCTION_460();
    if (v76)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      v43 = &v286;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v78 = v77 & &v286;
        OUTLINED_FUNCTION_136();
        if (((v79 >> v78) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 16 * v78);
        if (!v58 || v80 != v72)
        {
          OUTLINED_FUNCTION_179();
          v82 = sub_1C7551DBC();
          v77 = v78 + 1;
          if ((v82 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C7026030(v285);
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_144_0(&v289);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_376();
    if ((v84 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716D940();
      v83 = v294;
    }

    v85 = v83[2];
    OUTLINED_FUNCTION_337();
    if (v65)
    {
      OUTLINED_FUNCTION_78_3(v86);
      OUTLINED_FUNCTION_116_0();
      sub_1C716D940();
      v87 = v294;
    }

    v87[2] = v72;
    v88 = OUTLINED_FUNCTION_540(&v87[9 * v85]);
    memcpy(v88, v89, 0x42uLL);
  }

  v90 = 0;
  OUTLINED_FUNCTION_333();
  v92 = *(v91 + 16);
  v93 = v91 + 32;
  OUTLINED_FUNCTION_538(MEMORY[0x1E69E7CC0]);
  v94 = 56;
LABEL_36:
  while (v90 != v92)
  {
    OUTLINED_FUNCTION_114_1();
    if (v90 >= v95)
    {
      goto LABEL_176;
    }

    OUTLINED_FUNCTION_54_5((v93 + 56 * v90++));
    v96 = v285[1];
    OUTLINED_FUNCTION_36_5();
    v292 = v97;
    OUTLINED_FUNCTION_234();
    v99 = OUTLINED_FUNCTION_81_3(v98);
    sub_1C70260B4(v99, v100);
    v43 = &v292;
    v101 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v101);
    OUTLINED_FUNCTION_460();
    if (v102)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      v43 = &v286;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v103 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_172() != *(&v96 + 1) || v104 != v96)
        {
          OUTLINED_FUNCTION_179();
          sub_1C7551DBC();
          OUTLINED_FUNCTION_443();
          if ((v106 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C70260EC(v285);
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_117_2(&v288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v294 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716DD2C();
      v43 = v294;
    }

    OUTLINED_FUNCTION_102_3();
    if (v65)
    {
      OUTLINED_FUNCTION_78_3(v108);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DD2C();
      v43 = v294;
    }

    v43[2] = v96;
    v109 = OUTLINED_FUNCTION_121_2();
    OUTLINED_FUNCTION_47_8(v110, v109, v111, v112);
  }

  v113 = 0;
  OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_302(v114 + 32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_330(v115);
LABEL_53:
  while (1)
  {
    OUTLINED_FUNCTION_266();
    if (v113 == v116)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v113 >= v117)
    {
      goto LABEL_177;
    }

    v118 = (v279 + 40 * v113);
    v94 = *v118;
    v119 = v118[1];
    OUTLINED_FUNCTION_122_1(v118);
    v121 = *(v120 + 32);
    ++v113;
    v286 = 0;
    v287 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    v43 = &v286;
    sub_1C755180C();

    OUTLINED_FUNCTION_370();
    v122 = OUTLINED_FUNCTION_35_0();
    MEMORY[0x1CCA5CD70](v122);
    v123 = v287;
    if (*(v45 + 16))
    {
      v124 = v286;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v92 = v125 & &v286;
        OUTLINED_FUNCTION_136();
        if (((v126 >> v92) & 1) == 0)
        {
          break;
        }

        v127 = (*(v45 + 48) + 16 * v92);
        if (*v127 != v124 || v127[1] != v123)
        {
          v129 = sub_1C7551DBC();
          v125 = v92 + 1;
          if ((v129 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_53;
      }
    }

    OUTLINED_FUNCTION_117_2(&v287);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *&v285[0] = &v286;
    if ((v130 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_6();
      sub_1C716DCF0();
      OUTLINED_FUNCTION_231_0();
    }

    v92 = v288;
    if (v288 >= v289 >> 1)
    {
      OUTLINED_FUNCTION_63_5(v289);
      OUTLINED_FUNCTION_321();
      sub_1C716DCF0();
      OUTLINED_FUNCTION_231_0();
    }

    v288 = v92 + 1;
    OUTLINED_FUNCTION_535(&v287);
    v132 = &v286 + v92 * v131;
    *(v132 + 4) = v94;
    *(v132 + 5) = v119;
    OUTLINED_FUNCTION_433(v132);
    OUTLINED_FUNCTION_293(v133);
    OUTLINED_FUNCTION_432(v134);
    *(v135 + 64) = v121;
  }

  v136 = 0;
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_302(MEMORY[0x1E69E7CC0]);
LABEL_70:
  while (v136 != v94)
  {
    OUTLINED_FUNCTION_114_1();
    if (v136 >= v137)
    {
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_54_5((v92 + 56 * v136++));
    v138 = v285[1];
    OUTLINED_FUNCTION_36_5();
    v292 = v139;
    OUTLINED_FUNCTION_234();
    v141 = OUTLINED_FUNCTION_81_3(v140);
    sub_1C70260B4(v141, v142);
    v43 = &v292;
    v143 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v143);
    OUTLINED_FUNCTION_460();
    if (v144)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      v43 = &v286;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v145 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_172() != *(&v138 + 1) || v146 != v138)
        {
          OUTLINED_FUNCTION_179();
          sub_1C7551DBC();
          OUTLINED_FUNCTION_443();
          if ((v148 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C70260EC(v285);
        goto LABEL_70;
      }
    }

    OUTLINED_FUNCTION_117_2(&v295);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v43;
    if ((v149 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716DD2C();
      v43 = v294;
    }

    OUTLINED_FUNCTION_102_3();
    if (v65)
    {
      OUTLINED_FUNCTION_78_3(v150);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DD2C();
      v43 = v294;
    }

    v43[2] = v138;
    v151 = OUTLINED_FUNCTION_121_2();
    OUTLINED_FUNCTION_47_8(v152, v151, v153, v154);
  }

  v155 = 0;
  OUTLINED_FUNCTION_346();
  v157 = *(v156 + 16);
  while (v155 != v157)
  {
    OUTLINED_FUNCTION_529();
    if (v65)
    {
      goto LABEL_179;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_403();
    OUTLINED_FUNCTION_182();
    sub_1C702659C();
    ++v155;
    OUTLINED_FUNCTION_366();
    v158 = *v43;
    v159 = v43[1];
    v43 = &v286;
    MEMORY[0x1CCA5CD70](v158, v159);
    v160 = v287;
    if (*(v45 + 16))
    {
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_227();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_89_3();
        if ((v161 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 896);
        if (!v58 || v162 != v160)
        {
          OUTLINED_FUNCTION_179();
          sub_1C7551DBC();
          OUTLINED_FUNCTION_537();
          if ((v164 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_3_12();
        sub_1C70265F0();
        goto LABEL_103;
      }
    }

    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_402(&a16);
    sub_1C70267FC();
    OUTLINED_FUNCTION_117_2(&a9);
    v165 = swift_isUniquelyReferenced_nonNull_native();
    *&v285[0] = &v286;
    if ((v165 & 1) == 0)
    {
      v166 = OUTLINED_FUNCTION_32_6();
      sub_1C716DCA8(v166, v167, v168);
      OUTLINED_FUNCTION_231_0();
    }

    OUTLINED_FUNCTION_102_3();
    if (v65)
    {
      OUTLINED_FUNCTION_63_5(v169);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DCA8(v170, v171, v172);
      OUTLINED_FUNCTION_231_0();
    }

    v288 = v160;
    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
LABEL_103:
    OUTLINED_FUNCTION_346();
  }

  v173 = 0;
  OUTLINED_FUNCTION_377(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_52_6(&v293);
LABEL_105:
  while (1)
  {
    OUTLINED_FUNCTION_151();
    if (v173 == v174)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v173 >= v175)
    {
      goto LABEL_180;
    }

    OUTLINED_FUNCTION_266();
    v177 = (v176 + 56 * v173);
    v155 = *v177;
    v178 = v177[1];
    OUTLINED_FUNCTION_122_1(v177);
    v180 = *(v179 + 32);
    v181 = *(v179 + 40);
    v280 = *(v179 + 48);
    ++v173;
    OUTLINED_FUNCTION_93_2();
    OUTLINED_FUNCTION_474(v182);
    sub_1C75504FC();
    sub_1C75504FC();
    v283 = v155;
    v183 = OUTLINED_FUNCTION_457();
    MEMORY[0x1CCA5CD70](v183);
    v184 = v287;
    if (*(v45 + 16))
    {
      v185 = v286;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      v155 = ~v187;
      while (1)
      {
        v188 = v186 & v155;
        OUTLINED_FUNCTION_136();
        if (((v189 >> v188) & 1) == 0)
        {
          break;
        }

        v190 = OUTLINED_FUNCTION_298(*(v45 + 48) + 16 * v188);
        if (!v58 || v191 != v184)
        {
          v193 = OUTLINED_FUNCTION_598(v190, v191, v185);
          v186 = v188 + 1;
          if ((v193 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_105;
      }
    }

    OUTLINED_FUNCTION_144_0(&v296);
    v194 = swift_isUniquelyReferenced_nonNull_native();
    *&v285[0] = v155;
    if ((v194 & 1) == 0)
    {
      v195 = OUTLINED_FUNCTION_32_6();
      sub_1C716DC6C(v195, v196, v197, v198, v199, v200, v201);
      v155 = *&v285[0];
    }

    v202 = *(v155 + 16);
    OUTLINED_FUNCTION_236();
    if (v65)
    {
      v209 = OUTLINED_FUNCTION_28_4(v203);
      sub_1C716DC6C(v209, v210, v211, v212, v213, v214, v215);
      OUTLINED_FUNCTION_287();
    }

    OUTLINED_FUNCTION_541();
    v206 = v205 + v202 * v204;
    *(v206 + 32) = v283;
    *(v206 + 40) = v178;
    OUTLINED_FUNCTION_433(v206);
    OUTLINED_FUNCTION_293(v207);
    *(v208 + 64) = v180;
    *(v208 + 72) = v181;
    *(v208 + 80) = v280;
  }

  v216 = 0;
  v217 = *(v278 + 16);
  OUTLINED_FUNCTION_330(MEMORY[0x1E69E7CC0]);
  while (v216 != v217)
  {
    if (v216 >= *(v218 + 16))
    {
      goto LABEL_181;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_197();
    ++v216;
    OUTLINED_FUNCTION_281();
    v219 = v287;
    if (*(v45 + 16))
    {
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_227();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      v155 = ~v221;
      while (1)
      {
        v222 = v220 & v155;
        OUTLINED_FUNCTION_136();
        if (((v223 >> v222) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 16 * v222);
        if (!v58 || v224 != v219)
        {
          OUTLINED_FUNCTION_179();
          v226 = sub_1C7551DBC();
          v220 = v222 + 1;
          if ((v226 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_2_11();
        OUTLINED_FUNCTION_325();
        sub_1C70265F0();
        goto LABEL_138;
      }
    }

    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_325();
    sub_1C70267FC();
    OUTLINED_FUNCTION_144_0(&v294);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_406();
    if ((v227 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_6();
      sub_1C716DC24();
      OUTLINED_FUNCTION_287();
    }

    OUTLINED_FUNCTION_123_1();
    if (v65)
    {
      OUTLINED_FUNCTION_28_4(v228);
      sub_1C716DC24();
      OUTLINED_FUNCTION_287();
    }

    *(v229 + 16) = v155;
    OUTLINED_FUNCTION_0_15();
    sub_1C70267FC();
LABEL_138:
    v218 = v278;
  }

  v230 = 0;
  OUTLINED_FUNCTION_306();
  v232 = *(v231 + 16);
  v233 = v231 + 32;
LABEL_140:
  while (v230 != v232)
  {
    OUTLINED_FUNCTION_114_1();
    if (v230 >= v234)
    {
      goto LABEL_182;
    }

    OUTLINED_FUNCTION_361(v233 + (v230++ << 6));
    v236 = *(&v285[2] + 1);
    v235 = *&v285[2];
    OUTLINED_FUNCTION_169();
    v292 = v237;
    v293 = 0xE500000000000000;
    sub_1C7026698(v285, &v286);
    v238 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v238);
    OUTLINED_FUNCTION_460();
    if (v239)
    {
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_227();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      v235 = ~v241;
      while (1)
      {
        v242 = v240 & v235;
        OUTLINED_FUNCTION_136();
        if (((v243 >> v242) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v45 + 48) + 16 * v242);
        if (!v58 || v244 != v236)
        {
          OUTLINED_FUNCTION_179();
          v246 = sub_1C7551DBC();
          v240 = v242 + 1;
          if ((v246 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C70266D0(v285);
        goto LABEL_140;
      }
    }

    OUTLINED_FUNCTION_144_0(&v293);
    v247 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v235;
    if ((v247 & 1) == 0)
    {
      OUTLINED_FUNCTION_33_7();
      sub_1C716DBE8();
      v235 = v294;
    }

    OUTLINED_FUNCTION_236();
    if (v65)
    {
      OUTLINED_FUNCTION_40_11(v248);
      sub_1C716DBE8();
      v249 = v294;
    }

    v249[2] = v235;
    v250 = OUTLINED_FUNCTION_121_2();
    OUTLINED_FUNCTION_233(v251, v250, v252, v253, v285[3]);
  }

  v254 = 0;
  v255 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_52_6(&v291);
LABEL_157:
  while (1)
  {
    OUTLINED_FUNCTION_151();
    if (v254 == v256)
    {
      break;
    }

    OUTLINED_FUNCTION_83_1();
    if (v65)
    {
      goto LABEL_183;
    }

    OUTLINED_FUNCTION_266();
    v258 = (v257 + 40 * v254);
    v259 = *v258;
    v260 = v258[1];
    OUTLINED_FUNCTION_559(v258);
    v281 = *(v261 + 26);
    v262 = *(v261 + 32);
    ++v254;
    OUTLINED_FUNCTION_170();
    OUTLINED_FUNCTION_591(v263);
    sub_1C75504FC();
    v284 = v259;
    MEMORY[0x1CCA5CD70](v259, v260);
    v264 = v287;
    if (*(v45 + 16))
    {
      v259 = v286;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v266 = v265 & &v286;
        OUTLINED_FUNCTION_136();
        if (((v267 >> v266) & 1) == 0)
        {
          break;
        }

        v268 = (*(v45 + 48) + 16 * v266);
        if (*v268 != v259 || v268[1] != v264)
        {
          OUTLINED_FUNCTION_179();
          v270 = sub_1C7551DBC();
          v265 = v266 + 1;
          if ((v270 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_157;
      }
    }

    v271 = swift_isUniquelyReferenced_nonNull_native();
    *&v285[0] = v255;
    if ((v271 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_6();
      sub_1C716DBAC();
      OUTLINED_FUNCTION_231_0();
    }

    v272 = *(v255 + 16);
    OUTLINED_FUNCTION_236();
    if (v65)
    {
      OUTLINED_FUNCTION_28_4(v273);
      sub_1C716DBAC();
      OUTLINED_FUNCTION_231_0();
    }

    *(v255 + 16) = v259;
    v274 = (v255 + 40 * v272);
    v274[4] = v284;
    v274[5] = v260;
    v274[6] = v282;
    OUTLINED_FUNCTION_293(v274);
    OUTLINED_FUNCTION_432(v275);
    *(v276 + 58) = v281;
    *(v276 + 64) = v262;
  }

  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_25_0();
}