uint64_t sub_1B49EF878(uint64_t a1)
{
  v2 = sub_1B49EFBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49EF8B4(uint64_t a1)
{
  v2 = sub_1B49EFBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79C8, &qword_1B4D1F380);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49EFBAC();
  sub_1B4D18EFC();
  LOBYTE(v16) = 0;
  sub_1B4D18CBC();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1B4D18CDC();
    v10 = type metadata accessor for InferenceResult(0);
    LOBYTE(v16) = 2;
    type metadata accessor for AnnounceUtteranceResult(0);
    sub_1B49F011C(&qword_1EB8A79D8, &protocol conformance descriptor for AnnounceUtteranceResult);
    sub_1B4D18CAC();
    LOBYTE(v16) = 3;
    sub_1B4D18C6C();
    LOBYTE(v16) = 4;
    sub_1B4D18C6C();
    v11 = (v3 + *(v10 + 36));
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v16 = *v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v15[15] = 5;
    sub_1B49B3D28(v16, v12, v13, v14);
    sub_1B49EFC00();
    sub_1B4D18CAC();
    sub_1B49EFC54(v16, v17, v18, v19);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B49EFBAC()
{
  result = qword_1EB8A79D0;
  if (!qword_1EB8A79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A79D0);
  }

  return result;
}

unint64_t sub_1B49EFC00()
{
  result = qword_1EB8A79E0;
  if (!qword_1EB8A79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A79E0);
  }

  return result;
}

void sub_1B49EFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t InferenceResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79E8, &qword_1B4D1F388);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for InferenceResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49EFBAC();
  v10 = v27;
  sub_1B4D18EEC();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = a1;
  v11 = v25;
  LOBYTE(v28) = 0;
  *v9 = sub_1B4D18BBC();
  v9[1] = v12;
  LOBYTE(v28) = 1;
  sub_1B4D18BDC();
  v9[2] = v13;
  type metadata accessor for AnnounceUtteranceResult(0);
  LOBYTE(v28) = 2;
  sub_1B49F011C(&qword_1EB8A79F0, &protocol conformance descriptor for AnnounceUtteranceResult);
  sub_1B4D18BAC();
  sub_1B498C368(v5, v9 + v7[6]);
  LOBYTE(v28) = 3;
  v14 = sub_1B4D18B6C();
  v15 = v27;
  v16 = (v9 + v7[7]);
  *v16 = v14;
  v16[1] = v17;
  LOBYTE(v28) = 4;
  v18 = sub_1B4D18B6C();
  v19 = (v9 + v7[8]);
  *v19 = v18;
  v19[1] = v20;
  v30 = 5;
  sub_1B49F0160();
  sub_1B4D18BAC();
  (*(v11 + 8))(0, v26);
  v21 = (v9 + v7[9]);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  sub_1B49F01B4(v9, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return sub_1B49F0218(v9, type metadata accessor for InferenceResult);
}

uint64_t sub_1B49F011C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnnounceUtteranceResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B49F0160()
{
  result = qword_1EB8A79F8;
  if (!qword_1EB8A79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A79F8);
  }

  return result;
}

uint64_t sub_1B49F01B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49F0218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B49F02D0(uint64_t a1)
{
  sub_1B49F03A4(319);
  if (v1 <= 0x3F)
  {
    sub_1B49F03FC(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1B49F03FC(319, qword_1EDC371F8, &type metadata for AudioSynthesisVoice);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B49F03A4(uint64_t a1)
{
  if (!qword_1EDC39130)
  {
    type metadata accessor for AnnounceUtteranceResult(255);
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC39130);
    }
  }
}

void sub_1B49F03FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B4D1880C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B49F045C()
{
  result = qword_1EB8A7A00;
  if (!qword_1EB8A7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A00);
  }

  return result;
}

unint64_t sub_1B49F04B4()
{
  result = qword_1EB8A7A08;
  if (!qword_1EB8A7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A08);
  }

  return result;
}

unint64_t sub_1B49F050C()
{
  result = qword_1EB8A7A10;
  if (!qword_1EB8A7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A10);
  }

  return result;
}

uint64_t sub_1B49F0560(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D5F890 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4D5F8B0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6563696F76 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t WorkoutVoiceMomentType.analyticsKey.getter()
{
  v1 = 0x6F72746E69;
  v2 = 0x74696C7073;
  if (*v0 != 2)
  {
    v2 = 0x7268746B61657262;
  }

  if (*v0)
  {
    v1 = 0x6F7274756FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t WorkoutVoiceMomentType.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t LegacyWorkoutVoiceMomentType.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      v2 = 1;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v2 = 2;
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v2 = 3;
LABEL_9:
    MEMORY[0x1B8C7D290](v2);
    v2 = v1;
  }

  return MEMORY[0x1B8C7D290](v2);
}

uint64_t LegacyWorkoutVoiceMomentType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B4D18E8C();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v3 = 3;
LABEL_9:
    MEMORY[0x1B8C7D290](v3);
    v2 = v1;
  }

  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49F0990()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      v2 = 1;
    }

    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v2 = 2;
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    v2 = 3;
LABEL_9:
    MEMORY[0x1B8C7D290](v2);
    v2 = v1;
  }

  return MEMORY[0x1B8C7D290](v2);
}

uint64_t sub_1B49F09FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1B4D18E8C();
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_9;
  }

  if (v3 == 3)
  {
    v4 = 3;
LABEL_9:
    MEMORY[0x1B8C7D290](v4);
    v3 = v2;
  }

  MEMORY[0x1B8C7D290](v3);
  return sub_1B4D18EDC();
}

BOOL _s19FitnessIntelligence28LegacyWorkoutVoiceMomentTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v2 <= 1)
  {
    if (*(a1 + 8))
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v3;
  }

  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    return *a1 == v3;
  }

  if (v2 != 3)
  {
    return v4 == 4 && v3 == 0;
  }

  if (v4 == 3)
  {
    return *a1 == v3;
  }

  return 0;
}

unint64_t sub_1B49F0B10()
{
  result = qword_1EB8A7A18;
  if (!qword_1EB8A7A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7A20, &qword_1B4D1F568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A18);
  }

  return result;
}

unint64_t sub_1B49F0B78()
{
  result = qword_1EB8A7A28;
  if (!qword_1EB8A7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A28);
  }

  return result;
}

unint64_t sub_1B49F0BD0()
{
  result = qword_1EB8A7A30;
  if (!qword_1EB8A7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A30);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LegacyWorkoutVoiceMomentType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacyWorkoutVoiceMomentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B49F0CD4(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1B49F0CEC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t SnapshotClient.triggerSnapshotProcessing(reason:)(_BYTE *a1)
{
  *(v2 + 42) = *a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B49F0D4C, 0, 0);
}

uint64_t sub_1B49F0D4C()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = sub_1B4D17F6C();
  __swift_project_value_buffer(v2, qword_1EDC3CED0);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4D5F8D0;
  v4._object = 0x80000001B4D5F900;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  *(v0 + 40) = 0;
  *(v0 + 41) = v1;
  v8 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  v6 = sub_1B49FA5BC();
  *v5 = v0;
  v5[1] = sub_1B49F0EAC;

  return v8(v0 + 40, v0 + 41, &type metadata for SnapshotProcessingReason, v6);
}

uint64_t sub_1B49F0EAC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49CCEA0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B49F1004()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4D5F8D0;
  v3._object = 0x80000001B4D5F930;
  v3._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 48) = 5;
  v8 = (*MEMORY[0x1E699DD10] + MEMORY[0x1E699DD10]);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
  v6 = sub_1B49FA610();
  *v4 = v0;
  v4[1] = sub_1B49F1170;

  return v8(v0 + 16, v0 + 48, v5, v6);
}

uint64_t sub_1B49F1170()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B49F12A0;
  }

  else
  {
    v2 = sub_1B49F1284;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t SnapshotClient.mostRecentCacheIndex(type:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 58) = *a2;
  v4 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1B49F12E4, 0, 0);
}

uint64_t sub_1B49F12E4()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 58);
  v2 = sub_1B4D17F6C();
  __swift_project_value_buffer(v2, qword_1EDC3CED0);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4D5F8D0;
  v4._object = 0x80000001B4D5F950;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  *(v0 + 56) = 6;
  *(v0 + 57) = v1;
  v9 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v6 = sub_1B49FA6E8();
  v7 = sub_1B49FA694();
  *v5 = v0;
  v5[1] = sub_1B49F1464;

  return v9(v0 + 16, v0 + 56, v0 + 57, &type metadata for SnapshotPropertiesType, &type metadata for CacheIndex, v6, v7);
}

uint64_t sub_1B49F1464()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B49F159C;
  }

  else
  {
    v2 = sub_1B49F1578;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F1578()
{
  v1 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = 0;
  return (*(v0 + 8))();
}

uint64_t SnapshotClient.execute(query:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A50, &qword_1B4D1F6F8);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[7] = v5;
  v3[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B49F1684, 0, 0);
}

{
  v3[3] = a1;
  v3[4] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A80, &qword_1B4D1F728);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[7] = v5;
  v3[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B49F1EC0, 0, 0);
}

{
  v3[3] = a1;
  v3[4] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AB0, &qword_1B4D1F758);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[7] = v5;
  v3[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B49F25E0, 0, 0);
}

uint64_t sub_1B49F1684()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A58, &qword_1B4D1F700);
  v2 = type metadata accessor for RingsPropertiesQuery(0);
  *(v0 + 72) = v2;
  v3 = *(*(v2 - 8) + 80);
  *(v0 + 112) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  *(v5 + 16) = xmmword_1B4D1A800;
  sub_1B4A053A4(v1, v5 + v4, type metadata accessor for RingsPropertiesQuery);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1B49F17E8;

  return SnapshotClient.execute(queries:)(v5);
}

uint64_t sub_1B49F17E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1B4A054E0;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v4 = sub_1B49F193C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B49F193C()
{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = *(v0[6] + 80);
    sub_1B4974FBC(v1 + ((v4 + 32) & ~v4), v2, &qword_1EB8A7A50, &qword_1B4D1F6F8);

    v5 = v2 + *(v3 + 36);
    v11 = *v5;
    v6 = *(v5 + 16);

    sub_1B4975024(v2, &qword_1EB8A7A50, &qword_1B4D1F6F8);
    v7 = v11;
  }

  else
  {

    v6 = 0;
    v7 = 0uLL;
  }

  v8 = v0[3];
  *v8 = v7;
  *(v8 + 16) = v6;

  v9 = v0[1];

  return v9();
}

uint64_t SnapshotClient.execute(queries:)(uint64_t a1)
{
  v2[4] = a1;
  v3 = sub_1B4D1777C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[9] = v4;
  v2[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B49F1B28, 0, 0);
}

{
  v2[4] = a1;
  v3 = sub_1B4D1777C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[9] = v4;
  v2[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B49F2364, 0, 0);
}

{
  v2[4] = a1;
  v3 = sub_1B4D1777C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[9] = v4;
  v2[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B49F2B2C, 0, 0);
}

uint64_t sub_1B49F1B28(double a1)
{
  sub_1B4D1776C();
  *(v1 + 104) = 2;

  v3 = sub_1B4A031D8(v2);

  *(v1 + 24) = v3;
  v10 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A60, &qword_1B4D1F710);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A68, &qword_1B4D1F718);
  v6 = sub_1B49B0578(&qword_1EB8A7A70, &qword_1EB8A7A60, &qword_1B4D1F710, &protocol conformance descriptor for SnapshotQueryBatch<A>);
  v7 = sub_1B49B0578(&qword_1EB8A7A78, &qword_1EB8A7A68, &qword_1B4D1F718, &protocol conformance descriptor for SnapshotQueryResults<A>);
  *v4 = v1;
  v4[1] = sub_1B49F1CD4;

  return v10(v1 + 16, v1 + 104, v1 + 24, v9, v5, v6, v7);
}

uint64_t sub_1B49F1CD4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B4A054D4;
  }

  else
  {
    v2 = sub_1B4A054E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F1EC0()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A88, &qword_1B4D1F730);
  v2 = type metadata accessor for WorkoutPropertiesQuery(0);
  *(v0 + 72) = v2;
  v3 = *(*(v2 - 8) + 80);
  *(v0 + 112) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  *(v5 + 16) = xmmword_1B4D1A800;
  sub_1B4A053A4(v1, v5 + v4, type metadata accessor for WorkoutPropertiesQuery);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1B49F2024;

  return SnapshotClient.execute(queries:)(v5);
}

uint64_t sub_1B49F2024(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1B4A054E0;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v4 = sub_1B49F2178;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B49F2178()
{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = *(v0[6] + 80);
    sub_1B4974FBC(v1 + ((v4 + 32) & ~v4), v2, &qword_1EB8A7A80, &qword_1B4D1F728);

    v5 = v2 + *(v3 + 36);
    v11 = *v5;
    v6 = *(v5 + 16);

    sub_1B4975024(v2, &qword_1EB8A7A80, &qword_1B4D1F728);
    v7 = v11;
  }

  else
  {

    v6 = 0;
    v7 = 0uLL;
  }

  v8 = v0[3];
  *v8 = v7;
  *(v8 + 16) = v6;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F2364(double a1)
{
  sub_1B4D1776C();
  *(v1 + 104) = 1;

  v3 = sub_1B4A03368(v2);

  *(v1 + 24) = v3;
  v10 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A90, &qword_1B4D1F740);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A98, &qword_1B4D1F748);
  v6 = sub_1B49B0578(&qword_1EB8A7AA0, &qword_1EB8A7A90, &qword_1B4D1F740, &protocol conformance descriptor for SnapshotQueryBatch<A>);
  v7 = sub_1B49B0578(&qword_1EB8A7AA8, &qword_1EB8A7A98, &qword_1B4D1F748, &protocol conformance descriptor for SnapshotQueryResults<A>);
  *v4 = v1;
  v4[1] = sub_1B49F1CD4;

  return v10(v1 + 16, v1 + 104, v1 + 24, v9, v5, v6, v7);
}

uint64_t sub_1B49F25E0()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AB8, &qword_1B4D1F760);
  v2 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  *(v0 + 72) = v2;
  v3 = *(*(v2 - 8) + 80);
  *(v0 + 112) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  *(v5 + 16) = xmmword_1B4D1A800;
  sub_1B4A053A4(v1, v5 + v4, type metadata accessor for FitnessPlusPropertiesQuery);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1B49F2744;

  return SnapshotClient.execute(queries:)(v5);
}

uint64_t sub_1B49F2744(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1B49F29A8;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v4 = sub_1B49F2898;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B49F2898()
{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = *(v0[6] + 80);
    sub_1B4974FBC(v1 + ((v4 + 32) & ~v4), v2, &qword_1EB8A7AB0, &qword_1B4D1F758);

    v5 = v2 + *(v3 + 36);
    v11 = *v5;
    v6 = *(v5 + 16);

    sub_1B4975024(v2, &qword_1EB8A7AB0, &qword_1B4D1F758);
    v7 = v11;
  }

  else
  {

    v6 = 0;
    v7 = 0uLL;
  }

  v8 = v0[3];
  *v8 = v7;
  *(v8 + 16) = v6;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B49F29A8()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B49F2B2C(double a1)
{
  sub_1B4D1776C();
  *(v1 + 104) = 3;

  v3 = sub_1B4A034F8(v2);

  *(v1 + 24) = v3;
  v10 = (*MEMORY[0x1E699DD00] + MEMORY[0x1E699DD00]);
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AC0, &qword_1B4D1F770);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AC8, &qword_1B4D1F778);
  v6 = sub_1B49B0578(&qword_1EB8A7AD0, &qword_1EB8A7AC0, &qword_1B4D1F770, &protocol conformance descriptor for SnapshotQueryBatch<A>);
  v7 = sub_1B49B0578(&qword_1EB8A7AD8, &qword_1EB8A7AC8, &qword_1B4D1F778, &protocol conformance descriptor for SnapshotQueryResults<A>);
  *v4 = v1;
  v4[1] = sub_1B49F2CD8;

  return v10(v1 + 16, v1 + 104, v1 + 24, v9, v5, v6, v7);
}

uint64_t sub_1B49F2CD8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B49F3050;
  }

  else
  {
    v2 = sub_1B49F2DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F2DF4()
{
  v1 = v0[2];
  if (qword_1EDC3CBB8[0] != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = sub_1B4D17F6C();
  __swift_project_value_buffer(v6, qword_1EDC37A40);
  (*(v4 + 16))(v3, v2, v5);

  v7 = sub_1B4D17F5C();
  v8 = sub_1B4D1873C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  if (v9)
  {
    v11 = v0[6];
    v12 = v0[7];
    v13 = v0[5];
    v23 = v0[4];
    v24 = v1;
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v12, v13);
    v17(v10, v13);
    *(v14 + 4) = v16;
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v23 + 16);

    _os_log_impl(&dword_1B4953000, v7, v8, "Took %fs to execute query: %ld queries", v14, 0x16u);
    v18 = v14;
    v1 = v24;
    MEMORY[0x1B8C7DDA0](v18, -1, -1);
  }

  else
  {
    v20 = v0[5];
    v19 = v0[6];

    v17 = *(v19 + 8);
    v17(v10, v20);
  }

  v17(v0[9], v0[5]);

  v21 = v0[1];

  return v21(v1);
}

