id _MSLogSystem(uint64_t a1)
{
  if (_MSLogSystem_onceToken[0] != -1)
  {
    _MSLogSystem_cold_1();
  }

  v2 = _MSLogSystem_log;

  return v2;
}

uint64_t sub_27550DE18()
{
  if (qword_2809F4D70 != -1)
  {
    swift_once();
  }

  v0 = qword_2809F8D58;
  v1 = qword_2809F8D58;
  return v0;
}

unint64_t sub_27550DE94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DA8, &unk_27554E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = 4804673;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_27554D328();
  *(inited + 56) = 0x6874654D70747468;
  *(inited + 64) = 0xEA0000000000646FLL;
  *(inited + 72) = sub_27554D328();
  v1 = sub_2755462BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DB0, &qword_27554EF40);
  swift_arrayDestroy();
  return v1;
}

id sub_27550DF7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmailAvailableAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmailAvailableAPIRequest(uint64_t a1)
{
  result = qword_2809F4D88;
  if (!qword_2809F4D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmailAvailableAPIResponse(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmailAvailableAPIResponse(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27550E1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27554D678();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27550E254(uint64_t a1)
{
  v2 = sub_27550EAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27550E290(uint64_t a1)
{
  v2 = sub_27550EAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27550E2CC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DE0, &qword_27554E6E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27550EAFC();
  sub_27554D728();
  sub_27554D658();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_27550E40C()
{
  sub_27554D6E8();
  MEMORY[0x277C7B3B0](0);
  return sub_27554D708();
}

uint64_t sub_27550E47C(uint64_t a1)
{
  sub_27554D6E8();
  MEMORY[0x277C7B3B0](0);
  return sub_27554D708();
}

uint64_t sub_27550E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27554D678();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27550E574(uint64_t a1)
{
  v2 = sub_27550E7DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27550E5B0(uint64_t a1)
{
  v2 = sub_27550E7DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27550E5EC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4D98, &qword_27554E4C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27550E7DC();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_27554D638();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9 & 1;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_27550E7DC()
{
  result = qword_2809F4DA0;
  if (!qword_2809F4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DA0);
  }

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

void *sub_27550E890@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27550E8B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_27550E900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_27550E96C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27550E98C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_27550E9F8()
{
  result = qword_2809F4DC8;
  if (!qword_2809F4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DC8);
  }

  return result;
}

unint64_t sub_27550EA50()
{
  result = qword_2809F4DD0;
  if (!qword_2809F4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DD0);
  }

  return result;
}

unint64_t sub_27550EAA8()
{
  result = qword_2809F4DD8;
  if (!qword_2809F4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DD8);
  }

  return result;
}

unint64_t sub_27550EAFC()
{
  result = qword_2809F4DE8;
  if (!qword_2809F4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmailCreateAPIResponse.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EmailCreateAPIResponse.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_27550EC2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27550EC4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_27550EC9C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_27550ECEC()
{
  result = qword_2809F4E00;
  if (!qword_2809F4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E00);
  }

  return result;
}

unint64_t sub_27550ED44()
{
  result = qword_2809F4E08;
  if (!qword_2809F4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E08);
  }

  return result;
}

unint64_t sub_27550ED9C()
{
  result = qword_2809F4E10;
  if (!qword_2809F4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E10);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_27550EE40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_27550EE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27550EF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E60, &qword_27554E968);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E58, &qword_27554E960);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E50, &qword_27554E958);
  MEMORY[0x28223BE20](v35);
  v10 = &v31 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E80, &qword_27554E978);
  MEMORY[0x28223BE20](v34);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E38, &qword_27554E950);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E30, &qword_27554E948);
  MEMORY[0x28223BE20](v33);
  v18 = &v31 - v17;
  if (*(a1 + 120))
  {
    sub_27550F424(v16);
    sub_275515E2C(&qword_2809F4E40, &qword_2809F4E38, &qword_27554E950, MEMORY[0x277D24540]);
    sub_27554CF98();
    (*(v14 + 8))(v16, v13);
    v19 = &v18[*(v33 + 36)];
    *v19 = sub_275515E84;
    *(v19 + 1) = 0;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    v20 = &qword_2809F4E30;
    v21 = &qword_27554E948;
    sub_275514D40(v18, v12, &qword_2809F4E30, &qword_27554E948);
    swift_storeEnumTagMultiPayload();
    sub_2755139D8();
    sub_275513AD4();
    sub_27554CC68();
    v22 = v18;
  }

  else
  {
    v23 = *(a1 + 112);
    *v5 = sub_27554CC28();
    *(v5 + 1) = v23;
    v5[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E88, &unk_27554E980);
    sub_27550FC74(a1, &v5[*(v24 + 44)]);
    v25 = sub_27554CD68();
    v26 = &v5[*(v3 + 36)];
    *v26 = v25;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    v26[40] = 1;
    v27 = sub_275513BE0();
    MEMORY[0x277C7ACB0](2, MEMORY[0x277D84F90], v3, v27);
    sub_275514DA8(v5, &qword_2809F4E60, &qword_27554E968);
    v37 = v3;
    v38 = v27;
    swift_getOpaqueTypeConformance2();
    v28 = v32;
    sub_27554CF98();
    (*(v31 + 8))(v8, v28);
    v29 = &v10[*(v35 + 36)];
    *v29 = sub_275515E84;
    *(v29 + 1) = 0;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v20 = &qword_2809F4E50;
    v21 = &qword_27554E958;
    sub_275514D40(v10, v12, &qword_2809F4E50, &qword_27554E958);
    swift_storeEnumTagMultiPayload();
    sub_2755139D8();
    sub_275513AD4();
    sub_27554CC68();
    v22 = v10;
  }

  return sub_275514DA8(v22, v20, v21);
}

uint64_t sub_27550F424@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E90, &unk_275550A50);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E98, &unk_27554E990);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA0, &qword_275550A60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v45 - v10;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  *&v58[0] = 2777980912;
  *(&v58[0] + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000011, 0x8000000275551940);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v52 = sub_27554C588();
  v51 = v15;

  v16 = [v13 bundleForClass_];
  *&v58[0] = 2777980912;
  *(&v58[0] + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000016, 0x8000000275551960);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v50 = sub_27554C588();
  v49 = v17;

  v18 = sub_27554C688();
  v19 = *(*(v18 - 8) + 56);
  v53 = v11;
  v19(v11, 1, 1, v18);
  v47 = v13;
  v48 = ObjCClassFromMetadata;
  v20 = [v13 bundleForClass_];
  *&v58[0] = 2777980912;
  *(&v58[0] + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](1162760004, 0xE400000000000000);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  v58[0] = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  v59 = *(v1 + 80);
  v58[0] = *(v1 + 80);
  sub_27554D0E8();
  v21 = sub_27554C6F8();
  v22 = *(v21 - 8);
  v46 = *(v22 + 56);
  v45[1] = v22 + 56;
  v46(v55, 1, 1, v21);
  v23 = swift_allocObject();
  v24 = *(v1 + 80);
  v23[5] = *(v1 + 64);
  v23[6] = v24;
  v23[7] = *(v1 + 96);
  *(v23 + 121) = *(v1 + 105);
  v25 = *(v1 + 16);
  v23[1] = *v1;
  v23[2] = v25;
  v26 = *(v1 + 48);
  v23[3] = *(v1 + 32);
  v23[4] = v26;
  sub_275514528(v1, v58);
  v27 = v57;
  sub_27554C728();
  v28 = sub_27554C738();
  v29 = *(*(v28 - 8) + 56);
  v29(v27, 0, 1, v28);
  v30 = 1;
  if (*(v1 + 40))
  {
    v31 = [v47 bundleForClass_];
    *&v58[0] = 2777980912;
    *(&v58[0] + 1) = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4D5F54524F504D49, 0xEB000000004C4941);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v48 = sub_27554C588();

    v58[0] = *(v1 + 64);
    sub_27554D0E8();
    v58[0] = v59;
    sub_27554D0E8();
    v46(v55, 1, 1, v21);
    v32 = swift_allocObject();
    v33 = *(v1 + 80);
    v32[5] = *(v1 + 64);
    v32[6] = v33;
    v32[7] = *(v1 + 96);
    *(v32 + 121) = *(v1 + 105);
    v34 = *(v1 + 16);
    v32[1] = *v1;
    v32[2] = v34;
    v35 = *(v1 + 48);
    v32[3] = *(v1 + 32);
    v32[4] = v35;
    sub_275514528(v1, v58);
    sub_27554C728();
    v30 = 0;
  }

  v29(v56, v30, 1, v28);
  v36 = swift_allocObject();
  v37 = *(v1 + 80);
  v36[5] = *(v1 + 64);
  v36[6] = v37;
  v36[7] = *(v1 + 96);
  *(v36 + 121) = *(v1 + 105);
  v38 = *(v1 + 16);
  v36[1] = *v1;
  v36[2] = v38;
  v39 = *(v1 + 48);
  v36[3] = *(v1 + 32);
  v36[4] = v39;
  v40 = swift_allocObject();
  v41 = v2[5];
  v40[5] = v2[4];
  v40[6] = v41;
  v40[7] = v2[6];
  *(v40 + 121) = *(v2 + 105);
  v42 = v2[1];
  v40[1] = *v2;
  v40[2] = v42;
  v43 = v2[3];
  v40[3] = v2[2];
  v40[4] = v43;
  sub_275514528(v2, v58);
  sub_275514528(v2, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EB0, &qword_27554E9A8);
  sub_275514570();
  sub_2755145C4();
  return sub_27554C6B8();
}

uint64_t sub_27550FC74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FA8, &qword_27554EAB0);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FB0, &qword_27554EAB8);
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FB8, &qword_27554EAC0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FC0, &qword_27554EAC8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FC8, &qword_27554EAD0);
  v57 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v53 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v60 = a1;
  sub_27554CD48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FD0, &qword_27554EAD8);
  sub_275515E2C(&qword_2809F4FD8, &qword_2809F4FD0, &qword_27554EAD8, MEMORY[0x277CE1198]);
  v21 = 1;
  v59 = v20;
  sub_27554C8F8();
  v55 = v15;
  v22 = v15;
  v23 = v4;
  v24.n128_f64[0] = sub_275511A50(v22);
  if (*(a1 + 40))
  {
    v25 = swift_allocObject();
    v26 = *(a1 + 80);
    v25[5] = *(a1 + 64);
    v25[6] = v26;
    v25[7] = *(a1 + 96);
    *(v25 + 121) = *(a1 + 105);
    v27 = *(a1 + 16);
    v25[1] = *a1;
    v25[2] = v27;
    v28 = *(a1 + 48);
    v25[3] = *(a1 + 32);
    v25[4] = v28;
    MEMORY[0x28223BE20](v25);
    *(&v48 - 2) = a1;
    sub_275514528(a1, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FE8, &qword_27554EAE8);
    sub_275514E10();
    v29 = v48;
    sub_27554D118();
    v62[0] = *(a1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
    sub_27554D0E8();
    if (v61)
    {
      v30 = 1;
    }

    else
    {
      v62[0] = *(a1 + 64);
      sub_27554D0E8();
      v30 = v61;
    }

    KeyPath = swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v33 = v49;
    (*(v50 + 32))(v49, v29, v51);
    v34 = (v33 + *(v23 + 36));
    *v34 = KeyPath;
    v34[1] = sub_275514F98;
    v34[2] = v32;
    sub_2755151DC(v33, v10, &qword_2809F4FB0, &qword_27554EAB8);
    v21 = 0;
  }

  (*(v56 + 56))(v10, v21, 1, v23, v24);
  v35 = v57;
  v36 = *(v57 + 16);
  v37 = v53;
  v36(v53, v59, v16);
  v38 = v55;
  v39 = v52;
  sub_275514D40(v55, v52, &qword_2809F4FC0, &qword_27554EAC8);
  v40 = v54;
  sub_275514D40(v10, v54, &qword_2809F4FB8, &qword_27554EAC0);
  v41 = v10;
  v42 = v39;
  v43 = v40;
  v44 = v58;
  v36(v58, v37, v16);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FE0, &qword_27554EAE0);
  sub_275514D40(v42, &v44[*(v45 + 48)], &qword_2809F4FC0, &qword_27554EAC8);
  sub_275514D40(v43, &v44[*(v45 + 64)], &qword_2809F4FB8, &qword_27554EAC0);
  sub_275514DA8(v41, &qword_2809F4FB8, &qword_27554EAC0);
  sub_275514DA8(v38, &qword_2809F4FC0, &qword_27554EAC8);
  v46 = *(v35 + 8);
  v46(v59, v16);
  sub_275514DA8(v43, &qword_2809F4FB8, &qword_27554EAC0);
  sub_275514DA8(v42, &qword_2809F4FC0, &qword_27554EAC8);
  return (v46)(v37, v16);
}

void *sub_2755103B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554CC28();
  v10 = 0;
  sub_275510490(a1, __src);
  memcpy(__dst, __src, 0x1F9uLL);
  memcpy(v12, __src, 0x1F9uLL);
  sub_275514D40(__dst, v7, &qword_2809F50A0, &qword_27554EBB0);
  sub_275514DA8(v12, &qword_2809F50A0, &qword_27554EBB0);
  memcpy(&v9[7], __dst, 0x1F9uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x200uLL);
}

