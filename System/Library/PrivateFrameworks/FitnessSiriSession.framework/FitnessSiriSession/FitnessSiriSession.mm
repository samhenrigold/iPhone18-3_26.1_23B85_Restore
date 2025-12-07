unint64_t sub_24B7A11E8()
{
  result = qword_2810E8468;
  if (!qword_2810E8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8468);
  }

  return result;
}

uint64_t sub_24B7A128C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24B7A12D8()
{

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_24B7A1320()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B7A1390(uint64_t a1)
{
  v2 = sub_24B7A199C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A13CC(uint64_t a1)
{
  v2 = sub_24B7A199C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7A1408()
{
  if (*v0)
  {
    return 0x657669746361;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_24B7A1438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B7A857C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B7A857C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B7A151C(uint64_t a1)
{
  v2 = sub_24B7A1948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A1558(uint64_t a1)
{
  v2 = sub_24B7A1948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7A1594(uint64_t a1)
{
  v2 = sub_24B7A19F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A15D0(uint64_t a1)
{
  v2 = sub_24B7A19F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056180, &qword_24B7A87E0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056188, &qword_24B7A87E8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056190, &qword_24B7A87F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A1948();
  sub_24B7A85DC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24B7A199C();
    v14 = v18;
    sub_24B7A853C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24B7A19F0();
    sub_24B7A853C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B7A1948()
{
  result = qword_27F056198;
  if (!qword_27F056198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056198);
  }

  return result;
}

unint64_t sub_24B7A199C()
{
  result = qword_27F0561A0;
  if (!qword_27F0561A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0561A0);
  }

  return result;
}

unint64_t sub_24B7A19F0()
{
  result = qword_27F0561A8;
  if (!qword_27F0561A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0561A8);
  }

  return result;
}

uint64_t SiriState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0561B0, &qword_24B7A87F8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0561B8, &qword_24B7A8800);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0561C0, &qword_24B7A8808);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A1948();
  v13 = v31;
  sub_24B7A85CC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_24B7A852C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_24B7A84BC();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0561C8, &qword_24B7A8810);
    *v21 = &type metadata for SiriState;
    sub_24B7A84EC();
    sub_24B7A84AC();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_24B7A199C();
    sub_24B7A84DC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_24B7A19F0();
    sub_24B7A84DC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
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

uint64_t sub_24B7A1EE4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SiriState.hashValue.getter()
{
  v1 = *v0;
  sub_24B7A858C();
  MEMORY[0x24C249C10](v1);
  return sub_24B7A85BC();
}

uint64_t sub_24B7A1FBC()
{
  v1 = *v0;
  sub_24B7A858C();
  MEMORY[0x24C249C10](v1);
  return sub_24B7A85BC();
}

uint64_t sub_24B7A2004(uint64_t a1)
{
  v2 = *v1;
  sub_24B7A858C();
  MEMORY[0x24C249C10](v2);
  return sub_24B7A85BC();
}

unint64_t sub_24B7A204C()
{
  result = qword_27F0561D0;
  if (!qword_27F0561D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0561D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriSessionFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriSessionFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B7A2228()
{
  result = qword_27F0561D8;
  if (!qword_27F0561D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0561D8);
  }

  return result;
}

unint64_t sub_24B7A2280()
{
  result = qword_27F0561E0;
  if (!qword_27F0561E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0561E0);
  }

  return result;
}

unint64_t sub_24B7A22D8()
{
  result = qword_27F0561E8;
  if (!qword_27F0561E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0561E8);
  }

  return result;
}

unint64_t sub_24B7A2330()
{
  result = qword_27F0561F0;
  if (!qword_27F0561F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0561F0);
  }

  return result;
}

unint64_t sub_24B7A2388()
{
  result = qword_27F0561F8;
  if (!qword_27F0561F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0561F8);
  }

  return result;
}

unint64_t sub_24B7A23E0()
{
  result = qword_27F056200;
  if (!qword_27F056200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056200);
  }

  return result;
}

