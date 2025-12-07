unint64_t sub_24B7971F0()
{
  result = qword_281104F28[0];
  if (!qword_281104F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281104F28);
  }

  return result;
}

uint64_t sub_24B797260(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24B79D6C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B79730C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B79D6C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B7973B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayActivity(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B79741C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SharePlayActivity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24B7974AC()
{
  v1 = (type metadata accessor for SharePlayActivity(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_24B79D6C0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B7975B4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B797634@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24B7976B4()
{
  sub_24B79D860();
  MEMORY[0x24C249830](0);
  return sub_24B79D880();
}

uint64_t sub_24B797720(uint64_t a1)
{
  sub_24B79D860();
  MEMORY[0x24C249830](0);
  return sub_24B79D880();
}

uint64_t sub_24B797774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B79D850();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B797804(uint64_t a1)
{
  v2 = sub_24B797A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B797840(uint64_t a1)
{
  v2 = sub_24B797A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharePlaySessionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054E50, &qword_24B79DAD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B797A54();
  sub_24B79D8A0();
  v10 = v7;
  sub_24B797AA8();
  sub_24B79D840();
  return (*(v4 + 8))(v6, v3);
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

unint64_t sub_24B797A54()
{
  result = qword_27F054E58;
  if (!qword_27F054E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054E58);
  }

  return result;
}

unint64_t sub_24B797AA8()
{
  result = qword_27F054E60;
  if (!qword_27F054E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054E60);
  }

  return result;
}

uint64_t SharePlaySessionState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054E68, &qword_24B79DAD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B797A54();
  sub_24B79D890();
  if (!v2)
  {
    sub_24B797CB4();
    sub_24B79D7F0();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

unint64_t sub_24B797CB4()
{
  result = qword_27F054E70;
  if (!qword_27F054E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharePlaySessionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharePlaySessionState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SharePlaySessionState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SharePlaySessionState.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24B797F7C()
{
  result = qword_27F054E78;
  if (!qword_27F054E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054E78);
  }

  return result;
}

unint64_t sub_24B797FD4()
{
  result = qword_27F054E80;
  if (!qword_27F054E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054E80);
  }

  return result;
}

unint64_t sub_24B79802C()
{
  result = qword_27F054E88;
  if (!qword_27F054E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054E88);
  }

  return result;
}

uint64_t SharePlayActivity.sessionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SharePlayActivity.workoutIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SharePlayActivity.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SharePlayActivity.fallbackURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayActivity(0) + 28);
  v4 = sub_24B79D6C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SharePlayActivity(uint64_t a1)
{
  result = qword_281104FC0;
  if (!qword_281104FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharePlayActivity.init(sessionIdentifier:workoutIdentifier:title:fallbackURL:activityType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v12 = type metadata accessor for SharePlayActivity(0);
  v13 = *(v12 + 28);
  v14 = sub_24B79D6C0();
  result = (*(*(v14 - 8) + 32))(&a9[v13], a7, v14);
  *&a9[*(v12 + 32)] = a8;
  return result;
}

uint64_t sub_24B7982A8()
{
  v1 = *v0;
  sub_24B79D860();
  MEMORY[0x24C249830](v1);
  return sub_24B79D880();
}

uint64_t sub_24B7982F0(uint64_t a1)
{
  v2 = *v1;
  sub_24B79D860();
  MEMORY[0x24C249830](v2);
  return sub_24B79D880();
}

uint64_t sub_24B798334()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6B6361626C6C6166;
  if (v1 != 3)
  {
    v3 = 0x7974697669746361;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B7983E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B798FB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B798418(uint64_t a1)
{
  v2 = sub_24B79924C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B798454(uint64_t a1)
{
  v2 = sub_24B79924C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharePlayActivity.hash(into:)(uint64_t a1)
{
  sub_24B79D710();
  sub_24B79D710();
  sub_24B79D710();
  v2 = type metadata accessor for SharePlayActivity(0);
  sub_24B79D6C0();
  sub_24B7993A8(&qword_27F054E90, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B79D700();
  return MEMORY[0x24C249830](*(v1 + *(v2 + 32)));
}

uint64_t SharePlayActivity.hashValue.getter()
{
  sub_24B79D860();
  sub_24B79D710();
  sub_24B79D710();
  sub_24B79D710();
  v1 = type metadata accessor for SharePlayActivity(0);
  sub_24B79D6C0();
  sub_24B7993A8(&qword_27F054E90, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B79D700();
  MEMORY[0x24C249830](*(v0 + *(v1 + 32)));
  return sub_24B79D880();
}

uint64_t sub_24B798638(uint64_t a1)
{
  sub_24B79D860();
  sub_24B79D710();
  sub_24B79D710();
  sub_24B79D710();
  sub_24B79D6C0();
  sub_24B7993A8(&qword_27F054E90, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B79D700();
  MEMORY[0x24C249830](*(v1 + *(a1 + 32)));
  return sub_24B79D880();
}

uint64_t sub_24B79870C(uint64_t a1, uint64_t a2)
{
  sub_24B79D710();
  sub_24B79D710();
  sub_24B79D710();
  sub_24B79D6C0();
  sub_24B7993A8(&qword_27F054E90, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B79D700();
  return MEMORY[0x24C249830](*(v2 + *(a2 + 32)));
}

uint64_t sub_24B7987CC(uint64_t a1, uint64_t a2)
{
  sub_24B79D860();
  sub_24B79D710();
  sub_24B79D710();
  sub_24B79D710();
  sub_24B79D6C0();
  sub_24B7993A8(&qword_27F054E90, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B79D700();
  MEMORY[0x24C249830](*(v2 + *(a2 + 32)));
  return sub_24B79D880();
}

uint64_t SharePlayActivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054E98, &qword_24B79DCD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B79924C();
  sub_24B79D8A0();
  v8[15] = 0;
  sub_24B79D820();
  if (!v1)
  {
    v8[14] = 1;
    sub_24B79D820();
    v8[13] = 2;
    sub_24B79D820();
    type metadata accessor for SharePlayActivity(0);
    v8[12] = 3;
    sub_24B79D6C0();
    sub_24B7993A8(&qword_27F054EA8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B79D840();
    v8[11] = 4;
    sub_24B79D830();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SharePlayActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = sub_24B79D6C0();
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054EB0, &qword_24B79DCD8);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = v24 - v5;
  v7 = type metadata accessor for SharePlayActivity(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B79924C();
  v10 = v31;
  sub_24B79D890();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v4;
  v11 = v28;
  v12 = v29;
  v31 = v7;
  v36 = 0;
  v13 = v9;
  *v9 = sub_24B79D7D0();
  v9[1] = v14;
  v24[2] = v14;
  v35 = 1;
  v9[2] = sub_24B79D7D0();
  v9[3] = v15;
  v34 = 2;
  v16 = sub_24B79D7D0();
  v17 = v12;
  v24[1] = 0;
  v9[4] = v16;
  v9[5] = v18;
  v33 = 3;
  sub_24B7993A8(&qword_27F054EB8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v19 = v25;
  v20 = v27;
  sub_24B79D7F0();
  v21 = v31;
  (*(v17 + 32))(v13 + *(v31 + 28), v19, v20);
  v32 = 4;
  v22 = sub_24B79D7E0();
  (*(v11 + 8))(v6, v30);
  *(v13 + *(v21 + 32)) = v22;
  sub_24B7992A0(v13, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B799304(v13);
}

uint64_t sub_24B798FB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B79F240 == a2 || (sub_24B79D850() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B79F260 == a2 || (sub_24B79D850() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B79D850() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255 || (sub_24B79D850() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954)
  {

    return 4;
  }

  else
  {
    v5 = sub_24B79D850();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BOOL _s23FitnessSharePlaySession0bC8ActivityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_24B79D850()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_24B79D850()) && (a1[4] == a2[4] && a1[5] == a2[5] || (sub_24B79D850())) && (v6 = type metadata accessor for SharePlayActivity(0), (sub_24B79D6B0()))
  {
    return *(a1 + *(v6 + 32)) == *(a2 + *(v6 + 32));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_24B79924C()
{
  result = qword_27F054EA0;
  if (!qword_27F054EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054EA0);
  }

  return result;
}

uint64_t sub_24B7992A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B799304(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7993A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B799418(uint64_t a1)
{
  result = sub_24B79D6C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharePlayActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePlayActivity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B799600()
{
  result = qword_27F054EC8;
  if (!qword_27F054EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054EC8);
  }

  return result;
}

unint64_t sub_24B799658()
{
  result = qword_27F054ED0;
  if (!qword_27F054ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054ED0);
  }

  return result;
}

unint64_t sub_24B7996B0()
{
  result = qword_27F054ED8;
  if (!qword_27F054ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054ED8);
  }

  return result;
}

uint64_t SharePlaySessionEnvironment.handleSharePlayBeginActivityRequested.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SharePlaySessionEnvironment.makeSharePlayBeginActivityRequestedStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SharePlaySessionEnvironment.init(handleSharePlayBeginActivityRequested:makeSharePlayBeginActivityRequestedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
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

uint64_t sub_24B79977C(uint64_t *a1, int a2)
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

uint64_t sub_24B7997C4(uint64_t result, int a2, int a3)
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

uint64_t sub_24B799820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B79D850();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7998A0(uint64_t a1)
{
  v2 = sub_24B79A094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7998DC(uint64_t a1)
{
  v2 = sub_24B79A094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B799918()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_24B799960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v6 || (sub_24B79D850() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B79F2B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B79D850();

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

uint64_t sub_24B799A54(uint64_t a1)
{
  v2 = sub_24B799FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B799A90(uint64_t a1)
{
  v2 = sub_24B799FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B799AD8(uint64_t a1)
{
  v2 = sub_24B79A0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B799B14(uint64_t a1)
{
  v2 = sub_24B79A0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharePlaySessionAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054EE0, &qword_24B79DF80);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v22 - v3;
  v4 = type metadata accessor for SharePlayActivity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054EE8, &qword_24B79DF88);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SharePlaySessionAction(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054EF0, &qword_24B79DF90);
  v13 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B799FDC();
  sub_24B79D8A0();
  sub_24B79A030(v29, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v31 = 0;
    sub_24B79A0E8();
    v16 = v30;
    sub_24B79D810();
    (*(v23 + 8))(v9, v24);
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    v18 = v25;
    sub_24B79A774(v12, v25, type metadata accessor for SharePlayActivity);
    v32 = 1;
    sub_24B79A094();
    v19 = v26;
    v20 = v30;
    sub_24B79D810();
    sub_24B79A730(&qword_27F054F00, &protocol conformance descriptor for SharePlayActivity);
    v21 = v28;
    sub_24B79D840();
    (*(v27 + 8))(v19, v21);
    sub_24B799304(v18);
    return (*(v13 + 8))(v15, v20);
  }
}

uint64_t type metadata accessor for SharePlaySessionAction(uint64_t a1)
{
  result = qword_281104EA8;
  if (!qword_281104EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B799FDC()
{
  result = qword_281104F20;
  if (!qword_281104F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104F20);
  }

  return result;
}

uint64_t sub_24B79A030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlaySessionAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B79A094()
{
  result = qword_27F054EF8;
  if (!qword_27F054EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054EF8);
  }

  return result;
}

unint64_t sub_24B79A0E8()
{
  result = qword_281104F08;
  if (!qword_281104F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104F08);
  }

  return result;
}

uint64_t SharePlaySessionAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F08, &qword_24B79DF98);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v40 = &v34 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F10, &qword_24B79DFA0);
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F18, &qword_24B79DFA8);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for SharePlaySessionAction(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B799FDC();
  v16 = v42;
  sub_24B79D890();
  if (!v16)
  {
    v34 = v12;
    v17 = v39;
    v18 = v40;
    v42 = v14;
    v19 = sub_24B79D800();
    if (*(v19 + 16) == 1)
    {
      if (*(v19 + 32))
      {
        v45 = 1;
        sub_24B79A094();
        sub_24B79D7B0();
        v20 = v8;
        v21 = v41;
        v27 = v18;
        v28 = type metadata accessor for SharePlayActivity(0);
        sub_24B79A730(&qword_27F054F28, &protocol conformance descriptor for SharePlayActivity);
        v29 = v34;
        v30 = v35;
        sub_24B79D7F0();
        (*(v37 + 8))(v27, v30);
        (*(v21 + 8))(v20, v6);
        swift_unknownObjectRelease();
        (*(*(v28 - 8) + 56))(v29, 0, 1, v28);
        v31 = v42;
        sub_24B79A774(v29, v42, type metadata accessor for SharePlaySessionAction);
        v32 = v38;
      }

      else
      {
        v44 = 0;
        sub_24B79A0E8();
        sub_24B79D7B0();
        v32 = v38;
        v25 = v41;
        (*(v17 + 8))(v5, v36);
        (*(v25 + 8))(v8, v6);
        swift_unknownObjectRelease();
        v33 = type metadata accessor for SharePlayActivity(0);
        v31 = v42;
        (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
      }

      sub_24B79A774(v31, v32, type metadata accessor for SharePlaySessionAction);
    }

    else
    {
      v22 = sub_24B79D7A0();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F20, &qword_24B79DFB0);
      *v24 = v9;
      sub_24B79D7C0();
      sub_24B79D790();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v41 + 8))(v8, v6);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_24B79A730(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharePlayActivity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B79A774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B79A7DC()
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

uint64_t sub_24B79A868(uint64_t a1)
{
  v1 = type metadata accessor for SharePlayActivity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_24B79A8F4()
{
  result = qword_27F054F30;
  if (!qword_27F054F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054F30);
  }

  return result;
}

unint64_t sub_24B79A94C()
{
  result = qword_27F054F38;
  if (!qword_27F054F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054F38);
  }

  return result;
}

unint64_t sub_24B79A9A4()
{
  result = qword_281104EF8;
  if (!qword_281104EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104EF8);
  }

  return result;
}

unint64_t sub_24B79A9FC()
{
  result = qword_281104F00;
  if (!qword_281104F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104F00);
  }

  return result;
}

unint64_t sub_24B79AA54()
{
  result = qword_281104EE8;
  if (!qword_281104EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104EE8);
  }

  return result;
}

unint64_t sub_24B79AAAC()
{
  result = qword_281104EF0;
  if (!qword_281104EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104EF0);
  }

  return result;
}

unint64_t sub_24B79AB04()
{
  result = qword_281104F10;
  if (!qword_281104F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104F10);
  }

  return result;
}

unint64_t sub_24B79AB5C()
{
  result = qword_281104F18;
  if (!qword_281104F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104F18);
  }

  return result;
}

uint64_t sub_24B79ABCC(uint64_t a1)
{
  v2 = sub_24B79B140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B79AC08(uint64_t a1)
{
  v2 = sub_24B79B140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B79AC44()
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

uint64_t sub_24B79AC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B79D850() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B79D850();

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

uint64_t sub_24B79AD4C(uint64_t a1)
{
  v2 = sub_24B79B0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B79AD88(uint64_t a1)
{
  v2 = sub_24B79B0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B79ADC4(uint64_t a1)
{
  v2 = sub_24B79B194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B79AE00(uint64_t a1)
{
  v2 = sub_24B79B194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharePlayState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F40, &qword_24B79E340);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F48, &qword_24B79E348);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F50, &qword_24B79E350);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B79B0EC();
  sub_24B79D8A0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24B79B140();
    v14 = v18;
    sub_24B79D810();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24B79B194();
    sub_24B79D810();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_24B79B0EC()
{
  result = qword_27F054F58;
  if (!qword_27F054F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054F58);
  }

  return result;
}

unint64_t sub_24B79B140()
{
  result = qword_27F054F60;
  if (!qword_27F054F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054F60);
  }

  return result;
}

unint64_t sub_24B79B194()
{
  result = qword_27F054F68;
  if (!qword_27F054F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054F68);
  }

  return result;
}

uint64_t SharePlayState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F70, &qword_24B79E358);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F78, &qword_24B79E360);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F80, &unk_24B79E368);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B79B0EC();
  v12 = v31;
  sub_24B79D890();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_24B79D800();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_24B79A7DC();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_24B79D7A0();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054F20, &qword_24B79DFB0);
      *v22 = &type metadata for SharePlayState;
      sub_24B79D7C0();
      sub_24B79D790();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_24B79B140();
        sub_24B79D7B0();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_24B79B194();
        sub_24B79D7B0();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t SharePlayState.hashValue.getter()
{
  v1 = *v0;
  sub_24B79D860();
  MEMORY[0x24C249830](v1);
  return sub_24B79D880();
}

unint64_t sub_24B79B74C()
{
  result = qword_27F054F88;
  if (!qword_27F054F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054F88);
  }

  return result;
}

unint64_t sub_24B79B7E4()
{
  result = qword_27F054F90;
  if (!qword_27F054F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054F90);
  }

  return result;
}

unint64_t sub_24B79B83C()
{
  result = qword_27F054F98;
  if (!qword_27F054F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054F98);
  }

  return result;
}

unint64_t sub_24B79B894()
{
  result = qword_27F054FA0;
  if (!qword_27F054FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054FA0);
  }

  return result;
}

unint64_t sub_24B79B8EC()
{
  result = qword_27F054FA8;
  if (!qword_27F054FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054FA8);
  }

  return result;
}

unint64_t sub_24B79B944()
{
  result = qword_27F054FB0;
  if (!qword_27F054FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054FB0);
  }

  return result;
}

unint64_t sub_24B79B99C()
{
  result = qword_27F054FB8;
  if (!qword_27F054FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054FB8);
  }

  return result;
}

unint64_t sub_24B79B9F4()
{
  result = qword_27F054FC0;
  if (!qword_27F054FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F054FC0);
  }

  return result;
}

__n128 SharePlaySessionFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t SharePlaySessionFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4)
{
  v62 = a3;
  v56 = a2;
  v6 = type metadata accessor for SharePlayActivity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054FC8, &qword_24B79E6E0);
  v12 = *(v11 - 8);
  v60 = v11;
  v61 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = type metadata accessor for SharePlaySessionAction(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v4;
  v63 = v4[1];
  v23 = v4[2];
  v22 = v4[3];
  sub_24B79CF0C(a4, v20, type metadata accessor for SharePlaySessionAction);
  v57 = v7;
  result = (*(v7 + 48))(v20, 1, v6);
  if (result == 1)
  {
    v25 = v63;
    if (*v56)
    {
      return result;
    }

    *v56 = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054FD0, &qword_24B79E6E8);
    v59 = v26[16];
    v27 = v26[20];
    v28 = &v17[v26[24]];
    v64 = 1;
    sub_24B79C144();
    sub_24B79D780();
    sub_24B79D760();
    v29 = *MEMORY[0x277D043E0];
    v30 = sub_24B79D6E0();
    (*(*(v30 - 8) + 104))(&v17[v27], v29, v30);
    v31 = swift_allocObject();
    v31[2] = v21;
    v31[3] = v25;
    v31[4] = v23;
    v31[5] = v22;
    *v28 = &unk_24B79E708;
    *(v28 + 1) = v31;
    v32 = *MEMORY[0x277D043F8];
    v33 = sub_24B79D6F0();
    (*(*(v33 - 8) + 104))(&v17[v59], v32, v33);
    v35 = v60;
    v34 = v61;
    (*(v61 + 104))(v17, *MEMORY[0x277D043B0], v60);
    v36 = v62;
    v37 = *v62;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_24B79D17C(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v37 = sub_24B79D17C((v38 > 1), v39 + 1, 1, v37);
    }

    v15 = v17;
  }

  else
  {
    v41 = v58;
    sub_24B79C0E0(v20, v58);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054FD0, &qword_24B79E6E8);
    v43 = v42[16];
    v44 = v22;
    v56 = v42[20];
    v45 = &v15[v42[24]];
    v65 = 0;
    sub_24B79C144();
    sub_24B79D780();
    sub_24B79D760();
    v46 = *MEMORY[0x277D043F0];
    v47 = sub_24B79D6F0();
    (*(*(v47 - 8) + 104))(&v15[v43], v46, v47);
    v48 = v59;
    sub_24B79CF0C(v41, v59, type metadata accessor for SharePlayActivity);
    v49 = (*(v57 + 80) + 48) & ~*(v57 + 80);
    v50 = swift_allocObject();
    v51 = v63;
    v50[2] = v21;
    v50[3] = v51;
    v50[4] = v23;
    v50[5] = v44;
    sub_24B79C0E0(v48, v50 + v49);
    *v45 = &unk_24B79E6F8;
    *(v45 + 1) = v50;
    v52 = *MEMORY[0x277D043E8];
    v53 = sub_24B79D6E0();
    (*(*(v53 - 8) + 104))(&v56[v15], v52, v53);
    v35 = v60;
    v34 = v61;
    (*(v61 + 104))(v15, *MEMORY[0x277D043B0], v60);
    v36 = v62;
    v37 = *v62;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_24B79D17C(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v54 = v37[3];
    v40 = v39 + 1;
    if (v39 >= v54 >> 1)
    {
      v37 = sub_24B79D17C((v54 > 1), v39 + 1, 1, v37);
    }

    sub_24B79D648(v41, type metadata accessor for SharePlayActivity);
  }

  v37[2] = v40;
  result = (*(v34 + 32))(v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v39, v15, v35);
  *v36 = v37;
  return result;
}