uint64_t sub_275510490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_27554D218();
  v79 = v4;
  v80 = v3;
  sub_275510C90(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v93, __src, 0x130uLL);
  sub_275514D40(__dst, v84, &qword_2809F50A8, &qword_27554EBB8);
  sub_275514DA8(v93, &qword_2809F50A8, &qword_27554EBB8);
  memcpy(v95, __dst, sizeof(v95));
  v78 = sub_27554CD78();
  sub_27554C8A8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LOBYTE(__src[0]) = 0;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = objc_opt_self();
  v13 = [v69 bundleForClass_];
  __src[0] = 2777980912;
  __src[1] = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000011, 0x8000000275551940);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v14 = sub_27554C588();
  v16 = v15;

  __src[0] = v14;
  __src[1] = v16;
  sub_275514CC4();
  v17 = sub_27554CED8();
  v19 = v18;
  v21 = v20;
  sub_27554CDA8();
  v22 = sub_27554CEB8();
  v24 = v23;
  v26 = v25;

  sub_275514D18(v17, v19, v21 & 1);

  sub_27554CDC8();
  v76 = sub_27554CE18();
  v77 = v27;
  v81 = v28;
  v63 = v29;
  sub_275514D18(v22, v24, v26 & 1);

  v30 = [v69 bundleForClass_];
  __src[0] = 2777980912;
  __src[1] = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000016, 0x8000000275551960);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v31 = sub_27554C588();
  v33 = v32;

  __src[0] = v31;
  __src[1] = v33;
  v34 = sub_27554CED8();
  v73 = v35;
  v74 = v34;
  v61 = v36;
  v75 = v37;
  v38 = *(a1 + 8);
  __src[0] = *a1;
  __src[1] = v38;

  v39 = sub_27554CED8();
  v41 = v40;
  LOBYTE(v31) = v42;
  sub_27554CDB8();
  v43 = sub_27554CEB8();
  v45 = v44;
  LOBYTE(v24) = v46;

  sub_275514D18(v39, v41, v31 & 1);

  sub_27554CDC8();
  v67 = sub_27554CE18();
  v68 = v47;
  v62 = v48;
  v50 = v49;
  sub_275514D18(v43, v45, v24 & 1);

  LOBYTE(v39) = *(a1 + 40);
  v51 = [v69 bundleForClass_];
  __src[0] = 2777980912;
  __src[1] = 0xA400000000000000;
  if (v39)
  {
    MEMORY[0x277C7B050](0xD000000000000010, 0x80000002755519B0);
  }

  else
  {
    MEMORY[0x277C7B050](0xD000000000000024, 0x8000000275551980);
  }

  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v52 = sub_27554C588();
  v54 = v53;

  __src[0] = v52;
  __src[1] = v54;
  v64 = sub_27554CED8();
  v66 = v55;
  v70 = v56;
  v58 = v57;
  KeyPath = swift_getKeyPath();
  v82[0] = v80;
  v82[1] = v79;
  memcpy(&v82[2], v95, 0x130uLL);
  LOBYTE(v82[40]) = v78;
  *(&v82[40] + 1) = *v94;
  HIDWORD(v82[40]) = *&v94[3];
  v82[41] = v6;
  v82[42] = v8;
  v82[43] = v10;
  v82[44] = v12;
  LOBYTE(v82[45]) = 0;
  memcpy(__src, v82, 0x169uLL);
  memcpy(a2, __src, 0x170uLL);
  *(a2 + 368) = v76;
  *(a2 + 376) = v81;
  *(a2 + 384) = v63 & 1;
  *(a2 + 392) = v77;
  *(a2 + 400) = v74;
  *(a2 + 408) = v73;
  *(a2 + 416) = v61 & 1;
  *(a2 + 424) = v75;
  *(a2 + 432) = v67;
  *(a2 + 440) = v62;
  *(a2 + 448) = v50 & 1;
  *(a2 + 456) = v68;
  *(a2 + 464) = v64;
  *(a2 + 472) = v70;
  *(a2 + 480) = v58 & 1;
  *(a2 + 488) = v66;
  *(a2 + 496) = KeyPath;
  *(a2 + 504) = 1;
  sub_275514D40(v82, v84, &qword_2809F50B0, &qword_27554EBC0);
  sub_275514D28(v76, v81, v63 & 1);

  sub_275514D28(v74, v73, v61 & 1);

  sub_275514D28(v67, v62, v50 & 1);

  sub_275514D28(v64, v70, v58 & 1);

  sub_275514D18(v64, v70, v58 & 1);

  sub_275514D18(v67, v62, v50 & 1);

  sub_275514D18(v74, v73, v61 & 1);

  sub_275514D18(v76, v81, v63 & 1);

  v84[0] = v80;
  v84[1] = v79;
  memcpy(v85, v95, 0x130uLL);
  v85[304] = v78;
  *v86 = *v94;
  *&v86[3] = *&v94[3];
  v87 = v6;
  v88 = v8;
  v89 = v10;
  v90 = v12;
  v91 = 0;
  return sub_275514DA8(v84, &qword_2809F50B0, &qword_27554EBC0);
}

uint64_t sub_275510C90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = sub_27554D0A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v8 = *(a1 + 32);
  *&v55 = v5;
  *&v54 = v4;
  if (v8)
  {
    v50 = v8;
    sub_27554D088();
    v9 = *MEMORY[0x277CE0FE0];
    v10 = *(v4 + 104);
    v52 = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53 = v9;
    v10(v7);
    v49 = sub_27554D0B8();

    v11 = *(v4 + 8);
    v51 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v3);
    sub_27554D218();
    sub_27554C968();
    v12 = v96;
    v13 = v97;
    v14 = v98;
    v15 = v99;
    v16 = v100;
    v17 = v101;
    sub_27554D068();
    v18 = sub_27554D058();

    LOBYTE(v105) = v13;
    *&v58 = v49;
    *(&v58 + 1) = v12;
    LOBYTE(v59) = v13;
    *(&v59 + 1) = v86;
    DWORD1(v59) = *(&v86 + 3);
    *(&v59 + 1) = v14;
    LOBYTE(v60) = v15;
    *(&v60 + 1) = v78;
    DWORD1(v60) = *(&v78 + 3);
    *(&v60 + 1) = v16;
    *&v61 = v17;
    *(&v61 + 1) = v18;
    v62 = xmmword_27554E840;
    *&v63 = 0x4010000000000000;
    v79[1] = v60;
    v79[2] = v61;
    v79[3] = xmmword_27554E840;
    *&v80 = 0x4010000000000000;
    v78 = v58;
    v79[0] = v59;
    LOBYTE(v76[0]) = 0;
    LOBYTE(v81[1]) = 0;
    sub_275514D40(&v58, &v86, &qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50C0, &unk_27554EC00);
    sub_27551524C();
    sub_2755152F8();
    sub_27554CC68();

    sub_275514DA8(&v58, &qword_2809F50B8, &unk_275551670);
    v109 = v87[3];
    v110 = *v88;
    v111 = *&v88[16];
    v112 = v88[32];
    v105 = v86;
    v106 = v87[0];
    v107 = v87[1];
    v108 = v87[2];
  }

  else
  {
    sub_27554D098();
    v19 = *MEMORY[0x277CE0FE0];
    v20 = *(v4 + 104);
    v52 = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53 = v19;
    v20(v7);
    v50 = sub_27554D0B8();

    v21 = *(v4 + 8);
    v51 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v7, v3);
    sub_27554D218();
    sub_27554C968();
    v22 = v97;
    v23 = v98;
    v24 = v99;
    v48 = v100;
    v49 = v96;
    v47 = v101;
    v25 = sub_27554D078();
    KeyPath = swift_getKeyPath();
    LOBYTE(v86) = v22;
    LOBYTE(v78) = v24;
    v27 = sub_27554CD68();
    sub_27554D068();
    v28 = sub_27554D058();

    LOBYTE(v78) = 1;
    *&v86 = v50;
    *(&v86 + 1) = v49;
    LOBYTE(v87[0]) = v22;
    *(&v87[0] + 1) = v23;
    LOBYTE(v87[1]) = v24;
    *(&v87[1] + 1) = v48;
    *&v87[2] = v47;
    *(&v87[2] + 1) = KeyPath;
    *&v87[3] = v25;
    BYTE8(v87[3]) = v27;
    *(&v87[3] + 9) = 256;
    *&v88[8] = xmmword_27554E840;
    *v88 = v28;
    *&v88[24] = 0x4010000000000000;
    v88[32] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50C0, &unk_27554EC00);
    sub_27551524C();
    sub_2755152F8();
    sub_27554CC68();
  }

  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  v31 = v54;
  v32 = v55;
  (*(v54 + 104))(v7, v53, v55);
  v33 = sub_27554D0B8();

  (*(v31 + 8))(v7, v32);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v58) = 1;
  *&v75[6] = v102;
  *&v75[22] = v103;
  *&v75[38] = v104;
  v34 = v57;
  v86 = *(v57 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v35 = v78;
  sub_27554D268();
  v37 = v36;
  v39 = v38;
  sub_27554D068();
  v40 = sub_27554D058();

  v41 = swift_allocObject();
  v42 = v34[5];
  v41[5] = v34[4];
  v41[6] = v42;
  v41[7] = v34[6];
  *(v41 + 121) = *(v34 + 105);
  v43 = v34[1];
  v41[1] = *v34;
  v41[2] = v43;
  v44 = v34[3];
  v41[3] = v34[2];
  v41[4] = v44;
  v71 = v109;
  v72 = v110;
  v73 = v111;
  v74 = v112;
  v67 = v105;
  v68 = v106;
  v69 = v107;
  v70 = v108;
  v76[0] = v105;
  v76[1] = v106;
  v76[2] = v107;
  v76[3] = v108;
  v77 = v112;
  v76[5] = v110;
  v76[6] = v111;
  v76[4] = v109;
  v66[0] = v105;
  v66[1] = v106;
  LOBYTE(v66[7]) = v112;
  v66[5] = v110;
  v66[6] = v111;
  v66[2] = v107;
  v66[3] = v108;
  v66[4] = v109;
  v78 = v33;
  LOWORD(v79[0]) = 1;
  *&v79[3] = *&v75[46];
  *(&v79[2] + 2) = *&v75[32];
  *(&v79[1] + 2) = *&v75[16];
  *(v79 + 2) = *v75;
  *(&v79[3] + 1) = v35;
  *&v80 = v35;
  *(&v80 + 1) = v37;
  *&v81[0] = v39;
  v55 = xmmword_27554E850;
  *(v81 + 8) = xmmword_27554E850;
  *(&v81[1] + 1) = v40;
  v54 = xmmword_27554E840;
  v81[2] = xmmword_27554E840;
  *&v82 = 0x4010000000000000;
  *(&v82 + 1) = sub_2755155CC;
  v83 = v41;
  v85 = 0;
  v84 = 0;
  *(&v66[16] + 8) = v82;
  *(&v66[17] + 8) = v41;
  *(&v66[14] + 8) = v81[1];
  *(&v66[13] + 8) = v81[0];
  *(&v66[12] + 8) = v80;
  *(&v66[11] + 8) = v79[3];
  *(&v66[10] + 8) = v79[2];
  *(&v66[9] + 8) = v79[1];
  *(&v66[8] + 8) = v79[0];
  *(&v66[7] + 8) = v33;
  *(&v66[18] + 1) = 0;
  *(&v66[15] + 8) = xmmword_27554E840;
  memcpy(v56, v66, 0x130uLL);
  *(v87 + 2) = *v75;
  v86 = v33;
  LOWORD(v87[0]) = 1;
  *(&v87[1] + 2) = *&v75[16];
  *(&v87[2] + 2) = *&v75[32];
  *&v87[3] = *&v75[46];
  *(&v87[3] + 1) = v35;
  *v88 = v35;
  *&v88[8] = v37;
  *&v88[16] = v39;
  *&v88[24] = v55;
  v89 = v40;
  v90 = v54;
  v91 = 0x4010000000000000;
  v92 = sub_2755155CC;
  v95 = 0;
  v93 = v41;
  v94 = 0;
  sub_275514528(v34, &v58);
  sub_275514D40(v76, &v58, &qword_2809F5150, &unk_2755516B0);
  sub_275514D40(&v78, &v58, &qword_2809F5158, &unk_27554EC50);
  sub_275514DA8(&v86, &qword_2809F5158, &unk_27554EC50);
  v62 = v71;
  v63 = v72;
  v64 = v73;
  v65 = v74;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v61 = v70;
  return sub_275514DA8(&v58, &qword_2809F5150, &unk_2755516B0);
}

uint64_t sub_275511594(_OWORD *a1)
{
  v2 = sub_27554D278();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_27554D2A8();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27554D2C8();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_2755155D4();
  v22 = sub_27554D4A8();
  sub_27554D2B8();
  sub_27554D2D8();
  v23 = *(v8 + 8);
  v23(v11, v7);
  v14 = swift_allocObject();
  v15 = a1[5];
  v14[5] = a1[4];
  v14[6] = v15;
  v14[7] = a1[6];
  *(v14 + 121) = *(a1 + 105);
  v16 = a1[1];
  v14[1] = *a1;
  v14[2] = v16;
  v17 = a1[3];
  v14[3] = a1[2];
  v14[4] = v17;
  aBlock[4] = sub_275515688;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  sub_275514528(a1, v28);

  sub_27554D298();
  v28[0] = MEMORY[0x277D84F90];
  sub_2755156A8(&qword_2809F60D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_275515E2C(&qword_2809F60E0, &qword_2809F5168, &unk_2755513C0, MEMORY[0x277D83970]);
  sub_27554D538();
  v19 = v22;
  MEMORY[0x277C7B120](v13, v6, v4, v18);
  _Block_release(v18);

  (*(v27 + 8))(v4, v2);
  (*(v25 + 8))(v6, v26);
  return (v23)(v13, v24);
}

uint64_t sub_2755119C8(uint64_t a1)
{
  sub_27554D238();
  sub_27554C9D8();
}

double sub_275511A50@<D0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = sub_27554CD28();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5030, &qword_27554EB70);
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5038, &qword_27554EB78);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5040, &qword_27554EB80);
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v30 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5048, &qword_27554EB88);
  MEMORY[0x28223BE20](v30);
  v12 = &v30 - v11;
  v13 = swift_allocObject();
  v14 = v1[5];
  v13[5] = v1[4];
  v13[6] = v14;
  v13[7] = v1[6];
  *(v13 + 121) = *(v1 + 105);
  v15 = v1[1];
  v13[1] = *v1;
  v13[2] = v15;
  v16 = v1[3];
  v13[3] = v1[2];
  v13[4] = v16;
  v38 = v1;
  sub_275514528(v1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5050, &qword_27554EB90);
  sub_275514FD0();
  sub_27554D118();
  v40[0] = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  v17 = 1;
  if ((v39 & 1) == 0)
  {
    v40[0] = v1[4];
    sub_27554D0E8();
    v17 = v39;
  }

  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v4 + 32))(v9, v6, v31);
  v20 = &v9[*(v7 + 36)];
  *v20 = KeyPath;
  v20[1] = sub_275515EB8;
  v20[2] = v19;
  sub_27554CD18();
  sub_275515088();
  sub_2755156A8(&qword_2809F5090, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v21 = v32;
  v22 = v36;
  sub_27554CF18();
  (*(v35 + 8))(v3, v22);
  sub_275514DA8(v9, &qword_2809F5038, &qword_27554EB78);
  v23 = &v12[*(v30 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
  v25 = *MEMORY[0x277CDF420];
  v26 = sub_27554C908();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  (*(v33 + 32))(v12, v21, v34);
  LOBYTE(v25) = sub_27554CD58();
  v27 = v37;
  sub_27551516C(v12, v37);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FC0, &qword_27554EAC8) + 36);
  *v28 = v25;
  result = 0.0;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  return result;
}

uint64_t sub_275511FF0()
{
  v0 = sub_27554C778();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_2809F8DA8);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_27554C758();
  v6 = sub_27554D428();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_27550C000, v5, v6, "[AccountCreation - All Set] page viewed", v7, 2u);
    MEMORY[0x277C7BAC0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_27551217C(char a1)
{
  v2 = v1;
  v4 = sub_27554C778();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = v1[4];
  }

  else
  {
    v8 = v1[3];
  }

  v16 = v8;
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0F8();
  v16 = v1[5];
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0F8();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2809F8DA8);
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_27554C758();
  v11 = sub_27554D428();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_27550C000, v10, v11, "[AccountCreation - All Set] tapped on Done", v12, 2u);
    MEMORY[0x277C7BAC0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (*(v2 + 2))(a1 & 1);
}

double sub_2755123A0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = v3;
  sub_27554D0D8();
  result = v6;
  *a2 = v3;
  a2[1] = v6;
  *(a2 + 2) = v7;
  return result;
}

uint64_t sub_2755123FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554CC18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27551260C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EF0, &qword_27554E9C0);
  sub_2755147C4();
  sub_27554D198();
  sub_27554CC08();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4ED0, &qword_27554E9B0) + 36);
  (*(v5 + 16))(a2 + v8, v7, v4);
  v9 = *(v5 + 56);
  v9((a2 + v8), 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EB0, &qword_27554E9A8) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4F90, &qword_27554EA10) + 28);
  (*(v5 + 32))(v11 + v12, v7, v4);
  result = v9(v11 + v12, 0, 1, v4);
  *v11 = KeyPath;
  return result;
}

