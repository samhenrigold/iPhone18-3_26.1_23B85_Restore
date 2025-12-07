_BYTE *storeEnumTagSinglePayload for IntentResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D82298()
{
  result = qword_27D044C78;
  if (!qword_27D044C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044C78);
  }

  return result;
}

unint64_t sub_222D822F0()
{
  result = qword_280FEAAB0;
  if (!qword_280FEAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEAAB0);
  }

  return result;
}

unint64_t sub_222D82348()
{
  result = qword_280FEAAB8;
  if (!qword_280FEAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEAAB8);
  }

  return result;
}

unint64_t sub_222D8239C()
{
  result = qword_280FEADA0;
  if (!qword_280FEADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEADA0);
  }

  return result;
}

uint64_t IntentStart.intentType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IntentStart.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  sub_222D834DC();
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t IntentStart.__allocating_init(intentType:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_1();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  sub_222D834DC();
  OUTLINED_FUNCTION_1();
  (*(v8 + 32))(v6 + v7, a3);
  return v6;
}

uint64_t IntentStart.init(intentType:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  sub_222D834DC();
  OUTLINED_FUNCTION_1();
  (*(v6 + 32))(v3 + v5, a3);
  return v3;
}

uint64_t IntentStart.__allocating_init(intent:timestamp:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1();
  v4 = swift_allocObject();
  IntentStart.init(intent:timestamp:)(a1, a2);
  return v4;
}

unint64_t sub_222D825D4()
{
  sub_222D8365C();

  MEMORY[0x223DCC4E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x223DCC4E0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_222D834DC();
  sub_222D73904(&qword_280FEA498, MEMORY[0x277CC95B8]);
  v1 = sub_222D8376C();
  MEMORY[0x223DCC4E0](v1);

  MEMORY[0x223DCC4E0](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_222D826DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
  if (v4 || (sub_222D8378C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_222D8378C();

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

uint64_t sub_222D827F4(char a1)
{
  sub_222D837EC();
  MEMORY[0x223DCC740](a1 & 1);
  return sub_222D8380C();
}

uint64_t sub_222D8283C(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x7954746E65746E69;
  }
}

uint64_t sub_222D828A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D826DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D828C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D827B4();
  *a1 = result;
  return result;
}

uint64_t sub_222D828F0(uint64_t a1)
{
  v2 = sub_222D82BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D8292C(uint64_t a1)
{
  v2 = sub_222D82BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntentStart.deinit()
{

  v1 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  sub_222D834DC();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t IntentStart.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp;
  sub_222D834DC();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_222D82A64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044C80, &qword_222D85AC0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D82BF8();
  sub_222D8382C();
  v10[15] = 0;
  sub_222D8374C();
  if (!v1)
  {
    v10[14] = 1;
    sub_222D834DC();
    sub_222D73904(&qword_280FEADB0, MEMORY[0x277CC9580]);
    sub_222D8375C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_222D82BF8()
{
  result = qword_280FEABB0;
  if (!qword_280FEABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEABB0);
  }

  return result;
}

uint64_t IntentStart.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_1();
  v2 = swift_allocObject();
  IntentStart.init(from:)(a1);
  return v2;
}

uint64_t IntentStart.init(from:)(void *a1)
{
  v3 = sub_222D834DC();
  OUTLINED_FUNCTION_0();
  v16 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D044C88, &qword_222D85AC8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_222D82BF8();
  sub_222D8381C();
  if (v1)
  {
    v11 = v18;
    type metadata accessor for IntentStart(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    v9 = sub_222D836FC();
    v11 = v18;
    *(v18 + 16) = v9;
    *(v11 + 24) = v12;
    v19 = 1;
    sub_222D73904(&qword_280FEA4A0, MEMORY[0x277CC95A0]);
    sub_222D8370C();
    v13 = OUTLINED_FUNCTION_2_5();
    v14(v13);
    (*(v16 + 32))(v11 + OBJC_IVAR____TtC16SiriIntentEvents11IntentStart_timestamp, v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t sub_222D82F44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = IntentStart.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222D82FC0(uint64_t a1)
{
  result = sub_222D834DC();
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

_BYTE *storeEnumTagSinglePayload for IntentStart.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D83214()
{
  result = qword_27D044C90;
  if (!qword_27D044C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D044C90);
  }

  return result;
}

unint64_t sub_222D8326C()
{
  result = qword_280FEABA0;
  if (!qword_280FEABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEABA0);
  }

  return result;
}

unint64_t sub_222D832C4()
{
  result = qword_280FEABA8;
  if (!qword_280FEABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FEABA8);
  }

  return result;
}

uint64_t sub_222D83318()
{
  v0 = sub_222D8353C();
  __swift_allocate_value_buffer(v0, qword_280FEADC0);
  __swift_project_value_buffer(v0, qword_280FEADC0);
  return sub_222D8352C();
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