uint64_t sub_1B49F3050()
{
  (*(v0[6] + 8))(v0[9], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t SnapshotClient.invalidateSnapshots(from:)(void *a1)
{
  v3 = *v1;
  *(v2 + 24) = *a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B49F3114, 0, 0);
}

uint64_t sub_1B49F3114()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4D17F6C();
  __swift_project_value_buffer(v2, qword_1EDC3CED0);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4D5F8D0;
  v4._object = 0x80000001B4D5F970;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  *(v0 + 56) = 4;
  *(v0 + 16) = v1;
  v8 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v6 = sub_1B49FA694();
  *v5 = v0;
  v5[1] = sub_1B49F3278;

  return v8(v0 + 56, v0 + 16, &type metadata for CacheIndex, v6);
}

uint64_t sub_1B49F3278()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49F159C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B49F33D0()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4D5F8D0;
  v3._object = 0x80000001B4D5F990;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 40) = 7;
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1B49F0EAC;

  return v6(v0 + 40);
}

uint64_t SnapshotClient.query(date:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F35BC;

  return SnapshotClient.querySnapshot(date:)(a1, a2);
}

uint64_t sub_1B49F35BC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4A054DC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SnapshotClient.querySnapshot(date:)(uint64_t a1, uint64_t a2)
{
  v3[1011] = a2;
  v3[1005] = a1;
  v4 = type metadata accessor for WorkoutPropertiesQuery(0);
  v3[1017] = v4;
  v5 = *(v4 - 8);
  v3[1023] = v5;
  v3[1029] = *(v5 + 64);
  v3[1035] = swift_task_alloc();
  v3[1041] = swift_task_alloc();
  v3[1047] = swift_task_alloc();
  v3[1053] = swift_task_alloc();
  v3[1059] = swift_task_alloc();
  v3[1065] = swift_task_alloc();
  v3[1071] = swift_task_alloc();
  v3[1077] = swift_task_alloc();
  v3[1083] = swift_task_alloc();
  v3[1089] = swift_task_alloc();
  v3[1095] = type metadata accessor for DateRangeDescriptor(0);
  v3[1101] = swift_task_alloc();
  v6 = type metadata accessor for RingsPropertiesQuery(0);
  v3[1107] = v6;
  v7 = *(v6 - 8);
  v3[1113] = v7;
  v3[1119] = *(v7 + 64);
  v3[1125] = swift_task_alloc();
  v3[1131] = swift_task_alloc();
  v3[1137] = swift_task_alloc();
  v3[1143] = swift_task_alloc();
  v3[1149] = swift_task_alloc();
  v3[1155] = swift_task_alloc();
  v3[1161] = swift_task_alloc();
  v3[1167] = swift_task_alloc();
  v3[1173] = swift_task_alloc();
  v3[1179] = swift_task_alloc();
  v8 = sub_1B4D1777C();
  v3[1185] = v8;
  v3[1191] = *(v8 - 8);
  v3[1197] = swift_task_alloc();
  v3[1203] = swift_task_alloc();
  v3[1209] = swift_task_alloc();
  v3[1215] = swift_task_alloc();
  v3[1221] = swift_task_alloc();
  v3[1227] = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B49F39BC, 0, 0);
}

uint64_t sub_1B49F39BC(double a1)
{
  v56 = v1;
  sub_1B4D1776C();
  if (qword_1EDC3CBB8[0] != -1)
  {
    swift_once();
  }

  v2 = v1[1215];
  v3 = v1[1191];
  v4 = v1[1185];
  v5 = v1[1011];
  v6 = sub_1B4D17F6C();
  v1[1233] = __swift_project_value_buffer(v6, qword_1EDC37A40);
  v7 = *(v3 + 16);
  v1[1239] = v7;
  v1[1245] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54 = v7;
  v7(v2, v5, v4);
  v8 = sub_1B4D17F5C();
  v9 = sub_1B4D1873C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[1215];
  v12 = v1[1191];
  v13 = v1[1185];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55 = v15;
    *v14 = 136315138;
    sub_1B4A0535C(&qword_1EB8A6B58, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v16 = sub_1B4D18D5C();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1B49558AC(v16, v18, &v55);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1B4953000, v8, v9, "Querying snapshot for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B8C7DDA0](v15, -1, -1);
    MEMORY[0x1B8C7DDA0](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v45 = v1[1227];
  v21 = v1[1185];
  v22 = v1[1179];
  v50 = v1[1173];
  v51 = v1[1167];
  v52 = v1[1161];
  v53 = v1[1155];
  v46 = v1[1143];
  v47 = v1[1137];
  v48 = v1[1131];
  v49 = v1[1125];
  v44 = v1[1149];
  v43 = v1[1113];
  v23 = v1[1107];
  v24 = v1[1101];
  v25 = v1[1011];
  v26 = sub_1B4D1796C();
  v1[1251] = __swift_project_value_buffer(v26, qword_1EDC3CE48);
  v27 = sub_1B4D178CC();
  v1[1257] = _HKCacheIndexFromDate();

  v28 = v22;
  v42 = v22;
  v54(v22, v25, v21);
  swift_storeEnumTagMultiPayload();
  v29 = (v22 + v23[5]);
  v30 = MEMORY[0x1E69E7CC0];
  *v29 = MEMORY[0x1E69E7CC0];
  v29[1] = v30;
  v29[2] = v30;
  *(v28 + v23[6]) = v30;
  *(v28 + v23[7]) = &unk_1F2CB9A40;
  v54(v24, v25, v21);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v24, v50, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v24, type metadata accessor for DateRangeDescriptor);
  v31 = (v50 + v23[5]);
  *v31 = v30;
  v31[1] = v30;
  v31[2] = v30;
  *(v50 + v23[6]) = v30;
  *(v50 + v23[7]) = &unk_1F2CB9A40;
  v54(v24, v25, v21);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v24, v51, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v24, type metadata accessor for DateRangeDescriptor);
  v32 = (v51 + v23[5]);
  *v32 = v30;
  v32[1] = v30;
  v32[2] = v30;
  *(v51 + v23[6]) = v30;
  *(v51 + v23[7]) = &unk_1F2CB9A40;
  v54(v24, v25, v21);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v24, v52, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v24, type metadata accessor for DateRangeDescriptor);
  v33 = (v52 + v23[5]);
  *v33 = v30;
  v33[1] = v30;
  v33[2] = v30;
  *(v52 + v23[6]) = v30;
  *(v52 + v23[7]) = &unk_1F2CB9A40;
  v54(v24, v25, v21);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v24, v53, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v24, type metadata accessor for DateRangeDescriptor);
  v34 = (v53 + v23[5]);
  *v34 = v30;
  v34[1] = v30;
  v34[2] = v30;
  *(v53 + v23[6]) = v30;
  *(v53 + v23[7]) = &unk_1F2CB9A40;
  sub_1B4A053A4(v42, v44, type metadata accessor for RingsPropertiesQuery);
  v35 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v36 = swift_allocObject();
  v1[1263] = v36;
  *(v36 + 16) = v45;
  sub_1B4A0546C(v44, v36 + v35, type metadata accessor for RingsPropertiesQuery);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6720, &qword_1B4D1F7B0);
  swift_asyncLet_begin();
  sub_1B4A053A4(v50, v46, type metadata accessor for RingsPropertiesQuery);
  v37 = swift_allocObject();
  v1[1269] = v37;
  *(v37 + 16) = v45;
  sub_1B4A0546C(v46, v37 + v35, type metadata accessor for RingsPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v51, v47, type metadata accessor for RingsPropertiesQuery);
  v38 = swift_allocObject();
  v1[1275] = v38;
  *(v38 + 16) = v45;
  sub_1B4A0546C(v47, v38 + v35, type metadata accessor for RingsPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v52, v48, type metadata accessor for RingsPropertiesQuery);
  v39 = swift_allocObject();
  v1[1281] = v39;
  *(v39 + 16) = v45;
  sub_1B4A0546C(v48, v39 + v35, type metadata accessor for RingsPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v53, v49, type metadata accessor for RingsPropertiesQuery);
  v40 = swift_allocObject();
  v1[1287] = v40;
  *(v40 + 16) = v45;
  sub_1B4A0546C(v49, v40 + v35, type metadata accessor for RingsPropertiesQuery);

  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 997, sub_1B49F4250, v1 + 1144);
}