double sub_27551260C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554CC38();
  sub_275512710(a1, v11);
  *&v10[7] = v11[0];
  *&v10[23] = v11[1];
  *&v10[39] = v11[2];
  *&v10[55] = v11[3];
  v5 = sub_27554CDE8();
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_27554D048();
  v8 = sub_27554D138();
  *(a2 + 33) = *&v10[16];
  *(a2 + 49) = *&v10[32];
  *(a2 + 65) = *&v10[48];
  *a2 = v4;
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  *(a2 + 17) = *v10;
  *(a2 + 80) = *&v10[63];
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = v5;
  *(a2 + 104) = v7;
  *(a2 + 112) = 0;
  result = 0.0;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 160) = v8;
  return result;
}

uint64_t sub_275512710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275514CC4();

  v4 = sub_27554CED8();
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() labelColor];
  sub_27554D018();
  v10 = sub_27554CE98();
  v12 = v11;
  v26 = v13;
  v15 = v14;
  sub_275514D18(v4, v6, v8 & 1);

  v16 = *(a1 + 40);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  if (v16)
  {
    MEMORY[0x277C7B050](0xD000000000000010, 0x80000002755519B0);
  }

  else
  {
    MEMORY[0x277C7B050](0xD000000000000024, 0x8000000275551980);
  }

  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  v19 = sub_27554CED8();
  v21 = v20;
  v23 = v22 & 1;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v24;
  sub_275514D28(v10, v12, v26 & 1);

  sub_275514D28(v19, v21, v23);

  sub_275514D18(v19, v21, v23);

  sub_275514D18(v10, v12, v26 & 1);
}

__n128 sub_2755129FC@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_27554D218();
  v10 = v9;
  sub_275512C90(a1, &v49);
  v40 = v51;
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v38 = v49;
  v39 = v50;
  v45 = v54;
  v44[2] = v51;
  v44[3] = v52;
  v44[4] = v53;
  v44[0] = v49;
  v44[1] = v50;
  sub_275514D40(&v38, v46, &qword_2809F5180, &qword_27554ED00);
  sub_275514DA8(v44, &qword_2809F5180, &qword_27554ED00);
  v64 = v40;
  v65 = v41;
  v66 = v42;
  v67 = v43;
  v62 = v38;
  v63 = v39;
  v11 = sub_27554D208();
  v13 = v12;
  sub_2755130CC(a1, a2, &v26, a4);
  v46[8] = v34;
  v46[9] = v35;
  v46[4] = v30;
  v46[5] = v31;
  v46[6] = v32;
  v46[7] = v33;
  v46[0] = v26;
  v46[1] = v27;
  v46[2] = v28;
  v46[3] = v29;
  *&v37[119] = v33;
  *&v37[55] = v29;
  *&v37[135] = v34;
  *&v37[151] = v35;
  *&v37[71] = v30;
  *&v37[87] = v31;
  *&v37[103] = v32;
  *&v37[7] = v26;
  *&v37[23] = v27;
  *&v47 = v36;
  *(&v47 + 1) = v11;
  *&v37[39] = v28;
  *&v37[167] = v47;
  v57 = v34;
  v58 = v35;
  v53 = v30;
  v54 = v31;
  v56 = v33;
  v55 = v32;
  v48 = v13;
  *&v37[183] = v13;
  v49 = v26;
  v50 = v27;
  v51 = v28;
  v52 = v29;
  v59 = v36;
  v60 = v11;
  v61 = v13;
  sub_275514D40(v46, &v25, &qword_2809F5188, &qword_27554ED08);
  sub_275514DA8(&v49, &qword_2809F5188, &qword_27554ED08);
  *a3 = v8;
  *(a3 + 8) = v10;
  v14 = v65;
  *(a3 + 48) = v64;
  *(a3 + 64) = v14;
  *(a3 + 80) = v66;
  *(a3 + 96) = v67;
  v15 = v63;
  *(a3 + 16) = v62;
  *(a3 + 32) = v15;
  v16 = *v37;
  v17 = *&v37[16];
  v18 = *&v37[32];
  *(a3 + 145) = *&v37[48];
  *(a3 + 129) = v18;
  *(a3 + 113) = v17;
  *(a3 + 97) = v16;
  v19 = *&v37[64];
  v20 = *&v37[80];
  v21 = *&v37[96];
  *(a3 + 209) = *&v37[112];
  *(a3 + 193) = v21;
  *(a3 + 177) = v20;
  *(a3 + 161) = v19;
  result = *&v37[128];
  v23 = *&v37[144];
  v24 = *&v37[160];
  *(a3 + 272) = *&v37[175];
  *(a3 + 257) = v24;
  *(a3 + 241) = v23;
  *(a3 + 225) = result;
  return result;
}

double sub_275512C90@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_27554D088();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v9 = sub_27554D0B8();

    (*(v5 + 8))(v7, v4);
    sub_27554D068();
    v10 = sub_27554D058();

    LOBYTE(v25) = 1;
    v20[0] = v9;
    v20[1] = 0;
    LOWORD(v21) = 1;
    *(&v21 + 2) = v30;
    WORD3(v21) = WORD2(v30);
    *(&v21 + 1) = v10;
    v22 = xmmword_27554E840;
    v23 = 0x4010000000000000;
    v30 = v9;
    v31 = v21;
    v32 = xmmword_27554E840;
    *&v33 = 0x4010000000000000;
    v24 = 0;
    v35 = 0;
    sub_275514D40(v20, &v25, &qword_2809F5190, &qword_27554ED10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5190, &qword_27554ED10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5198, &qword_27554ED18);
    sub_275515954();
    sub_275515A70();
    sub_27554CC68();

    sub_275514DA8(v20, &qword_2809F5190, &qword_27554ED10);
    v32 = v27;
    v33 = *v28;
    v34 = *&v28[16];
    v35 = v29;
    v30 = v25;
    v31 = v26;
  }

  else
  {
    sub_27554D098();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v11 = sub_27554D0B8();

    (*(v5 + 8))(v7, v4);
    v12 = sub_27554D078();
    KeyPath = swift_getKeyPath();
    v14 = sub_27554CD68();
    LOBYTE(v30) = 1;
    sub_27554D068();
    v15 = sub_27554D058();

    LOBYTE(v20[0]) = 1;
    v25 = v11;
    LOWORD(v26) = 1;
    *(&v26 + 1) = KeyPath;
    *&v27 = v12;
    BYTE8(v27) = v14;
    *(&v27 + 9) = 256;
    *v28 = v15;
    *&v28[8] = xmmword_27554E840;
    *&v28[24] = 0x4010000000000000;
    v29 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5190, &qword_27554ED10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5198, &qword_27554ED18);
    sub_275515954();
    sub_275515A70();
    sub_27554CC68();
  }

  v16 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v16;
  *(a2 + 64) = v34;
  *(a2 + 80) = v35;
  result = *&v30;
  v18 = v31;
  *a2 = v30;
  *(a2 + 16) = v18;
  return result;
}

id sub_2755130CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v24[0] = a1;
  v7 = sub_27554D0A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v13 = sub_27554D0B8();

  (*(v8 + 8))(v10, v7);
  sub_27554D218();
  sub_27554C968();
  v26 = 1;
  *&v25[6] = v27;
  *&v25[22] = v28;
  *&v25[38] = v29;
  *&v24[2] = a4;
  v24[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v14 = v24[1];
  sub_27554D268();
  v16 = v15;
  v18 = v17;
  sub_27554D068();
  v19 = sub_27554D058();

  v20 = swift_allocObject();
  *(v20 + 24) = a4;
  v21 = *&v25[16];
  *(a3 + 18) = *v25;
  *(v20 + 16) = v24[0];
  *(v20 + 32) = a2;
  *a3 = v13;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v21;
  *(a3 + 50) = *&v25[32];
  *(a3 + 64) = *&v25[46];
  *(a3 + 72) = v14;
  *(a3 + 80) = v14;
  *(a3 + 88) = v16;
  *(a3 + 96) = v18;
  *(a3 + 104) = v19;
  *(a3 + 112) = xmmword_27554E840;
  *(a3 + 128) = 0x4010000000000000;
  *(a3 + 136) = sub_27551588C;
  *(a3 + 144) = v20;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;

  v22 = v24[0];

  return v22;
}

uint64_t sub_2755133A0(void *a1, uint64_t a2, double a3)
{
  v6 = sub_27554D278();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27554D2A8();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27554D2C8();
  v26 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  sub_2755155D4();
  v24 = sub_27554D4A8();
  sub_27554D2B8();
  sub_27554D2D8();
  v25 = *(v13 + 8);
  v25(v16, v12);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a3;
  *(v19 + 32) = a2;
  aBlock[4] = sub_2755158DC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_65;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2755156A8(&qword_2809F60D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_275515E2C(&qword_2809F60E0, &qword_2809F5168, &unk_2755513C0, MEMORY[0x277D83970]);
  sub_27554D538();
  v22 = v24;
  MEMORY[0x277C7B120](v18, v11, v8, v20);
  _Block_release(v20);

  (*(v29 + 8))(v8, v6);
  (*(v27 + 8))(v11, v28);
  return (v25)(v18, v26);
}

uint64_t sub_27551378C(uint64_t a1, uint64_t a2, double a3)
{
  sub_27554D238();
  sub_27554C9D8();
}

uint64_t sub_275513860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E18, &qword_27554E940);
  sub_275513904();
  return sub_27554CA08();
}

unint64_t sub_275513904()
{
  result = qword_2809F4E20;
  if (!qword_2809F4E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E18, &qword_27554E940);
    sub_2755139D8();
    sub_275513AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E20);
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

unint64_t sub_2755139D8()
{
  result = qword_2809F4E28;
  if (!qword_2809F4E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E30, &qword_27554E948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E38, &qword_27554E950);
    sub_275515E2C(&qword_2809F4E40, &qword_2809F4E38, &qword_27554E950, MEMORY[0x277D24540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E28);
  }

  return result;
}

unint64_t sub_275513AD4()
{
  result = qword_2809F4E48;
  if (!qword_2809F4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E50, &qword_27554E958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E58, &qword_27554E960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E60, &qword_27554E968);
    sub_275513BE0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E48);
  }

  return result;
}

unint64_t sub_275513BE0()
{
  result = qword_2809F4E68;
  if (!qword_2809F4E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E60, &qword_27554E968);
    sub_275515E2C(&qword_2809F4E70, &qword_2809F4E78, &qword_27554E970, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E68);
  }

  return result;
}

__n128 sub_275513C98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5068, &qword_27554EB98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  *v6 = sub_27554CBE8();
  *(v6 + 1) = 0x4028000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5098, &qword_27554EBA8);
  sub_275513DF8(a1, &v6[*(v7 + 44)]);
  sub_27554D218();
  sub_27554CA48();
  sub_2755151DC(v6, a2, &qword_2809F5068, &qword_27554EB98);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5050, &qword_27554EB90) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_275513DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5028, &qword_27554EB38);
  MEMORY[0x28223BE20](v4);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5000, &unk_27554EAF0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v34 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  if (v33 == 1)
  {
    sub_27554C958();
    v10 = &v9[*(v7 + 36)];
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
    v12 = *MEMORY[0x277CDF440];
    v13 = sub_27554C908();
    (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
    *v10 = swift_getKeyPath();
    sub_275514D40(v9, v6, &qword_2809F5000, &unk_27554EAF0);
    swift_storeEnumTagMultiPayload();
    sub_275514E9C();
    sub_27554CC68();
    return sub_275514DA8(v9, &qword_2809F5000, &unk_27554EAF0);
  }

  else
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    *&v34 = 2777980912;
    *(&v34 + 1) = 0xA400000000000000;
    MEMORY[0x277C7B050](1162760004, 0xE400000000000000);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v17 = sub_27554C588();
    v32[2] = a2;
    v19 = v18;

    *&v34 = v17;
    *(&v34 + 1) = v19;
    sub_275514CC4();
    v20 = sub_27554CED8();
    v22 = v21;
    LOBYTE(v17) = v23;
    sub_27554CDD8();
    v24 = sub_27554CE18();
    v32[1] = v7;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_275514D18(v20, v22, v17 & 1);

    *v6 = v25;
    *(v6 + 1) = v27;
    v6[16] = v29 & 1;
    *(v6 + 3) = v31;
    swift_storeEnumTagMultiPayload();
    sub_275514E9C();
    return sub_27554CC68();
  }
}

uint64_t sub_275514188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5028, &qword_27554EB38);
  MEMORY[0x28223BE20](v2);
  v4 = &v21[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5000, &unk_27554EAF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21[-v6];
  v22 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  if (v21[15] == 1)
  {
    sub_27554C958();
    v8 = &v7[*(v5 + 36)];
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
    v10 = *MEMORY[0x277CDF440];
    v11 = sub_27554C908();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    *v8 = swift_getKeyPath();
    sub_275514D40(v7, v4, &qword_2809F5000, &unk_27554EAF0);
    swift_storeEnumTagMultiPayload();
    sub_275514E9C();
    sub_27554CC68();
    return sub_275514DA8(v7, &qword_2809F5000, &unk_27554EAF0);
  }

  else
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    *&v22 = 2777980912;
    *(&v22 + 1) = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4D5F54524F504D49, 0xEB000000004C4941);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v15 = sub_27554C588();
    v17 = v16;

    *&v22 = v15;
    *(&v22 + 1) = v17;
    sub_275514CC4();
    *v4 = sub_27554CED8();
    *(v4 + 1) = v18;
    v4[16] = v19 & 1;
    *(v4 + 3) = v20;
    swift_storeEnumTagMultiPayload();
    sub_275514E9C();
    return sub_27554CC68();
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

unint64_t sub_275514570()
{
  result = qword_2809F4EB8;
  if (!qword_2809F4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EB8);
  }

  return result;
}

unint64_t sub_2755145C4()
{
  result = qword_2809F4EC0;
  if (!qword_2809F4EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4EB0, &qword_27554E9A8);
    sub_27551467C();
    sub_275515E2C(&qword_2809F4F88, &qword_2809F4F90, &qword_27554EA10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EC0);
  }

  return result;
}

unint64_t sub_27551467C()
{
  result = qword_2809F4EC8;
  if (!qword_2809F4EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4ED0, &qword_27554E9B0);
    sub_275514734();
    sub_275515E2C(&qword_2809F4F78, &qword_2809F4F80, &qword_27554EA08, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EC8);
  }

  return result;
}

unint64_t sub_275514734()
{
  result = qword_2809F4ED8;
  if (!qword_2809F4ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4EE0, &qword_27554E9B8);
    sub_2755147C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4ED8);
  }

  return result;
}

unint64_t sub_2755147C4()
{
  result = qword_2809F4EE8;
  if (!qword_2809F4EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4EF0, &qword_27554E9C0);
    sub_27551487C();
    sub_275515E2C(&qword_2809F4F68, &qword_2809F4F70, &qword_27554EA00, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EE8);
  }

  return result;
}

unint64_t sub_27551487C()
{
  result = qword_2809F4EF8;
  if (!qword_2809F4EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4F00, &qword_27554E9C8);
    sub_275514934();
    sub_275515E2C(&qword_2809F4F58, &qword_2809F4F60, &qword_275550FD0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EF8);
  }

  return result;
}

