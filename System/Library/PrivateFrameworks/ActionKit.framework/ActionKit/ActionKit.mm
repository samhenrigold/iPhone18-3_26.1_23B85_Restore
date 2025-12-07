unint64_t sub_23DE33D24()
{
  result = qword_280DAE998;
  if (!qword_280DAE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE998);
  }

  return result;
}

unint64_t sub_23DE33D7C()
{
  result = qword_280DAE980;
  if (!qword_280DAE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE980);
  }

  return result;
}

unint64_t sub_23DE33DDC()
{
  result = qword_280DAE978;
  if (!qword_280DAE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE978);
  }

  return result;
}

unint64_t sub_23DE33E3C()
{
  result = qword_280DAE990;
  if (!qword_280DAE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE990);
  }

  return result;
}

unint64_t sub_23DE33E94()
{
  result = qword_280DAE988;
  if (!qword_280DAE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE988);
  }

  return result;
}

unint64_t sub_23DE33EEC()
{
  result = qword_280DAE970;
  if (!qword_280DAE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE970);
  }

  return result;
}

unint64_t sub_23DE33F40()
{
  result = qword_280DAE968;
  if (!qword_280DAE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE968);
  }

  return result;
}

unint64_t sub_23DE33F98()
{
  result = qword_280DAE960;
  if (!qword_280DAE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE960);
  }

  return result;
}

uint64_t sub_23DE34040@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_23DE38D00(a2);
  *a1 = result;
  return result;
}

uint64_t sub_23DE340E4()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_23DE3410C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_23DE34110()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE34150()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DE34190()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DE341F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DE34228(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  OUTLINED_FUNCTION_80();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v8 = v7 - 1;
    if (v8 < 0)
    {
      v8 = -1;
    }

    return (v8 + 1);
  }
}

void sub_23DE342DC()
{
  OUTLINED_FUNCTION_82();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0;
  }
}

uint64_t sub_23DE3437C(uint64_t a1, uint64_t a2)
{
  sub_23E1FD46C();
  OUTLINED_FUNCTION_80();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    return (v7 + 1);
  }
}

void sub_23DE34418()
{
  OUTLINED_FUNCTION_82();
  sub_23E1FD46C();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_23DE344AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DE344EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23DE34620(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23DE346B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DE347C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23DE34814()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C388, &qword_23E224188);
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_23DE348B8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE3497C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE62924();
  *a1 = result;
  return result;
}

uint64_t sub_23DE34A5C()
{
  v1 = sub_23E1FC08C();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6A8, &qword_23E224768);
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_23DE34C34@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23DE702E8();
  *a2 = result;
  return result;
}

uint64_t sub_23DE34C88()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE34E5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23DE34EF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DE3518C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35274@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DEA2B68();
  *a1 = result;
  return result;
}

uint64_t sub_23DE352A4()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_161_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23DE352E8()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_161_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23DE353C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23E1FB75C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23DE35450(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23E1FB75C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DE355B4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23DE702E8();
  *a2 = result;
  return result;
}

void *sub_23DE355E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DEBB498();
  *a1 = result;
  return result;
}

uint64_t sub_23DE35610()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35658()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_23DE35A8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23DE35B20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DE35C2C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35D10()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35DA4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35DEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23DE35E8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DE35ED4()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED4BD4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23DE35F00()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5134();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23DE35F2C()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED51C0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23DE35F58()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5110();
  *v0 = result;
  return result;
}

uint64_t sub_23DE35F80()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED519C();
  *v0 = result;
  return result;
}

uint64_t sub_23DE35FA8()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5228();
  *v0 = result;
  return result;
}

uint64_t sub_23DE35FD0()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED524C();
  *v0 = result;
  return result;
}

uint64_t sub_23DE35FF8()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5270();
  *v0 = result;
  return result;
}

uint64_t sub_23DE36020()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5294();
  *v0 = result;
  return result;
}

uint64_t sub_23DE36048()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED52B8();
  *v0 = result;
  return result;
}