unint64_t sub_24B7A2438()
{
  result = qword_27F056208;
  if (!qword_27F056208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriConstants(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t SiriBeginSessionCriteria.init(healthKitActivityType:candidates:personalizationMethod:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

unint64_t sub_24B7A2634()
{
  v1 = 0x74616469646E6163;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_24B7A269C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7A39B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7A26D0(uint64_t a1)
{
  v2 = sub_24B7A2968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A270C(uint64_t a1)
{
  v2 = sub_24B7A2968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriBeginSessionCriteria.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056210, &qword_24B7A8BC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v11 = *(v1 + 16);
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A2968();
  sub_24B7A85DC();
  v18 = 0;
  v7 = v12;
  sub_24B7A854C();
  if (!v7)
  {
    v8 = v14;
    v13 = v11;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056220, &qword_24B7A8BC8);
    sub_24B7A2D1C(&qword_27F056228, sub_24B7A2A04, MEMORY[0x277D83B50]);
    sub_24B7A856C();
    v16 = v8;
    v15 = 2;
    sub_24B7A2A58();
    sub_24B7A856C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B7A2968()
{
  result = qword_27F056218;
  if (!qword_27F056218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056218);
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

unint64_t sub_24B7A2A04()
{
  result = qword_27F056230;
  if (!qword_27F056230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056230);
  }

  return result;
}

unint64_t sub_24B7A2A58()
{
  result = qword_27F056238;
  if (!qword_27F056238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056238);
  }

  return result;
}

uint64_t SiriBeginSessionCriteria.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056240, &qword_24B7A8BD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A2968();
  sub_24B7A85CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v9 = sub_24B7A84FC();
  v16 = v10;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056220, &qword_24B7A8BC8);
  v19 = 1;
  sub_24B7A2D1C(&qword_27F056248, sub_24B7A2D94, MEMORY[0x277D83B70]);
  sub_24B7A851C();
  v12 = v15[1];
  v17 = 2;
  sub_24B7A2DE8();
  sub_24B7A851C();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  *a2 = v11;
  *(a2 + 8) = v16 & 1;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B7A2D1C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F056220, &qword_24B7A8BC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B7A2D94()
{
  result = qword_27F056250;
  if (!qword_27F056250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056250);
  }

  return result;
}

unint64_t sub_24B7A2DE8()
{
  result = qword_27F056258;
  if (!qword_27F056258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056258);
  }

  return result;
}

uint64_t sub_24B7A2E70(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v31 = a2 + 56;
  v28 = v7;
  v29 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v30 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    sub_24B7A858C();

    sub_24B7A840C();
    sub_24B7A840C();

    v15 = sub_24B7A85BC();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v31 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_43:

      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v21 = *(a2 + 48) + 24 * v17;
      v22 = *(v21 + 16);
      v23 = *v21 == v13 && *(v21 + 8) == v12;
      if (!v23 && (sub_24B7A857C() & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v22)
      {
        break;
      }

      v24 = 0xE500000000000000;
      v25 = 0x6E61656C63;
      if (!v14)
      {
        goto LABEL_15;
      }

LABEL_31:
      if (v14 == 1)
      {
        v26 = 0x746963696C707865;
      }

      else
      {
        v26 = 0x6669636570736E75;
      }

      if (v14 == 1)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xEB00000000646569;
      }

      if (v25 == v26)
      {
        goto LABEL_16;
      }

LABEL_17:
      v20 = sub_24B7A857C();

      if (v20)
      {
        goto LABEL_40;
      }

LABEL_18:
      v17 = (v17 + 1) & v18;
      if (((*(v31 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (v22 == 1)
    {
      v24 = 0xE800000000000000;
      v25 = 0x746963696C707865;
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

    v25 = 0x6669636570736E75;
    v24 = 0xEB00000000646569;
    if (v14)
    {
      goto LABEL_31;
    }

LABEL_15:
    v19 = 0xE500000000000000;
    if (v25 != 0x6E61656C63)
    {
      goto LABEL_17;
    }

LABEL_16:
    if (v24 != v19)
    {
      goto LABEL_17;
    }

LABEL_40:

    v7 = v28;
    result = v29;
    v6 = v30;
  }

  while (v30);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t SiriBeginSessionCriteria.hash(into:)(__int128 *a1)
{
  v3 = v1[2];
  if (*(v1 + 8) == 1)
  {
    sub_24B7A85AC();
  }

  else
  {
    v4 = *v1;
    sub_24B7A85AC();
    MEMORY[0x24C249C10](v4);
  }

  sub_24B7A33DC(a1, v3);
  sub_24B7A840C();
}

uint64_t SiriBeginSessionCriteria.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_24B7A858C();
  sub_24B7A85AC();
  if (v2 != 1)
  {
    MEMORY[0x24C249C10](v1);
  }

  sub_24B7A33DC(v5, v3);
  sub_24B7A840C();

  return sub_24B7A85BC();
}

uint64_t sub_24B7A332C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  sub_24B7A858C();
  sub_24B7A85AC();
  if (v3 != 1)
  {
    MEMORY[0x24C249C10](v2);
  }

  sub_24B7A33DC(v6, v4);
  sub_24B7A840C();

  return sub_24B7A85BC();
}

uint64_t sub_24B7A33DC(__int128 *a1, uint64_t a2)
{
  sub_24B7A85BC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    sub_24B7A858C();

    sub_24B7A840C();
    v5 &= v5 - 1;
    sub_24B7A840C();

    v10 = sub_24B7A85BC();

    v8 ^= v10;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return MEMORY[0x24C249C10](v8);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s18FitnessSiriSession0b5BeginC8CriteriaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v4)
  {
    if (!v7)
    {
LABEL_11:
      v11 = 0;
      return v11 & 1;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_11;
    }
  }

  if ((sub_24B7A2E70(v5, v8) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*&aLast_1[8 * v6] == *&aLast_1[8 * v9])
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24B7A857C();
  }

  swift_bridgeObjectRelease_n();
  return v11 & 1;
}

unint64_t sub_24B7A364C()
{
  result = qword_27F056260;
  if (!qword_27F056260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056260);
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

uint64_t sub_24B7A36B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B7A36FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ContentRating(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentRating(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B7A38AC()
{
  result = qword_27F056268;
  if (!qword_27F056268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056268);
  }

  return result;
}

unint64_t sub_24B7A3904()
{
  result = qword_27F056270;
  if (!qword_27F056270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056270);
  }

  return result;
}

unint64_t sub_24B7A395C()
{
  result = qword_27F056278;
  if (!qword_27F056278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056278);
  }

  return result;
}

uint64_t sub_24B7A39B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000024B7A9AF0 == a2 || (sub_24B7A857C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365 || (sub_24B7A857C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B7A9AD0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B7A857C();

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

__n128 SiriSessionFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t SiriSessionFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056280, &qword_24B7A8E10);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  v16 = a4[2];
  v18 = *v4;
  v17 = v4[1];
  v19 = v4[2];
  v20 = v4[3];
  if (v16)
  {
    v53 = *(a4 + 24);
    v56 = result;
    v57 = v20;
    v52 = *(a4 + 2);
    v51 = *a4;
    v21 = v17;
    v22 = v19;
    v23 = v18;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056288, &qword_24B7A8E18);
    v25 = v24[16];
    v54 = v24[20];
    v55 = a3;
    v26 = &v12[v24[24]];
    v59 = 0;
    sub_24B7A4018();

    sub_24B7A849C();
    sub_24B7A847C();
    v27 = *MEMORY[0x277D043F0];
    v28 = sub_24B7A83FC();
    (*(*(v28 - 8) + 104))(&v12[v25], v27, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = v23;
    *(v29 + 24) = v21;
    v30 = v57;
    *(v29 + 32) = v22;
    *(v29 + 40) = v30;
    *(v29 + 48) = v51;
    *(v29 + 56) = v52 & 1;
    *(v29 + 64) = v16;
    *(v29 + 72) = v53;
    *v26 = &unk_24B7A8E28;
    *(v26 + 1) = v29;
    a3 = v55;
    v31 = v56;
    v32 = *MEMORY[0x277D043E8];
    v33 = sub_24B7A83EC();
    (*(*(v33 - 8) + 104))(&v12[v54], v32, v33);
    (*(v9 + 104))(v12, *MEMORY[0x277D043B0], v31);
    v34 = *a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_24B7A4EA0(0, v34[2] + 1, 1, v34);
    }

    v36 = v34[2];
    v35 = v34[3];
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v34 = sub_24B7A4EA0((v35 > 1), v36 + 1, 1, v34);
    }

    v15 = v12;
  }

  else
  {
    if (*a2)
    {
      return result;
    }

    *a2 = 1;
    v31 = result;
    v57 = v20;
    v38 = v17;
    v55 = v19;
    v39 = v18;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056288, &qword_24B7A8E18);
    v56 = v40[16];
    v41 = v40[20];
    v42 = &v15[v40[24]];
    v58 = 1;
    sub_24B7A4018();
    sub_24B7A849C();
    sub_24B7A847C();
    v43 = *MEMORY[0x277D043E0];
    v44 = sub_24B7A83EC();
    (*(*(v44 - 8) + 104))(&v15[v41], v43, v44);
    v45 = swift_allocObject();
    v45[2] = v39;
    v45[3] = v38;
    v46 = v57;
    v45[4] = v55;
    v45[5] = v46;
    *v42 = &unk_24B7A8E38;
    *(v42 + 1) = v45;
    v47 = *MEMORY[0x277D043F8];
    v48 = sub_24B7A83FC();
    (*(*(v48 - 8) + 104))(&v15[v56], v47, v48);
    (*(v9 + 104))(v15, *MEMORY[0x277D043B0], v31);
    v34 = *a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_24B7A4EA0(0, v34[2] + 1, 1, v34);
    }

    v36 = v34[2];
    v49 = v34[3];
    v37 = v36 + 1;
    if (v36 >= v49 >> 1)
    {
      v34 = sub_24B7A4EA0((v49 > 1), v36 + 1, 1, v34);
    }
  }

  v34[2] = v37;
  result = (*(v9 + 32))(v34 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v36, v15, v31);
  *a3 = v34;
  return result;
}

unint64_t sub_24B7A4018()
{
  result = qword_2810E8410;
  if (!qword_2810E8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8410);
  }

  return result;
}

