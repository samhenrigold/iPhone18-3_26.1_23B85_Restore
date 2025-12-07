unint64_t sub_1934DAD60()
{
  result = qword_1EAE3B998;
  if (!qword_1EAE3B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B998);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{

  return sub_1934486F8(a1, v3, v1, v2);
}

uint64_t sub_1934DADE4()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8F78);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1939526C0;
  v7 = v40 + v6;
  v8 = v40 + v6 + dword_1EAEA8FB0;
  *(v40 + v6) = 1;
  *v8 = "absoluteTimestamp";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_3_1(v7 + v4);
  *v14 = 9;
  *v13 = "_machAbsoluteTime";
  *(v13 + 8) = 17;
  *(v13 + 16) = 2;
  *(v13 + 24) = "MachAbsoluteTime";
  *(v13 + 32) = 16;
  *(v13 + 40) = 2;
  OUTLINED_FUNCTION_9_30();
  v12();
  v15 = dword_1EAEA8FB0;
  v16 = (v7 + 2 * v4);
  *v16 = 7;
  v17 = OUTLINED_FUNCTION_33_8(v16 + v15, "_sessionID");
  *(v17 + 24) = "SessionID";
  *(v17 + 32) = 9;
  *(v17 + 40) = 2;
  OUTLINED_FUNCTION_9_30();
  v12();
  v18 = dword_1EAEA8FB0;
  v19 = (v7 + 3 * v4);
  *v19 = 8;
  v20 = OUTLINED_FUNCTION_33_8(v19 + v18, "_bootSessionID");
  *(v20 + 24) = "BootSessionID";
  *(v20 + 32) = 13;
  *(v20 + 40) = 2;
  v12();
  v21 = dword_1EAEA8FB0;
  v22 = (v7 + 4 * v4);
  *v22 = 2;
  v23 = v22 + v21;
  *v23 = "_clientSessionID";
  *(v23 + 1) = 16;
  v23[16] = 2;
  *(v23 + 3) = "ClientSessionID";
  *(v23 + 4) = 15;
  v23[40] = 2;
  OUTLINED_FUNCTION_9_30();
  v12();
  v24 = OUTLINED_FUNCTION_3_1(v7 + 5 * v4);
  *v25 = 3;
  *v24 = "eventLabel";
  *(v24 + 8) = 10;
  *(v24 + 16) = 2;
  OUTLINED_FUNCTION_9_30();
  v12();
  v26 = OUTLINED_FUNCTION_3_1(v7 + 6 * v4);
  *v27 = 4;
  *v26 = "eventType";
  *(v26 + 8) = 9;
  *(v26 + 16) = 2;
  OUTLINED_FUNCTION_9_30();
  v12();
  v28 = OUTLINED_FUNCTION_3_1(v7 + 7 * v4);
  *v29 = 5;
  OUTLINED_FUNCTION_33_8(v28, "serializationFormat");
  OUTLINED_FUNCTION_9_30();
  v12();
  v30 = OUTLINED_FUNCTION_3_1(v7 + 8 * v4);
  *v31 = 6;
  *v30 = "eventPayload";
  *(v30 + 8) = 12;
  *(v30 + 16) = 2;
  OUTLINED_FUNCTION_9_30();
  v12();
  v32 = dword_1EAEA8FB0;
  v33 = (v7 + 9 * v4);
  *v33 = 10;
  v34 = v33 + v32;
  *v34 = "_sageMetadata";
  *(v34 + 1) = 13;
  v34[16] = 2;
  *(v34 + 3) = "SageMetadata";
  *(v34 + 4) = 12;
  v34[40] = 2;
  v12();
  v35 = OUTLINED_FUNCTION_3_1(v7 + 10 * v4);
  *v36 = 11;
  OUTLINED_FUNCTION_33_8(v35, "monotonicTimestamp");
  OUTLINED_FUNCTION_9_30();
  v12();
  v37 = OUTLINED_FUNCTION_3_1(v7 + 11 * v4);
  *v38 = 12;
  *v37 = "identifiers";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  OUTLINED_FUNCTION_9_30();
  v12();
  return sub_19393C410();
}

void sub_1934DB21C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  while (1)
  {
    v7 = sub_19393C0E0();
    if (v2 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        v9 = type metadata accessor for SageTranscript(0);
        sub_1934976E4(v0 + *(v9 + 28), 26211, 0xE200000000000000, v6, v4);
        goto LABEL_20;
      case 2:
        v11 = *(type metadata accessor for SageTranscript(0) + 44);
        goto LABEL_16;
      case 3:
        v10 = *(type metadata accessor for SageTranscript(0) + 48);
        goto LABEL_11;
      case 4:
        v10 = *(type metadata accessor for SageTranscript(0) + 52);
LABEL_11:
        OUTLINED_FUNCTION_8_2(v10);
        sub_19393C200();
        goto LABEL_20;
      case 5:
        type metadata accessor for SageTranscript(0);
        sub_1934982A8();
        goto LABEL_20;
      case 6:
        v12 = type metadata accessor for SageTranscript(0);
        OUTLINED_FUNCTION_8_2(*(v12 + 60));
        sub_19393C140();
        goto LABEL_20;
      case 7:
        v11 = *(type metadata accessor for SageTranscript(0) + 36);
        goto LABEL_16;
      case 8:
        v11 = *(type metadata accessor for SageTranscript(0) + 40);
LABEL_16:
        sub_193497890(v0 + v11);
        goto LABEL_20;
      case 9:
        v13 = type metadata accessor for SageTranscript(0);
        OUTLINED_FUNCTION_8_2(*(v13 + 32));
        sub_19393C1E0();
        goto LABEL_20;
      case 10:
        type metadata accessor for SageTranscript(0);
        type metadata accessor for SageMetadata(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_18;
      case 11:
        type metadata accessor for SageTranscript(0);
        type metadata accessor for MonotonicTimestamp(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_18;
      case 12:
        type metadata accessor for SageTranscript(0);
        type metadata accessor for IntelligenceFlowIdentifiers(0);
        OUTLINED_FUNCTION_10_2();
LABEL_18:
        sub_193498018();
LABEL_20:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934DB428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1934DB624(v8, a1, a2, a3, a5, a6, a7, a8, v18, v19);
  if (!v9)
  {
    v12 = type metadata accessor for SageTranscript(0);
    if ((*(v8 + v12[8] + 8) & 1) == 0)
    {
      sub_19393C3B0();
    }

    OUTLINED_FUNCTION_79();
    sub_1934DB7A8();
    OUTLINED_FUNCTION_79();
    sub_1934DB8D0();
    OUTLINED_FUNCTION_79();
    sub_1934DB9F8();
    if (*(v8 + v12[12] + 8))
    {
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
    }

    if (*(v8 + v12[13] + 8))
    {
      OUTLINED_FUNCTION_24_2();
      sub_19393C3C0();
    }

    v13 = v8 + v12[14];
    if ((*(v13 + 9) & 1) == 0)
    {
      v14 = *(v13 + 8);
      v18 = *v13;
      LOBYTE(v19) = v14 & 1;
      sub_193447324(&v18, 5, a2, &type metadata for SageTranscript.SerializationFormat, a3, &off_1F07C29E8);
    }

    v15 = v8 + v12[15];
    v16 = *(v15 + 8);
    if (v16 >> 60 != 15)
    {
      v17 = *v15;
      sub_193450688(*v15, *(v15 + 8));
      OUTLINED_FUNCTION_24_2();
      sub_19393C330();
      sub_19345012C(v17, v16);
    }

    OUTLINED_FUNCTION_79();
    sub_1934DBB20();
    OUTLINED_FUNCTION_79();
    sub_1934DBC28();
    OUTLINED_FUNCTION_79();
    sub_1934DBD30();
  }
}

void sub_1934DB624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_14_5();
  v26 = type metadata accessor for SageTranscript(v25);
  sub_193448758(v13 + *(v26 + 28), v21, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_23_5(v21);
  if (v27)
  {
    sub_19344E6DC(v21, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v23 + 32))(v12, v21, v11);
    sub_193451F04(v12, 1, 26211, 0xE200000000000000, v10, a10);
    (*(v23 + 8))(v12, v11);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DB7A8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_20_8(*(v9 + 36));
  OUTLINED_FUNCTION_23_5(v0);
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 7);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DB8D0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_20_8(*(v9 + 40));
  OUTLINED_FUNCTION_23_5(v0);
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 8);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DB9F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_20_8(*(v9 + 44));
  OUTLINED_FUNCTION_23_5(v0);
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_78_0();
    v12(v11);
    OUTLINED_FUNCTION_116_0(v1, 2);
    v13 = OUTLINED_FUNCTION_86_0();
    v14(v13);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DBB20()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for SageMetadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_19_12(*(v8 + 64));
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3B940, &unk_193957C00);
  }

  else
  {
    sub_1934DC0E4(v0, v1, type metadata accessor for SageMetadata);
    OUTLINED_FUNCTION_12_12(v1, 10);
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DBC28()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for MonotonicTimestamp(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_19_12(*(v8 + 68));
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_1934DC0E4(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12(v1, 11);
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934DBD30()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowIdentifiers(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_19_12(*(v8 + 72));
  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_19344E6DC(v0, &qword_1EAE3B948, &qword_193957C10);
  }

  else
  {
    sub_1934DC0E4(v0, v1, type metadata accessor for IntelligenceFlowIdentifiers);
    OUTLINED_FUNCTION_12_12(v1, 12);
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934DBE38(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = aSagetranscript_0[0];

  return v1;
}

uint64_t sub_1934DBED4()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA8F90);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19394FBB0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + dword_1EAEA8FC8;
  *v8 = 0;
  *v9 = "Unknown";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = OUTLINED_FUNCTION_3_1(v8 + v4);
  *v15 = 1;
  *v14 = "Protobuf";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v13();
  v16 = OUTLINED_FUNCTION_3_1(v8 + 2 * v4);
  *v17 = 2;
  *v16 = "Json";
  *(v16 + 8) = 4;
  *(v16 + 16) = 2;
  v13();
  return sub_19393C410();
}

uint64_t sub_1934DC0E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t SageTranscript.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t type metadata accessor for SageTranscript(uint64_t a1)
{
  result = qword_1ED50E4A0;
  if (!qword_1ED50E4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SageTranscript.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t SageTranscript.absoluteTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 28));
}

uint64_t SageTranscript._machAbsoluteTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SageTranscript(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SageTranscript._sessionID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 36));
}

uint64_t SageTranscript._bootSessionID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 40));
}

uint64_t SageTranscript._clientSessionID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 44));
}

uint64_t SageTranscript.eventLabel.getter()
{
  type metadata accessor for SageTranscript(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageTranscript.eventLabel.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_12_13() + 48));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SageTranscript.eventType.getter()
{
  type metadata accessor for SageTranscript(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageTranscript.eventType.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_12_13() + 52));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SageTranscript.serializationFormat.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SageTranscript(v2);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t SageTranscript.serializationFormat.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for SageTranscript(0);
  v6 = v1 + *(result + 56);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t SageTranscript.eventPayload.getter()
{
  type metadata accessor for SageTranscript(0);
  v0 = OUTLINED_FUNCTION_13_0();
  sub_193450268(v0, v1);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SageTranscript.eventPayload.setter()
{
  v3 = v1 + *(OUTLINED_FUNCTION_12_13() + 60);
  result = sub_19345012C(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t sub_1934DC95C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for SageMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t SageTranscript._sageMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3B940, &unk_193957C00, *(v1 + 64));
}

uint64_t SageTranscript.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3B498, &unk_193959120, *(v1 + 68));
}

uint64_t sub_1934DCAF4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowIdentifiers(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t SageTranscript.identifiers.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for SageTranscript(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3B948, &qword_193957C10, *(v1 + 72));
}