uint64_t sub_23DE361A0()
{
  v1 = sub_23E1FBFBC();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_23DE362FC()
{
  v1 = sub_23E1FBFBC();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_23DE36438()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE36480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  OUTLINED_FUNCTION_37_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23DE36534()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DE3656C()
{

  OUTLINED_FUNCTION_174_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_23DE365A8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE36698()
{
  MEMORY[0x23EF07580](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DE366D0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23DE36770()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DE367B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E1FD46C();
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

uint64_t sub_23DE36868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E1FD46C();
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

uint64_t sub_23DE36950(uint64_t a1, char a2)
{
  sub_23E1FDCCC();
}

char *sub_23DE36A28(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

uint64_t sub_23DE36A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DF2F758();
  *a1 = result;
  return result;
}

uint64_t sub_23DE36A7C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE36AC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DE36C8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_23DE36CA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_23DE36D0C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v156 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x800000023E24DDF0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = inited;
  v11 = v7;
  v12 = v9;
  v13 = sub_23E1FDCBC("ask|prompt|show|dialog|keyboard|text|number|url|date|time", 57);
  v15 = v14;
  sub_23E1FDCBC("ask|prompt|show|dialog|keyboard|text|number|url|date|time", 57);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v16 = qword_280DAE278;
  v168 = qword_280DAE278;
  v17 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v18 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v13, v15);
  v20 = v19;
  v21 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v167 = v21;
  v10[10] = v20;
  v22 = *MEMORY[0x277D7CC18];
  v10[13] = v21;
  v10[14] = v22;
  *&v172 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  v165 = xmmword_23E222340;
  *(v23 + 16) = xmmword_23E222340;
  v24 = *MEMORY[0x277D7CC30];
  *(v23 + 32) = *MEMORY[0x277D7CC30];
  v25 = v22;
  v26 = v24;
  v27 = sub_23E1FDCBC("Displays a dialog prompting the user to enter a piece of information.", 69);
  v29 = v28;
  sub_23E1FDCBC("Displays a dialog prompting the user to enter a piece of information.", 69);
  sub_23E1FC14C();
  v30 = [v16 bundleURL];
  v31 = v5;
  v32 = v30;
  sub_23E1FBF9C();

  v33 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v34 = v2;
  sub_23DE477A0(v27, v29);
  *(v23 + 64) = v167;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_23DE38160(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v36 = sub_23E1FDABC();
  v37 = v172;
  v10[15] = sub_23DF3BE54(v36);
  v38 = *MEMORY[0x277D7CB48];
  v10[18] = v37;
  v10[19] = v38;
  v10[20] = 1851881795;
  v10[21] = 0xE400000000000000;
  v39 = *MEMORY[0x277D7CB60];
  v40 = MEMORY[0x277D837D0];
  v10[23] = MEMORY[0x277D837D0];
  v10[24] = v39;
  v10[28] = v40;
  v10[25] = 0xD000000000000010;
  v10[26] = 0x800000023E24DEA0;
  v41 = v38;
  v42 = v39;
  v10[29] = sub_23E1FDBDC();
  v10[30] = 0xD000000000000051;
  v10[31] = 0x800000023E24DEE0;
  v43 = *MEMORY[0x277D7CDD0];
  v10[33] = v40;
  v10[34] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_23E222350;
  *(v44 + 32) = 0x75736F6C63736944;
  *(v44 + 40) = 0xEF6C6576654C6572;
  *(v44 + 48) = 0x63696C627550;
  *(v44 + 56) = 0xE600000000000000;
  *(v44 + 72) = v40;
  *(v44 + 80) = 0x656C7069746C754DLL;
  *(v44 + 88) = 0xE800000000000000;
  v45 = MEMORY[0x277D839B0];
  *(v44 + 96) = 0;
  *(v44 + 120) = v45;
  *(v44 + 128) = 0x614E74757074754FLL;
  *(v44 + 136) = 0xEA0000000000656DLL;
  v46 = v43;
  v47 = sub_23E1FDCBC("Provided Input (Default Output Name)", 36);
  v49 = v48;
  sub_23E1FDCBC("Provided Input", 14);
  v163 = v31;
  sub_23E1FC14C();
  v50 = [v168 bundleURL];
  v164 = v34;
  sub_23E1FBF9C();

  v51 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v47, v49);
  *(v44 + 144) = v52;
  *(v44 + 168) = v167;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 184) = 0xE500000000000000;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v44 + 216) = v53;
  v171 = v53;
  *(v44 + 192) = &unk_285023010;
  v54 = MEMORY[0x277D837D0];
  v55 = sub_23E1FDABC();
  v10[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v10[35] = v55;
  v157 = v10;
  v10[39] = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_23E222360;
  *(v56 + 32) = 0xD000000000000014;
  *(v56 + 40) = 0x800000023E24DFA0;
  v57 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v58 = swift_initStackObject();
  v172 = xmmword_23E222370;
  *(v58 + 16) = xmmword_23E222370;
  v59 = *MEMORY[0x277D7CE20];
  v60 = MEMORY[0x277D7CE70];
  *(v58 + 32) = *MEMORY[0x277D7CE20];
  *(v58 + 40) = &unk_285023070;
  v61 = *v60;
  *(v58 + 64) = v53;
  *(v58 + 72) = v61;
  *(v58 + 104) = v54;
  *(v58 + 80) = 0xD00000000000001FLL;
  *(v58 + 88) = 0x800000023E24DFC0;
  _s3__C3KeyVMa_0(0);
  v63 = v62;
  v170 = sub_23DE38160(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v64 = v59;
  v65 = v61;
  v66 = v64;
  v67 = v65;
  v68 = v66;
  v69 = v67;
  v70 = sub_23E1FDABC();
  *(v56 + 48) = sub_23DF3BE9C(v70);
  *(v56 + 56) = 0xD000000000000013;
  *(v56 + 64) = 0x800000023E24DFE0;
  v71 = swift_initStackObject();
  *(v71 + 16) = v172;
  *(v71 + 32) = v68;
  *(v71 + 40) = &unk_2850230A0;
  v72 = v171;
  *(v71 + 64) = v171;
  *(v71 + 72) = v69;
  *(v71 + 104) = MEMORY[0x277D837D0];
  *(v71 + 80) = 0xD000000000000015;
  *(v71 + 88) = 0x800000023E24E000;
  v73 = v68;
  v74 = v69;
  v161 = v63;
  v75 = sub_23E1FDABC();
  v169 = v57;
  *(v56 + 72) = sub_23DF3BE9C(v75);
  *(v56 + 80) = 0xD000000000000015;
  *(v56 + 88) = 0x800000023E24E020;
  v76 = swift_allocObject();
  *(v76 + 16) = v172;
  *(v76 + 32) = v73;
  *(v76 + 40) = &unk_2850230D0;
  *(v76 + 64) = v72;
  *(v76 + 72) = v74;
  *(v76 + 104) = MEMORY[0x277D837D0];
  *(v76 + 80) = 0xD000000000000020;
  *(v76 + 88) = 0x800000023E24E040;
  v77 = v73;
  v78 = v74;
  v79 = sub_23E1FDABC();
  v80 = sub_23DF3BE9C(v79);
  v158 = 0xD000000000000011;
  *(v56 + 96) = v80;
  *(v56 + 104) = 0xD000000000000011;
  *(v56 + 112) = 0x800000023E24E070;
  v81 = swift_allocObject();
  *(v81 + 16) = v172;
  *(v81 + 32) = v77;
  *(v81 + 40) = &unk_285023100;
  *(v81 + 64) = v72;
  *(v81 + 72) = v78;
  *(v81 + 104) = MEMORY[0x277D837D0];
  *(v81 + 80) = 0xD000000000000023;
  *(v81 + 88) = 0x800000023E24E090;
  v82 = v77;
  v83 = v78;
  v84 = sub_23E1FDABC();
  *(v56 + 120) = sub_23DF3BE9C(v84);
  *(v56 + 128) = 0x77736E4165746164;
  *(v56 + 136) = 0xEA00000000007265;
  v85 = swift_allocObject();
  *(v85 + 16) = v172;
  *(v85 + 32) = v82;
  *(v85 + 40) = &unk_285023130;
  *(v85 + 64) = v72;
  *(v85 + 72) = v83;
  *(v85 + 104) = MEMORY[0x277D837D0];
  v159 = 0xD00000000000001CLL;
  *(v85 + 80) = 0xD00000000000001CLL;
  *(v85 + 88) = 0x800000023E24E0C0;
  v86 = v82;
  v87 = v83;
  v88 = sub_23E1FDABC();
  *(v56 + 144) = sub_23DF3BE9C(v88);
  *(v56 + 152) = 0xD000000000000010;
  *(v56 + 160) = 0x800000023E24E0E0;
  v89 = swift_allocObject();
  v162 = xmmword_23E222380;
  *(v89 + 16) = xmmword_23E222380;
  *(v89 + 32) = v86;
  *(v89 + 40) = &unk_285023160;
  v90 = v171;
  *(v89 + 64) = v171;
  *(v89 + 72) = v87;
  *(v89 + 80) = 0xD00000000000001BLL;
  *(v89 + 88) = 0x800000023E24E100;
  v91 = *MEMORY[0x277D7CE78];
  v92 = MEMORY[0x277D837D0];
  *(v89 + 104) = MEMORY[0x277D837D0];
  *(v89 + 112) = v91;
  *(v89 + 144) = v92;
  *(v89 + 120) = 5001813;
  *(v89 + 128) = 0xE300000000000000;
  v93 = v86;
  v94 = v87;
  v95 = v91;
  v96 = sub_23E1FDABC();
  *(v56 + 168) = sub_23DF3BE9C(v96);
  strcpy((v56 + 176), "numberAnswer");
  *(v56 + 189) = 0;
  *(v56 + 190) = -5120;
  v97 = swift_allocObject();
  *(v97 + 16) = v172;
  *(v97 + 32) = v93;
  *(v97 + 40) = &unk_285023190;
  *(v97 + 64) = v90;
  *(v97 + 72) = v94;
  v98 = MEMORY[0x277D837D0];
  *(v97 + 104) = MEMORY[0x277D837D0];
  *(v97 + 80) = 0xD00000000000001ELL;
  *(v97 + 88) = 0x800000023E24E120;
  v156 = v93;
  v99 = v94;
  v100 = sub_23E1FDABC();
  *(v56 + 192) = sub_23DF3BE9C(v100);
  *(v56 + 200) = 0x6E6F697473657571;
  *(v56 + 208) = 0xE800000000000000;
  v101 = swift_allocObject();
  *(v101 + 16) = v165;
  *(v101 + 64) = v98;
  v102 = v158;
  *(v101 + 32) = v99;
  *(v101 + 40) = v102;
  *(v101 + 48) = 0x800000023E24E140;
  v103 = v99;
  v104 = sub_23E1FDABC();
  *(v56 + 216) = sub_23DF3BE9C(v104);
  strcpy((v56 + 224), "stringAnswer");
  *(v56 + 237) = 0;
  *(v56 + 238) = -5120;
  v105 = swift_allocObject();
  *(v105 + 16) = v162;
  v106 = v156;
  *(v105 + 32) = v156;
  *(v105 + 40) = &unk_2850231C0;
  *(v105 + 64) = v171;
  *(v105 + 72) = v103;
  *(v105 + 80) = 0xD000000000000018;
  *(v105 + 88) = 0x800000023E24E160;
  v107 = *MEMORY[0x277D7CE80];
  *(v105 + 104) = MEMORY[0x277D837D0];
  *(v105 + 112) = v107;
  v156 = v106;
  v158 = v103;
  v108 = v107;
  v109 = sub_23E1FDCBC("Default Answer (Parameter Label)", 32);
  v111 = v110;
  sub_23E1FDCBC("Default Answer", 14);
  sub_23E1FC14C();
  v112 = [v168 bundleURL];
  sub_23E1FBF9C();

  v113 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v109, v111);
  *(v105 + 144) = v167;
  *(v105 + 120) = v114;
  v115 = sub_23E1FDABC();
  *(v56 + 240) = sub_23DF3BE9C(v115);
  *(v56 + 248) = 0x77736E41656D6974;
  *(v56 + 256) = 0xEA00000000007265;
  v116 = swift_allocObject();
  *(v116 + 16) = v172;
  v117 = v156;
  *(v116 + 32) = v156;
  *(v116 + 40) = &unk_2850231F0;
  v118 = v171;
  v120 = v158;
  v119 = v159;
  *(v116 + 64) = v171;
  *(v116 + 72) = v120;
  v121 = MEMORY[0x277D837D0];
  *(v116 + 104) = MEMORY[0x277D837D0];
  *(v116 + 80) = v119;
  *(v116 + 88) = 0x800000023E24E1B0;
  v122 = sub_23E1FDABC();
  *(v56 + 264) = sub_23DF3BE9C(v122);
  *(v56 + 272) = 1701869940;
  *(v56 + 280) = 0xE400000000000000;
  v123 = swift_allocObject();
  *(v123 + 16) = v162;
  *(v123 + 32) = v117;
  *(v123 + 40) = &unk_285023220;
  v124 = *MEMORY[0x277D7CE58];
  *(v123 + 64) = v118;
  *(v123 + 72) = v124;
  v125 = v124;
  v126 = v121;
  v127 = sub_23E1FDABC();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(v123 + 80) = v127;
  *(v123 + 104) = v128;
  *(v123 + 112) = v120;
  *(v123 + 144) = v126;
  *(v123 + 120) = 0x547475706E494657;
  *(v123 + 128) = 0xEB00000000657079;
  v129 = sub_23E1FDABC();
  *(v56 + 288) = sub_23DF3BE9C(v129);
  *(v56 + 296) = 0x6577736E416C7275;
  *(v56 + 304) = 0xE900000000000072;
  v130 = swift_allocObject();
  v131 = MEMORY[0x277D7CE40];
  *(v130 + 16) = v165;
  v132 = *v131;
  *(v130 + 32) = v132;
  *(v130 + 64) = MEMORY[0x277D839B0];
  *(v130 + 40) = 1;
  v133 = v132;
  v134 = sub_23E1FDABC();
  *(v56 + 312) = sub_23DF3BE9C(v134);
  v135 = sub_23E1FDABC();
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  v137 = v157;
  v157[40] = v135;
  v138 = *MEMORY[0x277D7CB98];
  v137[43] = v136;
  v137[44] = v138;
  v139 = v138;
  v140 = sub_23E1FDCBC("Ask for ${WFInputType} with ${WFAskActionPrompt} (Parameter Summary)", 68);
  v142 = v141;
  sub_23E1FDCBC("Ask for ${WFInputType} with ${WFAskActionPrompt}", 48);
  sub_23E1FC14C();
  v143 = [v168 bundleURL];
  sub_23E1FBF9C();

  v144 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v140, v142);
  v146 = v145;
  v147 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v148 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v137[45] = v147;
  v149 = *MEMORY[0x277D7CF20];
  v137[48] = v148;
  v137[49] = v149;
  v137[50] = &unk_285023330;
  v150 = *MEMORY[0x277D7D030];
  v151 = v171;
  v137[53] = v171;
  v137[54] = v150;
  v137[58] = v151;
  v137[55] = &unk_285023360;
  type metadata accessor for Key(0);
  sub_23DE38160(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v152 = v149;
  v153 = v150;
  v154 = sub_23E1FDABC();
  return sub_23DF3BF9C(v154);
}

uint64_t sub_23DE38014(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v3 = sub_23DE38160(&unk_27E32BA20, type metadata accessor for Key, &unk_23E2224FC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DE381A8(uint64_t a1)
{
  v2 = sub_23DE38160(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v3 = sub_23DE38160(&qword_27E32BDB8, type metadata accessor for DescriptionKey, &unk_23E2229A4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38264(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v3 = sub_23DE38160(&qword_27E32BDB0, _s3__C3KeyVMa_0, &unk_23E222AB8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE3410C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23DE3834C(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BD90, type metadata accessor for WFExecutionPlatform, &unk_23E222D4C);
  v3 = sub_23DE38160(&qword_27E32BD98, type metadata accessor for WFExecutionPlatform, &unk_23E222CEC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38408()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_23DED39C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_23DE38430(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BD60, type metadata accessor for WFCoercionOptionName, &unk_23E2233D8);
  v3 = sub_23DE38160(&qword_27E32BD68, type metadata accessor for WFCoercionOptionName, &unk_23E22306C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE384EC(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BD70, type metadata accessor for IOSurfacePropertyKey, &unk_23E22341C);
  v3 = sub_23DE38160(&qword_27E32BD78, type metadata accessor for IOSurfacePropertyKey, &unk_23E222F58);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE385A8(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BD80, type metadata accessor for PDFDocumentWriteOption, &unk_23E22345C);
  v3 = sub_23DE38160(&qword_27E32BD88, type metadata accessor for PDFDocumentWriteOption, &unk_23E222E4C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38664(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BDA0, type metadata accessor for FileAttributeKey, &unk_23E2234A0);
  v3 = sub_23DE38160(&qword_27E32BDA8, type metadata accessor for FileAttributeKey, &unk_23E222BD8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38720(uint64_t a1)
{
  v2 = sub_23DE38160(&unk_280DAE2C0, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_23E223394);
  v3 = sub_23DE38160(&qword_27E32BD58, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_23E223190);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE387DC(uint64_t a1)
{
  v2 = sub_23DE38160(qword_280DAE3A0, type metadata accessor for LNPlatformName, &unk_23E223350);
  v3 = sub_23DE38160(&unk_27E32BD48, type metadata accessor for LNPlatformName, &unk_23E2232A4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38898@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23E1FDBDC();

  *a2 = v3;
  return result;
}

uint64_t sub_23DE388E0(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BA08, type metadata accessor for BMUseCaseIdentifier, &unk_23E222680);
  v3 = sub_23DE38160(&unk_27E32BA10, type metadata accessor for BMUseCaseIdentifier, &unk_23E222620);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38ABC(uint64_t a1, uint64_t a2)
{
  sub_23E1FDC1C();
  sub_23E1FDCCC();
}

uint64_t sub_23DE38B10(uint64_t a1, uint64_t a2)
{
  sub_23E1FDC1C();
  sub_23E1FE84C();
  sub_23E1FDCCC();
  v2 = sub_23E1FE87C();

  return v2;
}

uint64_t sub_23DE38B84(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FDC1C();
  v4 = v3;
  if (v2 == sub_23E1FDC1C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23E1FE75C();
  }

  return v7 & 1;
}

uint64_t sub_23DE38C08(uint64_t a1, id *a2)
{
  v3 = sub_23E1FDC0C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23DE38C88(uint64_t a1, id *a2)
{
  result = sub_23E1FDBFC();
  *a2 = 0;
  return result;
}

uint64_t sub_23DE38D00(uint64_t a1)
{
  sub_23E1FDC1C();
  v1 = sub_23E1FDBDC();

  return v1;
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

uint64_t sub_23DE38DA8(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DE38EA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DE38EC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_23DE39698(uint64_t a1)
{
  v1 = sub_23E1FDC1C();
  v2 = MEMORY[0x23EF04540](v1);

  return v2;
}

void sub_23DE396E4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_23DE39798()
{
  v74 = sub_23E1FC77C();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = (&v68 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v72 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E24E2A0;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  v11 = sub_23E1FDCBC("screen|off|monitor|idle|standby|shut|turn", 41);
  v13 = v12;
  sub_23E1FDCBC("screen|off|monitor|idle|standby|shut|turn", 41);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v76 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v11, v13);
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v75 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v69 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v22 = v19;
  v23 = v21;
  v24 = sub_23E1FDCBC("Puts the display(s) of this Mac to sleep.", 41);
  v26 = v25;
  sub_23E1FDCBC("Puts the display(s) of this Mac to sleep.", 41);
  sub_23E1FC14C();
  v27 = [v76 bundleURL];
  v70 = v3;
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v24, v26);
  *(v20 + 64) = v75;
  *(v20 + 40) = v29;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v30 = sub_23E1FDABC();
  v31 = v69;
  *(inited + 120) = sub_23DF3BE54(v30);
  v32 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v31;
  *(inited + 152) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 160) = &unk_2850233B0;
  v34 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v33;
  *(inited + 192) = v34;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v35 = *MEMORY[0x277D7CB60];
  v36 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v35;
  *(inited + 240) = 0x79616C70736964;
  *(inited + 248) = 0xE700000000000000;
  v37 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v36;
  *(inited + 272) = v37;
  v38 = v32;
  v39 = v34;
  v40 = v35;
  v41 = v37;
  v42 = sub_23E1FDCBC("Put Display to Sleep (Action Name)", 34);
  v44 = v43;
  sub_23E1FDCBC("Put Display to Sleep", 20);
  sub_23E1FC14C();
  v45 = v76;
  v46 = [v76 bundleURL];
  sub_23E1FBF9C();

  v47 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v42, v44);
  *(inited + 280) = v48;
  v49 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v75;
  *(inited + 312) = v49;
  v50 = v49;
  v51 = sub_23E1FDCBC("Put the display to sleep (Parameter Summary)", 44);
  v53 = v52;
  sub_23E1FDCBC("Put the display to sleep", 24);
  sub_23E1FC14C();
  v54 = [v45 bundleURL];
  sub_23E1FBF9C();

  v55 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v51, v53);
  v57 = v56;
  v58 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v59 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v58;
  v60 = *MEMORY[0x277D7CF20];
  *(inited + 344) = v59;
  *(inited + 352) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_23E2235B0;
  v63 = v73;
  v62 = v74;
  *v73 = 2;
  (*(v71 + 104))(v63, *MEMORY[0x277D7BEE0], v62);
  v64 = objc_allocWithZone(sub_23E1FC79C());
  v65 = v60;
  *(v61 + 32) = sub_23E1FC78C();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 360) = v61;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v66 = sub_23E1FDABC();
  return sub_23DF3BF9C(v66);
}

uint64_t sub_23DE39F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23DE39FCC(char a1)
{
  if (a1)
  {
    v3 = *v1;
    v4 = sub_23E1FDBDC();
    v5 = [v3 BOOLForKey_];

    if ((v5 & 1) == 0)
    {
      v6 = sub_23E1FDBDC();
      [v3 setBool:1 forKey:v6];
    }
  }

  v7 = *v1;
  v8 = sub_23E1FDBDC();
  [v7 setBool:a1 & 1 forKey:v8];
}

uint64_t sub_23DE3A0E8()
{
  v1 = [objc_allocWithZone(type metadata accessor for StageManagerSettingsClient()) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23DE3A1C4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE3A258;

  return sub_23DE3A0D4();
}

uint64_t sub_23DE3A258()
{
  OUTLINED_FUNCTION_4();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  v8 = *(v5 + 16);
  if (v2)
  {
    v9 = sub_23E1FBEBC();

    v10 = OUTLINED_FUNCTION_1();
    v11(v10, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_1();
    v13(v12, v4, 0);
    _Block_release(v8);
  }

  v14 = *(v6 + 8);

  return v14();
}

id sub_23DE3A3BC()
{
  v1 = OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager;
  v2 = *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_23DE3B02C(0xD000000000000015, 0x800000023E24E530);
  if (result)
  {
    v7 = *(v0 + v1);
    *(v4 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_23DE3A484()
{
  v0 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v1 = sub_23E1FDBDC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_23DE3A544()
{
  v1 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v2 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_6(v2, sel_setBool_forKey_);

  v3 = *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
  *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager) = v1;
}

id sub_23DE3A5F4()
{
  v0 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v1 = sub_23E1FDBDC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_23DE3A6B4()
{
  v1 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v2 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_6(v2, sel_setBool_forKey_);

  v3 = *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
  *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager) = v1;
}

id sub_23DE3A730()
{
  *&v0[OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StageManagerSettingsClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DE3A794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StageManagerSettingsClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DE3A814()
{
  OUTLINED_FUNCTION_4();
  v1 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v2 = sub_23E1FDBDC();
  v3 = [v1 BOOLForKey_];

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_23DE3A93C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23DE3A9E4;

  return sub_23DE3A7FC();
}

uint64_t sub_23DE3A9E4(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v2;
  *v7 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_23E1FBEBC();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, v4 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_23DE3AB6C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return OUTLINED_FUNCTION_0_0(sub_23DE3AB88);
}

uint64_t sub_23DE3AB88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = sub_23DE3A3BC();
  sub_23DE39FCC(v2);
  v3 = *(v1 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
  *(v1 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager) = v6;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23DE3ACC0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_23DE3AD7C;

  return sub_23DE3AB6C(a1);
}

uint64_t sub_23DE3AD7C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *(v4 + 16);
  v8 = *v2;
  *v6 = *v2;

  if (v3)
  {
    v9 = sub_23E1FBEBC();

    v10 = OUTLINED_FUNCTION_1();
    v11(v10, v9);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_1();
    v13(v12, 0);
  }

  _Block_release(*(v5 + 24));
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_23DE3AEE8()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE3B210;

  return sub_23DE3ACC0(v2, v4, v3);
}

uint64_t sub_23DE3AF98()
{
  OUTLINED_FUNCTION_4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3(v1);

  return v3(v2);
}

id sub_23DE3B02C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_23E1FDBDC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_23DE3B090()
{
  OUTLINED_FUNCTION_4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3(v1);

  return v3(v2);
}

uint64_t sub_23DE3B124()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id OUTLINED_FUNCTION_6(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_23DE3B294(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for LogOutUserAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DE3B40C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogOutUserAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DE3B468()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogOutUserAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

int *ParameterStateToTypedValueContext.init(typeId:isInt:isEnum:enumTypeDefs:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_23DE4829C(a1, a5, &qword_27E32BFD0, &qword_23E223710);
  result = type metadata accessor for ParameterStateToTypedValueContext(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

void ParameterStateToTypedValueContext.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v45 = v3;
  v44 = sub_23E1FD41C();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = sub_23E1FD46C();
  OUTLINED_FUNCTION_6_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_59();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  sub_23E1FD3EC();
  sub_23E1FD43C();
  v20 = swift_allocBox();
  OUTLINED_FUNCTION_21();
  (*(v21 + 104))();
  *v16 = v20;
  (*(v12 + 104))(v16, *MEMORY[0x277D72D50], v10);
  v22 = sub_23E1FD45C();
  v23 = *(v12 + 8);
  v23(v16, v10);
  v46 = v10;
  v23(v19, v10);
  v24 = type metadata accessor for ParameterStateToTypedValueContext(0);
  v25 = v44;
  v26 = v45;
  *(v45 + v24[5]) = v22 & 1;
  v27 = *(v5 + 16);
  v47 = v2;
  v43 = v27;
  v27(v9, v2, v25);
  v28 = v25;
  LODWORD(v19) = (*(v5 + 88))(v9, v25);
  LODWORD(v2) = *MEMORY[0x277D72B48];
  v29 = v5;
  v30 = v5;
  v31 = v28;
  v32 = *(v30 + 8);
  v32(v9, v31);
  v33 = v24[6];
  if (v19 == v2)
  {
    v34 = v26;
    *(v26 + v33) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD8, &qword_23E223718);
    v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_23E222340;
    v37 = v47;
    v43(v36 + v35, v47, v31);
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v34 = v26;
    *(v26 + v33) = 0;
    v38 = v47;
  }

  *(v34 + v24[7]) = v36;
  sub_23E1FD3EC();
  v32(v38, v31);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v46);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE3B8D0()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
  {
    goto LABEL_5;
  }

  v1 = [ObjCClassFromMetadata processingValueClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C148, &qword_23E223958);
  v2 = sub_23E1FDDEC();

  if (!*(v2 + 16))
  {

LABEL_5:
    v3 = 0x8000000000000000;
    goto LABEL_6;
  }

  v3 = *(v2 + 32);

LABEL_6:
  sub_23DE47518();
  swift_allocError();
  *v4 = v3;
  return swift_willThrow();
}

uint64_t sub_23DE3B9A4()
{
  OUTLINED_FUNCTION_23();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_23E1FDA1C();
  OUTLINED_FUNCTION_25(v7);
  v1[8] = OUTLINED_FUNCTION_42();
  v8 = sub_23E1FE12C();
  v1[9] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_42();
  v10 = sub_23E1FCA0C();
  v1[12] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[13] = v11;
  v1[14] = OUTLINED_FUNCTION_42();
  v12 = sub_23E1FD43C();
  v1[15] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[16] = v13;
  v1[17] = OUTLINED_FUNCTION_42();
  v14 = sub_23E1FD42C();
  v1[18] = v14;
  OUTLINED_FUNCTION_8(v14);
  v1[19] = v15;
  v1[20] = OUTLINED_FUNCTION_42();
  v16 = sub_23E1FD9BC();
  v1[21] = v16;
  OUTLINED_FUNCTION_8(v16);
  v1[22] = v17;
  v1[23] = OUTLINED_FUNCTION_91();
  v1[24] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_23DE3BBAC()
{
  v1 = v0[7];
  sub_23DE38DA8(0, &qword_280DAE6B8, 0x277D7C6A0);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &qword_280DAE670, 0x277D7C6B0), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    v1 = v0[3];
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v2 = swift_dynamicCastObjCClass();
    v0[25] = v2;
    if (v2)
    {
      v3 = v0[3];
      OUTLINED_FUNCTION_49();
      v0[26] = sub_23E1FDBDC();
      sub_23E1FDECC();
      v0[27] = sub_23E1FDEBC();
      OUTLINED_FUNCTION_37();
      sub_23E1FDE6C();
      OUTLINED_FUNCTION_78();

      return MEMORY[0x2822009F8](sub_23DE3C2A0, v4, v5);
    }

    OUTLINED_FUNCTION_63();
    v7 = MEMORY[0x277D72CD0];
    goto LABEL_11;
  }

  sub_23DE38DA8(0, &unk_280DAE6A8, 0x277D7C920);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    OUTLINED_FUNCTION_63();
    v7 = MEMORY[0x277D72CE0];
LABEL_11:
    (*(v6 + 104))(v1, *v7);
    sub_23E1FD41C();
    OUTLINED_FUNCTION_5_0();
    v8 = OUTLINED_FUNCTION_54();
    v9(v8);
    goto LABEL_12;
  }

  sub_23DE38DA8(0, &qword_280DAE618, 0x277D7C5B0);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &qword_280DAE610, 0x277D7C250), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()) || (sub_23DE38DA8(0, &qword_280DAE648, 0x277D7C510), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()) || (sub_23DE38DA8(0, &qword_280DAE620, 0x277D7C530), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    sub_23DE3B8D0();
    goto LABEL_12;
  }

  sub_23DE38DA8(0, &qword_280DAE718, off_278C01638);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_22;
  }

  sub_23DE38DA8(0, &qword_27E32C110, 0x277D7CA88);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &qword_27E32C118, 0x277D7C7A0), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()) || (sub_23DE38DA8(0, &qword_27E32C120, 0x277D7C328), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()) || (sub_23DE38DA8(0, &qword_27E32C128, 0x277D7C390), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()) || (sub_23DE38DA8(0, &qword_27E32C130, 0x277D7C710), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    OUTLINED_FUNCTION_30();
    v13 = OUTLINED_FUNCTION_69();
    v14(v13);
    sub_23E1FD40C();
    goto LABEL_31;
  }

  sub_23DE38DA8(0, &qword_280DAE638, 0x277D7C4B8);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &qword_280DAE640, off_278C015A0), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
LABEL_22:
    OUTLINED_FUNCTION_60();
    v11 = OUTLINED_FUNCTION_69();
    v12(v11);
    sub_23E1FD3FC();
LABEL_31:
    v15 = OUTLINED_FUNCTION_54();
    v16(v15);
    goto LABEL_12;
  }

  sub_23DE38DA8(0, &unk_280DAE628, 0x277D7C518);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_63();
    v7 = MEMORY[0x277D72C60];
    goto LABEL_11;
  }

  sub_23DE38DA8(0, &unk_280DAE320, 0x277D7C610);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_63();
    v7 = MEMORY[0x277D72D00];
    goto LABEL_11;
  }

  sub_23DE38DA8(0, &qword_280DAE318, 0x277D7C310);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &qword_280DAE330, 0x277D7C338), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    OUTLINED_FUNCTION_63();
    v7 = MEMORY[0x277D72CB8];
    goto LABEL_11;
  }

  if (dynamic_cast_existential_1_conditional(v1, v1, MEMORY[0x277D7BFD8]))
  {
    sub_23E1FC9EC();
    sub_23E1FC9DC();
    sub_23E1FC94C();
    v17 = OUTLINED_FUNCTION_45();
    v18(v17);
  }

  else
  {
    v19 = v0[7];
    sub_23DE38DA8(0, &qword_27E32C138, off_278C014B8);
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastMetatype())
    {
      sub_23DE47518();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v24 = v19 | 0x4000000000000000;
      swift_willThrow();

      OUTLINED_FUNCTION_19();
      goto LABEL_13;
    }

    v20 = v0[11];
    v21 = v0[2];
    sub_23DE38DA8(0, &qword_27E32C140, 0x277CFC3E0);
    sub_23E1FE0EC();
    sub_23E1FD9EC();
    sub_23E1FC9EC();
    sub_23E1FE0DC();
    static WFContentItem.toolkitTypeDefinition(context:)(v20, v21);
    v22 = OUTLINED_FUNCTION_79();
    v23(v22);
  }

LABEL_12:
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_7();
LABEL_13:

  return v10();
}

uint64_t sub_23DE3C2A0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[26];
  v2 = v0[25];

  v0[28] = [v2 parameterMetadataForIdentifier_];

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DE3C324()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    v6 = *(v0 + 24);
    v7 = [*(v0 + 224) valueType];
    sub_23E1FE05C();

    (*(v5 + 104))(v3, *MEMORY[0x277D733C0], v4);
    OUTLINED_FUNCTION_79();
    LOBYTE(v7) = sub_23E1FD9AC();

    v8 = *(v5 + 8);
    v8(v3, v4);
    v8(v2, v4);
    if (v7)
    {
      v9 = MEMORY[0x277D72CA0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = MEMORY[0x277D72CD0];
LABEL_6:
  (*(*(v0 + 128) + 104))(*(v0 + 16), *v9, *(v0 + 120));
  sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0();
  v10 = OUTLINED_FUNCTION_54();
  v11(v10);
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_7();

  return v12();
}

uint64_t WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)()
{
  OUTLINED_FUNCTION_23();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = type metadata accessor for ParameterToTypedValueContext(0);
  v1[9] = v8;
  OUTLINED_FUNCTION_25(v8);
  v1[10] = OUTLINED_FUNCTION_42();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  OUTLINED_FUNCTION_25(v9);
  v1[11] = OUTLINED_FUNCTION_42();
  v10 = sub_23E1FD46C();
  v1[12] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[13] = v11;
  v1[14] = OUTLINED_FUNCTION_42();
  v12 = sub_23E1FE17C();
  v1[15] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[16] = v13;
  v1[17] = OUTLINED_FUNCTION_42();
  v14 = sub_23E1FDA1C();
  OUTLINED_FUNCTION_25(v14);
  v1[18] = OUTLINED_FUNCTION_42();
  v15 = sub_23E1FD9BC();
  OUTLINED_FUNCTION_25(v15);
  v1[19] = OUTLINED_FUNCTION_42();
  v16 = sub_23E1FE37C();
  v1[20] = v16;
  OUTLINED_FUNCTION_8(v16);
  v1[21] = v17;
  v1[22] = OUTLINED_FUNCTION_42();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE0, &unk_23E22A000);
  OUTLINED_FUNCTION_25(v18);
  v1[23] = OUTLINED_FUNCTION_42();
  v19 = sub_23E1FD86C();
  v1[24] = v19;
  OUTLINED_FUNCTION_8(v19);
  v1[25] = v20;
  v1[26] = OUTLINED_FUNCTION_42();
  v21 = sub_23E1FC1DC();
  v1[27] = v21;
  OUTLINED_FUNCTION_8(v21);
  v1[28] = v22;
  v1[29] = OUTLINED_FUNCTION_42();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE8, &qword_23E223730);
  v1[30] = v23;
  OUTLINED_FUNCTION_8(v23);
  v1[31] = v24;
  v1[32] = OUTLINED_FUNCTION_42();
  v25 = sub_23E1FD8DC();
  v1[33] = v25;
  OUTLINED_FUNCTION_8(v25);
  v1[34] = v26;
  v1[35] = OUTLINED_FUNCTION_91();
  v1[36] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFF0, &qword_23E223738);
  OUTLINED_FUNCTION_25(v27);
  v1[37] = OUTLINED_FUNCTION_42();
  v28 = sub_23E1FD72C();
  v1[38] = v28;
  OUTLINED_FUNCTION_8(v28);
  v1[39] = v29;
  v1[40] = OUTLINED_FUNCTION_91();
  v1[41] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_23DE3C8B0()
{
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v1 = swift_dynamicCastObjCClass();
  *(v0 + 336) = v1;
  if (v1)
  {
    v2 = [*(v0 + 24) key];
    if (!v2)
    {
      sub_23E1FDC1C();
      sub_23E1FDBDC();
      OUTLINED_FUNCTION_37();
    }

    *(v0 + 344) = v2;
    *(v0 + 352) = sub_23E1FDECC();
    *(v0 + 360) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v5 = sub_23DE3CC74;
    goto LABEL_5;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v6 = swift_dynamicCastObjCClass();
  *(v0 + 464) = v6;
  if (v6)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      swift_unknownObjectRetain();
      v9 = [v8 value];
      *(v0 + 472) = v9;
      if (v9)
      {
        sub_23E1FDECC();
        *(v0 + 480) = sub_23E1FDEBC();
        OUTLINED_FUNCTION_37();
        sub_23E1FDE6C();
        OUTLINED_FUNCTION_78();
        v5 = sub_23DE3DD60;
LABEL_5:

        return MEMORY[0x2822009F8](v5, v3, v4);
      }

      swift_unknownObjectRelease();
    }

    ObjectType = swift_getObjectType();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 576) = v26;
    *v26 = v27;
    v17 = OUTLINED_FUNCTION_4_0(v26);
    v24 = ObjectType;
    goto LABEL_19;
  }

  v10 = *(v0 + 24);
  v11 = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v10, v11, &protocol descriptor for TypedValueRepresentableParameter))
  {
LABEL_16:
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 600) = v15;
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_4_0(v15);
    v24 = 0xF000000000000007;
LABEL_19:

    return sub_23DE3FD40(v17, v24, v18, v19, v20, v21, v22, v23);
  }

  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  sub_23DE48254(*(v0 + 40), v13, &qword_27E32BFD0, &qword_23E223710);
  OUTLINED_FUNCTION_93(v13, 1, v12);
  if (v14)
  {
    sub_23DE481FC(*(v0 + 88), &qword_27E32BFD0, &qword_23E223710);
    goto LABEL_16;
  }

  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v30 = *(v0 + 96);
  v32 = *(v0 + 72);
  v31 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 24);
  (*(v29 + 32))(v28, *(v0 + 88), v30);
  (*(v29 + 16))(v31, v28, v30);
  *(v31 + *(v32 + 20)) = v33;
  swift_unknownObjectRetain();
  v35 = v34;
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 584) = v36;
  *v36 = v37;
  v36[1] = sub_23DE3EABC;
  OUTLINED_FUNCTION_35();

  return sub_23DE47120();
}

