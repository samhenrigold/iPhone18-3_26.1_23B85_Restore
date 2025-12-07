void sub_1C8CE6678(uint64_t a2@<X8>)
{
  sub_1C8CE66AC();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_1C8CE66B4()
{
  OUTLINED_FUNCTION_7_1();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1C8CE66E8()
{
  v1 = OUTLINED_FUNCTION_7_1();
  result = sub_1C8DDCC04(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C8CE671C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8EAC8AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C8CE6748@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C9061EFC();
  result = sub_1C8CE7B78(v3, v4);
  *a2 = v5;
  return result;
}

uint64_t sub_1C8CE6794@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D792EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C8CE67C0(uint64_t a1)
{
  v2 = sub_1C8CE69CC(&qword_1EC312358, type metadata accessor for LSPersistentIdentifier, &unk_1C9066454);
  v3 = sub_1C8CE69CC(&qword_1EC312360, type metadata accessor for LSPersistentIdentifier, &unk_1C90663FC);
  v6 = sub_1C8CE7BE4(v3, v4, v5);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v6);
}

uint64_t sub_1C8CE6880(uint64_t a1)
{
  v2 = sub_1C8CE69CC(&qword_1EC3122C0, type metadata accessor for WFMeasurementUnitType, &unk_1C9065FF0);
  v3 = sub_1C8CE69CC(&qword_1EC3122C8, type metadata accessor for WFMeasurementUnitType, &unk_1C9065F98);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C8CE69CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8CE6A5C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C9063EBC();

  *a2 = v3;
  return result;
}

uint64_t sub_1C8CE6AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8CE6AD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C8CE6AD4(uint64_t a1)
{
  v2 = sub_1C8CE69CC(&qword_1EDA60498, type metadata accessor for ProgressUserInfoKey, &unk_1C906681C);
  v3 = sub_1C8CE69CC(&qword_1EC312350, type metadata accessor for ProgressUserInfoKey, &unk_1C9066608);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C8CE6B90(uint64_t a1)
{
  v2 = sub_1C8CE69CC(&qword_1EC312338, type metadata accessor for LNSystemProtocolIdentifier, &unk_1C906678C);
  v3 = sub_1C8CE69CC(&unk_1EC312340, type metadata accessor for LNSystemProtocolIdentifier, &unk_1C906672C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1C8CE6C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312220;
  if (!qword_1EC312220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312220);
  }

  return result;
}

unint64_t sub_1C8CE6CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66918;
  if (!qword_1EDA66918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66918);
  }

  return result;
}

unint64_t sub_1C8CE6D3C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CE6D7C(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8CE6DD0(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8CE6E24(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8CE6E78(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8CE6D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60960;
  if (!qword_1EDA60960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60960);
  }

  return result;
}

unint64_t sub_1C8CE6DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312228;
  if (!qword_1EC312228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312228);
  }

  return result;
}

unint64_t sub_1C8CE6E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66910;
  if (!qword_1EDA66910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66910);
  }

  return result;
}

unint64_t sub_1C8CE6E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312238;
  if (!qword_1EC312238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312238);
  }

  return result;
}

unint64_t sub_1C8CE6ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312240;
  if (!qword_1EC312240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312240);
  }

  return result;
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

unint64_t sub_1C8CE6F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66960;
  if (!qword_1EDA66960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66960);
  }

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

uint64_t sub_1C8CE7030(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C9061F3C();
  v4 = v3;
  sub_1C9061F4C();

  return sub_1C8CE7B78(v2, v4);
}

uint64_t sub_1C8CE7090(uint64_t a1, uint64_t a2)
{
  sub_1C9063EEC();
  sub_1C9063FBC();
}

uint64_t sub_1C8CE70E4(uint64_t a1, uint64_t a2)
{
  sub_1C9063EEC();
  sub_1C9064D7C();
  sub_1C9063FBC();
  v2 = sub_1C9064DBC();

  return v2;
}

uint64_t sub_1C8CE7158(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C9061F3C();
  v4 = v3;
  sub_1C9064D7C();
  sub_1C9061F4C();
  v5 = sub_1C9064DBC();
  sub_1C8CE7B78(v2, v4);
  return v5;
}

uint64_t sub_1C8CE71D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C9061F3C();
  v4 = v3;
  v5 = sub_1C9061F3C();
  v7 = v6;
  v8 = MEMORY[0x1CCA7F9A0](v2, v4, v5, v6);
  sub_1C8CE7B78(v5, v7);
  sub_1C8CE7B78(v2, v4);
  return v8 & 1;
}

uint64_t sub_1C8CE7284(uint64_t a1, int a2)
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

uint64_t sub_1C8CE72A4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SearchKeywordRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchKeywordRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

void sub_1C8CE746C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1C8CE7594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312300;
  if (!qword_1EC312300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312300);
  }

  return result;
}

unint64_t sub_1C8CE779C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66948;
  if (!qword_1EDA66948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66948);
  }

  return result;
}

unint64_t sub_1C8CE77F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66950;
  if (!qword_1EDA66950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66950);
  }

  return result;
}

uint64_t sub_1C8CE7848(uint64_t a1, id *a2)
{
  result = sub_1C9061F0C();
  *a2 = 0;
  return result;
}

uint64_t sub_1C8CE78D8(uint64_t a1, id *a2)
{
  result = sub_1C9063ECC();
  *a2 = 0;
  return result;
}

uint64_t sub_1C8CE7950(uint64_t a1, id *a2)
{
  v3 = sub_1C9061F2C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C8CE79F0(uint64_t a1, id *a2)
{
  v3 = sub_1C9063EDC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C8CE7A70(uint64_t a1)
{
  v1 = sub_1C9061F3C();
  v3 = v2;
  v4 = sub_1C9061EFC();
  sub_1C8CE7B78(v1, v3);
  return v4;
}

uint64_t sub_1C8CE7AB8(uint64_t a1)
{
  sub_1C9063EEC();
  v1 = sub_1C9063EBC();

  return v1;
}

uint64_t sub_1C8CE7AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1C9061F3C();
  v5 = v4;
  v6 = a2();
  sub_1C8CE7B78(v3, v5);
  return v6;
}

uint64_t sub_1C8CE7B40(uint64_t a1)
{
  v1 = sub_1C9063EEC();
  v2 = MEMORY[0x1CCA81B20](v1);

  return v2;
}

uint64_t sub_1C8CE7B78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1C8CE7BD0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C8CE7B78(result, a2);
  }

  return result;
}

unint64_t sub_1C8CE7BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312368;
  if (!qword_1EC312368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312368);
  }

  return result;
}

uint64_t sub_1C8CE7CC8()
{
  v0 = sub_1C9061EBC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA6D908 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDA6D910);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  type metadata accessor for IndexingLog();
  v5 = swift_allocObject();
  result = IndexingLog.init(path:)(v3);
  off_1EDA63980 = v5;
  return result;
}

uint64_t IndexingLog.__allocating_init(path:)(uint64_t a1)
{
  v2 = swift_allocObject();
  IndexingLog.init(path:)(a1);
  return v2;
}

uint64_t static IndexingLog.shared.getter()
{
  if (qword_1EDA63970 != -1)
  {
    swift_once();
  }
}

uint64_t IndexingLog.init(path:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = objc_opt_self();
  v9 = sub_1C9061E5C();
  v11 = sub_1C8CE8DC8(v9, v10, v8);
  v12 = type metadata accessor for IndexingLog.Entry(0);
  objc_allocWithZone(MEMORY[0x1E698F318]);
  v13 = v11;
  *(v2 + 16) = sub_1C8CE8D40(0xD000000000000012, 0x80000001C90C9480, v11, v12);
  sub_1C906428C();
  v14 = sub_1C90642AC();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;

  sub_1C8CE80E4(0, 0, v7, &unk_1C90668C8, v15);

  sub_1C9061EBC();
  OUTLINED_FUNCTION_10_0();
  (*(v16 + 8))(a1);
  return v2;
}

uint64_t sub_1C8CE807C()
{
  OUTLINED_FUNCTION_7();
  [*(*(v0 + 16) + 16) pruneStreamBySize_];
  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t sub_1C8CE80E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_4(v12, v21);
  v13 = sub_1C90642AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C8CE92CC(v5);
  }

  else
  {
    sub_1C906429C();
    OUTLINED_FUNCTION_10_0();
    (*(v15 + 8))(v5, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C8CE92CC(a3);
    OUTLINED_FUNCTION_2();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1C906424C();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C9063F7C();
  OUTLINED_FUNCTION_2();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  v19 = swift_task_create();

  sub_1C8CE92CC(a3);

  return v19;
}

uint64_t sub_1C8CE8364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_4(v12, v21);
  v13 = sub_1C90642AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C8CE92CC(v5);
  }

  else
  {
    sub_1C906429C();
    OUTLINED_FUNCTION_10_0();
    (*(v15 + 8))(v5, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C8CE92CC(a3);
    OUTLINED_FUNCTION_2();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3124F0, &qword_1C9066918);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1C906424C();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C9063F7C();
  OUTLINED_FUNCTION_2();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3124F0, &qword_1C9066918);
  v18 = swift_task_create();

  sub_1C8CE92CC(a3);

  return v18;
}

void IndexingLog.read(reader:)(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 16) publisher];
  v14 = nullsub_1;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C8CE974C;
  v13 = &block_descriptor;
  v6 = _Block_copy(&v10);
  OUTLINED_FUNCTION_2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v14 = sub_1C8CE8FFC;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C8CE974C;
  v13 = &block_descriptor_7;
  v8 = _Block_copy(&v10);

  v9 = [v5 sinkWithCompletion:v6 receiveInput:v8];
  _Block_release(v8);
  _Block_release(v6);
}

char *sub_1C8CE8774(void *a1, void (*a2)(char *))
{
  v4 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v13 - v9;
  result = [a1 eventBody];
  if (result)
  {
    v12 = result;
    sub_1C8CE919C(&result[OBJC_IVAR____TtCC7ToolKit11IndexingLog5Entry_protoEntry], v6);

    sub_1C8CE964C(v6, v10);
    a2(v10);
    return sub_1C8CE9200(v10);
  }

  return result;
}

void sub_1C8CE886C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t IndexingLog.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C8CE893C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1C906387C();
  v9 = OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  result = 0;
  if (a3 == 1)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_1C8CE9144(a1, a2);
    sub_1C906386C();
    sub_1C8CE90EC();
    sub_1C9063A7C();
    sub_1C8CE919C(v15, v12);
    v17 = objc_allocWithZone(v4);
    sub_1C8CE919C(v12, v17 + OBJC_IVAR____TtCC7ToolKit11IndexingLog5Entry_protoEntry);
    v19.receiver = v17;
    v19.super_class = v4;
    objc_msgSendSuper2(&v19, sel_init);
    sub_1C8CE9200(v12);
    sub_1C8CE9200(v15);
    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

uint64_t sub_1C8CE8BB0()
{
  type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  sub_1C8CE90EC();
  return sub_1C9063A8C();
}

id sub_1C8CE8CF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C8CE8D40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1C9063EBC();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v4 initWithPrivateStreamIdentifier:v7 storeConfig:a3 eventDataClass:ObjCClassFromMetadata];

  return v9;
}

id sub_1C8CE8DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9063EBC();

  v5 = [a3 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  return v5;
}

uint64_t type metadata accessor for IndexingLog.Entry(uint64_t a1)
{
  result = qword_1EDA63988;
  if (!qword_1EDA63988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8CE8E70()
{
  OUTLINED_FUNCTION_4_2();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1_4(v6);
  *v7 = v8;
  v7[1] = sub_1C8CE8F18;

  return sub_1C8CE805C(v2, v3, v4, v5);
}

uint64_t sub_1C8CE8F18()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8CE905C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoIndexingLogEntry(319);
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

unint64_t sub_1C8CE90EC()
{
  result = qword_1EDA64C68[0];
  if (!qword_1EDA64C68[0])
  {
    type metadata accessor for ToolKitProtoIndexingLogEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA64C68);
  }

  return result;
}

uint64_t sub_1C8CE9144(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1C8CE919C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CE9200(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8CE925C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CE92CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8CE9334(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C8CE9428;

  return v5(v2 + 32);
}

uint64_t sub_1C8CE9428()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v5;

  *v1 = *(v5 + 32);
  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8CE952C()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_1C8CE95BC()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_1C8CE964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CE96B0()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t HashableCGSize.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCA82830](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1CCA82830](*&v3);
}

uint64_t sub_1C8CE97C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CE9858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CE97C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CE98A0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CE98CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CE9A88(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CE9908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CE9A88(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void HashableCGSize.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312500, &qword_1C9066950);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_38();
  v1 = OUTLINED_FUNCTION_127();
  v3 = OUTLINED_FUNCTION_217(v1, v2);
  sub_1C8CE9A88(v3, v4, v5);
  OUTLINED_FUNCTION_358(&type metadata for HashableCGSize.CodingKeys);
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_183();
  sub_1C8CD23F0(v6, v7, MEMORY[0x1E695EF88]);
  sub_1C9064B8C();
  v8 = OUTLINED_FUNCTION_112();
  v9(v8);
  OUTLINED_FUNCTION_277();
}

unint64_t sub_1C8CE9A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312508;
  if (!qword_1EC312508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312508);
  }

  return result;
}

uint64_t HashableCGSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_298();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1CCA82830](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1CCA82830](*&v4);
  return sub_1C9064DBC();
}

void HashableCGSize.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312518, &qword_1C9066958);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  v6 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_217(v6, v7);
  v11 = sub_1C8CE9A88(v8, v9, v10);
  OUTLINED_FUNCTION_355(&type metadata for HashableCGSize.CodingKeys, v12, v11);
  if (!v0)
  {
    type metadata accessor for CGSize(0);
    OUTLINED_FUNCTION_183();
    sub_1C8CD23F0(v13, v14, MEMORY[0x1E695EFA0]);
    sub_1C9064A6C();
    v15 = OUTLINED_FUNCTION_125();
    v16(v15);
    *v4 = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CE9CD4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C9064D7C();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1CCA82830](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1CCA82830](*&v5);
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.subtitle.getter@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *a1 = v5;
  a1[1] = v6;
  return OUTLINED_FUNCTION_266(*(v4 + 32), a1, v5, v6, a2, a3, a4);
}

uint64_t DisplayRepresentation.altText.getter@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>)
{
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  *a1 = v5;
  a1[1] = v6;
  return OUTLINED_FUNCTION_266(*(v4 + 56), a1, v5, v6, a2, a3, a4);
}

uint64_t sub_1C8CE9D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return OUTLINED_FUNCTION_264(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return sub_1C8CE9144(a1, a2);
  }
}

uint64_t DisplayRepresentation.image.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for DisplayRepresentation(v0);
  return sub_1C8CC1D3C();
}

uint64_t DisplayRepresentation.snippetPluginModel.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = (v1 + *(type metadata accessor for DisplayRepresentation(v2) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  return sub_1C8CE9E30(v4, v5, v6, v7);
}

uint64_t sub_1C8CE9E30(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C8CE9144(result, a2);
  }

  return result;
}

uint64_t DisplayRepresentation.synonyms.getter()
{
  type metadata accessor for DisplayRepresentation(0);
}

void DisplayRepresentation.init(title:subtitle:altText:image:synonyms:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(a4 + 16);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = *a3;
  *(a6 + 32) = v8;
  *(a6 + 40) = *a4;
  *(a6 + 56) = v9;
  type metadata accessor for DisplayRepresentation(0);
  sub_1C8CB21A0();
  OUTLINED_FUNCTION_331();
  *(a6 + v10) = a5;
}

__n128 DisplayRepresentation.init(title:subtitle:altText:image:snippetPluginModel:synonyms:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10 = *(a3 + 16);
  v11 = *(a4 + 16);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = *a3;
  *(a7 + 32) = v10;
  *(a7 + 40) = *a4;
  *(a7 + 56) = v11;
  v12 = type metadata accessor for DisplayRepresentation(0);
  sub_1C8CB21A0();
  v13 = (a7 + *(v12 + 32));
  result = *a5;
  v15 = *(a5 + 16);
  *v13 = *a5;
  v13[1] = v15;
  *(a7 + *(v12 + 36)) = a6;
  return result;
}

void DisplayRepresentation.init(title:subtitle:altText:image:synonyms:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_102();
  v21 = type metadata accessor for DisplayRepresentation.Image(v20);
  OUTLINED_FUNCTION_108_2(v3, 1, v21);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_115();
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_381();
    sub_1C8D04DE8();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150();
    v27 = v23;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  if (v5)
  {
    v28 = 1;
  }

  else
  {
    v28 = -1;
  }

  *v17 = v15;
  *(v17 + 8) = v13;
  if (v5)
  {
    v29 = v7;
  }

  else
  {
    v29 = 0;
  }

  if (v9)
  {
    v30 = 1;
  }

  else
  {
    v30 = -1;
  }

  if (v9)
  {
    v31 = v11;
  }

  else
  {
    v31 = 0;
  }

  *(v17 + 16) = v31;
  *(v17 + 24) = v9;
  *(v17 + 32) = v30;
  *(v17 + 40) = v29;
  *(v17 + 48) = v5;
  *(v17 + 56) = v28;
  v32 = type metadata accessor for DisplayRepresentation(0);
  sub_1C8CB21A0();
  v33 = (v17 + *(v32 + 32));
  *v33 = 0u;
  v33[1] = 0u;
  *(v17 + *(v32 + 36)) = v1;
  OUTLINED_FUNCTION_163();
}

void DisplayRepresentation.init(title:subtitle:altText:image:snippetPluginModel:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_164();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v37);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_73();
  v54 = v22[1];
  v55 = *v22;
  type metadata accessor for DisplayRepresentation.Image(0);
  v39 = OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_108_2(v39, v40, v41);
  if (v42)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_115();
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_224();
    sub_1C8D04DE8();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_300();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150();
    v47 = v43;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  if (v24)
  {
    v48 = 1;
  }

  else
  {
    v48 = -1;
  }

  *v36 = v34;
  *(v36 + 8) = v32;
  if (v24)
  {
    v49 = v26;
  }

  else
  {
    v49 = 0;
  }

  if (v28)
  {
    v50 = 1;
  }

  else
  {
    v50 = -1;
  }

  if (v28)
  {
    v51 = v30;
  }

  else
  {
    v51 = 0;
  }

  *(v36 + 16) = v51;
  *(v36 + 24) = v28;
  *(v36 + 32) = v50;
  *(v36 + 40) = v49;
  *(v36 + 48) = v24;
  *(v36 + 56) = v48;
  v52 = type metadata accessor for DisplayRepresentation(0);
  sub_1C8CB21A0();
  v53 = (v36 + *(v52 + 32));
  *v53 = v55;
  v53[1] = v54;
  *(v36 + *(v52 + 36)) = a21;
  OUTLINED_FUNCTION_163();
}

void DisplayRepresentation.init(title:snippetPluginModel:synonyms:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DisplayRepresentation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  *v9 = v7;
  *(v9 + 8) = v5;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = -1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = -1;
  v15 = (v9 + *(v10 + 32));
  v16 = v3[1];
  *v15 = *v3;
  v15[1] = v16;
  *(v9 + *(v10 + 36)) = v1;
  OUTLINED_FUNCTION_421();
}

void DisplayRepresentation.init(title:)()
{
  OUTLINED_FUNCTION_223();
  v3 = v2;
  type metadata accessor for DisplayRepresentation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = -1;
  OUTLINED_FUNCTION_331();
  *(v3 + v8) = MEMORY[0x1E69E7CC0];
}