uint64_t sub_24B79C0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayActivity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B79C144()
{
  result = qword_281104E30;
  if (!qword_281104E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104E30);
  }

  return result;
}

uint64_t sub_24B79C198(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[12] = a1;
  type metadata accessor for SharePlaySessionAction(0);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054FD8, &qword_24B79E830);
  v4[14] = swift_task_alloc();
  v4[15] = sub_24B79D750();
  v4[16] = sub_24B79D740();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[17] = v6;
  *v6 = v4;
  v6[1] = sub_24B79C318;

  return v8(v4 + 7);
}

uint64_t sub_24B79C318()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B79D720();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B79CB54;
  }

  else
  {
    v5 = sub_24B79C478;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B79C478()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B79D770();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B79D740();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B79C650;
  v7 = v0[14];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v7, v5, v8);
}

uint64_t sub_24B79C650()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B79C764, v4, v5);
  }

  return result;
}

uint64_t sub_24B79C764()
{
  v1 = v0[14];
  v2 = type metadata accessor for SharePlayActivity(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[13];
    sub_24B79C0E0(v1, v6);
    (*(v3 + 56))(v6, 0, 1, v2);
    v7 = swift_task_alloc();
    v0[23] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054FE0, &qword_24B79E838);
    *v7 = v0;
    v7[1] = sub_24B79C920;
    v9 = v0[13];

    return MEMORY[0x282159B08](v9, v8);
  }
}