uint64_t sub_24B7A406C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[20] = a1;
  v4[21] = sub_24B7A846C();
  v4[22] = sub_24B7A845C();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[23] = v6;
  *v6 = v4;
  v6[1] = sub_24B7A4188;

  return v8(v4 + 7);
}

uint64_t sub_24B7A4188()
{
  v2 = *v1;
  v2[24] = v0;

  v4 = sub_24B7A843C();
  v2[25] = v4;
  v2[26] = v3;
  if (v0)
  {
    v5 = sub_24B7A4910;
  }

  else
  {
    v5 = sub_24B7A42E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B7A42E8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B7A848C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B7A845C();
  v0[27] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_24B7A44C0;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_24B7A44C0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 200);
    v5 = *(v2 + 208);

    return MEMORY[0x2822009F8](sub_24B7A45D4, v4, v5);
  }

  return result;
}

uint64_t sub_24B7A45D4()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 104) & 1;
    *(v0 + 128) = *(v0 + 96);
    *(v0 + 136) = v3;
    *(v0 + 144) = v1;
    *(v0 + 152) = v2;
    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056290, &qword_24B7A8F60);
    *v4 = v0;
    v4[1] = sub_24B7A46FC;

    return MEMORY[0x282159B08](v0 + 128, v5);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24B7A46FC()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_24B7A4834, v3, v2);
}