uint64_t sub_1934DCBE4@<X0>(uint64_t *a1@<X8>)
{
  result = SageTranscript.SerializationFormat.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934DCC0C@<X0>(char **a1@<X8>)
{
  result = static SageTranscript.SerializationFormat.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934DCC40()
{
  sub_19393CAB0();
  v0 = SageTranscript.SerializationFormat.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934DCCF8(uint64_t a1)
{
  sub_19393CAB0();
  v1 = SageTranscript.SerializationFormat.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t SageTranscript.hashValue.getter()
{
  sub_19393CAB0();
  SageTranscript.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934DCE0C(uint64_t a1)
{
  sub_19393CAB0();
  SageTranscript.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1934DCE4C()
{
  result = qword_1EAE3B9B8;
  if (!qword_1EAE3B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3B9C0, &qword_193957C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B9B8);
  }

  return result;
}

unint64_t sub_1934DCEB8()
{
  result = qword_1EAE3B9C8;
  if (!qword_1EAE3B9C8)
  {
    type metadata accessor for SageTranscript(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B9C8);
  }

  return result;
}

uint64_t sub_1934DCF3C(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(a1, &qword_1ED5082C0);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_19349D1FC(319, &qword_1ED506690, MEMORY[0x1E69E63B0]);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        OUTLINED_FUNCTION_15_20(v6, &qword_1ED508298);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_4_0();
          if (!(!v3 & v2))
          {
            sub_19349D1FC(319, qword_1ED504838, &type metadata for SageTranscript.SerializationFormat);
            OUTLINED_FUNCTION_4_0();
            if (!(!v3 & v2))
            {
              sub_19349D1FC(319, &qword_1ED506D30, MEMORY[0x1E6969080]);
              OUTLINED_FUNCTION_4_0();
              if (!(!v3 & v2))
              {
                OUTLINED_FUNCTION_15_20(v7, &qword_1ED506E28);
                OUTLINED_FUNCTION_4_0();
                if (!(!v3 & v2))
                {
                  OUTLINED_FUNCTION_15_20(v8, &qword_1ED507A78);
                  OUTLINED_FUNCTION_4_0();
                  if (!(!v3 & v2))
                  {
                    OUTLINED_FUNCTION_15_20(v9, qword_1ED5077D0);
                    OUTLINED_FUNCTION_4_0();
                    if (!(!v3 & v2))
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

  return v1;
}

void sub_1934DD14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *_s7ZeoliteOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s6LedgerOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1934DD324()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5100B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5100B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Zeolite.Ledger.Embedding.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:1209600.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_4 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5100B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D0, &qword_193957E48);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.Zeolite.Ledger.Embedding.attribute(_:)(void (*a1)(void))
{
  result = sub_1934DD728(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934DD770(void (*a1)(void))
{
  result = sub_1934DD728(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934DD7A0(uint64_t a1)
{
  result = sub_1934DD7C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934DD7C8()
{
  result = qword_1ED507F38[0];
  if (!qword_1ED507F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED507F38);
  }

  return result;
}

_BYTE *_s9EmbeddingOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ZeoliteEmbedding.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for ZeoliteEmbedding(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1934DDAC0(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3B9D8, &qword_193957EC0, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1934DDAC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZeoliteEmbedding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static ZeoliteEmbedding.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE3B9D8, &qword_193957EC0, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_1934DDC54(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934DDC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZeoliteEmbedding(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static ZeoliteEmbedding.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v2;
  v37 = v1;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  if (*sub_1934DFD3C() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v15 + 16))(v19, v22, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v23, v24, v25, v26);
    sub_19393C280();
    (*(v15 + 8))(v22, v13);
    if (!v0)
    {
      v28 = v36;
      sub_1934DDC54(v12, v36);
      v29 = type metadata accessor for ZeoliteEmbedding(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = v5;
    *(v27 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t ZeoliteEmbedding.serialize()()
{
  v1 = type metadata accessor for ZeoliteEmbedding(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9D8, &qword_193957EC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1934DDAC0(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3B9D8, &qword_193957EC0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3B9D8, &qword_193957EC0);
  return v11;
}

id static ZeoliteEmbedding.columns.getter()
{
  v130 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v12, v13, v14, v15, v16, 13, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v26 = OUTLINED_FUNCTION_2_4(inited, v19, v20, v21, v22, v23, v24, v25, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v36 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v36);
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v37, v38, v39, v40, v41, 3, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v42 = swift_initStackObject();
  v50 = OUTLINED_FUNCTION_2_4(v42, v43, v44, v45, v46, v47, v48, v49, v125);
  OUTLINED_FUNCTION_5_10(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v60);
  OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v61, v62, v63, v64, v65, 13, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v66 = swift_initStackObject();
  v74 = OUTLINED_FUNCTION_2_4(v66, v67, v68, v69, v70, v71, v72, v73, v126);
  OUTLINED_FUNCTION_5_10(v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v84 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v84);
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v85, v86, v87, v88, v89, 0, 2);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v90 = swift_initStackObject();
  v98 = OUTLINED_FUNCTION_2_4(v90, v91, v92, v93, v94, v95, v96, v97, v127);
  OUTLINED_FUNCTION_5_10(v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  v108 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v108);
  OUTLINED_FUNCTION_15_21();
  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v109, v110, v111, v112, v113, 0, 2);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v114 = swift_initStackObject();
  v122 = OUTLINED_FUNCTION_2_4(v114, v115, v116, v117, v118, v119, v120, v121, v128);
  *(v122 + 16) = v129;
  *(v122 + 32) = sub_19393C850();
  v123 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v124 = OUTLINED_FUNCTION_11_14();
  result = sub_19343D150(v124, 0xEA00000000006570, 2, 0, v122, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v130;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1934DE404()
{
  OUTLINED_FUNCTION_26();
  v55 = v2;
  v56 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v14 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v54 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = v6 == 0x49747865746E6F63 && v4 == 0xE900000000000044;
  if (!v23 && (OUTLINED_FUNCTION_0_18(0x49747865746E6F63, 0xE900000000000044) & 1) == 0)
  {
    v26 = OUTLINED_FUNCTION_12_14() & 0xFFFF0000FFFFFFFFLL | 0x444900000000;
    v27 = v6 == v26 && v4 == 0xE600000000000000;
    if (v27 || (OUTLINED_FUNCTION_0_18(v26, 0xE600000000000000) & 1) != 0)
    {
      v28 = v0 + *(type metadata accessor for ZeoliteEmbedding(0) + 32);
      if ((*(v28 + 8) & 1) == 0)
      {
        v57 = *v28;
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    v31 = OUTLINED_FUNCTION_10_13();
    v32 = v6 == v31 && v4 == 0xE700000000000000;
    if (v32 || (OUTLINED_FUNCTION_0_18(v31, 0xE700000000000000) & 1) != 0)
    {
      v33 = *(type metadata accessor for ZeoliteEmbedding(0) + 36);
LABEL_25:
      v34 = (v0 + v33);
      v35 = *(v0 + v33 + 8);
      if (v35)
      {
        v57 = *v34;
        v58 = v35;
        sub_1934948FC();
        goto LABEL_17;
      }

      v29 = 0uLL;
      v30 = v55;
      goto LABEL_16;
    }

    v36 = v6 == 0x6E69646465626D65 && v4 == 0xE900000000000067;
    if (v36 || (OUTLINED_FUNCTION_0_18(0x6E69646465626D65, 0xE900000000000067) & 1) != 0)
    {
      v57 = *(v0 + *(type metadata accessor for ZeoliteEmbedding(0) + 40));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B9E8, &qword_193957EC8);
      goto LABEL_8;
    }

    v37 = OUTLINED_FUNCTION_12_14() | 0x6574614400000000;
    v38 = v6 == v37 && v4 == 0xE800000000000000;
    if (v38 || (OUTLINED_FUNCTION_0_18(v37, 0xE800000000000000) & 1) != 0)
    {
      v39 = type metadata accessor for ZeoliteEmbedding(0);
      sub_1934DE90C(v0 + *(v39 + 44), v13);
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
      {
        v41 = v54;
        (*(v54 + 32))(v22, v13, v14);
        sub_1934948FC();
        (*(v41 + 8))(v22, v14);
        goto LABEL_17;
      }

      v40 = v13;
    }

    else
    {
      OUTLINED_FUNCTION_14_18();
      v42 = OUTLINED_FUNCTION_15_21();
      v44 = v6 == v42 && v4 == v43;
      if (!v44 && (OUTLINED_FUNCTION_0_18(v42, v43) & 1) == 0)
      {
        v47 = OUTLINED_FUNCTION_11_14();
        v49 = v6 == v47 && v4 == v48;
        if (!v49 && (OUTLINED_FUNCTION_0_18(v47, 0xEA00000000006570) & 1) == 0)
        {
          sub_19349AB64();
          swift_allocError();
          v51 = v50;
          *v50 = v6;
          v50[1] = v4;
          v50[5] = type metadata accessor for ZeoliteEmbedding(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v51 + 2);
          sub_1934DDAC0(v0, boxed_opaque_existential_1Tm);
          *(v51 + 48) = 1;
          swift_willThrow();

          goto LABEL_17;
        }

        v33 = *(type metadata accessor for ZeoliteEmbedding(0) + 52);
        goto LABEL_25;
      }

      v45 = type metadata accessor for ZeoliteEmbedding(0);
      sub_1934DE90C(v0 + *(v45 + 48), v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
      {
        v46 = v54;
        (*(v54 + 32))(v19, v10, v14);
        sub_1934948FC();
        (*(v46 + 8))(v19, v14);
        goto LABEL_17;
      }

      v40 = v10;
    }

    sub_19344E6DC(v40, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_15;
  }

  v24 = (v0 + *(type metadata accessor for ZeoliteEmbedding(0) + 28));
  v25 = v24[1];
  if (!v25)
  {
LABEL_15:
    v29 = 0uLL;
    v30 = v55;
LABEL_16:
    *v30 = v29;
    v30[1] = v29;
    goto LABEL_17;
  }

  v57 = *v24;
  v58 = v25;
LABEL_8:
  sub_1934948FC();
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934DE90C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ZeoliteEmbedding.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ZeoliteEmbedding(0);
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[8];
  OUTLINED_FUNCTION_8_11();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = v2[11];
  sub_1934E0648();
  v9 = v2[12];
  sub_19349C79C();
  v11 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1934DFD3C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_7_15(a1 + v3);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[8] = 1;
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_7_15(a1 + v8);
  sub_193442B60(a1 + v9, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_7_15(a1 + v9);

  *v11 = 0;
  v11[1] = 0;
  return result;
}

BOOL static ZeoliteEmbedding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v62 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58[-v21];
  v23 = type metadata accessor for ZeoliteEmbedding(0);
  OUTLINED_FUNCTION_3();
  if (v26)
  {
    if (!v24)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v25);
    v29 = v29 && v27 == v28;
    if (!v29 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v30 = v23[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v37)
  {
    if (!v35)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v36);
    v40 = v29 && v38 == v39;
    if (!v40 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  if ((sub_1934DF324(*(a1 + v23[10]), *(a2 + v23[10])) & 1) == 0)
  {
    return 0;
  }

  v41 = *(v16 + 48);
  v60 = v23[11];
  v61 = v41;
  sub_1934DE90C(a1 + v60, v22);
  sub_1934DE90C(a2 + v60, &v61[v22]);
  OUTLINED_FUNCTION_31(v22);
  if (v29)
  {
    OUTLINED_FUNCTION_31(&v61[v22]);
    if (v29)
    {
      sub_193442B60(v22, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_36;
    }

LABEL_34:
    v43 = v22;
LABEL_45:
    sub_193442B60(v43, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v22, v15);
  OUTLINED_FUNCTION_31(&v61[v22]);
  if (v42)
  {
    (*(v62 + 8))(v15, v4);
    goto LABEL_34;
  }

  (*(v62 + 32))(v8, &v61[v22], v4);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v59 = sub_19393C550();
  v44 = *(v62 + 8);
  v60 = v62 + 8;
  v61 = v44;
  (v44)(v8, v4);
  (v61)(v15, v4);
  sub_193442B60(v22, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v45 = v23[12];
  v46 = *(v16 + 48);
  sub_1934DE90C(a1 + v45, v19);
  sub_1934DE90C(a2 + v45, v19 + v46);
  OUTLINED_FUNCTION_31(v19);
  if (v29)
  {
    OUTLINED_FUNCTION_31(v19 + v46);
    if (v29)
    {
      sub_193442B60(v19, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  sub_1934DE90C(v19, v12);
  OUTLINED_FUNCTION_31(v19 + v46);
  if (v47)
  {
    (*(v62 + 8))(v12, v4);
LABEL_44:
    v43 = v19;
    goto LABEL_45;
  }

  v49 = v62;
  (*(v62 + 32))(v8, v19 + v46, v4);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v50 = sub_19393C550();
  v51 = *(v49 + 8);
  v51(v8, v4);
  v51(v12, v4);
  sub_193442B60(v19, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  OUTLINED_FUNCTION_3();
  if (!v54)
  {
    return !v52;
  }

  if (!v52)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5(v53);
  v57 = v29 && v55 == v56;
  return v57 || (sub_19393CA30() & 1) != 0;
}

uint64_t ZeoliteEmbedding.hash(into:)(uint64_t a1)
{
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v24 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for ZeoliteEmbedding(0);
  if (*(v1 + v15[7] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v16 = (v1 + v15[8]);
  if (*(v16 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = *v16;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v17);
  }

  if (*(v1 + v15[9] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934DF380(a1, *(v1 + v15[10]));
  sub_1934DE90C(v1 + v15[11], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = v24;
    (*(v24 + 32))(v7, v14, v3);
    OUTLINED_FUNCTION_103_0();
    v19 = OUTLINED_FUNCTION_1_25(&qword_1EAE3B978);
    OUTLINED_FUNCTION_73(v19);
    (*(v18 + 8))(v7, v3);
  }

  sub_1934DE90C(v1 + v15[12], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v20 = v24;
    (*(v24 + 32))(v7, v11, v3);
    OUTLINED_FUNCTION_103_0();
    v21 = OUTLINED_FUNCTION_1_25(&qword_1EAE3B978);
    OUTLINED_FUNCTION_73(v21);
    (*(v20 + 8))(v7, v3);
  }

  if (!*(v1 + v15[13] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_1934DF324(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1934DF380(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_19393CAE0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1934DF3E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_19393BE00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1934DF42C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA8FA8);
  __swift_project_value_buffer(v0, &qword_1EAEA8FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_193952700;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "contextID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "itemID";
  v10[1] = 6;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "modelID";
  v13[1] = 7;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "embedding";
  v16[1] = 9;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "itemDate";
  v19[1] = 8;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "processedDate";
  v22[1] = 13;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v5 + 6 * v2);
  *v26 = 7;
  *v25 = "sourceType";
  *(v25 + 8) = 10;
  *(v25 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

uint64_t sub_1934DF6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v10 = *(type metadata accessor for ZeoliteEmbedding(0) + 28);
        goto LABEL_13;
      case 2:
        v13 = type metadata accessor for ZeoliteEmbedding(0);
        OUTLINED_FUNCTION_8_2(*(v13 + 32));
        sub_19393C190();
        goto LABEL_14;
      case 3:
        v10 = *(type metadata accessor for ZeoliteEmbedding(0) + 36);
        goto LABEL_13;
      case 4:
        v12 = type metadata accessor for ZeoliteEmbedding(0);
        OUTLINED_FUNCTION_8_2(*(v12 + 40));
        sub_19393C120();
        goto LABEL_14;
      case 5:
        v11 = *(type metadata accessor for ZeoliteEmbedding(0) + 44);
        goto LABEL_11;
      case 6:
        v11 = *(type metadata accessor for ZeoliteEmbedding(0) + 48);
LABEL_11:
        sub_1934976E4(v3 + v11, 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_14;
      case 7:
        v10 = *(type metadata accessor for ZeoliteEmbedding(0) + 52);
LABEL_13:
        OUTLINED_FUNCTION_8_2(v10);
        sub_19393C200();
LABEL_14:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

int *sub_1934DF820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  result = type metadata accessor for ZeoliteEmbedding(0);
  v7 = result;
  v8 = (v3 + result[7]);
  v9 = v8[1];
  if (v9)
  {
    result = OUTLINED_FUNCTION_2_7(*v8, v9, 1);
    v5 = v4;
  }

  if (!v5)
  {
    if ((*(v3 + v7[8] + 8) & 1) == 0)
    {
      v4 = 0;
      sub_19393C360();
    }

    v10 = (v3 + v7[9]);
    v11 = v10[1];
    if (!v11 || (result = OUTLINED_FUNCTION_2_7(*v10, v11, 3), (v5 = v4) == 0))
    {
      if (!*(*(v3 + v7[10]) + 16) || (v4 = v5, result = sub_19393C310(), !v5))
      {
        OUTLINED_FUNCTION_79();
        result = sub_1934DF958();
        if (!v4)
        {
          OUTLINED_FUNCTION_79();
          result = sub_1934DFA94();
          v12 = (v3 + v7[13]);
          v13 = v12[1];
          if (v13)
          {
            return OUTLINED_FUNCTION_2_7(*v12, v13, 7);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1934DF958()
{
  OUTLINED_FUNCTION_9_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_5_19();
  sub_1934DE90C(v3 + *(v6 + 44), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    return sub_1934DFCD4(v2);
  }

  v8 = OUTLINED_FUNCTION_7_16();
  v9(v8);
  OUTLINED_FUNCTION_3_24(v1, 5);
  v10 = OUTLINED_FUNCTION_12_15();
  return v11(v10);
}

uint64_t sub_1934DFA94()
{
  OUTLINED_FUNCTION_9_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_5_19();
  sub_1934DE90C(v3 + *(v6 + 48), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    return sub_1934DFCD4(v2);
  }

  v8 = OUTLINED_FUNCTION_7_16();
  v9(v8);
  OUTLINED_FUNCTION_3_24(v1, 6);
  v10 = OUTLINED_FUNCTION_12_15();
  return v11(v10);
}

uint64_t sub_1934DFBD0(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3B9F0;

  return v1;
}

uint64_t sub_1934DFC14@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE4F990 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1EAE4F990);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, &qword_1EAEA8FA8);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1934DFCD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ZeoliteEmbedding.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for ZeoliteEmbedding(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t type metadata accessor for ZeoliteEmbedding(uint64_t a1)
{
  result = qword_1ED50EEE0;
  if (!qword_1ED50EEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ZeoliteEmbedding.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for ZeoliteEmbedding(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t ZeoliteEmbedding.contextID.getter()
{
  type metadata accessor for ZeoliteEmbedding(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ZeoliteEmbedding.contextID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_17() + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ZeoliteEmbedding.itemID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ZeoliteEmbedding(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ZeoliteEmbedding.modelID.getter()
{
  type metadata accessor for ZeoliteEmbedding(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ZeoliteEmbedding.modelID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_17() + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ZeoliteEmbedding.embedding.getter()
{
  type metadata accessor for ZeoliteEmbedding(0);
}

uint64_t ZeoliteEmbedding.embedding.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_25() + 40);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ZeoliteEmbedding.itemDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for ZeoliteEmbedding(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 44));
}

uint64_t ZeoliteEmbedding.processedDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for ZeoliteEmbedding(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 48));
}

uint64_t ZeoliteEmbedding.sourceType.getter()
{
  type metadata accessor for ZeoliteEmbedding(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ZeoliteEmbedding.sourceType.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_17() + 52));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ZeoliteEmbedding.hashValue.getter()
{
  sub_19393CAB0();
  ZeoliteEmbedding.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934E03EC(uint64_t a1)
{
  sub_19393CAB0();
  ZeoliteEmbedding.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1934E042C()
{
  result = qword_1EAE3BA00;
  if (!qword_1EAE3BA00)
  {
    type metadata accessor for ZeoliteEmbedding(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA00);
  }

  return result;
}

uint64_t sub_1934E04B0(uint64_t a1)
{
  sub_19349D140(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    OUTLINED_FUNCTION_0_24(v4, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v7 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_0_24(v6, &qword_1ED506678, MEMORY[0x1E69E7360]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1934E05F8(319, &qword_1ED5066A0, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1934E05F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s21GenerativeExperiencesOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1934E0714()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510118);
  v4 = __swift_project_value_buffer(v3, qword_1ED510118);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.TransparencyLog.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_5 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510118);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA08, &qword_193958038);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD000000000000021, 0x8000000193A17BA0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.TransparencyLog.attribute(_:)(void (*a1)(void))
{
  result = sub_1934E0B34(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934E0B70(void (*a1)(void))
{
  result = sub_1934E0B34(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934E0BD8(uint64_t a1)
{
  result = sub_1934E0C00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934E0C00()
{
  result = qword_1ED5073C0;
  if (!qword_1ED5073C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5073C0);
  }

  return result;
}

_BYTE *_s15TransparencyLogOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesTransparencyLog.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA10, &qword_1939580B0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1934E0EDC(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3BA10, &qword_1939580B0, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3BA10, &qword_1939580B0);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1934E0EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesTransparencyLog.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA10, &qword_1939580B0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3BA10, &qword_1939580B0, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_1934E1080(v8, a3);
  }

  return result;
}

uint64_t sub_1934E1080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesTransparencyLog.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA10, &qword_1939580B0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1934E393C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1934E1080(v11, v36);
      v29 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t GenerativeExperiencesTransparencyLog.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA10, &qword_1939580B0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1934E0EDC(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3BA10, &qword_1939580B0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3BA10, &qword_1939580B0);
  return v11;
}

id static GenerativeExperiencesTransparencyLog.columns.getter()
{
  v179 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6D617473656D6974, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  v32 = OUTLINED_FUNCTION_105();
  result = OUTLINED_FUNCTION_3_5(v32, 0xEA00000000007265);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v33 = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_2_4(v33, v34, v35, v36, v37, v38, v39, v40, v172);
  OUTLINED_FUNCTION_5_10(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v51 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v51);
  result = OUTLINED_FUNCTION_3_5(0x74706D6F7270, 0xE600000000000000);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v52 = swift_initStackObject();
  v60 = OUTLINED_FUNCTION_2_4(v52, v53, v54, v55, v56, v57, v58, v59, v173);
  OUTLINED_FUNCTION_5_10(v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v70 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v70);
  v71 = OUTLINED_FUNCTION_14_19();
  result = OUTLINED_FUNCTION_3_5(v71, 0xE800000000000000);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v72 = swift_initStackObject();
  v80 = OUTLINED_FUNCTION_2_4(v72, v73, v74, v75, v76, v77, v78, v79, v174);
  OUTLINED_FUNCTION_5_10(v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v90 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v90);
  v91 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v91 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000, 0xE500000000000000);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v92 = swift_initStackObject();
  v100 = OUTLINED_FUNCTION_2_4(v92, v93, v94, v95, v96, v97, v98, v99, v175);
  OUTLINED_FUNCTION_5_10(v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  v110 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v110);
  v111 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v111 | 0x7265566C00000000, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v112 = swift_initStackObject();
  v120 = OUTLINED_FUNCTION_2_4(v112, v113, v114, v115, v116, v117, v118, v119, v176);
  OUTLINED_FUNCTION_5_10(v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  v130 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v130);
  v131 = OUTLINED_FUNCTION_17_10();
  result = OUTLINED_FUNCTION_3_5(v131, 0xE700000000000000);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v132 = swift_initStackObject();
  v140 = OUTLINED_FUNCTION_2_4(v132, v133, v134, v135, v136, v137, v138, v139, v177);
  OUTLINED_FUNCTION_5_10(v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  v150 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v150);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v151, v152, v153, v154, v0, 2, 0);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v178;
  v155 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
  v165 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v165);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000010, 0x8000000193A17C10);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v178;
  v166 = OUTLINED_FUNCTION_6_4();
  *(v166 + 16) = v178;
  *(v166 + 32) = sub_19393C850();
  v167 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v168, v169, v170, v171, v166, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v179;
  }

LABEL_21:
  __break(1u);
  return result;
}

int *sub_1934E1964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v46 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (!v16 && (OUTLINED_FUNCTION_59_0(0x6D617473656D6974, 0xE900000000000070) & 1) == 0)
  {
    v20 = OUTLINED_FUNCTION_105();
    v22 = a1 == v20 && a2 == v21;
    if (v22 || (OUTLINED_FUNCTION_59_0(v20, 0xEA00000000007265) & 1) != 0)
    {
      result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
      v23 = result[8];
    }

    else
    {
      v26 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
      if (v26 || (OUTLINED_FUNCTION_59_0(0x74706D6F7270, 0xE600000000000000) & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
        v23 = result[9];
      }

      else
      {
        v27 = OUTLINED_FUNCTION_14_19();
        v28 = a1 == v27 && a2 == 0xE800000000000000;
        if (v28 || (OUTLINED_FUNCTION_59_0(v27, 0xE800000000000000) & 1) != 0)
        {
          result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
          v23 = result[10];
        }

        else
        {
          v29 = OUTLINED_FUNCTION_12_3() & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
          v30 = a1 == v29 && a2 == 0xE500000000000000;
          if (v30 || (OUTLINED_FUNCTION_59_0(v29, 0xE500000000000000) & 1) != 0)
          {
            result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
            v23 = result[11];
          }

          else
          {
            v31 = OUTLINED_FUNCTION_12_3() | 0x7265566C00000000;
            v33 = a1 == v31 && a2 == v32;
            if (v33 || (OUTLINED_FUNCTION_59_0(v31, v32) & 1) != 0)
            {
              result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
              v23 = result[12];
            }

            else
            {
              v34 = OUTLINED_FUNCTION_17_10();
              v35 = a1 == v34 && a2 == 0xE700000000000000;
              if (!v35 && (OUTLINED_FUNCTION_59_0(v34, 0xE700000000000000) & 1) == 0)
              {
                v36 = OUTLINED_FUNCTION_16_10();
                v37 = a1 == v36 && a2 == 0xE900000000000065;
                if (v37 || (OUTLINED_FUNCTION_59_0(v36, 0xE900000000000065) & 1) != 0)
                {
                  result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
                  v38 = v3 + result[14];
                  if (*(v38 + 4))
                  {
                    goto LABEL_8;
                  }

                  LODWORD(v47) = *v38;
                }

                else
                {
                  v39 = a1 == 0xD000000000000010 && 0x8000000193A17C10 == a2;
                  if (v39 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A17C10) & 1) != 0)
                  {
                    result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
                    v23 = result[15];
                    goto LABEL_16;
                  }

                  v40 = a1 == 0xD000000000000014 && 0x8000000193A17C30 == a2;
                  if (!v40 && (OUTLINED_FUNCTION_59_0(0xD000000000000014, 0x8000000193A17C30) & 1) == 0)
                  {
                    sub_19349AB64();
                    OUTLINED_FUNCTION_11();
                    swift_allocError();
                    v44 = v43;
                    *v43 = a1;
                    v43[1] = a2;
                    v43[5] = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
                    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v44 + 2);
                    sub_1934E0EDC(v3, boxed_opaque_existential_1Tm);
                    *(v44 + 48) = 1;
                    swift_willThrow();
                  }

                  v41 = v3 + *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 64);
                  v42 = *v41;
                  LOBYTE(v41) = *(v41 + 8);
                  v47 = v42;
                  LOBYTE(v48) = v41;
                }

                return sub_1934948FC();
              }

              result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
              v23 = result[13];
            }
          }
        }
      }
    }

LABEL_16:
    v24 = (v3 + v23);
    v25 = *(v3 + v23 + 8);
    if (!v25)
    {
      goto LABEL_8;
    }

    v47 = *v24;
    v48 = v25;
    return sub_1934948FC();
  }

  v17 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  sub_1934DE90C(v3 + *(v17 + 28), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_19344E6DC(v8, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_8:
    v19 = v46;
    *v46 = 0u;
    v19[1] = 0u;
    return result;
  }

  (*(v11 + 32))(v15, v8, v9);
  sub_1934948FC();
  return (*(v11 + 8))(v15, v9);
}

uint64_t GenerativeExperiencesTransparencyLog.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_1934E0648();
  v16 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v12 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[14];
  sub_1934E3F94();
  v7 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1934E393C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);

  *v16 = 0;
  v16[1] = 0;

  *v15 = 0;
  v15[1] = 0;

  *v14 = 0;
  v14[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *v6 = 0;
  v6[4] = 1;
  *v7 = 0;
  v7[1] = 0;
  v10 = a1 + v2[16];
  *v10 = 0;
  v10[8] = 0;
  return result;
}

uint64_t static GenerativeExperiencesTransparencyLog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - v15;
  v17 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  v18 = v17[7];
  v19 = *(v14 + 56);
  sub_1934DE90C(a1 + v18, v16);
  sub_1934DE90C(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_31(v16);
  if (!v20)
  {
    sub_1934DE90C(v16, v12);
    OUTLINED_FUNCTION_31(&v16[v19]);
    if (!v20)
    {
      (*(v6 + 32))(v9, &v16[v19], v4);
      sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
      v23 = sub_19393C550();
      v24 = *(v6 + 8);
      v24(v9, v4);
      v24(v12, v4);
      sub_193442B60(v16, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v12, v4);
LABEL_9:
    sub_193442B60(v16, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(&v16[v19]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_193442B60(v16, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_13:
  OUTLINED_FUNCTION_3();
  if (v27)
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v26);
    v30 = v20 && v28 == v29;
    if (!v30 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v25)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v33)
  {
    if (!v31)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v32);
    v36 = v20 && v34 == v35;
    if (!v36 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v31)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v39)
  {
    if (!v37)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v38);
    v42 = v20 && v40 == v41;
    if (!v42 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v37)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v45)
  {
    if (!v43)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v44);
    v48 = v20 && v46 == v47;
    if (!v48 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v43)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v51)
  {
    if (!v49)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v50);
    v54 = v20 && v52 == v53;
    if (!v54 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v49)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v57)
  {
    if (!v55)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v56);
    v60 = v20 && v58 == v59;
    if (!v60 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v55)
  {
    goto LABEL_10;
  }

  v61 = v17[14];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 4);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 4);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v68)
  {
    if (v66)
    {
      OUTLINED_FUNCTION_5(v67);
      v71 = v20 && v69 == v70;
      if (v71 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (!v66)
  {
LABEL_82:
    v72 = v17[16];
    v73 = *(a1 + v72 + 8);
    v78 = *(a1 + v72);
    v79 = v73;
    v74 = (a2 + v72);
    v75 = *v74;
    LOBYTE(v74) = *(v74 + 8);
    v76 = v75;
    v77 = v74;
    sub_1934E2494();
    v21 = sub_19393C550();
    return v21 & 1;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_1934E2494()
{
  result = qword_1EAE3A728;
  if (!qword_1EAE3A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A728);
  }

  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  sub_1934DE90C(v2 + v12[7], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v5 + 32))(v8, v11, v3);
    sub_19393CAD0();
    sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v5 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v13 = (v2 + v12[14]);
  if (*(v13 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v3 = *v13;
    sub_19393CAD0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v14 = (v2 + v12[16]);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  v17 = v15;
  v18 = v14;
  sub_1934E27C4();
  return sub_19393C540();
}

unint64_t sub_1934E27C4()
{
  result = qword_1EAE3BA18;
  if (!qword_1EAE3BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA18);
  }

  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.ExecutionEnvironment.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 1;
  switch(result)
  {
    case 1:
      break;
    case 3:
      v2 = 1;
      break;
    case 4:
      v2 = 2;
      break;
    case 5:
      v2 = 3;
      break;
    default:
      v3 = 0;
      v2 = result;
      break;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.ExecutionEnvironment.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193958168[result];
  }

  return result;
}

char *static GenerativeExperiencesTransparencyLog.ExecutionEnvironment.allCases.getter()
{
  v0 = sub_1934E2C54(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E2C54(v16, v2 + 1, 1, v17);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E2C54(v18, v2 + 2, 1, v19);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E2C54(v20, v2 + 3, 1, v21);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v22 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934E2C54(v22, v2 + 4, 1, v23);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v24 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_1934E2C54(v24, v2 + 5, 1, v25);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t GenerativeExperiencesTransparencyLog.ExecutionEnvironment.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 0x6563697665446E4FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 2019650113;
      break;
    case 3:
      result = 0x54504774616843;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.ExecutionEnvironment.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x6563697665446E4FLL && a2 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x6563697665446E4FLL, 0xE800000000000000) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0xD000000000000013 && 0x8000000193A17C50 == a2;
  if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A17C50) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  v12 = a1 == 2019650113 && a2 == 0xE400000000000000;
  if (v12 || (OUTLINED_FUNCTION_0_9(2019650113, 0xE400000000000000) & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else if (a1 == 0x54504774616843 && a2 == 0xE700000000000000)
  {

    v9 = 1;
    v8 = 3;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(0x54504774616843, 0xE700000000000000);

    v8 = 3;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1934E2C54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA28, &qword_193958160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1934E2D54()
{
  result = qword_1EAE3BA20;
  if (!qword_1EAE3BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA20);
  }

  return result;
}

uint64_t sub_1934E2DA8()
{
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, &qword_1EAEA8FC0);
  __swift_project_value_buffer(v3, &qword_1EAEA8FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 72);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v6, xmmword_193952660);
  *v2 = 1;
  *v1 = "timestamp";
  *(v1 + 8) = 9;
  *(v1 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v9 = *(v8 + 104);
  v9(v1, v7, v0);
  v10 = OUTLINED_FUNCTION_3_1(v2 + v5);
  *v11 = 2;
  *v10 = "identifier";
  v10[1] = 10;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v2 + 2 * v5);
  *v14 = 3;
  *v13 = "prompt";
  v13[1] = 6;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_44(3 * v5);
  *v17 = 4;
  v18 = OUTLINED_FUNCTION_5_4(v16, "response");
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v2 + 4 * v5);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_5_4(v19, "model");
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 6;
  v24 = OUTLINED_FUNCTION_5_4(v22, "modelVersion");
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v2 + 6 * v5);
  *v26 = 7;
  v27 = OUTLINED_FUNCTION_5_4(v25, "useCase");
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v5);
  *v29 = 8;
  *v28 = "errorCode";
  v28[1] = 9;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v9)(v30);
  v31 = OUTLINED_FUNCTION_3_1(&v2[v5]);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_5_4(v31, "clientIdentifier");
  (v9)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v5);
  *v35 = 10;
  *v34 = "executionEnvironment";
  *(v34 + 8) = 20;
  *(v34 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

void sub_1934E30AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        v10 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
        sub_1934976E4(v3 + *(v10 + 28), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_16;
      case 2:
        v11 = *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 32);
        goto LABEL_15;
      case 3:
        v11 = *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 36);
        goto LABEL_15;
      case 4:
        v11 = *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 40);
        goto LABEL_15;
      case 5:
        v11 = *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 44);
        goto LABEL_15;
      case 6:
        v11 = *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 48);
        goto LABEL_15;
      case 7:
        v11 = *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 52);
        goto LABEL_15;
      case 8:
        v13 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
        OUTLINED_FUNCTION_8_2(*(v13 + 56));
        sub_19393C170();
        goto LABEL_16;
      case 9:
        v11 = *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 60);
LABEL_15:
        OUTLINED_FUNCTION_8_2(v11);
        sub_19393C200();
LABEL_16:
        v5 = 0;
        break;
      case 10:
        sub_1934982A8();
        v12 = v3 + *(type metadata accessor for GenerativeExperiencesTransparencyLog(0) + 64);
        *v12 = 0;
        *(v12 + 8) = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1934E3290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1934E349C(v3, a1, a2, a3);
  if (!v4)
  {
    v8 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
    OUTLINED_FUNCTION_5_20();
    if (v9)
    {
      OUTLINED_FUNCTION_2_10(*v10, v9, 2);
    }

    OUTLINED_FUNCTION_5_20();
    if (v11)
    {
      OUTLINED_FUNCTION_2_10(*v12, v11, 3);
    }

    OUTLINED_FUNCTION_5_20();
    if (v13)
    {
      OUTLINED_FUNCTION_2_10(*v14, v13, 4);
    }

    OUTLINED_FUNCTION_5_20();
    if (v15)
    {
      OUTLINED_FUNCTION_2_10(*v16, v15, 5);
    }

    OUTLINED_FUNCTION_5_20();
    if (v17)
    {
      OUTLINED_FUNCTION_2_10(*v18, v17, 6);
    }

    OUTLINED_FUNCTION_5_20();
    if (v19)
    {
      OUTLINED_FUNCTION_2_10(*v20, v19, 7);
    }

    if ((*(v3 + *(v8 + 56) + 4) & 1) == 0)
    {
      sub_19393C350();
    }

    OUTLINED_FUNCTION_5_20();
    if (v21)
    {
      OUTLINED_FUNCTION_2_10(*v22, v21, 9);
    }

    v23 = v3 + *(v8 + 64);
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *v23;
    v27 = v25;
    sub_1934E2494();
    result = sub_19393C550();
    if ((result & 1) == 0)
    {
      v26 = v24;
      v27 = v25;
      return sub_193447324(&v26, 10, a2, &type metadata for GenerativeExperiencesTransparencyLog.ExecutionEnvironment, a3, &off_1F07C2F10);
    }
  }

  return result;
}

uint64_t sub_1934E349C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_19393BE00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  sub_1934DE90C(a1 + *(v14 + 28), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_193451F04(v13, 1, 2020175477, 0xE400000000000000, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1934E3658(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3BA30;

  return v1;
}

uint64_t sub_1934E36F4()
{
  v3 = sub_19393C420();
  __swift_allocate_value_buffer(v3, qword_1EAEA8FD8);
  __swift_project_value_buffer(v3, qword_1EAEA8FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 72);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v2 = 0;
  *v1 = "Unknown";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v9 = *(v8 + 104);
  v9(v1, v7, v0);
  v10 = OUTLINED_FUNCTION_3_1(v2 + v5);
  *v11 = 1;
  v12 = OUTLINED_FUNCTION_5_4(v10, "OnDevice");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v2 + 2 * v5);
  *v14 = 3;
  v15 = OUTLINED_FUNCTION_5_4(v13, "PrivateCloudCompute");
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_44(3 * v5);
  *v17 = 4;
  v18 = OUTLINED_FUNCTION_5_4(v16, "Ajax");
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v2 + 4 * v5);
  *v20 = 5;
  *v19 = "ChatGPT";
  v19[1] = 7;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  return sub_19393C410();
}

uint64_t GenerativeExperiencesTransparencyLog.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesTransparencyLog(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for GenerativeExperiencesTransparencyLog(uint64_t a1)
{
  result = qword_1ED50EE40;
  if (!qword_1ED50EE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesTransparencyLog(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t GenerativeExperiencesTransparencyLog.timestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesTransparencyLog(v2);
  return sub_19344865C(v1 + *(v3 + 28), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t GenerativeExperiencesTransparencyLog.identifier.getter()
{
  type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.identifier.setter()
{
  OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.prompt.getter()
{
  type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.prompt.setter()
{
  OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.response.getter()
{
  type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.response.setter()
{
  OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.model.getter()
{
  type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.model.setter()
{
  OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.modelVersion.getter()
{
  type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.modelVersion.setter()
{
  OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.useCase.getter()
{
  type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.useCase.setter()
{
  OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.errorCode.setter()
{
  result = OUTLINED_FUNCTION_5_21();
  v3 = v1 + *(result + 56);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.clientIdentifier.getter()
{
  type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesTransparencyLog.clientIdentifier.setter()
{
  OUTLINED_FUNCTION_2_25();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.executionEnvironment.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for GenerativeExperiencesTransparencyLog(v2);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t GenerativeExperiencesTransparencyLog.executionEnvironment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GenerativeExperiencesTransparencyLog(0);
  v5 = v1 + *(result + 64);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_1934E41C4@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeExperiencesTransparencyLog.ExecutionEnvironment.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934E41EC@<X0>(char **a1@<X8>)
{
  result = static GenerativeExperiencesTransparencyLog.ExecutionEnvironment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934E4220()
{
  sub_19393CAB0();
  v0 = GenerativeExperiencesTransparencyLog.ExecutionEnvironment.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934E42D8(uint64_t a1)
{
  sub_19393CAB0();
  v1 = GenerativeExperiencesTransparencyLog.ExecutionEnvironment.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t GenerativeExperiencesTransparencyLog.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesTransparencyLog.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934E43EC(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeExperiencesTransparencyLog.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_1934E442C()
{
  result = qword_1EAE3BA40;
  if (!qword_1EAE3BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BA48, &qword_1939581F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA40);
  }

  return result;
}

unint64_t sub_1934E4498()
{
  result = qword_1EAE3BA50;
  if (!qword_1EAE3BA50)
  {
    type metadata accessor for GenerativeExperiencesTransparencyLog(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA50);
  }

  return result;
}

uint64_t sub_1934E451C(uint64_t a1)
{
  sub_19349D140(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    v2 = v6;
    if (v7 > 0x3F)
    {
      return v2;
    }

    sub_19349D1FC(319, &qword_1ED508058, MEMORY[0x1E69E72F0]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

_BYTE *_s4SiriOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1934E46F0()
{
  v0 = sub_19393C820();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_1();
  v4 = v3 - v2;
  v5 = sub_19393C810();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v6 = sub_19393C4E0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5_1();
  sub_19343CF00(0, &qword_1EAE3BA78, 0x1E69E9610);
  sub_19393C4D0();
  sub_1934E666C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA88, &qword_1939584B8);
  sub_1934E66C4();
  sub_19393C8A0();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_19393C840();
  qword_1ED510168 = result;
  return result;
}

id sub_1934E48F0@<X0>(void *a1@<X8>)
{
  v3 = qword_1EAE4FE30;
  if (qword_1EAE4FE30)
  {
    v4 = qword_1EAE4FE30;
LABEL_3:
    *a1 = v4;
    return v3;
  }

  sub_193434AE0();
  result = sub_19393BF70();
  if (!v1)
  {
    v6 = qword_1EAE4FE30;
    qword_1EAE4FE30 = result;
    v4 = result;

    v3 = 0;
    goto LABEL_3;
  }

  return result;
}

uint64_t *sub_1934E49C8()
{
  if (qword_1ED50E5D0 != -1)
  {
    OUTLINED_FUNCTION_7_18(&qword_1ED50E5D0);
  }

  return &qword_1ED5127B0;
}

id sub_1934E4A60()
{
  v1 = sub_19393C570();
  if (qword_1EAE45B60 != -1)
  {
    OUTLINED_FUNCTION_5_22(&qword_1EAE45B60);
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = OUTLINED_FUNCTION_8_21();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_1934E4CF8()
{
  v1 = sub_19393C570();
  if (qword_1EAE45B70 != -1)
  {
    OUTLINED_FUNCTION_4_16(&qword_1EAE45B70);
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_1934E4DE0(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v5 = OUTLINED_FUNCTION_11_15(v4);
  v6 = MEMORY[0x1E69E63B0];
  *(v5 + 16) = xmmword_19394FBE0;
  *(v5 + 56) = v6;
  *(v5 + 32) = a2;
  v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v8 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v5 + 88) = v8;
  *(v5 + 64) = v7;
  v9 = OUTLINED_FUNCTION_11_15(v4);
  OUTLINED_FUNCTION_3_26(v9, v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, v18);
  *(v19 + 56) = v6;
  *(v19 + 32) = a2;
  v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v7[11] = v8;
  v7[8] = v20;
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_0_25(&_MergedGlobals_6);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v2)
  {
  }

  else
  {
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v24, v5, v7, v25);
  }
}

id sub_1934E4F90(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v11 = OUTLINED_FUNCTION_11_15(v10);
  *(v11 + 16) = xmmword_19394FBE0;
  v12 = MEMORY[0x1E69E63B0];
  if (a2)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v11 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v11 + 32) = v13;
  }

  else
  {
    *(&v47 + 1) = MEMORY[0x1E69E63B0];
    *&v46 = a1;
    sub_193495EE0(&v46, (v11 + 32));
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v15 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v11 + 88) = v15;
  *(v11 + 64) = v14;
  v16 = OUTLINED_FUNCTION_11_15(v10);
  OUTLINED_FUNCTION_3_26(v16, v17, v18, v19, v20, v21, v22, v23, v24, v39, v41, v25);
  if (a4)
  {
    v46 = 0u;
    v47 = 0u;
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v10 + 56) = v15;
    *(v10 + 32) = v26;
    if (*(&v47 + 1))
    {
      sub_1934E60B4(&v46);
    }
  }

  else
  {
    *(&v47 + 1) = v12;
    *&v46 = a3;
    sub_193495EE0(&v46, (v10 + 32));
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v10 + 88) = v15;
  *(v10 + 64) = v27;
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_0_25(&_MergedGlobals_6);
  }

  v28 = sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_14_20(v28, v29, v30, v31, v32, v33, v34, v35, v40, v42, 2, 4, v44, a5);
  if (v5)
  {
  }

  else
  {
    v37 = v46;
    v38 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v43, v11, v10, v37);
  }
}

id sub_1934E51B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v6 = OUTLINED_FUNCTION_11_15(v5);
  *(v6 + 16) = xmmword_19394FBE0;
  v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v8 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v6 + 32) = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v6 + 88) = MEMORY[0x1E69E6158];
  *(v6 + 56) = v8;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  v10 = OUTLINED_FUNCTION_11_15(v5);
  OUTLINED_FUNCTION_3_26(v10, v11, v12, v13, v14, v15, v16, v17, v18, v24, v25, v19);
  v20 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

  v5[4] = [v20 init];
  v5[11] = v9;
  v5[7] = v8;
  v5[8] = a1;
  v5[9] = a2;
  v21 = _MergedGlobals_6;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_0_25(&_MergedGlobals_6);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v27)
  {
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v26, v6, v5, v28);
  }
}

id sub_1934E5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v9 = OUTLINED_FUNCTION_11_15(v8);
  *(v9 + 16) = xmmword_19394FBE0;
  v10 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v11 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v9 + 56) = v11;
  *(v9 + 32) = v10;
  v12 = MEMORY[0x1E69E6158];
  if (a2)
  {
    *(&v46 + 1) = MEMORY[0x1E69E6158];
    *&v45 = a1;
    *(&v45 + 1) = a2;
    sub_193495EE0(&v45, (v9 + 64));
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v9 + 88) = v11;
    *(v9 + 64) = v13;
  }

  v14 = OUTLINED_FUNCTION_11_15(v8);
  OUTLINED_FUNCTION_3_26(v14, v15, v16, v17, v18, v19, v20, v21, v22, v38, a3, v23);
  v24 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

  v25 = [v24 init];
  *(v8 + 56) = v11;
  *(v8 + 32) = v25;
  if (a4)
  {
    *(&v46 + 1) = v12;
    *&v45 = v42;
    *(&v45 + 1) = a4;
    sub_193495EE0(&v45, (v8 + 64));
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v8 + 88) = v11;
    *(v8 + 64) = v26;
    if (*(&v46 + 1))
    {
      sub_1934E60B4(&v45);
    }
  }

  v27 = _MergedGlobals_6;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_0_25(&_MergedGlobals_6);
  }

  v28 = sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_14_20(v28, v29, v30, v31, v32, v33, v34, v35, v39, v42, 2, 4, v43, a5);
  if (v27)
  {
  }

  else
  {
    v37 = v45;
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v40, v9, v8, v37);
  }
}

id sub_1934E55A0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v14 = OUTLINED_FUNCTION_11_15(v13);
  *(v14 + 16) = xmmword_19394FBE0;
  if (a2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v14 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v14 + 32) = v15;
  }

  else
  {
    v33 = MEMORY[0x1E69E63B0];
    *&v32 = a1;
    sub_193495EE0(&v32, (v14 + 32));
  }

  v16 = MEMORY[0x1E69E6158];
  v17 = a8;
  if (a6)
  {
    v33 = MEMORY[0x1E69E6158];
    *&v32 = a5;
    *(&v32 + 1) = a6;
    sub_193495EE0(&v32, (v14 + 64));
  }

  else
  {
    v18 = [OUTLINED_FUNCTION_13_8() &selRef_entityIdentifier];
    *(v14 + 88) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v14 + 64) = v18;
    if (v33)
    {
      sub_1934E60B4(&v32);
    }
  }

  v19 = OUTLINED_FUNCTION_11_15(v13);
  *(v19 + 16) = xmmword_19394FBE0;
  if (a4)
  {
    v20 = OUTLINED_FUNCTION_13_8();

    v21 = [v20 &selRef_entityIdentifier];
    *(v19 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v19 + 32) = v21;
    if (v33)
    {
      sub_1934E60B4(&v32);
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E63B0];
    *&v32 = a3;
    sub_193495EE0(&v32, (v19 + 32));
  }

  if (v17)
  {
    v33 = v16;
    *&v32 = a7;
    *(&v32 + 1) = v17;
    sub_193495EE0(&v32, (v19 + 64));
  }

  else
  {
    v22 = [OUTLINED_FUNCTION_13_8() &selRef_entityIdentifier];
    *(v19 + 88) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v19 + 64) = v22;
    if (v33)
    {
      sub_1934E60B4(&v32);
    }
  }

  v23 = _MergedGlobals_6;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_0_25(&_MergedGlobals_6);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  v24 = v34;
  sub_19393C830();
  if (v24)
  {
  }

  else
  {
    v26 = v32;
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v27, v14, v19, v26);
  }
}

id _s27IntelligencePlatformLibrary0C0O7StreamsO0A4FlowO10TranscriptO10DatastreamO7IndexesO026Datestamp_ClientSessionID_J14RequestIDIndexC4name6fields16streamIdentifierAOSS_SaySo12BMIndexFieldCGSStcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(v5);
  v7 = sub_19393C570();

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v8 = sub_19393C6C0();

  v9 = sub_19393C570();

  v10 = [v6 initWithName:v7 fields:v8 streamIdentifier:v9];

  return v10;
}

void sub_1934E59E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_19393C580();
  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  sub_19393C6D0();
  v7 = sub_19393C580();
  a6(v7);
  __break(1u);
}

id sub_1934E5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1939583F0;
  v8 = objc_allocWithZone(MEMORY[0x1E698F298]);
  *(v7 + 32) = sub_1934E5F70(0x6D61747365746164, 0xE900000000000070, 0xD00000000000002ELL, 0x8000000193A17FC0, 1);
  v9 = objc_allocWithZone(MEMORY[0x1E698F298]);
  result = sub_1934E5F70(a2, a3, a2, a3, 2);
  *(v7 + 40) = result;
  *a4 = v7;
  return result;
}

id sub_1934E5B9C()
{
  v1 = OUTLINED_FUNCTION_8_21();
  if (qword_1EAE45B68 != -1)
  {
    OUTLINED_FUNCTION_6_17(&qword_1EAE45B68);
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = OUTLINED_FUNCTION_8_21();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_1934E5CCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t *sub_1934E5D3C()
{
  if (qword_1ED510170 != -1)
  {
    swift_once();
  }

  return &qword_1ED510178;
}

uint64_t *sub_1934E5DD8()
{
  if (qword_1ED510180 != -1)
  {
    swift_once();
  }

  return &qword_1ED510188;
}

uint64_t sub_1934E5E74(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = objc_allocWithZone(a2(a1));
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *sub_1934E5EBC()
{
  if (qword_1ED510190 != -1)
  {
    swift_once();
  }

  return &qword_1ED510198;
}

id sub_1934E5F24(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

id sub_1934E5F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_19393C570();

  v8 = sub_19393C570();

  v9 = [v5 initWithName:v7 expression:v8 dataType:a5];

  return v9;
}

id sub_1934E6000(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_19393C6C0();

  v8 = sub_19393C6C0();

  v9 = [v4 initWithIndex:a1 startFields:v7 endFields:v8 database:a4];

  return v9;
}

uint64_t sub_1934E60B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA70, &qword_193958408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s7IndexesOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_ClientSessionIdIndex.indexSearch(startDatestamp:endDatestamp:startClientSessionId:endClientSessionId:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_TaskIdIndex.indexSearch(startDatestamp:endDatestamp:startTaskID:endTaskID:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.Siri.PostSiriEngagement.Indexes.Datestamp_LastRequestIdIndex.indexSearch(startDatestamp:endDatestamp:startLastRequestId:endLastRequestId:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

unint64_t sub_1934E666C()
{
  result = qword_1EAE3BA80;
  if (!qword_1EAE3BA80)
  {
    sub_19393C810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA80);
  }

  return result;
}

unint64_t sub_1934E66C4()
{
  result = qword_1EAE3BA90;
  if (!qword_1EAE3BA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BA88, &qword_1939584B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BA90);
  }

  return result;
}

uint64_t sub_1934E6764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5101B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5101B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Siri.PostSiriEngagement.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1939583F0;
    sub_19343CF00(0, &qword_1ED506688, 0x1E696AE18);
    v6 = OUTLINED_FUNCTION_3_27();
    v7 = objc_allocWithZone(MEMORY[0x1E698F330]);
    *(v5 + 32) = sub_19343FE48(0xD00000000000001DLL, 0x8000000193A18010, v6);
    v8 = OUTLINED_FUNCTION_3_27();
    v9 = objc_allocWithZone(MEMORY[0x1E698F330]);
    *(v5 + 40) = sub_19343FE48(0x2D656C6261736964, 0xEC00000069726973, v8);
    v10 = objc_opt_self();
    if (_MergedGlobals_7 != -1)
    {
      swift_once();
    }

    v11 = sub_19393BE60();
    __swift_project_value_buffer(v11, qword_1ED5101B8);
    v12 = sub_19393BE30();
    v13 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA98, &qword_1939584F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_19393C6C0();
    sub_19343CF00(0, &qword_1ED506680, 0x1E698F330);
    v16 = sub_19393C6C0();

    BYTE2(v18) = 1;
    LOWORD(v18) = 1;
    v17 = [v10 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1934E6C64()
{
  v0 = static Library.Streams.Siri.PostSiriEngagement.configuration.getter();
  v1 = [v0 streamIdentifier];

  v2 = static Library.Streams.Siri.PostSiriEngagement.configuration.getter();
  v3 = [v2 streamIdentifier];

  v4 = sub_19393C580();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_193950B10;
  result = BMEventTimestampSQLColumn();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v7 + 32) = result;
  v9 = static SiriPostSiriEngagement.columns.getter();
  sub_19343D230(v9);
  v10 = v7;
  result = BMEventBookmarkSQLColumns();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  sub_19343CF00(0, &qword_1ED5082B0, 0x1E698F2D8);
  v12 = sub_19393C6D0();

  sub_19343D230(v12);
  sub_1934E49C8();

  sub_19343D230(v13);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2F0]);
  result = sub_1934412DC(v4, v6, v10);
  if (result)
  {
    v15 = result;
    v16 = static Library.Streams.Siri.PostSiriEngagement.configuration.getter();
    v17 = [objc_allocWithZone(MEMORY[0x1E698F320]) initWithIdentifier:v1 schema:v15 configuration:v16];

    return v17;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t static Library.Streams.Siri.PostSiriEngagement.attribute(_:)(void (*a1)(void))
{
  result = sub_1934E6E58(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934E6E94(void (*a1)(void))
{
  result = sub_1934E6E58(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934E6EFC(uint64_t a1)
{
  result = sub_1934E6F24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934E6F24()
{
  result = qword_1EAE3BAA0;
  if (!qword_1EAE3BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAA0);
  }

  return result;
}

_BYTE *_s18PostSiriEngagementOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriPostSiriEngagement.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAA8, &qword_193958570);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1934E7200(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3BAA8, &qword_193958570, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3BAA8, &qword_193958570);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1934E7200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriPostSiriEngagement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SiriPostSiriEngagement.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAA8, &qword_193958570);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3BAA8, &qword_193958570, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_1934E73A4(v8, a3);
  }

  return result;
}

uint64_t sub_1934E73A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriPostSiriEngagement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SiriPostSiriEngagement.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v38 = a5;
  v36 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAA8, &qword_193958570);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  if (*sub_1934EB0A4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v42;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v29 = v37;
      sub_1934E73A4(v11, v37);
      v30 = type metadata accessor for SiriPostSiriEngagement(0);
      v31 = *(v30 + 20);
      sub_19344E6DC(v29 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v33 + 16))(v29 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v29 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v29 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v38, v29 + v34);
    }
  }

  else
  {
    v27 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
    *v28 = a3;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SiriPostSiriEngagement.serialize()()
{
  v1 = type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAA8, &qword_193958570);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1934E7200(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3BAA8, &qword_193958570, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3BAA8, &qword_193958570);
  return v11;
}

id static SiriPostSiriEngagement.columns.getter()
{
  v145 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v12 = OUTLINED_FUNCTION_25_13();
  result = OUTLINED_FUNCTION_3_5(v12, 0xEB0000000044496ELL);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v22 = OUTLINED_FUNCTION_2_4(inited, v15, v16, v17, v18, v19, v20, v21, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v32);
  v33 = OUTLINED_FUNCTION_11_16();
  result = OUTLINED_FUNCTION_3_5(v33 & 0xFFFF0000FFFFFFFFLL | 0x444900000000, 0xE600000000000000);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v34 = swift_initStackObject();
  v42 = OUTLINED_FUNCTION_2_4(v34, v35, v36, v37, v38, v39, v40, v41, v139);
  OUTLINED_FUNCTION_5_10(v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v52 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v52);
  v53 = OUTLINED_FUNCTION_11_16();
  result = OUTLINED_FUNCTION_3_5(v53 | 0x6570795400000000, 0xE800000000000000);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  *(swift_initStackObject() + 16) = v140;
  v54 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v64 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v64);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000010, 0x8000000193A18060);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_3(result);
  v65 = swift_initStackObject();
  v73 = OUTLINED_FUNCTION_2_4(v65, v66, v67, v68, v69, v70, v71, v72, v140);
  OUTLINED_FUNCTION_5_10(v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v83 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v83);
  v84 = OUTLINED_FUNCTION_20_9();
  result = OUTLINED_FUNCTION_3_5(v84, 0xEA00000000006E72);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_69_3(result);
  v85 = swift_initStackObject();
  v93 = OUTLINED_FUNCTION_2_4(v85, v86, v87, v88, v89, v90, v91, v92, v141);
  OUTLINED_FUNCTION_5_10(v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v103 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v103);
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_17_11();
  result = OUTLINED_FUNCTION_3_5(v104, v105);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_69_3(result);
  v106 = swift_initStackObject();
  v114 = OUTLINED_FUNCTION_2_4(v106, v107, v108, v109, v110, v111, v112, v113, v142);
  OUTLINED_FUNCTION_5_10(v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
  v124 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v124);
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_24_11();
  result = OUTLINED_FUNCTION_3_5(v125, v126);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_69_3(result);
  v127 = swift_initStackObject();
  v135 = OUTLINED_FUNCTION_2_4(v127, v128, v129, v130, v131, v132, v133, v134, v143);
  *(v135 + 16) = v144;
  *(v135 + 32) = sub_19393C850();
  v136 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_22_14();
  result = sub_19343D150(v137, v138, 2, 0, v135, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v145;
  }

LABEL_17:
  __break(1u);
  return result;
}

int *sub_1934E7BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_25_13();
  v9 = a1 == v7 && a2 == v8;
  if (v9 || (OUTLINED_FUNCTION_59_0(v7, v8) & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement(0);
    v11 = result[7];
    goto LABEL_7;
  }

  v12 = OUTLINED_FUNCTION_11_16() & 0xFFFF0000FFFFFFFFLL | 0x444900000000;
  v13 = a1 == v12 && a2 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_59_0(v12, 0xE600000000000000) & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement(0);
    v11 = result[8];
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_11_16() | 0x6570795400000000;
  v15 = a1 == v14 && a2 == 0xE800000000000000;
  if (v15 || (OUTLINED_FUNCTION_59_0(v14, 0xE800000000000000) & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement(0);
    v11 = result[9];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v17 = a1 == 0xD000000000000010 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, v16) & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement(0);
    v11 = result[10];
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_20_9();
  v19 = a1 == v18 && a2 == 0xEA00000000006E72;
  if (v19 || (OUTLINED_FUNCTION_59_0(v18, 0xEA00000000006E72) & 1) != 0)
  {
    result = type metadata accessor for SiriPostSiriEngagement(0);
    v11 = result[11];
    goto LABEL_7;
  }

  v20 = a1 == 0x4974736575716572 && a2 == 0xEA00000000007364;
  if (v20 || (OUTLINED_FUNCTION_59_0(0x4974736575716572, 0xEA00000000007364) & 1) != 0)
  {
    type metadata accessor for SiriPostSiriEngagement(0);
    v21 = &qword_1EAE3ABB0;
    v22 = &qword_193950BB8;
LABEL_39:
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v24 = a1 == 0xD00000000000001FLL && v23 == a2;
  if (!v24 && (OUTLINED_FUNCTION_59_0(0xD00000000000001FLL, v23) & 1) == 0)
  {
    v25 = a1 == 0x746E657645657370 && a2 == 0xE900000000000073;
    if (v25 || (OUTLINED_FUNCTION_59_0(0x746E657645657370, 0xE900000000000073) & 1) != 0)
    {
      type metadata accessor for SiriPostSiriEngagement(0);
      v21 = &unk_1EAE3BAB8;
      v22 = &unk_193958578;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_17_11();
    v26 = OUTLINED_FUNCTION_19_17();
    v28 = a1 == v26 && a2 == v27;
    if (v28 || (OUTLINED_FUNCTION_59_0(v26, v27) & 1) != 0)
    {
      result = type metadata accessor for SiriPostSiriEngagement(0);
      v11 = result[15];
    }

    else
    {
      OUTLINED_FUNCTION_24_11();
      v29 = OUTLINED_FUNCTION_15_22();
      v31 = a1 == v29 && a2 == v30;
      if (v31 || (OUTLINED_FUNCTION_59_0(v29, v30) & 1) != 0)
      {
        result = type metadata accessor for SiriPostSiriEngagement(0);
        v11 = result[16];
      }

      else
      {
        OUTLINED_FUNCTION_22_14();
        v32 = OUTLINED_FUNCTION_23_17();
        v34 = a1 == v32 && a2 == v33;
        if (!v34 && (OUTLINED_FUNCTION_59_0(v32, v33) & 1) == 0)
        {
          v35 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v35);
          v37 = v36;
          *v36 = a1;
          v36[1] = a2;
          v36[5] = type metadata accessor for SiriPostSiriEngagement(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v37 + 2);
          sub_1934E7200(v3, boxed_opaque_existential_1Tm);
          *(v37 + 48) = 1;
          swift_willThrow();
        }

        result = type metadata accessor for SiriPostSiriEngagement(0);
        v11 = result[17];
      }
    }

LABEL_7:
    if (*(v3 + v11 + 8))
    {
      return sub_1934948FC();
    }

    goto LABEL_46;
  }

  result = type metadata accessor for SiriPostSiriEngagement(0);
  if ((*(v3 + result[13] + 8) & 0xFF0000) == 0x30000)
  {
LABEL_46:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  return sub_193494798(&type metadata for SiriPostSiriEngagement.Features, &off_1F07C32C0, a3);
}

void sub_1934E7FA4(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_11_16() | 0x6363755300000000;
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 9);
  v12 = a1 == v7 && a2 == v8;
  if (v12 || (v13 = *(v3 + 10), v40 = *(v3 + 12), v41 = *(v3 + 11), v38 = *(v3 + 14), v39 = *(v3 + 13), v37 = *(v3 + 15), v14 = *(v3 + 16), (OUTLINED_FUNCTION_5_5(v7, v8) & 1) != 0))
  {
    if (v11)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    goto LABEL_23;
  }

  v15 = OUTLINED_FUNCTION_16_11() & 0xFFFFFFFFFFFFLL | 0x6241000000000000;
  v17 = a1 == v15 && a2 == v16;
  if (v17 || (OUTLINED_FUNCTION_5_5(v15, v16) & 1) != 0)
  {
    if (v13 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  v18 = OUTLINED_FUNCTION_16_11() & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
  v20 = a1 == v18 && a2 == v19;
  if (v20 || (OUTLINED_FUNCTION_5_5(v18, v19) & 1) != 0)
  {
    v21 = v41;
    goto LABEL_22;
  }

  v22 = a1 == 0x6F43697269537369 && a2 == 0xEF646574656C706DLL;
  if (v22 || (OUTLINED_FUNCTION_5_5(0x6F43697269537369, 0xEF646574656C706DLL) & 1) != 0)
  {
    v21 = v40;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v25 = a1 == v24 && v23 == a2;
  if (v25 || (OUTLINED_FUNCTION_5_5(0xD000000000000013, v23) & 1) != 0)
  {
    v21 = v39;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8_22();
  v28 = a1 == v27 + 1 && v26 == a2;
  if (v28 || (OUTLINED_FUNCTION_5_5(v27 + 1, v26) & 1) != 0)
  {
    v21 = v38;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8_22();
  v31 = a1 == v30 + 6 && v29 == a2;
  if (v31 || (OUTLINED_FUNCTION_5_5(v30 + 6, v29) & 1) != 0)
  {
    v21 = v37;
LABEL_22:
    if (v21 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_8_22();
  v34 = a1 == v33 + 11 && v32 == a2;
  if (v34 || (OUTLINED_FUNCTION_5_5(v33 + 11, v32) & 1) != 0)
  {
    if (v14 == 2)
    {
      goto LABEL_7;
    }

LABEL_23:
    sub_1934948FC();
    return;
  }

  v35 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v35);
  *v36 = a1;
  *(v36 + 8) = a2;
  *(v36 + 40) = &type metadata for SiriPostSiriEngagement.Features;
  *(v36 + 16) = v9;
  *(v36 + 24) = v10;
  *(v36 + 25) = v11;
  *(v36 + 26) = v13;
  *(v36 + 27) = v41;
  *(v36 + 28) = v40;
  *(v36 + 29) = v39;
  *(v36 + 30) = v38;
  *(v36 + 31) = v37;
  *(v36 + 32) = v14;
  *(v36 + 48) = 1;
  swift_willThrow();
}

void sub_1934E829C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, 0x69uLL);
  v8 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_5_5(0x6E69616D6F64, 0xE600000000000000) & 1) != 0)
  {
    v9 = __dst[1];
    if (__dst[1])
    {
      v10 = __dst[0];
LABEL_8:
      v22 = v10;
      v23 = v9;
LABEL_9:
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  v11 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_5_5(0x6E6F69746361, 0xE600000000000000) & 1) != 0)
  {
    v9 = __dst[3];
    if (__dst[3])
    {
      v10 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v13 = a1 == 0xD000000000000014 && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_5_5(0xD000000000000014, v12) & 1) != 0)
  {
    if (LOBYTE(__dst[4]) != 2)
    {
      LOBYTE(v22) = __dst[4] & 1;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v14 = a1 == 0x61746C6544657370 && a2 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_5_5(0x61746C6544657370, 0xE800000000000000) & 1) != 0)
  {
    if ((__dst[10] & 0x100) == 0)
    {
      v22 = __dst[5];
      LOBYTE(v23) = __dst[6] & 1;
      v24 = __dst[7];
      v25 = __dst[8] & 1;
      v26 = __dst[9];
      v27 = __dst[10] & 1;
      sub_193494798(&type metadata for SiriPostSiriEngagement.Signal.DeltaEvent, &off_1F07C32E0, a3);
      return;
    }

LABEL_23:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15 = a1 == 0x65746E6F43657370 && a2 == 0xEB0000000073746ELL;
  if (v15 || (OUTLINED_FUNCTION_5_5(0x65746E6F43657370, 0xEB0000000073746ELL) & 1) != 0)
  {
    v22 = __dst[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAC0, &qword_193958580);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v17 = a1 == 0xD000000000000010 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_5_5(0xD000000000000010, v16) & 1) != 0)
  {
    if ((__dst[13] & 1) == 0)
    {
      v22 = __dst[12];
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v18 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  v20 = v19;
  *v19 = a1;
  v19[1] = a2;
  v19[5] = &type metadata for SiriPostSiriEngagement.Signal;
  v21 = swift_allocObject();
  v20[2] = v21;
  memcpy((v21 + 16), __dst, 0x69uLL);
  *(v20 + 48) = 1;
  swift_willThrow();

  sub_1934E8910(__dst, &v22);
}

uint64_t sub_1934E85A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6E6F697461727564;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v9 || (v11 = v3[2], v12 = *(v3 + 24), v20 = v3[4], v13 = *(v3 + 40), result = OUTLINED_FUNCTION_91_2(0x6E6F697461727564, 0xE800000000000000), (result & 1) != 0))
  {
    if (v8)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  result = 0x45495565636E6973;
  v14 = a1 == 0x45495565636E6973 && a2 == 0xEA0000000000646ELL;
  if (v14 || (result = OUTLINED_FUNCTION_91_2(0x45495565636E6973, 0xEA0000000000646ELL), (result & 1) != 0))
  {
    if (v12)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  result = 0x53495565636E6973;
  v15 = a1 == 0x53495565636E6973 && a2 == 0xEC00000074726174;
  if (v15 || (result = OUTLINED_FUNCTION_91_2(0x53495565636E6973, 0xEC00000074726174), (result & 1) != 0))
  {
    if (v13)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  v16 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
  v18 = v17;
  *v17 = a1;
  v17[1] = a2;
  v17[5] = &type metadata for SiriPostSiriEngagement.Signal.DeltaEvent;
  v19 = swift_allocObject();
  v18[2] = v19;
  *(v19 + 16) = v7;
  *(v19 + 24) = v8;
  *(v19 + 32) = v11;
  *(v19 + 40) = v12;
  *(v19 + 48) = v20;
  *(v19 + 56) = v13;
  *(v18 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934E877C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = result == 7955819 && a2 == 0xE300000000000000;
  if (v7 || (v9 = result, v11 = v3[2], v10 = v3[3], result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v5)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  result = 0x65756C6176;
  v12 = v9 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v12 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v13 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
  v15 = v14;
  *v14 = v9;
  v14[1] = a2;
  v14[5] = &type metadata for SiriPostSiriEngagement.Signal.Content;
  v16 = swift_allocObject();
  v15[2] = v16;
  v16[2] = v6;
  v16[3] = v5;
  v16[4] = v11;
  v16[5] = v10;
  *(v15 + 48) = 1;
  swift_willThrow();
}

double SiriPostSiriEngagement.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SiriPostSiriEngagement(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19343E508(v4);
  v16 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v5 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[13];
  sub_1934EB66C(v8);
  v14 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1934EB0A4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;

  v12 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[12]) = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *v8 = xmmword_193958560;
  v8[16] = 0;
  *(a1 + v2[14]) = v12;
  *v14 = 0;
  v14[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

BOOL static SiriPostSiriEngagement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_3();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v13)
  {
    if (!v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v12);
    v16 = v10 && v14 == v15;
    if (!v16 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v19)
  {
    if (!v17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v18);
    v22 = v10 && v20 == v21;
    if (!v22 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v25)
  {
    if (!v23)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v24);
    v28 = v10 && v26 == v27;
    if (!v28 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v31)
  {
    if (!v29)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v30);
    v34 = v10 && v32 == v33;
    if (!v34 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  if (sub_19344FC94(*(a1 + v4[12]), *(a2 + v4[12])))
  {
    v35 = v4[13];
    v36 = *(a1 + v35 + 8);
    v37 = *(a2 + v35 + 8);
    if ((v36 & 0xFF0000) == 0x30000)
    {
      if ((v37 & 0xFF0000) != 0x30000)
      {
        return 0;
      }
    }

    else
    {
      if ((v37 & 0xFF0000) == 0x30000)
      {
        return 0;
      }

      sub_1934E94DC();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    if (sub_1934E93B8(*(a1 + v4[14]), *(a2 + v4[14])))
    {
      OUTLINED_FUNCTION_3();
      if (v40)
      {
        if (!v38)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v39);
        v43 = v10 && v41 == v42;
        if (!v43 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v38)
      {
        return 0;
      }

      OUTLINED_FUNCTION_3();
      if (v46)
      {
        if (!v44)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v45);
        v49 = v10 && v47 == v48;
        if (!v49 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v44)
      {
        return 0;
      }

      OUTLINED_FUNCTION_3();
      if (v52)
      {
        if (!v50)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v51);
        v55 = v10 && v53 == v54;
        return v55 || (sub_19393CA30() & 1) != 0;
      }

      if (!v50)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t SiriPostSiriEngagement.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for SiriPostSiriEngagement(0);
  v4 = *(v1 + v3[7] + 8);
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934D11C8(a1, *(v1 + v3[12]));
  if ((*(v1 + v3[13] + 8) & 0xFF0000) == 0x30000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19393CAD0();
    sub_1934E96F0();
    sub_19393C540();
  }

  sub_1934E962C(a1, *(v1 + v3[14]));
  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!*(v1 + v3[17] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19393CAD0();
  return sub_19393C640();
}

uint64_t SiriPostSiriEngagement.Features.TaskSuccess.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  result = 0;
  v4 = 1;
  switch(v2)
  {
    case 0:
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

char *static SiriPostSiriEngagement.Features.TaskSuccess.allCases.getter()
{
  v0 = sub_1934E9530(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E9530(v16, v2 + 1, 1, v17);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E9530(v18, v2 + 2, 1, v19);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934E9530(v20, v2 + 3, 1, v21);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v22 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934E9530(v22, v2 + 4, 1, v23);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v24 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_1934E9530(v24, v2 + 5, 1, v25);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t SiriPostSiriEngagement.Features.TaskSuccess.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 0x696C707041746F4ELL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_8_23();
      break;
    case 2:
      result = 0x6673736563637553;
      break;
    case 3:
      result = OUTLINED_FUNCTION_9_31();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriPostSiriEngagement.Features.TaskSuccess.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x696C707041746F4ELL && a2 == 0xED0000656C626163;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x696C707041746F4ELL, 0xED0000656C626163) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = OUTLINED_FUNCTION_8_23();
  v13 = a1 == v11 && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  v14 = a1 == 0x6673736563637553 && a2 == 0xEA00000000006C75;
  if (v14 || (OUTLINED_FUNCTION_0_9(0x6673736563637553, 0xEA00000000006C75) & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_9_31();
    if (a1 == v15 && a2 == v16)
    {

      v9 = 1;
      v8 = 3;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_0_9(v15, v16);

      v8 = 3;
      if ((v9 & 1) == 0)
      {
        v8 = 0;
      }
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t sub_1934E93B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 112)
    {
      memcpy(__dst, v3, 0x69uLL);
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, 0x69uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1934E8910(__dst, v7);
      sub_1934E8910(v11, v7);
      sub_1934E9844();
      v5 = sub_19393C550();
      memcpy(v12, __src, 0x69uLL);
      sub_1934E97F0(v12);
      memcpy(v13, v9, 0x69uLL);
      sub_1934E97F0(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 112;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1934E94DC()
{
  result = qword_1EAE3BAC8;
  if (!qword_1EAE3BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAC8);
  }

  return result;
}

char *sub_1934E9530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BAE0, &qword_193958670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_1934E962C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(v6, v5, 0x69uLL);
      memcpy(__dst, v5, sizeof(__dst));
      sub_1934E8910(v6, v7);
      sub_1934E979C();
      sub_19393C540();
      memcpy(v7, __dst, 0x69uLL);
      result = sub_1934E97F0(v7);
      v5 += 112;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1934E96F0()
{
  result = qword_1EAE3BAD0;
  if (!qword_1EAE3BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAD0);
  }

  return result;
}

unint64_t sub_1934E9748()
{
  result = qword_1EAE3BAD8;
  if (!qword_1EAE3BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAD8);
  }

  return result;
}

unint64_t sub_1934E979C()
{
  result = qword_1EAE3BAE8;
  if (!qword_1EAE3BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAE8);
  }

  return result;
}

unint64_t sub_1934E9844()
{
  result = qword_1EAE3BAF0;
  if (!qword_1EAE3BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BAF0);
  }

  return result;
}

void sub_1934E9898()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA8FF0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v35 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v35, xmmword_1939526F0);
  *v1 = 1;
  *v0 = "UISessionID";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v8 = 2;
  *v7 = "taskID";
  v7[1] = 6;
  v9 = OUTLINED_FUNCTION_41(v7);
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v10 = "taskType";
  *(v10 + 1) = 8;
  v11 = OUTLINED_FUNCTION_41(v10);
  (v6)(v11);
  OUTLINED_FUNCTION_44(3 * v4);
  OUTLINED_FUNCTION_34_8(v12);
  *v13 = "conversationPath";
  v13[1] = 16;
  v14 = OUTLINED_FUNCTION_41(v13);
  (v6)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v16 = 5;
  *v15 = "appPattern";
  v15[1] = 10;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v6)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  *v18 = "requestIds";
  v18[1] = 10;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v6)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v22 = 7;
  *v21 = "engagementUnderstandingFeatures";
  v21[1] = 31;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v6)(v23);
  v24 = OUTLINED_FUNCTION_44(7 * v4);
  *v25 = 8;
  *v24 = "pseEvents";
  v24[1] = 9;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v6)(v26);
  v27 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v28 = 9;
  *v27 = "clientSessionId";
  v27[1] = 15;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v6)(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v4);
  *v31 = 10;
  *v30 = "lastRequestId";
  v30[1] = 13;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v6)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v34 = 11;
  *v33 = "executionUUID";
  *(v33 + 8) = 13;
  *(v33 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934E9B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        v10 = *(type metadata accessor for SiriPostSiriEngagement(0) + 28);
        goto LABEL_16;
      case 2:
        v10 = *(type metadata accessor for SiriPostSiriEngagement(0) + 32);
        goto LABEL_16;
      case 3:
        v10 = *(type metadata accessor for SiriPostSiriEngagement(0) + 36);
        goto LABEL_16;
      case 4:
        v10 = *(type metadata accessor for SiriPostSiriEngagement(0) + 40);
        goto LABEL_16;
      case 5:
        v10 = *(type metadata accessor for SiriPostSiriEngagement(0) + 44);
        goto LABEL_16;
      case 6:
        v12 = type metadata accessor for SiriPostSiriEngagement(0);
        OUTLINED_FUNCTION_8_2(*(v12 + 48));
        sub_19393C1B0();
        goto LABEL_17;
      case 7:
        type metadata accessor for SiriPostSiriEngagement(0);
        sub_193498018();
        goto LABEL_17;
      case 8:
        v11 = type metadata accessor for SiriPostSiriEngagement(0);
        sub_193498238(v3 + *(v11 + 56), a2, &type metadata for SiriPostSiriEngagement.Signal, a3, &off_1F07C3388);
        goto LABEL_17;
      case 9:
        v10 = *(type metadata accessor for SiriPostSiriEngagement(0) + 60);
        goto LABEL_16;
      case 10:
        v10 = *(type metadata accessor for SiriPostSiriEngagement(0) + 64);
        goto LABEL_16;
      case 11:
        v10 = *(type metadata accessor for SiriPostSiriEngagement(0) + 68);
LABEL_16:
        OUTLINED_FUNCTION_8_2(v10);
        sub_19393C200();
LABEL_17:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1934E9D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_16_4();
  if (v9)
  {
    OUTLINED_FUNCTION_2_7(*v10, v9, 1);
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_16_4();
    if (!v11 || (OUTLINED_FUNCTION_2_7(*v12, v11, 2), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_16_4();
      if (!v13 || (OUTLINED_FUNCTION_2_7(*v14, v13, 3), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_16_4();
        if (!v15 || (OUTLINED_FUNCTION_2_7(*v16, v15, 4), (v5 = v4) == 0))
        {
          OUTLINED_FUNCTION_16_4();
          if (!v17 || (OUTLINED_FUNCTION_2_7(*v18, v17, 5), (v5 = v4) == 0))
          {
            if (!*(*(v3 + v8[12]) + 16) || (v4 = v5, sub_19393C380(), !v5))
            {
              if ((*(v3 + v8[13] + 8) & 0xFF0000) == 0x30000 || (v4 = v5, sub_193447600(), !v5))
              {
                v19 = *(v3 + v8[14]);
                if (!*(v19 + 16) || (v4 = v5, sub_193451CFC(v19, 8, a2, &type metadata for SiriPostSiriEngagement.Signal, a3, &off_1F07C3388), !v5))
                {
                  OUTLINED_FUNCTION_16_4();
                  if (!v20 || (OUTLINED_FUNCTION_2_7(*v21, v20, 9), !v4))
                  {
                    OUTLINED_FUNCTION_16_4();
                    if (!v22 || (OUTLINED_FUNCTION_2_7(*v23, v22, 10), !v4))
                    {
                      OUTLINED_FUNCTION_16_4();
                      if (v24)
                      {
                        OUTLINED_FUNCTION_2_7(*v25, v24, 11);
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

void sub_1934EA008()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9008);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_1939526B0);
  *v1 = 1;
  *v0 = "taskSuccess";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "isUserAbandoned";
  v8[1] = 15;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v11 = "isUserCancelled";
  *(v11 + 1) = 15;
  v12 = OUTLINED_FUNCTION_41(v11);
  (v7)(v12);
  OUTLINED_FUNCTION_44(3 * v4);
  OUTLINED_FUNCTION_34_8(v13);
  *v14 = "isSiriCompleted";
  v14[1] = 15;
  v15 = OUTLINED_FUNCTION_41(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 5;
  *v16 = "isPromptInteraction";
  v16[1] = 19;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_44(5 * v4);
  *v20 = 6;
  *v19 = "isConfirmInteraction";
  v19[1] = 20;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v7)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v23 = 7;
  *v22 = "isDisambiguateInteraction";
  v22[1] = 25;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v7)(v24);
  v25 = OUTLINED_FUNCTION_44(7 * v4);
  *v26 = 8;
  *v25 = "isUnsupportedPromptInteraction";
  *(v25 + 8) = 30;
  *(v25 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934EA280()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }
}

void sub_1934EA34C()
{
  OUTLINED_FUNCTION_110();
  v4 = *(v3 + 9);
  v5 = *(v3 + 10);
  v6 = *(v3 + 11);
  v7 = *(v3 + 12);
  v8 = *(v3 + 13);
  v9 = *(v3 + 14);
  v10 = *(v3 + 15);
  v15 = *(v3 + 16);
  if ((v4 & 1) == 0)
  {
    v11 = *v3;
    v12 = *(v3 + 8);
    v13 = v11;
    v14 = v12 & 1;
    sub_193447324(&v13, 1, v2, &type metadata for SiriPostSiriEngagement.Features.TaskSuccess, v0, &off_1F07C3360);
  }

  if (!v1)
  {
    if (v5 != 2)
    {
      OUTLINED_FUNCTION_21_10(v5 & 1, 2);
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_21_10(v6 & 1, 3);
    }

    if (v7 != 2)
    {
      OUTLINED_FUNCTION_21_10(v7 & 1, 4);
    }

    if (v8 != 2)
    {
      OUTLINED_FUNCTION_21_10(v8 & 1, 5);
    }

    if (v9 != 2)
    {
      OUTLINED_FUNCTION_21_10(v9 & 1, 6);
    }

    if (v10 != 2)
    {
      OUTLINED_FUNCTION_21_10(v10 & 1, 7);
    }

    if (v15 != 2)
    {
      OUTLINED_FUNCTION_21_10(v15 & 1, 8);
    }
  }
}

void sub_1934EA510()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9020);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "NotApplicable";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "NotCalculated";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_44(3 * v4);
  *v13 = 3;
  *v12 = "Successful";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  OUTLINED_FUNCTION_34_8(v14);
  *v15 = "Unsuccessful";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934EA730()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9038);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_1939526E0;
  v4 = v3 + v0;
  v5 = v3 + v0 + dword_1EAEA9070;
  *(v3 + v0) = 1;
  *v5 = "domain";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v4 + v2);
  *v9 = 2;
  *v8 = "action";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_9_4((v4 + 2 * v2));
  OUTLINED_FUNCTION_36_5(v10, "isPostSiriEngagement");
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_3_1(v4 + 3 * v2);
  OUTLINED_FUNCTION_34_8(v11);
  OUTLINED_FUNCTION_36_5(v12, "pseDelta");
  OUTLINED_FUNCTION_2_0();
  v7();
  v13 = OUTLINED_FUNCTION_3_1(v4 + 4 * v2);
  *v14 = 5;
  OUTLINED_FUNCTION_36_5(v13, "pseContents");
  OUTLINED_FUNCTION_2_0();
  v7();
  v15 = OUTLINED_FUNCTION_3_1(v4 + 5 * v2);
  *v16 = 6;
  *v15 = "donatedTimestamp";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934EA95C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 4:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      case 5:
        sub_193498238(v0 + 88, v3, &type metadata for SiriPostSiriEngagement.Signal.Content, v2, &off_1F07C33E8);
        break;
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C1E0();
        break;
      default:
        continue;
    }
  }
}

void sub_1934EAA60()
{
  OUTLINED_FUNCTION_110();
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 81);
  v9 = *(v1 + 88);
  v10 = *(v1 + 104);
  if (v4)
  {
    OUTLINED_FUNCTION_181(*v1, v4, 1);
  }

  if (!v2)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_181(v5, v6, 2);
    }

    if (v7 != 2)
    {
      OUTLINED_FUNCTION_21_10(v7 & 1, 3);
    }

    if ((v8 & 1) == 0)
    {
      sub_193447600();
    }

    if (*(v9 + 16))
    {
      sub_193451CFC(v9, 5, v3, &type metadata for SiriPostSiriEngagement.Signal.Content, v0, &off_1F07C33E8);
    }

    if ((v10 & 1) == 0)
    {
      sub_19393C3B0();
    }
  }
}

void sub_1934EAC10()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9050);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBB0);
  *v5 = "duration";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_10_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v0 + v3);
  *v10 = 2;
  OUTLINED_FUNCTION_36_5(v9, "sinceUIEnd");
  OUTLINED_FUNCTION_10_0();
  v8();
  v11 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  *v11 = "sinceUIStart";
  *(v11 + 1) = 12;
  v11[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934EAD9C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C1E0();
    }
  }

  return result;
}

void sub_1934EAE08()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[24];
  v3 = v0[40];
  if ((v0[8] & 1) == 0)
  {
    OUTLINED_FUNCTION_31_12(1);
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_12(2);
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_12(3);
    }
  }
}

void sub_1934EAEF8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEA9068);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBE0);
  *v5 = "key";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_10_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v0 + v3);
  *v10 = 2;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v8();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2)
{

  return sub_19393C2E0();
}

uint64_t SiriPostSiriEngagement.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for SiriPostSiriEngagement(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SiriPostSiriEngagement(uint64_t a1)
{
  result = qword_1ED50E990;
  if (!qword_1ED50E990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriPostSiriEngagement.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for SiriPostSiriEngagement(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t SiriPostSiriEngagement.UISessionID.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.UISessionID.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for SiriPostSiriEngagement(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.taskID.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.taskID.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for SiriPostSiriEngagement(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.taskType.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.taskType.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for SiriPostSiriEngagement(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.conversationPath.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.conversationPath.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for SiriPostSiriEngagement(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.appPattern.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.appPattern.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for SiriPostSiriEngagement(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.requestIds.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
}

uint64_t SiriPostSiriEngagement.requestIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_12_16() + 48);

  *(v1 + v2) = v0;
  return result;
}

double sub_1934EB66C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_193958560;
  *(a1 + 16) = 0;
  return result;
}

__n128 SiriPostSiriEngagement.engagementUnderstandingFeatures.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for SiriPostSiriEngagement(v2) + 52));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *v0 = *v3;
  v0[1].n128_u8[0] = v4;
  return result;
}

uint64_t SiriPostSiriEngagement.engagementUnderstandingFeatures.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for SiriPostSiriEngagement(0);
  v6 = v1 + *(result + 52);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t SiriPostSiriEngagement.pseEvents.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
}

uint64_t SiriPostSiriEngagement.pseEvents.setter()
{
  v2 = *(OUTLINED_FUNCTION_12_16() + 56);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.clientSessionId.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.clientSessionId.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for SiriPostSiriEngagement(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.lastRequestId.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.lastRequestId.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for SiriPostSiriEngagement(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.executionUUID.getter()
{
  type metadata accessor for SiriPostSiriEngagement(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SiriPostSiriEngagement.executionUUID.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for SiriPostSiriEngagement(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void SiriPostSiriEngagement.Features.taskSuccess.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t SiriPostSiriEngagement.Features.taskSuccess.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

void SiriPostSiriEngagement.Features.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 10) = 33686018;
  *(a1 + 13) = 33686018;
}

uint64_t sub_1934EBBA8@<X0>(uint64_t *a1@<X8>)
{
  result = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934EBBD0@<X0>(char **a1@<X8>)
{
  result = static SiriPostSiriEngagement.Features.TaskSuccess.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934EBC04()
{
  sub_19393CAB0();
  v0 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934EBCBC(uint64_t a1)
{
  sub_19393CAB0();
  v1 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t static SiriPostSiriEngagement.Features.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v7 = a1[15];
  v8 = a1[16];
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  v14 = a2[15];
  v15 = a2[16];
  if (a1[9])
  {
    if ((a2[9] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[9])
    {
      return 0;
    }

    v22 = a2[16];
    v23 = a1[16];
    v20 = a2[15];
    v21 = a1[15];
    v19 = a1[14];
    v18 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
    v16 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
    v6 = v19;
    v14 = v20;
    v7 = v21;
    v15 = v22;
    v8 = v23;
    if (v18 != v16)
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 2 || ((v9 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v10 == 2 || ((v10 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v11 == 2 || ((v11 ^ v4) & 1) != 0)
    {
      return result;
    }
  }

  if (v5 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v12 == 2 || ((v12 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  if (v6 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v13 == 2 || ((v13 ^ v6) & 1) != 0)
    {
      return result;
    }
  }

  if (v7 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }

LABEL_36:
    if (v8 == 2)
    {
      if (v15 != 2)
      {
        return 0;
      }
    }

    else if (v15 == 2 || ((v15 ^ v8) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v14 != 2 && ((v14 ^ v7) & 1) == 0)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t SiriPostSiriEngagement.Features.hash(into:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  if (v0[9] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v15 = v0[11];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[16];
    OUTLINED_FUNCTION_103_0();
    v7 = v12;
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
    v2 = v15;
    v13 = SiriPostSiriEngagement.Features.TaskSuccess.rawValue.getter();
    MEMORY[0x193B18030](v13);
  }

  if (v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v5 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v7 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

uint64_t SiriPostSiriEngagement.Features.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  SiriPostSiriEngagement.Features.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934EC18C(uint64_t a1)
{
  sub_19393CAB0();
  SiriPostSiriEngagement.Features.hash(into:)();
  return sub_19393CB00();
}

uint64_t SiriPostSiriEngagement.Signal.domain.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.action.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

__n128 SiriPostSiriEngagement.Signal.pseDelta.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 81);
  result = *(v1 + 40);
  v6 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

__n128 SiriPostSiriEngagement.Signal.pseDelta.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v6;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 81) = v4;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.pseContents.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.donatedTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void __swiftcall SiriPostSiriEngagement.Signal.init()(IntelligencePlatformLibrary::SiriPostSiriEngagement::Signal *__return_ptr retstr)
{
  retstr->domain = 0u;
  retstr->action = 0u;
  retstr->isPostSiriEngagement.value = 2;
  *(&retstr->pseDelta.value.duration.value + 7) = 0u;
  *(&retstr->pseDelta.value.sinceUIStart.value + 5) = 0u;
  *(&retstr->pseContents._rawValue + 1) = 0u;
  *(&retstr->donatedTimestamp + 9) = 1;
  retstr[1].domain.value._countAndFlagsBits = MEMORY[0x1E69E7CC0];
  retstr[1].domain.value._object = 0;
  LOBYTE(retstr[1].action.value._countAndFlagsBits) = 1;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.duration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.sinceUIEnd.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.sinceUIStart.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void __swiftcall SiriPostSiriEngagement.Signal.DeltaEvent.init()(IntelligencePlatformLibrary::SiriPostSiriEngagement::Signal::DeltaEvent *__return_ptr retstr)
{
  retstr->duration.value = 0.0;
  retstr->duration.is_nil = 1;
  *(&retstr->sinceUIEnd.value + 7) = 0.0;
  BYTE6(retstr->sinceUIStart.value) = 1;
  *(&retstr[1].duration.value + 5) = 0.0;
  BYTE4(retstr[1].sinceUIEnd.value) = 1;
}

uint64_t static SiriPostSiriEngagement.Signal.DeltaEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return OUTLINED_FUNCTION_9_2();
    }
  }

  return 1;
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *v0;
    sub_19393CAD0();
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x193B18060](v9);
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v1;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x193B18060](v5);
      if (!v4)
      {
        goto LABEL_7;
      }

      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  if (v4)
  {
    return sub_19393CAD0();
  }

LABEL_7:
  sub_19393CAD0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x193B18060](v6);
}

uint64_t SiriPostSiriEngagement.Signal.DeltaEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_5_23();
  sub_19393CAB0();
  SiriPostSiriEngagement.Signal.DeltaEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1934EC670()
{
  OUTLINED_FUNCTION_5_23();
  sub_19393CAB0();
  SiriPostSiriEngagement.Signal.DeltaEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t SiriPostSiriEngagement.Signal.Content.key.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriPostSiriEngagement.Signal.Content.value.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static SiriPostSiriEngagement.Signal.Content.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t SiriPostSiriEngagement.Signal.Content.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t SiriPostSiriEngagement.Signal.Content.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_1934EC9B4(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_19393CAB0();
  SiriPostSiriEngagement.Signal.Content.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t static SiriPostSiriEngagement.Signal.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 5);
  v8 = *(a1 + 7);
  v9 = a1[9];
  v10 = *(a1 + 80);
  v11 = *(a1 + 81);
  v12 = a1[11];
  v13 = *(a1 + 12);
  v14 = *(a1 + 104);
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v20 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  v25 = *(a2 + 81);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 104);
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v58 = *(a2 + 81);
      v60 = *(a1 + 81);
      v62 = *(a1 + 104);
      v64 = *(a2 + 104);
      v54 = *(a2 + 64);
      v53 = *(a2 + 80);
      v51 = *(a2 + 88);
      v52 = *(a2 + 72);
      v30 = a1[11];
      v66 = *(a1 + 7);
      v68 = *(a1 + 5);
      v22 = a1[9];
      v31 = *(a1 + 80);
      v32 = *(a2 + 48);
      v33 = *(a2 + 40);
      v34 = *(a1 + 32);
      v56 = *(a2 + 32);
      v50 = *(a2 + 16);
      v35 = sub_19393CA30();
      v18 = v56;
      v25 = v58;
      v6 = v34;
      v11 = v60;
      v14 = v62;
      v20 = v33;
      LOBYTE(v19) = v32;
      v10 = v31;
      v9 = v22;
      v8 = v66;
      v7 = v68;
      v12 = v30;
      v28 = v64;
      v16 = v50;
      v26 = v51;
      v23 = v52;
      v24 = v53;
      LOBYTE(v22) = v54;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v16 || v5 != v17)
    {
      v59 = v25;
      v61 = v11;
      v63 = v14;
      v65 = v28;
      v37 = v12;
      v38 = v21;
      v67 = v8;
      v69 = v7;
      v39 = v9;
      v40 = v10;
      v55 = v19;
      v41 = v20;
      v42 = v6;
      v57 = v18;
      v43 = sub_19393CA30();
      v18 = v57;
      v25 = v59;
      v6 = v42;
      v11 = v61;
      v14 = v63;
      v20 = v41;
      LOBYTE(v19) = v55;
      v10 = v40;
      v9 = v39;
      v8 = v67;
      v7 = v69;
      v21 = v38;
      v12 = v37;
      v28 = v65;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v6 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }

LABEL_24:
    if (v11)
    {
      v45 = v14;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v76[0] = v7;
      v76[1] = v8;
      v77 = v9;
      v78 = v10;
      v79 = 0;
      if (v25)
      {
        return 0;
      }

      v45 = v14;
      v70 = v20;
      v71 = v19 & 1;
      v72 = v21;
      v73 = v22 & 1;
      v74 = v23;
      v75 = v24 & 1;
      v46 = v28;
      v47 = v12;
      v48 = static SiriPostSiriEngagement.Signal.DeltaEvent.== infix(_:_:)(v76, &v70);
      v12 = v47;
      v28 = v46;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }

    if (sub_1934ECC9C(v12, v26))
    {
      if (v45)
      {
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == v27)
        {
          v49 = v28;
        }

        else
        {
          v49 = 1;
        }

        if (v49)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  result = 0;
  if (v18 != 2 && ((v18 ^ v6) & 1) == 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1934ECC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v4 - 3) == *(v3 - 3) && v5 == v8;
        if (!v11 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        v12 = v6 == v9 && v7 == v10;
        if (!v12 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v4 += 4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t SiriPostSiriEngagement.Signal.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  sub_1934ECF94();
  sub_1934ED064(a1, v5);
  if (v7)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x193B18060](v9);
}

uint64_t SiriPostSiriEngagement.Signal.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  SiriPostSiriEngagement.Signal.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934ECED4(uint64_t a1)
{
  sub_19393CAB0();
  SiriPostSiriEngagement.Signal.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t SiriPostSiriEngagement.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  SiriPostSiriEngagement.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1934ECF54(uint64_t a1)
{
  sub_19393CAB0();
  SiriPostSiriEngagement.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t sub_1934ECF94()
{
  if (*(v0 + 41))
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  v2 = v0[2];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = *(v0 + 6);
  v6 = *(v0 + 2);
  sub_19393CAD0();
  if (v6)
  {
    sub_19393CAD0();
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_19393CAD0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193B18060](v10);
    if ((v5 & 1) == 0)
    {
LABEL_4:
      sub_19393CAD0();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x193B18060](v7);
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  if (v4)
  {
    return sub_19393CAD0();
  }

LABEL_8:
  sub_19393CAD0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x193B18060](v8);
}

uint64_t sub_1934ED064(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *v5;
      if (*(v5 - 2))
      {
        sub_19393CAD0();

        sub_19393C640();
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_19393CAD0();

        if (!v6)
        {
LABEL_7:
          sub_19393CAD0();
          goto LABEL_8;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
LABEL_8:

      v5 += 4;

      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1934ED14C()
{
  result = qword_1EAE3BB48;
  if (!qword_1EAE3BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BB50, &qword_193958720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB48);
  }

  return result;
}

unint64_t sub_1934ED1B4()
{
  result = qword_1EAE3BB58;
  if (!qword_1EAE3BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB58);
  }

  return result;
}

unint64_t sub_1934ED210()
{
  result = qword_1EAE3BB60;
  if (!qword_1EAE3BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB60);
  }

  return result;
}

unint64_t sub_1934ED268()
{
  result = qword_1EAE3BB68;
  if (!qword_1EAE3BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB68);
  }

  return result;
}

unint64_t sub_1934ED2C4()
{
  result = qword_1EAE3BB70;
  if (!qword_1EAE3BB70)
  {
    type metadata accessor for SiriPostSiriEngagement(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB70);
  }

  return result;
}

uint64_t sub_1934ED344(uint64_t a1)
{
  sub_19349D140(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_9_32(v4, &qword_1ED508290, MEMORY[0x1E69E6158]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        OUTLINED_FUNCTION_10_15(v6, qword_1ED507ED8, MEMORY[0x1E69E6158]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        OUTLINED_FUNCTION_9_32(v8, &qword_1ED504940, &type metadata for SiriPostSiriEngagement.Features);
        if (v10 > 0x3F)
        {
          return v8;
        }

        OUTLINED_FUNCTION_10_15(v8, qword_1ED504668, &type metadata for SiriPostSiriEngagement.Signal);
        if (v11 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1934ED494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriPostSiriEngagement.Features(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 10);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t storeEnumTagSinglePayload for SiriPostSiriEngagement.Features(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 10) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1934ED5BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_1934ED5FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1934ED668(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

uint64_t sub_1934ED68C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

_BYTE *_s16IntelligenceFlowOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1934ED79C()
{
  v0 = sub_19393C820();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_1();
  v4 = v3 - v2;
  v5 = sub_19393C810();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v6 = sub_19393C4E0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5_1();
  sub_19343CF00(0, &qword_1EAE3BA78, 0x1E69E9610);
  sub_19393C4D0();
  sub_1934E666C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA88, &qword_1939584B8);
  sub_1934E66C4();
  sub_19393C8A0();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_19393C840();
  qword_1ED510208 = result;
  return result;
}

id sub_1934ED99C@<X0>(void *a1@<X8>)
{
  v3 = qword_1EAE50770;
  if (qword_1EAE50770)
  {
    v4 = qword_1EAE50770;
LABEL_3:
    *a1 = v4;
    return v3;
  }

  sub_193434358();
  result = sub_19393BF70();
  if (!v1)
  {
    v6 = qword_1EAE50770;
    qword_1EAE50770 = result;
    v4 = result;

    v3 = 0;
    goto LABEL_3;
  }

  return result;
}

id sub_1934EDA60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1939583F0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_193958C00;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  *(v1 + 40) = sub_19393C850();
  *(v1 + 48) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v3 = OUTLINED_FUNCTION_16_12();
  result = sub_19343D150(v3, v4, v5, v6, v1, 13, 0);
  if (result)
  {
    *(v0 + 32) = result;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_193958C00;
    *(v8 + 32) = sub_19393C850();
    *(v8 + 40) = sub_19393C850();
    *(v8 + 48) = sub_19393C850();
    v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    v10 = OUTLINED_FUNCTION_16_12();
    result = sub_19343D150(v10, v11, v12, v13, v8, 13, 0);
    if (result)
    {
      *(v0 + 40) = result;
      qword_1ED5127C0 = v0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1934EDC00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_193958C00;
  v1 = objc_allocWithZone(MEMORY[0x1E698F298]);
  *(v0 + 32) = sub_1934E5F70(0x6D61747365746164, 0xE900000000000070, 0xD00000000000002ELL, 0x8000000193A17FC0, 1);
  v2 = objc_allocWithZone(MEMORY[0x1E698F298]);
  *(v0 + 40) = OUTLINED_FUNCTION_10_16();
  v3 = objc_allocWithZone(MEMORY[0x1E698F298]);
  result = OUTLINED_FUNCTION_10_16();
  *(v0 + 48) = result;
  qword_1EAEA8700 = v0;
  return result;
}

id sub_1934EDD30()
{
  v1 = sub_19393C570();
  if (qword_1EAE45C80 != -1)
  {
    OUTLINED_FUNCTION_1_27(&qword_1EAE45C80);
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex();
  v4 = objc_msgSendSuper2(&v6, sel_initWithName_fields_streamIdentifier_, v1, v2, v3);

  return v4;
}

id sub_1934EDE4C(double a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v5 = OUTLINED_FUNCTION_3_28(v4);
  v6 = MEMORY[0x1E69E63B0];
  *(v5 + 16) = xmmword_19394FBB0;
  *(v5 + 56) = v6;
  *(v5 + 32) = a1;
  v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v8 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  *(v5 + 88) = v8;
  *(v5 + 64) = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v5 + 120) = v8;
  *(v5 + 96) = v9;
  v10 = OUTLINED_FUNCTION_4_5();
  *(v10 + 16) = xmmword_19394FBB0;
  *(v10 + 56) = v6;
  *(v10 + 32) = a1;
  v11 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v10 + 88) = v8;
  *(v10 + 64) = v11;
  v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v10 + 120) = v8;
  *(v10 + 96) = v12;
  if (_MergedGlobals_8 != -1)
  {
    OUTLINED_FUNCTION_0_26(&_MergedGlobals_8);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v2)
  {
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_8_24(v1);
  }
}

id sub_1934EE268(unint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v7 = OUTLINED_FUNCTION_3_28(v6);
  OUTLINED_FUNCTION_13_10(v7, xmmword_19394FBB0);
  v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v9 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  v10 = MEMORY[0x1E69E6158];
  v7[2].n128_u64[0] = v8;
  v7[5].n128_u64[1] = v10;
  v7[3].n128_u64[1] = v9;
  v7[4].n128_u64[0] = a1;
  v7[4].n128_u64[1] = a2;
  v11 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v12 = [v2 init];
  v7[7].n128_u64[1] = v9;
  v7[6].n128_u64[0] = v12;
  v13 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_26(v13, v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v22);
  v3[4] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v3[11] = v10;
  v3[7] = v9;
  v3[8] = a1;
  v3[9] = a2;
  v23 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v24 = [v2 init];
  v3[15] = v9;
  v3[12] = v24;
  if (_MergedGlobals_8 != -1)
  {
    OUTLINED_FUNCTION_0_26(&_MergedGlobals_8);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v30)
  {
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_8_24(v29);
  }
}

id sub_1934EE680(unint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v8 = OUTLINED_FUNCTION_3_28(v7);
  OUTLINED_FUNCTION_13_10(v8, xmmword_19394FBB0);
  v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v10 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  v8[3].n128_u64[1] = v10;
  v8[2].n128_u64[0] = v9;
  v8[4].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v11 = MEMORY[0x1E69E6158];
  v8[7].n128_u64[1] = MEMORY[0x1E69E6158];
  v8[5].n128_u64[1] = v10;
  v8[6].n128_u64[0] = a1;
  v8[6].n128_u64[1] = a2;
  v12 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_26(v12, v13, v14, v15, v16, v17, v18, v19, v20, v27, v28, v21);
  v22 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v23 = [v2 init];
  v3[7] = v10;
  v3[4] = v23;
  v3[8] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v3[15] = v11;
  v3[11] = v10;
  v3[12] = a1;
  v3[13] = a2;
  v24 = _MergedGlobals_8;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_0_26(&_MergedGlobals_8);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v4)
  {
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_8_24(v29);
  }
}

id sub_1934EEA9C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19394FBB0;
  if (a2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v16 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v16 + 32) = v17;
  }

  else
  {
    v34 = MEMORY[0x1E69E63B0];
    *&v33 = a1;
    sub_193495EE0(&v33, (v16 + 32));
  }

  v18 = MEMORY[0x1E69E6158];
  if (a6)
  {
    v34 = MEMORY[0x1E69E6158];
    *&v33 = a5;
    *(&v33 + 1) = a6;
    sub_193495EE0(&v33, (v16 + 64));
  }

  else
  {
    v19 = [OUTLINED_FUNCTION_7_19() &selRef_entityIdentifier];
    *(v16 + 88) = OUTLINED_FUNCTION_14_11(v19, &qword_1EAE3BA68);
    *(v16 + 64) = v19;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  if (*(&a9 + 1))
  {
    v34 = v18;
    v33 = a9;
    sub_193495EE0(&v33, (v16 + 96));
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7_19();

    v20 = [v10 &selRef_entityIdentifier];
    *(v16 + 120) = OUTLINED_FUNCTION_14_11(v20, &qword_1EAE3BA68);
    *(v16 + 96) = v20;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19394FBB0;
  if (a4)
  {
    v10 = OUTLINED_FUNCTION_7_19();

    v22 = [v10 &selRef_entityIdentifier];
    *(v21 + 56) = OUTLINED_FUNCTION_14_11(v22, &qword_1EAE3BA68);
    *(v21 + 32) = v22;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  else
  {
    v34 = MEMORY[0x1E69E63B0];
    *&v33 = a3;
    sub_193495EE0(&v33, (v21 + 32));
  }

  if (a8)
  {
    v34 = v18;
    *&v33 = a7;
    *(&v33 + 1) = a8;
    sub_193495EE0(&v33, (v21 + 64));
  }

  else
  {
    v23 = [OUTLINED_FUNCTION_7_19() &selRef_entityIdentifier];
    *(v21 + 88) = OUTLINED_FUNCTION_14_11(v23, &qword_1EAE3BA68);
    *(v21 + 64) = v23;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  if (*(&a10 + 1))
  {
    v34 = v18;
    v33 = a10;
    sub_193495EE0(&v33, (v21 + 96));
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_15_23();
    v24 = [v10 &selRef_entityIdentifier];
    *(v21 + 120) = OUTLINED_FUNCTION_14_11(v24, &qword_1EAE3BA68);
    *(v21 + 96) = v24;
    if (v34)
    {
      sub_1934E60B4(&v33);
    }
  }

  v25 = _MergedGlobals_8;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_0_26(&_MergedGlobals_8);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  v26 = v35;
  sub_19393C830();
  if (v26)
  {
  }

  else
  {
    v28 = v33;
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v29, v16, v21, v28);
  }
}