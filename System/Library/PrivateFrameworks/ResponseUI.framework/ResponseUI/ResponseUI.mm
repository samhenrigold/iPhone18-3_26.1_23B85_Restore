uint64_t sub_2621A964C()
{
  if (*v0)
  {
    return 0x657370616C6C6F63;
  }

  else
  {
    return 0x6465646E61707865;
  }
}

uint64_t sub_2621A968C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465646E61707865 && a2 == 0xE800000000000000;
  if (v6 || (sub_2621AF7DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657370616C6C6F63 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2621AF7DC();

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

uint64_t sub_2621A9788(uint64_t a1)
{
  v2 = sub_2621A9C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621A97C4(uint64_t a1)
{
  v2 = sub_2621A9C74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2621A980C(uint64_t a1)
{
  v2 = sub_2621A9CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621A9848(uint64_t a1)
{
  v2 = sub_2621A9CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2621A9884@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2621A98C0(uint64_t a1)
{
  v2 = sub_2621A9D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621A98FC(uint64_t a1)
{
  v2 = sub_2621A9D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdatePresentation.PresentationStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08F80, &qword_2621AFB90);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08F88, &qword_2621AFB98);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08F90, &qword_2621AFBA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2621A9C74();
  sub_2621AF87C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2621A9CC8();
    v14 = v18;
    sub_2621AF7AC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2621A9D1C();
    sub_2621AF7AC();
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

unint64_t sub_2621A9C74()
{
  result = qword_27FF08F98;
  if (!qword_27FF08F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF08F98);
  }

  return result;
}

unint64_t sub_2621A9CC8()
{
  result = qword_27FF08FA0;
  if (!qword_27FF08FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF08FA0);
  }

  return result;
}

unint64_t sub_2621A9D1C()
{
  result = qword_27FF08FA8;
  if (!qword_27FF08FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF08FA8);
  }

  return result;
}

uint64_t UpdatePresentation.PresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_2621AF83C();
  MEMORY[0x266726000](v1);
  return sub_2621AF85C();
}

uint64_t UpdatePresentation.PresentationStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08FB0, &qword_2621AFBA8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08FB8, &qword_2621AFBB0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08FC0, &qword_2621AFBB8);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2621A9C74();
  v13 = v31;
  sub_2621AF86C();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_2621AF79C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_2621AF71C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08FC8, &qword_2621AFBC0);
    *v21 = &type metadata for UpdatePresentation.PresentationStyle;
    sub_2621AF76C();
    sub_2621AF70C();
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
    sub_2621A9CC8();
    sub_2621AF75C();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_2621A9D1C();
    sub_2621AF75C();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_2621AA238()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_2621AA26C()
{
  v1 = *v0;
  sub_2621AF83C();
  MEMORY[0x266726000](v1);
  return sub_2621AF85C();
}

uint64_t sub_2621AA2B4(uint64_t a1)
{
  v2 = *v1;
  sub_2621AF83C();
  MEMORY[0x266726000](v2);
  return sub_2621AF85C();
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

uint64_t sub_2621AA37C()
{
  sub_2621AF83C();
  MEMORY[0x266726000](0);
  return sub_2621AF85C();
}

uint64_t sub_2621AA3E8(uint64_t a1)
{
  sub_2621AF83C();
  MEMORY[0x266726000](0);
  return sub_2621AF85C();
}

uint64_t sub_2621AA43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2621AF7DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2621AA4C0(uint64_t a1)
{
  v2 = sub_2621AA684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621AA4FC(uint64_t a1)
{
  v2 = sub_2621AA684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdatePresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08FD0, &qword_2621AFBC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2621AA684();
  sub_2621AF87C();
  v10 = v7;
  sub_2621AA6D8();
  sub_2621AF7CC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2621AA684()
{
  result = qword_27FF08FD8;
  if (!qword_27FF08FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF08FD8);
  }

  return result;
}

unint64_t sub_2621AA6D8()
{
  result = qword_27FF08FE0;
  if (!qword_27FF08FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF08FE0);
  }

  return result;
}

uint64_t UpdatePresentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08FE8, &qword_2621AFBD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2621AA684();
  sub_2621AF86C();
  if (!v2)
  {
    sub_2621AA898();
    sub_2621AF78C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2621AA898()
{
  result = qword_27FF08FF0;
  if (!qword_27FF08FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF08FF0);
  }

  return result;
}

uint64_t sub_2621AA91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2621AB068();
  sub_2621AB0BC();
  return sub_2621AF5CC();
}