uint64_t sub_24B7A4834(uint64_t a1)
{
  v2 = sub_24B7A845C();
  v1[27] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[28] = v3;
  *v3 = v1;
  v3[1] = sub_24B7A44C0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 12, v2, v4);
}

uint64_t sub_24B7A4910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7A4974(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 40) = v14;
  *(v8 + 48) = sub_24B7A846C();
  *(v8 + 56) = sub_24B7A845C();
  v12 = (a2 + *a2);
  v10 = swift_task_alloc();
  *(v8 + 64) = v10;
  *v10 = v8;
  v10[1] = sub_24B7A4AA8;

  return v12(v8 + 16);
}

uint64_t sub_24B7A4AA8()
{
  *(*v1 + 72) = v0;

  v3 = sub_24B7A843C();
  if (v0)
  {
    v4 = sub_24B7A4C50;
  }

  else
  {
    v4 = sub_24B7A4BEC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B7A4BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7A4C50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B7A4CB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24B7A4DA4;

  return sub_24B7A4974(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B7A4DA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_24B7A4EA0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056298, &qword_24B7A8F68);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056280, &qword_24B7A8E10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056280, &qword_24B7A8E10) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24B7A5090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B7A5408;

  return sub_24B7A406C(a1, v4, v5, v6);
}