uint64_t sub_1B49F4250()
{
  *(v1 + 10344) = v0;
  if (v0)
  {
    v2 = sub_1B49F5FD0;
  }

  else
  {
    v2 = sub_1B49F4284;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F4284()
{
  v0[1299] = v0[999];
  v0[1305] = v0[998];
  v0[1311] = v0[997];

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 925, sub_1B49F430C, v0 + 1498);
}

uint64_t sub_1B49F430C()
{
  *(v1 + 10536) = v0;
  if (v0)
  {

    v2 = sub_1B49F63FC;
  }

  else
  {
    v2 = sub_1B49F439C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F439C()
{
  v0[1323] = v0[927];
  v0[1329] = v0[926];
  v0[1335] = v0[925];

  return MEMORY[0x1EEE6DEC0](v0 + 162, v0 + 933, sub_1B49F4424, v0 + 968);
}

uint64_t sub_1B49F4424()
{
  *(v1 + 10728) = v0;
  if (v0)
  {

    v2 = sub_1B49F6828;
  }

  else
  {
    v2 = sub_1B49F44C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F44C4()
{
  v0[1347] = v0[935];
  v0[1353] = v0[934];
  v0[1359] = v0[933];

  return MEMORY[0x1EEE6DEC0](v0 + 242, v0 + 941, sub_1B49F454C, v0 + 1012);
}

uint64_t sub_1B49F454C()
{
  *(v1 + 10920) = v0;
  if (v0)
  {

    v2 = sub_1B49F6C54;
  }

  else
  {
    v2 = sub_1B49F4604;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F4604()
{
  v0[1371] = v0[943];
  v0[1377] = v0[942];
  v0[1383] = v0[941];

  return MEMORY[0x1EEE6DEC0](v0 + 322, v0 + 949, sub_1B49F468C, v0 + 1048);
}

uint64_t sub_1B49F468C()
{
  *(v1 + 11112) = v0;
  if (v0)
  {

    v2 = sub_1B49F707C;
  }

  else
  {
    v2 = sub_1B49F4754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F4754()
{
  v1 = v0[1383];
  v2 = v0[1377];
  v3 = v0[1371];
  v4 = v0[1359];
  v5 = v0[1353];
  v6 = v0[1347];
  v7 = v0[1335];
  v8 = v0[1329];
  v9 = v0[1323];
  v10 = v0[1311];
  v11 = v0[1305];
  v12 = v0[1299];
  v13 = v0[1239];
  v41 = v0[1227];
  v14 = v0[1185];
  if (!v3)
  {
    v1 = v0[1257];
    v2 = v1;
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (!v6)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v5 = v0[1257];
    v4 = v5;
  }

  if (!v9)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v8 = v0[1257];
    v7 = v8;
  }

  if (!v12)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v11 = v0[1257];
    v10 = v11;
  }

  v16 = v0[951];
  v17 = v0[950];
  v18 = v0[949];
  if (!v16)
  {
    v18 = v0[1257];
    v17 = v18;
  }

  v0[861] = v0[1257];
  v19 = v0[1101];
  v0[862] = v10;
  v0[863] = v11;
  v20 = v0[1089];
  v0[864] = v12;
  v45 = v0[1083];
  v0[865] = v7;
  v46 = v0[1077];
  v0[866] = v8;
  v21 = v0[1071];
  v0[867] = v9;
  v47 = v21;
  v48 = v0[1065];
  v0[868] = v4;
  v39 = v0[1059];
  v0[869] = v5;
  v40 = v0[1053];
  v0[870] = v6;
  v22 = v0[1047];
  v0[871] = v1;
  v42 = v22;
  v43 = v0[1041];
  v0[872] = v2;
  v44 = v0[1035];
  v0[873] = v3;
  v0[874] = v18;
  v38 = v0[1023];
  v0[875] = v17;
  if (v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = v15;
  }

  v0[876] = v23;
  v24 = v0[1017];
  v25 = v0[1011];
  v13(v20, v25, v14);
  swift_storeEnumTagMultiPayload();
  v26 = (v20 + v24[5]);
  *v26 = v15;
  v26[1] = v15;
  v26[2] = v15;
  v26[3] = v15;
  v26[4] = v15;
  v26[5] = v15;
  *(v20 + v24[6]) = &unk_1F2CB9AB8;
  *(v20 + v24[7]) = &unk_1F2CB9A80;
  v13(v19, v25, v14);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v19, v45, type metadata accessor for DateRangeDescriptor);

  sub_1B4A0540C(v19, type metadata accessor for DateRangeDescriptor);
  v27 = (v45 + v24[5]);
  *v27 = v15;
  v27[1] = v15;
  v27[2] = v15;
  v27[3] = v15;
  v27[4] = v15;
  v27[5] = v15;
  *(v45 + v24[6]) = &unk_1F2CB9AB8;
  *(v45 + v24[7]) = &unk_1F2CB9A80;
  v13(v19, v25, v14);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v19, v46, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v19, type metadata accessor for DateRangeDescriptor);
  v28 = (v46 + v24[5]);
  *v28 = v15;
  v28[1] = v15;
  v28[2] = v15;
  v28[3] = v15;
  v28[4] = v15;
  v28[5] = v15;
  *(v46 + v24[6]) = &unk_1F2CB9AB8;
  *(v46 + v24[7]) = &unk_1F2CB9A80;
  v13(v19, v25, v14);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v19, v47, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v19, type metadata accessor for DateRangeDescriptor);
  v29 = (v47 + v24[5]);
  *v29 = v15;
  v29[1] = v15;
  v29[2] = v15;
  v29[3] = v15;
  v29[4] = v15;
  v29[5] = v15;
  *(v47 + v24[6]) = &unk_1F2CB9AB8;
  *(v47 + v24[7]) = &unk_1F2CB9A80;
  v13(v19, v25, v14);
  swift_storeEnumTagMultiPayload();
  sub_1B4A053A4(v19, v48, type metadata accessor for DateRangeDescriptor);
  sub_1B4A0540C(v19, type metadata accessor for DateRangeDescriptor);
  v30 = (v48 + v24[5]);
  *v30 = v15;
  v30[1] = v15;
  v30[2] = v15;
  v30[3] = v15;
  v30[4] = v15;
  v30[5] = v15;
  *(v48 + v24[6]) = &unk_1F2CB9AB8;
  *(v48 + v24[7]) = &unk_1F2CB9A80;
  sub_1B4A053A4(v20, v39, type metadata accessor for WorkoutPropertiesQuery);
  v31 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v32 = swift_allocObject();
  v0[1395] = v32;
  *(v32 + 16) = v41;
  sub_1B4A0546C(v39, v32 + v31, type metadata accessor for WorkoutPropertiesQuery);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6728, &qword_1B4D1A750);
  swift_asyncLet_begin();
  sub_1B4A053A4(v45, v40, type metadata accessor for WorkoutPropertiesQuery);
  v33 = swift_allocObject();
  v0[1401] = v33;
  *(v33 + 16) = v41;
  sub_1B4A0546C(v40, v33 + v31, type metadata accessor for WorkoutPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v46, v42, type metadata accessor for WorkoutPropertiesQuery);
  v34 = swift_allocObject();
  v0[1407] = v34;
  *(v34 + 16) = v41;
  sub_1B4A0546C(v42, v34 + v31, type metadata accessor for WorkoutPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v47, v43, type metadata accessor for WorkoutPropertiesQuery);
  v35 = swift_allocObject();
  v0[1413] = v35;
  *(v35 + 16) = v41;
  sub_1B4A0546C(v43, v35 + v31, type metadata accessor for WorkoutPropertiesQuery);

  swift_asyncLet_begin();
  sub_1B4A053A4(v48, v44, type metadata accessor for WorkoutPropertiesQuery);
  v36 = swift_allocObject();
  v0[1419] = v36;
  *(v36 + 16) = v41;
  sub_1B4A0546C(v44, v36 + v31, type metadata accessor for WorkoutPropertiesQuery);

  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 722, v0 + 989, sub_1B49F4E7C, v0 + 1150);
}

uint64_t sub_1B49F4E7C()
{
  *(v1 + 11400) = v0;
  if (v0)
  {
    sub_1B4975024(v1 + 6888, &qword_1EB8A7AE0, &qword_1B4D1F850);
    v2 = sub_1B49F74A8;
  }

  else
  {
    v2 = sub_1B49F4F10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F4F10()
{
  v0[1431] = v0[991];
  v0[1437] = v0[990];
  v0[1443] = v0[989];

  return MEMORY[0x1EEE6DEC0](v0 + 642, v0 + 981, sub_1B49F4FA4, v0 + 1216);
}

uint64_t sub_1B49F4FA4()
{
  *(v1 + 11592) = v0;
  if (v0)
  {

    sub_1B4975024(v1 + 6888, &qword_1EB8A7AE0, &qword_1B4D1F850);
    v2 = sub_1B49F7B60;
  }

  else
  {
    v2 = sub_1B49F5050;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F5050()
{
  v0[1455] = v0[983];
  v0[1461] = v0[982];
  v0[1467] = v0[981];

  return MEMORY[0x1EEE6DEC0](v0 + 562, v0 + 973, sub_1B49F50E4, v0 + 1282);
}

uint64_t sub_1B49F50E4()
{
  *(v1 + 11784) = v0;
  if (v0)
  {

    sub_1B4975024(v1 + 6888, &qword_1EB8A7AE0, &qword_1B4D1F850);
    v2 = sub_1B49F8218;
  }

  else
  {
    v2 = sub_1B49F51A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F51A8()
{
  v0[1479] = v0[975];
  v0[1485] = v0[974];
  v0[1491] = v0[973];

  return MEMORY[0x1EEE6DEC0](v0 + 482, v0 + 965, sub_1B49F5230, v0 + 1348);
}

uint64_t sub_1B49F5230()
{
  *(v1 + 11976) = v0;
  if (v0)
  {

    sub_1B4975024(v1 + 6888, &qword_1EB8A7AE0, &qword_1B4D1F850);
    v2 = sub_1B49F88D0;
  }

  else
  {
    v2 = sub_1B49F5304;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F5304()
{
  v0[1503] = v0[967];
  v0[1504] = v0[966];
  v0[1505] = v0[965];

  return MEMORY[0x1EEE6DEC0](v0 + 402, v0 + 957, sub_1B49F538C, v0 + 1414);
}

uint64_t sub_1B49F538C()
{
  *(v1 + 12048) = v0;
  if (v0)
  {

    sub_1B4975024(v1 + 6888, &qword_1EB8A7AE0, &qword_1B4D1F850);
    v2 = sub_1B49F8F88;
  }

  else
  {
    v2 = sub_1B49F5478;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B49F5478()
{
  v92 = v0;
  v1 = *(v0 + 9912);
  v2 = *(v0 + 9768);
  v3 = *(v0 + 9624);
  v4 = *(v0 + 9480);
  v5 = *(v0 + 7672);
  v89 = *(v0 + 7664);
  v87 = *(v0 + 7656);
  v1(*(v0 + 9672), *(v0 + 8088), v4);
  v1(v3, v2, v4);

  v6 = sub_1B4D17F5C();
  v7 = sub_1B4D1873C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 9672);
  v10 = *(v0 + 9624);
  if (v8)
  {
    v81 = *(v0 + 9576);
    v11 = *(v0 + 9528);
    v85 = v5;
    v12 = *(v0 + 9480);
    v13 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v91 = v83;
    *v13 = 136315394;
    sub_1B4A0535C(&qword_1EB8A6B58, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v14 = sub_1B4D18D5C();
    v16 = v15;
    v18 = *(v11 + 8);
    v17 = v11 + 8;
    v18(v9, v12);
    v19 = sub_1B49558AC(v14, v16, &v91);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2048;
    sub_1B4D1776C();
    sub_1B4D176FC();
    v21 = v20;
    v18(v81, v12);
    v22 = v12;
    v5 = v85;
    v18(v10, v22);
    *(v13 + 14) = v21;
    _os_log_impl(&dword_1B4953000, v6, v7, "Queried snapshot until %s in %fs", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1B8C7DDA0](v83, -1, -1);
    MEMORY[0x1B8C7DDA0](v13, -1, -1);
  }

  else
  {
    v23 = *(v0 + 9528);
    v24 = *(v0 + 9480);

    v25 = *(v23 + 8);
    v17 = v23 + 8;
    v25(v10, v24);
    v25(v9, v24);
  }

  v26 = (v0 + 7016);
  *(v0 + 12056) = v17;
  v27 = *(v0 + 12040);
  v28 = *(v0 + 12032);
  v29 = *(v0 + 12024);
  v30 = *(v0 + 11832);
  v31 = *(v0 + 11640);
  v32 = *(v0 + 10056);
  if (v5)
  {
    v33 = v5;
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v86 = v33;
  if (v5)
  {
    v34 = v89;
  }

  else
  {
    v34 = *(v0 + 10056);
  }

  v35 = v87;
  if (!v5)
  {
    v35 = *(v0 + 10056);
  }

  v88 = v35;
  v36 = *(v0 + 11448);
  v37 = v29 == 0;
  if (!v29)
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v82 = v29;
  v84 = v34;
  if (v37)
  {
    v28 = *(v0 + 10056);
    v27 = v28;
  }

  v79 = v27;
  v80 = v28;
  v90 = *(v0 + 8040);
  if (v30)
  {
    v38 = *(v0 + 11832);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  if (v30)
  {
    v39 = *(v0 + 11880);
  }

  else
  {
    v39 = *(v0 + 10056);
  }

  v77 = v39;
  v78 = v38;
  if (v30)
  {
    v40 = *(v0 + 11928);
  }

  else
  {
    v40 = *(v0 + 10056);
  }

  if (v31)
  {
    v41 = *(v0 + 11640);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v75 = v41;
  v76 = v40;
  if (v31)
  {
    v42 = *(v0 + 11688);
  }

  else
  {
    v42 = *(v0 + 10056);
  }

  if (v31)
  {
    v43 = *(v0 + 11736);
  }

  else
  {
    v43 = *(v0 + 10056);
  }

  v73 = v43;
  v74 = v42;
  if (v36)
  {
    v44 = *(v0 + 11448);
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  if (v36)
  {
    v45 = *(v0 + 11496);
  }

  else
  {
    v45 = *(v0 + 10056);
  }

  v71 = v45;
  v72 = v44;
  if (v36)
  {
    v46 = *(v0 + 11544);
  }

  else
  {
    v46 = *(v0 + 10056);
  }

  v47 = sub_1B4D1771C();
  v48 = sub_1B4D178CC();
  v49 = _HKCacheIndexFromDate();

  v50 = *(v0 + 6968);
  *(v0 + 7080) = *(v0 + 6952);
  *(v0 + 7096) = v50;
  v51 = *(v0 + 7000);
  *(v0 + 7112) = *(v0 + 6984);
  *(v0 + 7128) = v51;
  v52 = *(v0 + 6904);
  *v26 = *(v0 + 6888);
  *(v0 + 7032) = v52;
  v53 = *(v0 + 6936);
  *(v0 + 7048) = *(v0 + 6920);
  *(v0 + 7064) = v53;
  nullsub_1();
  *(v0 + 7144) = v32;
  *(v0 + 7152) = v46;
  *(v0 + 7160) = v71;
  *(v0 + 7168) = v72;
  *(v0 + 7176) = v73;
  *(v0 + 7184) = v74;
  *(v0 + 7192) = v75;
  *(v0 + 7200) = v76;
  *(v0 + 7208) = v77;
  *(v0 + 7216) = v78;
  *(v0 + 7224) = v79;
  *(v0 + 7232) = v80;
  *(v0 + 7240) = v82;
  *(v0 + 7248) = v88;
  *(v0 + 7256) = v84;
  *(v0 + 7264) = v86;
  nullsub_1();
  sub_1B496F4FC((v0 + 7272));
  v54 = *(v0 + 7352);
  *(v0 + 6784) = *(v0 + 7336);
  *(v0 + 6800) = v54;
  v55 = *(v0 + 7384);
  *(v0 + 6816) = *(v0 + 7368);
  *(v0 + 6832) = v55;
  v56 = *(v0 + 7288);
  *(v0 + 6720) = *(v0 + 7272);
  *(v0 + 6736) = v56;
  v57 = *(v0 + 7320);
  *(v0 + 6752) = *(v0 + 7304);
  *(v0 + 6768) = v57;
  v58 = *v26;
  v59 = *(v0 + 7032);
  v60 = *(v0 + 7048);
  *(v0 + 6512) = *(v0 + 7064);
  *(v0 + 6496) = v60;
  *(v0 + 6480) = v59;
  *(v0 + 6464) = v58;
  v61 = *(v0 + 7080);
  v62 = *(v0 + 7096);
  v63 = *(v0 + 7112);
  *(v0 + 6576) = *(v0 + 7128);
  *(v0 + 6560) = v63;
  *(v0 + 6544) = v62;
  *(v0 + 6528) = v61;
  v64 = *(v0 + 7144);
  v65 = *(v0 + 7160);
  v66 = *(v0 + 7176);
  *(v0 + 6640) = *(v0 + 7192);
  *(v0 + 6624) = v66;
  *(v0 + 6608) = v65;
  *(v0 + 6592) = v64;
  v67 = *(v0 + 7208);
  v68 = *(v0 + 7224);
  v69 = *(v0 + 7240);
  *(v0 + 6704) = *(v0 + 7256);
  *(v0 + 6688) = v69;
  *(v0 + 6672) = v68;
  *(v0 + 6656) = v67;
  *(v0 + 6456) = v49;
  nullsub_1();
  memcpy(v90, (v0 + 6456), 0x188uLL);

  return MEMORY[0x1EEE6DEB0](v0 + 3216, v0 + 7656, sub_1B49F599C, v0 + 6848);
}

uint64_t sub_1B49F5AD4()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F5BB8, v0 + 1126);
}

uint64_t sub_1B49F5CE4()
{
  v1 = v0[1221];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F6124()
{
  v1 = v0[1221];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F6550()
{
  v1 = v0[1221];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F697C()
{
  v1 = v0[1221];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F6DA4()
{
  v1 = v0[1221];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F71D0()
{
  v1 = v0[1221];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);
  sub_1B4A03C40(0, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F7608()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F76EC, v0 + 1186);
}

uint64_t sub_1B49F7818()
{
  v14 = v0[1419];
  v11 = v0[1401];
  v12 = v0[1407];
  v10 = v0[1395];
  v1 = v0[1221];
  v13 = v0[1413];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(&unk_1B4D1F800, v10);
  sub_1B4A03C40(&unk_1B4D1F818, v11);
  sub_1B4A03C40(&unk_1B4D1F828, v12);
  sub_1B4A03C40(&unk_1B4D1F838, v13);
  sub_1B4A03C40(&unk_1B4D1F848, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F7CC0()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F7DA4, v0 + 1252);
}

uint64_t sub_1B49F7ED0()
{
  v14 = v0[1419];
  v11 = v0[1401];
  v12 = v0[1407];
  v10 = v0[1395];
  v1 = v0[1221];
  v13 = v0[1413];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(&unk_1B4D1F800, v10);
  sub_1B4A03C40(&unk_1B4D1F818, v11);
  sub_1B4A03C40(&unk_1B4D1F828, v12);
  sub_1B4A03C40(&unk_1B4D1F838, v13);
  sub_1B4A03C40(&unk_1B4D1F848, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F8378()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F845C, v0 + 1318);
}

uint64_t sub_1B49F8588()
{
  v14 = v0[1419];
  v11 = v0[1401];
  v12 = v0[1407];
  v10 = v0[1395];
  v1 = v0[1221];
  v13 = v0[1413];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(&unk_1B4D1F800, v10);
  sub_1B4A03C40(&unk_1B4D1F818, v11);
  sub_1B4A03C40(&unk_1B4D1F828, v12);
  sub_1B4A03C40(&unk_1B4D1F838, v13);
  sub_1B4A03C40(&unk_1B4D1F848, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F8A30()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F8B14, v0 + 1384);
}

uint64_t sub_1B49F8C40()
{
  v14 = v0[1419];
  v11 = v0[1401];
  v12 = v0[1407];
  v10 = v0[1395];
  v1 = v0[1221];
  v13 = v0[1413];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(&unk_1B4D1F800, v10);
  sub_1B4A03C40(&unk_1B4D1F818, v11);
  sub_1B4A03C40(&unk_1B4D1F828, v12);
  sub_1B4A03C40(&unk_1B4D1F838, v13);
  sub_1B4A03C40(&unk_1B4D1F848, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B49F90E8()
{
  v1 = v0[1089];
  v2 = v0[1083];
  v3 = v0[1077];
  v4 = v0[1071];
  sub_1B4A0540C(v0[1065], type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v3, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v2, type metadata accessor for WorkoutPropertiesQuery);
  sub_1B4A0540C(v1, type metadata accessor for WorkoutPropertiesQuery);

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 949, sub_1B49F91CC, v0 + 1450);
}

uint64_t sub_1B49F92F8()
{
  v14 = v0[1419];
  v11 = v0[1401];
  v12 = v0[1407];
  v10 = v0[1395];
  v1 = v0[1221];
  v13 = v0[1413];
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1179];
  v5 = v0[1173];
  v6 = v0[1167];
  v7 = v0[1161];
  sub_1B4A0540C(v0[1155], type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v6, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v5, type metadata accessor for RingsPropertiesQuery);
  sub_1B4A0540C(v4, type metadata accessor for RingsPropertiesQuery);
  (*(v2 + 8))(v1, v3);

  sub_1B4A03C40(&unk_1B4D1F800, v10);
  sub_1B4A03C40(&unk_1B4D1F818, v11);
  sub_1B4A03C40(&unk_1B4D1F828, v12);
  sub_1B4A03C40(&unk_1B4D1F838, v13);
  sub_1B4A03C40(&unk_1B4D1F848, v14);

  v8 = v0[1];

  return v8();
}

uint64_t SnapshotClient.query(cacheIndex:)(uint64_t a1, uint64_t *a2)
{
  v3[3] = a1;
  v5 = sub_1B4D1777C();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[6] = v6;
  v3[7] = v7;
  v3[8] = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B49F9710, 0, 0);
}

uint64_t sub_1B49F9710()
{
  v0[2] = v0[8];
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1B4D1796C();
  __swift_project_value_buffer(v2, qword_1EDC3CE48);
  CacheIndex.date(for:)(v1);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B49F9864;
  v4 = v0[6];
  v5 = v0[3];

  return SnapshotClient.querySnapshot(date:)(v5, v4);
}

uint64_t sub_1B49F9864()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    return MEMORY[0x1EEE6DFA0](sub_1B49F99D8, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1B49F99D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B49F9A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F0EAC;

  return SnapshotClient.execute(query:)(a1, a3);
}

uint64_t sub_1B49F9AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F35BC;

  return SnapshotClient.execute(query:)(a1, a3);
}

uint64_t sub_1B49F9B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F35BC;

  return SnapshotClient.execute(query:)(a1, a3);
}

uint64_t sub_1B49F9C4C(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DA364;

  return SnapshotClient.triggerSnapshotProcessing(reason:)(a1);
}

uint64_t sub_1B49F9CE0(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DA364;

  return SnapshotClient.invalidateSnapshots(from:)(a1);
}

uint64_t sub_1B49F9D74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B49AA274;

  return SnapshotClient.listAllCacheIndexes()();
}

uint64_t sub_1B49F9E00(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.mostRecentCacheIndex(type:)(a1, a2);
}

uint64_t sub_1B49F9ECC()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4D5F8D0;
  v3._object = 0x80000001B4D5F990;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 40) = 7;
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1B49F35BC;

  return v6(v0 + 40);
}

uint64_t sub_1B49FA004(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.execute(query:)(a1, a2);
}

uint64_t sub_1B49FA0AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.execute(query:)(a1, a2);
}

uint64_t sub_1B49FA154(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.execute(query:)(a1, a2);
}

uint64_t sub_1B49FA1FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DD034;

  return SnapshotClient.execute(queries:)(a1);
}

uint64_t sub_1B49FA290(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DD034;

  return SnapshotClient.execute(queries:)(a1);
}

uint64_t sub_1B49FA324(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49DD034;

  return SnapshotClient.execute(queries:)(a1);
}

uint64_t sub_1B49FA3B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4983F3C;

  return SnapshotClient.querySnapshot(date:)(a1, a2);
}

uint64_t sub_1B49FA460(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B49F35BC;

  return SnapshotClient.querySnapshot(date:)(a1, a2);
}

uint64_t sub_1B49FA514(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return SnapshotClient.query(cacheIndex:)(a1, a2);
}

unint64_t sub_1B49FA5BC()
{
  result = qword_1EDC36FF0;
  if (!qword_1EDC36FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36FF0);
  }

  return result;
}

unint64_t sub_1B49FA610()
{
  result = qword_1EB8A7A38;
  if (!qword_1EB8A7A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A71B0, &qword_1B4D1D2B0);
    sub_1B49FA694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A38);
  }

  return result;
}

unint64_t sub_1B49FA694()
{
  result = qword_1EB8A7A40;
  if (!qword_1EB8A7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A40);
  }

  return result;
}

unint64_t sub_1B49FA6E8()
{
  result = qword_1EB8A7A48;
  if (!qword_1EB8A7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7A48);
  }

  return result;
}

uint64_t sub_1B49FA73C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v8 = sub_1B4D18EDC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B4D18DCC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B49FE408(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B49FA88C(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v5 = sub_1B4D18EDC();
  v6 = v4 + 56;
  v7 = -1 << *(v4 + 32);
  v8 = v5 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v26 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v10 = 0xD000000000000018;
          v11 = 0x80000001B4D48E90;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0x5364696C61766E69;
          }

          else
          {
            v10 = 0x726568746FLL;
          }

          if (v9 == 4)
          {
            v11 = 0xEC00000065746174;
          }

          else
          {
            v11 = 0xE500000000000000;
          }
        }
      }

      else if (*(*(v4 + 48) + v8))
      {
        if (v9 == 1)
        {
          v10 = 0x7964616552746F6ELL;
        }

        else
        {
          v10 = 0xD000000000000011;
        }

        if (v9 == 1)
        {
          v11 = 0xE800000000000000;
        }

        else
        {
          v11 = 0x80000001B4D48E70;
        }
      }

      else
      {
        v10 = 0x6C62616E45746F6ELL;
        v11 = 0xEA00000000006465;
      }

      v12 = 0xD000000000000018;
      v13 = 0x5364696C61766E69;
      if (a2 != 4)
      {
        v13 = 0x726568746FLL;
      }

      v14 = 0xEC00000065746174;
      if (a2 != 4)
      {
        v14 = 0xE500000000000000;
      }

      if (a2 == 3)
      {
        v15 = 0x80000001B4D48E90;
      }

      else
      {
        v12 = v13;
        v15 = v14;
      }

      v16 = 0x7964616552746F6ELL;
      if (a2 != 1)
      {
        v16 = 0xD000000000000011;
      }

      v17 = 0xE800000000000000;
      if (a2 != 1)
      {
        v17 = 0x80000001B4D48E70;
      }

      if (!a2)
      {
        v16 = 0x6C62616E45746F6ELL;
        v17 = 0xEA00000000006465;
      }

      v18 = a2 <= 2u ? v16 : v12;
      v19 = a2 <= 2u ? v17 : v15;
      v20 = v4;
      if (v10 == v18 && v11 == v19)
      {
        break;
      }

      v21 = sub_1B4D18DCC();

      if (v21)
      {
        goto LABEL_45;
      }

      v8 = (v8 + 1) & v26;
      v4 = v20;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v20 + 48) + v8);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_1B49FE588(a2, v8, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B49FAC08(uint64_t a1, uint64_t *a2, double a3)
{
  v29 = a1;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  v6 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v27 = (&v26 - v10);
  v28 = v3;
  v11 = *v3;
  sub_1B4D18E8C();
  v12 = *a2;
  sub_1B4D00370(v31, *a2);
  v13 = Request;
  v14 = *(Request + 20);
  v30 = a2;
  FitnessContextQueryDescriptor.hash(into:)(v31);
  v15 = sub_1B4D18EDC();
  v16 = -1 << *(v11 + 32);
  v17 = v15 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v6 + 72);
    while (1)
    {
      sub_1B4A053A4(*(v11 + 48) + v19 * v17, v8, type metadata accessor for FitnessContextCoalescedQueryRequest);
      if (sub_1B4BD7FE0(*v8, v12) & 1) != 0 && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v8 + *(v13 + 20), v30 + v14))
      {
        break;
      }

      sub_1B4A0540C(v8, type metadata accessor for FitnessContextCoalescedQueryRequest);
      v17 = (v17 + 1) & v18;
      if (((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_1B4A0540C(v8, type metadata accessor for FitnessContextCoalescedQueryRequest);
    sub_1B4A0540C(v30, type metadata accessor for FitnessContextCoalescedQueryRequest);
    sub_1B4A053A4(*(v11 + 48) + v19 * v17, v29, type metadata accessor for FitnessContextCoalescedQueryRequest);
    return 0;
  }

  else
  {
LABEL_7:
    v21 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v30;
    v24 = v27;
    sub_1B4A053A4(v30, v27, type metadata accessor for FitnessContextCoalescedQueryRequest);
    *&v31[0] = *v21;
    sub_1B49FE944(v24, v17, isUniquelyReferenced_nonNull_native, v25);
    *v21 = *&v31[0];
    sub_1B4A0546C(v23, v29, type metadata accessor for FitnessContextCoalescedQueryRequest);
    return 1;
  }
}

uint64_t sub_1B49FAEC4(uint64_t a1, void *a2, double a3)
{
  v29 = a1;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v6 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v27 = (&v27 - v10);
  v28 = v3;
  v11 = *v3;
  sub_1B4D18E8C();
  v12 = *a2;
  v13 = a2[1];
  sub_1B4D1820C();
  v30 = Request;
  v31 = a2;
  v14 = *(Request + 20);
  FitnessContextQueryDescriptor.hash(into:)(v32);
  v15 = sub_1B4D18EDC();
  v16 = -1 << *(v11 + 32);
  v17 = v15 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v6 + 72);
    while (1)
    {
      sub_1B4A053A4(*(v11 + 48) + v19 * v17, v8, type metadata accessor for FitnessContextQueryRequest);
      v20 = *v8 == v12 && v8[1] == v13;
      if (v20 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v8 + *(v30 + 20), v31 + v14))
      {
        break;
      }

      sub_1B4A0540C(v8, type metadata accessor for FitnessContextQueryRequest);
      v17 = (v17 + 1) & v18;
      if (((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1B4A0540C(v8, type metadata accessor for FitnessContextQueryRequest);
    sub_1B4A0540C(v31, type metadata accessor for FitnessContextQueryRequest);
    sub_1B4A053A4(*(v11 + 48) + v19 * v17, v29, type metadata accessor for FitnessContextQueryRequest);
    return 0;
  }

  else
  {
LABEL_11:
    v21 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v31;
    v24 = v27;
    sub_1B4A053A4(v31, v27, type metadata accessor for FitnessContextQueryRequest);
    v32[0] = *v21;
    sub_1B49FEBC8(v24, v17, isUniquelyReferenced_nonNull_native, v25);
    *v21 = v32[0];
    sub_1B4A0546C(v23, v29, type metadata accessor for FitnessContextQueryRequest);
    return 1;
  }
}

uint64_t sub_1B49FB19C(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v4 = type metadata accessor for RingsPropertiesQuery(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v54 - v9;
  v57 = v2;
  v10 = *v2;
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v66);
  v11 = (a2 + v4[5]);
  v12 = v11[1];
  v13 = v11[2];
  sub_1B49C28E8(v66, *v11);
  sub_1B49C27B8(v66, v12);
  sub_1B49C2A9C(v66, v13);
  v14 = *(a2 + v4[6]);
  sub_1B49C4F70(v66, v14);
  v60 = v4;
  v15 = v4[7];
  v65 = a2;
  v55 = *(a2 + v15);
  sub_1B49C4BA0(v66, v55);
  v16 = sub_1B4D18EDC();
  v17 = v10 + 56;
  v63 = v10 + 56;
  v64 = v10;
  v18 = -1 << *(v10 + 32);
  v19 = v16 & ~v18;
  if (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_59:
    v50 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v65;
    v53 = v56;
    sub_1B4A053A4(v65, v56, type metadata accessor for RingsPropertiesQuery);
    v66[0] = *v50;
    sub_1B49FEE6C(v53, v19, isUniquelyReferenced_nonNull_native);
    *v50 = v66[0];
    sub_1B4A0546C(v52, v58, type metadata accessor for RingsPropertiesQuery);
    return 1;
  }

  v61 = ~v18;
  v62 = *(v5 + 72);
  v59 = v14;
  v54 = (v14 + 32);
  while (1)
  {
    v20 = v62 * v19;
    sub_1B4A053A4(*(v64 + 48) + v62 * v19, v7, type metadata accessor for RingsPropertiesQuery);
    if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v7, v65) & 1) == 0)
    {
      goto LABEL_4;
    }

    v21 = &v7[v60[5]];
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v26 = *v11;
    v25 = v11[1];
    v27 = v11[2];

    if ((sub_1B4A0A1C0(v22, v26) & 1) == 0 || (result = sub_1B4A0A568(v23, v25), (result & 1) == 0) || (v29 = *(v24 + 16), v29 != *(v27 + 16)))
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v29 && v24 != v27)
    {
      break;
    }

LABEL_14:

    v31 = *&v7[v60[6]];
    v32 = *(v31 + 16);
    if (v32 == *(v59 + 16))
    {
      if (v32)
      {
        v33 = v31 == v59;
      }

      else
      {
        v33 = 1;
      }

      if (!v33)
      {
        v37 = (v31 + 32);
        v38 = v54;
        while (v32)
        {
          v40 = *v37;
          v41 = *v38;
          if (v40 == 1)
          {
            v42 = 0x656557664F796164;
          }

          else
          {
            v42 = 0x646573756170;
          }

          if (v40 == 1)
          {
            v43 = 0xE90000000000006BLL;
          }

          else
          {
            v43 = 0xE600000000000000;
          }

          if (*v37)
          {
            v44 = v42;
          }

          else
          {
            v44 = 0x59664F68746E6F6DLL;
          }

          if (*v37)
          {
            v45 = v43;
          }

          else
          {
            v45 = 0xEB00000000726165;
          }

          if (v41 == 1)
          {
            v46 = 0x656557664F796164;
          }

          else
          {
            v46 = 0x646573756170;
          }

          if (v41 == 1)
          {
            v47 = 0xE90000000000006BLL;
          }

          else
          {
            v47 = 0xE600000000000000;
          }

          if (*v38)
          {
            v48 = v46;
          }

          else
          {
            v48 = 0x59664F68746E6F6DLL;
          }

          if (*v38)
          {
            v49 = v47;
          }

          else
          {
            v49 = 0xEB00000000726165;
          }

          if (v44 == v48 && v45 == v49)
          {
          }

          else
          {
            v39 = sub_1B4D18DCC();

            if ((v39 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          ++v37;
          ++v38;
          if (!--v32)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_61;
      }

LABEL_20:
      if (sub_1B4A0D49C(*&v7[v60[7]], v55))
      {
        sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
        sub_1B4A0540C(v65, type metadata accessor for RingsPropertiesQuery);
        sub_1B4A053A4(*(v64 + 48) + v20, v58, type metadata accessor for RingsPropertiesQuery);
        return 0;
      }
    }

LABEL_4:
    sub_1B4A0540C(v7, type metadata accessor for RingsPropertiesQuery);
    v19 = (v19 + 1) & v61;
    if (((*(v63 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v34 = 32;
  while (v29)
  {
    v35 = *(v24 + v34);
    v36 = *(v27 + v34);
    if (v35 == 2)
    {
      if (v36 != 2)
      {
        goto LABEL_3;
      }
    }

    else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
    {
      goto LABEL_3;
    }

    ++v34;
    if (!--v29)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1B49FB718(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v4 = type metadata accessor for WorkoutPropertiesQuery(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v52 - v9;
  v55 = v2;
  v10 = *v2;
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v77);
  v11 = (a2 + v4[5]);
  v12 = *(v11 + 1);
  v74 = *v11;
  v75 = v12;
  v64 = v11;
  v76 = *(v11 + 2);
  WorkoutPropertyDimensionsFilters.hash(into:)(v77);
  v13 = *(a2 + v4[6]);
  sub_1B49C4A60(v77, v13);
  v65 = v4;
  v14 = *(a2 + v4[7]);
  sub_1B49C4754(v77, v14);
  v15 = sub_1B4D18EDC();
  v16 = v10 + 56;
  v17 = -1 << *(v10 + 32);
  v18 = v15 & ~v17;
  if ((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v52 = v14;
    v53 = v13;
    v19 = ~v17;
    v20 = *(v5 + 72);
    v63 = a2;
    v62 = v10;
    v61 = v10 + 56;
    v60 = ~v17;
    v59 = v20;
    v58 = v7;
    while (1)
    {
      sub_1B4A053A4(*(v10 + 48) + v20 * v18, v7, type metadata accessor for WorkoutPropertiesQuery);
      if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v7, a2) & 1) == 0)
      {
        goto LABEL_4;
      }

      v66 = v18;
      v57 = v20 * v18;
      v21 = &v7[v65[5]];
      v23 = *v21;
      v22 = v21[1];
      v25 = v21[2];
      v24 = v21[3];
      v27 = v21[4];
      v26 = v21[5];
      v28 = *v64;
      v29 = v64[1];
      v30 = v64[2];
      v71 = v64[3];
      v31 = v64[5];
      v68 = v64[4];

      v73 = v22;

      v69 = v25;

      v70 = v29;
      v32 = v68;

      v72 = v30;
      v33 = v71;

      v67 = v28;
      if ((sub_1B4A0A1C0(v23, v28) & 1) == 0)
      {
        goto LABEL_3;
      }

      v34 = v27;
      v35 = v24;
      v36 = v69;
      if ((sub_1B4A0A568(v73, v70) & 1) == 0)
      {
        goto LABEL_3;
      }

      v37 = *(v36 + 16);
      if (v37 != *(v72 + 16))
      {
        goto LABEL_3;
      }

      if (v37 && v36 != v72)
      {
        v38 = 32;
        while (*(v36 + v38) == *(v72 + v38))
        {
          v38 += 8;
          if (!--v37)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_3;
      }

LABEL_14:
      v39 = *(v35 + 16);
      if (v39 != *(v33 + 16))
      {
        goto LABEL_3;
      }

      if (v39 && v35 != v33)
      {
        break;
      }

LABEL_20:
      if ((sub_1B4A0DB60(v34, v32) & 1) == 0)
      {
        goto LABEL_3;
      }

      v41 = *(v26 + 16);
      if (v41 != *(v31 + 16))
      {
        goto LABEL_3;
      }

      if (v41 && v26 != v31)
      {
        v42 = 0;
        while (1)
        {
          if (*(v26 + v42 + 32) != *(v31 + v42 + 32) || *(v26 + v42 + 40) != *(v31 + v42 + 40))
          {
            v44 = v41;
            v45 = sub_1B4D18DCC();
            v41 = v44;
            if ((v45 & 1) == 0)
            {
              break;
            }
          }

          v42 += 16;
          if (!--v41)
          {
            goto LABEL_36;
          }
        }

LABEL_3:

        a2 = v63;
        v10 = v62;
        v16 = v61;
        v19 = v60;
        v20 = v59;
        v7 = v58;
        v18 = v66;
        goto LABEL_4;
      }

LABEL_36:

      v7 = v58;
      v46 = sub_1B4A0DD68(*&v58[v65[6]], v53);
      a2 = v63;
      v10 = v62;
      v16 = v61;
      v19 = v60;
      v20 = v59;
      v47 = v57;
      v18 = v66;
      if (v46 & 1) != 0 && (sub_1B4A0DFD0(*&v7[v65[7]], v52))
      {
        sub_1B4A0540C(v7, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B4A0540C(a2, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B4A053A4(*(v10 + 48) + v47, v56, type metadata accessor for WorkoutPropertiesQuery);
        return 0;
      }

LABEL_4:
      sub_1B4A0540C(v7, type metadata accessor for WorkoutPropertiesQuery);
      v18 = (v18 + 1) & v19;
      if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v40 = 32;
    while (*(v35 + v40) == *(v33 + v40))
    {
      v40 += 8;
      if (!--v39)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_3;
  }

LABEL_39:
  v49 = v55;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v54;
  sub_1B4A053A4(a2, v54, type metadata accessor for WorkoutPropertiesQuery);
  v77[0] = *v49;
  sub_1B49FF3B4(v51, v18, isUniquelyReferenced_nonNull_native);
  *v49 = v77[0];
  sub_1B4A0546C(a2, v56, type metadata accessor for WorkoutPropertiesQuery);
  return 1;
}

uint64_t sub_1B49FBF90(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v40 - v9;
  v43 = v2;
  v10 = *v2;
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v61);
  v11 = (a2 + v4[5]);
  v12 = *(v11 + 4);
  v13 = *v11;
  v14 = v11[1];
  v53 = v11;
  v58 = v13;
  v59 = v14;
  v60 = v12;
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v61);
  v41 = *(a2 + v4[6]);
  sub_1B49C585C(v61, v41);
  v54 = v4;
  v40 = *(a2 + v4[7]);
  sub_1B49C571C(v61, v40);
  v15 = sub_1B4D18EDC();
  v16 = v10 + 56;
  v17 = -1 << *(v10 + 32);
  v18 = v15 & ~v17;
  if ((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    v52 = a2;
    v51 = v10;
    v50 = v10 + 56;
    v49 = ~v17;
    v48 = v20;
    v47 = v7;
    while (1)
    {
      sub_1B4A053A4(*(v10 + 48) + v20 * v18, v7, type metadata accessor for FitnessPlusPropertiesQuery);
      if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v7, a2) & 1) == 0)
      {
        goto LABEL_4;
      }

      v55 = v18;
      v46 = v20 * v18;
      v21 = &v7[v54[5]];
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = v21[4];
      v27 = *v53;
      v28 = v53[1];
      v30 = v53[2];
      v29 = v53[3];
      v31 = v53[4];

      v57 = v23;

      v56 = v27;
      if ((sub_1B4A0A1C0(v22, v27) & 1) == 0)
      {
        goto LABEL_3;
      }

      if ((sub_1B4A0A568(v57, v28) & 1) == 0)
      {
        goto LABEL_3;
      }

      v45 = v28;
      v32 = *(v24 + 16);
      if (v32 != *(v30 + 16))
      {
        goto LABEL_3;
      }

      if (v32 && v24 != v30)
      {
        break;
      }

LABEL_14:
      if ((sub_1B4A0C9A8(v25, v29) & 1) == 0)
      {
        goto LABEL_3;
      }

      v34 = sub_1B4A0CDB8(v26, v31);

      a2 = v52;
      v10 = v51;
      v16 = v50;
      v19 = v49;
      v20 = v48;
      v7 = v47;
      v35 = v46;
      v18 = v55;
      if (v34 & 1) != 0 && (sub_1B4A0CEAC(*&v47[v54[6]], v41) & 1) != 0 && (sub_1B4A0D0D0(*&v7[v54[7]], v40))
      {
        sub_1B4A0540C(v7, type metadata accessor for FitnessPlusPropertiesQuery);
        sub_1B4A0540C(a2, type metadata accessor for FitnessPlusPropertiesQuery);
        sub_1B4A053A4(*(v10 + 48) + v35, v44, type metadata accessor for FitnessPlusPropertiesQuery);
        return 0;
      }

LABEL_4:
      sub_1B4A0540C(v7, type metadata accessor for FitnessPlusPropertiesQuery);
      v18 = (v18 + 1) & v19;
      if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v33 = 32;
    while (*(v24 + v33) == *(v30 + v33))
    {
      v33 += 8;
      if (!--v32)
      {
        goto LABEL_14;
      }
    }

LABEL_3:

    a2 = v52;
    v10 = v51;
    v16 = v50;
    v19 = v49;
    v20 = v48;
    v7 = v47;
    v18 = v55;
    goto LABEL_4;
  }

LABEL_21:
  v36 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v42;
  sub_1B4A053A4(a2, v42, type metadata accessor for FitnessPlusPropertiesQuery);
  v61[0] = *v36;
  sub_1B49FFC78(v38, v18, isUniquelyReferenced_nonNull_native);
  *v36 = v61[0];
  sub_1B4A0546C(a2, v44, type metadata accessor for FitnessPlusPropertiesQuery);
  return 1;
}

uint64_t sub_1B49FC5E8(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](a2);
  v6 = sub_1B4D18EDC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B4A00290(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B49FC6E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7070, &qword_1B4D1CCB0);
  result = sub_1B4D1891C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B49FC940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AE8, &qword_1B4D1F9A0);
  result = sub_1B4D1891C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B49FCC68(uint64_t a1, double a2)
{
  v3 = v2;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  v26 = *(Request - 8);
  v27 = Request;
  MEMORY[0x1EEE9AC00](Request);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B20, &unk_1B4D1F9D0);
  result = sub_1B4D1891C();
  v9 = result;
  if (*(v7 + 16))
  {
    v24 = v2;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    for (i = result + 56; v14; ++*(v9 + 16))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v19 = *(v26 + 72);
      sub_1B4A0546C(*(v7 + 48) + v19 * (v16 | (v10 << 6)), v6, type metadata accessor for FitnessContextCoalescedQueryRequest);
      sub_1B4D18E8C();
      sub_1B4D00370(v28, *v6);
      FitnessContextQueryDescriptor.hash(into:)(v28);
      sub_1B4D18EDC();
      v20 = i;
      v21 = sub_1B4D188FC();
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1B4A0546C(v6, *(v9 + 48) + v21 * v19, type metadata accessor for FitnessContextCoalescedQueryRequest);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v15)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v22 = 1 << *(v7 + 32);
    if (v22 >= 64)
    {
      bzero((v7 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v22;
    }

    v3 = v24;
    *(v7 + 16) = 0;
  }

  *v3 = v9;
  return result;
}

uint64_t sub_1B49FCF14(uint64_t a1, double a2)
{
  v3 = v2;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v31 = *(Request - 8);
  v32 = Request;
  MEMORY[0x1EEE9AC00](Request);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B0, &qword_1B4D1E2C8);
  result = sub_1B4D1891C();
  v9 = result;
  if (*(v7 + 16))
  {
    v30 = v2;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v31 + 72);
      sub_1B4A0546C(*(v7 + 48) + v21 * (v18 | (v10 << 6)), v6, type metadata accessor for FitnessContextQueryRequest);
      sub_1B4D18E8C();
      sub_1B4D1820C();
      FitnessContextQueryDescriptor.hash(into:)(v33);
      result = sub_1B4D18EDC();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_1B4A0546C(v6, *(v9 + 48) + v17 * v21, type metadata accessor for FitnessContextQueryRequest);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    v3 = v30;
    *(v7 + 16) = 0;
  }

  *v3 = v9;
  return result;
}

void *sub_1B49FD234(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RingsPropertiesQuery(0);
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B08, &unk_1B4D1F9C0);
  v6 = sub_1B4D1891C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v8 = 0;
    v9 = *(v5 + 56);
    v37 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v9;
    v13 = (v10 + 63) >> 6;
    v38 = v6 + 56;
    v39 = v13;
    v41 = v3;
    v42 = v5;
    v40 = v6;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_14:
      v21 = *(v5 + 48);
      v44 = *(v43 + 72);
      v22 = v46;
      sub_1B4A0546C(v21 + v44 * (v17 | (v8 << 6)), v46, type metadata accessor for RingsPropertiesQuery);
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)(v47);
      v23 = (v22 + *(v3 + 20));
      v24 = v23[1];
      v25 = v23[2];
      sub_1B49C28E8(v47, *v23);
      MEMORY[0x1B8C7D290](*(v24 + 16));
      v26 = *(v24 + 16);
      if (v26)
      {
        v27 = v24 + 32;
        do
        {
          ++v27;
          sub_1B4D1820C();

          --v26;
        }

        while (v26);
      }

      MEMORY[0x1B8C7D290](*(v25 + 16));
      v28 = *(v25 + 16);
      if (v28)
      {
        v29 = (v25 + 32);
        do
        {
          v30 = *v29++;
          if (v30 != 2)
          {
            sub_1B4D18EAC();
          }

          sub_1B4D18EAC();
          --v28;
        }

        while (v28);
      }

      v3 = v41;
      v31 = *(v46 + *(v41 + 24));
      MEMORY[0x1B8C7D290](*(v31 + 16));
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = v31 + 32;
        do
        {
          ++v33;
          sub_1B4D1820C();

          --v32;
        }

        while (v32);
      }

      v14 = v46;
      sub_1B49C4BA0(v47, *(v46 + *(v3 + 28)));
      sub_1B4D18EDC();
      v7 = v40;
      v15 = v38;
      v16 = sub_1B4D188FC();
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_1B4A0546C(v14, *(v7 + 48) + v16 * v44, type metadata accessor for RingsPropertiesQuery);
      ++*(v7 + 16);
      v5 = v42;
      v13 = v39;
      v12 = v45;
    }

    v18 = v8;
    result = v37;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v37[v8];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v5 + 32);
    if (v34 >= 64)
    {
      bzero(v37, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v34;
    }

    v2 = v36;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

void *sub_1B49FD714(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WorkoutPropertiesQuery(0);
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B00, &qword_1B4D1F9B8);
  v6 = sub_1B4D1891C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = *(v5 + 56);
    v32 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v9;
    v13 = (v10 + 63) >> 6;
    v33 = v6 + 56;
    v34 = v13;
    v36 = v3;
    v37 = v5;
    v35 = v6;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_14:
      v22 = *(v5 + 48);
      v39 = *(v38 + 72);
      v23 = v41;
      sub_1B4A0546C(v22 + v39 * (v18 | (v8 << 6)), v41, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)(v45);
      v24 = (v23 + *(v3 + 20));
      v25 = v24[1];
      v42 = *v24;
      v43 = v25;
      v44 = v24[2];
      WorkoutPropertyDimensionsFilters.hash(into:)(v45);
      v26 = *(v23 + *(v3 + 24));
      v27 = *(v26 + 16);
      MEMORY[0x1B8C7D290](v27);
      if (v27)
      {
        v28 = v26 + 32;
        do
        {
          ++v28;
          sub_1B4D1820C();

          --v27;
        }

        while (v27);
      }

      v14 = v36;
      v15 = v41;
      sub_1B49C4754(v45, *(v41 + *(v36 + 28)));
      sub_1B4D18EDC();
      v7 = v35;
      v16 = v33;
      v17 = sub_1B4D188FC();
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v3 = v14;
      sub_1B4A0546C(v15, *(v7 + 48) + v17 * v39, type metadata accessor for WorkoutPropertiesQuery);
      ++*(v7 + 16);
      v5 = v37;
      v13 = v34;
      v12 = v40;
    }

    v19 = v8;
    result = v32;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v32[v8];
      ++v19;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v32, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

void *sub_1B49FDB70(uint64_t a1)
{
  v2 = v1;
  v50 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v44 = *(v50 - 1);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF8, &qword_1B4D1F9B0);
  v5 = sub_1B4D1891C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v38 = v1;
    v7 = 0;
    v8 = *(v4 + 56);
    v39 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v8;
    v12 = (v9 + 63) >> 6;
    v52 = 0x80000001B4D48BA0;
    v53 = 0x80000001B4D48DB0;
    v40 = v5 + 56;
    v41 = v12;
    v42 = v5;
    v43 = v4;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v49 = (v11 - 1) & v11;
LABEL_14:
      v19 = *(v4 + 48);
      v48 = *(v44 + 72);
      v20 = v51;
      sub_1B4A0546C(v19 + v48 * (v15 | (v7 << 6)), v51, type metadata accessor for FitnessPlusPropertiesQuery);
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)(v54);
      v21 = (v20 + v50[5]);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[3];
      v45 = v21[2];
      v46 = v24;
      v47 = v21[4];
      sub_1B49C28E8(v54, v22);
      v25 = *(v23 + 16);
      MEMORY[0x1B8C7D290](v25);
      if (v25)
      {
        v26 = v23 + 32;
        do
        {
          ++v26;
          sub_1B4D1820C();

          --v25;
        }

        while (v25);
      }

      v27 = v45;
      MEMORY[0x1B8C7D290](*(v45 + 16));
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = (v27 + 32);
        do
        {
          v30 = *v29++;
          MEMORY[0x1B8C7D2C0](v30);
          --v28;
        }

        while (v28);
      }

      sub_1B49C551C(v54, v46);
      sub_1B49C5454(v54, v47);
      v31 = *(v51 + v50[6]);
      MEMORY[0x1B8C7D290](*(v31 + 16));
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = v31 + 32;
        do
        {
          ++v33;
          sub_1B4D1820C();

          --v32;
        }

        while (v32);
      }

      v34 = *(v51 + v50[7]);
      MEMORY[0x1B8C7D290](*(v34 + 16));
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = v34 + 32;
        do
        {
          ++v36;
          sub_1B4D1820C();

          --v35;
        }

        while (v35);
      }

      sub_1B4D18EDC();
      v6 = v42;
      v13 = v40;
      v14 = sub_1B4D188FC();
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      sub_1B4A0546C(v51, *(v6 + 48) + v14 * v48, type metadata accessor for FitnessPlusPropertiesQuery);
      ++*(v6 + 16);
      v4 = v43;
      v12 = v41;
      v11 = v49;
    }

    v16 = v7;
    result = v39;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v39[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    v37 = 1 << *(v4 + 32);
    if (v37 >= 64)
    {
      bzero(v39, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v39 = -1 << v37;
    }

    v2 = v38;
    *(v4 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B49FE1B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF0, &qword_1B4D1F9A8);
  result = sub_1B4D1891C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D2C0](v17);
      result = sub_1B4D18EDC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1B49FE408(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B49FC6E0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1B4A003DC();
      goto LABEL_16;
    }

    sub_1B4A011F4(v8 + 1);
  }

  v10 = *v4;
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v11 = sub_1B4D18EDC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1B4D18DCC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1B4D18E0C();
  __break(1u);
}