uint64_t sub_23DE3CC74()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[42];
  v2 = v0[43];

  v0[46] = [v1 parameterMetadataForIdentifier_];

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DE3CCF8()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 368);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = [v1 wf_parameterDefinition];
  *(v0 + 376) = v2;
  if (!v2)
  {

LABEL_7:
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 456) = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_4_0(v7);
    v16 = 0x8000000000000020;
    goto LABEL_8;
  }

  v3 = v2;
  objc_opt_self();
  OUTLINED_FUNCTION_38();
  v4 = swift_dynamicCastObjCClass();
  v5 = *(v0 + 64);
  if (v4 && (objc_opt_self(), OUTLINED_FUNCTION_20(), v6 = swift_dynamicCastObjCClass(), v5 = *(v0 + 64), !v6))
  {
    sub_23DE38DA8(0, &qword_27E32C010, 0x277D7C678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23E2235B0;
    *(v18 + 32) = v5;
    swift_unknownObjectRetain();
    v5 = sub_23DE44928(v18);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  *(v0 + 384) = v5;
  v19 = [v3 linkValueFromParameterState:v5 action:*(v0 + 336)];
  *(v0 + 392) = v19;
  if (v19)
  {
    *(v0 + 400) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();

    return MEMORY[0x2822009F8](sub_23DE3CF48, v20, v21);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 440) = v22;
  *v22 = v23;
  v9 = OUTLINED_FUNCTION_4_0(v22);
  v16 = 0x8000000000000028;
LABEL_8:

  return sub_23DE3FD40(v9, v16, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_23DE3CF48()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 336);

  *(v0 + 408) = [v1 fullyQualifiedLinkActionIdentifier];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DE3CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  v21 = v20[51];
  v22 = [v21 bundleIdentifier];

  v23 = sub_23E1FDC1C();
  v25 = v24;

  sub_23E1FD24C();
  sub_23E1FD22C();
  v20[52] = sub_23E1FD23C();
  v26 = v20[35];
  v76 = v20[34];
  v27 = v20[32];
  v79 = v20[33];
  v28 = v20[30];
  v29 = v20[31];

  sub_23E1FD8CC();
  swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *v27 = v30;
  (*(v29 + 104))(v27, *MEMORY[0x277D721C8], v28);
  sub_23DE478FC(&qword_27E32BFF8, MEMORY[0x277D73330]);
  sub_23DE4816C(&unk_27E32C000, &qword_27E32BFE8, &qword_23E223730);
  sub_23E1FD26C();

  (*(v29 + 8))(v27, v28);
  v31 = *(v76 + 8);
  v31(v26, v79);
  sub_23E1FC14C();
  sub_23E1FD25C();
  v32 = v20[37];
  v33 = v20[38];
  v34 = v20[36];
  v35 = v20[33];
  (*(v20[28] + 8))(v20[29], v20[27]);
  v31(v34, v35);
  OUTLINED_FUNCTION_93(v32, 1, v33);
  if (!v52)
  {
    (*(v20[39] + 32))(v20[41], v20[37], v20[38]);
    type metadata accessor for ParameterStateToTypedValueContext(0);
    OUTLINED_FUNCTION_61();
    if (!v52)
    {
LABEL_14:
      v67 = v20[46];
      (*(v20[39] + 16))(v20[40], v20[41], v20[38]);
      v68 = [v67 valueType];
      sub_23E1FE05C();

      sub_23E1FD9EC();
      sub_23E1FE36C();
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      v20[53] = v69;
      *v69 = v70;
      v69[1] = sub_23DE3D67C;
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_41();

      return MEMORY[0x2821E49D8](v71);
    }

    v54 = v20[5];
    v55 = *(v54 + *(v53 + 28));
    v56 = v20[23];
    if (v55)
    {
      *(swift_task_alloc() + 16) = v54;
      sub_23DE44E18(sub_23DE4756C, v55, v56);

      v57 = sub_23E1FD41C();
      OUTLINED_FUNCTION_93(v56, 1, v57);
      if (!v52)
      {
        v58 = *(v57 - 8);
        if ((*(v58 + 88))(v20[23], v57) == *MEMORY[0x277D72B48])
        {
          (*(v58 + 96))(v20[23], v57);
          v59 = OUTLINED_FUNCTION_50();
          v61 = v60(v59);
          MEMORY[0x23EF04040](v61);
          v62 = OUTLINED_FUNCTION_79();
          v63(v62);
        }

        else
        {
          (*(v58 + 8))(v20[23], v57);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v64 = sub_23E1FD41C();
      OUTLINED_FUNCTION_73(v56, v65, v66, v64);
    }

    sub_23DE481FC(v20[23], &qword_27E32BFE0, &unk_23E22A000);
    goto LABEL_14;
  }

  v36 = v20[49];
  v38 = v20[46];
  v37 = v20[47];
  sub_23DE481FC(v20[37], &qword_27E32BFF0, &qword_23E223738);
  sub_23DE47518();
  OUTLINED_FUNCTION_29();
  v39 = swift_allocError();
  *v40 = 0x8000000000000008;
  v81 = v39;
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1_0();
  v73 = v42;
  v74 = v41;
  v75 = v20[17];
  v77 = v20[14];
  v78 = v20[11];
  v80 = v20[10];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v73, v74, v75, v77, v78, v80, v81, a17, a18, a19, a20);
}

uint64_t sub_23DE3D67C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 432) = v0;

  v7 = OUTLINED_FUNCTION_50();
  v8(v7);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE3D7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_75();

  swift_unknownObjectRelease();
  v20 = OUTLINED_FUNCTION_45();
  v21(v20);
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3D8D0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE3D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *(v18 + 376);
  v20 = *(v18 + 368);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_57();
  v42 = *v21;

  OUTLINED_FUNCTION_24();
  v36 = *(v20 + 176);
  OUTLINED_FUNCTION_24();
  v37 = *(v22 + 152);
  OUTLINED_FUNCTION_24();
  v38 = *(v23 + 144);
  OUTLINED_FUNCTION_24();
  v39 = *(v24 + 136);
  OUTLINED_FUNCTION_24();
  v40 = *(v25 + 112);
  OUTLINED_FUNCTION_24();
  v41 = *(v26 + 88);
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, v40, v41, a16, v42, a18, a19, a20);
}

uint64_t sub_23DE3DD60()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 464);

  *(v0 + 488) = [v1 intentDescription];
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DE3DDDC()
{
  OUTLINED_FUNCTION_23();
  if (*(v0 + 488))
  {
    v1 = [*(v0 + 24) key];
    if (!v1)
    {
      sub_23E1FDC1C();
      sub_23E1FDBDC();
      OUTLINED_FUNCTION_37();
    }

    v2 = [*(v0 + 488) slotByName_];
    *(v0 + 496) = v2;

    if (v2)
    {
      v3 = [v2 wf:*(v0 + 472) contentItemForValue:?];
      *(v0 + 504) = v3;
      if (v3)
      {
        sub_23E1FE16C();
        swift_task_alloc();
        OUTLINED_FUNCTION_31();
        *(v0 + 512) = v4;
        *v4 = v5;
        v4[1] = sub_23DE3E018;
        v6 = OUTLINED_FUNCTION_35();

        return MEMORY[0x2821E48C8](v6);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v0 + 528) = v19;
      *v19 = v20;
      v9 = OUTLINED_FUNCTION_4_0(v19);
      v16 = 0x8000000000000040;
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v0 + 544) = v17;
      *v17 = v18;
      v9 = OUTLINED_FUNCTION_4_0(v17);
      v16 = 0x8000000000000038;
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 560) = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_4_0(v7);
    v16 = 0x8000000000000030;
  }

  return sub_23DE3FD40(v9, v16, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_23DE3E018()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 520) = v0;

  v7 = OUTLINED_FUNCTION_50();
  v8(v7);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE3E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *(v18 + 496);
  v20 = *(v18 + 488);
  OUTLINED_FUNCTION_77(*(v18 + 504));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3E260()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE3E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *(v18 + 488);
  OUTLINED_FUNCTION_77(*(v18 + 496));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3E448()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 552) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE3E540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_77(*(v18 + 488));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3E62C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE3E724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_57();
  v42 = *v21;

  OUTLINED_FUNCTION_24();
  v36 = *(v20 + 176);
  OUTLINED_FUNCTION_24();
  v37 = *(v22 + 152);
  OUTLINED_FUNCTION_24();
  v38 = *(v23 + 144);
  OUTLINED_FUNCTION_24();
  v39 = *(v24 + 136);
  OUTLINED_FUNCTION_24();
  v40 = *(v25 + 112);
  OUTLINED_FUNCTION_24();
  v41 = *(v26 + 88);
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, v40, v41, a16, v42, a18, a19, a20);
}

uint64_t sub_23DE3EABC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 592) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE3EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_87();
  sub_23DE47474(v18);
  v19 = OUTLINED_FUNCTION_54();
  v20(v19);
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3ECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_87();
  sub_23DE47474(v18);
  v20 = OUTLINED_FUNCTION_54();
  v21(v20);
  v31 = *(v19 + 592);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, v31, a16, a17, a18);
}

uint64_t sub_23DE3EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_57();
  v42 = *v21;

  OUTLINED_FUNCTION_24();
  v36 = *(v20 + 176);
  OUTLINED_FUNCTION_24();
  v37 = *(v22 + 152);
  OUTLINED_FUNCTION_24();
  v38 = *(v23 + 144);
  OUTLINED_FUNCTION_24();
  v39 = *(v24 + 136);
  OUTLINED_FUNCTION_24();
  v40 = *(v25 + 112);
  OUTLINED_FUNCTION_24();
  v41 = *(v26 + 88);
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, v40, v41, a16, v42, a18, a19, a20);
}

uint64_t sub_23DE3F058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = v18[47];
  v20 = v18[46];
  swift_unknownObjectRelease();

  v30 = v18[56];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, v30, a16, a17, a18);
}

uint64_t sub_23DE3F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_75();

  swift_unknownObjectRelease();
  v21 = OUTLINED_FUNCTION_45();
  v22(v21);
  v32 = *(v18 + 432);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, v32, a16, a17, a18);
}

uint64_t sub_23DE3F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v28 = *(v18 + 568);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

uint64_t sub_23DE3F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_77(*(v18 + 488));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v28 = *(v18 + 552);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

uint64_t sub_23DE3F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *(v18 + 488);
  OUTLINED_FUNCTION_77(*(v18 + 496));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v29 = *(v18 + 536);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, v29, a16, a17, a18);
}

uint64_t sub_23DE3F544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v20 = v18[62];
  v19 = v18[63];
  v21 = v18[61];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v31 = v18[65];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, v31, a16, a17, a18);
}

uint64_t sub_23DE3F66C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DE3F6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v59 = a1;
  v51 = a4;
  v77 = sub_23E1FD95C();
  v5 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E1FD86C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E1FD41C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v66 = *(a3 + 16);
  if (v66)
  {
    v65 = 0;
    v19 = *(v12 + 16);
    v18 = v12 + 16;
    v71 = a3 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v72 = v19;
    v20 = 0;
    v70 = (v18 + 72);
    v69 = *MEMORY[0x277D72B48];
    v62 = (v8 + 32);
    v63 = (v18 + 80);
    v75 = v5 + 16;
    v73 = (v18 - 8);
    v74 = (v5 + 8);
    v64 = (v8 + 8);
    v68 = *(v18 + 56);
    v21 = v66;
    v56 = v5;
    v55 = v7;
    v54 = v10;
    v53 = v11;
    v52 = v18;
    v58 = &v50 - v16;
    v57 = v15;
    do
    {
      v22 = v72;
      v72(v17, (v71 + v68 * v20), v11);
      v22(v15, v17, v11);
      v23 = (*v70)(v15, v11);
      if (v23 == v69)
      {
        v67 = v20;
        (*v63)(v15, v11);
        v24 = (*v62)(v10, v15, v7);
        v25 = *(MEMORY[0x23EF04040](v24) + 16);

        if (v25)
        {
          v27 = MEMORY[0x23EF04040](v26);
          v28 = *(v27 + 16);
          if (v28)
          {
            v78[0] = MEMORY[0x277D84F90];
            sub_23DE63E2C(0, v28, 0);
            v29 = v78[0];
            v30 = *(v5 + 80);
            v61 = v27;
            v31 = v27 + ((v30 + 32) & ~v30);
            v32 = *(v5 + 72);
            v33 = *(v5 + 16);
            do
            {
              v34 = v76;
              v35 = v77;
              v33(v76, v31, v77);
              v36 = sub_23E1FD94C();
              v38 = v37;
              (*v74)(v34, v35);
              v78[0] = v29;
              v40 = *(v29 + 16);
              v39 = *(v29 + 24);
              if (v40 >= v39 >> 1)
              {
                sub_23DE63E2C(v39 > 1, v40 + 1, 1);
                v29 = v78[0];
              }

              *(v29 + 16) = v40 + 1;
              v41 = v29 + 16 * v40;
              *(v41 + 32) = v36;
              *(v41 + 40) = v38;
              v31 += v32;
              --v28;
            }

            while (v28);

            v5 = v56;
            v7 = v55;
            v10 = v54;
            v11 = v53;
          }

          else
          {

            v29 = MEMORY[0x277D84F90];
          }

          v78[0] = v59;
          v78[1] = v60;
          MEMORY[0x28223BE20](v43);
          *(&v50 - 2) = v78;
          v44 = v65;
          v45 = sub_23DEDEAA0(sub_23DE482E4, (&v50 - 4), v29);

          v15 = v57;
          if (v45)
          {
            v49 = v58;
            sub_23E1FD3EC();
            (*v64)(v10, v7);
            (*v73)(v49, v11);
            v46 = 0;
            goto LABEL_18;
          }

          v65 = v44;
          (*v64)(v10, v7);
          v17 = v58;
          (*v73)(v58, v11);
          v21 = v66;
          v20 = v67;
        }

        else
        {
          (*v64)(v10, v7);
          (*v73)(v17, v11);
          v20 = v67;
        }
      }

      else
      {
        v42 = *v73;
        (*v73)(v17, v11);
        v42(v15, v11);
        v21 = v66;
      }

      ++v20;
    }

    while (v20 != v21);
  }

  v46 = 1;
LABEL_18:
  v47 = sub_23E1FD46C();
  return __swift_storeEnumTagSinglePayload(v51, v46, 1, v47);
}

uint64_t sub_23DE3FD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  v9 = sub_23E1FE17C();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v10 = sub_23E1FC9BC();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v8[17] = swift_task_alloc();
  v11 = sub_23E1FC6FC();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  v12 = sub_23E1FC08C();
  v8[21] = v12;
  v8[22] = *(v12 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C188, &unk_23E223990);
  v8[25] = swift_task_alloc();
  v13 = sub_23E1FD82C();
  v8[26] = v13;
  v8[27] = *(v13 - 8);
  v8[28] = swift_task_alloc();
  sub_23E1FDA1C();
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C038, qword_23E2237B0);
  v8[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v14 = sub_23E1FD03C();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE0, &unk_23E22A000);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v15 = sub_23E1FD41C();
  v8[42] = v15;
  v8[43] = *(v15 - 8);
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v16 = sub_23E1FD46C();
  v8[50] = v16;
  v8[51] = *(v16 - 8);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE402CC, 0, 0);
}