unint64_t sub_24B7A5150()
{
  result = qword_2810E8418;
  if (!qword_2810E8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8418);
  }

  return result;
}

unint64_t sub_24B7A51A8()
{
  result = qword_2810E8420;
  if (!qword_2810E8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8420);
  }

  return result;
}

unint64_t sub_24B7A5200()
{
  result = qword_2810E8400;
  if (!qword_2810E8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8400);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B7A5260(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B7A52A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B7A52FC()
{
  result = qword_2810E8408;
  if (!qword_2810E8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8408);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t sub_24B7A5428(char *a1, char *a2)
{
  if (*&aLast_2[8 * *a1] == *&aLast_2[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24B7A857C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

unint64_t sub_24B7A5490@<X0>(Swift::String *a1@<X0>, FitnessSiriSession::SiriPersonalizationMethod_optional *a2@<X8>)
{
  result = _s18FitnessSiriSession0B21PersonalizationMethodO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_24B7A558C()
{
  sub_24B7A858C();
  sub_24B7A840C();

  return sub_24B7A85BC();
}

uint64_t sub_24B7A55E8(uint64_t a1)
{
  sub_24B7A840C();
}

uint64_t sub_24B7A5628(uint64_t a1)
{
  sub_24B7A858C();
  sub_24B7A840C();

  return sub_24B7A85BC();
}

unint64_t _s18FitnessSiriSession0B21PersonalizationMethodO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B7A84CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B7A56D0()
{
  result = qword_27F0562A0;
  if (!qword_27F0562A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562A0);
  }

  return result;
}

unint64_t sub_24B7A5734()
{
  result = qword_27F0562A8;
  if (!qword_27F0562A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562A8);
  }

  return result;
}

uint64_t sub_24B7A57EC()
{
  sub_24B7A858C();
  MEMORY[0x24C249C10](0);
  return sub_24B7A85BC();
}

uint64_t sub_24B7A5858(uint64_t a1)
{
  sub_24B7A858C();
  MEMORY[0x24C249C10](0);
  return sub_24B7A85BC();
}

uint64_t sub_24B7A58AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7A857C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7A5930(uint64_t a1)
{
  v2 = sub_24B7A5AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A596C(uint64_t a1)
{
  v2 = sub_24B7A5AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSessionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0562B0, &qword_24B7A90C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A5AF4();
  sub_24B7A85DC();
  v10 = v7;
  sub_24B7A5B48();
  sub_24B7A856C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B7A5AF4()
{
  result = qword_27F0562B8;
  if (!qword_27F0562B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562B8);
  }

  return result;
}

unint64_t sub_24B7A5B48()
{
  result = qword_27F0562C0;
  if (!qword_27F0562C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562C0);
  }

  return result;
}

uint64_t SiriSessionState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0562C8, &qword_24B7A90C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A5AF4();
  sub_24B7A85CC();
  if (!v2)
  {
    sub_24B7A5D08();
    sub_24B7A851C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B7A5D08()
{
  result = qword_27F0562D0;
  if (!qword_27F0562D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562D0);
  }

  return result;
}

unint64_t sub_24B7A5DA8()
{
  result = qword_27F0562D8;
  if (!qword_27F0562D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562D8);
  }

  return result;
}

unint64_t sub_24B7A5E00()
{
  result = qword_27F0562E0;
  if (!qword_27F0562E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562E0);
  }

  return result;
}

unint64_t sub_24B7A5E58()
{
  result = qword_27F0562E8;
  if (!qword_27F0562E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562E8);
  }

  return result;
}

uint64_t SiriStartWorkoutCandidate.identifier.getter()
{
  v1 = *v0;

  return v1;
}

FitnessSiriSession::SiriStartWorkoutCandidate __swiftcall SiriStartWorkoutCandidate.init(identifier:contentRating:)(FitnessSiriSession::SiriStartWorkoutCandidate identifier, FitnessSiriSession::ContentRating contentRating)
{
  *v2 = identifier.identifier;
  *(v2 + 16) = contentRating;
  identifier.contentRating = contentRating;
  return identifier;
}

uint64_t sub_24B7A5EF0()
{
  if (*v0)
  {
    return 0x52746E65746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B7A5F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24B7A857C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B7A857C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B7A6028(uint64_t a1)
{
  v2 = sub_24B7A6234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A6064(uint64_t a1)
{
  v2 = sub_24B7A6234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriStartWorkoutCandidate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0562F0, &qword_24B7A92A0);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A6234();
  sub_24B7A85DC();
  v13 = 0;
  sub_24B7A855C();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_24B7A6288();
    sub_24B7A856C();
  }

  return (*(v9 + 8))(v6, v4);
}

unint64_t sub_24B7A6234()
{
  result = qword_27F0562F8;
  if (!qword_27F0562F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0562F8);
  }

  return result;
}

unint64_t sub_24B7A6288()
{
  result = qword_27F056300;
  if (!qword_27F056300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056300);
  }

  return result;
}

uint64_t SiriStartWorkoutCandidate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056308, &qword_24B7A92A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A6234();
  sub_24B7A85CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_24B7A850C();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_24B7A64D0();
  sub_24B7A851C();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B7A64D0()
{
  result = qword_27F056310;
  if (!qword_27F056310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056310);
  }

  return result;
}