unint64_t sub_275514934()
{
  result = qword_2809F4F08;
  if (!qword_2809F4F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4F10, &qword_27554E9D0);
    sub_2755149EC();
    sub_275515E2C(&qword_2809F4F48, &qword_2809F4F50, &unk_27554E9F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4F08);
  }

  return result;
}

unint64_t sub_2755149EC()
{
  result = qword_2809F4F18;
  if (!qword_2809F4F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4F20, &qword_27554E9D8);
    sub_275515E2C(&qword_2809F4F28, &qword_2809F4F30, &qword_27554E9E0, MEMORY[0x277CE1198]);
    sub_275515E2C(&qword_2809F4F38, &qword_2809F4F40, &qword_27554E9E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4F18);
  }

  return result;
}

uint64_t sub_275514B1C(uint64_t a1)
{
  v2 = sub_27554C908();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x277C7A720](v4);
}

uint64_t sub_275514C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4F98, &qword_27554EA48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_275514D40(a1, &v6 - v3, &qword_2809F4F98, &qword_27554EA48);
  return MEMORY[0x277C7A780](v4);
}

unint64_t sub_275514CC4()
{
  result = qword_2809F4FA0;
  if (!qword_2809F4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4FA0);
  }

  return result;
}

uint64_t sub_275514D18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_275514D28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_275514D40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_275514DA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_275514E10()
{
  result = qword_2809F4FF0;
  if (!qword_2809F4FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4FE8, &qword_27554EAE8);
    sub_275514E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4FF0);
  }

  return result;
}

unint64_t sub_275514E9C()
{
  result = qword_2809F4FF8;
  if (!qword_2809F4FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5000, &unk_27554EAF0);
    sub_275515E2C(&qword_2809F5008, &qword_2809F5010, &qword_275551190, MEMORY[0x277CDD7F8]);
    sub_275515E2C(&qword_2809F5018, &qword_2809F5020, &qword_27554EB00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4FF8);
  }

  return result;
}

unint64_t sub_275514FD0()
{
  result = qword_2809F5058;
  if (!qword_2809F5058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5050, &qword_27554EB90);
    sub_275515E2C(&qword_2809F5060, &qword_2809F5068, &qword_27554EB98, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5058);
  }

  return result;
}

unint64_t sub_275515088()
{
  result = qword_2809F5070;
  if (!qword_2809F5070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5038, &qword_27554EB78);
    sub_275515E2C(&qword_2809F5078, &qword_2809F5030, &qword_27554EB70, MEMORY[0x277CDF028]);
    sub_275515E2C(&qword_2809F5080, &qword_2809F5088, &qword_27554EBA0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5070);
  }

  return result;
}

uint64_t sub_27551516C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5048, &qword_27554EB88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755151DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_27551524C()
{
  result = qword_2809F50C8;
  if (!qword_2809F50C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F50B8, &unk_275551670);
    sub_275515A00(&qword_2809F50D0, &qword_2809F50D8, &unk_275551680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F50C8);
  }

  return result;
}

unint64_t sub_2755152F8()
{
  result = qword_2809F50E0;
  if (!qword_2809F50E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F50C0, &unk_27554EC00);
    sub_275515384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F50E0);
  }

  return result;
}

unint64_t sub_275515384()
{
  result = qword_2809F50E8;
  if (!qword_2809F50E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F50F0, &unk_27554EC10);
    sub_27551543C();
    sub_275515E2C(&qword_2809F5138, &qword_2809F5140, &qword_275551660, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F50E8);
  }

  return result;
}

unint64_t sub_27551543C()
{
  result = qword_2809F50F8;
  if (!qword_2809F50F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5100, &unk_275551690);
    sub_2755154F4();
    sub_275515E2C(&qword_2809F5128, &qword_2809F5130, &unk_27554EC30, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F50F8);
  }

  return result;
}

unint64_t sub_2755154F4()
{
  result = qword_2809F5108;
  if (!qword_2809F5108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5110, &unk_27554EC20);
    sub_275515A00(&qword_2809F50D0, &qword_2809F50D8, &unk_275551680);
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5108);
  }

  return result;
}

unint64_t sub_2755155D4()
{
  result = qword_2809F5160;
  if (!qword_2809F5160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F5160);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2755156A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_275515768(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2755157C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_275515954()
{
  result = qword_2809F51A0;
  if (!qword_2809F51A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5190, &qword_27554ED10);
    sub_275515A00(&qword_2809F51A8, &qword_2809F51B0, &qword_27554ED20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51A0);
  }

  return result;
}

uint64_t sub_275515A00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275515A70()
{
  result = qword_2809F51B8;
  if (!qword_2809F51B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5198, &qword_27554ED18);
    sub_275515AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51B8);
  }

  return result;
}

unint64_t sub_275515AFC()
{
  result = qword_2809F51C0;
  if (!qword_2809F51C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F51C8, &qword_27554ED28);
    sub_275515BB4();
    sub_275515E2C(&qword_2809F5138, &qword_2809F5140, &qword_275551660, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51C0);
  }

  return result;
}

unint64_t sub_275515BB4()
{
  result = qword_2809F51D0;
  if (!qword_2809F51D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F51D8, &qword_27554ED30);
    sub_275515C6C();
    sub_275515E2C(&qword_2809F5128, &qword_2809F5130, &unk_27554EC30, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51D0);
  }

  return result;
}

unint64_t sub_275515C6C()
{
  result = qword_2809F51E0;
  if (!qword_2809F51E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F51E8, &qword_27554ED38);
    sub_275515A00(&qword_2809F51A8, &qword_2809F51B0, &qword_27554ED20);
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51E0);
  }

  return result;
}

unint64_t sub_275515D48()
{
  result = qword_2809F51F0;
  if (!qword_2809F51F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F51F8, &qword_27554ED40);
    sub_275515E2C(&qword_2809F5200, &qword_2809F5208, &qword_27554ED48, MEMORY[0x277CE11A8]);
    sub_275515E2C(&qword_2809F5210, &qword_2809F5188, &qword_27554ED08, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51F0);
  }

  return result;
}

uint64_t sub_275515E2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_275515ED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_275515F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_275515F98@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_27554CD28();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5218, &qword_27554EE08);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-v9];
  v18 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5220, &qword_27554EE10);
  sub_275516880();
  sub_27554D118();
  sub_27554CD18();
  sub_275515E2C(&qword_2809F5250, &qword_2809F5218, &qword_27554EE08, MEMORY[0x277CDF028]);
  sub_275516A60();
  sub_27554CF18();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5258, &qword_27554EE30) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
  v13 = *MEMORY[0x277CDF420];
  v14 = sub_27554C908();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  LOBYTE(v13) = sub_27554CD58();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5260, &qword_27554EE68) + 36);
  *v15 = v13;
  result = 0.0;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  return result;
}

uint64_t sub_27551628C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5268, &qword_27554EE70);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v39 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5270, &qword_27554EE78);
  MEMORY[0x28223BE20](v39);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5000, &unk_27554EAF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5238, &unk_27554EE18);
  v11 = MEMORY[0x28223BE20](v40);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v52 = *a1;
  LOBYTE(v53) = *(a1 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5278, qword_27554EE80);
  MEMORY[0x277C7AE00](&v43, v16);
  if (v43 == 1)
  {
    sub_27554C958();
    v17 = &v10[*(v8 + 36)];
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
    v19 = *MEMORY[0x277CDF440];
    v20 = sub_27554C908();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = swift_getKeyPath();
    sub_27554D218();
    sub_27554CA48();
    sub_2755151DC(v10, v13, &qword_2809F5000, &unk_27554EAF0);
    v21 = &v13[*(v40 + 36)];
    v22 = v57;
    *(v21 + 4) = v56;
    *(v21 + 5) = v22;
    *(v21 + 6) = v58;
    v23 = v53;
    *v21 = v52;
    *(v21 + 1) = v23;
    v24 = v55;
    *(v21 + 2) = v54;
    *(v21 + 3) = v24;
    sub_2755151DC(v13, v15, &qword_2809F5238, &unk_27554EE18);
    sub_275516AC0(v15, v7);
    swift_storeEnumTagMultiPayload();
    sub_275516950();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5240, &qword_27554EE28);
    v26 = sub_2755169DC();
    *&v43 = v25;
    *(&v43 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    sub_27554CC68();
    return sub_275514DA8(v15, &qword_2809F5238, &unk_27554EE18);
  }

  else
  {
    v28 = *(a1 + 6);
    *&v52 = *(a1 + 5);
    *(&v52 + 1) = v28;
    sub_275514CC4();

    v29 = sub_27554CED8();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_27554D218();
    sub_27554CA48();
    v61 = v33 & 1;
    *&v43 = v29;
    *(&v43 + 1) = v31;
    LOBYTE(v44) = v33 & 1;
    *(&v44 + 1) = v35;
    sub_27554CDD8();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5240, &qword_27554EE28);
    v37 = sub_2755169DC();
    sub_27554CF08();
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v52 = v43;
    v53 = v44;
    sub_275514DA8(&v52, &qword_2809F5240, &qword_27554EE28);
    v38 = v42;
    (*(v3 + 16))(v7, v5, v42);
    swift_storeEnumTagMultiPayload();
    sub_275516950();
    *&v43 = v36;
    *(&v43 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_27554CC68();
    return (*(v3 + 8))(v5, v38);
  }
}

unint64_t sub_275516880()
{
  result = qword_2809F5228;
  if (!qword_2809F5228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5220, &qword_27554EE10);
    sub_275516950();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5240, &qword_27554EE28);
    sub_2755169DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5228);
  }

  return result;
}

unint64_t sub_275516950()
{
  result = qword_2809F5230;
  if (!qword_2809F5230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5238, &unk_27554EE18);
    sub_275514E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5230);
  }

  return result;
}

unint64_t sub_2755169DC()
{
  result = qword_2809F5248;
  if (!qword_2809F5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5240, &qword_27554EE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5248);
  }

  return result;
}

unint64_t sub_275516A60()
{
  result = qword_2809F5090;
  if (!qword_2809F5090)
  {
    sub_27554CD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5090);
  }

  return result;
}

uint64_t sub_275516AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5238, &unk_27554EE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_275516B34()
{
  result = qword_2809F5280;
  if (!qword_2809F5280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5260, &qword_27554EE68);
    sub_275516BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5280);
  }

  return result;
}

unint64_t sub_275516BC0()
{
  result = qword_2809F5288;
  if (!qword_2809F5288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5258, &qword_27554EE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5218, &qword_27554EE08);
    sub_27554CD28();
    sub_275515E2C(&qword_2809F5250, &qword_2809F5218, &qword_27554EE08, MEMORY[0x277CDF028]);
    sub_275516A60();
    swift_getOpaqueTypeConformance2();
    sub_275515E2C(&qword_2809F5018, &qword_2809F5020, &qword_27554EB00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5288);
  }

  return result;
}

uint64_t sub_275516D08()
{
  if (qword_2809F4D70 != -1)
  {
    swift_once();
  }

  v0 = qword_2809F8D58;
  v1 = qword_2809F8D58;
  return v0;
}

unint64_t sub_275516D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DA8, &unk_27554E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = 4804673;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_27554D328();
  *(inited + 56) = 0x6874654D70747468;
  *(inited + 64) = 0xEA0000000000646FLL;
  *(inited + 72) = sub_27554D328();
  v1 = sub_2755462BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DB0, &qword_27554EF40);
  swift_arrayDestroy();
  return v1;
}