uint64_t sub_23DE402CC()
{
  v381 = v0;
  v4 = v0;
  v5 = *(v0 + 24);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 value];
    if (v7 && (v5 = v7, v8 = [v7 number], v5, v8))
    {
      v9 = [v8 BOOLValue];
    }

    else
    {
      v9 = 0;
    }

    OUTLINED_FUNCTION_40();
    sub_23E1FD39C();
    v10 = swift_allocBox();
    *v11 = v9;
    OUTLINED_FUNCTION_21();
    v13 = *(v12 + 104);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 32);
    v17 = *(v16 + *(type metadata accessor for ParameterStateToTypedValueContext(0) + 20));
    v18 = [v15 number];
    v5 = v4[2];
    if (v17 == 1)
    {
LABEL_9:
      v19 = [v18 integerValue];

      v20 = sub_23E1FD39C();
      v10 = swift_allocBox();
      *v21 = v19;
      v13 = *(*(v20 - 8) + 104);
LABEL_10:
      v13();
      *v5 = v10;
LABEL_11:
      v22 = MEMORY[0x277D72A58];
LABEL_12:
      v23 = *v22;
      sub_23E1FD3AC();
      OUTLINED_FUNCTION_5_0();
      (*(v24 + 104))(v5, v23);

      OUTLINED_FUNCTION_7();
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = *(v0 + 32);
    v30 = *(v29 + *(type metadata accessor for ParameterStateToTypedValueContext(0) + 20));
    v31 = [v28 number];
    v18 = v31;
    if (v30 == 1)
    {
      if (v31)
      {
        v5 = v4[2];
        goto LABEL_9;
      }
    }

    else if (v31)
    {
      v5 = v4[2];
LABEL_32:
      [v18 doubleValue];
      v70 = v69;

      v71 = sub_23E1FD39C();
      v72 = swift_allocBox();
      *v73 = v70;
      (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D729A8], v71);
LABEL_33:
      *v5 = v72;
      goto LABEL_11;
    }

    goto LABEL_96;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v5 = *(v0 + 32);
    type metadata accessor for ParameterStateToTypedValueContext(0);
    OUTLINED_FUNCTION_61();
    if (v35)
    {
      v5 = *(v5 + *(v34 + 28));
      if (v5)
      {
        v36 = [v33 string];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_70();

        v37 = OUTLINED_FUNCTION_66();
        sub_23DE3F6E8(v37, v38, v5, v39);

        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_93(v40, v41, v42);
        if (v35)
        {
          v43 = *(v0 + 328);
          sub_23DE481FC(*(v0 + 392), &qword_27E32BFD0, &qword_23E223710);
          sub_23DF194E0(v5, v43);
          OUTLINED_FUNCTION_53();
          OUTLINED_FUNCTION_93(v44, v45, v46);
          if (v35)
          {
            v48 = *(v0 + 40);
            v47 = v4[6];
            sub_23DE481FC(v4[41], &qword_27E32BFE0, &unk_23E22A000);
            sub_23E1FCB9C();
            v49 = v48;
            v50 = v47;
            v51 = sub_23E1FD02C();
            v52 = sub_23E1FE1BC();

            v53 = os_log_type_enabled(v51, v52);
            v55 = v4[33];
            v54 = v4[34];
            if (v53)
            {
              v375 = v4[39];
              v57 = v4[5];
              v56 = v4[6];
              v58 = swift_slowAlloc();
              v380[0] = swift_slowAlloc();
              *v58 = 136315394;
              v59 = [v57 key];
              sub_23E1FDC1C();

              v60 = OUTLINED_FUNCTION_85();
              v63 = sub_23DE56B40(v60, v61, v62);

              *(v58 + 4) = v63;
              *(v58 + 12) = 2080;
              v64 = [v56 identifier];
              v65 = sub_23E1FDC1C();
              v67 = v66;

              v68 = sub_23DE56B40(v65, v67, v380);

              *(v58 + 14) = v68;
              _os_log_impl(&dword_23DE30000, v51, v52, "Unable to find any enumeration type identifier for %s in %s", v58, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_56();
              OUTLINED_FUNCTION_56();

              (*(v54 + 8))(v375, v55);
            }

            else
            {

              v200 = OUTLINED_FUNCTION_86();
              v202(v200, v201);
            }

            sub_23DE47518();
            OUTLINED_FUNCTION_29();
            swift_allocError();
            OUTLINED_FUNCTION_43();
            v206 = v205 - 8;
            goto LABEL_97;
          }

          v168 = *(v0 + 368);
          v167 = v4[47];
          v169 = v4[42];
          v170 = v4[43];
          v172 = v4[5];
          v171 = v4[6];
          (*(v170 + 32))(v167, v4[41], v169);
          sub_23E1FCB9C();
          (*(v170 + 16))(v168, v167, v169);
          v173 = v172;
          v174 = v171;
          v175 = sub_23E1FD02C();
          v176 = sub_23E1FE1BC();

          if (os_log_type_enabled(v175, v176))
          {
            v178 = v4[54];
            v179 = v4[51];
            v355 = v4[46];
            v358 = v4[50];
            v180 = v4[43];
            v360 = v4[42];
            v367 = v4[34];
            v372 = v4[33];
            v377 = v4[38];
            v363 = v176;
            v182 = v4[5];
            v181 = v4[6];
            v183 = swift_slowAlloc();
            v380[0] = swift_slowAlloc();
            *v183 = 136315650;
            v184 = [v182 key];
            v185 = sub_23E1FDC1C();
            log = v175;
            v186 = v4;
            v188 = v187;

            v189 = sub_23DE56B40(v185, v188, v380);

            *(v183 + 4) = v189;
            *(v183 + 12) = 2080;
            v190 = [v181 identifier];
            v191 = sub_23E1FDC1C();
            v193 = v192;

            v194 = sub_23DE56B40(v191, v193, v380);

            *(v183 + 14) = v194;
            *(v183 + 22) = 2080;
            sub_23E1FD3EC();
            sub_23E1FD44C();
            (*(v179 + 8))(v178, v358);
            v195 = *(v180 + 8);
            v195(v355, v360);
            v196 = OUTLINED_FUNCTION_33();
            v199 = sub_23DE56B40(v196, v197, v198);

            *(v183 + 24) = v199;
            _os_log_impl(&dword_23DE30000, log, v363, "Unable to match enumeration type identifier for %s in %s, falling back to %s", v183, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_56();

            (*(v367 + 8))(v377, v372);
          }

          else
          {
            v207 = v4[43];
            v208 = v4[38];
            v209 = v4[33];
            v210 = v4[34];

            v195 = *(v207 + 8);
            v186 = v4;
            v211 = OUTLINED_FUNCTION_33();
            (v195)(v211);
            (*(v210 + 8))(v208, v209);
          }

          v5 = v186[47];
          sub_23E1FD3EC();
          v212 = OUTLINED_FUNCTION_33();
          (v195)(v212);
          v4 = v186;
        }

        else
        {
          (*(*(v0 + 408) + 32))(*(v0 + 440), *(v0 + 392), *(v0 + 400));
        }

        v214 = v4[54];
        v213 = v4[55];
        v216 = v4[50];
        v215 = v4[51];
        v217 = v4[30];
        v373 = v4[26];
        OUTLINED_FUNCTION_40();
        sub_23E1FD2AC();
        v378 = swift_allocBox();
        (*(v215 + 16))(v214, v213, v216);
        v218 = [v33 string];
        sub_23E1FDC1C();

        v219 = [v33 string];
        sub_23E1FDC1C();

        v220 = sub_23E1FD7BC();
        OUTLINED_FUNCTION_73(v217, v221, v222, v220);
        sub_23E1FD7DC();
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v223, v224, v225, v373);
        sub_23E1FD29C();
        (*(v215 + 8))(v213, v216);
LABEL_71:
        *v5 = v378;
        v22 = MEMORY[0x277D729E8];
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_40();
    sub_23E1FD39C();
    v10 = swift_allocBox();
    v75 = v74;
    v76 = [v33 string];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_70();

    *v75 = v2;
    v75[1] = v3;
LABEL_35:
    OUTLINED_FUNCTION_21();
    v13 = *(v77 + 104);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v78 = swift_dynamicCastObjCClass();
  if (v78)
  {
    v79 = [v78 value];
    if (v79)
    {
      v80 = v79;
      v5 = *(v0 + 32);
      type metadata accessor for ParameterStateToTypedValueContext(0);
      OUTLINED_FUNCTION_61();
      if (!v35 || (v5 = *(v5 + *(v81 + 28))) == 0)
      {
        OUTLINED_FUNCTION_40();
        v146 = sub_23E1FD39C();
        v72 = swift_allocBox();
        v148 = v147;
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_70();

        *v148 = v2;
        v148[1] = v3;
        OUTLINED_FUNCTION_21();
        (*(v149 + 104))(v148, v150, v146);
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_73(*(v0 + 248), v82, v83, *(v0 + 208));
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        OUTLINED_FUNCTION_38();
        if (swift_dynamicCastObjCClass())
        {
          v85 = *(v0 + 248);
          v84 = *(v0 + 256);
          v86 = *(v0 + 40);
          swift_unknownObjectRetain();
          sub_23E1FDA0C();
          sub_23E1FD7AC();
          sub_23DE481FC(v85, &qword_27E32C020, &unk_23E229720);
          sub_23DE4829C(v84, v85, &qword_27E32C020, &unk_23E229720);
        }
      }

      sub_23E1FDC1C();
      OUTLINED_FUNCTION_70();
      v87 = v80;
      v88 = OUTLINED_FUNCTION_66();
      sub_23DE3F6E8(v88, v89, v5, v90);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_93(v91, v92, v93);
      if (v35)
      {
        v94 = *(v0 + 320);
        sub_23DE481FC(*(v0 + 384), &qword_27E32BFD0, &qword_23E223710);
        sub_23DF194E0(v5, v94);
        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_93(v95, v96, v97);
        if (v35)
        {
          v98 = *(v0 + 320);
          v100 = *(v0 + 40);
          v99 = *(v0 + 48);

          sub_23DE481FC(v98, &qword_27E32BFE0, &unk_23E22A000);
          sub_23E1FCB9C();
          v101 = v100;
          v102 = v99;
          v103 = sub_23E1FD02C();
          v104 = sub_23E1FE1BC();

          v105 = os_log_type_enabled(v103, v104);
          v106 = *(v0 + 296);
          v108 = *(v0 + 264);
          v107 = *(v0 + 272);
          v109 = *(v0 + 248);
          if (v105)
          {
            v365 = v109;
            v112 = v4 + 5;
            v111 = v4[5];
            v110 = v112[1];
            v370 = v87;
            v113 = swift_slowAlloc();
            v380[0] = swift_slowAlloc();
            *v113 = 136315394;
            v114 = [v111 key];
            v376 = v108;
            v115 = sub_23E1FDC1C();
            v362 = v106;
            v117 = v116;

            v118 = sub_23DE56B40(v115, v117, v380);

            *(v113 + 4) = v118;
            *(v113 + 12) = 2080;
            v119 = [v110 identifier];
            sub_23E1FDC1C();

            v120 = OUTLINED_FUNCTION_45();
            v123 = sub_23DE56B40(v120, v121, v122);

            *(v113 + 14) = v123;
            _os_log_impl(&dword_23DE30000, v103, v104, "Unable to find any enumeration type identifier for %s in %s", v113, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_56();

            (*(v107 + 8))(v362, v376);
            sub_23DE47518();
            OUTLINED_FUNCTION_29();
            swift_allocError();
            OUTLINED_FUNCTION_43();
            OUTLINED_FUNCTION_55(v125, v126, v124 - 8);

            v127 = v365;
          }

          else
          {

            v291 = OUTLINED_FUNCTION_45();
            v292(v291);
            sub_23DE47518();
            OUTLINED_FUNCTION_29();
            v293 = swift_allocError();
            OUTLINED_FUNCTION_55(v293, v294, 0x8000000000000010);

            v127 = v109;
          }

          sub_23DE481FC(v127, &qword_27E32C020, &unk_23E229720);
          goto LABEL_98;
        }

        v374 = v87;
        v233 = *(v0 + 352);
        v232 = v4[45];
        v235 = v4[42];
        v234 = v4[43];
        v237 = v4[5];
        v236 = v4[6];
        (*(v234 + 32))(v232, v4[40], v235);
        sub_23E1FCB9C();
        (*(v234 + 16))(v233, v232, v235);
        v238 = v237;
        v239 = v236;
        v240 = sub_23E1FD02C();
        v241 = sub_23E1FE1BC();

        if (os_log_type_enabled(v240, v241))
        {
          v243 = v4[54];
          v361 = v240;
          v244 = v4[51];
          v245 = v4[43];
          loga = v4[44];
          v356 = v4[50];
          v359 = v4[42];
          v379 = v4[36];
          v364 = v4[34];
          v368 = v4[33];
          v246 = v4[5];
          v349 = v4[6];
          v247 = swift_slowAlloc();
          v380[0] = swift_slowAlloc();
          *v247 = 136315650;
          v248 = [v246 key];
          v249 = sub_23E1FDC1C();
          v350 = v241;
          v251 = v250;

          v252 = sub_23DE56B40(v249, v251, v380);

          *(v247 + 4) = v252;
          *(v247 + 12) = 2080;
          v253 = [v349 identifier];
          v254 = sub_23E1FDC1C();
          v256 = v255;

          v257 = sub_23DE56B40(v254, v256, v380);

          *(v247 + 14) = v257;
          *(v247 + 22) = 2080;
          sub_23E1FD3EC();
          sub_23E1FD44C();
          (*(v244 + 8))(v243, v356);
          v258 = *(v245 + 8);
          v258(loga, v359);
          v259 = OUTLINED_FUNCTION_33();
          v262 = sub_23DE56B40(v259, v260, v261);

          *(v247 + 24) = v262;
          _os_log_impl(&dword_23DE30000, v361, v350, "Unable to match enumeration type identifier for %s in %s, falling back to %s", v247, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_56();

          v364[1](v379, v368);
        }

        else
        {
          v295 = v4[43];

          v258 = *(v295 + 8);
          v296 = OUTLINED_FUNCTION_33();
          (v258)(v296);
          v297 = OUTLINED_FUNCTION_66();
          v298(v297);
        }

        v5 = v4[45];
        sub_23E1FD3EC();
        v299 = OUTLINED_FUNCTION_33();
        (v258)(v299);
      }

      else
      {
        v374 = v87;
        (*(*(v0 + 408) + 32))(*(v0 + 424), *(v0 + 384), *(v0 + 400));
      }

      v300 = v4[53];
      v301 = v4[54];
      v302 = v4[50];
      v303 = v4[51];
      v304 = v4[31];
      v305 = v4[32];
      OUTLINED_FUNCTION_40();
      sub_23E1FD2AC();
      v378 = swift_allocBox();
      (*(v303 + 16))(v301, v300, v302);
      sub_23E1FDC1C();

      sub_23DE48254(v304, v305, &qword_27E32C020, &unk_23E229720);
      sub_23E1FD29C();

      (*(v303 + 8))(v300, v302);
      sub_23DE481FC(v304, &qword_27E32C020, &unk_23E229720);
      goto LABEL_71;
    }

LABEL_96:
    sub_23DE47518();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_43();
    goto LABEL_97;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v128 = swift_dynamicCastObjCClass();
  if (v128)
  {
    if ([v128 value])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_38();
      v129 = swift_dynamicCastObjCClass();
      if (v129)
      {
        v130 = v129;
        swift_unknownObjectRetain();
        v131 = [v130 identifier];
        if (v131)
        {
          v132 = v131;
          sub_23E1FDC1C();
          OUTLINED_FUNCTION_68();

          v133 = [v130 codableDescription];
          v134 = [v133 mainBundleIdentifier];

          if (v134)
          {
            v136 = swift_allocObject();
            sub_23E1FDC1C();
            OUTLINED_FUNCTION_68();

            v136[2] = v1;
            v136[3] = v2;
            v137 = [v130 codableDescription];
            v138 = [v137 typeName];

            if (v138)
            {
              v140 = v4[51];
              v139 = v4[52];
              v141 = v4[50];
              v142 = sub_23E1FDC1C();
              v144 = v143;

              v136[4] = v142;
              v136[5] = v144;
              *v139 = v136;
              (*(v140 + 104))(v139, *MEMORY[0x277D72D28], v141);
              v5 = [v130 displayString];
              sub_23E1FDC1C();

              v145 = [v130 subtitleString];
              if (v145)
              {
                v5 = v145;
                sub_23E1FDC1C();
              }

              v263 = v4[54];
              v264 = v4[51];
              v351 = v4[50];
              logb = v4[52];
              v265 = v4[30];
              v267 = v4[27];
              v266 = v4[28];
              v268 = v4[25];
              v357 = v4[26];
              OUTLINED_FUNCTION_40();
              v269 = sub_23E1FD7CC();
              OUTLINED_FUNCTION_73(v268, v270, v271, v269);
              v272 = sub_23E1FD7BC();
              OUTLINED_FUNCTION_73(v265, v273, v274, v272);
              sub_23E1FD7EC();
              sub_23E1FD31C();
              v369 = swift_allocBox();
              (*(v264 + 16))(v263, logb, v351);
              v275 = OUTLINED_FUNCTION_86();
              v276(v275);
              OUTLINED_FUNCTION_64();
              __swift_storeEnumTagSinglePayload(v277, v278, v279, v357);
              sub_23E1FD2BC();
              swift_unknownObjectRelease();
              (*(v267 + 8))(v266, v357);
              (*(v264 + 8))(logb, v351);
              *v5 = v369;
              v22 = MEMORY[0x277D72A38];
              goto LABEL_12;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return MEMORY[0x2821E4720](v135);
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_23DE47518();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_43();
    v206 = v231 - 16;
LABEL_97:
    OUTLINED_FUNCTION_55(v203, v204, v206);
LABEL_98:
    OUTLINED_FUNCTION_0_1();

    OUTLINED_FUNCTION_19();
LABEL_13:
    OUTLINED_FUNCTION_74();

    __asm { BRAA            X1, X16 }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v151 = swift_dynamicCastObjCClass();
  if (v151)
  {
    v152 = [v151 value];
    if (v152)
    {
      v153 = v152;
      v154 = [v153 bundleIdentifier];
      if (v154)
      {
        v155 = v154;
        sub_23E1FDC1C();

        v156 = [v153 localizedName];
        if (v156)
        {
          v157 = *(v0 + 240);
          v366 = *(v0 + 208);
          v5 = *(v0 + 16);
          sub_23E1FDC1C();

          sub_23E1FD39C();
          v371 = swift_allocBox();
          v159 = v158;
          v160 = sub_23E1FD7BC();
          OUTLINED_FUNCTION_73(v157, v161, v162, v160);
          OUTLINED_FUNCTION_85();
          sub_23E1FD7DC();
          OUTLINED_FUNCTION_64();
          __swift_storeEnumTagSinglePayload(v163, v164, v165, v366);
          sub_23E1FD35C();

          OUTLINED_FUNCTION_21();
          (*(v166 + 104))(v159);
          *v5 = v371;
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    goto LABEL_96;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v226 = *(v0 + 40);
    [objc_allocWithZone(MEMORY[0x277D7C2B0]) init];
    v227 = objc_allocWithZone(MEMORY[0x277D7C6F8]);
    *(v0 + 448) = OUTLINED_FUNCTION_52(v226);
    v228 = swift_task_alloc();
    v4[57] = v228;
    sub_23DE38DA8(0, &qword_27E32C1A8, 0x277D7C2A8);
    *v228 = v4;
    v228[1] = sub_23DE42420;
    goto LABEL_74;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v280 = swift_dynamicCastObjCClass();
  if (v280)
  {
    v281 = v280;
    v282 = [v280 magnitudeState];
    if (v282)
    {
      v283 = v282;
      v284 = [v282 decimalNumber];

      if (v284)
      {
        v285 = [v281 unitString];
        if (v285)
        {
          v286 = v285;
          v287 = v4[2];
          sub_23E1FDC1C();

          sub_23E1FD39C();
          swift_allocBox();
          OUTLINED_FUNCTION_70();
          [v284 doubleValue];
          sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
          v288 = OUTLINED_FUNCTION_50();
          sub_23DE4483C(v288, v289);
          v5 = v287;
          sub_23E1FBDBC();

          OUTLINED_FUNCTION_21();
          (*(v290 + 104))(v3);
          *v287 = v2;
          goto LABEL_11;
        }
      }
    }

    goto LABEL_96;
  }

  v5 = *(v0 + 24);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v306 = swift_dynamicCastObjCClass();
  if (v306)
  {
    v307 = [v306 value];
    if (!v307)
    {
      goto LABEL_96;
    }

    v308 = v307;
    if ([v307 isCurrentLocation])
    {
      OUTLINED_FUNCTION_40();
      sub_23E1FD39C();
      v10 = swift_allocBox();
      sub_23E1FD37C();

      goto LABEL_35;
    }

    if (![v308 placemark])
    {
      sub_23DE47518();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_55(v336, v337, v338);

      goto LABEL_98;
    }

    OUTLINED_FUNCTION_40();
    sub_23E1FD39C();
    swift_allocBox();
    OUTLINED_FUNCTION_68();
    sub_23E1FD38C();

    goto LABEL_118;
  }

  v309 = v0;
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v310 = swift_dynamicCastObjCClass();
  if (v310)
  {
    v311 = [v310 preprocessedDate];
    if (v311)
    {
      v312 = v311;
      v313 = v4[24];
      v314 = v4[21];
      v315 = v4[22];
      v5 = v4[2];
      sub_23E1FC05C();

      sub_23E1FD39C();
      swift_allocBox();
      OUTLINED_FUNCTION_68();
      (*(v315 + 32))(v316, v313, v314);
      OUTLINED_FUNCTION_21();
      (*(v317 + 104))(v2);
LABEL_119:
      *v5 = v1;
      goto LABEL_11;
    }

    v1 = *(v0 + 144);
    v325 = *(v0 + 136);
    sub_23E1FE34C();
    sub_23E1FC6EC();
    v2 = v326;
    v327 = OUTLINED_FUNCTION_45();
    v328(v327);
    v329 = objc_opt_self();
    v330 = sub_23E1FDBDC();

    v331 = [v329 datesInString:v330 error:0];

    v332 = sub_23E1FDDEC();
    sub_23DF194F8(v332, v325);

    OUTLINED_FUNCTION_53();
    if (__swift_getEnumTagSinglePayload(v333, v334, v335) == 1)
    {
      sub_23DE481FC(*(v0 + 136), &qword_27E32C180, &unk_23E224340);
      goto LABEL_96;
    }

    v343 = *(v0 + 176);
    v342 = *(v0 + 184);
    v344 = v309[21];
    v5 = v309[2];
    v345 = *(v343 + 32);
    v345(v342, v309[17], v344);
    sub_23E1FD39C();
    swift_allocBox();
    OUTLINED_FUNCTION_68();
    v345(v346, v342, v344);
LABEL_118:
    OUTLINED_FUNCTION_21();
    (*(v347 + 104))(v2);
    goto LABEL_119;
  }

  v318 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v318, ObjectType, MEMORY[0x277D7BFD8]))
  {
    v320 = *(v0 + 48);
    v321 = *(v0 + 40);
    v322 = v320;
    sub_23E1FC9AC();
    swift_getObjectType();
    v323 = swift_task_alloc();
    v4[62] = v323;
    *v323 = v4;
    v323[1] = sub_23DE429E4;
    OUTLINED_FUNCTION_74();

    return MEMORY[0x2821E4720](v135);
  }

  v339 = *(v0 + 40);
  [objc_allocWithZone(MEMORY[0x277D7C2B0]) init];
  v340 = objc_allocWithZone(MEMORY[0x277D7C6F8]);
  *(v0 + 512) = OUTLINED_FUNCTION_52(v339);
  v341 = swift_task_alloc();
  *(v0 + 520) = v341;
  *v341 = v0;
  v341[1] = sub_23DE42C40;
LABEL_74:
  OUTLINED_FUNCTION_74();

  return MEMORY[0x2821E48E0](v229);
}

uint64_t sub_23DE42420()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 464) = v4;
  *(v2 + 472) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DE42520(uint64_t a1)
{
  if (v1[58])
  {
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    if (swift_dynamicCastObjCClass())
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      v1[60] = v2;
      *v2 = v3;
      v2[1] = sub_23DE4278C;
      v4 = OUTLINED_FUNCTION_35();

      return sub_23DE445B0(v4);
    }

    swift_unknownObjectRelease();
  }

  v6 = v1[56];
  sub_23DE47518();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_92(v7, 0x8000000000000048);

  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_23DE4278C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE42884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE429E4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE42ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  (*(v32[15] + 8))(v32[16], v32[14]);
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE42C40()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 528) = v4;
  *(v2 + 536) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DE42D44()
{
  v40 = v0;
  v1 = v0[66];
  if (v1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = objc_opt_self();
      swift_unknownObjectRetain_n();
      v5 = [v4 itemWithFile_];
      v0[68] = v5;
      if (v5)
      {
        sub_23E1FE16C();
        swift_task_alloc();
        OUTLINED_FUNCTION_31();
        v0[69] = v6;
        *v6 = v7;
        v6[1] = sub_23DE43304;
LABEL_15:
        v19 = OUTLINED_FUNCTION_35();

        return MEMORY[0x2821E48C8](v19);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    OUTLINED_FUNCTION_37();
    ObjectType = swift_getObjectType();
    v38[0] = v1;
    swift_unknownObjectRetain();
    v16 = sub_23DE448B0(v38);
    v0[71] = v16;
    if (v16)
    {
      sub_23E1FE16C();
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      v0[72] = v17;
      *v17 = v18;
      v17[1] = sub_23DE435AC;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 value];
    v0[74] = v10;
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRetain();
      objc_opt_self();
      OUTLINED_FUNCTION_38();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
LABEL_10:
        v0[75] = v12;
        sub_23E1FE16C();
        swift_task_alloc();
        OUTLINED_FUNCTION_31();
        v0[76] = v14;
        *v14 = v15;
        v14[1] = sub_23DE43850;
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
      OUTLINED_FUNCTION_37();
      ObjectType = swift_getObjectType();
      v38[0] = v11;
      swift_unknownObjectRetain();
      v13 = sub_23DE448B0(v38);
      if (v13)
      {
        v12 = v13;
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

LABEL_18:
    swift_unknownObjectRelease();
  }

  v20 = v0[5];
  v21 = v0[6];
  sub_23E1FCB9C();
  v22 = v20;
  v23 = v21;
  v24 = sub_23E1FD02C();
  v25 = sub_23E1FE19C();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = v0[5];
    v26 = v0[6];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412546;
    *(v28 + 4) = v27;
    *(v28 + 12) = 2112;
    *(v28 + 14) = v26;
    *v29 = v27;
    v29[1] = v26;
    v30 = v27;
    v31 = v26;
    _os_log_impl(&dword_23DE30000, v24, v25, "Unable to guess typed value from parameter state: %@ in %@", v28, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C190, &qword_23E224B70);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();
  }

  v32 = v0[64];

  v33 = OUTLINED_FUNCTION_45();
  v34(v33);
  sub_23DE47518();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_92(v35, 0x8000000000000008);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_19();

  return v36();
}

uint64_t sub_23DE43304()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[70] = v0;

  if (v0)
  {
    swift_unknownObjectRelease();
    v7 = OUTLINED_FUNCTION_54();
    v8(v7);
  }

  else
  {
    (*(v3[10] + 8))(v3[13], v3[9]);
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE43440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  v33 = *(v32 + 512);

  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE435AC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[73] = v0;

  if (v0)
  {
    swift_unknownObjectRelease();
    v7 = OUTLINED_FUNCTION_54();
    v8(v7);
  }

  else
  {
    (*(v3[10] + 8))(v3[12], v3[9]);
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE436E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  v33 = *(v32 + 568);

  OUTLINED_FUNCTION_81();
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE43850()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 616) = v0;

  v7 = OUTLINED_FUNCTION_50();
  v8(v7);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE439A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  v33 = *(v32 + 512);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE43B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();

  v44 = *(v34 + 472);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v44, a32, a33, a34);
}

uint64_t sub_23DE43C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();

  swift_unknownObjectRelease();
  v44 = *(v34 + 488);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v44, a32, a33, a34);
}

uint64_t sub_23DE43E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  (*(v34[15] + 8))(v34[16], v34[14]);
  v44 = v34[63];
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v44, a32, a33, a34);
}

uint64_t sub_23DE43F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();

  v44 = *(v34 + 536);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v44, a32, a33, a34);
}

uint64_t sub_23DE440F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  v35 = *(v34 + 512);

  OUTLINED_FUNCTION_81();
  swift_unknownObjectRelease_n();
  v45 = *(v34 + 560);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v45, a32, a33, a34);
}

uint64_t sub_23DE44274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  v35 = *(v34 + 568);

  swift_unknownObjectRelease();
  v45 = *(v34 + 584);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v45, a32, a33, a34);
}