uint64_t SiriStartWorkoutCandidate.hash(into:)(uint64_t a1)
{
  sub_24B7A840C();
  sub_24B7A840C();
}

uint64_t SiriStartWorkoutCandidate.hashValue.getter()
{
  sub_24B7A858C();
  sub_24B7A840C();
  sub_24B7A840C();

  return sub_24B7A85BC();
}

uint64_t sub_24B7A66C0()
{
  sub_24B7A858C();
  sub_24B7A840C();
  sub_24B7A840C();

  return sub_24B7A85BC();
}

uint64_t sub_24B7A6784(uint64_t a1)
{
  sub_24B7A840C();
  sub_24B7A840C();
}

uint64_t sub_24B7A6828(uint64_t a1)
{
  sub_24B7A858C();
  sub_24B7A840C();
  sub_24B7A840C();

  return sub_24B7A85BC();
}

uint64_t _s18FitnessSiriSession0B21StartWorkoutCandidateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = 0, (sub_24B7A857C() & 1) != 0))
  {
    v6 = 0xE800000000000000;
    v7 = 0x746963696C707865;
    if (v2 != 1)
    {
      v7 = 0x6669636570736E75;
      v6 = 0xEB00000000646569;
    }

    if (v2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x6E61656C63;
    }

    if (v2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    v10 = 0xE800000000000000;
    v11 = 0x746963696C707865;
    if (v3 != 1)
    {
      v11 = 0x6669636570736E75;
      v10 = 0xEB00000000646569;
    }

    if (v3)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x6E61656C63;
    }

    if (v3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    if (v8 == v12 && v9 == v13)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_24B7A857C();
    }
  }

  return v5 & 1;
}