id sub_275516E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmailCreateAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmailCreateAPIRequest(uint64_t a1)
{
  result = qword_2809F5290;
  if (!qword_2809F5290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275516EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F52C8, &qword_27554F0C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551771C();
  sub_27554D728();
  v14 = 0;
  sub_27554D658();
  if (!v5)
  {
    v13 = 1;
    sub_27554D658();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2755170AC()
{
  v1 = *v0;
  sub_27554D6E8();
  MEMORY[0x277C7B3B0](v1);
  return sub_27554D708();
}

uint64_t sub_275517120(uint64_t a1)
{
  v2 = *v1;
  sub_27554D6E8();
  MEMORY[0x277C7B3B0](v2);
  return sub_27554D708();
}

uint64_t sub_275517164()
{
  if (*v0)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x496E726574746170;
  }
}

uint64_t sub_2755171A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E726574746170 && a2 == 0xE900000000000064;
  if (v6 || (sub_27554D678() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27554D678();

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

uint64_t sub_27551728C(uint64_t a1)
{
  v2 = sub_27551771C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2755172C8(uint64_t a1)
{
  v2 = sub_27551771C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275517324(uint64_t a1)
{
  v2 = sub_275517518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275517360(uint64_t a1)
{
  v2 = sub_275517518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27551739C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F52A0, &unk_27554EF30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275517518();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_27554D628();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

unint64_t sub_275517518()
{
  result = qword_2809F52A8;
  if (!qword_2809F52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52A8);
  }

  return result;
}

uint64_t sub_27551756C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2755175B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_275517618()
{
  result = qword_2809F52B0;
  if (!qword_2809F52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52B0);
  }

  return result;
}

unint64_t sub_275517670()
{
  result = qword_2809F52B8;
  if (!qword_2809F52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52B8);
  }

  return result;
}

unint64_t sub_2755176C8()
{
  result = qword_2809F52C0;
  if (!qword_2809F52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52C0);
  }

  return result;
}

unint64_t sub_27551771C()
{
  result = qword_2809F52D0;
  if (!qword_2809F52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmailCreateAPIRequestBody.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_275517828()
{
  result = qword_2809F52D8;
  if (!qword_2809F52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52D8);
  }

  return result;
}

unint64_t sub_275517880()
{
  result = qword_2809F52E0;
  if (!qword_2809F52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52E0);
  }

  return result;
}

unint64_t sub_2755178D8()
{
  result = qword_2809F52E8;
  if (!qword_2809F52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52E8);
  }

  return result;
}

uint64_t sub_27551792C()
{
  if (qword_2809F4D70 != -1)
  {
    swift_once();
  }

  v0 = qword_2809F8D58;
  v1 = qword_2809F8D58;
  return v0;
}

id sub_2755179A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudMailValidationRulesAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for iCloudMailValidationRulesAPIRequest(uint64_t a1)
{
  result = qword_2809F52F0;
  if (!qword_2809F52F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_275517A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_275517A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275517B20()
{
  v1 = *v0;
  v2 = 1701606770;
  v3 = 0x646F43726F727265;
  v4 = 0x73654D726F727265;
  if (v1 != 3)
  {
    v4 = 0x614D646C756F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74697243656C7572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_275517BD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_275517E0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_275517C04(uint64_t a1)
{
  v2 = sub_275518388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275517C40(uint64_t a1)
{
  v2 = sub_275518388();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_275517C7C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_275517FD0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_275517CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27554D678();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_275517D68(uint64_t a1)
{
  v2 = sub_2755185C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275517DA4(uint64_t a1)
{
  v2 = sub_2755185C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_275517DE0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_275518444(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_275517E0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_27554D678() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74697243656C7572 && a2 == 0xEC00000061697265 || (sub_27554D678() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_27554D678() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_27554D678() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614D646C756F6873 && a2 == 0xEB00000000686374)
  {

    return 4;
  }

  else
  {
    v6 = sub_27554D678();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_275517FD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5300, &qword_27554F308);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275518388();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_27554D628();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_27554D628();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_27554D628();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_27554D628();
  v27 = v14;
  v39 = 4;
  v15 = sub_27554D638();
  (*(v6 + 8))(v8, v5);
  v38 = v15 & 1;
  v17 = v29;
  v16 = v30;
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v26;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  v35 = v38;
  sub_2755183DC(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v9;
  v36[1] = v16;
  v36[2] = v18;
  v36[3] = v17;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v37 = v38;
  result = sub_275518414(v36);
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  *(a2 + 64) = v35;
  v23 = v32;
  *a2 = v31;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_275518388()
{
  result = qword_2809F5308;
  if (!qword_2809F5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5308);
  }

  return result;
}

void *sub_275518444(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5310, &qword_27554F310);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2755185C8();
  sub_27554D718();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5320, &qword_27554F318);
    sub_27551861C();
    sub_27554D648();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_2755185C8()
{
  result = qword_2809F5318;
  if (!qword_2809F5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5318);
  }

  return result;
}

unint64_t sub_27551861C()
{
  result = qword_2809F5328;
  if (!qword_2809F5328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5320, &qword_27554F318);
    sub_2755186A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5328);
  }

  return result;
}

unint64_t sub_2755186A0()
{
  result = qword_2809F5330;
  if (!qword_2809F5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValidationRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ValidationRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_275518860()
{
  result = qword_2809F5338;
  if (!qword_2809F5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5338);
  }

  return result;
}

unint64_t sub_2755188B8()
{
  result = qword_2809F5340;
  if (!qword_2809F5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5340);
  }

  return result;
}

unint64_t sub_275518910()
{
  result = qword_2809F5348;
  if (!qword_2809F5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5348);
  }

  return result;
}

unint64_t sub_275518968()
{
  result = qword_2809F5350;
  if (!qword_2809F5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5350);
  }

  return result;
}

unint64_t sub_2755189C0()
{
  result = qword_2809F5358;
  if (!qword_2809F5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5358);
  }

  return result;
}

unint64_t sub_275518A18()
{
  result = qword_2809F5360;
  if (!qword_2809F5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5360);
  }

  return result;
}

uint64_t sub_275518A6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000024;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (v3)
    {
      v4 = "gs.Alias.Enabled";
    }

    else
    {
      v4 = "com.apple.gs.icloud.mail.auth";
    }
  }

  else if (a1 == 2)
  {
    v4 = "gs.AutoReply.Enabled";
    v5 = 0xD000000000000024;
  }

  else if (a1 == 3)
  {
    v4 = "gs.MailRules.Enabled";
    v5 = 0xD000000000000029;
  }

  else
  {
    v4 = "gs.MailForwarding.Enabled";
    v5 = 0xD000000000000025;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = "gs.Alias.Enabled";
    }

    else
    {
      v2 = 0xD000000000000020;
      v6 = "com.apple.gs.icloud.mail.auth";
    }
  }

  else if (a2 == 2)
  {
    v6 = "gs.AutoReply.Enabled";
  }

  else if (a2 == 3)
  {
    v6 = "gs.MailRules.Enabled";
    v2 = 0xD000000000000029;
  }

  else
  {
    v6 = "gs.MailForwarding.Enabled";
    v2 = 0xD000000000000025;
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27554D678();
  }

  return v7 & 1;
}

uint64_t sub_275518BDC()
{
  sub_27554D6E8();
  sub_27554D378();

  return sub_27554D708();
}

uint64_t sub_275518CA8(uint64_t a1)
{
  sub_27554D378();
}

uint64_t sub_275518D60(uint64_t a1)
{
  sub_27554D6E8();
  sub_27554D378();

  return sub_27554D708();
}

unint64_t sub_275518E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275518F84(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_275518E58(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000024;
  v3 = *v1;
  v4 = "gs.AutoReply.Enabled";
  v5 = "gs.MailRules.Enabled";
  v6 = 0xD000000000000029;
  if (v3 != 3)
  {
    v6 = 0xD000000000000025;
    v5 = "gs.MailForwarding.Enabled";
  }

  if (v3 == 2)
  {
    v6 = 0xD000000000000024;
  }

  else
  {
    v4 = v5;
  }

  if (*v1)
  {
    v7 = "gs.Alias.Enabled";
  }

  else
  {
    v2 = 0xD000000000000020;
    v7 = "com.apple.gs.icloud.mail.auth";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v2 = v6;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t sub_275518EE4()
{
  result = sub_27554D328();
  qword_2809F8D58 = result;
  return result;
}

unint64_t sub_275518F30()
{
  result = qword_2809F5368;
  if (!qword_2809F5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5368);
  }

  return result;
}

unint64_t sub_275518F84(uint64_t a1, uint64_t a2)
{
  v2 = sub_27554D618();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_27551905C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = qword_2809F5380;
  swift_beginAccess();
  type metadata accessor for MSRequest.RequestBody(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  v7 = sub_27554D508();
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}

id sub_275519130()
{
  v1 = *(v0 + qword_2809F5370);
  if (v1)
  {
    v2 = *(v0 + qword_2809F5370);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = *(v0 + qword_2809F5370);
  *(v0 + qword_2809F5370) = v4;

  result = [v3 defaultStore];
  if (result)
  {
    v2 = result;
    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_2755191CC()
{
  v1 = qword_2809F53A0;
  v2 = *(v0 + qword_2809F53A0);
  if (v2)
  {
    v3 = *(v0 + qword_2809F53A0);
  }

  else
  {
    sub_275519828(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_275519238(unsigned __int8 a1)
{
  v1 = 5522759;
  v2 = 5526864;
  if (a1 != 2)
  {
    v2 = 0x4554454C4544;
  }

  if (a1)
  {
    v1 = 1414745936;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_275519298()
{
  v1 = sub_27554C778();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v3);
  v8 = v7;
  v10 = v9;
  v11 = [*(v0 + qword_2809F5378) propertiesForDataclass_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_27554D2F8();

    v30 = v8;
    v31 = v10;

    sub_27554D568();
    if (*(v13 + 16) && (v14 = sub_27552E2F0(v32), (v15 & 1) != 0))
    {
      sub_27551E914(*(v13 + 56) + 32 * v14, v33);
      sub_27551EA74(v32);

      if (swift_dynamicCast())
      {

        return v30;
      }
    }

    else
    {

      sub_27551EA74(v32);
    }
  }

  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_2809F8DA8);
  (*(v2 + 16))(v5, v17, v1);
  v18 = v6;

  v19 = sub_27554C758();
  v20 = sub_27554D438();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = v1;
    v22 = v2;
    v23 = v21;
    v24 = swift_slowAlloc();
    v32[0] = v24;
    *v23 = 136315394;

    v25 = sub_275545D14(v8, v10, v32);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    v26 = sub_27554D338();
    v28 = sub_275545D14(v26, v27, v32);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_27550C000, v19, v20, "Account bag has no value for key: %s in %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v24, -1, -1);
    MEMORY[0x277C7BAC0](v23, -1, -1);

    (*(v22 + 8))(v5, v29);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  return 0;
}

id sub_275519660(void *a1)
{
  v1 = a1;
  sub_275519298();

  v2 = sub_27554D328();

  return v2;
}

uint64_t sub_275519730(uint64_t a1)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_275519724(ObjCClassMetadata, v2, v3, v4);

  return swift_getObjCClassFromMetadata();
}

void sub_275519828(uint64_t a1)
{
  v2 = sub_275519130();
  v3 = sub_275519130();
  v4 = [v3 aida:*(a1 + qword_2809F5378) accountForiCloudAccount:?];

  v5 = objc_allocWithZone(MEMORY[0x277CEC808]);
  v6 = sub_27554D328();
  v7 = [v5 initWithAccountStore:v2 grandSlamAccount:v4 appTokenID:v6];

  if (!v7)
  {
    __break(1u);
  }
}

id sub_2755198F0(void *a1)
{
  v2 = sub_27554C4D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_2755199E8(v5);

  v7 = sub_27554C498();
  (*(v3 + 8))(v5, v2);

  return v7;
}

void sub_2755199E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = sub_27554C778();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v48[-v10];
  v12 = *((v5 & v3) + 0x50);
  v13 = *((v5 & v3) + 0x58);
  v15 = type metadata accessor for MSRequest(0, v12, v13, v14);
  v59.receiver = v2;
  v59.super_class = v15;
  v16 = objc_msgSendSuper2(&v59, sel_urlRequest);
  if (v16)
  {
    v17 = v16;
    [v16 mutableCopy];

    sub_27554D528();
    swift_unknownObjectRelease();
    sub_27551EA14(0, &qword_2809F5638, 0x277CCAB70);
    v18 = swift_dynamicCast();
    v19 = v55;
    if ((*((*v4 & *v2) + 0x100))(v18))
    {
      v20 = sub_2755191CC();
      [v20 setUseAltDSID_];

      if (([*(v2 + qword_2809F53A0) signURLRequest:v19 isUserInitiated:1] & 1) == 0)
      {
        if (qword_2809F4D80 != -1)
        {
          swift_once();
        }

        v21 = __swift_project_value_buffer(v6, qword_2809F8DA8);
        (*(v7 + 16))(v11, v21, v6);
        v22 = sub_27554C758();
        v23 = sub_27554D438();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v49 = v6;
          v25 = v24;
          *v24 = 0;
          _os_log_impl(&dword_27550C000, v22, v23, "Unable to sign grandslam request", v24, 2u);
          v26 = v25;
          v6 = v49;
          MEMORY[0x277C7BAC0](v26, -1, -1);
        }

        (*(v7 + 8))(v11, v6);
      }

      v27 = [v19 aa:*(v2 + qword_2809F5378) addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
    }

    else
    {
      v27 = [v19 aa:*(v2 + qword_2809F5378) addAuthTokenOrBasicAuthHeaderWithAccount:0 preferUsingPassword:?];
    }

    (*((*v4 & *v2) + 0xF8))(v27);
    v28 = sub_27554D328();

    [v19 setHTTPMethod_];

    sub_27551905C(&v55);
    if (v56[24] == 255)
    {
      type metadata accessor for MSRequest.RequestBody(255, v12, v13, v29);
      v34 = sub_27554D508();
      (*(*(v34 - 8) + 8))(&v55, v34);
    }

    else
    {
      v57 = v55;
      v58[0] = *v56;
      *(v58 + 9) = *&v56[9];
      v30 = type metadata accessor for MSRequest.RequestBody(0, v12, v13, v29);
      v31 = *(v30 - 8);
      (*(v31 + 16))(&v55, &v57, v30);
      if (v56[24])
      {
        v32 = v55;
        v33 = sub_27554C608();
        [v19 setHTTPBody_];
        sub_27551E6AC(v32, *(&v32 + 1));

        (*(v31 + 8))(&v57, v30);
      }

      else
      {
        sub_27551EA5C(&v55, v52);
        v35 = v53;
        v36 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        v37 = sub_27551A320(v35, v36);
        v39 = v38;
        v40 = sub_27554C608();
        sub_27551E6AC(v37, v39);
        [v19 setHTTPBody_];

        (*(v31 + 8))(&v57, v30);
        __swift_destroy_boxed_opaque_existential_1(v52);
      }
    }

    v41 = sub_27554D328();
    v42 = sub_27554D328();
    [v19 setValue:v41 forHTTPHeaderField:v42];

    v43 = [objc_allocWithZone(MEMORY[0x277CEC7B8]) init];
    v44 = [v43 udid];

    v45 = sub_27554D328();
    [v19 setValue:v44 forHTTPHeaderField:v45];

    v46 = sub_27554D328();

    v47 = sub_27554D328();
    [v19 setValue:v46 forHTTPHeaderField:v47];

    sub_27554C4A8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_27551A320(uint64_t a1, uint64_t a2)
{
  sub_27554C538();
  swift_allocObject();
  sub_27554C528();
  v2 = sub_27554C518();

  return v2;
}

uint64_t sub_27551A424(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];

  v4 = qword_2809F5380;
  type metadata accessor for MSRequest.RequestBody(255, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v5);
  v6 = sub_27554D508();
  (*(*(v6 - 8) + 8))(&a1[v4], v6);
}

uint64_t sub_27551A53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MSResult(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27551A5D0@<X0>(uint64_t *a1@<X0>, id a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v94 = a3;
  v84 = sub_27554C5F8();
  v83 = *(v84 - 8);
  v8 = MEMORY[0x28223BE20](v84);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4;
  v95 = v4[10];
  v81 = *(v95 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_27554C778();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v80 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - v21;
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v88 = v12;
  v23 = __swift_project_value_buffer(v13, qword_2809F8DA8);
  v24 = *(v14 + 2);
  v90 = v23;
  v91 = v24;
  v92 = v14 + 16;
  (v24)(v22);
  v25 = sub_27554C758();
  v26 = sub_27554D458();
  v27 = os_log_type_enabled(v25, v26);
  v93 = a4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v85 = v10;
    v30 = v29;
    v96 = v29;
    *v28 = 136315138;
    v31 = sub_27554D758();
    v89 = a2;
    v33 = v13;
    v34 = sub_275545D14(v31, v32, &v96);
    a2 = v89;

    *(v28 + 4) = v34;
    v13 = v33;
    _os_log_impl(&dword_27550C000, v25, v26, "Parsing response %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v35 = v30;
    a4 = v93;
    v10 = v85;
    MEMORY[0x277C7BAC0](v35, -1, -1);
    MEMORY[0x277C7BAC0](v28, -1, -1);
  }

  v36 = *(v14 + 1);
  v36(v22, v13);
  if (!swift_conformsToProtocol2())
  {
    v85 = a1;
    sub_27554C508();
    swift_allocObject();
    sub_27554C4F8();
    v43 = v10[11];
    v44 = v88;
    v45 = a2;
    v46 = v94;
    sub_27554C4E8();
    v89 = 0;

    v74 = v95;
    v75 = (v93 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v81 + 4))(v93, v44, v74);
    *v75 = v45;
    v75[1] = v46;
    type metadata accessor for MSResult(0, v74, v43, v76);
    swift_storeEnumTagMultiPayload();
    v41 = v45;
    v42 = v46;
    return sub_27551E864(v41, v42);
  }

  if ([a1 statusCode] - 200 <= 0x63)
  {
    v37 = v95;
    v38 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    swift_dynamicCast();
    v39 = v94;
    *v38 = a2;
    v38[1] = v39;
    type metadata accessor for MSResult(0, v37, v10[11], v40);
    swift_storeEnumTagMultiPayload();
    v41 = a2;
    v42 = v39;
    return sub_27551E864(v41, v42);
  }

  v81 = v36;
  v88 = v14;
  v47 = v13;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = [objc_opt_self() bundleForClass_];
  v96 = 2777980912;
  v97 = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000015, 0x8000000275551BE0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v50 = sub_27554C588();
  v52 = v51;

  sub_27551CB54();
  v53 = swift_allocError();
  *v54 = v50;
  *(v54 + 8) = v52;
  *(v54 + 16) = 0;
  *(v54 + 24) = 1;
  *(v54 + 32) = 0;
  *(v54 + 40) = 1;
  v89 = v53;
  swift_willThrow();
  v55 = [a1 allHeaderFields];
  v56 = sub_27554D2F8();

  sub_27551B640(v56);

  sub_27554C508();
  swift_allocObject();
  sub_27554C4F8();
  sub_27551E700();
  sub_27554C4E8();

  v58 = v96;
  v57 = v97;
  v59 = v82;
  v60 = v47;
  v91(v82, v90, v47);
  v61 = a1;

  v62 = sub_27554C758();
  v63 = sub_27554D438();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v85 = v10;
    v65 = a4;
    v66 = v64;
    v67 = swift_slowAlloc();
    v96 = v67;
    *v66 = 134218242;
    *(v66 + 4) = [v61 statusCode];

    *(v66 + 12) = 2080;

    v68 = sub_275545D14(v58, v57, &v96);
    *&v94 = v58;
    v69 = v60;
    v70 = v68;

    *(v66 + 14) = v70;
    _os_log_impl(&dword_27550C000, v62, v63, "[%ld] %s", v66, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x277C7BAC0](v67, -1, -1);
    v71 = v66;
    a4 = v65;
    v10 = v85;
    MEMORY[0x277C7BAC0](v71, -1, -1);

    v72 = v59;
    v73 = v69;
    v58 = v94;
  }

  else
  {

    v72 = v59;
    v73 = v60;
  }

  v81(v72, v73);
  v78 = [v61 statusCode];

  *a4 = v58;
  *(a4 + 8) = v57;
  *(a4 + 16) = v78;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  type metadata accessor for MSResult(0, v95, v10[11], v79);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_27551B640(uint64_t a1)
{
  v35 = sub_27554C778();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &unk_27554F960;
  while (1)
  {
    v10 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_27551E8B8(*(a1 + 48) + 40 * v11, v43);
    sub_27551E914(*(a1 + 56) + 32 * v11, v44);
    sub_27551E8B8(v43, &v36);
    if (swift_dynamicCast())
    {
      v40 = v39;
      sub_27551E914(v44, &v41);
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
    }

    v5 &= v5 - 1;
    sub_275514DA8(v43, &qword_2809F5608, &qword_27554F958);
    if (*(&v40 + 1))
    {
      v36 = v40;
      v37 = v41;
      v38 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_27551D090(0, v8[2] + 1, 1, v8);
      }

      v13 = v8[2];
      v12 = v8[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v32 = v13 + 1;
        v18 = sub_27551D090((v12 > 1), v13 + 1, 1, v8);
        v14 = v32;
        v8 = v18;
      }

      v8[2] = v14;
      v15 = &v8[6 * v13];
      v16 = v36;
      v17 = v38;
      v15[3] = v37;
      v15[4] = v17;
      v15[2] = v16;
    }

    else
    {
      sub_275514DA8(&v40, &qword_2809F5610, &unk_27554F960);
    }
  }

  while (1)
  {
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_22;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v10;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
    v19 = sub_27554D608();
  }

  else
  {
    v19 = MEMORY[0x277D84F98];
  }

  a1 = v35;
  v6 = v34;
  v9 = v33;
  v43[0] = v19;

  sub_27551D1D8(v20, 1, v43);

  sub_27551D594(v43[0]);

  if (qword_2809F4D80 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v21 = __swift_project_value_buffer(a1, qword_2809F8DA8);
  (*(v6 + 16))(v9, v21, a1);

  v22 = sub_27554C758();
  v23 = sub_27554D438();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43[0] = v25;
    *v24 = 136380675;
    v26 = sub_27554D308();
    v28 = v27;

    v29 = sub_275545D14(v26, v28, v43);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_27550C000, v22, v23, "Response headers: %{private}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x277C7BAC0](v25, -1, -1);
    MEMORY[0x277C7BAC0](v24, -1, -1);
  }

  else
  {
  }

  return (*(v6 + 8))(v9, a1);
}

uint64_t sub_27551BB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_27554D3A8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_27554D3A8();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_27554D678();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_27554D3A8();
      v7 = v9;
    }

    while (v9);
  }

  sub_27554D3A8();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_27551BCA4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = sub_27554C618();
  v11 = v10;

  sub_27551DF28(v7, v9, v11, v5);
  v13 = v12;
  sub_27551E6AC(v9, v11);

  return v13;
}

uint64_t sub_27551BD38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = sub_27554C618();
  v9 = v8;

  sub_27551E0F8(v5, v7, v9);
  v11 = v10;
  sub_27551E6AC(v7, v9);

  return v11;
}

uint64_t sub_27551BDB8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_27554C618();
  v12 = v11;

  v13 = sub_27554D338();
  v15 = v14;

  sub_27551E2BC(v7, v10, v12, v13, v15);
  v17 = v16;

  sub_27551E6AC(v10, v12);

  return v17;
}

uint64_t sub_27551BE74(void *a1, void *a2)
{
  v2 = sub_27554D358();
  v4 = v3;
  if (v2 == sub_27554D358() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27554D678();
  }

  return v7 & 1;
}

id sub_27551BF7C(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_27551BFF4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v6 = type metadata accessor for MSResult(0, *((*MEMORY[0x277D85000] & *a1) + 0x50), *((*MEMORY[0x277D85000] & *a1) + 0x58), a4);
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27551C0E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_27551C130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27551C194(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = sub_27551C508();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27551C220(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 41;
  if (((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x29)
  {
    v4 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_27551C344(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v5 <= 0x29)
  {
    v5 = 41;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

ValueMetadata *sub_27551C508()
{
  result = qword_2809F5530[0];
  if (!qword_2809F5530[0])
  {
    result = &type metadata for MSError;
    atomic_store(&type metadata for MSError, qword_2809F5530);
  }

  return result;
}

uint64_t sub_27551C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_27551C5A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27551C5E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_27551C630(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_27551C698()
{
  sub_27554D6E8();
  sub_27554D378();
  return sub_27554D708();
}

uint64_t sub_27551C70C(uint64_t a1)
{
  sub_27554D6E8();
  sub_27554D378();
  return sub_27554D708();
}

uint64_t sub_27551C7A8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_27554D618();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_27551C800(uint64_t a1)
{
  v2 = sub_27551E658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27551C83C(uint64_t a1)
{
  v2 = sub_27551E658();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_27551C878@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_27551E4C8(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_27551C8BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55D0, &qword_27554F948);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551E658();
  sub_27554D728();
  sub_27554D658();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_27551C9F8()
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000015, 0x8000000275551BE0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v2 = sub_27554C588();
  v4 = v3;

  qword_2809F8D60 = v2;
  xmmword_2809F8D68 = v4;
  byte_2809F8D78 = 1;
  qword_2809F8D80 = 0;
  byte_2809F8D88 = 1;
  return result;
}

uint64_t sub_27551CB04()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_27551CB54()
{
  result = qword_2809F55B8;
  if (!qword_2809F55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55B8);
  }

  return result;
}

uint64_t sub_27551CBA8()
{
  sub_27554D6E8();
  sub_27554D378();
  return sub_27554D708();
}

uint64_t sub_27551CC1C(uint64_t a1)
{
  sub_27554D6E8();
  sub_27554D378();
  return sub_27554D708();
}

uint64_t sub_27551CC7C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_27554D618();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_27551CD08@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_27554D618();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_27551CD60(uint64_t a1)
{
  v2 = sub_27551EC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27551CD9C(uint64_t a1)
{
  v2 = sub_27551EC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27551CDD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5658, &qword_27554FBB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551EC30();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_27554D628();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_27551CF54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5668, &qword_27554FBC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551EC30();
  sub_27554D728();
  sub_27554D658();
  return (*(v3 + 8))(v5, v2);
}

void *sub_27551D090(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_27551D1D8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_27551E9A0(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_27551E990(v46, v41);
  v9 = *a3;
  v10 = sub_27552E278(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_27552C6C8(v15, a2 & 1);
    v10 = sub_27552E278(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_27554D688();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_27552CC64();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5628, &qword_27554F980);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_27551E990(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_27551E9A0(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_27551E990(v46, v41);
      v29 = *a3;
      v30 = sub_27552E278(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_27552C6C8(v34, 1);
        v30 = sub_27552E278(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_27551E990(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_27554D588();
  MEMORY[0x277C7B050](0xD00000000000001BLL, 0x8000000275551CF0);
  sub_27554D5B8();
  MEMORY[0x277C7B050](39, 0xE100000000000000);
  sub_27554D5C8();
  __break(1u);
}

unint64_t *sub_27551D594(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_27551D6F4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_27551D900(v8, v4, v2);
  result = MEMORY[0x277C7BAC0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_27551D6F4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = result;
  v25 = 0;
  v26 = a3;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v31 = v4;
    v11 = __clz(__rbit64(v9));
    v27 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;
    sub_27551E914(*(v26 + 56) + 32 * v14, v30);
    v28[0] = v17;
    v28[1] = v16;
    v19 = sub_27551E914(v30, &v29);
    MEMORY[0x28223BE20](v19);
    v22[2] = v28;
    swift_bridgeObjectRetain_n();
    v20 = v31;
    LOBYTE(v17) = sub_27552EA9C(sub_27551E970, v22, &unk_28842A100);
    v4 = v20;
    swift_arrayDestroy();
    sub_275514DA8(v28, &qword_2809F5618, &qword_27554F970);
    __swift_destroy_boxed_opaque_existential_1(v30);

    v9 = v27;
    if (v17)
    {
      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_27551D978(v24, v23, v25, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_27551D978(v24, v23, v25, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v31 = v4;
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_27551D900(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_27551D6F4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_27551D978(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
  result = sub_27554D608();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_27551E914(v17 + 32 * v16, v33);
    sub_27551E990(v33, v32);
    sub_27554D6E8();

    sub_27554D378();
    result = sub_27554D708();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_27551E990(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_27551DBC8(uint64_t a1)
{
  if (a1 <= -9002)
  {
    if (a1 > -20204)
    {
      if (a1 > -9008)
      {
        if (a1 == -9007)
        {
          return 9;
        }

        if (a1 == -9002)
        {
          return 8;
        }
      }

      else
      {
        if (a1 == -20203)
        {
          return 13;
        }

        if (a1 == -9008)
        {
          return 15;
        }
      }
    }

    else if (a1 > -22412)
    {
      if (a1 == -22411)
      {
        return 11;
      }

      if (a1 == -21122)
      {
        return 10;
      }
    }

    else
    {
      if (a1 == -300009)
      {
        return 14;
      }

      if (a1 == -23629)
      {
        return 12;
      }
    }

    return 16;
  }

  if (a1 <= -1004)
  {
    if (a1 > -3001)
    {
      if (a1 == -3000)
      {
        return 2;
      }

      if (a1 == -2000)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == -9001)
      {
        return 1;
      }

      if (a1 == -9000)
      {
        return 4;
      }
    }

    return 16;
  }

  if (a1 > -1002)
  {
    if (a1 == -1001)
    {
      return 5;
    }

    if (a1 == -1000)
    {
      return 3;
    }

    return 16;
  }

  if (a1 == -1003)
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_27551DD44(uint64_t a1)
{
  v1 = sub_27551DBC8(a1);
  result = 48;
  switch(v1)
  {
    case 1:
      result = 12337;
      break;
    case 2:
      result = 12593;
      break;
    case 3:
      result = 13105;
      break;
    case 4:
      result = 13873;
      break;
    case 5:
      result = 14129;
      break;
    case 6:
      result = 14385;
      break;
    case 7:
      result = 14641;
      break;
    case 8:
      result = 12338;
      break;
    case 9:
      result = 12594;
      break;
    case 10:
      result = 12850;
      break;
    case 11:
      result = 13106;
      break;
    case 12:
      result = 13362;
      break;
    case 13:
      result = 13618;
      break;
    case 14:
      result = 13874;
      break;
    case 15:
      result = 14130;
      break;
    case 16:
      result = 12589;
      break;
    default:
      return result;
  }

  return result;
}

void sub_27551DF28(uint64_t *a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v22 = a4;
  swift_getObjectType();
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v12 = type metadata accessor for MSResult(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), *((*MEMORY[0x277D85000] & *v5) + 0x58), v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21[-v14];
  sub_27551A5D0(a1, a2, a3, &v21[-v14]);
  (*(v13 + 32))(&v5[*((*MEMORY[0x277D85000] & *v5) + 0x60)], v15, v12);
  v16 = a1;
  v17 = sub_27554C608();
  v19 = type metadata accessor for MSAPIResponse(0, v9, v10, v18);
  v23.receiver = v5;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, sel_initWithHTTPResponse_data_bodyIsPlist_, v16, v17, v22 & 1);

  if (!v20)
  {
    __break(1u);
  }
}

void sub_27551E0F8(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v11 = type metadata accessor for MSResult(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  sub_27551A5D0(a1, a2, a3, &v20 - v13);
  (*(v12 + 32))(&v4[*((*MEMORY[0x277D85000] & *v4) + 0x60)], v14, v11);
  v15 = a1;
  v16 = sub_27554C608();
  v18 = type metadata accessor for MSAPIResponse(0, v8, v9, v17);
  v20.receiver = v4;
  v20.super_class = v18;
  v19 = objc_msgSendSuper2(&v20, sel_initWithHTTPResponse_data_, v15, v16);

  if (!v19)
  {
    __break(1u);
  }
}

void sub_27551E2BC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a4;
  v24 = a5;
  swift_getObjectType();
  v10 = *((*MEMORY[0x277D85000] & *v5) + 0x50);
  v11 = *((*MEMORY[0x277D85000] & *v5) + 0x58);
  v13 = type metadata accessor for MSResult(0, *((*MEMORY[0x277D85000] & *v6) + 0x50), *((*MEMORY[0x277D85000] & *v6) + 0x58), v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  sub_27551A5D0(a1, a2, a3, &v23 - v15);
  (*(v14 + 32))(&v6[*((*MEMORY[0x277D85000] & *v6) + 0x60)], v16, v13);
  v17 = a1;
  v18 = sub_27554C608();
  v19 = sub_27554D328();
  v21 = type metadata accessor for MSAPIResponse(0, v10, v11, v20);
  v25.receiver = v6;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, sel_initWithHTTPResponse_data_mediaType_, v17, v18, v19, v23, v24);

  if (!v22)
  {
    __break(1u);
  }
}

uint64_t sub_27551E4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55C0, &qword_27554F940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551E658();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_27554D628();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

unint64_t sub_27551E658()
{
  result = qword_2809F55C8;
  if (!qword_2809F55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55C8);
  }

  return result;
}

uint64_t sub_27551E6AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_27551E700()
{
  result = qword_2809F55D8;
  if (!qword_2809F55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55D8);
  }

  return result;
}

unint64_t sub_27551E754()
{
  result = qword_2809F55F0;
  if (!qword_2809F55F0)
  {
    sub_27551EA14(255, &qword_2809F55E8, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55F0);
  }

  return result;
}

unint64_t sub_27551E7BC()
{
  result = qword_2809F55F8;
  if (!qword_2809F55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55F8);
  }

  return result;
}

unint64_t sub_27551E810()
{
  result = qword_2809F5600;
  if (!qword_2809F5600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5600);
  }

  return result;
}

uint64_t sub_27551E864(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_27551E914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_27551E990(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_27551E9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27551EA14(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_27551EA5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_27551EB2C()
{
  result = qword_2809F5640;
  if (!qword_2809F5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5640);
  }

  return result;
}

unint64_t sub_27551EB84()
{
  result = qword_2809F5648;
  if (!qword_2809F5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5648);
  }

  return result;
}

unint64_t sub_27551EBDC()
{
  result = qword_2809F5650;
  if (!qword_2809F5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5650);
  }

  return result;
}

unint64_t sub_27551EC30()
{
  result = qword_2809F5660;
  if (!qword_2809F5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5660);
  }

  return result;
}

unint64_t sub_27551EC9C()
{
  result = qword_2809F5670;
  if (!qword_2809F5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5670);
  }

  return result;
}

unint64_t sub_27551ECF4()
{
  result = qword_2809F5678;
  if (!qword_2809F5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5678);
  }

  return result;
}

unint64_t sub_27551ED4C()
{
  result = qword_2809F5680;
  if (!qword_2809F5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5680);
  }

  return result;
}

uint64_t sub_27551EDA8()
{
  if (qword_2809F4D70 != -1)
  {
    swift_once();
  }

  v0 = qword_2809F8D58;
  v1 = qword_2809F8D58;
  return v0;
}

unint64_t sub_27551EE1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DA8, &unk_27554E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = 4804673;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_27554D328();
  *(inited + 56) = 0x6874654D70747468;
  *(inited + 64) = 0xEA0000000000646FLL;
  *(inited + 72) = sub_27554D328();
  v1 = sub_2755462BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DB0, &qword_27554EF40);
  swift_arrayDestroy();
  return v1;
}

id sub_27551EF04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmailSuggestionsAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmailSuggestionsAPIRequest(uint64_t a1)
{
  result = qword_2809F5688;
  if (!qword_2809F5688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27551EF88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56A8, &qword_27554FE78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551F804();
  sub_27554D728();
  v14 = 0;
  sub_27554D658();
  if (!v5)
  {
    v13 = 1;
    sub_27554D658();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_27551F11C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56D8, &qword_27554FE90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551FA0C();
  sub_27554D728();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56C0, &qword_27554FE88);
  sub_27551FAB4(&qword_2809F56E0, sub_27551FB2C, MEMORY[0x277D83948]);
  sub_27554D668();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_27551F2D0()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x496E726574746170;
  }
}

uint64_t sub_27551F308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E726574746170 && a2 == 0xE900000000000064;
  if (v6 || (sub_27554D678() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27554D678();

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

uint64_t sub_27551F3EC(uint64_t a1)
{
  v2 = sub_27551F804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27551F428(uint64_t a1)
{
  v2 = sub_27551F804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27551F464@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_27551F620(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_27551F4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27554D678();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27551F560(uint64_t a1)
{
  v2 = sub_27551FA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27551F59C(uint64_t a1)
{
  v2 = sub_27551FA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_27551F5D8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_27551F858(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27551F620(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5698, &qword_27554FE70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551F804();
  sub_27554D718();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_27554D628();
    v10 = 1;
    sub_27554D628();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_27551F804()
{
  result = qword_2809F56A0;
  if (!qword_2809F56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56A0);
  }

  return result;
}

void *sub_27551F858(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56B0, &qword_27554FE80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551FA0C();
  sub_27554D718();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56C0, &qword_27554FE88);
    sub_27551FAB4(&qword_2809F56C8, sub_27551FA60, MEMORY[0x277D83978]);
    sub_27554D648();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_27551FA0C()
{
  result = qword_2809F56B8;
  if (!qword_2809F56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56B8);
  }

  return result;
}

unint64_t sub_27551FA60()
{
  result = qword_2809F56D0;
  if (!qword_2809F56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56D0);
  }

  return result;
}

uint64_t sub_27551FAB4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F56C0, &qword_27554FE88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27551FB2C()
{
  result = qword_2809F56E8;
  if (!qword_2809F56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56E8);
  }

  return result;
}

unint64_t sub_27551FBA4()
{
  result = qword_2809F56F0;
  if (!qword_2809F56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56F0);
  }

  return result;
}

unint64_t sub_27551FBFC()
{
  result = qword_2809F56F8;
  if (!qword_2809F56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56F8);
  }

  return result;
}

unint64_t sub_27551FC54()
{
  result = qword_2809F5700;
  if (!qword_2809F5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5700);
  }

  return result;
}

unint64_t sub_27551FCAC()
{
  result = qword_2809F5708;
  if (!qword_2809F5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5708);
  }

  return result;
}

unint64_t sub_27551FD04()
{
  result = qword_2809F5710;
  if (!qword_2809F5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5710);
  }

  return result;
}

unint64_t sub_27551FD5C()
{
  result = qword_2809F5718;
  if (!qword_2809F5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5718);
  }

  return result;
}

uint64_t sub_27551FE3C()
{
  result = [*(v0 + 24) propertiesForDataclass_];
  if (result)
  {
    v2 = result;
    v3 = sub_27554D2F8();

    sub_2755211FC();
    sub_27554D568();
    if (*(v3 + 16) && (v4 = sub_27552E2F0(v6), (v5 & 1) != 0))
    {
      sub_27551E914(*(v3 + 56) + 32 * v4, v7);
      sub_27551EA74(v6);

      if (swift_dynamicCast())
      {
        return 4;
      }
    }

    else
    {

      sub_27551EA74(v6);
    }

    return 0;
  }

  return result;
}

void sub_27551FF50(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CECA90]) initWithAppleAccount:*(v2 + 24) grandSlamAccount:0 accountStore:*(v2 + 16)];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v10[4] = sub_2755211D4;
    v10[5] = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_275520074;
    v10[3] = &block_descriptor_47;
    v8 = _Block_copy(v10);
    v9 = v6;

    [v9 profilePictureForAccountOwnerWithCompletion_];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_275520074(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_275520100(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v2 = sub_27554D278();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_27554D2A8();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27554D288();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_27554C758();
  v16 = sub_27554D428();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v6;
    v18 = v3;
    v19 = v2;
    v20 = v17;
    *v17 = 0;
    _os_log_impl(&dword_27550C000, v15, v16, "[AccountCreation - Startup] update ACAccount started", v17, 2u);
    v21 = v20;
    v2 = v19;
    v3 = v18;
    v6 = v33;
    MEMORY[0x277C7BAC0](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v22 = *(v34 + 24);
  [v22 setEnabled:1 forDataclass:*MEMORY[0x277CB89C8]];
  sub_2755155D4();
  (*(v7 + 104))(v9, *MEMORY[0x277D851C8], v6);
  v23 = sub_27554D4C8();
  (*(v7 + 8))(v9, v6);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v22;
  v26 = v36;
  v25[4] = v35;
  v25[5] = v26;
  aBlock[4] = sub_27552104C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);

  v28 = v22;

  v29 = v37;
  sub_27554D298();
  v41 = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  v30 = v39;
  sub_27554D538();
  MEMORY[0x277C7B170](0, v29, v30, v27);
  _Block_release(v27);

  (*(v3 + 8))(v30, v2);
  (*(v38 + 8))(v29, v40);
}

void sub_275520638(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);

    v9 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    v13[4] = sub_27552112C;
    v13[5] = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_275542140;
    v13[3] = &block_descriptor_22;
    v11 = _Block_copy(v13);
    v12 = a2;

    [v8 aa:v12 updatePropertiesForAppleAccount:v11 completion:?];
    _Block_release(v11);
  }
}

void sub_2755207C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 16);

    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a4;
    v12[4] = a5;
    v12[5] = a6;
    v15[4] = sub_275521180;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_275542140;
    v15[3] = &block_descriptor_29;
    v13 = _Block_copy(v15);
    v14 = a4;

    [v10 saveVerifiedAccount:v14 withCompletionHandler:v13];
    _Block_release(v13);
  }
}

void sub_275520948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5720, &qword_275550130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v10;
  *(inited + 48) = 1;
  *(inited + 56) = sub_27554D338();
  *(inited + 64) = v11;
  *(inited + 72) = 0;
  v12 = sub_2755464F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F0, &qword_2755513D0);
  swift_arrayDestroy();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + 16);

    sub_275541E10(v12);

    v15 = sub_27554D2E8();

    v16 = swift_allocObject();
    *(v16 + 16) = a5;
    *(v16 + 24) = a6;
    aBlock[4] = sub_2755211C4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_35;
    v17 = _Block_copy(aBlock);

    [v14 renewCredentialsForAccount:a4 options:v15 completion:v17];
    _Block_release(v17);
  }

  else
  {
  }
}

uint64_t sub_275520B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_27554D278();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27554D2A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755155D4();
  v14 = sub_27554D4A8();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  aBlock[4] = sub_2755211CC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_41;
  v16 = _Block_copy(aBlock);

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  MEMORY[0x277C7B170](0, v13, v9, v16);
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_275520E04(uint64_t (*a1)(uint64_t))
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27554C758();
  v8 = sub_27554D428();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_27550C000, v7, v8, "[AccountCreation - Startup] update ACAccount successful", v9, 2u);
    MEMORY[0x277C7BAC0](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return a1(v10);
}

uint64_t sub_275520FAC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_275521010()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275521070()
{
  result = qword_2809F60D0;
  if (!qword_2809F60D0)
  {
    sub_27554D278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F60D0);
  }

  return result;
}

unint64_t sub_2755210C8()
{
  result = qword_2809F60E0;
  if (!qword_2809F60E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5168, &unk_2755513C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F60E0);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27552118C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2755211FC()
{
  result = qword_2809F5728;
  if (!qword_2809F5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5728);
  }

  return result;
}

uint64_t sub_275521288(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a7;
  v54 = a8;
  v50 = a6;
  v49 = a5;
  v9 = v8;
  v52 = a3;
  v56 = a2;
  v51 = a1;
  v11 = sub_27554D278();
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x28223BE20](v11);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_27554D2A8();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_27554D2C8();
  v57 = *(v64 - 8);
  v15 = MEMORY[0x28223BE20](v64);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v47 - v18;
  v48 = sub_27554D288();
  v19 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_27554C778();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a4;
  v26 = exp2(a4);
  v27 = sub_27552C398(0x20000000000001uLL);
  v28 = vcvtd_n_f64_u64(v27, 0x35uLL) * 0.5 + 0.75;
  if (v27 == 0x20000000000000)
  {
    v28 = 1.25;
  }

  v29 = v26 * v28;
  if (v29 <= 30.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 30.0;
  }

  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v22, qword_2809F8DA8);
  (*(v23 + 16))(v25, v31, v22);
  v32 = v9;
  v33 = sub_27554C758();
  v34 = sub_27554D418();
  if (!os_log_type_enabled(v33, v34))
  {

    v33 = v32;
    goto LABEL_12;
  }

  v47 = v14;
  result = swift_slowAlloc();
  *result = 134218496;
  *(result + 4) = v30;
  *(result + 12) = 2048;
  if (!__OFADD__(v63, 1))
  {
    v36 = result;
    *(result + 14) = v63 + 1;
    *(result + 22) = 2048;
    *(result + 24) = 5;

    _os_log_impl(&dword_27550C000, v33, v34, "Rate limited (429). Retrying in %f seconds. Attempt %ld/%ld", v36, 0x20u);
    MEMORY[0x277C7BAC0](v36, -1, -1);
    v14 = v47;
LABEL_12:

    (*(v23 + 8))(v25, v22);
    sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
    v37 = v48;
    (*(v19 + 104))(v21, *MEMORY[0x277D851D0], v48);
    v47 = sub_27554D4C8();
    (*(v19 + 8))(v21, v37);
    sub_27554D2B8();
    v38 = v55;
    sub_27554D2D8();
    v57 = *(v57 + 8);
    (v57)(v17, v64);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v41 = v51;
    *(v40 + 16) = v39;
    *(v40 + 24) = v41;
    *(v40 + 32) = v56;
    *(v40 + 40) = v52 & 1;
    *(v40 + 48) = v63;
    aBlock[4] = v53;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275547BDC;
    aBlock[3] = v54;
    v42 = _Block_copy(aBlock);

    sub_27554D298();
    v65 = MEMORY[0x277D84F90];
    sub_275521070();
    v43 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
    sub_275515E2C(&qword_2809F60E0, &qword_2809F5168, &unk_2755513C0, MEMORY[0x277D83970]);
    v44 = v59;
    v45 = v62;
    sub_27554D538();
    v46 = v47;
    MEMORY[0x277C7B120](v38, v43, v44, v42);
    _Block_release(v42);

    (*(v61 + 8))(v44, v45);
    (*(v58 + 8))(v43, v60);
    (v57)(v38, v64);
  }

  __break(1u);
  return result;
}

void sub_2755219A8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_27554C758();
  v18 = sub_27554D438();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_27550C000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5868, &qword_275550398);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x277C7BAC0](v27, -1, -1);
    MEMORY[0x277C7BAC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_27554D338();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\"");
  *(inited + 96) = &unk_288429F80;
  v31 = sub_2755463C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  swift_arrayDestroy();
  v32 = qword_2809F5370;
  v33 = v54;
  v34 = *(v54 + qword_2809F5370);
  if (v34)
  {
    v35 = *(v54 + qword_2809F5370);
LABEL_9:
    v40 = *(v33 + qword_2809F5378);
    v41 = v34;
    sub_275541B48(v31);

    v42 = sub_27554D2E8();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_27552DE40;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_289;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_275521EF4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_27554C758();
  v18 = sub_27554D438();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_27550C000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5868, &qword_275550398);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x277C7BAC0](v27, -1, -1);
    MEMORY[0x277C7BAC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_27554D338();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\"");
  *(inited + 96) = &unk_288429FB0;
  v31 = sub_2755463C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  swift_arrayDestroy();
  v32 = qword_2809F5370;
  v33 = v54;
  v34 = *(v54 + qword_2809F5370);
  if (v34)
  {
    v35 = *(v54 + qword_2809F5370);
LABEL_9:
    v40 = *(v33 + qword_2809F5378);
    v41 = v34;
    sub_275541B48(v31);

    v42 = sub_27554D2E8();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_27552D958;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_232;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_275522440(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_27554C758();
  v18 = sub_27554D438();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_27550C000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5868, &qword_275550398);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x277C7BAC0](v27, -1, -1);
    MEMORY[0x277C7BAC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_27554D338();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\"");
  *(inited + 96) = &unk_288429FE0;
  v31 = sub_2755463C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  swift_arrayDestroy();
  v32 = qword_2809F5370;
  v33 = v54;
  v34 = *(v54 + qword_2809F5370);
  if (v34)
  {
    v35 = *(v54 + qword_2809F5370);
LABEL_9:
    v40 = *(v33 + qword_2809F5378);
    v41 = v34;
    sub_275541B48(v31);

    v42 = sub_27554D2E8();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_27552D808;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_195;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_27552298C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_27554C758();
  v18 = sub_27554D438();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_27550C000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5868, &qword_275550398);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x277C7BAC0](v27, -1, -1);
    MEMORY[0x277C7BAC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_27554D338();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\"");
  *(inited + 96) = &unk_28842A010;
  v31 = sub_2755463C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  swift_arrayDestroy();
  v32 = qword_2809F5370;
  v33 = v54;
  v34 = *(v54 + qword_2809F5370);
  if (v34)
  {
    v35 = *(v54 + qword_2809F5370);
LABEL_9:
    v40 = *(v33 + qword_2809F5378);
    v41 = v34;
    sub_275541B48(v31);

    v42 = sub_27554D2E8();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_27552D5EC;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_141;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_275522ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_27554C648();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_27554C638();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_27554C758();
  v19 = sub_27554D428();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_275545D14(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_27554D338();
    v30 = v29;

    v31 = sub_275545D14(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_27550C000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v32, -1, -1);
    MEMORY[0x277C7BAC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_27554C758();
  v35 = v9;
  v36 = sub_27554D428();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_2809F53A8);
    v40 = *(v33 + qword_2809F53A8 + 8);

    v41 = sub_275545D14(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_27550C000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x277C7BAC0](v38, -1, -1);
    MEMORY[0x277C7BAC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_27552DCF8;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755273A4;
  aBlock[3] = &block_descriptor_274;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5960, &qword_2755505E8);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_2755235B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_27554C648();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_27554C638();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_27554C758();
  v19 = sub_27554D428();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_275545D14(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_27554D338();
    v30 = v29;

    v31 = sub_275545D14(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_27550C000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v32, -1, -1);
    MEMORY[0x277C7BAC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_27554C758();
  v35 = v9;
  v36 = sub_27554D428();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_2809F53A8);
    v40 = *(v33 + qword_2809F53A8 + 8);

    v41 = sub_275545D14(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_27550C000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x277C7BAC0](v38, -1, -1);
    MEMORY[0x277C7BAC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_27552D940;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755273A4;
  aBlock[3] = &block_descriptor_224;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5908, &qword_2755504D8);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_275523C98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_27554C648();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_27554C638();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_27554C758();
  v19 = sub_27554D428();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_275545D14(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_27554D338();
    v30 = v29;

    v31 = sub_275545D14(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_27550C000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v32, -1, -1);
    MEMORY[0x277C7BAC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_27554C758();
  v35 = v9;
  v36 = sub_27554D428();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_2809F53A8);
    v40 = *(v33 + qword_2809F53A8 + 8);

    v41 = sub_275545D14(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_27550C000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x277C7BAC0](v38, -1, -1);
    MEMORY[0x277C7BAC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_27552D7F0;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755273A4;
  aBlock[3] = &block_descriptor_180;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58C0, &qword_275550460);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_275524378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_27554C648();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_27554C638();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_27554C758();
  v19 = sub_27554D428();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_275545D14(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_27554D338();
    v30 = v29;

    v31 = sub_275545D14(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_27550C000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v32, -1, -1);
    MEMORY[0x277C7BAC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_27554C758();
  v35 = v9;
  v36 = sub_27554D428();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_2809F53A8);
    v40 = *(v33 + qword_2809F53A8 + 8);

    v41 = sub_275545D14(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_27550C000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x277C7BAC0](v38, -1, -1);
    MEMORY[0x277C7BAC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_27552D360;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755273A4;
  aBlock[3] = &block_descriptor_1;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5858, &qword_275550390);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_275524A58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5940, &qword_2755505D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  *(swift_allocObject() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5948, &qword_2755505E0);
  swift_allocObject();
  v8 = v0;
  v13[1] = sub_27554C7C8();
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v9 = sub_27554D4A8();
  v13[0] = v9;
  v10 = sub_27554D478();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_275515E2C(&qword_2809F5950, &qword_2809F5948, &qword_2755505E0, MEMORY[0x277CBCEB0]);
  sub_27552D27C();
  sub_27554C858();
  sub_275514DA8(v3, &qword_2809F5828, &qword_275551070);

  sub_275515E2C(&qword_2809F5958, &qword_2809F5940, &qword_2755505D8, MEMORY[0x277CBCD60]);
  v11 = sub_27554C828();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_275524D24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58E8, &qword_2755504C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  *(swift_allocObject() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58F0, &qword_2755504D0);
  swift_allocObject();
  v8 = v0;
  v13[1] = sub_27554C7C8();
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v9 = sub_27554D4A8();
  v13[0] = v9;
  v10 = sub_27554D478();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_275515E2C(&qword_2809F58F8, &qword_2809F58F0, &qword_2755504D0, MEMORY[0x277CBCEB0]);
  sub_27552D27C();
  sub_27554C858();
  sub_275514DA8(v3, &qword_2809F5828, &qword_275551070);

  sub_275515E2C(&qword_2809F5900, &qword_2809F58E8, &qword_2755504C8, MEMORY[0x277CBCD60]);
  v11 = sub_27554C828();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_275524FF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58A0, &qword_275550450);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  *(swift_allocObject() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58A8, &qword_275550458);
  swift_allocObject();
  v8 = v0;
  v13[1] = sub_27554C7C8();
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v9 = sub_27554D4A8();
  v13[0] = v9;
  v10 = sub_27554D478();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_275515E2C(&qword_2809F58B0, &qword_2809F58A8, &qword_275550458, MEMORY[0x277CBCEB0]);
  sub_27552D27C();
  sub_27554C858();
  sub_275514DA8(v3, &qword_2809F5828, &qword_275551070);

  sub_275515E2C(&qword_2809F58B8, &qword_2809F58A0, &qword_275550450, MEMORY[0x277CBCD60]);
  v11 = sub_27554C828();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_2755252BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5830, &qword_275550380);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  *(swift_allocObject() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5838, &qword_275550388);
  swift_allocObject();
  v8 = v0;
  v13[1] = sub_27554C7C8();
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v9 = sub_27554D4A8();
  v13[0] = v9;
  v10 = sub_27554D478();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_275515E2C(&qword_2809F5840, &qword_2809F5838, &qword_275550388, MEMORY[0x277CBCEB0]);
  sub_27552D27C();
  sub_27554C858();
  sub_275514DA8(v3, &qword_2809F5828, &qword_275551070);

  sub_275515E2C(&qword_2809F5850, &qword_2809F5830, &qword_275550380, MEMORY[0x277CBCD60]);
  v11 = sub_27554C828();
  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_275525588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (__OFADD__(a5, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = Strong;
      a6(a2, a3, a4 & 1, a5 + 1);
    }
  }
}

void sub_275525620(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void (*)(uint64_t, uint64_t, uint64_t), uint64_t, void, uint64_t))
{
  v46 = a6;
  v47 = a7;
  v48 = a5;
  v49 = a4;
  v13 = sub_27554C778();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v45 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_2809F4D80 != -1)
        {
          swift_once();
        }

        v32 = __swift_project_value_buffer(v13, qword_2809F8DA8);
        (*(v14 + 16))(v23, v32, v13);
        v33 = sub_27554C758();
        v34 = sub_27554D418();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_27550C000, v33, v34, "auth token renew failed. User rejected.", v35, 2u);
          MEMORY[0x277C7BAC0](v35, -1, -1);
        }

        (*(v14 + 8))(v23, v13);
      }

      else if (a1 == 2)
      {
        if (qword_2809F4D80 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v13, qword_2809F8DA8);
        (*(v14 + 16))(v25, v28, v13);
        v29 = sub_27554C758();
        v30 = sub_27554D418();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_27550C000, v29, v30, "auth token renew failed.", v31, 2u);
          MEMORY[0x277C7BAC0](v31, -1, -1);
        }

        (*(v14 + 8))(v25, v13);
      }

      else
      {
        if (qword_2809F4D80 != -1)
        {
          swift_once();
        }

        v40 = __swift_project_value_buffer(v13, qword_2809F8DA8);
        (*(v14 + 16))(v17, v40, v13);
        v41 = sub_27554C758();
        v42 = sub_27554D418();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_27550C000, v41, v42, "auth token renew failed. @unknown result", v43, 2u);
          MEMORY[0x277C7BAC0](v43, -1, -1);
        }

        (*(v14 + 8))(v17, v13);
      }

      if (a2)
      {
        v44 = a2;
      }

      else
      {
        v44 = a8;
      }

      v49(v46, v47, v44);
    }

    else
    {
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v36 = __swift_project_value_buffer(v13, qword_2809F8DA8);
      (*(v14 + 16))(v20, v36, v13);
      v37 = sub_27554C758();
      v38 = sub_27554D418();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_27550C000, v37, v38, "auth token renewed. Retrying request with server.", v39, 2u);
        MEMORY[0x277C7BAC0](v39, -1, -1);
      }

      (*(v14 + 8))(v20, v13);
      a10(v49, v48, 0, a9);
    }
  }
}