uint64_t sub_2621AA988(uint64_t a1, uint64_t a2)
{
  sub_2621AB068();
  sub_2621AB0BC();
  return sub_2621AF5BC();
}

unint64_t sub_2621AA9FC()
{
  result = qword_27FF08FF8;
  if (!qword_27FF08FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF08FF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdatePresentation.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UpdatePresentation.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_2621AAB74(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2621AAC04(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2621AACFC()
{
  result = qword_27FF09000;
  if (!qword_27FF09000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09000);
  }

  return result;
}

unint64_t sub_2621AAD54()
{
  result = qword_27FF09008;
  if (!qword_27FF09008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09008);
  }

  return result;
}

unint64_t sub_2621AADAC()
{
  result = qword_27FF09010;
  if (!qword_27FF09010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09010);
  }

  return result;
}

unint64_t sub_2621AAE04()
{
  result = qword_27FF09018;
  if (!qword_27FF09018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09018);
  }

  return result;
}

unint64_t sub_2621AAE5C()
{
  result = qword_27FF09020;
  if (!qword_27FF09020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09020);
  }

  return result;
}

unint64_t sub_2621AAEB4()
{
  result = qword_27FF09028;
  if (!qword_27FF09028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09028);
  }

  return result;
}

unint64_t sub_2621AAF0C()
{
  result = qword_27FF09030;
  if (!qword_27FF09030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09030);
  }

  return result;
}

unint64_t sub_2621AAF64()
{
  result = qword_27FF09038;
  if (!qword_27FF09038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09038);
  }

  return result;
}

unint64_t sub_2621AAFBC()
{
  result = qword_27FF09040;
  if (!qword_27FF09040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09040);
  }

  return result;
}

unint64_t sub_2621AB014()
{
  result = qword_27FF09048;
  if (!qword_27FF09048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09048);
  }

  return result;
}

unint64_t sub_2621AB068()
{
  result = qword_27FF09050;
  if (!qword_27FF09050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09050);
  }

  return result;
}

unint64_t sub_2621AB0BC()
{
  result = qword_27FF09058;
  if (!qword_27FF09058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09058);
  }

  return result;
}

void sub_2621AB13C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2621AF65C();
  v2 = [v0 initWithSuiteName_];

  qword_27FF0AFE0 = v2;
}

id sub_2621AB1B0()
{
  if (qword_27FF08F60 != -1)
  {
    swift_once();
  }

  if (qword_27FF0AFE0)
  {
    v0 = qword_27FF0AFE0;
    if (AFIsInternalInstall())
    {
      v1 = sub_2621AF65C();
      v2 = [v0 BOOLForKey:v1];

      return v2;
    }
  }

  else
  {
    if (qword_27FF08F68 != -1)
    {
      swift_once();
    }

    v4 = sub_2621AF63C();
    __swift_project_value_buffer(v4, qword_27FF09150);
    v0 = sub_2621AF62C();
    v5 = sub_2621AF68C();
    if (os_log_type_enabled(v0, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_2621ADF44(0xD000000000000017, 0x80000002621B0B40, &v8);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2621ADF44(0xD000000000000025, 0x80000002621B0B60, &v8);
      _os_log_impl(&dword_2621A8000, v0, v5, "Unable to find defaults domain: %s. Defaulting to false for %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667262C0](v7, -1, -1);
      MEMORY[0x2667262C0](v6, -1, -1);
    }
  }

  return 0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Layout.init(snippetModel:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2621AF5DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, a1, v5);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D1C530])
  {
    (*(v6 + 96))(v8, v5);
    v9 = *v8;
    v10 = v8[1];
    sub_2621AF55C();
    swift_allocObject();
    sub_2621AF54C();
    sub_2621AB6A0();
    sub_2621AF53C();
    if (v2)
    {

      sub_2621AB6F4(v9, v10);
      return (*(v6 + 8))(a1, v5);
    }

    else
    {
      (*(v6 + 8))(a1, v5);

      result = sub_2621AB6F4(v9, v10);
      v13 = v15;
      *a2 = v14;
      *(a2 + 16) = v13;
    }
  }

  else
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    sub_2621AB64C();
    swift_allocError();
    swift_willThrow();
    return (v12)(a1, v5);
  }

  return result;
}