unint64_t sub_24B7A6A10()
{
  result = qword_27F056318;
  if (!qword_27F056318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056318);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B7A6A78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24B7A6AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B7A6B24()
{
  result = qword_27F056320;
  if (!qword_27F056320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056320);
  }

  return result;
}

unint64_t sub_24B7A6B7C()
{
  result = qword_27F056328;
  if (!qword_27F056328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056328);
  }

  return result;
}

unint64_t sub_24B7A6BD4()
{
  result = qword_27F056330;
  if (!qword_27F056330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056330);
  }

  return result;
}

uint64_t sub_24B7A6C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6169726574697263 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7A857C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7A6CC8(uint64_t a1)
{
  v2 = sub_24B7A72E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A6D04(uint64_t a1)
{
  v2 = sub_24B7A72E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7A6D40()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_24B7A6D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v6 || (sub_24B7A857C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B7A9B10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B7A857C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B7A6E70(uint64_t a1)
{
  v2 = sub_24B7A7290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A6EAC(uint64_t a1)
{
  v2 = sub_24B7A7290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7A6EE8(uint64_t a1)
{
  v2 = sub_24B7A738C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7A6F24(uint64_t a1)
{
  v2 = sub_24B7A738C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSessionAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056338, &qword_24B7A94D0);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056340, &qword_24B7A94D8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056348, &qword_24B7A94E0);
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v18 - v10;
  v12 = v1[1];
  v20 = *v1;
  v21 = v12;
  v13 = v1[2];
  v22 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7A7290();
  sub_24B7A85DC();
  if (v13)
  {
    LOBYTE(v26) = 1;
    sub_24B7A72E4();
    v14 = v25;
    sub_24B7A853C();
    v26 = v20;
    v27 = v21 & 1;
    v28 = v13;
    v29 = v22;
    sub_24B7A7338();
    v15 = v24;
    sub_24B7A856C();
    (*(v23 + 8))(v5, v15);
    return (*(v9 + 8))(v11, v14);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_24B7A738C();
    v17 = v25;
    sub_24B7A853C();
    (*(v18 + 8))(v8, v19);
    return (*(v9 + 8))(v11, v17);
  }
}

unint64_t sub_24B7A7290()
{
  result = qword_2810E8450;
  if (!qword_2810E8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8450);
  }

  return result;
}

unint64_t sub_24B7A72E4()
{
  result = qword_27F056350;
  if (!qword_27F056350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056350);
  }

  return result;
}

unint64_t sub_24B7A7338()
{
  result = qword_27F056358;
  if (!qword_27F056358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056358);
  }

  return result;
}

unint64_t sub_24B7A738C()
{
  result = qword_2810E8438;
  if (!qword_2810E8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8438);
  }

  return result;
}

uint64_t SiriSessionAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056360, &qword_24B7A94E8);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056368, &qword_24B7A94F0);
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F056370, &unk_24B7A94F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B7A7290();
  v15 = v40;
  sub_24B7A85CC();
  if (!v15)
  {
    v40 = v11;
    v17 = v38;
    v16 = v39;
    v18 = sub_24B7A852C();
    v19 = (2 * *(v18 + 16)) | 1;
    v45 = v18;
    v46 = v18 + 32;
    v47 = 0;
    v48 = v19;
    v20 = sub_24B7A1EE4();
    if (v20 == 2 || v47 != v48 >> 1)
    {
      v24 = sub_24B7A84BC();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0561C8, &qword_24B7A8810);
      *v26 = &type metadata for SiriSessionAction;
      sub_24B7A84EC();
      sub_24B7A84AC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v40 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        LOBYTE(v41) = 1;
        sub_24B7A72E4();
        v21 = v13;
        v22 = v6;
        sub_24B7A84DC();
        v23 = v40;
        sub_24B7A78D0();
        v29 = v22;
        v30 = v36;
        sub_24B7A851C();
        (*(v37 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v41;
        v32 = v42;
        v33 = v43;
        v34 = v44;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_24B7A738C();
        sub_24B7A84DC();
        v28 = v40;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
      }

      *v16 = v31;
      *(v16 + 8) = v32;
      *(v16 + 16) = v33;
      *(v16 + 24) = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

unint64_t sub_24B7A78D0()
{
  result = qword_27F056378;
  if (!qword_27F056378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056378);
  }

  return result;
}

uint64_t sub_24B7A7954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7A79A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24B7A7A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B7A7A18(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(result + 16) = (a2 - 1);
  }

  return result;
}