void static DisplayRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_223();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_73();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312538, &qword_1C9066970);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_201();
  v11 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v11 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_18;
  }

  v174 = v5;
  v173 = v3;
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  if (*(v1 + 32) == 255)
  {
    if (v14 != 255)
    {
      goto LABEL_17;
    }

    v171 = v2;
    v38 = OUTLINED_FUNCTION_124_0();
    sub_1C8CD1ABC(v38, v39, 255, v40, v41, v42);
    sub_1C8CD1ABC(v12, v13, 255, v43, v44, v45);
    v46 = OUTLINED_FUNCTION_124_0();
    sub_1C8CD32C0(v46, v47, 255);
  }

  else
  {
    if (v14 == 255)
    {
      goto LABEL_17;
    }

    v171 = v2;
    v15 = OUTLINED_FUNCTION_101_0();
    sub_1C8CD1ABC(v15, v16, v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_99_0();
    sub_1C8CD1ABC(v21, v22, v23, v24, v25, v26);
    v27 = OUTLINED_FUNCTION_124_0();
    v31 = sub_1C8CF32F0(v27, v28, v29, v12, v13, v30);
    v32 = OUTLINED_FUNCTION_99_0();
    sub_1C8CD32C0(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_101_0();
    sub_1C8CD32C0(v35, v36, v37);
    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v48 = *(v0 + 40);
  v49 = *(v0 + 48);
  v50 = *(v0 + 56);
  if (*(v1 + 56) == 255)
  {
    if (v50 == 255)
    {
      v92 = OUTLINED_FUNCTION_124_0();
      sub_1C8CD1ABC(v92, v93, 255, v94, v95, v96);
      sub_1C8CD1ABC(v48, v49, 255, v97, v98, v99);
      v100 = OUTLINED_FUNCTION_124_0();
      sub_1C8CD32C0(v100, v101, 255);
      goto LABEL_20;
    }

LABEL_17:
    v74 = OUTLINED_FUNCTION_101_0();
    sub_1C8CD1ABC(v74, v75, v76, v77, v78, v79);
    v80 = OUTLINED_FUNCTION_99_0();
    sub_1C8CD1ABC(v80, v81, v82, v83, v84, v85);
    v86 = OUTLINED_FUNCTION_101_0();
    sub_1C8CD32C0(v86, v87, v88);
    v89 = OUTLINED_FUNCTION_99_0();
    sub_1C8CD32C0(v89, v90, v91);
    goto LABEL_18;
  }

  if (v50 == 255)
  {
    goto LABEL_17;
  }

  v51 = OUTLINED_FUNCTION_101_0();
  sub_1C8CD1ABC(v51, v52, v53, v54, v55, v56);
  v57 = OUTLINED_FUNCTION_99_0();
  sub_1C8CD1ABC(v57, v58, v59, v60, v61, v62);
  v63 = OUTLINED_FUNCTION_124_0();
  v67 = sub_1C8CF32F0(v63, v64, v65, v48, v49, v66);
  v68 = OUTLINED_FUNCTION_99_0();
  sub_1C8CD32C0(v68, v69, v70);
  v71 = OUTLINED_FUNCTION_101_0();
  sub_1C8CD32C0(v71, v72, v73);
  if ((v67 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  v102 = type metadata accessor for DisplayRepresentation(0);
  v103 = *(v9 + 48);
  OUTLINED_FUNCTION_368();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_368();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v171, 1, v174);
  if (v11)
  {
    OUTLINED_FUNCTION_92_0(v171 + v103);
    if (v11)
    {
      sub_1C8CBE41C(v171, &qword_1EC312528);
      goto LABEL_30;
    }

LABEL_28:
    sub_1C8CBE41C(v171, &qword_1EC312538);
    goto LABEL_18;
  }

  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_92_0(v171 + v103);
  if (v104)
  {
    sub_1C8CBE41C(v4, &qword_1EC312530);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_368();
  sub_1C8CB21A0();
  OUTLINED_FUNCTION_107();
  v105 = sub_1C8CF3488();
  sub_1C8CBE41C(v173, &qword_1EC312530);
  sub_1C8CBE41C(v4, &qword_1EC312530);
  sub_1C8CBE41C(v171, &qword_1EC312528);
  if ((v105 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_30:
  v106 = *(v102 + 32);
  v108 = *(v1 + v106);
  v107 = *(v1 + v106 + 8);
  v110 = *(v1 + v106 + 16);
  v109 = *(v1 + v106 + 24);
  v111 = (v0 + v106);
  v112 = *v111;
  v175 = v111[1];
  v114 = v111[2];
  v113 = v111[3];
  v115 = OUTLINED_FUNCTION_112();
  if (!v109)
  {
    sub_1C8CE9E30(v115, v116, v110, 0);
    if (!v113)
    {
      sub_1C8CE9E30(v112, v175, v114, 0);
      v109 = 0;
      v164 = v110;
LABEL_47:
      v169 = OUTLINED_FUNCTION_112();
      sub_1C8CF6A1C(v169, v170, v164, v109);
LABEL_48:
      sub_1C8CEB10C(*(v1 + *(v102 + 36)), *(v0 + *(v102 + 36)));
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_96();
    sub_1C8CE9E30(v138, v139, v140, v113);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_244();
  if (!v113)
  {
    sub_1C8CE9E30(v117, v118, v119, v120);
    OUTLINED_FUNCTION_96();
    sub_1C8CE9E30(v141, v142, v143, 0);
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_244();
    sub_1C8CE9E30(v144, v145, v146, v147);
    v148 = OUTLINED_FUNCTION_112();
    sub_1C8CE7B78(v148, v149);

LABEL_42:
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_244();
    sub_1C8CF6A1C(v150, v151, v152, v153);
    OUTLINED_FUNCTION_96();
    v157 = v113;
LABEL_44:
    sub_1C8CF6A1C(v154, v155, v156, v157);
    goto LABEL_18;
  }

  sub_1C8CE9E30(v117, v118, v119, v120);
  OUTLINED_FUNCTION_286();
  sub_1C8CE9E30(v121, v122, v123, v124);
  v125 = OUTLINED_FUNCTION_112();
  sub_1C8CE9E30(v125, v126, v110, v109);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_366();
  if ((MEMORY[0x1CCA7F9A0]() & 1) == 0)
  {
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_286();
    sub_1C8CF6A1C(v158, v159, v160, v161);
    v162 = OUTLINED_FUNCTION_112();
    sub_1C8CE7B78(v162, v163);

    v154 = OUTLINED_FUNCTION_112();
    v156 = v110;
    v157 = v109;
    goto LABEL_44;
  }

  if (v110 == v114 && v109 == v113)
  {
    v164 = v110;
    OUTLINED_FUNCTION_244();
    sub_1C8CF6A1C(v165, v166, v167, v168);
    sub_1C8CE7B78(v108, v107);

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_286();
  v172 = sub_1C9064C2C();
  OUTLINED_FUNCTION_286();
  sub_1C8CF6A1C(v128, v129, v130, v131);
  v132 = OUTLINED_FUNCTION_334();
  sub_1C8CE7B78(v132, v133);

  OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_244();
  sub_1C8CF6A1C(v134, v135, v136, v137);
  if (v172)
  {
    goto LABEL_48;
  }

LABEL_18:
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEA9F4()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_304();
  v30 = type metadata accessor for DisplayRepresentation(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_72();
  type metadata accessor for EnumerationCaseDefinition(0);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_218();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_234();
  v12 = *(v3 + 16);
  if (v12 == *(v0 + 16) && v12 && v3 != v0)
  {
    OUTLINED_FUNCTION_28_0();
    v14 = v3 + v13;
    v15 = v0 + v13;
    v29 = *(v16 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      sub_1C8D02900();
      sub_1C8D02900();
      v17 = *v2 == *v31 && v2[1] == v31[1];
      if (!v17 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      sub_1C8CC1D3C();
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_108_2(v1, 1, v30);
      if (v17)
      {
        v18 = OUTLINED_FUNCTION_400();
        OUTLINED_FUNCTION_108_2(v18, v19, v30);
        if (!v17)
        {
          goto LABEL_20;
        }

        v20 = OUTLINED_FUNCTION_100();
        sub_1C8CBE41C(v20, v21);
        sub_1C8D02958();
        OUTLINED_FUNCTION_378();
        sub_1C8D02958();
      }

      else
      {
        OUTLINED_FUNCTION_93();
        sub_1C8CC1D3C();
        v22 = OUTLINED_FUNCTION_400();
        OUTLINED_FUNCTION_108_2(v22, v23, v30);
        if (v24)
        {
          OUTLINED_FUNCTION_59();
          sub_1C8D02958();
LABEL_20:
          sub_1C8CBE41C(v1, &qword_1EC312A20);
          break;
        }

        OUTLINED_FUNCTION_192();
        sub_1C8D04DE8();
        static DisplayRepresentation.== infix(_:_:)();
        v26 = v25;
        sub_1C8D02958();
        OUTLINED_FUNCTION_145();
        sub_1C8D02958();
        v27 = OUTLINED_FUNCTION_287();
        sub_1C8CBE41C(v27, v28);
        sub_1C8D02958();
        sub_1C8D02958();
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v15 += v29;
      v14 += v29;
      if (!--v12)
      {
        goto LABEL_22;
      }
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_274_0();
    sub_1C8D02958();
  }

LABEL_22:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEADC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      v10 = *(v3 - 4);
      v12 = *(v3 - 2);
      v11 = *(v3 - 1);
      v18 = *v3;
      v13 = v5 == v10 && v6 == *(v3 - 3);
      if (!v13 && (OUTLINED_FUNCTION_319(v5, v6, v10) & 1) == 0)
      {
        break;
      }

      if (v8 != v12 || v7 != v11)
      {
        OUTLINED_FUNCTION_112();
        if ((sub_1C9064C2C() & 1) == 0)
        {
          break;
        }
      }

      v19 = v18;
      v20 = v9;
      swift_retain_n();
      swift_retain_n();

      static TypeInstance.== infix(_:_:)(&v20, &v19);
      v17 = v15;

      if ((v17 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C8CEAF48()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  OUTLINED_FUNCTION_143();
  sub_1C9063C4C();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(v0 + 16);
  if (v7 == *(v2 + 16) && v7 && v0 != v2)
  {
    OUTLINED_FUNCTION_139();
    v9 = v0 + v8;
    v10 = v2 + v8;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = (v11 - 8);
    v23 = *(v11 + 56);
    v24 = v12;
    while (1)
    {
      v14 = OUTLINED_FUNCTION_249();
      v24(v14);
      if (!v7)
      {
        break;
      }

      v15 = OUTLINED_FUNCTION_117();
      v16 = v11;
      v24(v15);
      OUTLINED_FUNCTION_58_0();
      sub_1C8CD23F0(&qword_1EDA62BA8, v17, MEMORY[0x1E69E8468]);
      OUTLINED_FUNCTION_116();
      v18 = sub_1C9063EAC();
      v19 = *v13;
      v20 = OUTLINED_FUNCTION_94();
      v19(v20);
      v21 = OUTLINED_FUNCTION_206();
      v19(v21);
      if (v18)
      {
        v10 += v23;
        v9 += v23;
        v22 = v7-- == 1;
        v11 = v16;
        if (!v22)
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
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8CEB10C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    do
    {
      OUTLINED_FUNCTION_314();
      v5 = v5 && v3 == v4;
      if (!v5 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_313();
    }

    while (!v5);
  }
}

void sub_1C8CEB4A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16) && v2 && result != a2)
  {
    v3 = 0;
    v23 = a2 + 32;
    v24 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_43;
      }

      v4 = (v24 + 32 * v3);
      v5 = *v4;
      v6 = (v23 + 32 * v3);
      v7 = *v6;
      v8 = *(*v4 + 16);
      if (v8 != *(*v6 + 16))
      {
        return;
      }

      v9 = v4[2];
      v25 = v4[1];
      v10 = v4[3];
      v12 = v6[1];
      v11 = v6[2];
      if (v8)
      {
        v13 = v5 == v7;
      }

      else
      {
        v13 = 1;
      }

      v14 = v6[3];
      if (!v13)
      {
        v15 = (v5 + 40);
        v16 = (v7 + 40);
        while (v8)
        {
          v17 = *(v15 - 1) == *(v16 - 1) && *v15 == *v16;
          if (!v17 && (sub_1C9064C2C() & 1) == 0)
          {
            return;
          }

          v15 += 2;
          v16 += 2;
          if (!--v8)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

LABEL_19:
      if (v9)
      {
        if (!v11)
        {
          return;
        }

        v18 = v25 == v12 && v9 == v11;
        if (!v18 && (OUTLINED_FUNCTION_319(v25, v9, v12) & 1) == 0)
        {
          return;
        }
      }

      else if (v11)
      {
        return;
      }

      v19 = *(v10 + 16);
      if (v19 != *(v14 + 16))
      {
        return;
      }

      if (v19 && v10 != v14)
      {
        break;
      }

LABEL_38:
      if (++v3 == v2)
      {
        return;
      }
    }

    while (1)
    {
      OUTLINED_FUNCTION_314();
      v22 = v13 && v20 == v21;
      if (!v22 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_313();
      if (v13)
      {
        goto LABEL_38;
      }
    }
  }
}

uint64_t sub_1C8CEB63C()
{
  OUTLINED_FUNCTION_225();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_384();
    while (1)
    {
      OUTLINED_FUNCTION_417(v20);
      OUTLINED_FUNCTION_417(__src);
      OUTLINED_FUNCTION_354(v21);
      OUTLINED_FUNCTION_354(v18);
      sub_1C8D07294(v20, v17);
      sub_1C8D07294(v21, v17);
      v7 = static ParameterDefinition.== infix(_:_:)(__src);
      OUTLINED_FUNCTION_404(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12], v17[13], v17[14], v17[15], v17[16], v18[0]);
      sub_1C8D072F0(v22);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C8D072F0(__dst);
      if ((v2 & 1) == 0)
      {
        break;
      }

      v0 += 136;
      v1 += 136;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C8CEB710()
{
  OUTLINED_FUNCTION_225();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_384();
    while (1)
    {
      OUTLINED_FUNCTION_416(v20);
      OUTLINED_FUNCTION_416(__src);
      OUTLINED_FUNCTION_418(v21);
      OUTLINED_FUNCTION_418(v18);
      sub_1C8D07344(v20, v17);
      sub_1C8D07344(v21, v17);
      v7 = static RuntimeRequirement.== infix(_:_:)(__src, v18);
      OUTLINED_FUNCTION_403(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12]);
      sub_1C8D0722C(v22);
      memcpy(__dst, __src, 0x61uLL);
      sub_1C8D0722C(__dst);
      if ((v2 & 1) == 0)
      {
        break;
      }

      v1 += 104;
      v0 += 104;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C8CEB7E4()
{
  OUTLINED_FUNCTION_164();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_143();
  type metadata accessor for ComparisonPredicate.Template(v9);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_87();
  v15 = *(v1 + 16);
  if (v15 == *(v8 + 16) && v15 && v1 != v8)
  {
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_389(v16);
    while (1)
    {
      OUTLINED_FUNCTION_100();
      sub_1C8D02900();
      if (!v15)
      {
        break;
      }

      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_254();
      sub_1C8D02900();
      v17 = OUTLINED_FUNCTION_272();
      v20 = v20 && v3 == v2;
      if (!v20 && (OUTLINED_FUNCTION_299(v17, v18, v19) & 1) == 0 || (v6 == v15 ? (v21 = v5 == v4) : (v21 = 0), !v21 && (OUTLINED_FUNCTION_327(), (sub_1C9064C2C() & 1) == 0) || (OUTLINED_FUNCTION_406(), swift_retain_n(), , , , , v22 = OUTLINED_FUNCTION_271(), static TypeInstance.== infix(_:_:)(v22, v23), v25 = v24, , v6 = v41, , , , , , , , (v25 & 1) == 0) || (v41 = *(v0 + 40), v26 = *(v13 + 40), v40 = v26, sub_1C8CD37AC(v41), sub_1C8CD37AC(v26), v27 = OUTLINED_FUNCTION_271(), v15 = static ComparisonPredicate.Comparison.Template.== infix(_:_:)(v27, v28), sub_1C8CD37D8(v40), sub_1C8CD37D8(v41), (v15 & 1) == 0) || (v29 = OUTLINED_FUNCTION_405(), (v29 & 1) == 0)))
      {
        OUTLINED_FUNCTION_175();
        sub_1C8D02958();
        OUTLINED_FUNCTION_134();
        sub_1C8D02958();
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_154(v29, v30, v31, v32, v33, v34);
      v35 = OUTLINED_FUNCTION_227();
      sub_1C8D06F98(v35, v36, v3, v4, v5, v37);
      v38 = OUTLINED_FUNCTION_271();
      v2 = static ContentItemClassDescriptor.Inner.== infix(_:_:)(v38, v39);
      OUTLINED_FUNCTION_348();
      sub_1C8D06FF4(v41, v42, v43, v44, v45);
      OUTLINED_FUNCTION_175();
      sub_1C8D02958();
      OUTLINED_FUNCTION_134();
      sub_1C8D02958();
      if (v2)
      {
        OUTLINED_FUNCTION_289();
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8CEBA80()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v75 = type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v78 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129C0, &qword_1C9068DA0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_201();
  type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_2();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_306();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_234();
  v17 = *(v4 + 16);
  if (v17 != *(v2 + 16) || !v17 || v4 == v2)
  {
    goto LABEL_49;
  }

  v71 = v16;
  OUTLINED_FUNCTION_28_0();
  v19 = v4 + v18;
  v20 = v2 + v18;
  v72 = *(v21 + 72);
  v74 = v0;
  v73 = v7;
  while (1)
  {
    OUTLINED_FUNCTION_381();
    sub_1C8D02900();
    sub_1C8D02900();
    v22 = (v0 + *(v7 + 48));
    sub_1C8D02900();
    sub_1C8D02900();
    OUTLINED_FUNCTION_382();
    v77 = v19;
    v76 = v20;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_157_0();
    sub_1C8D02900();
    v56 = v71[1];
    v85 = *v71;
    v86 = v56;
    v57 = v71[3];
    v87 = v71[2];
    v88 = v57;
    OUTLINED_FUNCTION_226_1();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D07050(&v85);
      goto LABEL_47;
    }

    v58 = v22[1];
    v81 = *v22;
    v82 = v58;
    v59 = v22[3];
    v83 = v22[2];
    v84 = v59;
    v60 = *(&v85 + 1);
    v61 = v85 == v81 && *(&v85 + 1) == *(&v81 + 1);
    if (!v61 && (sub_1C9064C2C() & 1) == 0 || ((v62 = v87, v63 = v88, v64 = v83, v65 = v84, v86 == v82) ? (v66 = *(&v86 + 1) == *(&v82 + 1)) : (v66 = 0), !v66 && (OUTLINED_FUNCTION_299(v86, v60, v82) & 1) == 0 || (v62 == v64 ? (v67 = *(&v62 + 1) == *(&v64 + 1)) : (v67 = 0), !v67 && (OUTLINED_FUNCTION_206(), (sub_1C9064C2C() & 1) == 0) || (v79 = v65, v80 = v63, swift_retain_n(), swift_retain_n(), , , , , static TypeInstance.== infix(_:_:)(&v80, &v79), v69 = v68, , , , , , , , , (v69 & 1) == 0))))
    {
      sub_1C8D07050(&v81);
      sub_1C8D07050(&v85);
      goto LABEL_44;
    }

    v70 = *(&v84 + 1);
    v79 = *(&v84 + 1);
    v80 = *(&v88 + 1);
    sub_1C8CD37AC(*(&v88 + 1));
    sub_1C8CD37AC(v70);
    LOBYTE(v70) = static ComparisonPredicateType.ComparisonType.== infix(_:_:)(&v80, &v79);
    sub_1C8CD37D8(v79);
    sub_1C8CD37D8(v80);
    sub_1C8D07050(&v81);
    sub_1C8D07050(&v85);
    if ((v70 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_40:
    OUTLINED_FUNCTION_19();
    v0 = v74;
    sub_1C8D02958();
    OUTLINED_FUNCTION_371();
    OUTLINED_FUNCTION_166_0();
    sub_1C8D02958();
    OUTLINED_FUNCTION_274_0();
    sub_1C8D02958();
    v20 = v76 + v72;
    v19 = v77 + v72;
    --v17;
    v7 = v73;
    if (!v17)
    {
      goto LABEL_49;
    }
  }

  OUTLINED_FUNCTION_157_0();
  sub_1C8D02900();
  OUTLINED_FUNCTION_226_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_152();
    sub_1C8D04DE8();
    v25 = v12[2];
    v24 = v12[3];
    v26 = v12[4];
    v27 = v78[2];
    v28 = v78[3];
    v29 = v78[4];
    v30 = *v12 == *v78 && v12[1] == v78[1];
    if (!v30 && (OUTLINED_FUNCTION_299(*v12, v23, *v78) & 1) == 0 || (v25 == v27 ? (v31 = v24 == v28) : (v31 = 0), !v31 && (OUTLINED_FUNCTION_206(), (sub_1C9064C2C() & 1) == 0) || (*&v85 = v26, *&v81 = v29, swift_retain_n(), swift_retain_n(), , , , , static TypeInstance.== infix(_:_:)(&v85, &v81), v33 = v32, , , , , , , , , (v33 & 1) == 0) || (v34 = v12[6], *&v85 = v12[5], *(&v85 + 1) = v34, v35 = v78[6], *&v81 = v78[5], *(&v81 + 1) = v35, sub_1C8D06E80(v85, v34), v36 = OUTLINED_FUNCTION_94(), sub_1C8D06E80(v36, v37), v38 = static ComparisonPredicate.Comparison.== infix(_:_:)(&v85, &v81), sub_1C8D06F08(v81, *(&v81 + 1)), sub_1C8D06F08(v85, *(&v85 + 1)), (v38 & 1) == 0) || (_s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (v40 = *(v75 + 28), v41 = v12 + v40, v42 = *(v12 + v40), v43 = *(v12 + v40 + 8), v44 = *(v12 + v40 + 16), v45 = *(v12 + v40 + 24), v46 = v78 + v40, v47 = *v46, v48 = *(v46 + 1), v49 = *(v46 + 2), v50 = *(v46 + 3), v51 = v41[32], v52 = v46[32], *&v85 = v42, *(&v85 + 1) = v43, *&v86 = v44, *(&v86 + 1) = v45, LOBYTE(v87) = v51, *&v81 = v47, *(&v81 + 1) = v48, *&v82 = v49, *(&v82 + 1) = v50, LOBYTE(v83) = v52, sub_1C8D06F98(v42, v43, v44, v45, v51, v39), v53 = OUTLINED_FUNCTION_94(), sub_1C8D06F98(v53, v54, v49, v50, v52, v55), LOBYTE(v47) = static ContentItemClassDescriptor.Inner.== infix(_:_:)(&v85, &v81), sub_1C8D06FF4(v81, *(&v81 + 1), v82, *(&v82 + 1), v83), OUTLINED_FUNCTION_348(), (v47 & 1) == 0)))
    {
      OUTLINED_FUNCTION_20_1();
      sub_1C8D02958();
      OUTLINED_FUNCTION_155_1();
      sub_1C8D02958();
LABEL_44:
      OUTLINED_FUNCTION_19();
      sub_1C8D02958();
      OUTLINED_FUNCTION_371();
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_20_1();
    sub_1C8D02958();
    OUTLINED_FUNCTION_155_1();
    sub_1C8D02958();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_46_0();
  sub_1C8D02958();
LABEL_47:
  sub_1C8CBE41C(v0, &qword_1EC3129C0);
LABEL_48:
  OUTLINED_FUNCTION_166_0();
  sub_1C8D02958();
  OUTLINED_FUNCTION_274_0();
  sub_1C8D02958();
LABEL_49:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEC1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a1 + 40);
      v4 = (a2 + 40);
      do
      {
        v5 = *v3;
        v6 = *(v3 - 1);
        v7 = *v4;
        v12 = *(v4 - 1);
        v13 = v6;

        static TypeInstance.== infix(_:_:)(&v13, &v12);
        v9 = v8;

        if ((v9 ^ 1 | (v5 ^ v7)))
        {
          break;
        }

        v3 += 16;
        v4 += 16;
        --v2;
      }

      while (v2);
      v10 = (v9 ^ 1 | v5 ^ v7) ^ 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1C8CEC2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        static TypedValue.== infix(_:_:)();
        v6 = v5;

        --v2;
      }

      while ((v6 & 1) != 0 && v2);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1C8CEC394()
{
  OUTLINED_FUNCTION_164();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_143();
  type metadata accessor for ComparisonPredicate(v9);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_87();
  v15 = *(v1 + 16);
  if (v15 == *(v8 + 16) && v15 && v1 != v8)
  {
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_389(v16);
    while (1)
    {
      OUTLINED_FUNCTION_100();
      sub_1C8D02900();
      if (!v15)
      {
        break;
      }

      OUTLINED_FUNCTION_194();
      OUTLINED_FUNCTION_254();
      sub_1C8D02900();
      v17 = OUTLINED_FUNCTION_272();
      v20 = v20 && v3 == v2;
      if (!v20 && (OUTLINED_FUNCTION_299(v17, v18, v19) & 1) == 0 || (v6 == v15 ? (v21 = v5 == v4) : (v21 = 0), !v21 && (OUTLINED_FUNCTION_327(), (sub_1C9064C2C() & 1) == 0) || (OUTLINED_FUNCTION_406(), swift_retain_n(), , , , , v22 = OUTLINED_FUNCTION_271(), v24 = static TypeInstance.== infix(_:_:)(v22, v23), , v6 = v42, , , , , , , , (v24 & 1) == 0) || (v42 = *(v0 + 40), v43 = *(v0 + 48), v40 = *(v13 + 40), v41 = *(v13 + 48), sub_1C8D06E80(v42, v43), v25 = OUTLINED_FUNCTION_227(), sub_1C8D06E80(v25, v26), v27 = OUTLINED_FUNCTION_271(), v15 = static ComparisonPredicate.Comparison.== infix(_:_:)(v27, v28), sub_1C8D06F08(v40, v41), sub_1C8D06F08(v42, v43), (v15 & 1) == 0) || (v29 = OUTLINED_FUNCTION_405(), (v29 & 1) == 0)))
      {
        OUTLINED_FUNCTION_20_1();
        sub_1C8D02958();
        OUTLINED_FUNCTION_134();
        sub_1C8D02958();
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_154(v29, v30, v31, v32, v33, v34);
      v35 = OUTLINED_FUNCTION_227();
      sub_1C8D06F98(v35, v36, v3, v4, v5, v37);
      v38 = OUTLINED_FUNCTION_271();
      v2 = static ContentItemClassDescriptor.Inner.== infix(_:_:)(v38, v39);
      OUTLINED_FUNCTION_20_1();
      sub_1C8D02958();
      OUTLINED_FUNCTION_134();
      sub_1C8D02958();
      OUTLINED_FUNCTION_348();
      sub_1C8D06FF4(v42, v43, v44, v45, v46);
      if (v2)
      {
        OUTLINED_FUNCTION_289();
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8CEC630()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_63_0(v9, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312930, &unk_1C9068D10);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(v11);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_64_0();
  if (!v17 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_110_0(v14);
  while (1)
  {
    OUTLINED_FUNCTION_293();
    sub_1C8D02900();
    OUTLINED_FUNCTION_127();
    sub_1C8D02900();
    OUTLINED_FUNCTION_78_1();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_151();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_24_3(v2);
    if (!v17)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3(v2 + v0);
    if (!v17)
    {
      goto LABEL_19;
    }

    v15 = OUTLINED_FUNCTION_112();
    sub_1C8CBE41C(v15, v16);
LABEL_13:
    OUTLINED_FUNCTION_301();
    OUTLINED_FUNCTION_0_7();
    v20 = sub_1C8CD23F0(&qword_1EC312920, v19, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_204(v20);
    OUTLINED_FUNCTION_190_0();
    sub_1C8D02958();
    OUTLINED_FUNCTION_200_0();
    sub_1C8D02958();
    if (v0)
    {
      OUTLINED_FUNCTION_62_2();
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_85();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_24_3(v2 + v0);
  if (!v17)
  {
    OUTLINED_FUNCTION_189();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_337();
    static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)();
    v0 = v18;
    sub_1C8D02958();
    OUTLINED_FUNCTION_253();
    sub_1C8D02958();
    sub_1C8CBE41C(v2, &qword_1EC312928);
    if ((v0 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_188();
  sub_1C8D02958();
LABEL_19:
  sub_1C8CBE41C(v2, &qword_1EC312930);
LABEL_20:
  OUTLINED_FUNCTION_187();
  sub_1C8D02958();
  OUTLINED_FUNCTION_155_1();
  sub_1C8D02958();
LABEL_21:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEC964(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1 == a2;
    if (a1 != a2)
    {
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      do
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v8 = *v4 >> 62;
        v10 = *(v5 - 1);
        v9 = *v5;
        v11 = *v5 >> 62;
        if (v3)
        {
          if (v7)
          {
            v12 = 0;
          }

          else
          {
            v12 = v6 == 0xC000000000000000;
          }

          v14 = 0;
          v13 = v12 && *v5 >> 62 == 3;
          if (v13 && !v10 && v9 == 0xC000000000000000)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v14 = 0;
          switch(v8)
          {
            case 0uLL:
              v14 = BYTE6(v6);
              break;
            case 1uLL:
              if (__OFSUB__(HIDWORD(v7), v7))
              {
                goto LABEL_89;
              }

              v14 = HIDWORD(v7) - v7;
              break;
            case 2uLL:
              v16 = *(v7 + 16);
              v15 = *(v7 + 24);
              v17 = __OFSUB__(v15, v16);
              v14 = v15 - v16;
              if (!v17)
              {
                break;
              }

              goto LABEL_90;
            case 3uLL:
              break;
            default:
              goto LABEL_107;
          }
        }

        switch(v11)
        {
          case 1uLL:
            LODWORD(v18) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
            }

            v18 = v18;
LABEL_32:
            if (v14 != v18)
            {
              return 0;
            }

            if (v14 < 1)
            {
              goto LABEL_84;
            }

            break;
          case 2uLL:
            v20 = *(v10 + 16);
            v19 = *(v10 + 24);
            v17 = __OFSUB__(v19, v20);
            v18 = v19 - v20;
            if (!v17)
            {
              goto LABEL_32;
            }

            goto LABEL_88;
          case 3uLL:
            if (v14)
            {
              return 0;
            }

            goto LABEL_84;
          default:
            v18 = BYTE6(v9);
            goto LABEL_32;
        }

        v21 = v10 >> 32;
        switch(v8)
        {
          case 1:
            if (v7 >> 32 < v7)
            {
              goto LABEL_91;
            }

            v45 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v45, v46);
            v47 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v47, v48);
            v49 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v49, v50);
            v51 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v51, v52);
            v53 = OUTLINED_FUNCTION_125();
            sub_1C8CE9144(v53, v54);
            if (!sub_1C906195C() || !__OFSUB__(v7, sub_1C906197C()))
            {
              goto LABEL_58;
            }

            goto LABEL_94;
          case 2:
            v28 = *(v7 + 16);
            v97 = *(v7 + 24);
            v29 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v29, v30);
            v31 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v31, v32);
            v33 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v33, v34);
            v35 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v35, v36);
            v37 = OUTLINED_FUNCTION_125();
            sub_1C8CE9144(v37, v38);
            if (sub_1C906195C() && __OFSUB__(v28, sub_1C906197C()))
            {
              goto LABEL_93;
            }

            if (__OFSUB__(v97, v28))
            {
              goto LABEL_92;
            }

LABEL_58:
            sub_1C906196C();
            v55 = OUTLINED_FUNCTION_151();
            sub_1C8D00A6C(v55, v56, v9, v57);
            v58 = OUTLINED_FUNCTION_93();
            sub_1C8CE7B78(v58, v59);
            v60 = OUTLINED_FUNCTION_93();
            sub_1C8CE7B78(v60, v61);
            v62 = OUTLINED_FUNCTION_125();
            sub_1C8CE7B78(v62, v63);
            v64 = __s1[0];
            v65 = OUTLINED_FUNCTION_93();
            sub_1C8CE7B78(v65, v66);
            v67 = OUTLINED_FUNCTION_93();
            sub_1C8CE7B78(v67, v68);
            if ((v64 & 1) == 0)
            {
              return 0;
            }

            break;
          case 3:
            memset(__s1, 0, 14);
            if (v11 == 2)
            {
              v69 = *(v10 + 16);
              v100 = *(v10 + 24);
              v70 = OUTLINED_FUNCTION_93();
              sub_1C8CE9144(v70, v71);
              v72 = OUTLINED_FUNCTION_125();
              sub_1C8CE9144(v72, v73);
              v74 = sub_1C906195C();
              if (v74)
              {
                v75 = sub_1C906197C();
                if (__OFSUB__(v69, v75))
                {
                  goto LABEL_99;
                }

                v74 += v69 - v75;
              }

              v17 = __OFSUB__(v100, v69);
              v76 = &v100[-v69];
              if (v17)
              {
                goto LABEL_98;
              }

              v77 = sub_1C906196C();
              if (!v74)
              {
                goto LABEL_106;
              }

LABEL_71:
              if (v77 >= v76)
              {
                v84 = v76;
              }

              else
              {
                v84 = v77;
              }

              v85 = v74;
LABEL_83:
              v87 = memcmp(__s1, v85, v84);
              v88 = OUTLINED_FUNCTION_125();
              sub_1C8CE7B78(v88, v89);
              v90 = OUTLINED_FUNCTION_93();
              sub_1C8CE7B78(v90, v91);
              if (v87)
              {
                return 0;
              }

              break;
            }

            if (v11 == 1)
            {
              if (v21 < v10)
              {
                goto LABEL_95;
              }

              v39 = OUTLINED_FUNCTION_93();
              sub_1C8CE9144(v39, v40);
              v41 = OUTLINED_FUNCTION_125();
              sub_1C8CE9144(v41, v42);
              v43 = sub_1C906195C();
              if (v43)
              {
                v98 = v43;
                v44 = sub_1C906197C();
                if (__OFSUB__(v10, v44))
                {
                  goto LABEL_102;
                }

                v99 = &v98[v10 - v44];
              }

              else
              {
                v99 = 0;
              }

              v86 = sub_1C906196C();
              v85 = v99;
              if (!v99)
              {
                goto LABEL_104;
              }

LABEL_80:
              if (v86 >= v21 - v10)
              {
                v84 = v21 - v10;
              }

              else
              {
                v84 = v86;
              }

              goto LABEL_83;
            }

LABEL_56:
            __s2 = v10;
            v103 = v9;
            v104 = BYTE2(v9);
            v105 = BYTE3(v9);
            v106 = BYTE4(v9);
            v107 = BYTE5(v9);
            if (memcmp(__s1, &__s2, BYTE6(v9)))
            {
              return 0;
            }

            break;
          default:
            LOWORD(__s1[0]) = *(v4 - 1);
            BYTE2(__s1[0]) = BYTE2(v7);
            BYTE3(__s1[0]) = BYTE3(v7);
            BYTE4(__s1[0]) = BYTE4(v7);
            BYTE5(__s1[0]) = BYTE5(v7);
            BYTE6(__s1[0]) = BYTE6(v7);
            HIBYTE(__s1[0]) = HIBYTE(v7);
            LOWORD(__s1[1]) = v6;
            BYTE2(__s1[1]) = BYTE2(v6);
            BYTE3(__s1[1]) = BYTE3(v6);
            BYTE4(__s1[1]) = BYTE4(v6);
            BYTE5(__s1[1]) = BYTE5(v6);
            if (!v11)
            {
              goto LABEL_56;
            }

            if (v11 == 1)
            {
              if (v21 < v10)
              {
                goto LABEL_96;
              }

              v22 = OUTLINED_FUNCTION_93();
              sub_1C8CE9144(v22, v23);
              v24 = OUTLINED_FUNCTION_125();
              sub_1C8CE9144(v24, v25);
              v26 = sub_1C906195C();
              if (v26)
              {
                v95 = v26;
                v27 = sub_1C906197C();
                if (__OFSUB__(v10, v27))
                {
                  goto LABEL_101;
                }

                v96 = &v95[v10 - v27];
              }

              else
              {
                v96 = 0;
              }

              v86 = sub_1C906196C();
              v85 = v96;
              if (!v96)
              {
                goto LABEL_105;
              }

              goto LABEL_80;
            }

            v78 = *(v10 + 16);
            v101 = *(v10 + 24);
            v79 = OUTLINED_FUNCTION_93();
            sub_1C8CE9144(v79, v80);
            v81 = OUTLINED_FUNCTION_125();
            sub_1C8CE9144(v81, v82);
            v74 = sub_1C906195C();
            if (v74)
            {
              v83 = sub_1C906197C();
              if (__OFSUB__(v78, v83))
              {
                goto LABEL_100;
              }

              v74 += v78 - v83;
            }

            v17 = __OFSUB__(v101, v78);
            v76 = &v101[-v78];
            if (v17)
            {
              goto LABEL_97;
            }

            v77 = sub_1C906196C();
            if (!v74)
            {
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
              v93 = OUTLINED_FUNCTION_93();
              sub_1C8CE7B78(v93, v94);

              __break(1u);
LABEL_107:
              JUMPOUT(0);
            }

            goto LABEL_71;
        }

LABEL_84:
        v4 += 2;
        v5 += 2;
        v3 = --v2 == 0;
      }

      while (v2);
    }
  }

  return 1;
}

void sub_1C8CECF90()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312910, &qword_1C9074DC0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_63_0(v9, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312918, &qword_1C9068D00);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1(v11);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_64_0();
  if (!v17 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_110_0(v14);
  while (1)
  {
    OUTLINED_FUNCTION_293();
    sub_1C8D02900();
    OUTLINED_FUNCTION_127();
    sub_1C8D02900();
    OUTLINED_FUNCTION_78_1();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_151();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_24_3(v2);
    if (!v17)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3(v2 + v0);
    if (!v17)
    {
      goto LABEL_19;
    }

    v15 = OUTLINED_FUNCTION_112();
    sub_1C8CBE41C(v15, v16);
LABEL_13:
    OUTLINED_FUNCTION_301();
    OUTLINED_FUNCTION_0_7();
    v21 = sub_1C8CD23F0(&qword_1EC312920, v20, MEMORY[0x1E69AAC10]);
    v0 = OUTLINED_FUNCTION_204(v21);
    sub_1C8D02958();
    OUTLINED_FUNCTION_200_0();
    sub_1C8D02958();
    if (v0)
    {
      OUTLINED_FUNCTION_62_2();
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_85();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_24_3(v2 + v0);
  if (!v17)
  {
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_337();
    static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)();
    v19 = v18;
    sub_1C8D02958();
    OUTLINED_FUNCTION_253();
    sub_1C8D02958();
    sub_1C8CBE41C(v2, &qword_1EC312910);
    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_231();
  sub_1C8D02958();
LABEL_19:
  sub_1C8CBE41C(v2, &qword_1EC312918);
LABEL_20:
  sub_1C8D02958();
  OUTLINED_FUNCTION_155_1();
  sub_1C8D02958();
LABEL_21:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CED2F0()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_143();
  type metadata accessor for ToolKitProtoToolSummaryString.Component(v5);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_218();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_87();
  v8 = *(v1 + 16);
  if (v8 != *(v4 + 16) || !v8 || v1 == v4)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_28_0();
  v10 = v1 + v9;
  OUTLINED_FUNCTION_255();
  v57 = v11;
  while (1)
  {
    OUTLINED_FUNCTION_212();
    sub_1C8D02900();
    sub_1C8D02900();
    v13 = *v0;
    v12 = v0[1];
    v14 = *(v0 + 16);
    v15 = *v58;
    v16 = v58[1];
    v17 = *(v58 + 16);
    if (v14 == 255)
    {
      if (v17 != 255)
      {
LABEL_30:
        v46 = OUTLINED_FUNCTION_39_1();
        sub_1C8D06DF8(v46, v47, v48);
        v49 = OUTLINED_FUNCTION_118();
        v51 = v17;
        goto LABEL_33;
      }

      v22 = OUTLINED_FUNCTION_107();
      sub_1C8D06DE0(v22, v23, 255);
      v24 = OUTLINED_FUNCTION_118();
      sub_1C8D06DE0(v24, v25, 255);
      goto LABEL_25;
    }

    if (v17 == 255)
    {
      goto LABEL_30;
    }

    if (v14)
    {
      if ((v17 & 1) == 0)
      {
        break;
      }

      if (v13 == v15 && v12 == v16)
      {
LABEL_24:
        v33 = OUTLINED_FUNCTION_40_1();
        sub_1C8D06DE0(v33, v34, v35);
        v36 = OUTLINED_FUNCTION_107();
        sub_1C8D06DE0(v36, v37, v17);
        v38 = OUTLINED_FUNCTION_40_1();
        sub_1C8D06DE0(v38, v39, v40);
        OUTLINED_FUNCTION_107();
        j__OUTLINED_FUNCTION_265();
        OUTLINED_FUNCTION_107();
        j__OUTLINED_FUNCTION_265();
      }

      else
      {
        OUTLINED_FUNCTION_107();
        OUTLINED_FUNCTION_376();
        v55 = sub_1C9064C2C();
        v19 = OUTLINED_FUNCTION_39_1();
        sub_1C8D06DE0(v19, v20, v21);
        OUTLINED_FUNCTION_107();
        j__OUTLINED_FUNCTION_265();
        OUTLINED_FUNCTION_118();
        j__OUTLINED_FUNCTION_265();
        if ((v55 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

LABEL_25:
      v41 = OUTLINED_FUNCTION_40_1();
      sub_1C8D06DF8(v41, v42, v43);
      goto LABEL_26;
    }

    if (v17)
    {
      break;
    }

    if (v13 == v15 && v12 == v16)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_376();
    v56 = sub_1C9064C2C();
    v27 = OUTLINED_FUNCTION_39_1();
    sub_1C8D06DE0(v27, v28, v29);
    OUTLINED_FUNCTION_107();
    j__OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_118();
    j__OUTLINED_FUNCTION_265();
    v30 = OUTLINED_FUNCTION_40_1();
    sub_1C8D06DF8(v30, v31, v32);
    if ((v56 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_26:
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v44, MEMORY[0x1E69AAC10]);
    v45 = sub_1C9063EAC();
    sub_1C8D02958();
    OUTLINED_FUNCTION_249();
    sub_1C8D02958();
    if (v45)
    {
      v2 += v57;
      v10 += v57;
      if (--v8)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  v52 = OUTLINED_FUNCTION_39_1();
  sub_1C8D06DE0(v52, v53, v54);
  OUTLINED_FUNCTION_107();
  j__OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_118();
  j__OUTLINED_FUNCTION_265();
LABEL_32:
  v49 = OUTLINED_FUNCTION_40_1();
LABEL_33:
  sub_1C8D06DF8(v49, v50, v51);
LABEL_34:
  sub_1C8D02958();
  OUTLINED_FUNCTION_206();
  sub_1C8D02958();
LABEL_35:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CED6A4()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_83_1();
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(v5);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_178();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_103_1();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_17();
    while (1)
    {
      OUTLINED_FUNCTION_112();
      sub_1C8D02900();
      OUTLINED_FUNCTION_398();
      sub_1C8D02900();
      v8 = *v2 == *v1 && v2[1] == v1[1];
      if (!v8 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      v10 = sub_1C8CD23F0(&qword_1EC312920, v9, MEMORY[0x1E69AAC10]);
      v11 = OUTLINED_FUNCTION_280(v10);
      sub_1C8D02958();
      OUTLINED_FUNCTION_268();
      sub_1C8D02958();
      if (v11)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_93();
    sub_1C8D02958();
  }

LABEL_17:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CED86C()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  type metadata accessor for ToolKitProtoRuntimeRequirementKind(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_63_0(v9, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A80, &qword_1C9068E60);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoRuntimeRequirement(v11);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_64_0();
  if (!v17 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_110_0(v14);
  while (1)
  {
    OUTLINED_FUNCTION_293();
    sub_1C8D02900();
    OUTLINED_FUNCTION_127();
    sub_1C8D02900();
    OUTLINED_FUNCTION_78_1();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_151();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_24_3(v2);
    if (!v17)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3(v2 + v0);
    if (!v17)
    {
      goto LABEL_19;
    }

    v15 = OUTLINED_FUNCTION_112();
    sub_1C8CBE41C(v15, v16);
LABEL_13:
    OUTLINED_FUNCTION_301();
    OUTLINED_FUNCTION_0_7();
    v21 = sub_1C8CD23F0(&qword_1EC312920, v20, MEMORY[0x1E69AAC10]);
    v0 = OUTLINED_FUNCTION_204(v21);
    sub_1C8D02958();
    OUTLINED_FUNCTION_200_0();
    sub_1C8D02958();
    if (v0)
    {
      OUTLINED_FUNCTION_62_2();
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_85();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_24_3(v2 + v0);
  if (!v17)
  {
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_337();
    static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)();
    v19 = v18;
    sub_1C8D02958();
    OUTLINED_FUNCTION_253();
    sub_1C8D02958();
    sub_1C8CBE41C(v2, &qword_1EC312A78);
    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_231();
  sub_1C8D02958();
LABEL_19:
  sub_1C8CBE41C(v2, &qword_1EC312A80);
LABEL_20:
  sub_1C8D02958();
  OUTLINED_FUNCTION_155_1();
  sub_1C8D02958();
LABEL_21:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEDBCC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_8_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_2_3();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_1C9069088[v5];
    v9 = qword_1C9069088[v7];
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C8CEDC30()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_83_1();
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(v4);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_178();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_232();
  v7 = *(v3 + 16);
  if (v7 == *(v0 + 16) && v7 && v3 != v0)
  {
    v8 = 0;
    OUTLINED_FUNCTION_28_0();
    while (1)
    {
      sub_1C8D02900();
      if (v8 == v7)
      {
        break;
      }

      sub_1C8D02900();
      v9 = *v2;
      v10 = *v1;
      v11 = *(*v2 + 16);
      if (v11 != *(*v1 + 16))
      {
        goto LABEL_42;
      }

      if (v11)
      {
        v12 = v9 == v10;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = (v9 + 40);
        v14 = (v10 + 40);
        while (v11)
        {
          v15 = *(v13 - 1) == *(v14 - 1) && *v13 == *v14;
          if (!v15 && (sub_1C9064C2C() & 1) == 0)
          {
            goto LABEL_42;
          }

          v13 += 2;
          v14 += 2;
          if (!--v11)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
        break;
      }

LABEL_19:
      v16 = v2[3];
      v17 = v1[3];
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_42;
        }

        v18 = v2[2] == v1[2] && v16 == v17;
        if (!v18 && (sub_1C9064C2C() & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (v17)
      {
        goto LABEL_42;
      }

      v19 = v2[1];
      v20 = v1[1];
      v21 = *(v19 + 16);
      if (v21 != *(v20 + 16))
      {
        goto LABEL_42;
      }

      if (v21 && v19 != v20)
      {
        v22 = (v19 + 40);
        v23 = (v20 + 40);
        while (1)
        {
          v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
          if (!v24 && (sub_1C9064C2C() & 1) == 0)
          {
            break;
          }

          v22 += 2;
          v23 += 2;
          if (!--v21)
          {
            goto LABEL_38;
          }
        }

LABEL_42:
        sub_1C8D02958();
        OUTLINED_FUNCTION_93();
        sub_1C8D02958();
        goto LABEL_43;
      }

LABEL_38:
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v25, MEMORY[0x1E69AAC10]);
      v26 = sub_1C9063EAC();
      sub_1C8D02958();
      OUTLINED_FUNCTION_287();
      sub_1C8D02958();
      if ((v26 & 1) != 0 && ++v8 != v7)
      {
        continue;
      }

      goto LABEL_43;
    }

    __break(1u);
  }

  else
  {
LABEL_43:
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8CEDF1C()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  type metadata accessor for ToolKitProtoSystemToolProtocolKind(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_63_0(v9, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312950, &qword_1C9068D30);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoSystemToolProtocol(v11);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_64_0();
  if (!v17 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_110_0(v14);
  while (1)
  {
    OUTLINED_FUNCTION_293();
    sub_1C8D02900();
    OUTLINED_FUNCTION_127();
    sub_1C8D02900();
    OUTLINED_FUNCTION_78_1();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_151();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_24_3(v2);
    if (!v17)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3(v2 + v0);
    if (!v17)
    {
      goto LABEL_19;
    }

    v15 = OUTLINED_FUNCTION_112();
    sub_1C8CBE41C(v15, v16);
LABEL_13:
    OUTLINED_FUNCTION_301();
    OUTLINED_FUNCTION_0_7();
    v21 = sub_1C8CD23F0(&qword_1EC312920, v20, MEMORY[0x1E69AAC10]);
    v0 = OUTLINED_FUNCTION_204(v21);
    sub_1C8D02958();
    OUTLINED_FUNCTION_200_0();
    sub_1C8D02958();
    if (v0)
    {
      OUTLINED_FUNCTION_62_2();
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_85();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_24_3(v2 + v0);
  if (!v17)
  {
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_337();
    static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)();
    v19 = v18;
    sub_1C8D02958();
    OUTLINED_FUNCTION_253();
    sub_1C8D02958();
    sub_1C8CBE41C(v2, &qword_1EC312948);
    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_231();
  sub_1C8D02958();
LABEL_19:
  sub_1C8CBE41C(v2, &qword_1EC312950);
LABEL_20:
  sub_1C8D02958();
  OUTLINED_FUNCTION_155_1();
  sub_1C8D02958();
LABEL_21:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEE2D0()
{
  OUTLINED_FUNCTION_164();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_143();
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(v6);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312930, &unk_1C9068D10);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_97();
  v46 = v12;
  v13 = OUTLINED_FUNCTION_111();
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(v13);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312938, &unk_1C9074EC0);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312940, &qword_1C9068D20);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_109_0();
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(v20);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_306();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_87();
  v23 = *(v1 + 16);
  if (v23 == *(v5 + 16) && v23 && v1 != v5)
  {
    v41 = v3;
    v42 = v7;
    OUTLINED_FUNCTION_28_0();
    v25 = v1 + v24;
    v26 = v5 + v24;
    v43 = *(v27 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_100();
      sub_1C8D02900();
      OUTLINED_FUNCTION_203();
      sub_1C8D02900();
      v28 = *v0 == *v2 && v0[1] == v2[1];
      if (!v28 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v29 = *(v45 + 48);
      sub_1C8CC1D3C();
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_108_2(v3, 1, v14);
      if (v28)
      {
        OUTLINED_FUNCTION_108_2(v3 + v29, 1, v14);
        if (!v28)
        {
          goto LABEL_29;
        }

        sub_1C8CBE41C(v3, &qword_1EC312938);
      }

      else
      {
        sub_1C8CC1D3C();
        OUTLINED_FUNCTION_108_2(v3 + v29, 1, v14);
        if (v30)
        {
          sub_1C8D02958();
LABEL_29:
          v39 = &qword_1EC312940;
          goto LABEL_33;
        }

        sub_1C8D04DE8();
        v31 = *(v44 + 48);
        sub_1C8CC1D3C();
        OUTLINED_FUNCTION_366();
        sub_1C8CC1D3C();
        v32 = OUTLINED_FUNCTION_230();
        OUTLINED_FUNCTION_108_2(v32, v33, v42);
        if (v28)
        {
          OUTLINED_FUNCTION_108_2(v46 + v31, 1, v42);
          v3 = v41;
          if (!v28)
          {
            goto LABEL_31;
          }

          sub_1C8CBE41C(v46, &qword_1EC312928);
        }

        else
        {
          OUTLINED_FUNCTION_366();
          sub_1C8CC1D3C();
          OUTLINED_FUNCTION_108_2(v46 + v31, 1, v42);
          if (v34)
          {
            OUTLINED_FUNCTION_188();
            sub_1C8D02958();
            v3 = v41;
LABEL_31:
            sub_1C8CBE41C(v46, &qword_1EC312930);
LABEL_32:
            OUTLINED_FUNCTION_187();
            sub_1C8D02958();
            sub_1C8D02958();
            v39 = &qword_1EC312938;
LABEL_33:
            sub_1C8CBE41C(v3, v39);
            break;
          }

          OUTLINED_FUNCTION_189();
          LOBYTE(v31) = v46;
          sub_1C8D04DE8();
          static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)();
          v40 = v35;
          sub_1C8D02958();
          sub_1C8D02958();
          sub_1C8CBE41C(v46, &qword_1EC312928);
          v3 = v41;
          if ((v40 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        sub_1C90637EC();
        OUTLINED_FUNCTION_0_7();
        sub_1C8CD23F0(&qword_1EC312920, v36, MEMORY[0x1E69AAC10]);
        sub_1C9063EAC();
        OUTLINED_FUNCTION_190_0();
        sub_1C8D02958();
        sub_1C8D02958();
        sub_1C8CBE41C(v3, &qword_1EC312938);
        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v37, MEMORY[0x1E69AAC10]);
      v38 = sub_1C9063EAC();
      sub_1C8D02958();
      OUTLINED_FUNCTION_330();
      sub_1C8D02958();
      if (v38)
      {
        v26 += v43;
        v25 += v43;
        if (--v23)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_134();
    sub_1C8D02958();
  }

LABEL_35:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEE988(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_8_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_2_3();
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

void sub_1C8CEE9DC()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_83_1();
  type metadata accessor for ToolKitProtoTypedValue(v4);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_310();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_103_1();
  if (v7 && v3 && v1 != v0)
  {
    OUTLINED_FUNCTION_17();
    while (1)
    {
      OUTLINED_FUNCTION_212();
      sub_1C8D02900();
      OUTLINED_FUNCTION_336();
      sub_1C8D02900();
      OUTLINED_FUNCTION_309();
      if (v7)
      {
        OUTLINED_FUNCTION_308_0();
        goto LABEL_17;
      }

      if ((~v2 & 0xF000000000000007) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_323();
      static ToolKitProtoTypedValueKind.== infix(_:_:)();
      OUTLINED_FUNCTION_347_1();
      OUTLINED_FUNCTION_361();
      sub_1C8CD0FB0(v0);
      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      v9 = sub_1C8CD23F0(&qword_1EC312920, v8, MEMORY[0x1E69AAC10]);
      v0 = OUTLINED_FUNCTION_281(v9);
      v2 = type metadata accessor for ToolKitProtoTypedValue;
      sub_1C8D02958();
      OUTLINED_FUNCTION_330();
      sub_1C8D02958();
      if (v0)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v7)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_105();

LABEL_17:
    sub_1C8CD0FB0(v0);
    sub_1C8CD0FB0(v2);
LABEL_18:
    sub_1C8D02958();
    OUTLINED_FUNCTION_206();
    sub_1C8D02958();
  }

LABEL_19:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEEBF0()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_304();
  v30 = type metadata accessor for ToolKitProtoTypeInstance(v5);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_269_0(v10);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_72();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_306();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_234();
  v14 = *(v4 + 16);
  if (v14 == *(v0 + 16) && v14 && v4 != v0)
  {
    OUTLINED_FUNCTION_28_0();
    while (1)
    {
      OUTLINED_FUNCTION_381();
      sub_1C8D02900();
      sub_1C8D02900();
      v15 = *v3 == *v2 && v3[1] == v2[1];
      if (!v15 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v16 = v3[2] == v2[2] && v3[3] == v2[3];
      if (!v16 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v17 = *(v29 + 48);
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_360();
      OUTLINED_FUNCTION_108_2(v1, 1, v30);
      if (v15)
      {
        OUTLINED_FUNCTION_108_2(v1 + v17, 1, v30);
        if (!v15)
        {
          goto LABEL_33;
        }

        sub_1C8CBE41C(v1, &qword_1EC312A58);
      }

      else
      {
        OUTLINED_FUNCTION_360();
        OUTLINED_FUNCTION_108_2(v1 + v17, 1, v30);
        if (v18)
        {
          OUTLINED_FUNCTION_169();
          sub_1C8D02958();
LABEL_33:
          v27 = &qword_1EC312A60;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_172();
        sub_1C8D04DE8();
        v19 = *v31;
        v20 = *v28;
        if ((~*v31 & 0xF000000000000007) != 0)
        {
          if ((~v20 & 0xF000000000000007) == 0)
          {
            sub_1C8CD1784(v19);
            sub_1C8CD1784(v20);
            sub_1C8CD1784(v19);

LABEL_35:
            sub_1C8CD0FB0(v19);
            sub_1C8CD0FB0(v20);
LABEL_36:
            sub_1C8D02958();
            sub_1C8D02958();
            v27 = &qword_1EC312A58;
LABEL_37:
            sub_1C8CBE41C(v1, v27);
            break;
          }

          sub_1C8CD1784(v19);
          sub_1C8CD1784(v20);
          sub_1C8CD1784(v19);
          OUTLINED_FUNCTION_323();
          static ToolKitProtoTypeInstanceKind.== infix(_:_:)();
          v22 = v21;

          OUTLINED_FUNCTION_361();
          sub_1C8CD0FB0(v19);
          if ((v22 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1C8CD1784(v19);
          sub_1C8CD1784(v20);
          if ((~v20 & 0xF000000000000007) != 0)
          {
            goto LABEL_35;
          }

          sub_1C8CD0FB0(v19);
        }

        sub_1C90637EC();
        OUTLINED_FUNCTION_0_7();
        sub_1C8CD23F0(&qword_1EC312920, v23, MEMORY[0x1E69AAC10]);
        v24 = sub_1C9063EAC();
        OUTLINED_FUNCTION_52_2();
        sub_1C8D02958();
        OUTLINED_FUNCTION_254();
        sub_1C8D02958();
        sub_1C8CBE41C(v1, &qword_1EC312A58);
        if ((v24 & 1) == 0)
        {
          break;
        }
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v25, MEMORY[0x1E69AAC10]);
      v26 = sub_1C9063EAC();
      sub_1C8D02958();
      OUTLINED_FUNCTION_378();
      sub_1C8D02958();
      if (v26)
      {
        OUTLINED_FUNCTION_370();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_274_0();
    sub_1C8D02958();
  }

LABEL_39:
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEF13C()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  v30 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_63_0(v10, v30);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_35();
  v32 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(v12);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_218();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v30 - v15);
  v17 = *(v1 + 16);
  if (v17 == *(v0 + 16) && v17 && v1 != v0)
  {
    v33 = v2;
    v34 = v5;
    OUTLINED_FUNCTION_28_0();
    v19 = v1 + v18;
    OUTLINED_FUNCTION_255();
    v31 = v20;
    while (1)
    {
      OUTLINED_FUNCTION_293();
      sub_1C8D02900();
      v21 = v36;
      sub_1C8D02900();
      v22 = *v16 == *v21 && v16[1] == v21[1];
      if (!v22 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v23 = *(v35 + 48);
      v24 = v33;
      OUTLINED_FUNCTION_360();
      OUTLINED_FUNCTION_360();
      OUTLINED_FUNCTION_108_2(v24, 1, v34);
      if (v22)
      {
        OUTLINED_FUNCTION_92_0(v24 + v23);
        if (!v22)
        {
          goto LABEL_22;
        }

        sub_1C8CBE41C(v24, &qword_1EC312A48);
      }

      else
      {
        OUTLINED_FUNCTION_360();
        OUTLINED_FUNCTION_92_0(v24 + v23);
        if (v25)
        {
          OUTLINED_FUNCTION_49_0();
          sub_1C8D02958();
LABEL_22:
          sub_1C8CBE41C(v24, &qword_1EC312A50);
          break;
        }

        sub_1C8D04DE8();
        OUTLINED_FUNCTION_382();
        static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
        v27 = v26;
        sub_1C8D02958();
        sub_1C8D02958();
        sub_1C8CBE41C(v24, &qword_1EC312A48);
        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v28, MEMORY[0x1E69AAC10]);
      v29 = sub_1C9063EAC();
      sub_1C8D02958();
      OUTLINED_FUNCTION_200_0();
      sub_1C8D02958();
      if (v29)
      {
        v3 += v31;
        v19 += v31;
        if (--v17)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_155_1();
    sub_1C8D02958();
  }

LABEL_24:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEF5F0()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_143();
  type metadata accessor for ToolKitProtoSystemTypeProtocolKind(v5);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A68, &qword_1C9074DB0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_63_0(v10, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A70, &qword_1C9068E50);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_201();
  type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_234();
  v14 = *(v1 + 16);
  if (v14 == *(v4 + 16) && v14 && v1 != v4)
  {
    OUTLINED_FUNCTION_28_0();
    v16 = v1 + v15;
    OUTLINED_FUNCTION_255();
    v25 = v17;
    while (1)
    {
      OUTLINED_FUNCTION_381();
      sub_1C8D02900();
      OUTLINED_FUNCTION_300();
      sub_1C8D02900();
      v18 = *(v26 + 48);
      sub_1C8CC1D3C();
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_24_3(v0);
      if (v19)
      {
        OUTLINED_FUNCTION_24_3(v0 + v18);
        if (!v19)
        {
          OUTLINED_FUNCTION_167();
          sub_1C8D02958();
          OUTLINED_FUNCTION_274_0();
LABEL_17:
          sub_1C8D02958();
          sub_1C8CBE41C(v0, &qword_1EC312A70);
          break;
        }

        sub_1C8CBE41C(v0, &qword_1EC312A68);
      }

      else
      {
        OUTLINED_FUNCTION_134();
        sub_1C8CC1D3C();
        OUTLINED_FUNCTION_24_3(v0 + v18);
        if (v19)
        {
          sub_1C8D02958();
          OUTLINED_FUNCTION_378();
          sub_1C8D02958();
          OUTLINED_FUNCTION_231();
          goto LABEL_17;
        }

        sub_1C8D04DE8();
        OUTLINED_FUNCTION_337();
        static ToolKitProtoSystemTypeProtocolKind.== infix(_:_:)();
        v21 = v20;
        sub_1C8D02958();
        OUTLINED_FUNCTION_117();
        sub_1C8D02958();
        sub_1C8CBE41C(v0, &qword_1EC312A68);
        if ((v21 & 1) == 0)
        {
          OUTLINED_FUNCTION_167();
          sub_1C8D02958();
          OUTLINED_FUNCTION_274_0();
          sub_1C8D02958();
          break;
        }
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v22, MEMORY[0x1E69AAC10]);
      v23 = sub_1C9063EAC();
      sub_1C8D02958();
      sub_1C8D02958();
      if (v23)
      {
        v2 += v25;
        v16 += v25;
        if (--v14)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEFA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1C8CEFA7C()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_304();
  v5 = type metadata accessor for ToolKitProtoTypeInstance(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_269_0(v10);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_142();
  v34 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  v16 = *(v3 + 16);
  if (v16 != *(v1 + 16) || !v16 || v3 == v1)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_28_0();
  v28[1] = *(v17 + 72);
  v29 = v15;
  v30 = v5;
  while (1)
  {
    OUTLINED_FUNCTION_327();
    sub_1C8D02900();
    OUTLINED_FUNCTION_114();
    sub_1C8D02900();
    if (*v15 != *v2)
    {
      goto LABEL_28;
    }

    v18 = *(v32 + 48);
    OUTLINED_FUNCTION_244();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_244();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_92_0(v0);
    if (!v19)
    {
      break;
    }

    OUTLINED_FUNCTION_92_0(v0 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_165();
      sub_1C8D02958();
LABEL_24:
      sub_1C8D02958();
      sub_1C8CBE41C(v0, &qword_1EC312A60);
      goto LABEL_29;
    }

    sub_1C8CBE41C(v0, &qword_1EC312A58);
    v15 = v29;
LABEL_18:
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v26, MEMORY[0x1E69AAC10]);
    v27 = sub_1C9063EAC();
    sub_1C8D02958();
    sub_1C8D02958();
    if (v27)
    {
      OUTLINED_FUNCTION_370();
      if (!v19)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_244();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_92_0(v0 + v18);
  if (v19)
  {
    OUTLINED_FUNCTION_165();
    sub_1C8D02958();
    sub_1C8D02958();
    OUTLINED_FUNCTION_169();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_172();
  v20 = v31;
  sub_1C8D04DE8();
  v21 = *v33;
  v22 = *v20;
  if ((~*v33 & 0xF000000000000007) == 0)
  {
    v28[0] = ~v22 & 0xF000000000000007;
    sub_1C8CD1784(v21);
    sub_1C8CD1784(v22);
    if (v28[0])
    {
      goto LABEL_26;
    }

    sub_1C8CD0FB0(v21);
    goto LABEL_17;
  }

  v36 = *v33;
  if ((~v22 & 0xF000000000000007) != 0)
  {
    v35 = v22;
    sub_1C8CD1784(v21);
    sub_1C8CD1784(v22);
    sub_1C8CD1784(v21);
    OUTLINED_FUNCTION_323();
    static ToolKitProtoTypeInstanceKind.== infix(_:_:)();
    v24 = v23;

    OUTLINED_FUNCTION_361();
    sub_1C8CD0FB0(v21);
    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v25, MEMORY[0x1E69AAC10]);
    sub_1C9063EAC();
    OUTLINED_FUNCTION_191_1();
    sub_1C8D02958();
    OUTLINED_FUNCTION_278();
    sub_1C8D02958();
    sub_1C8CBE41C(v0, &qword_1EC312A58);
    v15 = v29;
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  sub_1C8CD1784(v21);
  sub_1C8CD1784(v22);
  sub_1C8CD1784(v21);

LABEL_26:
  sub_1C8CD0FB0(v21);
  sub_1C8CD0FB0(v22);
LABEL_27:
  OUTLINED_FUNCTION_52_2();
  sub_1C8D02958();
  sub_1C8D02958();
  sub_1C8CBE41C(v0, &qword_1EC312A58);
LABEL_28:
  sub_1C8D02958();
  OUTLINED_FUNCTION_130_1();
  sub_1C8D02958();
LABEL_29:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEFFC8()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_83_1();
  type metadata accessor for ToolKitProtoTypeInstance(v4);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_310();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_103_1();
  if (v7 && v3 && v1 != v0)
  {
    OUTLINED_FUNCTION_17();
    while (1)
    {
      OUTLINED_FUNCTION_212();
      sub_1C8D02900();
      OUTLINED_FUNCTION_336();
      sub_1C8D02900();
      OUTLINED_FUNCTION_309();
      if (v7)
      {
        OUTLINED_FUNCTION_308_0();
        goto LABEL_17;
      }

      if ((~v2 & 0xF000000000000007) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_323();
      static ToolKitProtoTypeInstanceKind.== infix(_:_:)();
      OUTLINED_FUNCTION_347_1();
      OUTLINED_FUNCTION_361();
      sub_1C8CD0FB0(v0);
      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      v9 = sub_1C8CD23F0(&qword_1EC312920, v8, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_281(v9);
      OUTLINED_FUNCTION_191_1();
      v2 = v10;
      sub_1C8D02958();
      OUTLINED_FUNCTION_330();
      sub_1C8D02958();
      if (v0)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v7)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_105();

LABEL_17:
    sub_1C8CD0FB0(v0);
    sub_1C8CD0FB0(v2);
LABEL_18:
    OUTLINED_FUNCTION_52_2();
    sub_1C8D02958();
    OUTLINED_FUNCTION_206();
    sub_1C8D02958();
  }

LABEL_19:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CF01BC()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_83_1();
  type metadata accessor for ToolKitProtoRestrictionContext(v4);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_310();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_103_1();
  if (v7 && v3 && v1 != v0)
  {
    OUTLINED_FUNCTION_17();
    while (1)
    {
      OUTLINED_FUNCTION_212();
      sub_1C8D02900();
      OUTLINED_FUNCTION_336();
      sub_1C8D02900();
      OUTLINED_FUNCTION_309();
      if (v7)
      {
        OUTLINED_FUNCTION_308_0();
        goto LABEL_17;
      }

      if ((~v2 & 0xF000000000000007) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_323();
      static ToolKitProtoRestrictionContextKind.== infix(_:_:)();
      OUTLINED_FUNCTION_347_1();
      OUTLINED_FUNCTION_361();
      sub_1C8CD0FB0(v0);
      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      v9 = sub_1C8CD23F0(&qword_1EC312920, v8, MEMORY[0x1E69AAC10]);
      v0 = OUTLINED_FUNCTION_281(v9);
      v2 = type metadata accessor for ToolKitProtoRestrictionContext;
      sub_1C8D02958();
      OUTLINED_FUNCTION_330();
      sub_1C8D02958();
      if (v0)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v7)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_105();

LABEL_17:
    sub_1C8CD0FB0(v0);
    sub_1C8CD0FB0(v2);
LABEL_18:
    sub_1C8D02958();
    OUTLINED_FUNCTION_206();
    sub_1C8D02958();
  }

LABEL_19:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CF0478()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_2();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v5 + 16);
  if (v9 == *(v3 + 16) && v9 && v5 != v3)
  {
    OUTLINED_FUNCTION_28_0();
    v11 = v5 + v10;
    v12 = v3 + v10;
    v14 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_125();
      sub_1C8D02900();
      sub_1C8D02900();
      v15 = OUTLINED_FUNCTION_112();
      v16 = v1(v15);
      OUTLINED_FUNCTION_93();
      sub_1C8D02958();
      OUTLINED_FUNCTION_148();
      sub_1C8D02958();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v12 += v14;
      v11 += v14;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_163();
}

void sub_1C8CF05E8()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_83_1();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(v5);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_178();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_103_1();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_17();
    while (1)
    {
      OUTLINED_FUNCTION_112();
      sub_1C8D02900();
      OUTLINED_FUNCTION_398();
      sub_1C8D02900();
      if (*v2 != *v1 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      v10 = sub_1C8CD23F0(&qword_1EC312920, v9, MEMORY[0x1E69AAC10]);
      v11 = OUTLINED_FUNCTION_280(v10);
      sub_1C8D02958();
      OUTLINED_FUNCTION_268();
      sub_1C8D02958();
      if (v11)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_93();
    sub_1C8D02958();
  }

LABEL_14:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CF07B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_8_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_2_3();
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

void sub_1C8CF0804()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_83_1();
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(v5);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_178();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_103_1();
  if (v8 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_17();
    while (1)
    {
      OUTLINED_FUNCTION_112();
      sub_1C8D02900();
      OUTLINED_FUNCTION_398();
      sub_1C8D02900();
      if (*v2 != *v1)
      {
        break;
      }

      v9 = v2[1];
      v10 = v1[1];
      if (v9 == 2)
      {
        if (v10 != 2)
        {
          break;
        }
      }

      else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
      {
        break;
      }

      v11 = v1[16];
      if (v2[16])
      {
        if (!v1[16])
        {
          break;
        }
      }

      else
      {
        if (*(v2 + 1) != *(v1 + 1))
        {
          v11 = 1;
        }

        if (v11)
        {
          break;
        }
      }

      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      v13 = sub_1C8CD23F0(&qword_1EC312920, v12, MEMORY[0x1E69AAC10]);
      v14 = OUTLINED_FUNCTION_280(v13);
      sub_1C8D02958();
      OUTLINED_FUNCTION_268();
      sub_1C8D02958();
      if (v14)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_93();
    sub_1C8D02958();
  }

LABEL_24:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CF0A10()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for ToolKitProtoLinkSnapshot(v5);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v8 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  v78 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v79 = v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129E0, &unk_1C9068DC0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v83 = v15;
  v16 = OUTLINED_FUNCTION_111();
  v84 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v16);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_0();
  v19 = v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129E8, &qword_1C909DFE0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_97();
  v89 = v21;
  v22 = OUTLINED_FUNCTION_111();
  v23 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(v22);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v82 = v25;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_216();
  v85 = v27;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_243(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  OUTLINED_FUNCTION_9(v30);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v92 = v32;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F8, &qword_1C9068DD8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_109_0();
  v91 = type metadata accessor for ToolKitProtoChangeset.Provenance(v34);
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_27_2();
  v90 = v36 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v75 - v39;
  v41 = *(v0 + 16);
  if (v41 != *(v4 + 16) || !v41 || v0 == v4)
  {
    goto LABEL_53;
  }

  v76 = v8;
  v75[2] = v1;
  v75[1] = v6;
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_255();
  v88 = v43;
  v80 = v40;
  v77 = v19;
  v86 = v23;
  while (1)
  {
    v94 = v42;
    sub_1C8D02900();
    v95 = v41;
    OUTLINED_FUNCTION_278();
    sub_1C8D02900();
    v44 = *(v93 + 48);
    OUTLINED_FUNCTION_325();
    sub_1C8CC1D3C();
    sub_1C8CC1D3C();
    v45 = OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_108_2(v45, v46, v23);
    if (!v48)
    {
      break;
    }

    OUTLINED_FUNCTION_108_2(v2 + v44, 1, v23);
    v47 = v95;
    if (!v48)
    {
      goto LABEL_42;
    }

LABEL_37:
    sub_1C8CBE41C(v2, &qword_1EC3129F0);
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v72, MEMORY[0x1E69AAC10]);
    v73 = sub_1C9063EAC();
    sub_1C8D02958();
    sub_1C8D02958();
    if (v73)
    {
      v8 += v88;
      v42 = v94 + v88;
      v41 = v47 - 1;
      if (v41)
      {
        continue;
      }
    }

    goto LABEL_53;
  }

  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v2 + v44, 1, v23);
  if (!v48)
  {
    sub_1C8D04DE8();
    v23 = v86;
    v49 = v89;
    sub_1C8D02900();
    OUTLINED_FUNCTION_322();
    sub_1C8D02900();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v47 = v95;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_152();
        v58 = v49;
        sub_1C8D02900();
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1C8D02958();
          goto LABEL_46;
        }

        sub_1C8D04DE8();
        sub_1C8F56D1C();
        if (v59)
        {
          sub_1C90637EC();
          OUTLINED_FUNCTION_0_7();
          v61 = sub_1C8CD23F0(&qword_1EC312920, v60, MEMORY[0x1E69AAC10]);
          if (OUTLINED_FUNCTION_407(v61))
          {
            sub_1C8D02958();
            OUTLINED_FUNCTION_254();
            sub_1C8D02958();
            v23 = v86;
            goto LABEL_36;
          }
        }

        sub_1C8D02958();
        OUTLINED_FUNCTION_148();
        sub_1C8D02958();
        OUTLINED_FUNCTION_57_2();
        sub_1C8D02958();
        goto LABEL_51;
      case 2:
        v57 = swift_getEnumCaseMultiPayload() == 2;
        goto LABEL_20;
      case 3:
        v57 = swift_getEnumCaseMultiPayload() == 3;
LABEL_20:
        v58 = v49;
        if (!v57)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      default:
        OUTLINED_FUNCTION_152();
        sub_1C8D02900();
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1C8D02958();
          v58 = v49;
LABEL_46:
          sub_1C8CBE41C(v58, &qword_1EC3129E8);
        }

        else
        {
          sub_1C8D04DE8();
          sub_1C8F57AC8();
          if ((v51 & 1) == 0)
          {
            goto LABEL_50;
          }

          v75[3] = *(v81 + 48);
          v52 = v83;
          sub_1C8CC1D3C();
          OUTLINED_FUNCTION_376();
          sub_1C8CC1D3C();
          v53 = v76;
          OUTLINED_FUNCTION_108_2(v52, 1, v76);
          if (v48)
          {
            v54 = OUTLINED_FUNCTION_400();
            OUTLINED_FUNCTION_108_2(v54, v55, v53);
            v56 = v52;
            if (!v48)
            {
              goto LABEL_49;
            }

            sub_1C8CBE41C(v52, &qword_1EC3129D8);
LABEL_34:
            sub_1C90637EC();
            OUTLINED_FUNCTION_0_7();
            sub_1C8CD23F0(&qword_1EC312920, v71, MEMORY[0x1E69AAC10]);
            if ((sub_1C9063EAC() & 1) == 0)
            {
              goto LABEL_50;
            }

            sub_1C8D02958();
            OUTLINED_FUNCTION_119();
            sub_1C8D02958();
LABEL_36:
            sub_1C8D02958();
            sub_1C8D02958();
            OUTLINED_FUNCTION_206();
            sub_1C8D02958();
            goto LABEL_37;
          }

          v62 = v79;
          OUTLINED_FUNCTION_376();
          sub_1C8CC1D3C();
          v63 = OUTLINED_FUNCTION_400();
          OUTLINED_FUNCTION_108_2(v63, v64, v53);
          if (!v65)
          {
            v66 = v78;
            sub_1C8D04DE8();
            v67 = *v62 == *v66 && v62[1] == v66[1];
            if (!v67 && (sub_1C9064C2C() & 1) == 0 || v62[2] != v66[2])
            {
              sub_1C8D02958();
              OUTLINED_FUNCTION_148();
              sub_1C8D02958();
              sub_1C8CBE41C(v83, &qword_1EC3129D8);
              goto LABEL_50;
            }

            sub_1C90637EC();
            OUTLINED_FUNCTION_0_7();
            v69 = sub_1C8CD23F0(&qword_1EC312920, v68, MEMORY[0x1E69AAC10]);
            v70 = OUTLINED_FUNCTION_407(v69);
            sub_1C8D02958();
            OUTLINED_FUNCTION_254();
            sub_1C8D02958();
            sub_1C8CBE41C(v83, &qword_1EC3129D8);
            v23 = v86;
            if ((v70 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_34;
          }

          sub_1C8D02958();
          v56 = v52;
LABEL_49:
          sub_1C8CBE41C(v56, &qword_1EC3129E0);
LABEL_50:
          sub_1C8D02958();
          OUTLINED_FUNCTION_93();
          sub_1C8D02958();
          OUTLINED_FUNCTION_57_2();
          sub_1C8D02958();
        }

LABEL_51:
        sub_1C8D02958();
        OUTLINED_FUNCTION_134();
        sub_1C8D02958();
        v74 = &qword_1EC3129F0;
        goto LABEL_52;
    }
  }

  OUTLINED_FUNCTION_57_2();
  sub_1C8D02958();
LABEL_42:
  v74 = &qword_1EC3129F8;
LABEL_52:
  sub_1C8CBE41C(v2, v74);
  sub_1C8D02958();
  OUTLINED_FUNCTION_130_1();
  sub_1C8D02958();
LABEL_53:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CF15C4()
{
  OUTLINED_FUNCTION_225();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_384();
    while (1)
    {
      OUTLINED_FUNCTION_416(v20);
      OUTLINED_FUNCTION_416(__src);
      OUTLINED_FUNCTION_418(v21);
      OUTLINED_FUNCTION_418(v18);
      sub_1C8CC1340(v20, v17);
      sub_1C8CC1340(v21, v17);
      v7 = static ContainerDefinition.== infix(_:_:)(__src);
      OUTLINED_FUNCTION_403(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12]);
      sub_1C8CC15FC(v22);
      memcpy(__dst, __src, 0x61uLL);
      sub_1C8CC15FC(__dst);
      if ((v2 & 1) == 0)
      {
        break;
      }

      v1 += 104;
      v0 += 104;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C8CF1698()
{
  OUTLINED_FUNCTION_422();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v1 + 48);
    v4 = (v0 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v8 = *(v3 - 2);
      v7 = *(v3 - 1);
      if (*v4)
      {
        if ((*v3 & 1) == 0)
        {
          goto LABEL_23;
        }

        if (v6 != v8 || v5 != v7)
        {
          OUTLINED_FUNCTION_85();
          v10 = sub_1C9064C2C();
          OUTLINED_FUNCTION_100();
          j__OUTLINED_FUNCTION_264();
          OUTLINED_FUNCTION_56_1();
          j__OUTLINED_FUNCTION_264();
          OUTLINED_FUNCTION_56_1();
          j__OUTLINED_FUNCTION_265();
          OUTLINED_FUNCTION_100();
          goto LABEL_18;
        }
      }

      else
      {
        if (*v3)
        {
LABEL_23:
          OUTLINED_FUNCTION_100();
          j__OUTLINED_FUNCTION_264();
          OUTLINED_FUNCTION_95_0();
          j__OUTLINED_FUNCTION_264();
          OUTLINED_FUNCTION_95_0();
          j__OUTLINED_FUNCTION_265();
          OUTLINED_FUNCTION_100();
          j__OUTLINED_FUNCTION_265();
          break;
        }

        if (v6 != v8 || v5 != v7)
        {
          OUTLINED_FUNCTION_85();
          v10 = sub_1C9064C2C();
          OUTLINED_FUNCTION_100();
          j__OUTLINED_FUNCTION_264();
          OUTLINED_FUNCTION_95_0();
          j__OUTLINED_FUNCTION_264();
          OUTLINED_FUNCTION_95_0();
          j__OUTLINED_FUNCTION_265();
          OUTLINED_FUNCTION_100();
LABEL_18:
          j__OUTLINED_FUNCTION_265();
          if ((v10 & 1) == 0)
          {
            break;
          }

          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_95_0();
      j__OUTLINED_FUNCTION_264();
      OUTLINED_FUNCTION_95_0();
      j__OUTLINED_FUNCTION_264();
      OUTLINED_FUNCTION_95_0();
      j__OUTLINED_FUNCTION_265();
      OUTLINED_FUNCTION_95_0();
      j__OUTLINED_FUNCTION_265();
LABEL_21:
      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_421();
}

void sub_1C8CF1868()
{
  OUTLINED_FUNCTION_164();
  v5 = *(v0 + 16);
  if (v5 == *(v1 + 16) && v5 && v0 != v1)
  {
    v6 = v4;
    v7 = v3;
    v8 = v2;
    v9 = (v0 + 32);
    v10 = (v1 + 32);
    do
    {
      v11 = v9[1];
      v25[0] = *v9;
      v25[1] = v11;
      v26[0] = v9[2];
      v12 = v26[0];
      *(v26 + 9) = *(v9 + 41);
      v22 = v25[0];
      v23 = v11;
      v24[0] = v12;
      *(v24 + 9) = *(v26 + 9);
      v13 = *v10;
      v14 = v10[1];
      v15 = v10[2];
      *(v28 + 9) = *(v10 + 41);
      v16 = *(v28 + 9);
      v27[1] = v14;
      v28[0] = v15;
      v27[0] = v13;
      v19 = v13;
      v20 = v14;
      v21[0] = v15;
      *(v21 + 9) = v16;
      v8(v25, v18);
      v8(v27, v18);
      v17 = v7(&v22, &v19);
      v29[0] = v19;
      v29[1] = v20;
      v30[0] = v21[0];
      *(v30 + 9) = *(v21 + 9);
      v6(v29);
      v31[0] = v22;
      v31[1] = v23;
      v32[0] = v24[0];
      *(v32 + 9) = *(v24 + 9);
      v6(v31);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v9 += 4;
      v10 += 4;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CF19B4()
{
  OUTLINED_FUNCTION_225();
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      return 1;
    }

    OUTLINED_FUNCTION_384();
    while (1)
    {
      OUTLINED_FUNCTION_417(v20);
      OUTLINED_FUNCTION_417(__src);
      OUTLINED_FUNCTION_354(v21);
      OUTLINED_FUNCTION_354(v18);
      sub_1C8D073F4(v20, v17);
      sub_1C8D073F4(v21, v17);
      v7 = static RestrictionContext.== infix(_:_:)();
      OUTLINED_FUNCTION_404(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12], v17[13], v17[14], v17[15], v17[16], v18[0]);
      sub_1C8D073A0(v22);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C8D073A0(__dst);
      if ((v2 & 1) == 0)
      {
        break;
      }

      v0 += 136;
      v1 += 136;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C8CF1A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C90C96A0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8CF1C78(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x74786554746C61;
      break;
    case 3:
      result = 0x6567616D69;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x736D796E6F6E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8CF1D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF1A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF1D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CF1C70();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CF1D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CF6A5C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF1DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CF6A5C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void DisplayRepresentation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312540, &qword_1C9066978);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_72();
  v3 = OUTLINED_FUNCTION_208_0();
  v5 = OUTLINED_FUNCTION_217(v3, v4);
  sub_1C8CF6A5C(v5, v6, v7);
  OUTLINED_FUNCTION_358(&type metadata for DisplayRepresentation.CodingKeys);
  OUTLINED_FUNCTION_205();
  sub_1C9064B2C();
  if (!v1)
  {
    v37 = *(v0 + 16);
    v40 = *(v0 + 24);
    v43 = *(v0 + 32);
    OUTLINED_FUNCTION_275();
    sub_1C8CD1ABC(v8, v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_208_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    OUTLINED_FUNCTION_43_1();
    sub_1C8D07450(v16, v17, &qword_1C9066980, v18);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    sub_1C8CD32C0(v37, v40, v43);
    v38 = *(v0 + 40);
    v41 = *(v0 + 48);
    v44 = *(v0 + 56);
    sub_1C8CD1ABC(v38, v41, v44, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_208_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_43_1();
    sub_1C8D07450(v24, v25, &unk_1C9066988, v26);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    sub_1C8CD32C0(v38, v41, v44);
    v36 = type metadata accessor for DisplayRepresentation(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_43_1();
    sub_1C8D07450(v27, v28, &unk_1C9090E80, v29);
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    v30 = (v0 + *(v36 + 32));
    v39 = *v30;
    v42 = v30[1];
    v45 = v30[2];
    v46 = v30[3];
    v31 = sub_1C8CE9E30(*v30, v42, v45, v46);
    sub_1C8CF6AF8(v31, v32, v33);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    sub_1C8CF6A1C(v39, v42, v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    sub_1C8CA669C(&qword_1EDA6B530, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v34 = OUTLINED_FUNCTION_93();
  v35(v34);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_72();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  sub_1C9063FBC();
  v6 = *(v0 + 32);
  if (v6 == 255)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_284();
    if (v6)
    {
      OUTLINED_FUNCTION_341();
      OUTLINED_FUNCTION_118();
      sub_1C9063FBC();
    }

    else
    {
      OUTLINED_FUNCTION_359();
      OUTLINED_FUNCTION_118();
      sub_1C9061F4C();
    }
  }

  v7 = *(v0 + 56);
  if (v7 == 255)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_284();
    if (v7)
    {
      OUTLINED_FUNCTION_341();
      OUTLINED_FUNCTION_118();
      sub_1C9063FBC();
    }

    else
    {
      OUTLINED_FUNCTION_359();
      OUTLINED_FUNCTION_118();
      sub_1C9061F4C();
    }
  }

  v8 = type metadata accessor for DisplayRepresentation(0);
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v1, 1, v2);
  if (v9)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    sub_1C8CB21A0();
    OUTLINED_FUNCTION_284();
    v10 = OUTLINED_FUNCTION_390();
    sub_1C8CF44A4(v10);
    v11 = OUTLINED_FUNCTION_288();
    sub_1C8CBE41C(v11, v12);
  }

  if (*(v0 + *(v8 + 32) + 24))
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_210();
    sub_1C9061F4C();
    OUTLINED_FUNCTION_117();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  sub_1C8CC1590();
  OUTLINED_FUNCTION_163();
}

void DisplayRepresentation.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312560, &qword_1C9066998);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_109_0();
  v51 = type metadata accessor for DisplayRepresentation(v6);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_208_0();
  v12 = OUTLINED_FUNCTION_217(v10, v11);
  sub_1C8CF6A5C(v12, v13, v14);
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    *v9 = sub_1C9064A0C();
    *(v9 + 8) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312548, &qword_1C9066980);
    OUTLINED_FUNCTION_275();
    OUTLINED_FUNCTION_42_1();
    sub_1C8D07450(v16, v17, &qword_1C9066980, v18);
    OUTLINED_FUNCTION_270_0();
    OUTLINED_FUNCTION_279(v19, v20, v21, v22, v23);
    *(v9 + 16) = OUTLINED_FUNCTION_374();
    *(v9 + 32) = v24;
    v25 = OUTLINED_FUNCTION_278();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_42_1();
    sub_1C8D07450(v27, v28, &unk_1C9066988, v29);
    OUTLINED_FUNCTION_270_0();
    OUTLINED_FUNCTION_279(v30, v31, v32, v33, v34);
    *(v9 + 40) = OUTLINED_FUNCTION_374();
    *(v9 + 56) = v35;
    v36 = OUTLINED_FUNCTION_300();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    LOBYTE(v52[0]) = 3;
    OUTLINED_FUNCTION_42_1();
    v41 = sub_1C8D07450(v38, v39, &unk_1C9090E80, v40);
    OUTLINED_FUNCTION_279(v41, v52, v42, v43, v41);
    v44 = sub_1C8CB21A0();
    sub_1C8D02768(v44, v45, v46);
    OUTLINED_FUNCTION_270_0();
    sub_1C90649EC();
    v47 = (v9 + *(v51 + 32));
    v48 = v52[1];
    *v47 = v52[0];
    v47[1] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    sub_1C8CA669C(&unk_1EDA6B520, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_270_0();
    sub_1C9064A6C();
    v49 = OUTLINED_FUNCTION_135_0();
    v50(v49);
    *(v9 + *(v51 + 36)) = *&v52[0];
    OUTLINED_FUNCTION_159();
    sub_1C8D02900();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_59();
    sub_1C8D02958();
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.debugDescription.getter()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_38();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_269_0(v5);
  OUTLINED_FUNCTION_373(0x6C746974u);
  MEMORY[0x1CCA81A90](*v0, *(v0 + 8));
  sub_1C8D00CA4();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_90();
    v7 = v68;
  }

  *(v7 + 16) = v8 + 1;
  v9 = v7 + 16 * v8;
  *(v9 + 32) = v75;
  *(v9 + 40) = v76;
  if (*(v0 + 32) != 255)
  {
    OUTLINED_FUNCTION_372();
    v75 = v10;
    v76 = 0xEA0000000000203ALL;
    v11 = OUTLINED_FUNCTION_221();
    sub_1C8CD1ABC(v11, v12, v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_245();
    v23 = sub_1C8CF2CEC(v17, v18, v19, v20, v21, v22);
    MEMORY[0x1CCA81A90](v23);

    v24 = *(v7 + 16);
    if (v24 >= *(v7 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v7 = v69;
    }

    v25 = OUTLINED_FUNCTION_221();
    sub_1C8CD32C0(v25, v26, v27);
    *(v7 + 16) = v24 + 1;
    v28 = v7 + 16 * v24;
    *(v28 + 32) = v75;
    *(v28 + 40) = 0xEA0000000000203ALL;
  }

  if (*(v0 + 56) != 255)
  {
    v75 = 0x7478657420746C61;
    v76 = 0xEA0000000000203ALL;
    v29 = OUTLINED_FUNCTION_221();
    sub_1C8CD1ABC(v29, v30, v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_245();
    v41 = sub_1C8CF2CEC(v35, v36, v37, v38, v39, v40);
    MEMORY[0x1CCA81A90](v41);

    v42 = *(v7 + 16);
    if (v42 >= *(v7 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v7 = v70;
    }

    v43 = OUTLINED_FUNCTION_221();
    sub_1C8CD32C0(v43, v44, v45);
    *(v7 + 16) = v42 + 1;
    v46 = v7 + 16 * v42;
    *(v46 + 32) = 0x7478657420746C61;
    *(v46 + 40) = 0xEA0000000000203ALL;
  }

  v47 = type metadata accessor for DisplayRepresentation(0);
  sub_1C8CC1D3C();
  v48 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v48, v49, v73);
  if (v50)
  {
    sub_1C8CBE41C(v1, &qword_1EC312528);
  }

  else
  {
    sub_1C8CB21A0();
    OUTLINED_FUNCTION_373(0x67616D69u);
    v51 = sub_1C8CF2DB0();
    MEMORY[0x1CCA81A90](v51);

    v52 = *(v7 + 16);
    if (v52 >= *(v7 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v7 = v72;
    }

    sub_1C8CBE41C(v74, &qword_1EC312530);
    *(v7 + 16) = v52 + 1;
    v53 = v7 + 16 * v52;
    *(v53 + 32) = v75;
    *(v53 + 40) = v76;
  }

  if (*(*(v0 + *(v47 + 36)) + 16))
  {

    v54 = OUTLINED_FUNCTION_181();
    __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
    OUTLINED_FUNCTION_156();
    sub_1C8D07450(v56, v57, &qword_1C9066990, v58);
    OUTLINED_FUNCTION_379();
    sub_1C9063E9C();

    v59 = OUTLINED_FUNCTION_288();
    MEMORY[0x1CCA81A90](v59);

    v60 = *(v7 + 16);
    if (v60 >= *(v7 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v7 = v71;
    }

    *(v7 + 16) = v60 + 1;
    v61 = v7 + 16 * v60;
    *(v61 + 32) = 0x736D6E796F6E7973;
    *(v61 + 40) = 0xEA0000000000203ALL;
  }

  sub_1C906478C();

  v62 = OUTLINED_FUNCTION_209();
  __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
  OUTLINED_FUNCTION_156();
  sub_1C8D07450(v64, v65, &qword_1C9066990, v66);
  OUTLINED_FUNCTION_379();
  sub_1C9063E9C();

  v67 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v67);

  OUTLINED_FUNCTION_340();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CF2CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_365();
    OUTLINED_FUNCTION_305();
    sub_1C906478C();

    OUTLINED_FUNCTION_30_0();
    v6 = OUTLINED_FUNCTION_134();
    MEMORY[0x1CCA7F9E0](v6);
    sub_1C9064BDC();
    OUTLINED_FUNCTION_414();

    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_412();
    OUTLINED_FUNCTION_345();

    OUTLINED_FUNCTION_340();
  }

  return OUTLINED_FUNCTION_134();
}

uint64_t sub_1C8CF2DB0()
{
  v0 = type metadata accessor for DisplayRepresentation.Image(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v9 - v2);
  sub_1C8CC1D3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8D04DE8();
    v4 = DisplayRepresentation.Image.debugDescription.getter();
    sub_1C8D02958();
  }

  else
  {
    v5 = *v3;
    v6 = v3[1];
    v12 = 0x28797A616CLL;
    v13 = 0xE500000000000000;
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1C906478C();

    v10 = 0x28656761726F7453;
    v11 = 0xE800000000000000;
    v9[1] = MEMORY[0x1CCA7F9E0](v5, v6);
    v7 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v7);

    MEMORY[0x1CCA81A90](0x29736574796220, 0xE700000000000000);
    MEMORY[0x1CCA81A90](v10, v11);

    MEMORY[0x1CCA81A90](41, 0xE100000000000000);
    sub_1C8CE7B78(v5, v6);
    return v12;
  }

  return v4;
}

uint64_t DisplayRepresentation.DisplayValue.debugDescription.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_322();
  v4(v3);
  OUTLINED_FUNCTION_119();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = OUTLINED_FUNCTION_249();
    v6(v5);
    sub_1C9064C3C();
    v7 = OUTLINED_FUNCTION_134();
    v8(v7);
  }

  else
  {
    OUTLINED_FUNCTION_365();
    sub_1C906478C();

    OUTLINED_FUNCTION_30_0();
    v17 = v9;
    v18 = v10;
    v11 = OUTLINED_FUNCTION_145();
    MEMORY[0x1CCA7F9E0](v11);
    v12 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v12);

    v13 = OUTLINED_FUNCTION_61_1();
    MEMORY[0x1CCA81A90](v13, 0xE700000000000000);
    MEMORY[0x1CCA81A90](v17, v18);

    OUTLINED_FUNCTION_340();
    v14 = OUTLINED_FUNCTION_145();
    sub_1C8CE7B78(v14, v15);
  }

  return OUTLINED_FUNCTION_181();
}

uint64_t DisplayRepresentation.DisplayValueEnum.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  v0 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v0);
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.Storage.debugDescription.getter()
{
  OUTLINED_FUNCTION_305();
  sub_1C906478C();

  OUTLINED_FUNCTION_30_0();
  v3 = v0;
  v1 = OUTLINED_FUNCTION_145();
  MEMORY[0x1CCA7F9E0](v1);
  sub_1C9064BDC();
  OUTLINED_FUNCTION_414();

  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_412();
  return v3;
}

uint64_t sub_1C8CF32F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_223();
  if ((v14 & 1) == 0)
  {
    v39 = OUTLINED_FUNCTION_95_0();
    sub_1C8CE9D94(v39, v40, 0, v41, v42, v43);
    v44 = OUTLINED_FUNCTION_100();
    if ((a6 & 1) == 0)
    {
      sub_1C8CE9D94(v44, v45, 0, v46, v47, v48);
      v70 = OUTLINED_FUNCTION_95_0();
      sub_1C8CE9D94(v70, v71, 0, v72, v73, v74);
      OUTLINED_FUNCTION_85();
      v75 = MEMORY[0x1CCA7F9A0]();
      v76 = OUTLINED_FUNCTION_100();
      sub_1C8CF6A10(v76, v77, 0);
      v78 = OUTLINED_FUNCTION_95_0();
      sub_1C8CF6A10(v78, v79, 0);
      v80 = OUTLINED_FUNCTION_95_0();
      sub_1C8CF6A10(v80, v81, 0);
      return v75 & 1;
    }

    sub_1C8CE9D94(v44, v45, 1, v46, v47, v48);
    goto LABEL_12;
  }

  if ((a6 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_56_1();
    sub_1C8CE9D94(v49, v50, v51, v52, v53, v54);
    v55 = OUTLINED_FUNCTION_100();
    sub_1C8CE9D94(v55, v56, 0, v57, v58, v59);
    v60 = OUTLINED_FUNCTION_56_1();
    sub_1C8CE9D94(v60, v61, v62, v63, v64, v65);

LABEL_12:
    v66 = OUTLINED_FUNCTION_95_0();
    sub_1C8CF6A10(v66, v67, v68);
    v36 = OUTLINED_FUNCTION_100();
    goto LABEL_13;
  }

  if (v7 == a4 && v6 == a5)
  {
    sub_1C8CE9D94(v7, v6, 1, v11, v12, v13);
    v83 = OUTLINED_FUNCTION_56_1();
    sub_1C8CE9D94(v83, v84, v85, v86, v87, v88);
    v89 = OUTLINED_FUNCTION_56_1();
    sub_1C8CE9D94(v89, v90, v91, v92, v93, v94);
    v95 = OUTLINED_FUNCTION_56_1();
    sub_1C8CF6A10(v95, v96, v97);
    goto LABEL_16;
  }

  v16 = sub_1C9064C2C();
  v17 = OUTLINED_FUNCTION_56_1();
  sub_1C8CE9D94(v17, v18, v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_100();
  sub_1C8CE9D94(v23, v24, 1, v25, v26, v27);
  v28 = OUTLINED_FUNCTION_56_1();
  sub_1C8CE9D94(v28, v29, v30, v31, v32, v33);
  v34 = OUTLINED_FUNCTION_100();
  sub_1C8CF6A10(v34, v35, 1);
  if (v16)
  {
LABEL_16:

    v69 = 1;
    v98 = OUTLINED_FUNCTION_56_1();
    sub_1C8CF6A10(v98, v99, v100);
    return v69;
  }

  v36 = OUTLINED_FUNCTION_56_1();
LABEL_13:
  sub_1C8CF6A10(v36, v37, v38);
  return 0;
}

uint64_t sub_1C8CF3488()
{
  v0 = type metadata accessor for DisplayRepresentation.Image(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v17 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312BF8, &qword_1C9068F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v9 = (&v17 + *(v8 + 56) - v6);
  sub_1C8CC1D3C();
  sub_1C8CC1D3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8CC1D3C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D04DE8();
      static DisplayRepresentation.Image.== infix(_:_:)();
      v11 = v10;
      sub_1C8D02958();
      sub_1C8D02958();
LABEL_9:
      sub_1C8CBE41C(v7, &qword_1EC312530);
      return v11 & 1;
    }

    sub_1C8D02958();
  }

  else
  {
    sub_1C8CC1D3C();
    v12 = *v4;
    v13 = v4[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v14 = *v9;
      v15 = v9[1];
      v11 = MEMORY[0x1CCA7F9A0](v12, v13, v14, v15);
      sub_1C8CE7B78(v14, v15);
      sub_1C8CE7B78(v12, v13);
      goto LABEL_9;
    }

    sub_1C8CE7B78(v12, v13);
  }

  sub_1C8CBE41C(v7, &qword_1EC312BF8);
  v11 = 0;
  return v11 & 1;
}

void static DisplayRepresentation.DisplayValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v38 = v3;
  v39 = v4;
  OUTLINED_FUNCTION_16_3();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  v36 = v7;
  v8 = OUTLINED_FUNCTION_111();
  v11 = type metadata accessor for DisplayRepresentation.DisplayValue(v8, v9, v10, v10);
  OUTLINED_FUNCTION_11();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_229();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_201();
  v21 = v0 + *(v20 + 48);
  v22 = *(v13 + 16);
  v22(v0, v38, v11);
  v22(v21, v39, v11);
  OUTLINED_FUNCTION_134();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = OUTLINED_FUNCTION_398();
    (v22)(v23);
    OUTLINED_FUNCTION_155_1();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = OUTLINED_FUNCTION_107();
      v25(v24);
      OUTLINED_FUNCTION_300();
      sub_1C9063EAC();
      v26 = *(v37 + 8);
      v26(v36, v2);
      v26(v17, v2);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_241();
      v31(v30, v2);
    }
  }

  else
  {
    v27 = OUTLINED_FUNCTION_100();
    (v22)(v27);
    OUTLINED_FUNCTION_155_1();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_250();
      MEMORY[0x1CCA7F9A0]();
      v32 = OUTLINED_FUNCTION_127();
      sub_1C8CE7B78(v32, v33);
    }

    v28 = OUTLINED_FUNCTION_276();
    sub_1C8CE7B78(v28, v29);
  }

  v34 = OUTLINED_FUNCTION_134();
  v35(v34);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CF3A90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2038063468 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8CF3B5C(char a1)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a1 & 1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF3BA4(char a1)
{
  if (a1)
  {
    return 0x636974617473;
  }

  else
  {
    return 2038063468;
  }
}

uint64_t sub_1C8CF3BD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319(12383, 0xE200000000000000, a1);
    OUTLINED_FUNCTION_420();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CF3C30()
{
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](0);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF3CA0(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C8CA7B20(v3, *v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF3CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF3A90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF3D50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CF3B54();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CF3D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8CF3DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C8CF3E6C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CF3EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8CF3EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C8CF3F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void, void))
{
  sub_1C9064D7C();
  a4(v7, *(a2 + 16), *(a2 + 24));
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF3FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8CF4010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void DisplayRepresentation.DisplayValue.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  OUTLINED_FUNCTION_160();
  type metadata accessor for DisplayRepresentation.DisplayValue.StaticCodingKeys(v3, v4, v5, v6);
  OUTLINED_FUNCTION_185();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  sub_1C9064BBC();
  OUTLINED_FUNCTION_11();
  v47 = v8;
  v48 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v46 = v10;
  OUTLINED_FUNCTION_16_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_160();
  type metadata accessor for DisplayRepresentation.DisplayValue.LazyCodingKeys(v12, v13, v14, v15);
  OUTLINED_FUNCTION_184();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  sub_1C9064BBC();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_16_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_160();
  type metadata accessor for DisplayRepresentation.DisplayValue.CodingKeys(v23, v24, v25, v26);
  OUTLINED_FUNCTION_182_0();
  swift_getWitnessTable();
  sub_1C9064BBC();
  OUTLINED_FUNCTION_11();
  v49 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_73();
  v29 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_217(v29, v30);
  sub_1C9064E1C();
  (*(v18 + 16))(v22, v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = OUTLINED_FUNCTION_124_0();
    v32(v31);
    OUTLINED_FUNCTION_385();
    sub_1C9064ACC();
    sub_1C9064B8C();
    (*(v47 + 8))(v46, v48);
    v33 = OUTLINED_FUNCTION_130_1();
    v34(v33);
    v35 = OUTLINED_FUNCTION_241();
    v36(v35, v49);
  }

  else
  {
    v37 = sub_1C9064ACC();
    sub_1C8D02804(v37, v38, v39);
    sub_1C9064B8C();
    v40 = OUTLINED_FUNCTION_114();
    v41(v40);
    v42 = OUTLINED_FUNCTION_241();
    v43(v42, v49);
    v44 = OUTLINED_FUNCTION_288();
    sub_1C8CE7B78(v44, v45);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF44A4(uint64_t a1)
{
  v1 = type metadata accessor for DisplayRepresentation.Image(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v8 - v3);
  sub_1C8CC1D3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8D04DE8();
    MEMORY[0x1CCA82810](1);
    DisplayRepresentation.Image.hash(into:)();
    return sub_1C8D02958();
  }

  else
  {
    v6 = *v4;
    v7 = v4[1];
    MEMORY[0x1CCA82810](0);
    sub_1C9061F4C();
    return sub_1C8CE7B78(v6, v7);
  }
}

uint64_t DisplayRepresentation.DisplayValue.hash(into:)()
{
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v0, v3);
  OUTLINED_FUNCTION_212();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_388();
    v7 = OUTLINED_FUNCTION_288();
    v8(v7);
    MEMORY[0x1CCA82810](1);
    sub_1C9063E7C();
    v9 = OUTLINED_FUNCTION_93();
    return v10(v9);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_95_0();
    sub_1C9061F4C();
    v12 = OUTLINED_FUNCTION_145();
    return sub_1C8CE7B78(v12, v13);
  }
}

uint64_t DisplayRepresentation.DisplayValue.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  DisplayRepresentation.DisplayValue.hash(into:)();
  return sub_1C9064DBC();
}

void DisplayRepresentation.DisplayValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v94 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v89 = v8;
  v10 = type metadata accessor for DisplayRepresentation.DisplayValue.StaticCodingKeys(255, v4, v2, v9);
  OUTLINED_FUNCTION_185();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v85 = v11;
  v86 = v10;
  v80 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11();
  v79 = v12;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  v87 = v14;
  v15 = OUTLINED_FUNCTION_364();
  v19 = type metadata accessor for DisplayRepresentation.DisplayValue.LazyCodingKeys(v15, v16, v17, v18);
  OUTLINED_FUNCTION_184();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v83 = v19;
  v82 = v20;
  v78 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11();
  v77 = v21;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_97();
  v84 = v23;
  v24 = OUTLINED_FUNCTION_364();
  type metadata accessor for DisplayRepresentation.DisplayValue.CodingKeys(v24, v25, v26, v27);
  OUTLINED_FUNCTION_182_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_116();
  sub_1C9064ABC();
  OUTLINED_FUNCTION_11();
  v90 = v29;
  v91 = v28;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_233();
  v92 = v5;
  v81 = v3;
  v32 = type metadata accessor for DisplayRepresentation.DisplayValue(0, v5, v3, v31);
  OUTLINED_FUNCTION_11();
  v88 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_25();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v73 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_229();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v93 = v1;
  OUTLINED_FUNCTION_116();
  v42 = v94;
  sub_1C9064DEC();
  if (!v42)
  {
    v76 = v37;
    v74 = v40;
    v75 = v3;
    v43 = v91;
    v44 = v90;
    v94 = 0;
    v45 = v93;
    *&v95 = sub_1C9064A9C();
    sub_1C906423C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_116();
    *&v97 = sub_1C90646AC();
    *(&v97 + 1) = v46;
    *&v98 = v47;
    *(&v98 + 1) = v48;
    sub_1C906469C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_227();
    sub_1C90643CC();
    v49 = v95;
    if (v95 == 2 || (v73 = v97, v95 = v97, v96 = v98, OUTLINED_FUNCTION_227(), (sub_1C90643DC() & 1) == 0))
    {
      sub_1C90647DC();
      swift_allocError();
      v55 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
      *v55 = v32;
      v56 = sub_1C906499C();
      OUTLINED_FUNCTION_411(v56);
      OUTLINED_FUNCTION_10_0();
      (*(v57 + 104))(v55);
      swift_willThrow();
      v58 = OUTLINED_FUNCTION_208_0();
      v59(v58);
LABEL_13:
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    if (v49)
    {
      LOBYTE(v95) = 1;
      v50 = v87;
      v51 = v94;
      sub_1C906498C();
      v52 = v45;
      v53 = v89;
      if (v51)
      {
        (*(v44 + 8))(v52, v43);
LABEL_12:
        OUTLINED_FUNCTION_315();
        goto LABEL_13;
      }

      sub_1C9064A6C();
      OUTLINED_FUNCTION_296();
      v69 = OUTLINED_FUNCTION_117();
      v70(v69);
      (*(v44 + 8))(v93, v43);
      OUTLINED_FUNCTION_315();
      swift_unknownObjectRelease();
      v71 = v76;
      OUTLINED_FUNCTION_245();
      swift_storeEnumTagMultiPayload();
      v72 = OUTLINED_FUNCTION_294();
      v50(v72, v71, v32);
    }

    else
    {
      LOBYTE(v95) = 0;
      v60 = v84;
      v61 = v94;
      v62 = sub_1C906498C();
      v50 = v88;
      if (v61)
      {
        (*(v44 + 8))(v45, v43);
        goto LABEL_12;
      }

      sub_1C8D02858(v62, v63, v64);
      v65 = v78;
      sub_1C9064A6C();
      OUTLINED_FUNCTION_296();
      v66(v60, v65);
      (*(v44 + 8))(v45, v43);
      OUTLINED_FUNCTION_315();
      swift_unknownObjectRelease();
      v67 = v74;
      *v74 = v95;
      swift_storeEnumTagMultiPayload();
      v68 = OUTLINED_FUNCTION_294();
      v50(v68, v67, v32);
      v53 = v89;
    }

    v50(v53, v43, v32);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF4F28(uint64_t a1)
{
  sub_1C9064D7C();
  DisplayRepresentation.DisplayValue.hash(into:)();
  return sub_1C9064DBC();
}

double DisplayRepresentation.Symbol.init(image:)@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 representationType] == 4 && (v4 = sub_1C8D021F8(a1), v5))
  {
    v6 = v4;
    v7 = v5;
    v8 = [a1 tintColor];
    v9 = [a1 symbolConfiguration];

    *a2 = v6;
    a2[1] = v7;
    a2[2] = v8;
    a2[3] = v9;
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t DisplayRepresentation.Symbol.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_305();
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0x6E286C6F626D7953, 0xED0000203A656D61);
  v3 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v3);
  MEMORY[0x1CCA81A90](0x6F43746E6974202CLL, 0xED0000203A726F6CLL);
  if (v1)
  {
    v4 = [v1 hexValue];
    v5 = sub_1C9063EEC();
    v1 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312580, &qword_1C9073EA0);
  OUTLINED_FUNCTION_408(v7, v8, v7, v9, v10, v11, v12, v13, v5, v1, v23);

  MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90C9610);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312588, &qword_1C90669B0);
  OUTLINED_FUNCTION_408(v14, v15, v14, v16, v17, v18, v19, v20, v2, v22, v24);
  OUTLINED_FUNCTION_340();
  return v25;
}

uint64_t static DisplayRepresentation.Symbol.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
    v7 = v2;
    v8 = v4;
    OUTLINED_FUNCTION_145();
    v9 = sub_1C90645BC();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
      v10 = v3;
      v11 = v5;
      OUTLINED_FUNCTION_145();
      v12 = sub_1C90645BC();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C8CF52D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C6F43746E6974 && a2 == 0xE900000000000072;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8CF5400(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6F6C6F43746E6974;
  }

  return 0x72756769666E6F63;
}

uint64_t sub_1C8CF5468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF52D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF5490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CF53F8();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CF54B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D028AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF54F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D028AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void DisplayRepresentation.Symbol.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312590, &qword_1C90669B8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_72();
  v36 = *(v20 + 24);
  v37 = *(v20 + 16);
  v23 = OUTLINED_FUNCTION_300();
  v25 = OUTLINED_FUNCTION_217(v23, v24);
  sub_1C8D028AC(v25, v26, v27);
  sub_1C9064E1C();
  sub_1C9064B2C();
  if (!v21)
  {
    v28 = v37;
    v29 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_195(&qword_1EDA60CE8);
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();

    v31 = v36;
    v32 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    OUTLINED_FUNCTION_195(&qword_1EDA60D08);
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
  }

  v34 = OUTLINED_FUNCTION_268();
  v35(v34);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.Symbol.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1C9063FBC();
  if (v3)
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_390();
    sub_1C90645CC();
    if (v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_284();
      return sub_1C90645CC();
    }
  }

  else
  {
    OUTLINED_FUNCTION_283();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_283();
}

uint64_t DisplayRepresentation.Symbol.hashValue.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v2)
  {
    sub_1C90645CC();
  }

  sub_1C9064D9C();
  if (v1)
  {
    sub_1C90645CC();
  }

  return sub_1C9064DBC();
}

void DisplayRepresentation.Symbol.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v23 = v22;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125A8, &qword_1C90669D0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_233();
  v27 = OUTLINED_FUNCTION_118();
  v29 = OUTLINED_FUNCTION_217(v27, v28);
  sub_1C8D028AC(v29, v30, v31);
  sub_1C9064DEC();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    LOBYTE(a10) = 0;
    v47 = sub_1C9064A0C();
    v48 = v32;
    v33 = OUTLINED_FUNCTION_226_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_158_0();
    sub_1C8D07450(v35, v36, &unk_1C90669C0, v37);
    OUTLINED_FUNCTION_151();
    sub_1C90649EC();
    v38 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_158_0();
    sub_1C8D07450(v40, v41, &unk_1C90669C8, v42);
    OUTLINED_FUNCTION_151();
    sub_1C90649EC();
    v43 = OUTLINED_FUNCTION_200_0();
    v44(v43);
    *v25 = v47;
    v25[1] = v48;
    v25[2] = a10;
    v25[3] = a10;
    v45 = a10;
    OUTLINED_FUNCTION_256();

    v46 = a10;
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF5AF8(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 1);
  sub_1C9064D7C();
  DisplayRepresentation.Symbol.hash(into:)(v4);
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.Image.debugDescription.getter()
{
  sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_119();
  sub_1C8D02900();
  OUTLINED_FUNCTION_276();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = *(v0 + 16);
      v5 = *(v0 + 24);
      v6 = DisplayRepresentation.Symbol.debugDescription.getter();
      MEMORY[0x1CCA81A90](v6);

      OUTLINED_FUNCTION_340();
    }

    else
    {
      OUTLINED_FUNCTION_388();
      v12 = OUTLINED_FUNCTION_206();
      v13(v12);
      OUTLINED_FUNCTION_365();
      OUTLINED_FUNCTION_21_3();
      sub_1C8CD23F0(v14, v15, MEMORY[0x1E6968FE0]);
      v16 = sub_1C9064BDC();
      MEMORY[0x1CCA81A90](v16);

      OUTLINED_FUNCTION_340();
      v17 = OUTLINED_FUNCTION_134();
      v18(v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_365();
    v7 = OUTLINED_FUNCTION_145();
    MEMORY[0x1CCA7F9E0](v7);
    v8 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v8);

    v9 = OUTLINED_FUNCTION_61_1();
    MEMORY[0x1CCA81A90](v9, 0xE700000000000000);
    v10 = OUTLINED_FUNCTION_145();
    sub_1C8CE7B78(v10, v11);
  }

  return OUTLINED_FUNCTION_181();
}

void static DisplayRepresentation.Image.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v32 = v4;
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_201();
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_228();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125B0, &qword_1C90669D8);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_142();
  v14 = (v0 + *(v13 + 56));
  sub_1C8D02900();
  OUTLINED_FUNCTION_203();
  sub_1C8D02900();
  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_252();
      sub_1C8D02900();
      v16 = v2[1];
      v17 = v2[2];
      v18 = v2[3];
      OUTLINED_FUNCTION_278();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *v14;
        v20 = v14[1];
        v22 = v14[2];
        v21 = v14[3];
        v35[0] = *v2;
        v35[1] = v16;
        v35[2] = v17;
        v35[3] = v18;
        v34[0] = v19;
        v34[1] = v20;
        v34[2] = v22;
        v34[3] = v21;
        static DisplayRepresentation.Symbol.== infix(_:_:)(v35, v34);

LABEL_13:
        OUTLINED_FUNCTION_54_0();
        sub_1C8D02958();
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_117();
      sub_1C8D02900();
      OUTLINED_FUNCTION_278();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        (*(v32 + 32))(v1, v14, v33);
        OUTLINED_FUNCTION_212();
        sub_1C9061E1C();
        v25 = *(v32 + 8);
        v25(v1, v33);
        v26 = OUTLINED_FUNCTION_211();
        (v25)(v26);
        goto LABEL_13;
      }

      (*(v32 + 8))(v8, v33);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    sub_1C8D02900();
    OUTLINED_FUNCTION_278();
    if (!swift_getEnumCaseMultiPayload())
    {
      v27 = OUTLINED_FUNCTION_209();
      MEMORY[0x1CCA7F9A0](v27);
      v28 = OUTLINED_FUNCTION_211();
      sub_1C8CE7B78(v28, v29);
      v30 = OUTLINED_FUNCTION_209();
      sub_1C8CE7B78(v30, v31);
      goto LABEL_13;
    }

    v23 = OUTLINED_FUNCTION_209();
    sub_1C8CE7B78(v23, v24);
  }

  sub_1C8CBE41C(v0, &qword_1EC3125B0);
LABEL_14:
  OUTLINED_FUNCTION_163();
}

void DisplayRepresentation.Image.hash(into:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_258();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_254();
  sub_1C8D02900();
  OUTLINED_FUNCTION_136();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = *(v0 + 16);
      v5 = *(v0 + 24);
      OUTLINED_FUNCTION_341();
      OUTLINED_FUNCTION_227();
      sub_1C9063FBC();
      if (v4)
      {
        OUTLINED_FUNCTION_284();
        sub_1C90645CC();
        if (v5)
        {
LABEL_5:
          OUTLINED_FUNCTION_284();
          sub_1C90645CC();

LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        OUTLINED_FUNCTION_283();
        if (v5)
        {
          goto LABEL_5;
        }
      }

      OUTLINED_FUNCTION_283();
      goto LABEL_10;
    }

    v8 = OUTLINED_FUNCTION_119();
    v9(v8);
    MEMORY[0x1CCA82810](2);
    OUTLINED_FUNCTION_21_3();
    sub_1C8CD23F0(v10, v11, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_390();
    sub_1C9063E7C();
    v12 = OUTLINED_FUNCTION_100();
    v13(v12);
  }

  else
  {
    OUTLINED_FUNCTION_359();
    OUTLINED_FUNCTION_145();
    sub_1C9061F4C();
    v6 = OUTLINED_FUNCTION_249();
    sub_1C8CE7B78(v6, v7);
  }

LABEL_11:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8CF62BC(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF6338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF63A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D029AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF63E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D029AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8CF6508(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_2_3();
  }

  else
  {
    return sub_1C9064C2C();
  }
}

uint64_t sub_1C8CF6534(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319(0x65756C6176, 0xE500000000000000, a1);
    OUTLINED_FUNCTION_420();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CF6598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02A00(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF65D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02A00(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void sub_1C8CF6644()
{
  OUTLINED_FUNCTION_196();
  v11 = v0;
  v3 = OUTLINED_FUNCTION_387(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_233();
  v6 = OUTLINED_FUNCTION_125();
  v8 = OUTLINED_FUNCTION_217(v6, v7);
  v11(v8);
  sub_1C9064E1C();
  sub_1C9064B2C();
  v9 = OUTLINED_FUNCTION_114();
  v10(v9);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void sub_1C8CF67A4()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v18 = v5;
  v7 = OUTLINED_FUNCTION_387(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73();
  v10 = OUTLINED_FUNCTION_252();
  v12 = OUTLINED_FUNCTION_217(v10, v11);
  v2(v12);
  sub_1C9064DEC();
  if (!v0)
  {
    v13 = sub_1C9064A0C();
    v15 = v14;
    v16 = OUTLINED_FUNCTION_125();
    v17(v16);
    *v18 = v13;
    v18[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.PluginModelData.value.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t static DisplayRepresentation.PluginModelData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((MEMORY[0x1CCA7F9A0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_368();

  return sub_1C9064C2C();
}

uint64_t sub_1C8CF6A10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return OUTLINED_FUNCTION_265(a1, a2);
  }

  else
  {
    return sub_1C8CE7B78(a1, a2);
  }
}

uint64_t sub_1C8CF6A1C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C8CE7B78(result, a2);
  }

  return result;
}

unint64_t sub_1C8CF6A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CCB0;
  if (!qword_1EDA6CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCB0);
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

unint64_t sub_1C8CF6AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA668E8;
  if (!qword_1EDA668E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668E8);
  }

  return result;
}

uint64_t sub_1C8CF6B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8CF6C18(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1C8CF6C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF6B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF6C80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CF3B54();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CF6CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02A54(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF6CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02A54(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void DisplayRepresentation.PluginModelData.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125E0, &qword_1C9066A00);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72();
  v5 = *v0;
  v6 = v0[1];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  v7 = OUTLINED_FUNCTION_325();
  v9 = sub_1C8CE9144(v7, v8);
  sub_1C8D02A54(v9, v10, v11);
  v12 = sub_1C9064E1C();
  sub_1C8D02AA8(v12, v13, v14);
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  sub_1C8CE7B78(v5, v6);
  if (!v1)
  {
    OUTLINED_FUNCTION_385();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
  }

  v15 = OUTLINED_FUNCTION_93();
  v16(v15);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t DisplayRepresentation.PluginModelData.hash(into:)(uint64_t a1)
{
  sub_1C9061F4C();
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t DisplayRepresentation.PluginModelData.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  sub_1C9061F4C();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void DisplayRepresentation.PluginModelData.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125F0, &qword_1C9066A08);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_217(v6, v7);
  sub_1C8D02A54(v8, v9, v10);
  v11 = sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1C8D02AFC(v11, v12, v13);
    OUTLINED_FUNCTION_132();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_385();
    v14 = sub_1C9064A0C();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_203();
    v18(v17);
    *v4 = v23;
    v4[1] = v24;
    v4[2] = v14;
    v4[3] = v16;
    v19 = OUTLINED_FUNCTION_224();
    sub_1C8CE9144(v19, v20);

    __swift_destroy_boxed_opaque_existential_1(v2);
    v21 = OUTLINED_FUNCTION_224();
    sub_1C8CE7B78(v21, v22);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF7148(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C9061F4C();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.Storage.data.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t DisplayRepresentation.Storage.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C8CF71E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CF726C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF71E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CF7298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02B50(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF72D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02B50(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void DisplayRepresentation.Storage.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3125F8, &qword_1C9066A10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_38();
  v2 = *v0;
  v3 = v0[1];
  v4 = OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_217(v4, v5);
  v6 = sub_1C8CE9144(v2, v3);
  sub_1C8D02B50(v6, v7, v8);
  v9 = sub_1C9064E1C();
  sub_1C8D02AA8(v9, v10, v11);
  sub_1C9064B8C();
  sub_1C8CE7B78(v2, v3);
  v12 = OUTLINED_FUNCTION_148();
  v13(v12);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF7460(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_149();
  a1();
  return sub_1C9064DBC();
}

void DisplayRepresentation.Storage.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312608, &qword_1C9066A18);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  v6 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_217(v6, v7);
  v11 = sub_1C8D02B50(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_355(&type metadata for DisplayRepresentation.Storage.CodingKeys, v12, v11);
  if (!v0)
  {
    sub_1C8D02AFC(v13, v14, v15);
    sub_1C9064A6C();
    v16 = OUTLINED_FUNCTION_125();
    v17(v16);
    *v4 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1C9064D7C();
  OUTLINED_FUNCTION_149();
  a4();
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.ResolvingRequest.storage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (((v3 >> 60) & 3) != 0)
  {
    v6 = v3 & 0xCFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v1[1];
  }

  *a1 = v2;
  a1[1] = v6;
  return sub_1C8D02BA4(v2, v3, v4, v5, sub_1C8CE9144);
}

uint64_t DisplayRepresentation.ResolvingRequest.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = (v2 >> 60) & 3;
  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_302();
      sub_1C906478C();
      MEMORY[0x1CCA81A90](0x7266286567616D69, 0xEC000000203A6D6FLL);
      OUTLINED_FUNCTION_344_0();

      OUTLINED_FUNCTION_30_0();
      MEMORY[0x1CCA7F9E0](v1, v2 & 0xCFFFFFFFFFFFFFFFLL);
      sub_1C9064BDC();
      OUTLINED_FUNCTION_414();

      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_412();
      OUTLINED_FUNCTION_345();

      MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90C9630);
      type metadata accessor for CGSize(0);
      sub_1C90648BC();
      return v8[0];
    }

    OUTLINED_FUNCTION_302();
    sub_1C906478C();

    strcpy(v8, "altText(from: ");
    HIBYTE(v8[1]) = -18;
    OUTLINED_FUNCTION_344_0();

    OUTLINED_FUNCTION_30_0();
    v4 = v2 & 0xCFFFFFFFFFFFFFFFLL;
    v5 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_302();
    sub_1C906478C();

    OUTLINED_FUNCTION_372();
    v8[0] = v6;
    v8[1] = 0xEF203A6D6F726628;
    OUTLINED_FUNCTION_344_0();

    OUTLINED_FUNCTION_30_0();
    v5 = OUTLINED_FUNCTION_145();
  }

  MEMORY[0x1CCA7F9E0](v5, v4);
  sub_1C9064BDC();
  OUTLINED_FUNCTION_414();

  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_412();
  OUTLINED_FUNCTION_345();

  OUTLINED_FUNCTION_340();
  return v8[0];
}

BOOL static DisplayRepresentation.ResolvingRequest.== infix(_:_:)(double *a1, double *a2)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = a1[2];
  v6 = a1[3];
  v9 = *a2;
  v8 = *(a2 + 1);
  v10 = a2[2];
  v11 = a2[3];
  v12 = (v4 >> 60) & 3;
  if (!v12)
  {
    if ((v8 & 0x3000000000000000) == 0)
    {
      OUTLINED_FUNCTION_18();
      sub_1C8D02BA4(v9, v8, *&v10, *&v11, v27);
      v28 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v28, v29, v30, v31, v2);
      v32 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v32, v33, v34, v35, v2);
      v36 = OUTLINED_FUNCTION_26();
      sub_1C8D02BA4(v36, v37, v38, v39, v2);
      v26 = OUTLINED_FUNCTION_100();
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (v12 == 1)
  {
    if ((v8 & 0x3000000000000000) == 0x1000000000000000)
    {
      OUTLINED_FUNCTION_18();
      sub_1C8D02BA4(v9, v8, *&v10, *&v11, v13);
      v14 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v14, v15, v16, v17, v2);
      v18 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v18, v19, v20, v21, v2);
      v22 = OUTLINED_FUNCTION_26();
      sub_1C8D02BA4(v22, v23, v24, v25, v2);
      v26 = OUTLINED_FUNCTION_362();
LABEL_7:
      MEMORY[0x1CCA7F9A0](v26);
      OUTLINED_FUNCTION_161();
      sub_1C8D02BA4(v5, v4, *&v7, *&v6, v40);
      v41 = OUTLINED_FUNCTION_26();
      sub_1C8D02BA4(v41, v42, v43, v44, v3);
      v45 = OUTLINED_FUNCTION_26();
      sub_1C8D02BA4(v45, v46, v47, v48, v3);
      v49 = OUTLINED_FUNCTION_34_1();
      sub_1C8D02BA4(v49, v50, v51, v52, v3);
      return v2 & 1;
    }

    goto LABEL_14;
  }

  if ((v8 & 0x3000000000000000) != 0x2000000000000000)
  {
LABEL_14:
    OUTLINED_FUNCTION_18();
    sub_1C8D02BA4(v5, v4, *&v7, *&v6, v82);
    v83 = OUTLINED_FUNCTION_26();
    sub_1C8D02BA4(v83, v84, v85, v86, v2);
    sub_1C8D02BA4(v5, v4, *&v7, *&v6, sub_1C8CE7B78);
    v87 = OUTLINED_FUNCTION_26();
    sub_1C8D02BA4(v87, v88, v89, v90, sub_1C8CE7B78);
    return 0;
  }

  OUTLINED_FUNCTION_18();
  sub_1C8D02BA4(v9, v8, *&v10, *&v11, v54);
  v55 = OUTLINED_FUNCTION_34_1();
  sub_1C8D02BA4(v55, v56, v57, v58, v2);
  v59 = OUTLINED_FUNCTION_34_1();
  sub_1C8D02BA4(v59, v60, v61, v62, v2);
  v63 = OUTLINED_FUNCTION_26();
  sub_1C8D02BA4(v63, v64, v65, v66, v2);
  v67 = OUTLINED_FUNCTION_362();
  MEMORY[0x1CCA7F9A0](v67);
  OUTLINED_FUNCTION_161();
  sub_1C8D02BA4(v5, v4, *&v7, *&v6, v68);
  v69 = OUTLINED_FUNCTION_26();
  sub_1C8D02BA4(v69, v70, v71, v72, v3);
  v73 = OUTLINED_FUNCTION_26();
  sub_1C8D02BA4(v73, v74, v75, v76, v3);
  v77 = OUTLINED_FUNCTION_34_1();
  sub_1C8D02BA4(v77, v78, v79, v80, v3);
  v81 = v7 == v10;
  if (v6 != v11)
  {
    v81 = 0;
  }

  return (v2 & 1) != 0 && v81;
}

uint64_t sub_1C8CF7B84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8CF7C90(char a1)
{
  if (!a1)
  {
    return 0x656C746974627573;
  }

  if (a1 == 1)
  {
    return 0x74786554746C61;
  }

  return 0x6567616D69;
}

uint64_t sub_1C8CF7CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656761726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xED0000657A695364)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8CF7DB4(char a1)
{
  if (a1)
  {
    return 0x6572726566657270;
  }

  else
  {
    return 0x656761726F7473;
  }
}

uint64_t sub_1C8CF7DF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_319(0x656761726F7473, 0xE700000000000000, a1);
    OUTLINED_FUNCTION_420();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CF7E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02CD4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF7EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02CD4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8CF7EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF7B84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF7F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02BD8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF7F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02BD8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8CF7F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF7CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF7FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02C2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF7FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02C2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8CF802C(uint64_t a1)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](0);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02D28(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF80A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D02D28(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t DisplayRepresentation.ResolvingRequest.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312610, &qword_1C9066A20);
  OUTLINED_FUNCTION_11();
  v45 = v3;
  v46 = v2;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  v44 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312618, &qword_1C9066A28);
  OUTLINED_FUNCTION_11();
  v43 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_86();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312620, &qword_1C9066A30);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312628, &qword_1C9066A38);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38();
  v11 = *(v0 + 8);
  v12 = OUTLINED_FUNCTION_93();
  v14 = OUTLINED_FUNCTION_217(v12, v13);
  sub_1C8D02BD8(v14, v15, v16);
  v17 = sub_1C9064E1C();
  v20 = (v11 >> 60) & 3;
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1C8D02CD4(v17, v18, v19);
      v21 = v48;
      OUTLINED_FUNCTION_380();
      v22 = sub_1C9064ACC();
      sub_1C8D02804(v22, v23, v24);
      v25 = v43;
      sub_1C9064B8C();
      OUTLINED_FUNCTION_396();
      v27 = v1;
    }

    else
    {
      sub_1C8D02C2C(v17, v18, v19);
      v21 = v48;
      OUTLINED_FUNCTION_380();
      v36 = sub_1C9064ACC();
      sub_1C8D02804(v36, v37, v38);
      v25 = v46;
      sub_1C9064B8C();
      if (!v47)
      {
        OUTLINED_FUNCTION_275();
        sub_1C8D02C80(v39, v40, v41);
        OUTLINED_FUNCTION_133_0();
        sub_1C9064B8C();
      }

      v26 = *(v45 + 8);
      v27 = v44;
    }

    v26(v27, v25);
    v33 = OUTLINED_FUNCTION_129();
    v35 = v21;
  }

  else
  {
    sub_1C8D02D28(v17, v18, v19);
    OUTLINED_FUNCTION_380();
    v28 = sub_1C9064ACC();
    sub_1C8D02804(v28, v29, v30);
    sub_1C9064B8C();
    v31 = OUTLINED_FUNCTION_241();
    v32(v31, v8);
    v33 = OUTLINED_FUNCTION_129();
    v35 = v48;
  }

  return v34(v33, v35);
}

uint64_t DisplayRepresentation.ResolvingRequest.hash(into:)()
{
  v1 = (v0[1] >> 60) & 3;
  if (!v1)
  {
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_93();
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_93();
LABEL_5:

    return sub_1C9061F4C();
  }

  v4 = v0[2];
  v3 = v0[3];
  MEMORY[0x1CCA82810](2);
  OUTLINED_FUNCTION_93();
  sub_1C9061F4C();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1CCA82830](v5);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1CCA82830](v6);
}

uint64_t DisplayRepresentation.ResolvingRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  DisplayRepresentation.ResolvingRequest.hash(into:)();
  return sub_1C9064DBC();
}

void DisplayRepresentation.ResolvingRequest.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v93 = v0;
  v3 = v2;
  v91 = v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312658, &qword_1C9066A40);
  OUTLINED_FUNCTION_11();
  v86 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_320(v7);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312660, &qword_1C9066A48);
  OUTLINED_FUNCTION_11();
  v90 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312668, &qword_1C9066A50);
  OUTLINED_FUNCTION_11();
  v87 = v10;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_86();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312670, &qword_1C9066A58);
  OUTLINED_FUNCTION_11();
  v14 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  v92 = v3;
  v18 = OUTLINED_FUNCTION_332();
  v20 = OUTLINED_FUNCTION_217(v18, v19);
  sub_1C8D02BD8(v20, v21, v22);
  v23 = v93;
  sub_1C9064DEC();
  if (v23)
  {
    goto LABEL_10;
  }

  v85 = v1;
  v93 = v14;
  v24 = sub_1C9064A9C();
  sub_1C8D021C0(v24, 0);
  if (v27 == v28 >> 1)
  {
    goto LABEL_9;
  }

  v83 = 0;
  v84 = v17;
  if (v27 < (v28 >> 1))
  {
    v29 = *(v26 + v27);
    sub_1C8CACD24(v27 + 1, v28 >> 1, v25, v26, v27, v28);
    v31 = v30;
    v33 = v32;
    v34 = swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (v29)
      {
        if (v29 == 1)
        {
          OUTLINED_FUNCTION_385();
          sub_1C8D02CD4(v37, v38, v39);
          v40 = v83;
          v41 = sub_1C906498C();
          v44 = v91;
          if (v40)
          {
            v45 = OUTLINED_FUNCTION_241();
LABEL_15:
            v46(v45, v12);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_1C8D02858(v41, v42, v43);
          OUTLINED_FUNCTION_380();
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v67 = OUTLINED_FUNCTION_148();
          v68(v67);
          v69 = OUTLINED_FUNCTION_241();
          v70(v69, v12);
          v71 = v95;
          v72 = v96 | 0x1000000000000000;
          v73 = 0uLL;
        }

        else
        {
          LOBYTE(v95) = 2;
          sub_1C8D02C2C(v34, v35, v36);
          v59 = v83;
          v60 = sub_1C906498C();
          v44 = v91;
          if (v59)
          {
            v63 = OUTLINED_FUNCTION_334();
            v64(v63);
            swift_unknownObjectRelease();
            v53 = v92;
            goto LABEL_11;
          }

          LOBYTE(v94) = 0;
          sub_1C8D02858(v60, v61, v62);
          sub_1C9064A6C();
          v66 = v93;
          v71 = v95;
          v77 = v96;
          OUTLINED_FUNCTION_275();
          sub_1C8D04C24(v78, v79, v80);
          OUTLINED_FUNCTION_132();
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_396();
          v81 = OUTLINED_FUNCTION_136();
          v82(v81);
          (*(v66 + 8))(v84, v12);
          v73 = v94;
          v72 = v77 | 0x2000000000000000;
        }

        v76 = v92;
      }

      else
      {
        LOBYTE(v95) = 0;
        sub_1C8D02D28(v34, v35, v36);
        v54 = v84;
        v55 = v83;
        v56 = sub_1C906498C();
        if (v55)
        {
          v46 = *(v93 + 8);
          v45 = v54;
          goto LABEL_15;
        }

        sub_1C8D02858(v56, v57, v58);
        sub_1C9064A6C();
        v65 = v93;
        swift_unknownObjectRelease();
        v74 = OUTLINED_FUNCTION_125();
        v75(v74);
        (*(v65 + 8))(v54, v12);
        v71 = v95;
        v72 = v96;
        v73 = 0uLL;
        v76 = v92;
        v44 = v91;
      }

      *v44 = v71;
      *(v44 + 8) = v72;
      *(v44 + 16) = v73;
      __swift_destroy_boxed_opaque_existential_1(v76);
      goto LABEL_12;
    }

LABEL_9:
    sub_1C90647DC();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v48 = &type metadata for DisplayRepresentation.ResolvingRequest;
    v49 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v49);
    OUTLINED_FUNCTION_10_0();
    (*(v50 + 104))(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = OUTLINED_FUNCTION_136();
    v52(v51);
LABEL_10:
    v53 = v92;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_12:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_198();
    return;
  }

  __break(1u);
}

uint64_t sub_1C8CF8D3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_319(1635017060, 0xE400000000000000, a1) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_319(0x6C6F626D7973, 0xE600000000000000, a1) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701603686 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_319(1701603686, 0xE400000000000000, a1);
      OUTLINED_FUNCTION_420();
      if (a1)
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

uint64_t sub_1C8CF8E28(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](a1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF8E68(char a1)
{
  if (!a1)
  {
    return 1635017060;
  }

  if (a1 == 1)
  {
    return 0x6C6F626D7973;
  }

  return 1701603686;
}

uint64_t sub_1C8CF8EE8(uint64_t a1)
{
  sub_1C9064D7C();
  DisplayRepresentation.ResolvingRequest.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF8F34(uint64_t a1)
{
  sub_1C9064D7C();
  v1 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF8F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF8D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF8FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D04C98(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF8FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D04C98(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8CF9028(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8CF90F0(char a1)
{
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](a1 & 1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CF9130(char a1)
{
  if (a1)
  {
    return 0x6B72616D6B6F6F62;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1C8CF9160()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3128C0, &qword_1C9068CA8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_72();
  v3 = OUTLINED_FUNCTION_208_0();
  v5 = OUTLINED_FUNCTION_217(v3, v4);
  sub_1C8D06D8C(v5, v6, v7);
  OUTLINED_FUNCTION_358(&type metadata for DisplayRepresentation.Image.SecurityScopedURL.CodingKeys);
  sub_1C9061EBC();
  OUTLINED_FUNCTION_21_3();
  sub_1C8CD23F0(v8, v9, MEMORY[0x1E6968FB8]);
  sub_1C9064B8C();
  if (!v1)
  {
    v10 = (v0 + *(type metadata accessor for DisplayRepresentation.Image.SecurityScopedURL(0) + 20));
    v17 = *v10;
    v18 = v10[1];
    v11 = sub_1C8D04F90(*v10, v18);
    sub_1C8D02AA8(v11, v12, v13);
    sub_1C9064B0C();
    sub_1C8CE7BD0(v17, v18);
  }

  v14 = OUTLINED_FUNCTION_93();
  return v15(v14);
}

void sub_1C8CF9300()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3128B8, &qword_1C9068CA0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_86();
  v6 = type metadata accessor for DisplayRepresentation.Image.SecurityScopedURL(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v8 = OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8D06D8C(v8, v9, v10);
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v20) = 0;
    OUTLINED_FUNCTION_21_3();
    sub_1C8CD23F0(v11, v12, MEMORY[0x1E6968FD0]);
    sub_1C9064A6C();
    v13 = OUTLINED_FUNCTION_200_0();
    v14(v13);
    OUTLINED_FUNCTION_275();
    sub_1C8D02AFC(v15, v16, v17);
    OUTLINED_FUNCTION_132();
    sub_1C90649EC();
    v18 = OUTLINED_FUNCTION_222();
    v19(v18);
    *(v1 + *(v6 + 20)) = v20;
    OUTLINED_FUNCTION_152();
    sub_1C8D02900();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_55();
    sub_1C8D02958();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CF95D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF9028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF9600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D06D8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CF963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D06D8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void DisplayRepresentation.Image.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v47 = type metadata accessor for DisplayRepresentation.Image.SecurityScopedURL(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312680, &qword_1C9066A60);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_102();
  type metadata accessor for DisplayRepresentation.Image(v8);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = OUTLINED_FUNCTION_293();
  v15 = OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8D04C98(v15, v16, v17);
  sub_1C9064DEC();
  if (v0)
  {
    goto LABEL_9;
  }

  v46 = v12;
  v18 = sub_1C9064A9C();
  if (!*(v18 + 16))
  {

    sub_1C90647DC();
    swift_allocError();
    v29 = v28;
    sub_1C906499C();
    sub_1C90647CC();
    OUTLINED_FUNCTION_10_0();
    (*(v30 + 104))(v29);
    swift_willThrow();
    v31 = OUTLINED_FUNCTION_203();
    v32(v31);
LABEL_9:
    v37 = v2;
    goto LABEL_10;
  }

  v19 = *(v18 + 32);

  if (v19)
  {
    if (v19 == 1)
    {
      OUTLINED_FUNCTION_275();
      sub_1C8D04CEC(v23, v24, v25);
      OUTLINED_FUNCTION_132();
      sub_1C9064A6C();
      v26 = OUTLINED_FUNCTION_203();
      v27(v26);
      *v12 = v49;
      v12[1] = v50;
    }

    else
    {
      OUTLINED_FUNCTION_180();
      sub_1C8CD23F0(v35, v36, &unk_1C90687C8);
      sub_1C9064A6C();
      v38 = (v6 + *(v47 + 20));
      v39 = v38[1];
      if (v39 >> 60 != 15)
      {
        v48 = *v38;
        sub_1C8CE9144(*v38, v39);
        v40 = sub_1C9061DDC();
        OUTLINED_FUNCTION_93();
        v41 = sub_1C9061EFC();
        v42 = OUTLINED_FUNCTION_181();
        MEMORY[0x1CCA82A40](v42);

        sub_1C8CE7BD0(v48, v39);
      }

      v43 = OUTLINED_FUNCTION_203();
      v44(v43);
      sub_1C9061EBC();
      OUTLINED_FUNCTION_13_1();
      (*(v45 + 16))(v46, v6);
      OUTLINED_FUNCTION_55();
      sub_1C8D02958();
    }
  }

  else
  {
    sub_1C8D02AFC(v20, v21, v22);
    OUTLINED_FUNCTION_132();
    sub_1C9064A6C();
    v33 = OUTLINED_FUNCTION_203();
    v34(v33);
    *v12 = v49;
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_181();
  sub_1C8D04DE8();
  v37 = v2;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.Image.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v1 = OUTLINED_FUNCTION_257();
  v50 = type metadata accessor for DisplayRepresentation.Image.SecurityScopedURL(v1);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_0();
  v53 = v3;
  OUTLINED_FUNCTION_111();
  v4 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147();
  v52 = v11;
  v12 = OUTLINED_FUNCTION_111();
  type metadata accessor for DisplayRepresentation.Image(v12);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312688, &qword_1C9066A68);
  OUTLINED_FUNCTION_11();
  v54 = v14;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38();
  v16 = OUTLINED_FUNCTION_208_0();
  v18 = OUTLINED_FUNCTION_217(v16, v17);
  sub_1C8D04C98(v18, v19, v20);
  sub_1C9064E1C();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_210();
  sub_1C8D02900();
  OUTLINED_FUNCTION_245();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *(v0 + 16);
      v25 = *(v0 + 24);
      OUTLINED_FUNCTION_275();
      sub_1C8D04D40(v26, v27, v28);
      sub_1C9064B8C();
      v29 = OUTLINED_FUNCTION_129();
      v30(v29, v54);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_268();
      v36(v35);
      v37 = *(v51 + 16);
      v38 = OUTLINED_FUNCTION_292();
      v37(v38);
      (v37)(v53, v9, v4);
      v39 = sub_1C9061DDC();
      v40 = MEMORY[0x1CCA82A50]();

      if (v40)
      {
        v41 = sub_1C9061F3C();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xF000000000000000;
      }

      v44 = *(v51 + 8);
      v44(v9, v4);
      v45 = (v53 + *(v50 + 20));
      *v45 = v41;
      v45[1] = v43;
      OUTLINED_FUNCTION_180();
      sub_1C8CD23F0(v46, v47, &unk_1C90687A0);
      sub_1C9064B8C();
      OUTLINED_FUNCTION_55();
      sub_1C8D02958();
      v44(v52, v4);
      v48 = OUTLINED_FUNCTION_129();
      v49(v48, v54);
    }
  }

  else
  {
    sub_1C8D02AA8(EnumCaseMultiPayload, v22, v23);
    sub_1C9064B8C();
    v31 = OUTLINED_FUNCTION_129();
    v32(v31, v54);
    v33 = OUTLINED_FUNCTION_287();
    sub_1C8CE7B78(v33, v34);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_290();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_86();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_142();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_233();
  v15 = v2[1];
  *v4 = *v2;
  *(v4 + 8) = v15;
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CC1D3C();

  DisplayRepresentation.DisplayValue<>.init(optionalProtobuf:)();
  if (v0)
  {
    OUTLINED_FUNCTION_49_0();
    sub_1C8D02958();
  }

  else
  {
    v16 = type metadata accessor for DisplayRepresentation(0);
    sub_1C8CB21A0();
    sub_1C8CC1D3C();
    DisplayRepresentation.DisplayValue<>.init(optionalProtobuf:)();
    *(v4 + 16) = OUTLINED_FUNCTION_374();
    *(v4 + 32) = v17;
    sub_1C8CC1D3C();
    DisplayRepresentation.DisplayValue<>.init(optionalProtobuf:)();
    *(v4 + 40) = OUTLINED_FUNCTION_374();
    *(v4 + 56) = v18;
    v19 = sub_1C8CC1D3C();
    sub_1C8D04D94(v19, v20, v21);
    sub_1C906350C();
    v22 = v16;
    v23 = (v4 + *(v16 + 32));
    *v23 = v25;
    v23[1] = v26;
    v24 = v2[2];

    OUTLINED_FUNCTION_49_0();
    sub_1C8D02958();
    *(v4 + *(v22 + 36)) = v24;
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.DisplayValue<>.init(optionalProtobuf:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v53 = v4;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_147();
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_102();
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(v14);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_147();
  v18 = OUTLINED_FUNCTION_325();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_35();
  v23 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(v22);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_269_0(v27);
  OUTLINED_FUNCTION_366();
  sub_1C8CC1D3C();
  v28 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v28, v29, v23);
  if (v37)
  {
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v30, v31);
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v32, v33);
    v34 = 1;
    v36 = v52;
    v35 = v53;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v35, v34, 1, v36);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_211();
  sub_1C8D04DE8();
  OUTLINED_FUNCTION_127();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v1, 1, v15);
  if (v37)
  {
    sub_1C8CBE41C(v1, &qword_1EC3126B0);
    v38 = OUTLINED_FUNCTION_181();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_4_3();
    v42 = sub_1C8D07450(v40, &unk_1EC3126B8, &unk_1C9066A98, v41);
    OUTLINED_FUNCTION_213(v42);
    *v43 = v15;
    OUTLINED_FUNCTION_10_0();
    (*(v44 + 104))();
    swift_willThrow();
    sub_1C8CBE41C(v3, &qword_1EC3126A8);
    OUTLINED_FUNCTION_76();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_112();
    sub_1C8D02900();
    OUTLINED_FUNCTION_93();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      sub_1C8CBE41C(v3, &qword_1EC3126A8);
      OUTLINED_FUNCTION_75();
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_22_2();
      sub_1C8D04DE8();
      v46 = *v50;
      v47 = v50[1];
      v48 = OUTLINED_FUNCTION_94();
      sub_1C8CE9144(v48, v49);
      OUTLINED_FUNCTION_9_3();
      sub_1C8D02958();
      *v51 = v46;
      v51[1] = v47;
      v36 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_11;
    }

    sub_1C8D04DE8();
    OUTLINED_FUNCTION_159();
    sub_1C8D02900();
    DisplayRepresentation.Image.init(protobuf:)();
    sub_1C8CBE41C(v3, &qword_1EC3126A8);
    OUTLINED_FUNCTION_10_1();
    sub_1C8D02958();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_76();
    if (!v0)
    {
      v36 = v52;
      swift_storeEnumTagMultiPayload();
      sub_1C8CB21A0();
LABEL_11:
      v35 = v53;
      sub_1C8CB21A0();
      v34 = 0;
      goto LABEL_12;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v3 = OUTLINED_FUNCTION_399();
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(v3);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v49 = v6;
  v7 = OUTLINED_FUNCTION_111();
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(v7);
  v9 = OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_269_0(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_86();
  v50 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_181();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_35();
  v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(v19);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_402();
  v22 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v22, v23, v20);
  if (v31)
  {
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v24, v25);
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v26, v27);
    *v0 = 0;
    *(v0 + 8) = 0;
    v28 = -1;
  }

  else
  {
    OUTLINED_FUNCTION_334();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_327();
    sub_1C8CC1D3C();
    v29 = OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_108_2(v29, v30, v50);
    if (v31)
    {
      sub_1C8CBE41C(v2, &qword_1EC3126C8);
      v32 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_116();
      v38 = sub_1C8D07450(v34, v35, v36, v37);
      OUTLINED_FUNCTION_89(v38);
      *v39 = v50;
      OUTLINED_FUNCTION_10_0();
      (*(v40 + 104))();
      swift_willThrow();
      sub_1C8CBE41C(v1, &qword_1EC3126A0);
      OUTLINED_FUNCTION_153_1();
      sub_1C8D02958();
      goto LABEL_8;
    }

    sub_1C8CBE41C(v1, &qword_1EC3126A0);
    OUTLINED_FUNCTION_153_1();
    sub_1C8D02958();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_116();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_117();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_22_2();
      sub_1C8D04DE8();
      v44 = *v48;
      v45 = v48[1];
      v46 = OUTLINED_FUNCTION_94();
      sub_1C8CE9144(v46, v47);
      OUTLINED_FUNCTION_9_3();
      sub_1C8D02958();
      *v0 = v44;
      *(v0 + 8) = v45;
      *(v0 + 16) = 0;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_159();
    sub_1C8D04DE8();
    v43 = *v49;
    v42 = v49[1];

    OUTLINED_FUNCTION_174();
    sub_1C8D02958();
    *v0 = v43;
    *(v0 + 8) = v42;
    v28 = 1;
  }

  *(v0 + 16) = v28;
LABEL_8:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v3 = OUTLINED_FUNCTION_399();
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(v3);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v49 = v6;
  v7 = OUTLINED_FUNCTION_111();
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(v7);
  v9 = OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_269_0(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_86();
  v50 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_181();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_35();
  v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(v19);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_402();
  v22 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v22, v23, v20);
  if (v31)
  {
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v24, v25);
    OUTLINED_FUNCTION_116();
    sub_1C8CBE41C(v26, v27);
    *v0 = 0;
    *(v0 + 8) = 0;
    v28 = -1;
  }

  else
  {
    OUTLINED_FUNCTION_334();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_327();
    sub_1C8CC1D3C();
    v29 = OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_108_2(v29, v30, v50);
    if (v31)
    {
      sub_1C8CBE41C(v2, &qword_1EC3126E0);
      v32 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_116();
      v38 = sub_1C8D07450(v34, v35, v36, v37);
      OUTLINED_FUNCTION_89(v38);
      *v39 = v50;
      OUTLINED_FUNCTION_10_0();
      (*(v40 + 104))();
      swift_willThrow();
      sub_1C8CBE41C(v1, &qword_1EC312698);
      OUTLINED_FUNCTION_153_1();
      sub_1C8D02958();
      goto LABEL_8;
    }

    sub_1C8CBE41C(v1, &qword_1EC312698);
    OUTLINED_FUNCTION_153_1();
    sub_1C8D02958();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_116();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_117();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_22_2();
      sub_1C8D04DE8();
      v44 = *v48;
      v45 = v48[1];
      v46 = OUTLINED_FUNCTION_94();
      sub_1C8CE9144(v46, v47);
      OUTLINED_FUNCTION_9_3();
      sub_1C8D02958();
      *v0 = v44;
      *(v0 + 8) = v45;
      *(v0 + 16) = 0;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_159();
    sub_1C8D04DE8();
    v43 = *v49;
    v42 = v49[1];

    OUTLINED_FUNCTION_173();
    sub_1C8D02958();
    *v0 = v43;
    *(v0 + 8) = v42;
    v28 = 1;
  }

  *(v0 + 16) = v28;
LABEL_8:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}