uint64_t sub_1B49FE588(uint64_t result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1B49FC940(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1B4A00538();
      goto LABEL_50;
    }

    sub_1B4A0142C(v5 + 1);
  }

  v7 = *v3;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  result = sub_1B4D18EDC();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0xD000000000000018;
          v12 = 0x80000001B4D48E90;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 0x5364696C61766E69;
          }

          else
          {
            v11 = 0x726568746FLL;
          }

          if (v10 == 4)
          {
            v12 = 0xEC00000065746174;
          }

          else
          {
            v12 = 0xE500000000000000;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x7964616552746F6ELL;
        }

        else
        {
          v11 = 0xD000000000000011;
        }

        if (v10 == 1)
        {
          v12 = 0xE800000000000000;
        }

        else
        {
          v12 = 0x80000001B4D48E70;
        }
      }

      else
      {
        v11 = 0x6C62616E45746F6ELL;
        v12 = 0xEA00000000006465;
      }

      v13 = 0xD000000000000018;
      v14 = 0x5364696C61766E69;
      if (v27 != 4)
      {
        v14 = 0x726568746FLL;
      }

      v15 = 0xEC00000065746174;
      if (v27 != 4)
      {
        v15 = 0xE500000000000000;
      }

      if (v27 == 3)
      {
        v16 = 0x80000001B4D48E90;
      }

      else
      {
        v13 = v14;
        v16 = v15;
      }

      v17 = 0x7964616552746F6ELL;
      if (v27 != 1)
      {
        v17 = 0xD000000000000011;
      }

      v18 = 0xE800000000000000;
      if (v27 != 1)
      {
        v18 = 0x80000001B4D48E70;
      }

      if (!v27)
      {
        v17 = 0x6C62616E45746F6ELL;
        v18 = 0xEA00000000006465;
      }

      v19 = v27 <= 2u ? v17 : v13;
      v20 = v27 <= 2u ? v18 : v16;
      if (v11 == v19 && v12 == v20)
      {
        goto LABEL_53;
      }

      v21 = sub_1B4D18DCC();

      if (v21)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v27;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  result = sub_1B4D18E0C();
  __break(1u);
  return result;
}