uint64_t sub_24B79C920()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_24B79D648(v2, type metadata accessor for SharePlaySessionAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B79CA78, v4, v3);
}

uint64_t sub_24B79CA78(uint64_t a1)
{
  v2 = sub_24B79D740();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B79C650;
  v4 = v1[14];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v4, v2, v5);
}

uint64_t sub_24B79CB54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B79CBCC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_24B79D750();
  v6[3] = sub_24B79D740();
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_24B79CCE8;

  return v11(a6);
}

uint64_t sub_24B79CCE8()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B79D720();
  if (v0)
  {
    v4 = sub_24B79CEA8;
  }

  else
  {
    v4 = sub_24B79CE44;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B79CE44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B79CEA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B79CF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B79CF74(uint64_t a1)
{
  v4 = *(type metadata accessor for SharePlayActivity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24B79D074;

  return sub_24B79CBCC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_24B79D074()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_24B79D17C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054FE8, &qword_24B79E840);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054FC8, &qword_24B79E6E0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F054FC8, &qword_24B79E6E0) - 8);
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

uint64_t sub_24B79D36C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B79D6AC;

  return sub_24B79C198(a1, v4, v5, v6);
}

uint64_t sub_24B79D490(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharePlaySessionAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B79D4D8()
{
  result = qword_281104E20;
  if (!qword_281104E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104E20);
  }

  return result;
}

unint64_t sub_24B79D540()
{
  result = qword_281104E28;
  if (!qword_281104E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281104E28);
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

uint64_t sub_24B79D648(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}