unint64_t sub_2621AB64C()
{
  result = qword_27FF09060;
  if (!qword_27FF09060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09060);
  }

  return result;
}

unint64_t sub_2621AB6A0()
{
  result = qword_27FF09068;
  if (!qword_27FF09068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09068);
  }

  return result;
}

uint64_t sub_2621AB6F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t Layout.snippetModel()@<X0>(uint64_t *a1@<X8>)
{
  sub_2621AF58C();
  swift_allocObject();
  sub_2621AF57C();
  sub_2621AB844();
  v3 = sub_2621AF56C();
  v5 = v4;

  if (!v1)
  {
    *a1 = v3;
    a1[1] = v5;
    v7 = *MEMORY[0x277D1C530];
    v8 = sub_2621AF5DC();
    return (*(*(v8 - 8) + 104))(a1, v7, v8);
  }

  return result;
}

unint64_t sub_2621AB844()
{
  result = qword_27FF09070;
  if (!qword_27FF09070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09070);
  }

  return result;
}

uint64_t Layout.LayoutError.hashValue.getter()
{
  sub_2621AF83C();
  MEMORY[0x266726000](0);
  return sub_2621AF85C();
}

uint64_t sub_2621AB930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2621AF7DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2621AB9B0(uint64_t a1)
{
  v2 = sub_2621AC38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621AB9EC(uint64_t a1)
{
  v2 = sub_2621AC38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2621ABA3C()
{
  v1 = 0x657461636E757274;
  if (*v0 != 1)
  {
    v1 = 1685217635;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6261646E61707865;
  }
}

uint64_t sub_2621ABA98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2621AD398(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2621ABACC(uint64_t a1)
{
  v2 = sub_2621AC338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621ABB08(uint64_t a1)
{
  v2 = sub_2621AC338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2621ABB44()
{
  if (*v0)
  {
    return 0x43746361706D6F63;
  }

  else
  {
    return 0x647261436C6C7566;
  }
}

uint64_t sub_2621ABB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261436C6C7566 && a2 == 0xE800000000000000;
  if (v6 || (sub_2621AF7DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x43746361706D6F63 && a2 == 0xEB00000000647261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2621AF7DC();

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

uint64_t sub_2621ABC68(uint64_t a1)
{
  v2 = sub_2621AC488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621ABCA4(uint64_t a1)
{
  v2 = sub_2621AC488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2621ABCE0()
{
  if (*v0)
  {
    return 0x74696D696CLL;
  }

  else
  {
    return 1685217635;
  }
}

uint64_t sub_2621ABD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1685217635 && a2 == 0xE400000000000000;
  if (v5 || (sub_2621AF7DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2621AF7DC();

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

uint64_t sub_2621ABDE8(uint64_t a1)
{
  v2 = sub_2621AC434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621ABE24(uint64_t a1)
{
  v2 = sub_2621AC434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Layout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF09078, &qword_2621B0160);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF09080, &qword_2621B0168);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF09088, &qword_2621B0170);
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF09090, &qword_2621B0178);
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = v1[1];
  v33 = *v1;
  v26 = v14;
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2621AC338();
  sub_2621AF87C();
  if (v15)
  {
    if (v15 == 1)
    {
      LOBYTE(v38) = 1;
      sub_2621AC434();
      v16 = v36;
      sub_2621AF7AC();
      v38 = v33;
      v37 = 0;
      sub_2621AC3E0();
      v17 = v30;
      v18 = v34;
      sub_2621AF7CC();
      if (v18)
      {
        (*(v29 + 8))(v7, v17);
        return (*(v35 + 8))(v13, v16);
      }

      LOBYTE(v38) = 1;
      sub_2621AF7BC();
      v23 = *(v29 + 8);
      v24 = v7;
    }

    else
    {
      LOBYTE(v38) = 2;
      sub_2621AC38C();
      v22 = v28;
      v16 = v36;
      sub_2621AF7AC();
      v38 = v33;
      sub_2621AC3E0();
      v17 = v32;
      sub_2621AF7CC();
      v23 = *(v31 + 8);
      v24 = v22;
    }

    v23(v24, v17);
    return (*(v35 + 8))(v13, v16);
  }

  v19 = v27;
  LOBYTE(v38) = 0;
  sub_2621AC488();
  v20 = v36;
  sub_2621AF7AC();
  v38 = v33;
  v37 = 0;
  sub_2621AC3E0();
  v21 = v34;
  sub_2621AF7CC();
  if (!v21)
  {
    v38 = v26;
    v37 = 1;
    sub_2621AF7CC();
  }

  (*(v19 + 8))(v10, v8);
  return (*(v35 + 8))(v13, v20);
}

unint64_t sub_2621AC338()
{
  result = qword_27FF09098;
  if (!qword_27FF09098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09098);
  }

  return result;
}

unint64_t sub_2621AC38C()
{
  result = qword_27FF090A0;
  if (!qword_27FF090A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF090A0);
  }

  return result;
}

unint64_t sub_2621AC3E0()
{
  result = qword_27FF090A8;
  if (!qword_27FF090A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF090A8);
  }

  return result;
}

unint64_t sub_2621AC434()
{
  result = qword_27FF090B0;
  if (!qword_27FF090B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF090B0);
  }

  return result;
}

unint64_t sub_2621AC488()
{
  result = qword_27FF090B8;
  if (!qword_27FF090B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF090B8);
  }

  return result;
}

uint64_t Layout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF090C0, &qword_2621B0180);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32[-v3];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF090C8, &qword_2621B0188);
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v32[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF090D0, &qword_2621B0190);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF090D8, &unk_2621B0198);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32[-v11];
  v13 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2621AC338();
  v14 = v42;
  sub_2621AF86C();
  if (!v14)
  {
    v34 = v6;
    v16 = v40;
    v15 = v41;
    v42 = v10;
    v17 = sub_2621AF79C();
    v18 = (2 * *(v17 + 16)) | 1;
    v46 = v17;
    v47 = v17 + 32;
    v48 = 0;
    v49 = v18;
    v19 = sub_2621AA238();
    if (v19 == 3 || v48 != v49 >> 1)
    {
      v23 = sub_2621AF71C();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF08FC8, &qword_2621AFBC0);
      *v25 = &type metadata for Layout;
      sub_2621AF76C();
      sub_2621AF70C();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v42 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          LOBYTE(v50) = 1;
          sub_2621AC434();
          sub_2621AF75C();
          v20 = v39;
          LOBYTE(v45) = 0;
          sub_2621ACC38();
          v21 = v35;
          sub_2621AF78C();
          v22 = v42;
          v41 = v50;
          LOBYTE(v45) = 1;
          v30 = sub_2621AF77C();
          (*(v38 + 8))(v5, v21);
          (*(v22 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v31 = v41;
        }

        else
        {
          LOBYTE(v50) = 2;
          sub_2621AC38C();
          sub_2621AF75C();
          v20 = v39;
          sub_2621ACC38();
          sub_2621AF78C();
          (*(v37 + 8))(v16, v15);
          (*(v42 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v30 = 0;
          v31 = v50;
        }
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_2621AC488();
        v27 = v8;
        sub_2621AF75C();
        LOBYTE(v45) = 0;
        sub_2621ACC38();
        v28 = v34;
        sub_2621AF78C();
        v29 = v50;
        v44 = 1;
        sub_2621AF78C();
        (*(v36 + 8))(v27, v28);
        (*(v42 + 8))(v12, v9);
        v31 = v29;
        swift_unknownObjectRelease();
        v30 = v45;
        v20 = v39;
      }

      *v20 = v31;
      *(v20 + 8) = v30;
      *(v20 + 16) = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_2621ACC38()
{
  result = qword_27FF090E0;
  if (!qword_27FF090E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF090E0);
  }

  return result;
}

unint64_t sub_2621ACC90()
{
  result = qword_27FF090E8;
  if (!qword_27FF090E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF090E8);
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

uint64_t sub_2621ACD34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2621ACD7C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Layout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Layout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2621ACF7C()
{
  result = qword_27FF090F0;
  if (!qword_27FF090F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF090F0);
  }

  return result;
}

unint64_t sub_2621ACFD4()
{
  result = qword_27FF090F8;
  if (!qword_27FF090F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF090F8);
  }

  return result;
}

unint64_t sub_2621AD02C()
{
  result = qword_27FF09100;
  if (!qword_27FF09100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09100);
  }

  return result;
}