uint64_t sub_23DE443F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  v35 = *(v34 + 600);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v45 = *(v34 + 616);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v45, a32, a33, a34);
}

uint64_t sub_23DE445B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23DE445D0, 0, 0);
}

uint64_t sub_23DE445D0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_23E1FD3AC();
  *v3 = v0;
  v3[1] = sub_23DE446C4;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_23DE446C4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_19();

    return v10();
  }
}

uint64_t sub_23DE447E0()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v0();
}

id sub_23DE4483C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23E1FDBDC();

  v4 = [v2 initWithSymbol_];

  return v4;
}

id sub_23DE448B0(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = sub_23E1FE73C();
  v3 = [swift_getObjCClassFromMetadata() itemWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

id sub_23DE44928(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C430, &qword_23E223978);
  v2 = sub_23E1FDDCC();

  v3 = [v1 initWithParameterStates_];

  return v3;
}

uint64_t sub_23DE449AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE8, &qword_23E223730);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_23E1FD8BC();
}

uint64_t sub_23DE44A7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E1FD46C();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C170, &unk_23E223980);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_23E1FD3EC();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v15 = *(v6 + 56);
  sub_23DE48254(v14, v8, &qword_27E32BFD0, &qword_23E223710);
  sub_23DE48254(a2, &v8[v15], &qword_27E32BFD0, &qword_23E223710);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) != 1)
  {
    sub_23DE48254(v8, v12, &qword_27E32BFD0, &qword_23E223710);
    if (__swift_getEnumTagSinglePayload(&v8[v15], 1, v3) != 1)
    {
      v17 = v21;
      v18 = v22;
      (*(v22 + 32))(v21, &v8[v15], v3);
      sub_23DE478FC(&qword_27E32C178, MEMORY[0x277D72D58]);
      v16 = sub_23E1FDB2C();
      v19 = *(v18 + 8);
      v19(v17, v3);
      sub_23DE481FC(v14, &qword_27E32BFD0, &qword_23E223710);
      v19(v12, v3);
      sub_23DE481FC(v8, &qword_27E32BFD0, &qword_23E223710);
      return v16 & 1;
    }

    sub_23DE481FC(v14, &qword_27E32BFD0, &qword_23E223710);
    (*(v22 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_23DE481FC(v14, &qword_27E32BFD0, &qword_23E223710);
  if (__swift_getEnumTagSinglePayload(&v8[v15], 1, v3) != 1)
  {
LABEL_6:
    sub_23DE481FC(v8, &qword_27E32C170, &unk_23E223980);
    v16 = 0;
    return v16 & 1;
  }

  sub_23DE481FC(v8, &qword_27E32BFD0, &qword_23E223710);
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_23DE44E18@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = sub_23E1FD41C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v18 = a2;
  v10 = *(a2 + 16);
  v11 = (v6 + 8);
  while (1)
  {
    if (v10 == v9)
    {
      v13 = 1;
      v14 = v16;
      return __swift_storeEnumTagSinglePayload(v14, v13, 1, v5);
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v12 = v17(v8);
    if (v3)
    {
      return (*v11)(v8, v5);
    }

    if (v12)
    {
      break;
    }

    (*v11)(v8, v5);
    ++v9;
  }

  v14 = v16;
  (*(v6 + 32))(v16, v8, v5);
  v13 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v13, 1, v5);
}

uint64_t sub_23DE44FD4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v37 = a3;
  v3 = sub_23E1FC30C();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59();
  v44 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v38 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  OUTLINED_FUNCTION_6_0();
  v13 = v12;
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C0F0, &qword_23E223940) - 8;
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  (*(v13 + 16))(v16, v41, v11);
  v21 = v3;
  sub_23DE4816C(&qword_27E32C0F8, &unk_27E32C4D0, &unk_23E224680);
  sub_23E1FDD9C();
  v22 = *(v17 + 44);
  sub_23DE4816C(&unk_27E32C100, &unk_27E32C4D0, &unk_23E224680);
  v23 = (v5 + 16);
  v41 = (v5 + 32);
  for (i = (v5 + 8); ; (*i)(v44, v31))
  {
    sub_23E1FDF8C();
    if (*&v20[v22] == v43[0])
    {
      sub_23DE481FC(v20, &qword_27E32C0F0, &qword_23E223940);
      v34 = 1;
      v35 = v37;
      return __swift_storeEnumTagSinglePayload(v35, v34, 1, v21);
    }

    v25 = sub_23E1FDFAC();
    v26 = v38;
    (*v23)(v38);
    v25(v43, 0);
    sub_23E1FDF9C();
    v27 = v21;
    v28 = *v41;
    v29 = v44;
    v30 = v26;
    v31 = v27;
    (*v41)(v44, v30);
    v32 = v42;
    v33 = v39(v29);
    if (v32)
    {
      (*i)(v44, v31);
      return sub_23DE481FC(v20, &qword_27E32C0F0, &qword_23E223940);
    }

    if (v33)
    {
      break;
    }

    v42 = 0;
    v21 = v31;
  }

  sub_23DE481FC(v20, &qword_27E32C0F0, &qword_23E223940);
  v35 = v37;
  (v28)(v37, v44, v31);
  v21 = v31;
  v34 = 0;
  return __swift_storeEnumTagSinglePayload(v35, v34, 1, v21);
}

uint64_t ParameterToTypedValueContext.init(typeIdentifier:parameterState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23E1FD46C();
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for ParameterToTypedValueContext(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void sub_23DE45424(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_23DE4830C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DE45A40;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  [a2 getRecipientsWithPermissionRequestor:0 completionHandler:v10];
  _Block_release(v10);
}

void sub_23DE455D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FD3AC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v39 - v12);
  v14 = sub_23E1FD46C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v42 = v17;
    v18 = sub_23DE4D8B0();
    v43 = v15;
    v44 = v14;
    if (!v18)
    {
LABEL_12:
      sub_23E1FD28C();
      v30 = swift_allocBox();
      v31 = sub_23E1FD43C();
      v32 = swift_allocBox();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D72CD8], v31);
      v35 = v42;
      v34 = v43;
      *v42 = v32;
      (*(v34 + 104))(v35, *MEMORY[0x277D72D50], v44);
      sub_23E1FD27C();
      *v13 = v30;
      (*(v8 + 104))(v13, *MEMORY[0x277D729E0], v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
      sub_23E1FDE8C();
      return;
    }

    v19 = v18;
    v51 = MEMORY[0x277D84F90];
    sub_23DE63E4C(0, v18 & ~(v18 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v40 = v13;
      v41 = a4;
      v20 = 0;
      v21 = v51;
      v48 = a1 & 0xC000000000000001;
      v47 = *MEMORY[0x277D729B0];
      v46 = *MEMORY[0x277D72A58];
      v45 = v8 + 32;
      v49 = a1;
      v50 = v7;
      v22 = v19;
      do
      {
        if (v48)
        {
          MEMORY[0x23EF04DD0](v20, a1);
        }

        else
        {
          v23 = *(a1 + 8 * v20 + 32);
        }

        v24 = sub_23E1FD39C();
        v25 = swift_allocBox();
        v27 = v26;
        sub_23E1FD36C();
        (*(*(v24 - 8) + 104))(v27, v47, v24);
        *v11 = v25;
        v7 = v50;
        (*(v8 + 104))(v11, v46, v50);
        v51 = v21;
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          sub_23DE63E4C(v28 > 1, v29 + 1, 1);
          v21 = v51;
        }

        ++v20;
        v21[2] = v29 + 1;
        (*(v8 + 32))(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, v11, v7);
        a1 = v49;
      }

      while (v22 != v20);
      v13 = v40;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (a3)
    {
      v36 = a3;
    }

    else
    {
      sub_23DE47518();
      v36 = swift_allocError();
      *v37 = 0x8000000000000048;
    }

    v51 = v36;
    v38 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
    sub_23E1FDE7C();
  }
}

uint64_t sub_23DE45A40(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_23DE38DA8(0, &qword_27E32C1B8, 0x277CD3E90);
    v6 = sub_23E1FDDEC();
  }

  sub_23E1FB7CC();
  v8 = a3;
  v9 = a4;
  v7(v6, a3, a4);
}