uint64_t sub_1B49FE944(uint64_t *a1, unint64_t a2, char a3, double a4)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  v28 = *(Request - 8);
  v9 = MEMORY[0x1EEE9AC00](Request);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v27 = v4;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    sub_1B49FCC68(v12 + 1, v9);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4A00678(v9);
      goto LABEL_14;
    }

    sub_1B4A01724(v12 + 1, v9);
  }

  v14 = *v4;
  sub_1B4D18E8C();
  v15 = *a1;
  sub_1B4D00370(v29, *a1);
  v16 = *(Request + 20);
  FitnessContextQueryDescriptor.hash(into:)(v29);
  v17 = sub_1B4D18EDC();
  v18 = -1 << *(v14 + 32);
  a2 = v17 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v28 + 72);
    while (1)
    {
      sub_1B4A053A4(*(v14 + 48) + v20 * a2, v11, type metadata accessor for FitnessContextCoalescedQueryRequest);
      if (sub_1B4BD7FE0(*v11, v15) & 1) != 0 && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v11 + *(Request + 20), a1 + v16))
      {
        break;
      }

      sub_1B4A0540C(v11, type metadata accessor for FitnessContextCoalescedQueryRequest);
      a2 = (a2 + 1) & v19;
      if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_1B4A0540C(v11, type metadata accessor for FitnessContextCoalescedQueryRequest);
    sub_1B4D18E0C();
    __break(1u);
  }

LABEL_14:
  v21 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(a1, *(v21 + 48) + *(v28 + 72) * a2, type metadata accessor for FitnessContextCoalescedQueryRequest);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_1B49FEBC8(uint64_t *a1, unint64_t a2, char a3, double a4)
{
  v29 = a1;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v28 = *(Request - 8);
  v8 = MEMORY[0x1EEE9AC00](Request);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*v4 + 16);
  v12 = *(*v4 + 24);
  v27 = v4;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1B49FCF14(v11 + 1, v8);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1B4A00884(v8);
      goto LABEL_18;
    }

    sub_1B4A019A4(v11 + 1, v8);
  }

  v13 = *v4;
  sub_1B4D18E8C();
  v14 = *v29;
  v15 = v29[1];
  sub_1B4D1820C();
  v16 = *(Request + 20);
  FitnessContextQueryDescriptor.hash(into:)(v30);
  v17 = sub_1B4D18EDC();
  v18 = -1 << *(v13 + 32);
  a2 = v17 & ~v18;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v28 + 72);
    do
    {
      sub_1B4A053A4(*(v13 + 48) + v20 * a2, v10, type metadata accessor for FitnessContextQueryRequest);
      v21 = *v10 == v14 && v10[1] == v15;
      if (v21 || (sub_1B4D18DCC()) && (_s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v10 + *(Request + 20), v29 + v16))
      {
        goto LABEL_21;
      }

      sub_1B4A0540C(v10, type metadata accessor for FitnessContextQueryRequest);
      a2 = (a2 + 1) & v19;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v22 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(v29, *(v22 + 48) + *(v28 + 72) * a2, type metadata accessor for FitnessContextQueryRequest);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  sub_1B4A0540C(v10, type metadata accessor for FitnessContextQueryRequest);
  result = sub_1B4D18E0C();
  __break(1u);
  return result;
}