void sub_275525B34(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v72 = a5;
  v15 = sub_27554C648();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_27554C778();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (a2)
    {
      v74 = [a2 statusCode];
    }

    else
    {
      v74 = 0;
    }

    v67 = a1;
    v68 = a3;
    v65 = a2;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v17, qword_2809F8DA8);
    (*(v18 + 16))(v20, v23, v17);
    v66 = v22;
    v24 = v22;
    v25 = sub_27554C758();
    v26 = sub_27554D428();

    v27 = os_log_type_enabled(v25, v26);
    v69 = v24;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v63 = a7;
      v29 = v28;
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 134218242;
      *(v29 + 4) = v74;
      *(v29 + 12) = 2080;
      v31 = (v24 + qword_2809F53A8);
      v64 = a8;
      v32 = a6;
      v33 = *v31;
      v34 = v31[1];

      v35 = sub_275545D14(v33, v34, aBlock);
      a6 = v32;
      v24 = v69;

      *(v29 + 14) = v35;
      a8 = v64;
      _os_log_impl(&dword_27550C000, v25, v26, "[%ld] Response: X-Apple-Request-UUID: %s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C7BAC0](v30, -1, -1);
      v36 = v29;
      a7 = v63;
      MEMORY[0x277C7BAC0](v36, -1, -1);
    }

    v37 = (*(v18 + 8))(v20, v17);
    v38 = v67;
    v39 = (*((*MEMORY[0x277D85000] & *v24) + 0x110))(v37);
    v40 = v68;
    v41 = v73;
    if (!v39)
    {
LABEL_21:
      if (v74 == 429)
      {
        if (a9 <= 4)
        {
          sub_275521288(a7, a8, a6 & 1, a9, &unk_28842BD10, &unk_28842BE28, sub_27552DEEC, &block_descriptor_296);
          goto LABEL_28;
        }
      }

      else if (v74 == 401 && (a6 & 1) != 0)
      {
        sub_2755219A8(v38, v65, v40, a7, a8, a9);
LABEL_28:

        return;
      }

      a7(v38, v65, v40);
      goto LABEL_28;
    }

    v42 = v39;
    sub_27554C638();
    sub_27554C628();
    v44 = v43 * 1000.0;
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        v45 = sub_27554D3F8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v42;
        sub_27552C980(v45, 0x79636E6574616CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v47 = aBlock[0];
        v48 = sub_27554D3F8();
        v49 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v47;
        sub_27552C980(v48, 0x6F43737574617473, 0xEA00000000006564, v49);
        v50 = aBlock[0];
        if (v40)
        {
          v75 = v40;
          v51 = v40;
          v52 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5628, &qword_27554F980);
          if (swift_dynamicCast())
          {
            v53 = v77;
            v54 = v78;

            if (v54)
            {
              v55 = -1;
            }

            else
            {
              v55 = v53;
            }

            sub_27551DD44(v55);
            v56 = sub_27554D328();

            v57 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v50;
            sub_27552C980(v56, 0x646F43726F727265, 0xE900000000000065, v57);

            v50 = aBlock[0];
          }

          else
          {
          }
        }

        v58 = v71;
        v59 = sub_27554D328();
        v60 = swift_allocObject();
        *(v60 + 16) = v50;
        v77 = sub_27552E0E4;
        v78 = v60;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_275527308;
        aBlock[3] = &block_descriptor_281;
        v61 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v61);

        (*(v70 + 8))(v41, v58);
        v24 = v69;
        goto LABEL_21;
      }