void static WFVPNParameterState.typeDefinition(context:)(uint64_t a1)
{
  OUTLINED_FUNCTION_90();
  sub_23E1FD52C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v24 = v3 - v2;
  v4 = sub_23E1FBFBC();
  v5 = OUTLINED_FUNCTION_25(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v6 = sub_23E1FC1DC();
  v7 = OUTLINED_FUNCTION_25(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v8 = sub_23E1FD98C();
  v9 = OUTLINED_FUNCTION_25(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v10 = sub_23E1FD46C();
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  sub_23DE38DA8(0, &unk_280DAE6F0, off_278C018E0);
  sub_23DE4758C();
  v12 = sub_23E1FC95C();
  v13 = MEMORY[0x23EF031E0](v12);
  v14 = sub_23E1FDCBC("VPN (WFVPN)", 11);
  v16 = v15;
  sub_23E1FDCBC("VPN", 3);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v17 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v18 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v14, v16);
  v20 = v19;
  v21 = [v13 localize_];

  sub_23E1FDC1C();
  OUTLINED_FUNCTION_50();
  sub_23E1FD97C();
  sub_23DE478FC(&qword_280DAE5B0, MEMORY[0x277D72DC8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
  sub_23DE4816C(&qword_280DAE420, &qword_27E32D6E0, &qword_23E223788);
  sub_23E1FE4EC();
  OUTLINED_FUNCTION_66();
  sub_23E1FD50C();
  sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0();
  v22 = OUTLINED_FUNCTION_54();
  v23(v22);
  OUTLINED_FUNCTION_76();
}

id static WFVPNParameterState.parameterState(from:)()
{
  sub_23E1FD39C();
  OUTLINED_FUNCTION_6_0();
  v88 = v1;
  v89 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_15();
  v87 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  v91 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  v93 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C028, &qword_23E2237A0);
  OUTLINED_FUNCTION_25(v10);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v14 = sub_23E1FC0EC();
  OUTLINED_FUNCTION_6_0();
  v95 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_59();
  v92 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v94 = &v81 - v20;
  v21 = sub_23E1FD3AC();
  OUTLINED_FUNCTION_6_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v27 = v26 - v25;
  v28 = sub_23E1FD31C();
  OUTLINED_FUNCTION_6_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15();
  v34 = (v33 - v32);
  v35 = OUTLINED_FUNCTION_79();
  v36(v35);
  v90 = *(v23 + 88);
  if ((v90)(v27, v21) == *MEMORY[0x277D72A38])
  {
    v83 = *(v23 + 96);
    v84 = v23 + 96;
    v83(v27, v21);
    v37 = swift_projectBox();
    v85 = v30;
    v86 = v28;
    (*(v30 + 16))(v34, v37, v28);

    sub_23E1FD2DC();
    sub_23E1FC09C();

    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_23DE481FC(v13, &qword_27E32C028, &qword_23E2237A0);
LABEL_7:
      v38 = sub_23E1FC87C();
      OUTLINED_FUNCTION_14();
      sub_23DE478FC(v47, v48);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      OUTLINED_FUNCTION_21();
      (*(v49 + 104))();
      swift_willThrow();
      (*(v85 + 8))(v34, v86);
      return v38;
    }

    v42 = v14;
    (*(v95 + 32))(v94, v13, v14);
    v43 = v93;
    sub_23E1FD2FC();
    v44 = sub_23E1FD82C();
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {
      v45 = OUTLINED_FUNCTION_85();
      v46(v45);
      sub_23DE481FC(v43, &qword_27E32C020, &unk_23E229720);
      goto LABEL_7;
    }

    v51 = sub_23E1FD7FC();
    v81 = v52;
    v82 = v51;
    OUTLINED_FUNCTION_21();
    v53 = OUTLINED_FUNCTION_54();
    v54(v53);
    v93 = v34;
    v55 = sub_23E1FD2EC();
    v56 = v91;
    sub_23DE46724(v55, v91, 0xD000000000000013, 0x800000023E24E5A0);

    OUTLINED_FUNCTION_53();
    if (__swift_getEnumTagSinglePayload(v57, v58, v59) == 1)
    {
      sub_23DE481FC(v56, &unk_27E32D730, &unk_23E223790);
    }

    else
    {
      v60 = OUTLINED_FUNCTION_33();
      if (v90(v60) == *MEMORY[0x277D72A58])
      {
        v61 = OUTLINED_FUNCTION_33();
        (v83)(v61);
        v62 = swift_projectBox();
        v64 = v87;
        v63 = v88;
        v65 = v89;
        (*(v88 + 16))(v87, v62, v89);
        if ((*(v63 + 88))(v64, v65) == *MEMORY[0x277D729B8])
        {
          (*(v63 + 96))(v64, v65);

          v66 = [objc_opt_self() sharedResolver];
          v67 = objc_allocWithZone(MEMORY[0x277CD3A58]);
          v68 = OUTLINED_FUNCTION_33();
          v70 = sub_23DE47674(v68, v69);
          v71 = [v66 resolvedAppMatchingDescriptor_];

LABEL_17:
          v74 = v85;
          v75 = v92;
          (*(v95 + 16))(v92, v94, v42);
          v76 = objc_allocWithZone(WFVPNConfiguration);
          v77 = v71;
          v78 = sub_23DE476D8(v75, v82, v81, v71);
          v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

          v79 = OUTLINED_FUNCTION_85();
          v80(v79);
          (*(v74 + 8))(v93, v86);
          return v38;
        }

        (*(v63 + 8))(v64, v65);
      }

      else
      {
        v72 = OUTLINED_FUNCTION_33();
        v73(v72);
      }
    }

    v71 = 0;
    goto LABEL_17;
  }

  (*(v23 + 8))(v27, v21);
  v38 = sub_23E1FC87C();
  OUTLINED_FUNCTION_14();
  sub_23DE478FC(v39, v40);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_21();
  (*(v41 + 104))();
  swift_willThrow();
  return v38;
}

uint64_t sub_23DE46724@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_23DF1E154(a3, a4), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = sub_23E1FD3AC();
    (*(*(v10 - 8) + 16))(a2, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_23E1FD3AC();
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_23DE467E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_23DF1E154(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_88(v3);
    }
  }

  return OUTLINED_FUNCTION_49();
}

double sub_23DE4682C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_23DF1E154(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_23DE48110(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_23DE46890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23DF1E154(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_23DE468D8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_23DF21DC0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_23DE48110(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23DE4693C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_23DF21DC0();
  if (v2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DE4698C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_23DF1E29C();
    if (v3)
    {
      OUTLINED_FUNCTION_88(v2);
    }
  }

  return OUTLINED_FUNCTION_49();
}

uint64_t WFVPNParameterState.typedValue(with:)()
{
  OUTLINED_FUNCTION_23();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C038, qword_23E2237B0);
  OUTLINED_FUNCTION_25(v3);
  v1[5] = OUTLINED_FUNCTION_42();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v4);
  v1[6] = OUTLINED_FUNCTION_42();
  v5 = sub_23E1FC0EC();
  v1[7] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_42();
  v7 = sub_23E1FD46C();
  OUTLINED_FUNCTION_25(v7);
  v1[10] = OUTLINED_FUNCTION_42();
  v8 = sub_23E1FD3AC();
  v1[11] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_91();
  v1[14] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DE46B50()
{
  v1 = [*(v0 + 24) value];
  if (v1)
  {
    v2 = v1;
    sub_23E1FDABC();
    v3 = [v2 appDescriptor];
    if (v3)
    {
      v4 = v3;
      v5 = sub_23DE47D18(v3);
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v9 = *(v0 + 112);
        v11 = *(v0 + 88);
        v10 = *(v0 + 96);
        v39 = *(v0 + 104);
        sub_23E1FD39C();
        v12 = swift_allocBox();
        *v13 = v7;
        v13[1] = v8;
        OUTLINED_FUNCTION_21();
        (*(v14 + 104))();
        *v9 = v12;
        (*(v10 + 104))(v9, *MEMORY[0x277D72A58], v11);
        v15 = OUTLINED_FUNCTION_66();
        v16(v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_23DE47940(v39, 0xD000000000000013, 0x800000023E24E5A0, isUniquelyReferenced_nonNull_native);
      }
    }

    v22 = *(v0 + 96);
    v23 = *(v0 + 72);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);
    v36 = *(v0 + 40);
    v38 = *(v0 + 16);
    sub_23E1FD31C();
    v37 = swift_allocBox();
    sub_23DE4758C();
    sub_23E1FC95C();
    v26 = [v2 identifier];
    sub_23E1FC0CC();

    sub_23E1FC0AC();
    (*(v25 + 8))(v23, v24);
    v27 = [v2 title];
    sub_23E1FDC1C();

    v28 = sub_23E1FD7BC();
    OUTLINED_FUNCTION_73(v36, v29, v30, v28);
    sub_23E1FD7DC();
    sub_23E1FD82C();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    sub_23E1FD30C();

    *v38 = v37;
    (*(v22 + 104))();

    OUTLINED_FUNCTION_7();
  }

  else
  {
    sub_23E1FC87C();
    OUTLINED_FUNCTION_14();
    sub_23DE478FC(v18, v19);
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_21();
    (*(v20 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_19();
  }

  return v21();
}

uint64_t sub_23DE46FA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE47040;

  return WFVPNParameterState.typedValue(with:)();
}

uint64_t sub_23DE47040()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DE47120()
{
  OUTLINED_FUNCTION_23();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_23E1FDA1C();
  OUTLINED_FUNCTION_25(v4);
  v1[5] = OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v5);
  v1[6] = OUTLINED_FUNCTION_42();
  v6 = sub_23E1FD46C();
  v1[7] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23DE47214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  type metadata accessor for ParameterToTypedValueContext(0);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    swift_unknownObjectRetain();
    v30 = [v29 value];
    if (v30)
    {
      v31 = v30;
      a15 = 0;
      a16 = 0;
      sub_23E1FDC0C();
    }

    sub_23DE47518();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_92(v34, v35);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23DE47518();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_92(v32, v33);
  }

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE47474(uint64_t a1)
{
  v2 = type metadata accessor for ParameterToTypedValueContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_23DE47518()
{
  result = qword_280DAEA68;
  if (!qword_280DAEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA68);
  }

  return result;
}

unint64_t sub_23DE4758C()
{
  result = qword_27E32C018;
  if (!qword_27E32C018)
  {
    sub_23DE38DA8(255, &unk_280DAE6F0, off_278C018E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C018);
  }

  return result;
}

id sub_23DE475F4(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v10 = [v6 initWithVariableSource:a1 parameter:a2 isInputParameter:a3 & 1 environment:a4 contentAttributionTracker:a5 widgetSizeClass:a6];
  swift_unknownObjectRelease();

  return v10;
}

id sub_23DE47674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_23E1FDBDC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

id sub_23DE476D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = sub_23E1FC0BC();
  v9 = sub_23E1FDBDC();

  v10 = [v5 initWithIdentifier:v8 title:v9 appDescriptor:a4];

  v11 = sub_23E1FC0EC();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

void sub_23DE477A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_90();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_23E1FDBDC();

  if (!v11)
  {
    v13 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_23E1FDBDC();

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_23E1FDBDC();

LABEL_6:
  v15 = sub_23E1FC13C();
  v16 = sub_23E1FBF6C();
  [v3 initWithKey:v12 defaultValue:v13 table:v14 locale:v15 bundleURL:v16];

  sub_23E1FBFBC();
  OUTLINED_FUNCTION_12();
  (*(v17 + 8))(v5);
  sub_23E1FC1DC();
  OUTLINED_FUNCTION_12();
  (*(v18 + 8))(v7);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE478FC(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DE47940(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_23DF1E154(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C160, &qword_23E223970);
  if ((sub_23E1FE66C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_23DF1E154(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_23E1FE7BC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = *(v16 + 56);
    v18 = sub_23E1FD3AC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_23DEC5870(v12, a2, a3, a1, v16);

    return sub_23E1FB7BC();
  }
}

uint64_t sub_23DE47AB4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_90();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_23DF1E154(v5, v3);
  OUTLINED_FUNCTION_84();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C158, &qword_23E223968);
  if ((sub_23E1FE66C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_23DF1E154(v6, v4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_23E1FE7BC();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v2;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = v10;
    v19[1] = v8;
    OUTLINED_FUNCTION_76();
  }

  else
  {
    sub_23DEC58F4(v14, v6, v4, v10, v8, v18);
    OUTLINED_FUNCTION_76();

    return sub_23E1FB7BC();
  }
}

_OWORD *sub_23DE47BE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_23DF1E154(a2, a3);
  OUTLINED_FUNCTION_84();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
  if ((sub_23E1FE66C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = OUTLINED_FUNCTION_86();
  v15 = sub_23DF1E154(v13, v14);
  if ((v12 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_23E1FE7BC();
    __break(1u);
    return result;
  }

  v11 = v15;
LABEL_5:
  v17 = *v4;
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0((*(v17 + 56) + 32 * v11));
    v18 = OUTLINED_FUNCTION_49();

    return sub_23DE36CA4(v18, v19);
  }

  else
  {
    sub_23DEC5940(v11, a2, a3, a1, v17);

    return sub_23E1FB7BC();
  }
}

uint64_t sub_23DE47D18(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E1FDC1C();

  return v3;
}

void sub_23DE47DA4(uint64_t a1)
{
  sub_23DE47E38(319);
  if (v1 <= 0x3F)
  {
    sub_23DE47E90(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DE47E38(uint64_t a1)
{
  if (!qword_27E32C058)
  {
    sub_23E1FD46C();
    v1 = sub_23E1FE42C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E32C058);
    }
  }
}

void sub_23DE47E90(uint64_t a1)
{
  if (!qword_27E32C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32C068, &qword_23E223868);
    v1 = sub_23E1FE42C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E32C060);
    }
  }
}

uint64_t sub_23DE47F1C(uint64_t a1)
{
  result = sub_23E1FD46C();
  if (v2 <= 0x3F)
  {
    result = sub_23DE47FA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23DE47FA0()
{
  result = qword_27E32C088;
  if (!qword_27E32C088)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E32C088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFParameterStateToolKitConversionError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for WFParameterStateToolKitConversionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_23DE480AC(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

unint64_t *sub_23DE480D8(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_23DE48110(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23DE4816C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_23DE481FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23DE48254(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_89(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_49();
  v6(v5);
  return v4;
}

uint64_t sub_23DE4829C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_89(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_49();
  v6(v5);
  return v4;
}

void sub_23DE4830C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
  OUTLINED_FUNCTION_25(v4);
  v5 = OUTLINED_FUNCTION_86();

  sub_23DE455D8(v5, v6, a3, v7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  v3 = v0[16];
  *(v1 - 112) = v0[17];
  *(v1 - 104) = v3;
  v4 = v0[12];
  *(v1 - 96) = v0[13];
  *(v1 - 88) = v4;
  *(v1 - 80) = v0[11];
}

uint64_t OUTLINED_FUNCTION_3_0()
{
}

uint64_t OUTLINED_FUNCTION_10()
{
  v3 = v0[16];
  *(v1 - 120) = v0[17];
  *(v1 - 112) = v3;
  v4 = v0[12];
  *(v1 - 104) = v0[13];
  *(v1 - 96) = v4;
  *(v1 - 88) = v0[11];
}

uint64_t OUTLINED_FUNCTION_11()
{
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_52(void *a1)
{

  return sub_23DE475F4(0, a1, 0, 0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_55@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(v3 - 112) = a1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_56()
{

  JUMPOUT(0x23EF074C0);
}

uint64_t OUTLINED_FUNCTION_62()
{
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_75()
{
  v2 = *(v0 + 368);
}

void OUTLINED_FUNCTION_77(void *a1@<X8>)
{
}

void OUTLINED_FUNCTION_87()
{
  v2 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1)
{

  return sub_23E1FB7BC();
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_91()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_92@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;

  return swift_willThrow();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_23DE48C00()
{
  v0 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v0, qword_27E32C1C0);
  __swift_project_value_buffer(v0, qword_27E32C1C0);
  return sub_23E1FB8DC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static PodcastItem.typeDisplayRepresentation.modify()
{
  if (qword_27E32B8D0 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FB8FC();
  v1 = __swift_project_value_buffer(v0, qword_27E32C1C0);
  OUTLINED_FUNCTION_17_0(v1);
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DE48D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B8D0, MEMORY[0x277CBA3A0], qword_27E32C1C0, sub_23DE48C00);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DE48E3C(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B8D0, MEMORY[0x277CBA3A0], qword_27E32C1C0, sub_23DE48C00);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t PodcastItem.encodedParameters.getter()
{
  type metadata accessor for PodcastItem(0);
  v0 = OUTLINED_FUNCTION_49();
  sub_23DE48FA8(v0, v1);
  return OUTLINED_FUNCTION_49();
}

uint64_t type metadata accessor for PodcastItem(uint64_t a1)
{
  result = qword_280DAF558;
  if (!qword_280DAF558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DE48FA8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }

    sub_23E1FB7CC();
  }

  return sub_23E1FB7CC();
}

uint64_t PodcastItem.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v6);
  v7 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FDBAC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  v14 = type metadata accessor for PodcastItem(0);
  sub_23DE491B4(v0 + *(v14 + 24), v4);
  return sub_23E1FB76C();
}

uint64_t sub_23DE491B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE49224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v6);
  v8 = v47 - v7;
  v9 = type metadata accessor for PodcastItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v13 = (v12 - v11);
  v14 = a1;
  v15 = sub_23DEB4C08(v14);
  if (!v16)
  {

LABEL_11:
    OUTLINED_FUNCTION_18_0();
    return __swift_storeEnumTagSinglePayload(v43, v44, v45, v9);
  }

  v17 = v15;
  v18 = v16;
  v19 = [v14 icon];
  v51 = a2;
  v52 = v18;
  if (v19 && (sub_23DEE1304(v19), v20 >> 60 != 15))
  {
    sub_23E1FB73C();
    v21 = sub_23E1FB75C();
    v22 = 0;
  }

  else
  {
    v21 = sub_23E1FB75C();
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v22, 1, v21);
  v23 = *(v9 + 24);
  sub_23DE4D790(v8, v13 + v23);
  v24 = [v14 uniqueIdentifier];
  v25 = sub_23E1FDC1C();
  v27 = v26;

  *v13 = v25;
  v13[1] = v27;
  v28 = v52;
  v13[2] = v17;
  v13[3] = v28;
  v29 = [v14 intent];
  v30 = [objc_allocWithZone(MEMORY[0x277D7C730]) initWithIntent_];

  if (!v30)
  {

    sub_23DE481FC(v13 + v23, &qword_27E32C208, &unk_23E2239B0);
    goto LABEL_11;
  }

  v47[1] = v27;
  v48 = v23;
  v49 = v2;
  v31 = [objc_allocWithZone(MEMORY[0x277D7C740]) initWithValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2F8, &qword_23E226D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  strcpy((inited + 32), "WFPodcastShow");
  *(inited + 46) = -4864;
  v50 = v31;
  *(inited + 48) = [v31 serializedRepresentation];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C300, &unk_23E224090);
  OUTLINED_FUNCTION_27_0();
  sub_23E1FDABC();
  v33 = objc_opt_self();
  OUTLINED_FUNCTION_27_0();
  v34 = sub_23E1FDA9C();

  v53 = 0;
  v35 = [v33 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v53];

  v36 = v53;
  if (v35)
  {
    v37 = sub_23E1FBFDC();
    v39 = v38;

    v40 = (v13 + *(v9 + 28));
    *v40 = v37;
    v40[1] = v39;
    v41 = v51;
    sub_23DE4AAA8(v13, v51);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v9);
    return sub_23DE4AB0C(v13);
  }

  else
  {
    v46 = v36;
    sub_23E1FBECC();

    swift_willThrow();

    return sub_23DE481FC(v13 + v48, &qword_27E32C208, &unk_23E2239B0);
  }
}

uint64_t sub_23DE49670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23DE47040;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23DE49738@<X0>(uint64_t *a1@<X8>)
{
  result = PodcastItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DE49760(uint64_t a1)
{
  v2 = sub_23DE4D800(&qword_280DAF0B8, type metadata accessor for PodcastItem);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DE497DC(uint64_t a1)
{
  v2 = sub_23DE4D800(&qword_280DAE4D0, type metadata accessor for PodcastItem);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DE49878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return EmptyPodcastQuery.entities(for:)();
}

uint64_t sub_23DE49904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23DE4D8A8;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_23DE499B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23DE49A78;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_23DE49A78()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_23DE49B68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_23DE4C184();
  *v5 = v2;
  v5[1] = sub_23DE4D8A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_23DE49C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23DE4D8A8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23DE49CD0()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v6, qword_27E32C1D8);
  __swift_project_value_buffer(v6, qword_27E32C1D8);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t sub_23DE49EC0(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);

  return __swift_project_value_buffer(v6, a3);
}

uint64_t sub_23DE49F54(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);
  __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_49();
  return v8(v7);
}

uint64_t sub_23DE4A038(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = a3(0);
  v9 = __swift_project_value_buffer(v8, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t static PlayPodcastTopHitAction.title.modify()
{
  if (qword_27E32B8D8 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  v1 = __swift_project_value_buffer(v0, qword_27E32C1D8);
  OUTLINED_FUNCTION_17_0(v1);
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DE4A1A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B8D8, MEMORY[0x277CC9130], qword_27E32C1D8, sub_23DE49CD0);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DE4A254(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B8D8, MEMORY[0x277CC9130], qword_27E32C1D8, sub_23DE49CD0);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static PlayPodcastTopHitAction.attributionBundleIdentifier.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1);
  v1 = qword_27E32C1F0;
  sub_23E1FB7BC();
  return v1;
}

uint64_t static PlayPodcastTopHitAction.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27E32C1F0 = a1;
  off_27E32C1F8 = a2;
}

uint64_t sub_23DE4A3F4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27E32C1F8;
  *a1 = qword_27E32C1F0;
  a1[1] = v2;
  return sub_23E1FB7BC();
}

uint64_t sub_23DE4A444(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27E32C1F0 = v2;
  off_27E32C1F8 = v1;
  sub_23E1FB7BC();
}

uint64_t sub_23DE4A4A8()
{
  v0 = sub_23E1FC7FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v9 = *MEMORY[0x277D7CB68];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v9;
  *(inited + 40) = 0xD00000000000001FLL;
  *(inited + 48) = 0x800000023E24E660;
  type metadata accessor for Key(0);
  sub_23DE4D800(&qword_280DAEDE0, type metadata accessor for Key);
  v10 = v9;
  sub_23E1FDABC();
  (*(v1 + 104))(v3, *MEMORY[0x277D7BF40], v0);
  v11 = objc_allocWithZone(sub_23E1FC83C());
  result = sub_23E1FC80C();
  qword_280DAF270 = result;
  return result;
}

uint64_t *sub_23DE4A6E8()
{
  if (qword_280DAF260 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_280DAF260);
  }

  return &qword_280DAF270;
}

id static PlayPodcastTopHitAction.shortcutsMetadata.getter(uint64_t a1)
{
  if (qword_280DAF260 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_2(&qword_280DAF260);
  }

  OUTLINED_FUNCTION_29_0(a1);
  v1 = qword_280DAF270;

  return v1;
}

void static PlayPodcastTopHitAction.shortcutsMetadata.setter(uint64_t a1)
{
  if (qword_280DAF260 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_280DAF260);
  }

  swift_beginAccess();
  v2 = qword_280DAF270;
  qword_280DAF270 = a1;
}

uint64_t static PlayPodcastTopHitAction.shortcutsMetadata.modify()
{
  if (qword_280DAF260 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_280DAF260);
  }

  OUTLINED_FUNCTION_17_0(&qword_280DAF270);
  return OUTLINED_FUNCTION_28_0();
}

id sub_23DE4A868@<X0>(void *a1@<X8>)
{
  sub_23DE4A6E8();
  swift_beginAccess();
  v2 = qword_280DAF270;
  *a1 = qword_280DAF270;

  return v2;
}

void sub_23DE4A8C8(id *a1)
{
  v1 = *a1;
  sub_23DE4A6E8();
  swift_beginAccess();
  v2 = qword_280DAF270;
  qword_280DAF270 = v1;
}

uint64_t sub_23DE4A97C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PodcastItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE4AAA8(a1, v6);
  v8[1] = *a2;
  sub_23E1FB7CC();
  PlayPodcastTopHitAction.podcast.setter(v6);
}

uint64_t PlayPodcastTopHitAction.podcast.setter(uint64_t a1)
{
  v2 = type metadata accessor for PodcastItem(0);
  v3 = OUTLINED_FUNCTION_25(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  sub_23DE4AAA8(a1, v5 - v4);
  sub_23E1FB5EC();
  return sub_23DE4AB0C(a1);
}

uint64_t sub_23DE4AAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE4AB0C(uint64_t a1)
{
  v2 = type metadata accessor for PodcastItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*PlayPodcastTopHitAction.podcast.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23E1FB5CC();
  return sub_23DE4ABC8;
}

void sub_23DE4ABC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t PlayPodcastTopHitAction.init()@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v30 = sub_23E1FB84C();
  v1 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v6 = OUTLINED_FUNCTION_25(v5);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C220, &qword_23E2239D0);
  OUTLINED_FUNCTION_25(v8);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v10);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C228, &qword_23E2239D8);
  sub_23E1FBEDC();
  sub_23E1FBEDC();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  type metadata accessor for PodcastItem(0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = sub_23E1FB51C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v30);
  OUTLINED_FUNCTION_1_1();
  sub_23DE4D800(v27, v28);
  result = sub_23E1FB61C();
  *v31 = result;
  return result;
}

uint64_t sub_23DE4AF68()
{
  OUTLINED_FUNCTION_23();
  sub_23E1FB54C();
  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DE4AFCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE47040;

  return PlayPodcastTopHitAction.perform()(a1);
}

uint64_t sub_23DE4B068(uint64_t a1)
{
  v2 = sub_23DE4C4C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t SuggestedPodcastsOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C220, &qword_23E2239D0);
  OUTLINED_FUNCTION_25(v1);
  v0[19] = swift_task_alloc();
  v2 = type metadata accessor for PodcastItem(0);
  v0[20] = v2;
  v0[21] = *(v2 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE4B1BC, 0, 0);
}

uint64_t sub_23DE4B1BC()
{
  sub_23DE38DA8(0, &unk_280DAE288, 0x277D7A0A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = *MEMORY[0x277D7A550];
  v0[24] = *MEMORY[0x277D7A550];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DE4B318;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C230, &qword_23E2239F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE4B7DC;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [ObjCClassFromMetadata disambiguationEntriesForCollection:v2 limit:10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE4B318()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 200) = v2;
  if (v2)
  {
    v3 = sub_23DE4B754;
  }

  else
  {
    v3 = sub_23DE4B420;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_23DE4B420()
{
  v1 = *(v0 + 144);

  sub_23E1FDF0C();
  v2 = sub_23DE4B8A4(v1, 0x277D7A0A8);

  if (v2)
  {
    v17 = *(v0 + 168);
    result = sub_23DE4BFE4(v2);
    v4 = result;
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4 == v5)
      {

        goto LABEL_18;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EF04DD0](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        result = *(v2 + 8 * v5 + 32);
      }

      v7 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_23DE49224(result, *(v0 + 152));
      v8 = *(v0 + 152);
      if (__swift_getEnumTagSinglePayload(v8, 1, *(v0 + 160)) == 1)
      {
        result = sub_23DE481FC(v8, &qword_27E32C220, &qword_23E2239D0);
        ++v5;
      }

      else
      {
        v9 = *(v0 + 184);
        v16 = *(v0 + 176);
        sub_23DE4BF80(v8, v9);
        sub_23DE4BF80(v9, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23DE4D698(0, *(v6 + 16) + 1, 1, v6, sub_23DF1DCD8, type metadata accessor for PodcastItem, sub_23DF31794);
          v6 = v13;
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23DE4D698(v10 > 1, v11 + 1, 1, v6, sub_23DF1DCD8, type metadata accessor for PodcastItem, sub_23DF31794);
          v6 = v14;
        }

        v12 = *(v0 + 176);
        *(v6 + 16) = v11 + 1;
        result = sub_23DE4BF80(v12, v6 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11);
        v5 = v7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_18:

    v15 = *(v0 + 8);

    return v15(v6);
  }

  return result;
}

uint64_t sub_23DE4B754(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DE4B7DC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_23DEEC878();
  }

  else
  {
    sub_23DE38DA8(0, &qword_280DAE2E8, 0x277D7A1A8);
    OUTLINED_FUNCTION_20();
    sub_23E1FDDEC();

    return sub_23DEEC87C();
  }
}

id sub_23DE4B8A4(unint64_t a1, void *a2)
{
  v7 = MEMORY[0x277D84F90];
  sub_23DE4D8B0();
  sub_23E1FE63C();
  result = sub_23DE4BFE4(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      return v7;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23EF04DD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v6 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_23E1FE61C();
    sub_23E1FE64C();
    sub_23E1FE65C();
    result = sub_23E1FE62C();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_23DE4B9D4(unint64_t a1)
{
  v5 = MEMORY[0x277D84F90];
  sub_23DE4D8B0();
  sub_23E1FE63C();
  result = sub_23DE4BFE4(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23EF04DD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    sub_23E1FE61C();
    sub_23E1FE64C();
    sub_23E1FE65C();
    result = sub_23E1FE62C();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_23DE4BB0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_23DE63E2C(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_23DE48110(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23DE63E2C(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_23DE4BC20(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23E1FE63C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_23DE48110(v3, v5);
    sub_23DE38DA8(0, &qword_27E32C2B0, 0x277D79FC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23E1FE61C();
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_23DE4BD4C()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DE4D8B4;

  return SuggestedPodcastsOptionsProvider.fetchResults()();
}

uint64_t sub_23DE4BDD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DEBEE14();
}

uint64_t sub_23DE4BE7C(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_23DE4BF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE4BFE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_23E1FE6AC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_23DE4C008(uint64_t a1)
{
  result = sub_23DE4D800(&qword_280DAE4D0, type metadata accessor for PodcastItem);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE4C184()
{
  result = qword_280DAE4A0;
  if (!qword_280DAE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE4A0);
  }

  return result;
}

unint64_t sub_23DE4C2BC()
{
  result = qword_280DAEF70;
  if (!qword_280DAEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF70);
  }

  return result;
}

unint64_t sub_23DE4C314()
{
  result = qword_280DAEF68;
  if (!qword_280DAEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF68);
  }

  return result;
}

unint64_t sub_23DE4C3B4()
{
  result = qword_280DAEF80;
  if (!qword_280DAEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF80);
  }

  return result;
}

unint64_t sub_23DE4C408()
{
  result = qword_280DAE408;
  if (!qword_280DAE408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32C250, qword_23E223CA0);
    sub_23DE4D800(&unk_280DAF0E8, type metadata accessor for PodcastItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE408);
  }

  return result;
}

unint64_t sub_23DE4C4C0()
{
  result = qword_280DAF248;
  if (!qword_280DAF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF248);
  }

  return result;
}

unint64_t sub_23DE4C518()
{
  result = qword_280DAF240;
  if (!qword_280DAF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF240);
  }

  return result;
}

unint64_t sub_23DE4C570()
{
  result = qword_280DAF258;
  if (!qword_280DAF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF258);
  }

  return result;
}

unint64_t sub_23DE4C6BC(uint64_t a1)
{
  result = sub_23DE4C6E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE4C6E4()
{
  result = qword_27E32C270;
  if (!qword_27E32C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C270);
  }

  return result;
}

unint64_t sub_23DE4C73C()
{
  result = qword_280DAE448;
  if (!qword_280DAE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE448);
  }

  return result;
}

void sub_23DE4C7B8(uint64_t a1)
{
  sub_23DE4C83C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23DE4C83C(uint64_t a1)
{
  if (!qword_280DAF568)
  {
    sub_23E1FB75C();
    v1 = sub_23E1FE42C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DAF568);
    }
  }
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_23E1FB7CC();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_23E1FB7CC();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for PlayPodcastTopHitAction(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PlayPodcastTopHitAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualIntelligenceFeatureFlags(unsigned int *a1, int a2)
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

_BYTE *sub_23DE4CA2C(_BYTE *result, int a2, int a3)
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

void sub_23DE4CB98()
{
  OUTLINED_FUNCTION_15_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      v9 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_10_0(v9);
      OUTLINED_FUNCTION_16_0(v10 / 16);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DF3175C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_0(v6, v7, v8, MEMORY[0x277D837D0]);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DE4CC50()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      sub_23DF1DC70();
      v7 = swift_allocObject();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_0();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_1();
        sub_23DF31CF0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DE4CD50()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E8, qword_23E224070);
      v7 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_0();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_1();
        sub_23DE36A28(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2F0, &qword_23E22A420);
    OUTLINED_FUNCTION_13_0(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DE4CE90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_7_0();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4CF68()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
      v7 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_0();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_1();
        sub_23DF31CF0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    type metadata accessor for WFExecutionPlatform(0);
    OUTLINED_FUNCTION_13_0(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DE4D024()
{
  OUTLINED_FUNCTION_15_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
      v6 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_10_0(v6);
      OUTLINED_FUNCTION_16_0(v7 / 32);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_1();
        sub_23DF31824(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DE4D1EC()
{
  OUTLINED_FUNCTION_15_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2A0, &qword_23E224030);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_10_0(v6);
      OUTLINED_FUNCTION_16_0(v7 / 24);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_1();
        sub_23DF318A4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2A8, &qword_23E224038);
    OUTLINED_FUNCTION_13_0(v11, v12, v13, v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DE4D2C4()
{
  OUTLINED_FUNCTION_15_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C2D0, &unk_23E22A390);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_10_0(v9);
      OUTLINED_FUNCTION_16_0(v10 / 72);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DF318CC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_0(v6, v7, v8, &unk_285027F08);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DE4D3F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_25_0();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 16);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4D698(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_3_1();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_8_0();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_23DE4D790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE4D800(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void sub_23DE4DA6C()
{
  OUTLINED_FUNCTION_90();
  v82 = sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  OUTLINED_FUNCTION_5();
  v11 = sub_23E1FDBDC();
  v12 = [v0 parameterStateForKey_];

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = sub_23DE586E0(v13);
      if (v14)
      {
        v15 = sub_23DE4B9D4(v14);

        if (v15)
        {
          v78 = v12;
          v79 = v10;
          v80 = v7;
          v16 = sub_23DE4D8B0();
          v17 = 0;
          v83 = v15 & 0xC000000000000001;
          v81 = MEMORY[0x277D84F90];
          while (1)
          {
            while (1)
            {
              if (v16 == v17)
              {

                v35 = v81;
                v36 = *(v81 + 16);
                if (v36)
                {
                  v84 = MEMORY[0x277D84F90];
                  sub_23DE63E6C(0, v36, 0, v31, v32, v33, v34);
                  v37 = v84;
                  v38 = v35 + 40;
                  do
                  {
                    sub_23E1FB7BC();
                    sub_23E1FBD2C();
                    v84 = v37;
                    v40 = *(v37 + 16);
                    v39 = *(v37 + 24);
                    if (v40 >= v39 >> 1)
                    {
                      OUTLINED_FUNCTION_9(v39);
                      OUTLINED_FUNCTION_60_0();
                      sub_23DE63E6C(v44, v45, v46, v47, v48, v49, v50);
                      v37 = v84;
                    }

                    *(v37 + 16) = v40 + 1;
                    OUTLINED_FUNCTION_31_0();
                    v42 = OUTLINED_FUNCTION_59_0(v37 + v41);
                    v43(v42);
                    v38 += 16;
                    --v36;
                  }

                  while (v36);
                }

                else
                {

                  v37 = MEMORY[0x277D84F90];
                }

                v51 = v82;
                v52 = 0;
                v53 = *(v37 + 16);
                v83 = v3 + 16;
                v79 = (v3 + 32);
                v81 = MEMORY[0x277D84F90];
                while (v53 != v52)
                {
                  if (v52 >= *(v37 + 16))
                  {
                    goto LABEL_46;
                  }

                  v54 = (*(v3 + 80) + 32) & ~*(v3 + 80);
                  v55 = *(v3 + 72);
                  (*(v3 + 16))(v1, v37 + v54 + v55 * v52, v51);
                  v56 = v51;
                  if (sub_23E1FBCCC())
                  {
                    v77 = *v79;
                    v77(v80, v1, v51);
                    v57 = v81;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v59 = v57;
                    v84 = v57;
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v51 = v56;
                    }

                    else
                    {
                      v60 = OUTLINED_FUNCTION_13_1();
                      sub_23DE63E6C(v60, v61, v62, v63, v64, v65, v66);
                      v51 = v82;
                      v59 = v84;
                    }

                    v68 = *(v59 + 16);
                    v67 = *(v59 + 24);
                    v69 = v68 + 1;
                    if (v68 >= v67 >> 1)
                    {
                      v70 = OUTLINED_FUNCTION_9(v67);
                      v81 = v71;
                      sub_23DE63E6C(v70, v71, 1, v72, v73, v74, v75);
                      v69 = v81;
                      v51 = v82;
                      v59 = v84;
                    }

                    ++v52;
                    *(v59 + 16) = v69;
                    v81 = v59;
                    v77((v59 + v54 + v68 * v55), v80, v51);
                  }

                  else
                  {
                    (*(v3 + 8))(v1, v51);
                    ++v52;
                  }
                }

                swift_unknownObjectRelease();
                if (!*(v81 + 16))
                {

                  goto LABEL_22;
                }

                goto LABEL_23;
              }

              if (v83)
              {
                v18 = MEMORY[0x23EF04DD0](v17, v15);
              }

              else
              {
                if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_45;
                }

                v18 = *(v15 + 8 * v17 + 32);
              }

              v19 = v18;
              v20 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
                return;
              }

              v21 = [v18 value];
              if (v21)
              {
                break;
              }

LABEL_19:
              ++v17;
            }

            v22 = v21;
            v84 = 0;
            v85 = 0;
            sub_23E1FDC0C();

            v23 = v85;
            if (!v85)
            {
              goto LABEL_19;
            }

            v24 = v84;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_6_1();
              sub_23DE4CB98();
              v81 = v29;
            }

            v26 = *(v81 + 16);
            v25 = *(v81 + 24);
            if (v26 >= v25 >> 1)
            {
              OUTLINED_FUNCTION_9(v25);
              OUTLINED_FUNCTION_60_0();
              sub_23DE4CB98();
              v81 = v30;
            }

            v27 = v81;
            *(v81 + 16) = v26 + 1;
            v28 = v27 + 16 * v26;
            *(v28 + 32) = v24;
            *(v28 + 40) = v23;
            v17 = v20;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_22:
  sub_23E1FBD4C();
  sub_23DE4DF80();
  OUTLINED_FUNCTION_37();

LABEL_23:
  OUTLINED_FUNCTION_76();
}

void sub_23DE4DF80()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v2 = sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v36 = v6;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = 0;
  v11 = *(v1 + 16);
  v37 = v4 + 16;
  v38 = v1;
  v35 = (v4 + 32);
  v12 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = *(v4 + 72);
    (*(v4 + 16))(v9, v38 + v13 + v14 * v10, v2);
    if (sub_23E1FBCCC())
    {
      v34 = *v35;
      v34(v36, v9, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = OUTLINED_FUNCTION_13_1();
        sub_23DE63E6C(v16, v17, v18, v19, v20, v21, v22);
        v12 = v39;
      }

      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_9(v23);
        v33 = v27;
        sub_23DE63E6C(v26, v27, 1, v28, v29, v30, v31);
        v25 = v33;
        v12 = v39;
      }

      ++v10;
      *(v12 + 16) = v25;
      v34(v12 + v13 + v24 * v14, v36, v2);
    }

    else
    {
      (*(v4 + 8))(v9, v2);
      ++v10;
    }
  }

  OUTLINED_FUNCTION_76();
}

void sub_23DE4E17C()
{
  OUTLINED_FUNCTION_90();
  sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x28223BE20](v2);
  sub_23DE38DA8(0, &qword_27E32C3D0, 0x277CBEA60);
  v3 = sub_23E1FE3FC();
  if (v3)
  {
    v4 = v3;
    sub_23E1FDDDC();
  }

  sub_23E1FBD4C();
  sub_23DE4DF80();
  OUTLINED_FUNCTION_37();

  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE4E574()
{
  sub_23DE4DA6C();
  v0 = sub_23DE4E660();

  v1 = v0[2];
  if (v1 < 2)
  {
    return v0;
  }

  result = sub_23DE58DB4(1uLL, v1, v0);
  v4 = v3;
  v6 = v5 >> 1;
  for (i = (v7 + 16 * v3 + 8); ; i += 2)
  {
    if (v6 == v4)
    {
      swift_unknownObjectRelease();
      return v0;
    }

    if (v4 >= v6)
    {
      break;
    }

    result = *(i - 1);
    if (result != v0[4] || *i != v0[5])
    {
      result = sub_23E1FE75C();
      if ((result & 1) == 0)
      {
        sub_23DE570D4(v0);
        swift_unknownObjectRelease();
        return &unk_285023408;
      }
    }

    ++v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DE4E660()
{
  sub_23DE54DCC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_23DE63E2C(0, v1, 0);
    v2 = 32;
    v3 = v14;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C368, &qword_23E224158);
      v4 = sub_23E1FDC7C();
      v6 = v5;
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        OUTLINED_FUNCTION_9(v7);
        OUTLINED_FUNCTION_60_0();
        sub_23DE63E2C(v10, v11, v12);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23DE4E77C()
{
  sub_23DE38DA8(0, &qword_27E32C7C0, 0x277CCABB0);
  v0 = sub_23E1FE3FC();
  if (!v0)
  {
    return 5;
  }

  v1 = v0;
  v2 = sub_23E1FDF6C();

  return v2;
}

void sub_23DE4E7F4()
{
  OUTLINED_FUNCTION_90();
  v110 = v1;
  v111 = v0;
  v109 = v2;
  v3 = sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v108 = v7;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v94 - v9;
  v11 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v95 = v15;
  OUTLINED_FUNCTION_14_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_68_0();
  v113 = v20;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v94 - v22;
  v121 = MEMORY[0x277D84F90];
  v117 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v24 = sub_23E1FD02C();
  v25 = sub_23E1FE19C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_74_0();
    *v26 = 0;
    _os_log_impl(&dword_23DE30000, v24, v25, "WFSpotlightSearchAction: Creating separate queries for each result type", v26, 2u);
    OUTLINED_FUNCTION_56();
  }

  v28 = *(v13 + 8);
  v27 = v13 + 8;
  v118 = v28;
  v28(v23, v11);
  sub_23DE4E17C();
  if (*(v29 + 16))
  {
    v31 = *(v5 + 16);
    v30 = v5 + 16;
    v103 = v31;
    OUTLINED_FUNCTION_56_0();
    v94 = v32;
    v34 = v32 + v33;
    v101 = (v30 - 8);
    v102 = (v30 + 16);
    v104 = v30;
    v98 = *(v30 + 56);
    v116 = v35 - 1;
    *(&v36 + 1) = 4;
    v100 = xmmword_23E222370;
    *&v36 = 136315650;
    v97 = v36;
    *&v36 = *(v37 + 168);
    v96 = v36;
    v106 = v27;
    v107 = v11;
    v105 = v3;
    v112 = v19;
    while (1)
    {
      v114 = v34;
      v103(v10);
      v38 = objc_allocWithZone(MEMORY[0x277CC3508]);
      v39 = [v38 init];
      [v39 setMaxResultCount_];
      [v39 setMaxRankedResultCount_];
      [v39 setEnableRankedResults_];
      [v39 setDisableSemanticSearch_];
      v40 = v39;
      v41 = sub_23E1FDDCC();
      v42 = OUTLINED_FUNCTION_26_0();
      [v42 v43];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      v44 = swift_allocObject();
      *(v44 + 16) = v100;
      *(v44 + 32) = sub_23DE4F0B4();
      *(v44 + 40) = v45;
      sub_23DE4F238();
      *(v44 + 48) = v46;
      *(v44 + 56) = v47;
      v48 = sub_23E1FDDCC();

      v49 = OUTLINED_FUNCTION_26_0();
      [v49 v50];

      v51 = sub_23DE4F500();
      sub_23DE5874C(v51, v40);

      v52 = objc_allocWithZone(MEMORY[0x277CC3500]);
      v115 = v40;
      v53 = v110;
      sub_23E1FB7BC();
      v54 = sub_23DE56998(v109, v53, v40);
      MEMORY[0x23EF045A0]();
      v55 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v55 >> 1)
      {
        OUTLINED_FUNCTION_9(v55);
        sub_23E1FDE0C();
      }

      OUTLINED_FUNCTION_45();
      sub_23E1FDE3C();
      v99 = v121;
      v56 = v113;
      sub_23E1FCB9C();
      v57 = v108;
      (*v102)(v108, v10, v3);
      v58 = sub_23E1FD02C();
      v59 = sub_23E1FE1AC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_49_0();
        v61 = v3;
        v62 = OUTLINED_FUNCTION_48_0();
        v120 = swift_slowAlloc();
        *v60 = v97;
        v63 = v57;
        sub_23E1FBD3C();
        v64 = OUTLINED_FUNCTION_37();
        v66 = v65;
        (*v101)(v64, v61);
        sub_23DE56B40(v63, v66, &v120);
        OUTLINED_FUNCTION_37();

        *(v60 + 4) = v63;
        *(v60 + 12) = 2112;
        *(v60 + 14) = v54;
        *v62 = v54;
        *(v60 + 22) = 2080;
        v67 = sub_23DE587B8(v54);
        if (v67)
        {
          v68 = v67;
        }

        else
        {
          v68 = MEMORY[0x277D84F90];
        }

        v119 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
        sub_23DE58F64();
        v69 = sub_23E1FDB0C();
        v71 = v70;

        v72 = sub_23DE56B40(v69, v71, &v120);

        *(v60 + 24) = v72;
        _os_log_impl(&dword_23DE30000, v58, v59, "WFSpotlightSearchAction: Added query for type: %s: %@ %s", v60, 0x20u);
        sub_23DE58BD0(v62, &unk_27E32C190, &qword_23E224B70);
        OUTLINED_FUNCTION_21_0();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_16_1();
        v11 = v107;
        OUTLINED_FUNCTION_56();

        v73 = v113;
      }

      else
      {

        (*v101)(v57, v3);
        v73 = v56;
      }

      v118(v73, v11);
      v74 = v112;
      sub_23E1FCB9C();
      v75 = sub_23E1FD02C();
      v76 = sub_23E1FE1AC();
      if (OUTLINED_FUNCTION_51(v76))
      {
        v77 = OUTLINED_FUNCTION_38_0();
        v78 = OUTLINED_FUNCTION_49_0();
        v120 = v78;
        *v77 = v96;
        v79 = [v54 debugDescription];
        v80 = sub_23E1FDC1C();
        v82 = v81;

        v83 = v80;
        v74 = v112;
        v84 = sub_23DE56B40(v83, v82, &v120);
        v11 = v107;

        *(v77 + 4) = v84;
        _os_log_impl(&dword_23DE30000, v75, v76, "WFSpotlightSearchAction: Type query: %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_16_1();
      }

      v118(v74, v11);
      v3 = v105;
      if (!v116)
      {
        break;
      }

      --v116;
      v34 = v114 + v98;
    }

    v85 = v99;
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  v86 = v95;
  sub_23E1FCB9C();
  sub_23E1FB7BC();
  v87 = sub_23E1FD02C();
  v88 = sub_23E1FE1DC();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = OUTLINED_FUNCTION_38_0();
    v90 = OUTLINED_FUNCTION_49_0();
    v120 = v90;
    *v89 = 136315138;
    sub_23DE4F6AC(v85);
    v93 = sub_23DE56B40(v91, v92, &v120);

    *(v89 + 4) = v93;
    _os_log_impl(&dword_23DE30000, v87, v88, "WFSpotlightSearchAction:\n\nCSUserQueries:\n%s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v90);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_16_1();
  }

  v118(v86, v11);
  OUTLINED_FUNCTION_76();
}

void *sub_23DE4F0B4()
{
  sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_15();
  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);
  OUTLINED_FUNCTION_50();
  v3 = sub_23E1FBD1C();
  v4 = OUTLINED_FUNCTION_36_0();
  v5(v4);
  if (v3)
  {
    result = OUTLINED_FUNCTION_46_0();
    __break(1u);
  }

  else
  {
    sub_23E1FE5CC();

    v6 = sub_23E1FBCBC();
    MEMORY[0x23EF044F0](v6);

    MEMORY[0x23EF044F0](39, 0xE100000000000000);
    return 0xD000000000000024;
  }

  return result;
}

void sub_23DE4F238()
{
  OUTLINED_FUNCTION_90();
  sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v3 = *(v1 + 104);
  v4 = OUTLINED_FUNCTION_26_0();
  v3(v4);
  OUTLINED_FUNCTION_50();
  v5 = sub_23E1FBD1C();
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_36_0();
  v6(v7);
  if ((v5 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_26_0();
    v3(v8);
    OUTLINED_FUNCTION_50();
    v9 = sub_23E1FBD1C();
    v10 = OUTLINED_FUNCTION_36_0();
    v6(v10);
    if (v9)
    {
      sub_23E1FE5CC();
      OUTLINED_FUNCTION_5();
      MEMORY[0x23EF044F0](0xD000000000000016);
      v11 = sub_23E1FBD0C();
      MEMORY[0x23EF044F0](v11);

      v12 = "ssageType == 'lnk'))";
      v13 = 0xD000000000000036;
    }

    else
    {
      v14 = OUTLINED_FUNCTION_26_0();
      v3(v14);
      OUTLINED_FUNCTION_50();
      v15 = sub_23E1FBD1C();
      v16 = OUTLINED_FUNCTION_36_0();
      v6(v16);
      if ((v15 & 1) == 0)
      {
        sub_23E1FE5CC();

        v19 = sub_23E1FBD0C();
        MEMORY[0x23EF044F0](v19);

        v13 = 39;
        v18 = 0xE100000000000000;
        goto LABEL_8;
      }

      sub_23E1FE5CC();
      OUTLINED_FUNCTION_5();
      MEMORY[0x23EF044F0](0xD000000000000016);
      v17 = sub_23E1FBD0C();
      MEMORY[0x23EF044F0](v17);

      v12 = "(_kMDItemBundleID == '";
      v13 = 0xD000000000000044;
    }

    v18 = v12 | 0x8000000000000000;
LABEL_8:
    MEMORY[0x23EF044F0](v13, v18);
    OUTLINED_FUNCTION_76();
    return;
  }

  OUTLINED_FUNCTION_46_0();
  __break(1u);
}

uint64_t sub_23DE4F500()
{
  v0 = sub_23E1FBD5C();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23E222340;
  *(v7 + 32) = 0xD00000000000001ALL;
  *(v7 + 40) = 0x800000023E24E820;
  (*(v2 + 104))(v6, *MEMORY[0x277CFC170], v0);
  sub_23DE58FC8(&qword_27E32C428, MEMORY[0x277CFC1C8], MEMORY[0x277CFC1D0]);
  v8 = sub_23E1FDB2C();
  (*(v2 + 8))(v6, v0);
  if ((v8 & 1) == 0)
  {
    v9 = sub_23E1FBD0C();
    v11 = v10;
    sub_23DE4CB98();
    v7 = v12;
    v12[2] = 2;
    v12[6] = v9;
    v12[7] = v11;
  }

  return v7;
}

void sub_23DE4F6AC(uint64_t a1)
{
  v2 = sub_23DE4D8B0();
  if (!v2)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
    sub_23DE58F64();
    sub_23E1FDB0C();

    return;
  }

  v3 = v2;
  v14 = MEMORY[0x277D84F90];
  sub_23DE63E2C(0, v2 & ~(v2 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EF04DD0](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 debugDescription];
      v8 = sub_23E1FDC1C();
      v10 = v9;

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_23DE63E2C(v11 > 1, v12 + 1, 1);
      }

      ++v4;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_23DE4F824()
{
  OUTLINED_FUNCTION_23();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_23E1FD03C();
  v1[23] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[24] = v4;
  v1[25] = OUTLINED_FUNCTION_91();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v5 = sub_23E1FDFEC();
  v1[28] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[29] = v6;
  v1[30] = OUTLINED_FUNCTION_91();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v7 = sub_23E1FE01C();
  v1[33] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_42();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C400, &qword_23E2241C8);
  OUTLINED_FUNCTION_25(v9);
  v1[36] = OUTLINED_FUNCTION_42();
  v10 = sub_23E1FE02C();
  v1[37] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[38] = v11;
  v1[39] = OUTLINED_FUNCTION_42();
  v12 = sub_23E1FE00C();
  v1[40] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[41] = v13;
  v1[42] = OUTLINED_FUNCTION_42();
  v1[43] = sub_23E1FDECC();
  v1[44] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v15 = sub_23E1FDE6C();
  v1[45] = v15;
  v1[46] = v14;

  return MEMORY[0x2822009F8](sub_23DE4FA90, v15, v14);
}

uint64_t sub_23DE4FA90()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 136) = MEMORY[0x277D84F90];
  v2 = (v0 + 136);
  v3 = sub_23DE4D8B0();
  *(v0 + 376) = v3;
  v4 = MEMORY[0x277D7A440];
  if (v3)
  {
    v5 = *(v0 + 168);
    *(v0 + 448) = *MEMORY[0x277CC21D8];
    *(v0 + 384) = *v4;
    *(v0 + 392) = v1;
    v6 = v5 & 0xC000000000000001;
    sub_23DE570B0(0, (v5 & 0xC000000000000001) == 0, v5);
    v7 = *(v0 + 168);
    if (v6)
    {
      v8 = MEMORY[0x23EF04DD0](0, v7);
    }

    else
    {
      v8 = *(v7 + 32);
    }

    *(v0 + 400) = v8;
    *(v0 + 408) = 1;
    *(v0 + 144) = v1;
    sub_23E1FE03C();
    sub_23E1FDFFC();
    v27 = OUTLINED_FUNCTION_30_0();
    v28(v27);
    *(v0 + 416) = v1;
    *(v0 + 424) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_15_1();
    sub_23DE58FC8(v29, v30, MEMORY[0x277CC21D0]);
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 432) = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_10_1(v31);
    OUTLINED_FUNCTION_71_0();

    return MEMORY[0x282200308](v13);
  }

  sub_23E1FCB9C();
  v9 = sub_23E1FD02C();
  v10 = sub_23E1FE19C();
  v77 = (v0 + 136);
  v79 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v76 = v10;
    v11 = OUTLINED_FUNCTION_52_0();
    *v11 = 134218240;
    v12 = *(v1 + 16);
    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    v13 = sub_23E1FB7BC();
    v14 = 0;
    v15 = v1;
    while (v12 != v14)
    {
      if (v14 >= *(v1 + 16))
      {
        goto LABEL_58;
      }

      v16 = *(v1 + 8 * v14 + 32);
      v17 = *(v16 + 16);
      v18 = *(v15 + 16);
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        goto LABEL_59;
      }

      sub_23E1FB7BC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v19 > *(v15 + 24) >> 1)
      {
        if (v18 <= v19)
        {
          v21 = v18 + v17;
        }

        else
        {
          v21 = v18;
        }

        sub_23DE4CD10(isUniquelyReferenced_nonNull_native, v21, 1, v15);
        v15 = v22;
      }

      if (*(v16 + 16))
      {
        OUTLINED_FUNCTION_66_0();
        if (v23 < v17)
        {
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_56_0();
        swift_arrayInitWithCopy();

        v1 = MEMORY[0x277D84F90];
        if (v17)
        {
          v24 = *(v15 + 16);
          v25 = __OFADD__(v24, v17);
          v26 = v24 + v17;
          if (v25)
          {
            goto LABEL_63;
          }

          *(v15 + 16) = v26;
        }
      }

      else
      {

        v1 = MEMORY[0x277D84F90];
        if (v17)
        {
          goto LABEL_60;
        }
      }

      ++v14;
    }

    v34 = *(v15 + 16);

    *(v11 + 14) = v34;
    _os_log_impl(&dword_23DE30000, v9, v76, "WFSpotlightSearchAction: received results from %ld queries with a total of %ld items", v11, 0x16u);
    OUTLINED_FUNCTION_56();
    v2 = (v0 + 136);
  }

  v75 = (v2 - 9);
  log = (v2 - 6);

  v35 = OUTLINED_FUNCTION_66();
  v36 = v0;
  v74 = v37;
  v37(v35);
  *(v0 + 160) = v1;
  swift_beginAccess();
  v38 = 0;
  v39 = v1;
  v40 = v1;
LABEL_28:
  v41 = *(v40 + 16);
  if (v41 >= sub_23DE4E77C() || (v42 = *(v39 + 16)) == 0)
  {
LABEL_52:
    v36[20] = v40;
    sub_23E1FCB9C();
    v65 = sub_23E1FD02C();
    v66 = sub_23E1FE19C();
    if (OUTLINED_FUNCTION_51(v66))
    {
      v67 = OUTLINED_FUNCTION_38_0();
      *v67 = 134217984;
      *(v67 + 4) = *(v40 + 16);
      OUTLINED_FUNCTION_17_1(&dword_23DE30000, v68, v69, "WFSpotlightSearchAction: interleaved %ld items for final results");
      OUTLINED_FUNCTION_20_0();
    }

    v70 = OUTLINED_FUNCTION_45();
    v74(v70);
    OUTLINED_FUNCTION_45_0((v2 + 3), v75);
    sub_23DE50F78(v2 + 3);
    swift_endAccess();

    OUTLINED_FUNCTION_71_0();

    __asm { BRAA            X2, X16 }
  }

  v13 = sub_23E1FB7BC();
  for (i = 0; ; ++i)
  {
    if (v42 == i)
    {

      v2 = v77;
      *v77 = v1;

      v51 = *(v1 + 16);
      if (!v51)
      {
        goto LABEL_52;
      }

      v52 = v38 % v51;
      if (*(*(v1 + 8 * (v38 % v51) + 32) + 16))
      {
        OUTLINED_FUNCTION_45_0(v77, log);
        v13 = swift_isUniquelyReferenced_nonNull_native();
        if ((v13 & 1) == 0)
        {
          sub_23DF31A94();
          v1 = v13;
        }

        if (v52 >= *(v1 + 16))
        {
          goto LABEL_64;
        }

        sub_23DE5101C(v36[30]);
        v36[17] = v1;
        swift_endAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = OUTLINED_FUNCTION_6_1();
          sub_23DE4CD10(v57, v58, v59, v40);
          v40 = v60;
        }

        v54 = *(v40 + 16);
        v53 = *(v40 + 24);
        if (v54 >= v53 >> 1)
        {
          OUTLINED_FUNCTION_9(v53);
          OUTLINED_FUNCTION_61_0();
          sub_23DE4CD10(v61, v62, v63, v40);
          v40 = v64;
        }

        *(v40 + 16) = v54 + 1;
        OUTLINED_FUNCTION_31_0();
        v13 = (*(v56 + 32))(v40 + v55 + *(v56 + 72) * v54);
      }

      v39 = v1;
      v25 = __OFADD__(v38++, 1);
      v1 = MEMORY[0x277D84F90];
      if (v25)
      {
        goto LABEL_62;
      }

      goto LABEL_28;
    }

    if (i >= *(v39 + 16))
    {
      break;
    }

    v44 = *(v39 + 8 * i + 32);
    if (*(v44 + 16))
    {
      sub_23E1FB7BC();
      v13 = swift_isUniquelyReferenced_nonNull_native();
      if ((v13 & 1) == 0)
      {
        v45 = OUTLINED_FUNCTION_13_1();
        sub_23DE64034(v45, v46, v47);
      }

      v49 = *(v1 + 16);
      v48 = *(v1 + 24);
      if (v49 >= v48 >> 1)
      {
        v50 = OUTLINED_FUNCTION_9(v48);
        sub_23DE64034(v50, v49 + 1, 1);
      }

      *(v1 + 16) = v49 + 1;
      *(v1 + 8 * v49 + 32) = v44;
      v36 = v79;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
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
  return MEMORY[0x282200308](v13);
}