uint64_t sub_1B49FEE6C(uint64_t a1, unint64_t a2, char a3)
{
  v58 = type metadata accessor for RingsPropertiesQuery(0);
  v7 = *(v58 - 1);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v56 = v7;
  v57 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_66;
  }

  if (a3)
  {
    sub_1B49FD234(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B4A00A90();
      goto LABEL_66;
    }

    sub_1B4A01C94(v10 + 1);
  }

  v12 = *v3;
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v63);
  v13 = v58;
  v14 = (a1 + v58[5]);
  v15 = v14[1];
  v16 = v14[2];
  sub_1B49C28E8(v63, *v14);
  sub_1B49C27B8(v63, v15);
  sub_1B49C2A9C(v63, v16);
  v17 = *(a1 + v13[6]);
  sub_1B49C4F70(v63, v17);
  v54 = *(a1 + v13[7]);
  sub_1B49C4BA0(v63, v54);
  v18 = sub_1B4D18EDC();
  v61 = v12 + 56;
  v62 = v12;
  v19 = -1 << *(v12 + 32);
  a2 = v18 & ~v19;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v59 = ~v19;
    v60 = *(v7 + 72);
    v55 = v17;
    v53 = (v17 + 32);
    do
    {
      sub_1B4A053A4(*(v62 + 48) + v60 * a2, v9, type metadata accessor for RingsPropertiesQuery);
      if (_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v9, a1))
      {
        v20 = &v9[v58[5]];
        v22 = *v20;
        v21 = v20[1];
        v23 = v20[2];
        v24 = *v14;
        v25 = v14[1];
        v26 = v14[2];

        if ((sub_1B4A0A1C0(v22, v24) & 1) != 0 && (sub_1B4A0A568(v21, v25) & 1) != 0 && (v27 = *(v23 + 16), v27 == *(v26 + 16)))
        {
          if (v27)
          {
            v28 = v23 == v26;
          }

          else
          {
            v28 = 1;
          }

          if (!v28)
          {
            v32 = 32;
            while (v27)
            {
              v33 = *(v23 + v32);
              v34 = *(v26 + v32);
              if (v33 == 2)
              {
                if (v34 != 2)
                {
                  goto LABEL_10;
                }
              }

              else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
              {
                goto LABEL_10;
              }

              ++v32;
              if (!--v27)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            sub_1B4A0540C(v9, type metadata accessor for RingsPropertiesQuery);
            result = sub_1B4D18E0C();
            __break(1u);
            return result;
          }

LABEL_21:

          v29 = *&v9[v58[6]];
          v30 = *(v29 + 16);
          if (v30 == *(v55 + 16))
          {
            if (v30)
            {
              v31 = v29 == v55;
            }

            else
            {
              v31 = 1;
            }

            if (!v31)
            {
              v35 = (v29 + 32);
              v36 = v53;
              while (v30)
              {
                v38 = *v35;
                v39 = *v36;
                if (v38 == 1)
                {
                  v40 = 0x656557664F796164;
                }

                else
                {
                  v40 = 0x646573756170;
                }

                if (v38 == 1)
                {
                  v41 = 0xE90000000000006BLL;
                }

                else
                {
                  v41 = 0xE600000000000000;
                }

                if (*v35)
                {
                  v42 = v40;
                }

                else
                {
                  v42 = 0x59664F68746E6F6DLL;
                }

                if (*v35)
                {
                  v43 = v41;
                }

                else
                {
                  v43 = 0xEB00000000726165;
                }

                if (v39 == 1)
                {
                  v44 = 0x656557664F796164;
                }

                else
                {
                  v44 = 0x646573756170;
                }

                if (v39 == 1)
                {
                  v45 = 0xE90000000000006BLL;
                }

                else
                {
                  v45 = 0xE600000000000000;
                }

                if (*v36)
                {
                  v46 = v44;
                }

                else
                {
                  v46 = 0x59664F68746E6F6DLL;
                }

                if (*v36)
                {
                  v47 = v45;
                }

                else
                {
                  v47 = 0xEB00000000726165;
                }

                if (v42 == v46 && v43 == v47)
                {
                }

                else
                {
                  v37 = sub_1B4D18DCC();

                  if ((v37 & 1) == 0)
                  {
                    goto LABEL_11;
                  }
                }

                ++v35;
                ++v36;
                if (!--v30)
                {
                  goto LABEL_27;
                }
              }

              goto LABEL_69;
            }

LABEL_27:
            if (sub_1B4A0D49C(*&v9[v58[7]], v54))
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
LABEL_10:
        }
      }

LABEL_11:
      sub_1B4A0540C(v9, type metadata accessor for RingsPropertiesQuery);
      a2 = (a2 + 1) & v59;
    }

    while (((*(v61 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_66:
  v48 = *v57;
  *(*v57 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(a1, *(v48 + 48) + *(v56 + 72) * a2, type metadata accessor for RingsPropertiesQuery);
  v50 = *(v48 + 16);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    goto LABEL_70;
  }

  *(v48 + 16) = v52;
  return result;
}

uint64_t sub_1B49FF3B4(uint64_t a1, unint64_t a2, char a3)
{
  v60 = type metadata accessor for WorkoutPropertiesQuery(0);
  v52 = *(v60 - 1);
  MEMORY[0x1EEE9AC00](v60);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v51 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_1B49FD714(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1B4A00C9C();
      goto LABEL_47;
    }

    sub_1B4A02140(v9 + 1);
  }

  v11 = *v3;
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v72);
  v12 = v60;
  v13 = (a1 + v60[5]);
  v14 = *(v13 + 1);
  v69 = *v13;
  v70 = v14;
  v59 = v13;
  v71 = *(v13 + 2);
  WorkoutPropertyDimensionsFilters.hash(into:)(v72);
  v50 = *(a1 + v12[6]);
  sub_1B49C4A60(v72, v50);
  v49 = *(a1 + v12[7]);
  sub_1B49C4754(v72, v49);
  v15 = sub_1B4D18EDC();
  v16 = v11 + 56;
  v17 = -1 << *(v11 + 32);
  a2 = v15 & ~v17;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v52 + 72);
    v58 = a1;
    v57 = v11;
    v56 = v11 + 56;
    v55 = ~v17;
    v54 = v19;
    v53 = v8;
    while (1)
    {
      sub_1B4A053A4(*(v11 + 48) + v19 * a2, v8, type metadata accessor for WorkoutPropertiesQuery);
      if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v8, a1) & 1) == 0)
      {
        goto LABEL_11;
      }

      v61 = a2;
      v20 = &v8[v60[5]];
      v22 = *v20;
      v21 = v20[1];
      v24 = v20[2];
      v23 = v20[3];
      v26 = v20[4];
      v25 = v20[5];
      v28 = *v59;
      v27 = v59[1];
      v29 = v59[2];
      v66 = v59[3];
      v30 = v59[5];
      v63 = v59[4];

      v68 = v21;

      v64 = v24;

      v67 = v27;
      v31 = v63;

      v65 = v29;
      v32 = v66;

      v62 = v28;
      if ((sub_1B4A0A1C0(v22, v28) & 1) == 0)
      {
        goto LABEL_10;
      }

      v33 = v26;
      v34 = v23;
      v35 = v64;
      if ((sub_1B4A0A568(v68, v67) & 1) == 0)
      {
        goto LABEL_10;
      }

      v36 = *(v35 + 16);
      if (v36 != *(v65 + 16))
      {
        goto LABEL_10;
      }

      if (v36 && v35 != v65)
      {
        v37 = 32;
        while (*(v35 + v37) == *(v65 + v37))
        {
          v37 += 8;
          if (!--v36)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_10;
      }

LABEL_21:
      v38 = *(v34 + 16);
      if (v38 != *(v32 + 16))
      {
        goto LABEL_10;
      }

      if (v38 && v34 != v32)
      {
        break;
      }

LABEL_27:
      if ((sub_1B4A0DB60(v33, v31) & 1) == 0)
      {
        goto LABEL_10;
      }

      v40 = *(v25 + 16);
      if (v40 != *(v30 + 16))
      {
        goto LABEL_10;
      }

      if (v40 && v25 != v30)
      {
        v41 = 0;
        while (1)
        {
          v42 = *(v25 + v41 + 32) == *(v30 + v41 + 32) && *(v25 + v41 + 40) == *(v30 + v41 + 40);
          if (!v42 && (sub_1B4D18DCC() & 1) == 0)
          {
            break;
          }

          v41 += 16;
          if (!--v40)
          {
            goto LABEL_44;
          }
        }

LABEL_10:

        a1 = v58;

        v11 = v57;
        v16 = v56;
        v18 = v55;
        v19 = v54;
        v8 = v53;
        a2 = v61;
        goto LABEL_11;
      }

LABEL_44:

      a1 = v58;

      v8 = v53;
      v43 = sub_1B4A0DD68(*&v53[v60[6]], v50);
      v11 = v57;
      v16 = v56;
      v18 = v55;
      v19 = v54;
      a2 = v61;
      if (v43 & 1) != 0 && (sub_1B4A0DFD0(*&v8[v60[7]], v49))
      {
        sub_1B4A0540C(v8, type metadata accessor for WorkoutPropertiesQuery);
        sub_1B4D18E0C();
        __break(1u);
        goto LABEL_47;
      }

LABEL_11:
      sub_1B4A0540C(v8, type metadata accessor for WorkoutPropertiesQuery);
      a2 = (a2 + 1) & v18;
      if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v39 = 32;
    while (*(v34 + v39) == *(v32 + v39))
    {
      v39 += 8;
      if (!--v38)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_10;
  }

LABEL_47:
  v44 = *v51;
  *(*v51 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(a1, *(v44 + 48) + *(v52 + 72) * a2, type metadata accessor for WorkoutPropertiesQuery);
  v46 = *(v44 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    *(v44 + 16) = v48;
  }

  return result;
}

uint64_t sub_1B49FFC78(uint64_t a1, unint64_t a2, char a3)
{
  v56 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v47 = *(v56 - 1);
  MEMORY[0x1EEE9AC00](v56);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v3;
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v11 = v48;
      sub_1B49FDB70(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_1B4A00EA8();
        goto LABEL_28;
      }

      v11 = v48;
      sub_1B4A02570(v9 + 1);
    }

    v12 = *v11;
    sub_1B4D18E8C();
    DateRangeDescriptor.hash(into:)(v64);
    v13 = v56;
    v14 = (a1 + v56[5]);
    v15 = *(v14 + 4);
    v16 = *v14;
    v17 = v14[1];
    v55 = v14;
    v61 = v16;
    v62 = v17;
    v63 = v15;
    FitnessPlusPropertyDimensionsFilters.hash(into:)(v64);
    v46 = *(a1 + v13[6]);
    sub_1B49C585C(v64, v46);
    v45 = *(a1 + v13[7]);
    sub_1B49C571C(v64, v45);
    v18 = sub_1B4D18EDC();
    v19 = v12 + 56;
    v20 = -1 << *(v12 + 32);
    a2 = v18 & ~v20;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v21 = ~v20;
      v22 = *(v47 + 72);
      v54 = a1;
      v53 = v12;
      v52 = v12 + 56;
      v51 = ~v20;
      v50 = v22;
      v49 = v8;
      while (1)
      {
        sub_1B4A053A4(*(v12 + 48) + v22 * a2, v8, type metadata accessor for FitnessPlusPropertiesQuery);
        if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v8, a1) & 1) == 0)
        {
          goto LABEL_11;
        }

        v57 = a2;
        v23 = &v8[v56[5]];
        v25 = *v23;
        v24 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = v23[4];
        v30 = *v55;
        v29 = v55[1];
        v31 = v55[2];
        v32 = v55[3];
        v33 = v55[4];

        v60 = v31;

        v58 = v30;
        v34 = sub_1B4A0A1C0(v25, v30);
        v59 = v29;
        if ((v34 & 1) == 0)
        {
          goto LABEL_10;
        }

        v35 = v26;
        v36 = v60;
        if ((sub_1B4A0A568(v24, v29) & 1) == 0)
        {
          goto LABEL_10;
        }

        v37 = *(v35 + 16);
        if (v37 != *(v36 + 16))
        {
          goto LABEL_10;
        }

        if (v37 && v35 != v36)
        {
          break;
        }

LABEL_21:
        if ((sub_1B4A0C9A8(v27, v32) & 1) == 0)
        {
          goto LABEL_10;
        }

        v39 = sub_1B4A0CDB8(v28, v33);

        a1 = v54;
        v12 = v53;
        v19 = v52;
        v21 = v51;
        v22 = v50;
        v8 = v49;
        a2 = v57;
        if (v39 & 1) != 0 && (sub_1B4A0CEAC(*&v49[v56[6]], v46) & 1) != 0 && (sub_1B4A0D0D0(*&v8[v56[7]], v45))
        {
          goto LABEL_31;
        }

LABEL_11:
        sub_1B4A0540C(v8, type metadata accessor for FitnessPlusPropertiesQuery);
        a2 = (a2 + 1) & v21;
        if (((*(v19 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v38 = 32;
      while (*(v35 + v38) == *(v36 + v38))
      {
        v38 += 8;
        if (!--v37)
        {
          goto LABEL_21;
        }
      }

LABEL_10:

      a1 = v54;
      v12 = v53;
      v19 = v52;
      v21 = v51;
      v22 = v50;
      v8 = v49;
      a2 = v57;
      goto LABEL_11;
    }
  }

LABEL_28:
  v40 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4A0546C(a1, *(v40 + 48) + *(v47 + 72) * a2, type metadata accessor for FitnessPlusPropertiesQuery);
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
LABEL_31:
    sub_1B4A0540C(v8, type metadata accessor for FitnessPlusPropertiesQuery);
    result = sub_1B4D18E0C();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

uint64_t sub_1B4A00290(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B49FE1B8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B4A010B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B4A02B8C(v5 + 1);
  }

  v8 = *v3;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v4);
  result = sub_1B4D18EDC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4D18E0C();
  __break(1u);
  return result;
}

void sub_1B4A003DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7070, &qword_1B4D1CCB0);
  v2 = *v0;
  v3 = sub_1B4D1890C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void *sub_1B4A00538()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AE8, &qword_1B4D1F9A0);
  v2 = *v0;
  v3 = sub_1B4D1890C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1B4A00678(double a1)
{
  v2 = v1;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  v4 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B20, &unk_1B4D1F9D0);
  v7 = *v1;
  v8 = sub_1B4D1890C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v4 + 72) * (v19 | (v13 << 6));
        sub_1B4A053A4(*(v7 + 48) + v22, v6, type metadata accessor for FitnessContextCoalescedQueryRequest);
        result = sub_1B4A0546C(v6, *(v9 + 48) + v22, type metadata accessor for FitnessContextCoalescedQueryRequest);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v9;
  }

  return result;
}

void *sub_1B4A00884(double a1)
{
  v2 = v1;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v4 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B0, &qword_1B4D1E2C8);
  v7 = *v1;
  v8 = sub_1B4D1890C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v4 + 72) * (v19 | (v13 << 6));
        sub_1B4A053A4(*(v7 + 48) + v22, v6, type metadata accessor for FitnessContextQueryRequest);
        result = sub_1B4A0546C(v6, *(v9 + 48) + v22, type metadata accessor for FitnessContextQueryRequest);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v9;
  }

  return result;
}

void *sub_1B4A00A90()
{
  v1 = v0;
  v2 = type metadata accessor for RingsPropertiesQuery(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B08, &unk_1B4D1F9C0);
  v6 = *v0;
  v7 = sub_1B4D1890C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1B4A053A4(*(v6 + 48) + v21, v5, type metadata accessor for RingsPropertiesQuery);
        result = sub_1B4A0546C(v5, *(v8 + 48) + v21, type metadata accessor for RingsPropertiesQuery);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1B4A00C9C()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutPropertiesQuery(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B00, &qword_1B4D1F9B8);
  v6 = *v0;
  v7 = sub_1B4D1890C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1B4A053A4(*(v6 + 48) + v21, v5, type metadata accessor for WorkoutPropertiesQuery);
        result = sub_1B4A0546C(v5, *(v8 + 48) + v21, type metadata accessor for WorkoutPropertiesQuery);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1B4A00EA8()
{
  v1 = v0;
  v2 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF8, &qword_1B4D1F9B0);
  v6 = *v0;
  v7 = sub_1B4D1890C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1B4A053A4(*(v6 + 48) + v21, v5, type metadata accessor for FitnessPlusPropertiesQuery);
        result = sub_1B4A0546C(v5, *(v8 + 48) + v21, type metadata accessor for FitnessPlusPropertiesQuery);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1B4A010B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF0, &qword_1B4D1F9A8);
  v2 = *v0;
  v3 = sub_1B4D1890C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1B4A011F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7070, &qword_1B4D1CCB0);
  result = sub_1B4D1891C();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B4D18E8C();

      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4A0142C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AE8, &qword_1B4D1F9A0);
  result = sub_1B4D1891C();
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
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4A01724(uint64_t a1, double a2)
{
  v3 = v2;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  v22 = *(Request - 8);
  v23 = Request;
  MEMORY[0x1EEE9AC00](Request);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B20, &unk_1B4D1F9D0);
  result = sub_1B4D1891C();
  v9 = result;
  if (*(v7 + 16))
  {
    v21 = v2;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    for (i = result + 56; v13; ++*(v9 + 16))
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v19 = *(v22 + 72);
      sub_1B4A053A4(*(v7 + 48) + v19 * (v16 | (v10 << 6)), v6, type metadata accessor for FitnessContextCoalescedQueryRequest);
      sub_1B4D18E8C();
      sub_1B4D00370(v24, *v6);
      FitnessContextQueryDescriptor.hash(into:)(v24);
      sub_1B4D18EDC();
      v20 = sub_1B4D188FC();
      *(i + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1B4A0546C(v6, *(v9 + 48) + v20 * v19, type metadata accessor for FitnessContextCoalescedQueryRequest);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v3 = v21;
        goto LABEL_16;
      }

      v18 = *(v7 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v3 = v9;
  }

  return result;
}

uint64_t sub_1B4A019A4(uint64_t a1, double a2)
{
  v3 = v2;
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v29 = *(Request - 8);
  v30 = Request;
  MEMORY[0x1EEE9AC00](Request);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B0, &qword_1B4D1E2C8);
  result = sub_1B4D1891C();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v2;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v29 + 72);
      sub_1B4A053A4(*(v7 + 48) + v20 * (v17 | (v10 << 6)), v6, type metadata accessor for FitnessContextQueryRequest);
      sub_1B4D18E8C();
      sub_1B4D1820C();
      FitnessContextQueryDescriptor.hash(into:)(v31);
      result = sub_1B4D18EDC();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1B4A0546C(v6, *(v9 + 48) + v16 * v20, type metadata accessor for FitnessContextQueryRequest);
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v9;
  }

  return result;
}