unint64_t sub_2621AD084()
{
  result = qword_27FF09108;
  if (!qword_27FF09108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09108);
  }

  return result;
}

unint64_t sub_2621AD0DC()
{
  result = qword_27FF09110;
  if (!qword_27FF09110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09110);
  }

  return result;
}

unint64_t sub_2621AD134()
{
  result = qword_27FF09118;
  if (!qword_27FF09118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09118);
  }

  return result;
}

unint64_t sub_2621AD18C()
{
  result = qword_27FF09120;
  if (!qword_27FF09120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09120);
  }

  return result;
}

unint64_t sub_2621AD1E4()
{
  result = qword_27FF09128;
  if (!qword_27FF09128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09128);
  }

  return result;
}

unint64_t sub_2621AD23C()
{
  result = qword_27FF09130;
  if (!qword_27FF09130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09130);
  }

  return result;
}

unint64_t sub_2621AD294()
{
  result = qword_27FF09138;
  if (!qword_27FF09138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09138);
  }

  return result;
}

unint64_t sub_2621AD2EC()
{
  result = qword_27FF09140;
  if (!qword_27FF09140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09140);
  }

  return result;
}

unint64_t sub_2621AD344()
{
  result = qword_27FF09148;
  if (!qword_27FF09148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09148);
  }

  return result;
}