LABEL_32:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }
}

void sub_2755261FC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_27554C778();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_2809F8DA8);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_27554C758();
    v24 = sub_27554D428();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_2809F53A8];
      v31 = *&v38[qword_2809F53A8 + 8];

      v32 = sub_275545D14(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_27550C000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x277C7BAC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x277C7BAC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_275521288(a7, a8, v42 & 1, v39, &unk_28842BBA8, &unk_28842BC70, sub_27552D970, &block_descriptor_239);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_275521EF4(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_275526578(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v72 = a5;
  v15 = sub_27554C648();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_27554C778();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (a2)
    {
      v74 = [a2 statusCode];
    }

    else
    {
      v74 = 0;
    }

    v67 = a1;
    v68 = a3;
    v65 = a2;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v17, qword_2809F8DA8);
    (*(v18 + 16))(v20, v23, v17);
    v66 = v22;
    v24 = v22;
    v25 = sub_27554C758();
    v26 = sub_27554D428();

    v27 = os_log_type_enabled(v25, v26);
    v69 = v24;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v63 = a7;
      v29 = v28;
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 134218242;
      *(v29 + 4) = v74;
      *(v29 + 12) = 2080;
      v31 = (v24 + qword_2809F53A8);
      v64 = a8;
      v32 = a6;
      v33 = *v31;
      v34 = v31[1];

      v35 = sub_275545D14(v33, v34, aBlock);
      a6 = v32;
      v24 = v69;

      *(v29 + 14) = v35;
      a8 = v64;
      _os_log_impl(&dword_27550C000, v25, v26, "[%ld] Response: X-Apple-Request-UUID: %s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C7BAC0](v30, -1, -1);
      v36 = v29;
      a7 = v63;
      MEMORY[0x277C7BAC0](v36, -1, -1);
    }

    v37 = (*(v18 + 8))(v20, v17);
    v38 = v67;
    v39 = (*((*MEMORY[0x277D85000] & *v24) + 0x110))(v37);
    v40 = v68;
    v41 = v73;
    if (!v39)
    {
LABEL_21:
      if (v74 == 429)
      {
        if (a9 <= 4)
        {
          sub_275521288(a7, a8, a6 & 1, a9, &unk_28842B9F0, &unk_28842BB08, sub_27552D820, &block_descriptor_202);
          goto LABEL_28;
        }
      }

      else if (v74 == 401 && (a6 & 1) != 0)
      {
        sub_275522440(v38, v65, v40, a7, a8, a9);
LABEL_28:

        return;
      }

      a7(v38, v65, v40);
      goto LABEL_28;
    }

    v42 = v39;
    sub_27554C638();
    sub_27554C628();
    v44 = v43 * 1000.0;
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        v45 = sub_27554D3F8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v42;
        sub_27552C980(v45, 0x79636E6574616CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v47 = aBlock[0];
        v48 = sub_27554D3F8();
        v49 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v47;
        sub_27552C980(v48, 0x6F43737574617473, 0xEA00000000006564, v49);
        v50 = aBlock[0];
        if (v40)
        {
          v75 = v40;
          v51 = v40;
          v52 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5628, &qword_27554F980);
          if (swift_dynamicCast())
          {
            v53 = v77;
            v54 = v78;

            if (v54)
            {
              v55 = -1;
            }

            else
            {
              v55 = v53;
            }

            sub_27551DD44(v55);
            v56 = sub_27554D328();

            v57 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v50;
            sub_27552C980(v56, 0x646F43726F727265, 0xE900000000000065, v57);

            v50 = aBlock[0];
          }

          else
          {
          }
        }

        v58 = v71;
        v59 = sub_27554D328();
        v60 = swift_allocObject();
        *(v60 + 16) = v50;
        v77 = sub_27552E0E4;
        v78 = v60;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_275527308;
        aBlock[3] = &block_descriptor_187;
        v61 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v61);

        (*(v70 + 8))(v41, v58);
        v24 = v69;
        goto LABEL_21;
      }

LABEL_32:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }
}