uint64_t sub_1B4A01C94(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RingsPropertiesQuery(0);
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B08, &unk_1B4D1F9C0);
  result = sub_1B4D1891C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = *(v5 + 56);
    v34 = v2;
    v35 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v9;
    v13 = (v10 + 63) >> 6;
    v36 = result + 56;
    v37 = v13;
    v38 = v5;
    v39 = v3;
    v43 = result;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v42 = (v12 - 1) & v12;
LABEL_14:
      v20 = *(v5 + 48);
      v41 = *(v40 + 72);
      v21 = v44;
      sub_1B4A053A4(v20 + v41 * (v17 | (v8 << 6)), v44, type metadata accessor for RingsPropertiesQuery);
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)(v45);
      v22 = (v21 + *(v3 + 20));
      v23 = v22[1];
      v24 = v22[2];
      sub_1B49C28E8(v45, *v22);
      MEMORY[0x1B8C7D290](*(v23 + 16));
      v25 = *(v23 + 16);
      if (v25)
      {
        v26 = v23 + 32;
        do
        {
          ++v26;
          sub_1B4D1820C();

          --v25;
        }

        while (v25);
      }

      MEMORY[0x1B8C7D290](*(v24 + 16));
      v27 = *(v24 + 16);
      if (v27)
      {
        v28 = (v24 + 32);
        do
        {
          v29 = *v28++;
          if (v29 != 2)
          {
            sub_1B4D18EAC();
          }

          sub_1B4D18EAC();
          --v27;
        }

        while (v27);
      }

      v3 = v39;
      v30 = *(v44 + *(v39 + 24));
      MEMORY[0x1B8C7D290](*(v30 + 16));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v30 + 32;
        do
        {
          ++v32;
          sub_1B4D1820C();

          --v31;
        }

        while (v31);
      }

      v14 = v44;
      sub_1B49C4BA0(v45, *(v44 + *(v3 + 28)));
      sub_1B4D18EDC();
      v7 = v43;
      v15 = v36;
      v16 = sub_1B4D188FC();
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1B4A0546C(v14, *(v7 + 48) + v16 * v41, type metadata accessor for RingsPropertiesQuery);
      ++*(v7 + 16);
      v13 = v37;
      v5 = v38;
      v12 = v42;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v19 = *(v35 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1B4A02140(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WorkoutPropertiesQuery(0);
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B00, &qword_1B4D1F9B8);
  result = sub_1B4D1891C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v2;
    v8 = 0;
    v9 = *(v5 + 56);
    v30 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v9;
    v13 = (v10 + 63) >> 6;
    v31 = result + 56;
    v32 = v13;
    v34 = v5;
    v35 = v3;
    v33 = result;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_14:
      v21 = *(v5 + 48);
      v37 = *(v36 + 72);
      v22 = v39;
      sub_1B4A053A4(v21 + v37 * (v18 | (v8 << 6)), v39, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)(v43);
      v23 = (v22 + *(v3 + 20));
      v24 = v23[1];
      v40 = *v23;
      v41 = v24;
      v42 = v23[2];
      WorkoutPropertyDimensionsFilters.hash(into:)(v43);
      v25 = *(v22 + *(v3 + 24));
      v26 = *(v25 + 16);
      MEMORY[0x1B8C7D290](v26);
      if (v26)
      {
        v27 = v25 + 32;
        do
        {
          ++v27;
          sub_1B4D1820C();

          --v26;
        }

        while (v26);
      }

      v14 = v35;
      v15 = v39;
      sub_1B49C4754(v43, *(v39 + *(v35 + 28)));
      sub_1B4D18EDC();
      v7 = v33;
      v16 = v31;
      v17 = sub_1B4D188FC();
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v3 = v14;
      result = sub_1B4A0546C(v15, *(v7 + 48) + v17 * v37, type metadata accessor for WorkoutPropertiesQuery);
      ++*(v7 + 16);
      v5 = v34;
      v13 = v32;
      v12 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v2 = v29;
        goto LABEL_20;
      }

      v20 = *(v30 + 8 * v8);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1B4A02570(uint64_t a1)
{
  v2 = v1;
  v48 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v42 = *(v48 - 1);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF8, &qword_1B4D1F9B0);
  result = sub_1B4D1891C();
  v6 = result;
  if (*(v4 + 16))
  {
    v36 = v1;
    v7 = 0;
    v8 = *(v4 + 56);
    v37 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v8;
    v12 = (v9 + 63) >> 6;
    v50 = 0x80000001B4D48BA0;
    v51 = 0x80000001B4D48DB0;
    v38 = result + 56;
    v39 = v12;
    v40 = result;
    v41 = v4;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_14:
      v18 = *(v4 + 48);
      v46 = *(v42 + 72);
      v19 = v49;
      sub_1B4A053A4(v18 + v46 * (v15 | (v7 << 6)), v49, type metadata accessor for FitnessPlusPropertiesQuery);
      sub_1B4D18E8C();
      DateRangeDescriptor.hash(into:)(v52);
      v20 = (v19 + v48[5]);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[3];
      v43 = v20[2];
      v44 = v23;
      v45 = v20[4];
      sub_1B49C28E8(v52, v21);
      v24 = *(v22 + 16);
      MEMORY[0x1B8C7D290](v24);
      if (v24)
      {
        v25 = v22 + 32;
        do
        {
          ++v25;
          sub_1B4D1820C();

          --v24;
        }

        while (v24);
      }

      v26 = v43;
      MEMORY[0x1B8C7D290](*(v43 + 16));
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = (v26 + 32);
        do
        {
          v29 = *v28++;
          MEMORY[0x1B8C7D2C0](v29);
          --v27;
        }

        while (v27);
      }

      sub_1B49C551C(v52, v44);
      sub_1B49C5454(v52, v45);
      v30 = *(v49 + v48[6]);
      MEMORY[0x1B8C7D290](*(v30 + 16));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v30 + 32;
        do
        {
          ++v32;
          sub_1B4D1820C();

          --v31;
        }

        while (v31);
      }

      v33 = *(v49 + v48[7]);
      MEMORY[0x1B8C7D290](*(v33 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v33 + 32;
        do
        {
          ++v35;
          sub_1B4D1820C();

          --v34;
        }

        while (v34);
      }

      sub_1B4D18EDC();
      v6 = v40;
      v13 = v38;
      v14 = sub_1B4D188FC();
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1B4A0546C(v49, *(v6 + 48) + v14 * v46, type metadata accessor for FitnessPlusPropertiesQuery);
      ++*(v6 + 16);
      v4 = v41;
      v12 = v39;
      v11 = v47;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v36;
        goto LABEL_29;
      }

      v17 = *(v37 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v47 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4A02B8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AF0, &qword_1B4D1F9A8);
  result = sub_1B4D1891C();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D2C0](v16);
      result = sub_1B4D18EDC();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B4A02DAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C7CA00](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B49FA73C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4A02E44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B4A05294();
  result = MEMORY[0x1B8C7CA00](v2, &type metadata for DeviceInferenceAvailability.UnavailableReason, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B49FA88C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4A02EB8(uint64_t a1, double a2)
{
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  v4 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B4A0535C(&qword_1EB8A7B18, type metadata accessor for FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for FitnessContextCoalescedQueryRequest);
  result = MEMORY[0x1B8C7CA00](v10, Request, v11);
  v17 = result;
  if (v10)
  {
    v13 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_1B4A053A4(v13, v6, type metadata accessor for FitnessContextCoalescedQueryRequest);
      sub_1B49FAC08(v9, v6, v15);
      sub_1B4A0540C(v9, type metadata accessor for FitnessContextCoalescedQueryRequest);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v17;
  }

  return result;
}

uint64_t sub_1B4A03048(uint64_t a1, double a2)
{
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  v4 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B4A0535C(&qword_1EB8A7B10, type metadata accessor for FitnessContextQueryRequest, &protocol conformance descriptor for FitnessContextQueryRequest);
  result = MEMORY[0x1B8C7CA00](v10, Request, v11);
  v17 = result;
  if (v10)
  {
    v13 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_1B4A053A4(v13, v6, type metadata accessor for FitnessContextQueryRequest);
      sub_1B49FAEC4(v9, v6, v15);
      sub_1B4A0540C(v9, type metadata accessor for FitnessContextQueryRequest);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v17;
  }

  return result;
}

uint64_t sub_1B4A031D8(uint64_t a1)
{
  v2 = type metadata accessor for RingsPropertiesQuery(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B4A0535C(&qword_1EDC39548, type metadata accessor for RingsPropertiesQuery, &protocol conformance descriptor for RingsPropertiesQuery);
  result = MEMORY[0x1B8C7CA00](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1B4A053A4(v12, v5, type metadata accessor for RingsPropertiesQuery);
      sub_1B49FB19C(v8, v5);
      sub_1B4A0540C(v8, type metadata accessor for RingsPropertiesQuery);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1B4A03368(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPropertiesQuery(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B4A0535C(&qword_1EDC39158, type metadata accessor for WorkoutPropertiesQuery, &protocol conformance descriptor for WorkoutPropertiesQuery);
  result = MEMORY[0x1B8C7CA00](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1B4A053A4(v12, v5, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B49FB718(v8, v5);
      sub_1B4A0540C(v8, type metadata accessor for WorkoutPropertiesQuery);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1B4A034F8(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B4A0535C(&qword_1EDC39A98, type metadata accessor for FitnessPlusPropertiesQuery, &protocol conformance descriptor for FitnessPlusPropertiesQuery);
  result = MEMORY[0x1B8C7CA00](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1B4A053A4(v12, v5, type metadata accessor for FitnessPlusPropertiesQuery);
      sub_1B49FBF90(v8, v5);
      sub_1B4A0540C(v8, type metadata accessor for FitnessPlusPropertiesQuery);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1B4A03688(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4983F3C;

  return sub_1B49F9A3C(a1, v6, v1 + v5);
}

uint64_t sub_1B4A0376C(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9AEC(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03850(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9AEC(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03934(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9AEC(a1, v6, v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for RingsPropertiesQuery(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  type metadata accessor for DateRangeDescriptor(0);
  if (swift_getEnumCaseMultiPayload() <= 0xF)
  {
    v5 = sub_1B4D1777C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4A03B5C(uint64_t a1)
{
  v4 = *(type metadata accessor for RingsPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9AEC(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03C40(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4A03C50(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03D34(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03E18(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t sub_1B4A03EFC(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t objectdestroy_75Tm()
{
  v1 = *(type metadata accessor for WorkoutPropertiesQuery(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  type metadata accessor for DateRangeDescriptor(0);
  if (swift_getEnumCaseMultiPayload() <= 0xF)
  {
    v5 = sub_1B4D1777C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4A0413C(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPropertiesQuery(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49DA364;

  return sub_1B49F9B9C(a1, v6, v1 + v5);
}

uint64_t dispatch thunk of SnapshotClientProtocol.triggerSnapshotProcessing(reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B49DA364;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SnapshotClientProtocol.invalidateSnapshots(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B49DA364;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SnapshotClientProtocol.listAllCacheIndexes()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49D9398;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SnapshotClientProtocol.mostRecentCacheIndex(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SnapshotClientProtocol.prewarmSnapshotRetriever()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SnapshotClientProtocol.execute(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SnapshotClientProtocol.execute(queries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4A054D8;

  return v9(a1, a2, a3);
}

{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4A054D8;

  return v9(a1, a2, a3);
}

{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4A054D8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SnapshotClientProtocol.querySnapshot(date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SnapshotClientProtocol.query(date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SnapshotClientProtocol.query(cacheIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 112) + **(a4 + 112));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DA364;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_1B4A05294()
{
  result = qword_1EDC3CC50;
  if (!qword_1EDC3CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CC50);
  }

  return result;
}

uint64_t sub_1B4A052E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B498E1E8();
  result = MEMORY[0x1B8C7CA00](v2, &type metadata for CacheIndex, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B49FC5E8(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4A0535C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4A053A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A0540C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A0546C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FitnessPlusCatalogWorkout.catalogWorkoutIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

FitnessIntelligence::FitnessPlusCatalogWorkout __swiftcall FitnessPlusCatalogWorkout.init(catalogWorkoutIdentifier:trainers:modalityKind:)(FitnessIntelligence::FitnessPlusCatalogWorkout catalogWorkoutIdentifier, Swift::OpaquePointer trainers, FitnessIntelligence::FitnessPlusModalityKind modalityKind)
{
  v4 = *modalityKind;
  *v3 = catalogWorkoutIdentifier.catalogWorkoutIdentifier;
  *(v3 + 16) = trainers;
  *(v3 + 24) = v4;
  catalogWorkoutIdentifier.trainers = trainers;
  catalogWorkoutIdentifier.modalityKind = modalityKind;
  return catalogWorkoutIdentifier;
}

uint64_t sub_1B4A05544()
{
  v1 = 0x7372656E69617274;
  if (*v0 != 1)
  {
    v1 = 0x7974696C61646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1B4A055AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4A05F74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4A055D4(uint64_t a1)
{
  v2 = sub_1B4A05C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4A05610(uint64_t a1)
{
  v2 = sub_1B4A05C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessPlusCatalogWorkout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B28, &unk_1B4D1F9E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v11 = *(v1 + 16);
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A05C44();
  sub_1B4D18EFC();
  v18 = 0;
  v7 = v12;
  sub_1B4D18CBC();
  if (!v7)
  {
    v8 = v14;
    v13 = v11;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
    sub_1B4A05CEC(&qword_1EB8A7B40, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1B4D18D0C();
    v16 = v8;
    v15 = 2;
    sub_1B4A05C98();
    sub_1B4D18D0C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FitnessPlusCatalogWorkout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B50, &qword_1B4D1F9F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A05C44();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v9 = sub_1B4D18BBC();
  v11 = v10;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  v21 = 1;
  sub_1B4A05CEC(&qword_1EB8A7B58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1B4D18C0C();
  v16 = v18;
  v19 = 2;
  sub_1B4A05D58();
  sub_1B4D18C0C();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  v13 = v16;
  *a2 = v17;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s19FitnessIntelligence0A18PlusCatalogWorkoutV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B4D18DCC()) && (sub_1B4A0C158(v2, v3))
  {
    v5 = FitnessPlusModalityKind.rawValue.getter();
    v7 = v6;
    if (v5 == FitnessPlusModalityKind.rawValue.getter() && v7 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1B4D18DCC();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1B4A05C44()
{
  result = qword_1EB8A7B30;
  if (!qword_1EB8A7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B30);
  }

  return result;
}

unint64_t sub_1B4A05C98()
{
  result = qword_1EB8A7B48;
  if (!qword_1EB8A7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B48);
  }

  return result;
}

uint64_t sub_1B4A05CEC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7B38, &qword_1B4D36300);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4A05D58()
{
  result = qword_1EB8A7B60;
  if (!qword_1EB8A7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B60);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B4A05DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B4A05E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B4A05E70()
{
  result = qword_1EB8A7B68;
  if (!qword_1EB8A7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B68);
  }

  return result;
}

unint64_t sub_1B4A05EC8()
{
  result = qword_1EB8A7B70;
  if (!qword_1EB8A7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B70);
  }

  return result;
}

unint64_t sub_1B4A05F20()
{
  result = qword_1EB8A7B78;
  if (!qword_1EB8A7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B78);
  }

  return result;
}

uint64_t sub_1B4A05F74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001B4D5F9B0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372656E69617274 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xEC000000646E694BLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t WorkoutBestMetricPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v16[1] = *a1;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B80, &unk_1B4D1FBE0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v12 = sub_1B4A061EC();
  v13 = sub_1B498D2F0(sub_1B4A061B4, v15, v10, a2, v11, v12, MEMORY[0x1E69E7288], v16);
  sub_1B4A08AC8(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);

  if (!v6)
  {
    *a6 = v13;
  }

  return result;
}

void *sub_1B4A061B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4A06250(a1, v3[2], v3[3], v3[4], v3[5], a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

unint64_t sub_1B4A061EC()
{
  result = qword_1EB8A7B88;
  if (!qword_1EB8A7B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7B80, &unk_1B4D1FBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B88);
  }

  return result;
}

void *sub_1B4A06250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v30 = a5;
  v26[1] = a6;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  v19 = v32;
  result = sub_1B4A06C08(a1, v31);
  if (!v19)
  {
    v21 = v27;
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v22 = swift_dynamicCast();
    v23 = v28;
    v24 = *(v28 + 56);
    if (v22)
    {
      v24(v12, 0, 1, AssociatedTypeWitness);
      (*(v23 + 32))(v18, v12, AssociatedTypeWitness);
      (*(v23 + 16))(v15, v18, AssociatedTypeWitness);
      (*(v8 + 40))(v15, a2, v8);
      return (*(v23 + 8))(v18, AssociatedTypeWitness);
    }

    else
    {
      v24(v12, 1, 1, AssociatedTypeWitness);
      (*(v21 + 8))(v12, v10);
      sub_1B4A089F0();
      swift_allocError();
      *v25 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t WorkoutBestMetricPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  sub_1B4A08E34(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A0660C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[2] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v8 = sub_1B4D184BC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B498D2F0(sub_1B4A08DEC, v14, v8, v9, v10, WitnessTable, MEMORY[0x1E69E7288], v15);

  if (!v6)
  {

    *a1 = v12;
  }

  return result;
}

uint64_t sub_1B4A06748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  sub_1B4A08E34(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
  result = sub_1B4D17DAC();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_1B4A06834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  v20 = v34;
  result = (*(v12 + 32))(a3, v12, v17);
  if (!v20)
  {
    v22 = v9;
    v23 = v31;
    v34 = 0;
    v24 = AssociatedTypeWitness;
    (*(v13 + 16))(v15, v19, AssociatedTypeWitness);
    if (swift_dynamicCast())
    {
      v25 = *(v13 + 8);
      v25(v19, v24);
      v26 = v23;
      sub_1B4975024(v23, &qword_1EB8A7BC8, &unk_1B4D1FD60);
      sub_1B4A08E7C(v32, v23, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
LABEL_6:
      v27 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
      return (v25)(v15, AssociatedTypeWitness);
    }

    if (swift_dynamicCast())
    {
      v25 = *(v13 + 8);
      v25(v19, v24);
      v26 = v23;
      sub_1B4975024(v23, &qword_1EB8A7BC8, &unk_1B4D1FD60);
      sub_1B4A08E7C(v22, v23, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      goto LABEL_6;
    }

    sub_1B4A089F0();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    v29 = *(v13 + 8);
    v29(v19, v24);
    return (v29)(v15, v24);
  }

  return result;
}

uint64_t sub_1B4A06C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  sub_1B4974FBC(a1, &v19 - v12, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  result = (*(*(v14 - 8) + 48))(v13, 1, v14);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
      sub_1B4A08E7C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      *(a2 + 24) = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v18 = v10;
    }

    else
    {
      v16 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
      sub_1B4A08E7C(v13, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      *(a2 + 24) = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v18 = v7;
    }

    return sub_1B4A08E7C(v18, boxed_opaque_existential_1, v16);
  }

  return result;
}

uint64_t DistanceSampleIntervalRecord.init(_:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *a1;
  v3 = objc_opt_self();
  v4 = [v3 meters];
  type metadata accessor for DistanceSampleIntervalRecord(0);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  v5 = [v3 meters];
  sub_1B4D1741C();
  v6 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  return sub_1B4A08AC8(a1, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
}

uint64_t DistanceSampleIntervalRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  sub_1B4A08E34(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  return sub_1B4D17DAC();
}

void sub_1B4A07088(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  type metadata accessor for DistanceSampleIntervalRecord(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4D1742C();
  *(a1 + 16) = v3;
  sub_1B4D1742C();
  *(a1 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D1742C();
  *(a1 + 32) = v5;
}

uint64_t sub_1B4A07154()
{
  type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  sub_1B4A08E34(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  return sub_1B4D17DAC();
}

uint64_t BestWorkoutRecordEntry.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v76 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v64 - v10;
  v81 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v68 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v70);
  v75 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v64 - v14;
  v15 = sub_1B4D1880C();
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v64 - v16;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v64 - v27;
  v67 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  sub_1B4974FBC(a1 + *(v67 + 20), v28, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v29 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v30 = (*(*(v29 - 8) + 48))(v28, 1, v29);
  v71 = v8;
  if (v30 == 1)
  {
    v85 = 0u;
    v86 = 0u;
  }

  else
  {
    v65 = v25;
    sub_1B4A08E7C(v28, v25, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4A08A44(v25, v22);
    *(&v86 + 1) = type metadata accessor for DistanceSampleIntervalRecord(0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v85);
    *boxed_opaque_existential_1 = *v22;
    boxed_opaque_existential_1[1] = v22[1];
    v32 = objc_opt_self();
    v66 = a1;
    v33 = v32;
    v34 = [v32 meters];
    v78 = v17;
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    a1 = v66;
    v35 = [v33 meters];
    sub_1B4D1741C();
    v36 = [objc_opt_self() seconds];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v17 = v78;
    sub_1B4D1741C();
    sub_1B4A08AC8(v22, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4A08AC8(v65, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  sub_1B4974FBC(&v85, v84, &qword_1EB8A6DE8, &qword_1B4D1FC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  v37 = v79;
  v38 = swift_dynamicCast();
  v39 = *(v17 + 56);
  v41 = v81;
  v40 = v82;
  v42 = v80;
  if (v38)
  {
    v39(v37, 0, 1, a2);
    v43 = *(v17 + 32);
    v78 = v17 + 32;
    v43(v77, v37, a2);
    sub_1B4D1778C();
    v44 = sub_1B4D177CC();
    v45 = *(v44 - 8);
    result = (*(v45 + 48))(v42, 1, v44);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v45 + 32))(v76, v42, v44);
      v47 = v69;
      sub_1B4974FBC(a1 + *(v67 + 28), v69, &qword_1EB8A7158, &unk_1B4D20310);
      v48 = *(v68 + 48);
      if (v48(v47, 1, v41) == 1)
      {
        *v40 = 0;
        *(v40 + 8) = 0;
        *(v40 + 16) = 0;
        sub_1B4D17BBC();
        v49 = (v40 + *(v41 + 40));
        *v49 = 0;
        v49[1] = 0;
        v50 = v48(v47, 1, v41) == 1;
        v51 = v47;
        v52 = v71;
        if (!v50)
        {
          sub_1B4975024(v51, &qword_1EB8A7158, &unk_1B4D20310);
        }
      }

      else
      {
        sub_1B4A08E7C(v47, v40, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v52 = v71;
      }

      v55 = *(v40 + 8);
      *&v56 = *v40;
      *(&v56 + 1) = HIDWORD(*v40);
      v57 = v56;
      *&v56 = v55;
      *(&v56 + 1) = SHIDWORD(v55);
      v58 = v75;
      *v75 = v57;
      v58[1] = v56;
      *(v58 + 4) = *(v40 + 16);
      if (*(v40 + *(v41 + 40) + 8))
      {

        sub_1B4D1797C();

        sub_1B4A08AC8(v40, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      }

      else
      {
        sub_1B4A08AC8(v40, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v59 = sub_1B4D179BC();
        (*(*(v59 - 8) + 56))(v52, 1, 1, v59);
      }

      v60 = v75;
      sub_1B4995980(v52, v75 + *(v70 + 36));
      sub_1B4975024(&v85, &qword_1EB8A6DE8, &qword_1B4D1FC10);
      sub_1B4A08AC8(a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v62 = type metadata accessor for BestWorkoutRecordEntry(0, a2, v72, v61);
      v63 = v76;
      sub_1B4A08E7C(v60, v76 + *(v62 + 36), type metadata accessor for LocalizedDate);
      return (v43)(v63 + *(v62 + 40), v77, a2);
    }
  }

  else
  {
    v39(v37, 1, 1, a2);
    (*(v73 + 8))(v37, v74);
    sub_1B4A089F0();
    v53 = swift_allocError();
    *v54 = 0;
    v83 = v53;
    swift_willThrow();
    sub_1B4975024(&v85, &qword_1EB8A6DE8, &qword_1B4D1FC10);
    return sub_1B4A08AC8(a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  }

  return result;
}

uint64_t BestWorkoutRecordEntry.protobuf()(uint64_t a1, double a2)
{
  type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  sub_1B4A08E34(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A07CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a4 + 8);
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v37 - v12;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = sub_1B4D1779C();
  v20 = v19;

  *a1 = v18;
  a1[1] = v20;
  v45 = v17 + *(type metadata accessor for BestWorkoutRecordEntry(0, a3, a4, v21) + 36);
  sub_1B4A08E34(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  v22 = v44;
  sub_1B4D17DAC();
  v23 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v24 = *(v23 + 28);
  sub_1B4975024(a1 + v24, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4A08E7C(v16, a1 + v24, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v14 + 56))(a1 + v24, 0, 1, v13);
  v25 = v43;
  result = (*(v46 + 32))(v42);
  if (!v22)
  {
    v27 = v23;
    v29 = v39;
    v28 = v40;
    v30 = v41;
    (*(v40 + 16))(v39, v25, v41);
    v31 = v38;
    if (swift_dynamicCast())
    {
      v32 = *(v28 + 8);
      v32(v25, v30);
      v33 = *(v27 + 20);
      sub_1B4975024(a1 + v33, &qword_1EB8A7B90, &unk_1B4D3B2C0);
      sub_1B4A08E7C(v31, a1 + v33, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
      v34 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
      (*(*(v34 - 8) + 56))(a1 + v33, 0, 1, v34);
      return (v32)(v29, v30);
    }

    else
    {
      sub_1B4A089F0();
      swift_allocError();
      *v35 = 0;
      swift_willThrow();
      v36 = *(v28 + 8);
      v36(v25, v30);
      return (v36)(v29, v30);
    }
  }

  return result;
}

uint64_t BestWorkoutMeasurementEntry.init(_:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - v16;
  sub_1B4D1778C();
  v18 = sub_1B4D177CC();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v40, v17, v18);
    v21 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
    sub_1B4974FBC(a1 + *(v21 + 28), v8, &qword_1EB8A7158, &unk_1B4D20310);
    v22 = *(v10 + 48);
    v23 = a1;
    if (v22(v8, 1, v9) == 1)
    {
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 4) = 0;
      sub_1B4D17BBC();
      v24 = &v12[*(v9 + 40)];
      *v24 = 0;
      *(v24 + 1) = 0;
      v25 = v22(v8, 1, v9);
      v26 = v38;
      if (v25 != 1)
      {
        sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
      }
    }

    else
    {
      sub_1B4A08E7C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v26 = v38;
    }

    v27 = *(v12 + 1);
    *&v28 = *v12;
    *(&v28 + 1) = HIDWORD(*v12);
    v29 = v28;
    *&v28 = v27;
    *(&v28 + 1) = SHIDWORD(v27);
    *v14 = v29;
    *(v14 + 1) = v28;
    *(v14 + 4) = *(v12 + 4);
    v30 = v40;
    if (*&v12[*(v9 + 40) + 8])
    {

      sub_1B4D1797C();

      sub_1B4A08AC8(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    else
    {
      sub_1B4A08AC8(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v31 = sub_1B4D179BC();
      (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
    }

    sub_1B4995980(v26, &v14[*(v37 + 36)]);
    v34 = type metadata accessor for BestWorkoutMeasurementEntry(0, v39, v32, v33);
    sub_1B4A08E7C(v14, v30 + *(v34 + 28), type metadata accessor for LocalizedDate);
    v35 = [swift_getObjCClassFromMetadata() baseUnit];
    sub_1B4D1741C();
    return sub_1B4A08AC8(v23, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  }

  return result;
}

uint64_t BestWorkoutMeasurementEntry.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  sub_1B4A08E34(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A086F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a3;
  v5 = sub_1B4D1746C();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = a2;
  v12 = sub_1B4D1779C();
  v14 = v13;

  *a1 = v12;
  a1[1] = v14;
  v26 = a2 + *(type metadata accessor for BestWorkoutMeasurementEntry(0, v23[0], v15, v16) + 28);
  sub_1B4A08E34(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  v17 = v24;
  sub_1B4D17DAC();
  v24 = v17;
  v18 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v18, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4A08E7C(v11, a1 + v18, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v9 + 56))(a1 + v18, 0, 1, v8);
  v19 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v21 = v20;
  result = (*(v25 + 8))(v7, v5);
  a1[2] = v21;
  return result;
}

unint64_t sub_1B4A089F0()
{
  result = qword_1EB8A7B98;
  if (!qword_1EB8A7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7B98);
  }

  return result;
}

uint64_t sub_1B4A08A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A08AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4A08D98()
{
  result = qword_1EB8A7BC0;
  if (!qword_1EB8A7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7BC0);
  }

  return result;
}

uint64_t sub_1B4A08E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4A08E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HourOfDay.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4D1796C();
  __swift_project_value_buffer(v8, qword_1EDC3CE48);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969A58], v4);
  v9 = sub_1B4D1795C();
  v10 = sub_1B4D1777C();
  (*(*(v10 - 8) + 8))(a1, v10);
  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  *(a2 + 8) = 0;
  return result;
}

void HourOfDay.init(rawValue:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  if (a1 >= 0x18)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4D17F6C();
    __swift_project_value_buffer(v5, qword_1EDC3CED0);
    v6 = sub_1B4D17F5C();
    v7 = sub_1B4D1871C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_1B4953000, v6, v7, "Invalid hourOfDay: %lld", v8, 0xCu);
      MEMORY[0x1B8C7DDA0](v8, -1, -1);
    }

    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = a1 > 0x17;
}

uint64_t sub_1B4A09278()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A092EC(uint64_t a1)
{
  v2 = *v1;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v2);
  return sub_1B4D18EDC();
}

unint64_t sub_1B4A0933C()
{
  result = qword_1EB8A7BD0;
  if (!qword_1EB8A7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7BD0);
  }

  return result;
}

unint64_t sub_1B4A093A0()
{
  result = qword_1EB8A7BD8;
  if (!qword_1EB8A7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7BD8);
  }

  return result;
}

void RingsPropertiesQuery.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v56 = &v52 - v4;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v52 - v18;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v20 = *(v19 + 28);
  v62 = a1;
  sub_1B4974FBC(a1 + v20, v10, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v21 = *(v12 + 48);
  if (v21(v10, 1, v11) == 1)
  {
    *v14 = 0;
    v14[8] = -1;
    sub_1B4D17BBC();
    if (v21(v10, 1, v11) != 1)
    {
      sub_1B4975024(v10, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }
  }

  else
  {
    sub_1B4A1F750(v10, v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  v22 = v58;
  DateRangeDescriptor.init(_:)(v14);
  if (!v22)
  {
    v23 = v56;
    sub_1B4974FBC(v62 + *(v19 + 32), v56, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    v24 = v55;
    v25 = *(v54 + 48);
    if (v25(v23, 1, v55) == 1)
    {
      v26 = MEMORY[0x1E69E7CC0];
      *v7 = MEMORY[0x1E69E7CC0];
      v7[1] = v26;
      v7[2] = v26;
      sub_1B4D17BBC();
      if (v25(v23, 1, v24) != 1)
      {
        sub_1B4975024(v23, &qword_1EB8A7BE0, &qword_1B4D1FE90);
      }
    }

    else
    {
      sub_1B4A1F750(v23, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    }

    RingsPropertyDimensionsFilters.init(_:)(v7, &v60);
    v27 = 0;
    v56 = v60;
    v55 = v61;
    v28 = *v62;
    v29 = *(*v62 + 16);
    v58 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v30 = v28 + 40 + 16 * v27;
    while (v29 != v27)
    {
      if (v27 >= *(v28 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      ++v27;
      v31 = v30 + 16;

      v32 = sub_1B4D18B1C();

      v30 = v31;
      if (v32 < 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1B4A1EDC0(0, *(v58 + 2) + 1, 1, v58, &qword_1EB8A7F40, &qword_1B4D20470);
        }

        v34 = *(v58 + 2);
        v33 = *(v58 + 3);
        if (v34 >= v33 >> 1)
        {
          v58 = sub_1B4A1EDC0((v33 > 1), v34 + 1, 1, v58, &qword_1EB8A7F40, &qword_1B4D20470);
        }

        v35 = v58;
        *(v58 + 2) = v34 + 1;
        v35[v34 + 32] = v32;
        goto LABEL_11;
      }
    }

    v36 = v62[1];
    sub_1B4A1F5E8(v59, v57, type metadata accessor for DateRangeDescriptor);
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = 0;
      v39 = v36 + 40;
      v52 = v37 - 1;
      v40 = MEMORY[0x1E69E7CC0];
      v54 = v36 + 40;
LABEL_22:
      v41 = (v39 + 16 * v38);
      v42 = v38;
      while (v42 < *(v36 + 16))
      {
        v38 = v42 + 1;
        v43 = *(v41 - 1);
        v44 = *v41;

        v45._countAndFlagsBits = v43;
        v45._object = v44;
        RingsPropertyKind.init(rawValue:)(v45);
        v46 = v60;
        if (v60 != 26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_1B4A1EDC0(0, *(v40 + 2) + 1, 1, v40, &qword_1EB8A7F38, &qword_1B4D20468);
          }

          v48 = *(v40 + 2);
          v47 = *(v40 + 3);
          if (v48 >= v47 >> 1)
          {
            v40 = sub_1B4A1EDC0((v47 > 1), v48 + 1, 1, v40, &qword_1EB8A7F38, &qword_1B4D20468);
          }

          *(v40 + 2) = v48 + 1;
          v40[v48 + 32] = v46;
          v39 = v54;
          if (v52 != v42)
          {
            goto LABEL_22;
          }

          goto LABEL_34;
        }

        v41 += 2;
        ++v42;
        if (v37 == v38)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_37;
    }

    v40 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v49 = v53;
    sub_1B4A1F750(v57, v53, type metadata accessor for DateRangeDescriptor);
    sub_1B4A1F650(v59, type metadata accessor for DateRangeDescriptor);
    v50 = type metadata accessor for RingsPropertiesQuery(0);
    v51 = v49 + v50[5];
    *v51 = v56;
    *(v51 + 16) = v55;
    *(v49 + v50[6]) = v58;
    *(v49 + v50[7]) = v40;
  }

  sub_1B4A1F650(v62, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
}