unint64_t sub_24B7A7A84()
{
  result = qword_27F056380;
  if (!qword_27F056380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056380);
  }

  return result;
}

unint64_t sub_24B7A7ADC()
{
  result = qword_27F056388;
  if (!qword_27F056388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056388);
  }

  return result;
}

unint64_t sub_24B7A7B34()
{
  result = qword_2810E8428;
  if (!qword_2810E8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8428);
  }

  return result;
}

unint64_t sub_24B7A7B8C()
{
  result = qword_2810E8430;
  if (!qword_2810E8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8430);
  }

  return result;
}

unint64_t sub_24B7A7BE4()
{
  result = qword_2810E8458;
  if (!qword_2810E8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8458);
  }

  return result;
}

unint64_t sub_24B7A7C3C()
{
  result = qword_2810E8460;
  if (!qword_2810E8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8460);
  }

  return result;
}

unint64_t sub_24B7A7C94()
{
  result = qword_2810E8440;
  if (!qword_2810E8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8440);
  }

  return result;
}

unint64_t sub_24B7A7CEC()
{
  result = qword_2810E8448;
  if (!qword_2810E8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8448);
  }

  return result;
}

uint64_t ContentRating.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E61656C63;
  }

  if (a1 == 1)
  {
    return 0x746963696C707865;
  }

  return 0x6669636570736E75;
}

uint64_t sub_24B7A7DAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x746963696C707865;
  if (v2 != 1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E61656C63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746963696C707865;
  if (*a2 != 1)
  {
    v8 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E61656C63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24B7A857C();
  }

  return v11 & 1;
}

unint64_t sub_24B7A7EBC@<X0>(Swift::String *a1@<X0>, FitnessSiriSession::ContentRating_optional *a2@<X8>)
{
  result = _s18FitnessSiriSession13ContentRatingO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_24B7A7EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x746963696C707865;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E61656C63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24B7A8010()
{
  sub_24B7A858C();
  sub_24B7A840C();

  return sub_24B7A85BC();
}

uint64_t sub_24B7A80B8(uint64_t a1)
{
  sub_24B7A840C();
}

uint64_t sub_24B7A814C(uint64_t a1)
{
  sub_24B7A858C();
  sub_24B7A840C();

  return sub_24B7A85BC();
}

unint64_t _s18FitnessSiriSession13ContentRatingO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B7A84CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B7A8240()
{
  result = qword_27F056390;
  if (!qword_27F056390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F056398, &qword_24B7A9900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F056390);
  }

  return result;
}

unint64_t sub_24B7A82A8()
{
  result = qword_27F0563A0;
  if (!qword_27F0563A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0563A0);
  }

  return result;
}

unint64_t sub_24B7A830C()
{
  result = qword_27F0563A8;
  if (!qword_27F0563A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0563A8);
  }

  return result;
}

uint64_t SiriSessionEnvironment.handleSiriStartWorkoutRequest.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriSessionEnvironment.makeSiriBeginSessionRequestedStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriSessionEnvironment.init(handleSiriStartWorkoutRequest:makeSiriBeginSessionRequestedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}