uint64_t sub_2621AD398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6261646E61707865 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_2621AF7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461636E757274 && a2 == 0xE900000000000064 || (sub_2621AF7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1685217635 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2621AF7DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2621AD4D8()
{
  v0 = sub_2621AF63C();
  __swift_allocate_value_buffer(v0, qword_27FF09150);
  v1 = __swift_project_value_buffer(v0, qword_27FF09150);
  if (qword_27FF08F78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FF0AFE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static Log.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF08F68 != -1)
  {
    swift_once();
  }

  v2 = sub_2621AF63C();
  v3 = __swift_project_value_buffer(v2, qword_27FF09150);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2621AD664()
{
  sub_2621AE6DC();
  result = sub_2621AF6EC();
  qword_27FF09168 = result;
  return result;
}

uint64_t sub_2621AD6C4()
{
  v0 = sub_2621AF63C();
  __swift_allocate_value_buffer(v0, qword_27FF0AFE8);
  __swift_project_value_buffer(v0, qword_27FF0AFE8);
  if (qword_27FF08F70 != -1)
  {
    swift_once();
  }

  v1 = qword_27FF09168;
  return sub_2621AF64C();
}

void Logger.logAndCrash(_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1();
  v8 = v7;

  v9 = sub_2621AF62C();
  v10 = sub_2621AF6AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2621ADF44(v6, v8, &v13);
    _os_log_impl(&dword_2621A8000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2667262C0](v12, -1, -1);
    MEMORY[0x2667262C0](v11, -1, -1);
  }

  sub_2621AF73C();
  __break(1u);
}

uint64_t static Logger.generateSignpostID()()
{
  if (qword_27FF08F70 != -1)
  {
    swift_once();
  }

  v0 = qword_27FF09168;

  return sub_2621AF5FC();
}

uint64_t static Logger.begin(_:)()
{
  if (qword_27FF08F70 != -1)
  {
    swift_once();
  }

  v2 = qword_27FF09168;
  sub_2621AF5FC();
  sub_2621AF6CC();

  return sub_2621AF5EC();
}

uint64_t (*static Logger.begin<A>(_:andWrap:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v5 = sub_2621AF61C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-v10];
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  if (qword_27FF08F70 != -1)
  {
    swift_once();
  }

  v15 = qword_27FF09168;
  sub_2621AF5FC();
  sub_2621AF6CC();
  sub_2621AF5EC();
  v24 = v14;
  v16 = *(v6 + 32);
  v16(v9, v11, v5);
  v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v25;
  v16((v18 + v17), v9, v5);
  v19 = v18 + ((v17 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v24;
  v20 = (v18 + ((v17 + v7 + 31) & 0xFFFFFFFFFFFFFFF8));
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;

  return sub_2621AE59C;
}

uint64_t sub_2621ADBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2621AF6BC();
  if (qword_27FF08F70 != -1)
  {
    swift_once();
  }

  sub_2621AF5EC();
  return a6(a1);
}

uint64_t static Logger.end(_:_:)(uint64_t a1, uint64_t *a2)
{
  sub_2621AF6BC();
  if (qword_27FF08F70 != -1)
  {
    swift_once();
  }

  return sub_2621AF5EC();
}

uint64_t static Logger.event(_:)(uint64_t *a1)
{
  v1 = sub_2621AF61C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2621AF6DC();
  if (qword_27FF08F70 != -1)
  {
    swift_once();
  }

  sub_2621AF60C();
  sub_2621AF5EC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2621ADE74(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2621ADEE8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2621ADF44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2621ADF44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2621AE010(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2621AE728(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2621AE010(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2621AE11C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_2621AF72C();
    a6 = v11;
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

void *sub_2621AE11C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2621AE168(a1, a2);
  sub_2621AE298(&unk_2874EAED8);
  return v3;
}

void *sub_2621AE168(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2621AE384(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2621AF72C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2621AF67C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2621AE384(v10, 0);
        result = sub_2621AF6FC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2621AE298(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2621AE3F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2621AE384(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF09178, &qword_2621B0838);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2621AE3F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF09178, &qword_2621B0838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2621AE4EC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2621AE4FC()
{
  v1 = sub_2621AF61C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2621AE59C(uint64_t a1)
{
  v3 = *(sub_2621AF61C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v6 + 16);

  return sub_2621ADBCC(a1, v1 + v4, v7, v8, v10, v9);
}

uint64_t _s8SignpostVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s8SignpostVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_2621AE6DC()
{
  result = qword_27FF09170;
  if (!qword_27FF09170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF09170);
  }

  return result;
}

uint64_t sub_2621AE728(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t CodableCard.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF09180, &qword_2621B0850);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2621AEC30();
  sub_2621AF86C();
  v8 = v2;
  v9 = 0x277D4C000;
  if (!v2)
  {
    sub_2621AF0EC();
    sub_2621AF78C();
    v10 = v31[0];
    v11 = v31[1];
    v12 = objc_allocWithZone(MEMORY[0x277D4C728]);
    sub_2621AF140(v10, v11);
    v13 = sub_2621AF59C();
    sub_2621AB6F4(v10, v11);
    v14 = [v12 initWithData_];

    if (v14)
    {
      v15 = [objc_allocWithZone(MEMORY[0x277D4C230]) initWithProtobuf_];

      if (v15)
      {
        (*(v5 + 8))(v7, v4);
        sub_2621AB6F4(v10, v11);
        goto LABEL_11;
      }
    }

    sub_2621AF194();
    v8 = swift_allocError();
    swift_willThrow();
    sub_2621AB6F4(v10, v11);
    (*(v5 + 8))(v7, v4);
    v9 = 0x277D4C000uLL;
  }

  if (qword_27FF08F68 != -1)
  {
    swift_once();
  }

  v16 = sub_2621AF63C();
  __swift_project_value_buffer(v16, qword_27FF09150);
  v17 = v8;
  v18 = sub_2621AF62C();
  v19 = sub_2621AF69C();
  MEMORY[0x2667261F0](v8);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29[1] = 0;
    v21 = v9;
    v22 = v20;
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v24 = sub_2621AF7EC();
    v26 = sub_2621ADF44(v24, v25, v31);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2621A8000, v18, v19, "Failed to decode SFCard; creating an empty Object instead. Error: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2667262C0](v23, -1, -1);
    v27 = v22;
    v9 = v21;
    MEMORY[0x2667262C0](v27, -1, -1);
  }

  v15 = [objc_allocWithZone(*(v9 + 560)) init];
  MEMORY[0x2667261F0](v8);
LABEL_11:
  *v30 = v15;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2621AEC30()
{
  result = qword_27FF09188;
  if (!qword_27FF09188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09188);
  }

  return result;
}

uint64_t CodableCard.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF091A0, &qword_2621B0858);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D4C728]) initWithFacade_];
  if (v7 && (v8 = v7, v9 = [v7 data], v8, v9))
  {
    v10 = sub_2621AF5AC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2621AEC30();
  sub_2621AF87C();
  v14[0] = v10;
  v14[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF091A8, &qword_2621B0860);
  sub_2621AF1E8();
  sub_2621AF7CC();
  (*(v4 + 8))(v6, v3);
  return sub_2621AF308(v10, v12);
}

uint64_t sub_2621AEE5C()
{
  sub_2621AF83C();
  sub_2621AF66C();
  return sub_2621AF85C();
}

uint64_t sub_2621AEEB8(uint64_t a1)
{
  sub_2621AF83C();
  sub_2621AF66C();
  return sub_2621AF85C();
}

uint64_t sub_2621AEF00@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2621AF74C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2621AEF78@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2621AF74C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2621AEFD0(uint64_t a1)
{
  v2 = sub_2621AEC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2621AF00C(uint64_t a1)
{
  v2 = sub_2621AEC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableCard.Error.hashValue.getter()
{
  sub_2621AF83C();
  MEMORY[0x266726000](0);
  return sub_2621AF85C();
}

unint64_t sub_2621AF0EC()
{
  result = qword_27FF09190;
  if (!qword_27FF09190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09190);
  }

  return result;
}

void sub_2621AF140(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_2621AF194()
{
  result = qword_27FF09198;
  if (!qword_27FF09198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF09198);
  }

  return result;
}

unint64_t sub_2621AF1E8()
{
  result = qword_27FF091B0;
  if (!qword_27FF091B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF091A8, &qword_2621B0860);
    sub_2621AF2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF091B0);
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

unint64_t sub_2621AF2B4()
{
  result = qword_27FF091B8;
  if (!qword_27FF091B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF091B8);
  }

  return result;
}

uint64_t sub_2621AF308(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2621AB6F4(result, a2);
  }

  return result;
}

unint64_t sub_2621AF320()
{
  result = qword_27FF091C0;
  if (!qword_27FF091C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF091C0);
  }

  return result;
}

uint64_t sub_2621AF380(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2621AF3C8(uint64_t result, int a2, int a3)
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

unint64_t sub_2621AF438()
{
  result = qword_27FF091C8;
  if (!qword_27FF091C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF091C8);
  }

  return result;
}

unint64_t sub_2621AF490()
{
  result = qword_27FF091D0;
  if (!qword_27FF091D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF091D0);
  }

  return result;
}

unint64_t sub_2621AF4E8()
{
  result = qword_27FF091D8;
  if (!qword_27FF091D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF091D8);
  }

  return result;
}