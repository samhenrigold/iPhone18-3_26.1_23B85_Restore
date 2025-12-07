uint64_t sub_258474D50()
{
  if (*v0)
  {
    return 0x4449656369766564;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_258474D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_258533E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258533E2C();

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

uint64_t sub_258474E78(uint64_t a1)
{
  v2 = sub_258476734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258474EB4(uint64_t a1)
{
  v2 = sub_258476734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258474EF8()
{
  sub_258533EEC();
  MEMORY[0x259C81F40](0);
  return sub_258533F2C();
}

uint64_t sub_258474F64(uint64_t a1)
{
  sub_258533EEC();
  MEMORY[0x259C81F40](0);
  return sub_258533F2C();
}

uint64_t sub_258474FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000025853FA00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_258533E2C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_258475060(uint64_t a1)
{
  v2 = sub_2584766E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25847509C(uint64_t a1)
{
  v2 = sub_2584766E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2584750D8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_258475EE8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_258475128(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_258533E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_258533E2C();
    }
  }

  return result;
}

uint64_t sub_2584751E0()
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584752B4(uint64_t a1)
{
  sub_2585334AC();
}

uint64_t sub_258475374(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

unint64_t sub_258475444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258476324(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_258475474(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065707954;
  v4 = 0x746E696F70646E65;
  v5 = 0x800000025853F9E0;
  if (v2 == 2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0x4449656369766564;
  }

  if (v2 != 2)
  {
    v5 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000025853F9B0;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_258475504()
{
  v1 = *v0;
  v2 = 0x746E696F70646E65;
  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x4449656369766564;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

unint64_t sub_258475590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258476324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2584755C4(uint64_t a1)
{
  v2 = sub_258475E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258475600(uint64_t a1)
{
  v2 = sub_258475E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25847563C()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584756B0(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_258475704@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_258533CEC();

  *a2 = v3 != 0;
  return result;
}

uint64_t MediaContinuityEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930020, &qword_258536DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258475E40();
  sub_258533F3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v34 = 1;
  sub_258475E94();
  sub_258533D4C();
  v33 = 2;
  v9 = sub_258533D3C();
  v11 = v10;
  v30 = v9;
  v32 = 3;
  v12 = sub_258533D3C();
  v14 = v13;
  v29 = v12;
  v31 = 0;
  v15 = sub_258533D3C();
  v20 = sub_2584B4D38(v15, v16, v17, v18);
  v21 = v8;
  v23 = v22;
  v24 = v5;
  v26 = v25;
  (*(v6 + 8))(v21, v24);
  *a2 = v20;
  a2[1] = v23;
  v27 = v29;
  v28 = v30;
  a2[2] = v26;
  a2[3] = v28;
  a2[4] = v11;
  a2[5] = v27;
  a2[6] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MediaContinuityEndpoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930038, &qword_258536DB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  v18 = v1[1];
  v19 = v8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];
  v20 = v1[4];
  v21 = v10;
  v16 = v11;
  v17 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258475E40();
  sub_258533F4C();
  v25 = 1;
  sub_258476370();
  sub_258533DBC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v17;
  v14 = v18;
  v13 = v19;
  v24 = 2;
  sub_258533DAC();
  v23 = 3;
  sub_258533DAC();
  sub_2584B3D20(v13, v14, v12);
  v22 = 0;
  sub_258533DAC();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_258475D0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    return result;
  }

  v3 = *(v0[1] + 16 * v1);
  v0[2] = v1 + 1;

  return v3;
}

BOOL _s18MediaContinuityKit0aB8EndpointV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a2[5];
    v7 = a2[6];
    return (a1[3] == a2[3] && a1[4] == a2[4] || (sub_258533E2C() & 1) != 0) && (v4 == v6 && v5 == v7 || (sub_258533E2C() & 1) != 0);
  }

  return result;
}

unint64_t sub_258475E40()
{
  result = qword_27F930028;
  if (!qword_27F930028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930028);
  }

  return result;
}

unint64_t sub_258475E94()
{
  result = qword_27F930030;
  if (!qword_27F930030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930030);
  }

  return result;
}

uint64_t sub_258475EE8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930070, &qword_258537170);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930078, &qword_258537178);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2584766E0();
  sub_258533F3C();
  if (v1)
  {
    goto LABEL_5;
  }

  v15 = a1;
  v10 = v17;
  if (*(sub_258533D7C() + 16) != 1)
  {
    v9 = sub_258533BCC();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930088, &qword_258537180);
    *v12 = &type metadata for MediaContinuityEndpoint.EndpointType;
    sub_258533D1C();
    sub_258533BBC();
    (*(*(v9 - 8) + 104))(v12, *MEMORY[0x277D84160], v9);
    swift_willThrow();
    v10[1](v8, v6);
    swift_unknownObjectRelease();
    a1 = v15;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v9;
  }

  sub_258476734();
  sub_258533D0C();
  v14 = v6;
  v19 = 0;
  v9 = sub_258533D3C();
  v18 = 1;
  sub_258533D3C();
  v17 = v10 + 1;
  (*(v16 + 8))(v5, v3);
  (*v17)(v8, v14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v9;
}

unint64_t sub_258476324(uint64_t a1, uint64_t a2)
{
  v2 = sub_258533CEC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_258476370()
{
  result = qword_27F930040;
  if (!qword_27F930040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930040);
  }

  return result;
}

uint64_t sub_2584763C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25847640C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_258476474(uint64_t a1, int a2)
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

uint64_t sub_2584764BC(uint64_t result, int a2, int a3)
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

unint64_t sub_258476530()
{
  result = qword_27F930048;
  if (!qword_27F930048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930048);
  }

  return result;
}

unint64_t sub_258476588()
{
  result = qword_27F930050;
  if (!qword_27F930050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930050);
  }

  return result;
}

unint64_t sub_2584765E0()
{
  result = qword_27F930058;
  if (!qword_27F930058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930058);
  }

  return result;
}

unint64_t sub_258476638()
{
  result = qword_27F930060;
  if (!qword_27F930060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930060);
  }

  return result;
}

unint64_t sub_25847668C()
{
  result = qword_27F930068;
  if (!qword_27F930068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930068);
  }

  return result;
}

unint64_t sub_2584766E0()
{
  result = qword_27F930080;
  if (!qword_27F930080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930080);
  }

  return result;
}

unint64_t sub_258476734()
{
  result = qword_27F930090;
  if (!qword_27F930090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930090);
  }

  return result;
}

unint64_t sub_2584767B4()
{
  result = qword_27F9300A8;
  if (!qword_27F9300A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300A8);
  }

  return result;
}

unint64_t sub_25847680C()
{
  result = qword_27F9300B0;
  if (!qword_27F9300B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300B0);
  }

  return result;
}

unint64_t sub_258476864()
{
  result = qword_27F9300B8;
  if (!qword_27F9300B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300B8);
  }

  return result;
}

unint64_t sub_2584768BC()
{
  result = qword_27F9300C0;
  if (!qword_27F9300C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300C0);
  }

  return result;
}

unint64_t sub_258476914()
{
  result = qword_27F9300C8;
  if (!qword_27F9300C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300C8);
  }

  return result;
}

unint64_t sub_25847696C()
{
  result = qword_27F9300D0;
  if (!qword_27F9300D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300D0);
  }

  return result;
}

uint64_t MediaStreamErrors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

unint64_t sub_258476A54()
{
  result = qword_27F9300D8;
  if (!qword_27F9300D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300D8);
  }

  return result;
}

unint64_t sub_258476ABC(uint64_t a1)
{
  result = sub_258476AE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258476AE4()
{
  result = qword_27F9300E0;
  if (!qword_27F9300E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaStreamErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaStreamErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258476C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25847B6EC(a3, v22 - v9);
  v11 = sub_25853368C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_258465168(v10, &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25853362C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25853348C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_258476F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25847B6EC(a3, v22 - v9);
  v11 = sub_25853368C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_258465168(v10, &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25853362C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25853348C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930190, &unk_258537FF0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930190, &unk_258537FF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2584771D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25847B6EC(a3, v22 - v9);
  v11 = sub_25853368C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_258465168(v10, &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25853362C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25853348C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t MediaContinuityServer.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

uint64_t MediaContinuityServer.__allocating_init(usage:shouldAdvertise:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300E8, qword_258537540);
  swift_allocObject();
  v4 = sub_258479DB4(v2);
  type metadata accessor for MediaContinuityServer(0);
  v5 = swift_allocObject();
  return sub_25847A640(v7, v2, v4, v5);
}

uint64_t sub_258477594(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v2[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v2[16] = *(v4 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584776AC, v1, 0);
}

uint64_t sub_2584776AC()
{
  v21 = v0;
  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[19] = __swift_project_value_buffer(v1, qword_27F93CFC0);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446210;
    v0[10] = v4;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
    v7 = sub_258533DFC();
    v9 = sub_2584713B0(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25845E000, v2, v3, "%{public}s Activating", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v10 = v0[12];
  if (*(v10 + 192))
  {
    sub_25847ABF0();
    v11 = swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v0[22] = v11;
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_258477FD8;

    return sub_2584795C4(v11);
  }

  else
  {
    *(v10 + 192) = 1;
    v15 = *(v10 + 176);
    v16 = *(v10 + 184);
    __swift_project_boxed_opaque_existential_1((v10 + 152), v15);
    v19 = (*(v16 + 64) + **(v16 + 64));
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_258477A08;
    v18 = v0[18];

    return v19(v18, v0 + 2, v15, v16);
  }
}

uint64_t sub_258477A08()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_25847817C;
  }

  else
  {
    v4 = sub_258477B34;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258477B34()
{
  v43 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  if (*(v0[12] + 192) != 1)
  {
    v11 = v0[15];
    v39 = v0[14];
    v41 = v0[18];
    sub_25847AC44(v2, v1, v3, v4, v6, v5, v7);
    sub_25847ABF0();
    v10 = swift_allocError();
    *v12 = 0;
    swift_willThrow();
    (*(v11 + 8))(v41, v39);
    goto LABEL_5;
  }

  v8 = v0[21];
  v9 = v0[11];
  v42[0] = v0[2];
  v42[1] = v1;
  v42[2] = v3;
  v42[3] = v4;
  v42[4] = v6;
  v42[5] = v5;
  v40 = v7;
  v42[6] = v7;
  sub_258478848(v42, v9);
  if (v8)
  {
    v10 = v8;
    (*(v0[15] + 8))(v0[18], v0[14]);
    sub_25847AC44(v2, v1, v3, v4, v6, v5, v40);
LABEL_5:
    v0[22] = v10;
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_258477FD8;

    return sub_2584795C4(v10);
  }

  v37 = v0[17];
  v38 = v0[18];
  v15 = v0[15];
  v36 = v0[14];
  v16 = v0[12];
  v17 = v0[13];
  sub_25847AC44(v2, v1, v3, v4, v6, v5, v40);
  v18 = sub_25853368C();
  v19 = v17;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v15 + 16))(v37, v38, v36);
  v20 = sub_25847AE64(&qword_27F930100, &protocol conformance descriptor for MediaContinuityServer);
  v21 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v16;
  *(v22 + 3) = v20;
  *(v22 + 4) = v16;
  (*(v15 + 32))(&v22[v21], v37, v36);
  swift_retain_n();
  *(v16 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask) = sub_258476C88(0, 0, v19, &unk_258537570, v22);

  *(v16 + 192) = 2;

  v23 = sub_258532A2C();
  v24 = sub_2585338EC();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[18];
  v27 = v0[14];
  v28 = v0[15];
  if (v25)
  {
    v29 = v0[12];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v30 = 136446210;
    v0[9] = v29;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
    v32 = sub_258533DFC();
    v34 = sub_2584713B0(v32, v33, v42);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_25845E000, v23, v24, "%{public}s Activation complete", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x259C82900](v31, -1, -1);
    MEMORY[0x259C82900](v30, -1, -1);
  }

  (*(v28 + 8))(v26, v27);

  v35 = v0[1];

  return v35();
}

uint64_t sub_258477FD8()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_2584780E8, v1, 0);
}

uint64_t sub_2584780E8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_25847817C()
{
  v1 = v0[21];
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_258477FD8;

  return sub_2584795C4(v1);
}

uint64_t sub_258478238()
{
  v20 = v0;
  v1 = v0[5];
  if (*(v1 + 192) > 2u)
  {
    v17 = v0[1];

    return v17();
  }

  else
  {
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
    }

    v2 = sub_258532A4C();
    v0[6] = __swift_project_value_buffer(v2, qword_27F93CFC0);

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[5];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136446210;
      v0[4] = v5;
      type metadata accessor for MediaContinuityServer(0);
      sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
      v8 = sub_258533DFC();
      v10 = sub_2584713B0(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25845E000, v3, v4, "%{public}s Invalidating", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C82900](v7, -1, -1);
      MEMORY[0x259C82900](v6, -1, -1);
    }

    v11 = v0[5];
    *(v1 + 192) = 3;
    if (*(v11 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();
    }

    v12 = v0[5];
    v0[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
    sub_2585337FC();
    v13 = v12[22];
    v14 = v12[23];
    __swift_project_boxed_opaque_existential_1(v12 + 19, v13);
    v18 = (*(v14 + 72) + **(v14 + 72));
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    v15[1] = sub_2584785B4;

    return v18(v13, v14);
  }
}

uint64_t sub_2584785B4()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2584786C4, v1, 0);
}

uint64_t sub_2584786C4()
{
  v12 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[3] = v3;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
    v6 = sub_258533DFC();
    v8 = sub_2584713B0(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v1, v2, "%{public}s Invalidation complete", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

void sub_258478848(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  if (*(v2 + 146) != 1)
  {
    if (!v8)
    {
      v11 = 1;
      goto LABEL_9;
    }

    v22 = a1[1];
    v23 = a1[6];
    v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301B0, &qword_258537928) + 48));
    v13 = v9;
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v17 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
    v19 = v2 + v17;
    v4 = v16;
    v6 = v15;
    v7 = v14;
    v9 = v13;
    v5 = v22;
    (*(*(v18 - 8) + 16))(a2, v19, v18);
    *v12 = v4;
    v12[1] = v22;
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v12[5] = v9;
    v12[6] = v23;
    v10 = v23;
LABEL_7:
    type metadata accessor for MediaContinuityServer.ActivationResult(0);
    swift_storeEnumTagMultiPayload();
    sub_25847B75C(v4, v5, v6, v7, v8, v9, v10);
    return;
  }

  if (!v8)
  {
    v24 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
    (*(*(v20 - 8) + 16))(a2, v2 + v24, v20);
    goto LABEL_7;
  }

  v11 = 2;
LABEL_9:
  sub_25847ABF0();
  swift_allocError();
  *v21 = v11;
  swift_willThrow();
}

uint64_t sub_258478A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301A0, &qword_258537918);
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301A8, &qword_258537920);
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258478B80, a4, 0);
}

uint64_t sub_258478B80()
{
  v17 = v0;
  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[29] = __swift_project_value_buffer(v1, qword_27F93CFC0);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[21];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    v0[20] = v4;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
    v7 = sub_258533DFC();
    v9 = sub_2584713B0(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25845E000, v2, v3, "%{public}s Starting monitoring task", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558);
  sub_2585336FC();
  v10 = sub_25847AE64(&qword_27F930100, &protocol conformance descriptor for MediaContinuityServer);
  v11 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventsContinuation;
  v0[30] = v10;
  v0[31] = v11;
  v12 = v0[21];
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_258478DFC;
  v14 = v0[26];

  return MEMORY[0x2822005A8](v0 + 2, v12, v10, v14, v0 + 17);
}

uint64_t sub_258478DFC()
{
  v2 = *v1;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_258479258;
  }

  else
  {
    v4 = sub_258478F10;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258478F10()
{
  v26 = v0;
  if (!*(v0 + 40))
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    goto LABEL_5;
  }

  sub_258464C18((v0 + 16), v0 + 56);
  if (sub_25853376C())
  {
    v2 = *(v0 + 216);
    v1 = *(v0 + 224);
    v3 = *(v0 + 208);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    (*(v2 + 8))(v1, v3);
LABEL_5:

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 168);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446210;
      *(v0 + 144) = v6;
      type metadata accessor for MediaContinuityServer(0);
      sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
      v9 = sub_258533DFC();
      v11 = sub_2584713B0(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25845E000, v4, v5, "%{public}s Exiting monitoring task", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }

  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 184);
  v17 = *(v0 + 168);
  v18 = *(v17 + 144);
  v19 = *(v17 + 145);
  v20 = *(v17 + 128);
  *(v0 + 280) = *(v17 + 112);
  *(v0 + 296) = v20;
  *(v0 + 312) = v18;
  *(v0 + 313) = v19;
  sub_258464C30(v0 + 56, v0 + 96);
  *(v0 + 152) = sub_2584A7C7C(v0 + 280, (v0 + 96));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
  sub_2585337EC();

  (*(v15 + 8))(v14, v16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v21 = *(v0 + 240);
  v22 = *(v0 + 168);
  v23 = swift_task_alloc();
  *(v0 + 256) = v23;
  *v23 = v0;
  v23[1] = sub_258478DFC;
  v24 = *(v0 + 208);

  return MEMORY[0x2822005A8](v0 + 16, v22, v21, v24, v0 + 136);
}

uint64_t sub_258479258()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  v1 = v0[17];
  v0[33] = v1;
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_25847930C;

  return sub_2584795C4(v1);
}

uint64_t sub_25847930C()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_25847941C, v1, 0);
}

uint64_t sub_25847941C()
{
  v12 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 168);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v0 + 144) = v3;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
    v6 = sub_258533DFC();
    v8 = sub_2584713B0(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v1, v2, "%{public}s Exiting monitoring task", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2584795C4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2584795E4, v1, 0);
}

uint64_t sub_2584795E4()
{
  v29 = v0;
  v1 = v0[5];
  if (*(v1 + 192) > 2u)
  {
    v26 = v0[1];

    return v26();
  }

  else
  {
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
    }

    v2 = v0[4];
    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93CFC0);

    v4 = v2;
    v5 = sub_258532A2C();
    v6 = sub_2585338CC();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[4];
      v7 = v0[5];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v9 = 136446466;
      v0[3] = v7;
      type metadata accessor for MediaContinuityServer(0);
      sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
      v12 = sub_258533DFC();
      v14 = sub_2584713B0(v12, v13, &v28);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_25845E000, v5, v6, "%{public}s Interruption with error:%@", v9, 0x16u);
      sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    v18 = v0[4];
    v17 = v0[5];
    *(v1 + 192) = 4;
    if (*(v17 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();
    }

    v19 = v0[4];
    v20 = v0[5];
    v0[2] = v18;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
    sub_2585337FC();
    v22 = v20[22];
    v23 = v20[23];
    __swift_project_boxed_opaque_existential_1(v20 + 19, v22);
    v27 = (*(v23 + 72) + **(v23 + 72));
    v24 = swift_task_alloc();
    v0[6] = v24;
    *v24 = v0;
    v24[1] = sub_258463830;

    return v27(v22, v23);
  }
}

uint64_t MediaContinuityServer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  v1 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaContinuityServer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  v1 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_258479BA4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MediaContinuityServer(0);
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

uint64_t MediaContinuityServer.description.getter()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000016, 0x8000000258540400);
  type metadata accessor for MediaContinuityServer(0);
  sub_25847AE64(&qword_27F930138, &protocol conformance descriptor for MediaContinuityServer);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_258479CC4()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000016, 0x8000000258540400);
  type metadata accessor for MediaContinuityServer(0);
  sub_25847AE64(&qword_27F930138, &protocol conformance descriptor for MediaContinuityServer);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_258479DB4(int a1)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301C8, &qword_258537940);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301D0, &qword_258537948);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301D8, &qword_258537950);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v41 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301E0, &qword_258537958);
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301E8, &unk_258537960);
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v41 = &v41 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558);
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v41 - v15;
  v17 = sub_2585329BC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_2585329AC();
  v21 = sub_25853294C();
  v23 = v22;
  (*(v18 + 8))(v20, v17);
  v24 = v46;
  *(v2 + 120) = v21;
  *(v2 + 128) = v23;
  *(v2 + *(*v2 + 168)) = 0;
  v25 = *(*v2 + 176);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v26 - 8) + 56))(v2 + v25, 1, 1, v26);
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  *(v2 + *(*v2 + 216)) = 0;
  *(v2 + 112) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301F0, &qword_258537970);
  v27 = v43;
  (*(v9 + 104))(v11, *MEMORY[0x277D858A0], v43);
  v28 = v41;
  sub_2585337BC();
  (*(v9 + 8))(v11, v27);
  (*(v14 + 32))(v2 + *(*v2 + 152), v16, v42);
  (*(v44 + 32))(v2 + *(*v2 + 160), v28, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301F8, &qword_258537978);
  v30 = v51;
  v29 = v52;
  v31 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x277D85778], v53);
  v33 = v47;
  v32 = v48;
  sub_25853369C();
  (*(v29 + 8))(v30, v31);
  (*(v49 + 32))(v2 + *(*v2 + 200), v33, v50);
  (*(v54 + 32))(v2 + *(*v2 + 208), v32, v55);
  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v34 = sub_258532A4C();
  __swift_project_value_buffer(v34, qword_27F93CFC0);

  v35 = sub_258532A2C();
  v36 = sub_2585338EC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 136315394;
    v57 = 0;
    v58 = 0xE000000000000000;
    v59 = v38;
    sub_258533B8C();
    MEMORY[0x259C81500](0xD000000000000027, 0x8000000258540500);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300E8, qword_258537540);
    sub_25847B7A0(&qword_27F930200, &unk_25853C550);
    v56 = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);

    v39 = sub_2584713B0(v57, v58, &v59);

    *(v37 + 4) = v39;
    *(v37 + 12) = 1024;
    *(v37 + 14) = v24 & 1;
    _os_log_impl(&dword_25845E000, v35, v36, "%s created, shouldAdverstise:%{BOOL}d", v37, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x259C82900](v38, -1, -1);
    MEMORY[0x259C82900](v37, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_25847A640(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v34 = a3;
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301B8, &qword_258537938);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
  v10 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300E8, qword_258537540);
  v39[4] = sub_25847B7A0(&qword_27F9301C0, &unk_25853C598);
  v39[0] = v34;
  swift_defaultActor_initialize();
  *(a4 + 192) = 0;
  *(a4 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask) = 0;
  v17 = *(a1 + 1);
  *(a4 + 112) = *a1;
  *(a4 + 128) = v17;
  v34 = a1;
  *(a4 + 144) = *(a1 + 16);
  *(a4 + 146) = v36;
  sub_258464C30(v39, a4 + 152);
  type metadata accessor for MediaContinuitySession(0);
  (*(v7 + 104))(v9, *MEMORY[0x277D858A0], v6);
  sub_2585337BC();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 32))(a4 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream, v16, v13);
  (*(v10 + 32))(a4 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventsContinuation, v12, v35);
  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v18 = sub_258532A4C();
  __swift_project_value_buffer(v18, qword_27F93CFC0);

  v19 = sub_258532A2C();
  v20 = sub_2585338EC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = a4;
    v38 = v22;
    *v21 = 136446722;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110, &protocol conformance descriptor for MediaContinuityServer);
    v23 = sub_258533DFC();
    v25 = sub_2584713B0(v23, v24, &v38);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    if (*(v34 + 33))
    {
      v26 = v34[3];
      v27 = *v34;
      v28 = v34[2] | v34[1];
      if (v28 | *v34 | v26 || *(v34 + 32))
      {
        v33 = v28 | v26;
        if (*(v34 + 32) || v27 != 1 || v33)
        {
          if (*(v34 + 32) || v27 != 2 || v33)
          {
            v29 = 0xEF676E69726F7272;
            v30 = 0x694D656E6F685069;
            if (!*(v34 + 32) && v27 == 3 && !v33)
            {
              v30 = 0xD000000000000010;
              v29 = 0x80000002585402B0;
            }
          }

          else
          {
            v29 = 0xE700000000000000;
            v30 = 0x72616365646973;
          }
        }

        else
        {
          v29 = 0xE700000000000000;
          v30 = 0x79616C70726961;
        }
      }

      else
      {
        v29 = 0x80000002585402D0;
        v30 = 0xD000000000000011;
      }
    }

    else
    {
      v29 = 0x80000002585402F0;
      v30 = 0xD000000000000012;
    }

    v31 = sub_2584713B0(v30, v29, &v38);

    *(v21 + 14) = v31;
    *(v21 + 22) = 1026;
    *(v21 + 24) = v36 & 1;
    _os_log_impl(&dword_25845E000, v19, v20, "Created %{public}s usage:%{public}s, shouldAdvertise:%{BOOL,public}d", v21, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v22, -1, -1);
    MEMORY[0x259C82900](v21, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  return a4;
}

unint64_t sub_25847ABF0()
{
  result = qword_27F9300F8;
  if (!qword_27F9300F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300F8);
  }

  return result;
}

void sub_25847AC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
  }
}

uint64_t sub_25847AC88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25847AD60(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_258478A48(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25847AE64(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaContinuityServer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25847AEAC()
{
  result = qword_27F930140;
  if (!qword_27F930140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930140);
  }

  return result;
}

unint64_t sub_25847AF00(uint64_t a1)
{
  result = sub_25847ABF0();
  *(a1 + 8) = result;
  return result;
}

void sub_25847AF30(uint64_t a1)
{
  sub_25847B2B8(319, &qword_27F930158, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_25847B2B8(319, &qword_27F930160, MEMORY[0x277D858B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MediaContinuityServer.activate()(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return v6(a1);
}

uint64_t dispatch thunk of MediaContinuityServer.invalidate()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_258464F5C;

  return v4();
}

void sub_25847B2B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MediaContinuitySession(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaStreamInternalEvent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaStreamInternalEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25847B4FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25847B534(uint64_t a1)
{
  sub_25847B5A8();
  if (v1 <= 0x3F)
  {
    sub_25847B60C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25847B5A8()
{
  if (!qword_27F930178)
  {
    sub_25847B2B8(0, &qword_27F930158, MEMORY[0x277D858D8]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F930178);
    }
  }
}

void sub_25847B60C(uint64_t a1)
{
  if (!qword_27F930180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F930130, &qword_258537590);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F930180);
    }
  }
}

unint64_t sub_25847B694()
{
  result = qword_27F930188;
  if (!qword_27F930188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930188);
  }

  return result;
}

uint64_t sub_25847B6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25847B75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
  }
}

uint64_t sub_25847B7A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9300E8, qword_258537540);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25847B7F4()
{
  v0 = sub_258532D3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258532D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258532D6C();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CD8CB0])
  {
    return 0;
  }

  if (v8 != *MEMORY[0x277CD8CA8])
  {
    if (v8 != *MEMORY[0x277CD8CB8])
    {
      if (v8 == *MEMORY[0x277CD8CA0])
      {
        return 1;
      }

      if (v8 == *MEMORY[0x277CD8CC0])
      {
        return 5;
      }

      (*(v5 + 8))(v7, v4);
    }

    return 0;
  }

  sub_258532D7C();
  v10 = (*(v1 + 88))(v3, v0);
  if (v10 != *MEMORY[0x277CD8CD8])
  {
    if (v10 == *MEMORY[0x277CD8CE8])
    {
      return 4;
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  if (sub_258532D5C() == 813132908 && v11 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v12 = sub_258533E2C();

    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MediaContinuitySession.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

uint64_t MediaContinuitySession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v4 = sub_2585329BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaContinuitySession.__allocating_init(usage:endpoint:clientSessionID:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930208, &qword_258537990);
  v189 = *(v6 - 8);
  v190 = v6;
  MEMORY[0x28223BE20](v6);
  v186 = &v169 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  v187 = *(v8 - 8);
  v188 = v8;
  MEMORY[0x28223BE20](v8);
  v185 = &v169 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930218, &unk_2585379A0);
  v183 = *(v10 - 8);
  v184 = v10;
  MEMORY[0x28223BE20](v10);
  v182 = &v169 - v11;
  v198 = sub_2585329BC();
  v181 = *(v198 - 8);
  v12 = MEMORY[0x28223BE20](v198);
  v180 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v197 = &v169 - v14;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v15 = MEMORY[0x28223BE20](v170);
  v169 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v191 = &v169 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v178 = &v169 - v20;
  MEMORY[0x28223BE20](v19);
  v21 = *(a1 + 8);
  v213 = *a1;
  v22 = *(a1 + 24);
  v209 = *(a1 + 16);
  v210 = v21;
  v211 = v22;
  v212 = *(a1 + 32);
  v214 = *(a1 + 33);
  v23 = *a2;
  v177 = a2[1];
  v175 = v23;
  v24 = *(a2 + 4);
  v176 = *(a2 + 5);
  v205 = *(a2 + 6);
  v206 = v24;
  v196 = a3;
  v199 = &v169 - v25;
  sub_2584AC3B8(a3, &v169 - v25, &qword_27F931360, &unk_25853CD10);
  v262 = 0;
  v260 = 0u;
  v261 = 0u;
  v26 = type metadata accessor for NetworkBackedControlConnectionVendor();
  v27 = swift_allocObject();
  v259[3] = v26;
  v259[4] = &off_28698FD28;
  v259[0] = v27;
  v200 = type metadata accessor for MediaStreamVendorAVConference();
  v208 = swift_allocObject();
  v204 = type metadata accessor for TimeSyncBackedTimeSynchronizerVendor();
  v207 = swift_allocObject();
  v203 = type metadata accessor for TimeSyncHeartbeatVendor();
  v28 = swift_allocObject();
  v202 = type metadata accessor for FoundationBackedUserDefaultsProvider();
  v29 = swift_allocObject();
  v29[3] = 0xD00000000000001CLL;
  v29[4] = 0x800000025853FF50;
  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v31 = sub_25853341C();
  v32 = [v30 initWithSuiteName_];

  v29[2] = v32;
  v201 = type metadata accessor for TelemetryProviderVendor();
  v33 = swift_allocObject();
  v34 = type metadata accessor for CoexSessionVendor();
  v174 = v34;
  v35 = swift_allocObject();
  v36 = type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
  swift_allocObject();

  v37 = sub_2584E7828();
  v257 = v36;
  v258 = &off_28698FC50;
  v256[0] = v37;
  v38 = type metadata accessor for ControlConnectionMigrationManager();
  v173 = v38;
  v39 = swift_allocObject();
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v256, v36);
  MEMORY[0x28223BE20](v40);
  v42 = (&v169 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = sub_2584A53F8(*v42, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v256);
  v45 = type metadata accessor for DateBackedTimeProvider();
  v172 = v45;
  v46 = swift_allocObject();
  v47 = v200;
  v257 = v200;
  v258 = &off_2869917C8;
  v256[0] = v208;
  v255 = &off_286990C38;
  v254 = v204;
  v253[0] = v207;
  v252 = &off_28698E5F8;
  v251 = v203;
  v194 = v29;
  v195 = v28;
  v250[0] = v28;
  v249 = &off_28698F5C8;
  v248 = v202;
  v247[0] = v29;
  v246 = &off_286990B00;
  v245 = v201;
  v193 = v33;
  v244[0] = v33;
  v243 = &off_28698F4C8;
  v242 = v34;
  v192 = v35;
  v241[0] = v35;
  v240 = &off_28698BFD8;
  v239 = v38;
  v238[0] = v44;
  v237 = &off_28698F1D0;
  v236 = v45;
  v235[0] = v46;
  v233 = &type metadata for NetworkBackedNetworkPathVendor;
  v234 = &off_286990B30;
  type metadata accessor for MediaContinuitySession(0);
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v256, v47);
  MEMORY[0x28223BE20](v49);
  v171 = (&v169 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))();
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v253, v254);
  MEMORY[0x28223BE20](v52);
  v54 = (&v169 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = __swift_mutable_project_boxed_opaque_existential_1(v250, v251);
  MEMORY[0x28223BE20](v56);
  v58 = (&v169 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v247, v248);
  MEMORY[0x28223BE20](v60);
  v62 = (&v169 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = __swift_mutable_project_boxed_opaque_existential_1(v244, v245);
  MEMORY[0x28223BE20](v64);
  v66 = (&v169 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66);
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v241, v242);
  MEMORY[0x28223BE20](v68);
  v70 = (&v169 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  v72 = __swift_mutable_project_boxed_opaque_existential_1(v238, v239);
  MEMORY[0x28223BE20](v72);
  v74 = (&v169 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74);
  v76 = __swift_mutable_project_boxed_opaque_existential_1(v235, v236);
  MEMORY[0x28223BE20](v76);
  v78 = (&v169 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78);
  __swift_mutable_project_boxed_opaque_existential_1(v232, v233);
  v80 = *v171;
  v81 = *v54;
  v82 = *v58;
  v83 = *v62;
  v84 = *v66;
  v85 = *v70;
  v86 = *v74;
  v87 = *v78;
  v231[4] = &off_2869917C8;
  v231[3] = v200;
  v231[0] = v80;
  v230[4] = &off_286990C38;
  v230[3] = v204;
  v230[0] = v81;
  v229[4] = &off_28698E5F8;
  v229[3] = v203;
  v229[0] = v82;
  v228[4] = &off_28698F5C8;
  v228[3] = v202;
  v228[0] = v83;
  v227 = &off_286990B00;
  v226 = v201;
  v225[0] = v84;
  v224[4] = &off_28698F4C8;
  v224[3] = v174;
  v224[0] = v85;
  v223[4] = &off_28698BFD8;
  v223[3] = v173;
  v223[0] = v86;
  v222[4] = &off_28698F1D0;
  v222[3] = v172;
  v222[0] = v87;
  v221[3] = &type metadata for NetworkBackedNetworkPathVendor;
  v221[4] = &off_286990B30;
  swift_defaultActor_initialize();
  v204 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  sub_2585329AC();
  *(v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) = 0;
  v88 = (v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint);
  v88[6] = 0;
  *(v88 + 1) = 0u;
  *(v88 + 2) = 0u;
  *v88 = 0u;
  v89 = v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  *v89 = 0u;
  *(v89 + 16) = 0u;
  *(v89 + 32) = 0;
  v90 = v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  *(v90 + 32) = 0;
  *v90 = 0u;
  *(v90 + 16) = 0u;
  *(v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask) = 0;
  v91 = v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  *(v91 + 32) = 0;
  *v91 = 0u;
  *(v91 + 16) = 0u;
  v92 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930258, &qword_2585379B0);
  v93 = swift_allocObject();
  swift_defaultActor_initialize();
  v94 = MEMORY[0x277D84F98];
  *(v93 + 112) = MEMORY[0x277D84F98];
  *(v93 + 120) = v94;
  *(v93 + 136) = 0;
  *(v93 + 144) = 0;
  *(v93 + 128) = v94;
  *(v93 + 152) = 1;
  *(v48 + v92) = v93;
  v95 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930268, &qword_2585379B8);
  v96 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v96 + 112) = v94;
  *(v96 + 120) = v94;
  *(v96 + 136) = 0;
  *(v96 + 144) = 0;
  *(v96 + 128) = v94;
  *(v96 + 152) = 1;
  *(v48 + v95) = v96;
  v97 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  (*(*(v98 - 8) + 56))(v48 + v97, 1, 1, v98);
  *(v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor) = 0;
  v99 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v100 - 8) + 56))(v48 + v99, 1, 1, v100);
  v101 = v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession;
  *v101 = 0u;
  *(v101 + 16) = 0u;
  *(v101 + 32) = 0;
  v102 = v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  *(v102 + 32) = 0;
  *v102 = 0u;
  *(v102 + 16) = 0u;
  v103 = v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
  *v103 = 0u;
  *(v103 + 16) = 0u;
  *(v103 + 32) = 0u;
  *(v103 + 48) = 0;
  v104 = v48 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage;
  v105 = v209;
  v106 = v210;
  *v104 = v213;
  *(v104 + 8) = v106;
  *(v104 + 16) = v105;
  *(v104 + 24) = v211;
  *(v104 + 32) = v212;
  *(v104 + 33) = v214;
  swift_beginAccess();
  v107 = *(v89 + 24);
  v179 = v48;
  if (v107)
  {
    if (*(&v261 + 1))
    {
      __swift_assign_boxed_opaque_existential_1(v89, &v260);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v89);
  }

  else if (*(&v261 + 1))
  {
    sub_258464C30(&v260, v89);
    goto LABEL_8;
  }

  v108 = v261;
  *v89 = v260;
  *(v89 + 16) = v108;
  *(v89 + 32) = v262;
LABEL_8:
  swift_endAccess();
  v109 = *v88;
  v110 = v88[1];
  v111 = v88[2];
  v112 = v88[3];
  v113 = v88[4];
  v114 = v88[5];
  v115 = v88[6];
  v116 = v177;
  *v88 = v175;
  *(v88 + 1) = v116;
  v117 = v205;
  v118 = v176;
  v88[4] = v206;
  v88[5] = v118;
  v88[6] = v117;

  sub_25847AC44(v109, v110, v111, v112, v113, v114, v115);
  v119 = v179;
  sub_2584AC3B8(v259, v179 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connectionVendor, &qword_27F9302B8, &unk_2585379D0);
  sub_258464C30(v231, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_mediaStreamVendor);
  sub_258464C30(v230, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendor);
  sub_258464C30(v229, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeatVendor);
  sub_258464C30(v228, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider);
  sub_258464C30(v222, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeProvider);
  __swift_project_boxed_opaque_existential_1(v225, v226);
  v215[0] = v213;
  v215[1] = v210;
  v215[2] = v209;
  v215[3] = v211;
  v216 = v212;
  v217 = v214;
  v120 = v181;
  v121 = v119 + v204;
  v122 = v197;
  v123 = v198;
  v203 = *(v181 + 16);
  v204 = v181 + 16;
  v203(v197, v121, v198);
  sub_258502D04(v215, v122, &v218);
  v201 = *(v120 + 8);
  v202 = v120 + 8;
  v201(v122, v123);
  sub_258464C18(&v218, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider);
  sub_258464C30(v224, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSessionVendor);
  v124 = v199;
  v125 = v178;
  sub_2584AC3B8(v199, v178, &qword_27F931360, &unk_25853CD10);
  v126 = *(v120 + 48);
  if (v126(v125, 1, v123) == 1)
  {
    v127 = v180;
    sub_2585329AC();
    v128 = v126(v125, 1, v123);
    v129 = v191;
    if (v128 != 1)
    {
      sub_258465168(v125, &qword_27F931360, &unk_25853CD10);
    }
  }

  else
  {
    v127 = v180;
    (*(v120 + 32))(v180, v125, v123);
    v129 = v191;
  }

  (*(v120 + 32))(v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v127, v123);
  sub_258464C30(v221, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_networkPathVendor);
  v219 = &type metadata for MediaContinuityKitFeatureFlags;
  v220 = sub_2584A56DC();
  LOBYTE(v218) = 0;
  v130 = sub_2585329EC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v218);

  v131 = v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager;
  if (v130)
  {
    sub_258464C30(v223, v131);
  }

  else
  {
    *(v131 + 32) = 0;
    *v131 = 0u;
    *(v131 + 16) = 0u;
  }

  v133 = v189;
  v132 = v190;
  v134 = v186;
  (*(v189 + 104))(v186, *MEMORY[0x277D85778], v190);
  v135 = v182;
  v136 = v185;
  sub_25853369C();
  (*(v133 + 8))(v134, v132);
  (*(v183 + 32))(v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStream, v135, v184);
  (*(v187 + 32))(v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStreamContinuation, v136, v188);
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v137 = sub_258532A4C();
  v138 = __swift_project_value_buffer(v137, qword_27F93CFA8);
  sub_2584AC3B8(v124, v129, &qword_27F931360, &unk_25853CD10);

  v139 = sub_258532A2C();
  v140 = sub_2585338EC();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v206 = v138;
    LODWORD(v200) = v140;
    v142 = v141;
    v205 = swift_slowAlloc();
    v215[0] = v205;
    *v142 = 136315650;
    *&v218 = 0;
    *(&v218 + 1) = 0xE000000000000000;

    sub_258533B8C();

    *&v218 = 0xD000000000000017;
    *(&v218 + 1) = 0x8000000258540530;
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v143 = sub_258533DFC();
    MEMORY[0x259C81500](v143);

    MEMORY[0x259C81500](93, 0xE100000000000000);

    v144 = sub_2584713B0(v218, *(&v218 + 1), v215);

    *(v142 + 4) = v144;
    *(v142 + 12) = 2080;
    sub_2584AC3B8(v129, v169, &qword_27F931360, &unk_25853CD10);
    v145 = sub_25853347C();
    v146 = v129;
    v148 = v147;
    v124 = v199;
    sub_258465168(v146, &qword_27F931360, &unk_25853CD10);
    v149 = v145;
    v150 = v198;
    v151 = sub_2584713B0(v149, v148, v215);

    *(v142 + 14) = v151;
    *(v142 + 22) = 2080;
    v152 = v197;
    v203(v197, v119 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v150);
    v153 = sub_258533DFC();
    v155 = v154;
    v201(v152, v150);
    v156 = sub_2584713B0(v153, v155, v215);

    *(v142 + 24) = v156;
    _os_log_impl(&dword_25845E000, v139, v200, "%s clientSessionID=%s, effective clientSessionID=%s", v142, 0x20u);
    v157 = v205;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v157, -1, -1);
    MEMORY[0x259C82900](v142, -1, -1);
  }

  else
  {

    sub_258465168(v129, &qword_27F931360, &unk_25853CD10);
  }

  v158 = sub_258532A2C();
  v159 = sub_2585338EC();

  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v215[0] = v161;
    *v160 = 136315394;
    *&v218 = 0;
    *(&v218 + 1) = 0xE000000000000000;

    sub_258533B8C();

    *&v218 = 0xD000000000000017;
    *(&v218 + 1) = 0x8000000258540530;
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v162 = sub_258533DFC();
    MEMORY[0x259C81500](v162);

    MEMORY[0x259C81500](93, 0xE100000000000000);

    v163 = sub_2584713B0(v218, *(&v218 + 1), v215);

    *(v160 + 4) = v163;
    *(v160 + 12) = 2080;
    if (v214)
    {
      if (v209 | v210 | v213 | v211 || v212)
      {
        v168 = v209 | v210 | v211;
        if (v212 || v213 != 1 || v168)
        {
          if (v212 || v213 != 2 || v168)
          {
            v164 = 0xEF676E69726F7272;
            v165 = 0x694D656E6F685069;
            if (!v212 && v213 == 3 && !v168)
            {
              v164 = 0x80000002585402B0;
              v165 = 0xD000000000000010;
            }
          }

          else
          {
            v164 = 0xE700000000000000;
            v165 = 0x72616365646973;
          }
        }

        else
        {
          v164 = 0xE700000000000000;
          v165 = 0x79616C70726961;
        }
      }

      else
      {
        v164 = 0x80000002585402D0;
        v165 = 0xD000000000000011;
      }
    }

    else
    {
      v164 = 0x80000002585402F0;
      v165 = 0xD000000000000012;
    }

    v166 = sub_2584713B0(v165, v164, v215);

    *(v160 + 14) = v166;
    _os_log_impl(&dword_25845E000, v158, v159, "Created %s usage:%s", v160, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v161, -1, -1);
    MEMORY[0x259C82900](v160, -1, -1);
  }

  sub_258465168(v259, &qword_27F9302B8, &unk_2585379D0);
  if (*(&v261 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v260);
  }

  sub_258465168(v124, &qword_27F931360, &unk_25853CD10);
  __swift_destroy_boxed_opaque_existential_1Tm(v221);
  __swift_destroy_boxed_opaque_existential_1Tm(v222);
  __swift_destroy_boxed_opaque_existential_1Tm(v223);
  __swift_destroy_boxed_opaque_existential_1Tm(v224);
  __swift_destroy_boxed_opaque_existential_1Tm(v228);
  __swift_destroy_boxed_opaque_existential_1Tm(v229);
  __swift_destroy_boxed_opaque_existential_1Tm(v230);
  __swift_destroy_boxed_opaque_existential_1Tm(v231);
  __swift_destroy_boxed_opaque_existential_1Tm(v225);
  __swift_destroy_boxed_opaque_existential_1Tm(v232);
  __swift_destroy_boxed_opaque_existential_1Tm(v235);
  __swift_destroy_boxed_opaque_existential_1Tm(v238);
  __swift_destroy_boxed_opaque_existential_1Tm(v241);
  __swift_destroy_boxed_opaque_existential_1Tm(v244);
  __swift_destroy_boxed_opaque_existential_1Tm(v247);
  __swift_destroy_boxed_opaque_existential_1Tm(v250);
  __swift_destroy_boxed_opaque_existential_1Tm(v253);
  __swift_destroy_boxed_opaque_existential_1Tm(v256);

  sub_258465168(v196, &qword_27F931360, &unk_25853CD10);
  return v119;
}

uint64_t sub_25847D624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x2822009F8](sub_25847D648, v3, 0);
}

uint64_t sub_25847D648()
{
  v20 = v0;
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v0[20] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + v2))
  {
    sub_2584A5730();
    v3 = swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v0[53] = v3;
    v5 = swift_task_alloc();
    v0[54] = v5;
    *v5 = v0;
    v5[1] = sub_2584804C4;

    return sub_258491E14(v3);
  }

  else
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    v0[21] = __swift_project_value_buffer(v7, qword_27F93CFA8);

    v8 = sub_258532A2C();
    v9 = sub_2585338EC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315138;
      sub_258533B8C();

      v19[1] = 0xD000000000000017;
      v19[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v12 = sub_258533DFC();
      MEMORY[0x259C81500](v12);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v13 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v19);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_25845E000, v8, v9, "%s activating", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    v14 = v0[19];
    *(v1 + v2) = 1;
    sub_25853293C();
    v0[22] = v15;
    v16 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider;
    v0[23] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider;
    v17 = __swift_project_boxed_opaque_existential_1((v14 + v16), *(v14 + v16 + 24));
    v18 = *v17;
    v0[24] = *v17;

    return MEMORY[0x2822009F8](sub_25847D99C, v18, 0);
  }
}

uint64_t sub_25847D99C()
{
  v1 = v0[24];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state;
  v0[25] = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state;
  if (*(v1 + v2))
  {
    sub_2584A5784();
    v3 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v0[35] = v3;
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_25847E594;

    return sub_2584FCF70(v3);
  }

  else
  {
    *(v1 + v2) = 1;
    sub_2584FD274(v1 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStream);
    v7 = swift_task_alloc();
    v0[26] = v7;
    *v7 = v0;
    v7[1] = sub_25847DB04;

    return sub_2585008D0();
  }
}

uint64_t sub_25847DB04()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2[35] = v0;
    v4 = swift_task_alloc();
    v2[36] = v4;
    *v4 = v3;
    v4[1] = sub_25847E594;

    return sub_2584FCF70(v0);
  }

  else
  {
    v6 = v2[24];

    return MEMORY[0x2822009F8](sub_25847DC8C, v6, 0);
  }
}

uint64_t sub_25847DC8C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[24];
  v5 = *(v4 + 120);
  v3[28] = v5;
  v6 = v5[2];
  v3[29] = v6;
  if (!v6)
  {
    v3[30] = v3[27];
    a2 = v3[19];
    *(v4 + v3[25]) = 2;
    a1 = sub_25847DE44;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v3[31] = 0;
  if (!v5[2])
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v3[32] = v5[4];
  v7 = v5[5];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  swift_unknownObjectRetain();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v3[33] = v10;
  *v10 = v3;
  v10[1] = sub_25847E128;

  return v12(ObjectType, v7);
}

uint64_t sub_25847DE44()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  if (*(v2 + v1) == 1)
  {
    v3 = (v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint);
    *(v0 + 16) = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32) == 0;
    v4 = (v2 + *(v0 + 184));
    *(v0 + 24) = *(v0 + 176);
    *(v0 + 65) = 0;
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v5 = off_286990988;
    *(v0 + 296) = off_286990988;
    *(v0 + 304) = &off_286990988 & 0xFFFFFFFFFFFFLL | 0x9168000000000000;
    *(v0 + 312) = type metadata accessor for TelemetryProvider(0);
    v5(v0 + 16);
    sub_2584A57D8(v0 + 16);
    v6 = v3[4];
    v7 = *(v0 + 240);
    if (!v6 || (v8 = v3[6], v20 = v3[5], v10 = v3[2], v9 = v3[3], v12 = *v3, v11 = v3[1], , , sub_258493BD8(1, 0, 0, v12, v11, v10), v13 = v7, sub_25847AC44(v12, v11, v10, v9, v6, v20, v8), !v7))
    {
      *(v0 + 320) = v7;
      v14 = *(*(v0 + 152) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
      if (*(v0 + 136))
      {
        *(v0 + 328) = v14;

        return MEMORY[0x2822009F8](sub_25847E750, v14, 0);
      }

      else
      {
        v18 = swift_task_alloc();
        *(v0 + 336) = v18;
        *v18 = v0;
        v18[1] = sub_25847E8E0;

        return sub_258482348(v14);
      }
    }
  }

  else
  {
    sub_2584A5730();
    v13 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    *v15 = v16;
    swift_willThrow();
  }

  *(v0 + 424) = v13;
  v17 = swift_task_alloc();
  *(v0 + 432) = v17;
  *v17 = v0;
  v17[1] = sub_2584804C4;

  return sub_258491E14(v13);
}

uint64_t sub_25847E128()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_25847E4F0;
  }

  else
  {
    v4 = sub_25847E254;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25847E254()
{
  v1 = *(v0[24] + v0[25]);
  if (v1 != 1)
  {
    if (v1 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    sub_2584A5784();
    v3 = swift_allocError();
    *v4 = v2;
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[35] = v3;
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_25847E594;

    return sub_2584FCF70(v3);
  }

  v7 = v0[31];
  v8 = v0[29];
  v9 = swift_unknownObjectRelease();
  if (v7 + 1 == v8)
  {
    v0[30] = v0[34];
    v10 = v0[19];
    *(v0[24] + v0[25]) = 2;
    v9 = sub_25847DE44;
    v11 = 0;

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  v12 = v0[31] + 1;
  v0[31] = v12;
  v13 = v0[28];
  if (v12 >= *(v13 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  v14 = v13 + 16 * v12;
  v0[32] = *(v14 + 32);
  v15 = *(v14 + 40);
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 16);
  swift_unknownObjectRetain();
  v19 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[33] = v18;
  *v18 = v0;
  v18[1] = sub_25847E128;

  return v19(ObjectType, v15);
}

uint64_t sub_25847E4F0()
{
  swift_unknownObjectRelease();
  v1 = v0[34];
  v0[35] = v1;
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_25847E594;

  return sub_2584FCF70(v1);
}

uint64_t sub_25847E594()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_25847E6A4, v1, 0);
}

uint64_t sub_25847E6A4(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[35];
  v1[53] = v2;
  v3 = swift_task_alloc();
  v1[54] = v3;
  *v3 = v1;
  v3[1] = sub_2584804C4;

  return sub_258491E14(v2);
}

uint64_t sub_25847E750()
{
  v1 = v0[40];
  sub_25849F65C(v0[17]);
  if (v1)
  {
    v0[53] = v1;
    v2 = swift_task_alloc();
    v0[54] = v2;
    *v2 = v0;
    v2[1] = sub_2584804C4;

    return sub_258491E14(v1);
  }

  else
  {
    v4 = v0[19];

    return MEMORY[0x2822009F8](sub_25847E83C, v4, 0);
  }
}

uint64_t sub_25847E83C()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_25847E8E0;

  return sub_258482348(v1);
}

uint64_t sub_25847E8E0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2[53] = v0;
    v4 = swift_task_alloc();
    v2[54] = v4;
    *v4 = v3;
    v4[1] = sub_2584804C4;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = v2[19];

    return MEMORY[0x2822009F8](sub_25847EA68, v6, 0);
  }
}

uint64_t sub_25847EA68()
{
  v1 = v0[19];
  v2 = v0[20];
  if (*(v1 + v2) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
    if (v0[18])
    {
      v0[44] = v3;

      return MEMORY[0x2822009F8](sub_25847EC18, v3, 0);
    }

    else
    {
      v8 = swift_task_alloc();
      v0[45] = v8;
      *v8 = v0;
      v8[1] = sub_25847EDA8;

      return sub_2584825C8(v3);
    }
  }

  else
  {
    sub_2584A5730();
    v5 = swift_allocError();
    if (*(v1 + v2) == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    *v4 = v6;
    swift_willThrow();
    v0[53] = v5;
    v7 = swift_task_alloc();
    v0[54] = v7;
    *v7 = v0;
    v7[1] = sub_2584804C4;

    return sub_258491E14(v5);
  }
}

uint64_t sub_25847EC18()
{
  v1 = v0[43];
  sub_25849F794(v0[18]);
  if (v1)
  {
    v0[53] = v1;
    v2 = swift_task_alloc();
    v0[54] = v2;
    *v2 = v0;
    v2[1] = sub_2584804C4;

    return sub_258491E14(v1);
  }

  else
  {
    v4 = v0[19];

    return MEMORY[0x2822009F8](sub_25847ED04, v4, 0);
  }
}

uint64_t sub_25847ED04()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
  v2 = swift_task_alloc();
  *(v0 + 360) = v2;
  *v2 = v0;
  v2[1] = sub_25847EDA8;

  return sub_2584825C8(v1);
}

uint64_t sub_25847EDA8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v4 = swift_task_alloc();
    v2[54] = v4;
    *v4 = v3;
    v4[1] = sub_2584804C4;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = v2[19];

    return MEMORY[0x2822009F8](sub_25847EF2C, v6, 0);
  }
}

uint64_t sub_25847EF2C()
{
  v2 = v0[19];
  v1 = v0[20];
  if (*(v2 + v1) == 1)
  {
    v3 = swift_task_alloc();
    v0[46] = v3;
    *v3 = v0;
    v3[1] = sub_25847F084;

    return sub_25848B804();
  }

  else
  {
    sub_2584A5730();
    v6 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v5 = v7;
    swift_willThrow();
    v0[53] = v6;
    v8 = swift_task_alloc();
    v0[54] = v8;
    *v8 = v0;
    v8[1] = sub_2584804C4;

    return sub_258491E14(v6);
  }
}

uint64_t sub_25847F084()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v4 = swift_task_alloc();
    v2[54] = v4;
    *v4 = v3;
    v4[1] = sub_2584804C4;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = v2[19];

    return MEMORY[0x2822009F8](sub_25847F208, v6, 0);
  }
}

uint64_t sub_25847F208()
{
  v2 = v0[19];
  v1 = v0[20];
  if (*(v2 + v1) == 1)
  {
    v3 = swift_task_alloc();
    v0[47] = v3;
    *v3 = v0;
    v3[1] = sub_25847F360;

    return sub_25849307C();
  }

  else
  {
    sub_2584A5730();
    v6 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v5 = v7;
    swift_willThrow();
    v0[53] = v6;
    v8 = swift_task_alloc();
    v0[54] = v8;
    *v8 = v0;
    v8[1] = sub_2584804C4;

    return sub_258491E14(v6);
  }
}

uint64_t sub_25847F360()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v4 = swift_task_alloc();
    v2[54] = v4;
    *v4 = v3;
    v4[1] = sub_2584804C4;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = v2[19];

    return MEMORY[0x2822009F8](sub_25847F4E4, v6, 0);
  }
}

uint64_t sub_25847F4E4()
{
  v2 = v0[19];
  v1 = v0[20];
  if (*(v2 + v1) == 1)
  {
    v3 = swift_task_alloc();
    v0[48] = v3;
    *v3 = v0;
    v3[1] = sub_25847F63C;

    return sub_25848C2E4();
  }

  else
  {
    sub_2584A5730();
    v6 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v5 = v7;
    swift_willThrow();
    v0[53] = v6;
    v8 = swift_task_alloc();
    v0[54] = v8;
    *v8 = v0;
    v8[1] = sub_2584804C4;

    return sub_258491E14(v6);
  }
}

uint64_t sub_25847F63C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v4 = swift_task_alloc();
    v2[54] = v4;
    *v4 = v3;
    v4[1] = sub_2584804C4;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = v2[19];

    return MEMORY[0x2822009F8](sub_25847F7C0, v6, 0);
  }
}

uint64_t sub_25847F7C0()
{
  v2 = v0[19];
  v1 = v0[20];
  if (*(v2 + v1) == 1)
  {
    v3 = swift_task_alloc();
    v0[49] = v3;
    *v3 = v0;
    v3[1] = sub_25847F918;

    return sub_25848CBA8();
  }

  else
  {
    sub_2584A5730();
    v6 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v5 = v7;
    swift_willThrow();
    v0[53] = v6;
    v8 = swift_task_alloc();
    v0[54] = v8;
    *v8 = v0;
    v8[1] = sub_2584804C4;

    return sub_258491E14(v6);
  }
}

uint64_t sub_25847F918()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v4 = swift_task_alloc();
    v2[54] = v4;
    *v4 = v3;
    v4[1] = sub_2584804C4;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = v2[19];

    return MEMORY[0x2822009F8](sub_25847FA9C, v6, 0);
  }
}

uint64_t sub_25847FA9C()
{
  v1 = v0[19];
  if (*(v1 + v0[20]) == 1)
  {
    v2 = sub_2584AC2F0(&qword_27F930338, type metadata accessor for MediaContinuitySession, &protocol conformance descriptor for MediaContinuitySession);
    v3 = swift_task_alloc();
    v0[50] = v3;
    *v3 = v0;
    v3[1] = sub_25847FC64;
    v4 = v0[19];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, v1, v2, 0xD00000000000001CLL, 0x8000000258540550, sub_2584A582C, v4, v5);
  }

  else
  {
    sub_2584A5730();
    v6 = swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v0[53] = v6;
    v8 = swift_task_alloc();
    v0[54] = v8;
    *v8 = v0;
    v8[1] = sub_2584804C4;

    return sub_258491E14(v6);
  }
}

uint64_t sub_25847FC64()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_25847FEF8;
  }

  else
  {
    v4 = sub_25847FD90;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25847FD90()
{
  v1 = v0[19];
  v2 = v0[20];
  if (*(v1 + v2) == 1)
  {
    v3 = v0[51];
    sub_258483754();
    v4 = v3;
    if (!v3)
    {
      v5 = swift_task_alloc();
      v0[52] = v5;
      *v5 = v0;
      v5[1] = sub_25847FF94;

      return sub_258483968();
    }
  }

  else
  {
    sub_2584A5730();
    v4 = swift_allocError();
    if (*(v1 + v2) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v7 = v8;
    swift_willThrow();
  }

  v0[53] = v4;
  v9 = swift_task_alloc();
  v0[54] = v9;
  *v9 = v0;
  v9[1] = sub_2584804C4;

  return sub_258491E14(v4);
}

uint64_t sub_25847FEF8()
{
  v1 = v0[51];
  v0[53] = v1;
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_2584804C4;

  return sub_258491E14(v1);
}

uint64_t sub_25847FF94()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_2584800A4, v1, 0);
}

uint64_t sub_2584800A4()
{
  v34 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  if (*(v2 + v1) != 1)
  {
    sub_2584A5730();
    v25 = swift_allocError();
    v27 = *(v2 + v1);
LABEL_12:
    if (v27 == 3)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    goto LABEL_15;
  }

  v3 = v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
  v4 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 8);
  if (v4)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 296);
    v7 = (v2 + *(v0 + 184));
    v8 = *(v3 + 48);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    *(v0 + 72) = *v3;
    *(v0 + 80) = v4;
    *(v0 + 88) = v11;
    *(v0 + 96) = v12;
    *(v0 + 104) = v9;
    *(v0 + 112) = v10;
    *(v0 + 120) = v8;
    *(v0 + 121) = 1;
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);

    v6(v0 + 72, v5, &off_286990978);
    sub_2584A57D8(v0 + 72);
    if (*(v2 + v1) == 1)
    {
      *(*(v0 + 152) + *(v0 + 160)) = 2;

      v13 = sub_258532A2C();
      v14 = sub_2585338EC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33[0] = v16;
        *v15 = 136315138;
        sub_258533B8C();

        v33[1] = 0xD000000000000017;
        v33[2] = 0x8000000258540530;
        sub_2585329BC();
        sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v17 = sub_258533DFC();
        MEMORY[0x259C81500](v17);

        MEMORY[0x259C81500](93, 0xE100000000000000);
        v18 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v33);

        *(v15 + 4) = v18;
        _os_log_impl(&dword_25845E000, v13, v14, "%s activated", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x259C82900](v16, -1, -1);
        MEMORY[0x259C82900](v15, -1, -1);
      }

      v19 = *(v0 + 152);
      v20 = *(v0 + 128);
      v21 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStream;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930218, &unk_2585379A0);
      (*(*(v22 - 8) + 16))(v20, v19 + v21, v22);
      v23 = *(v0 + 8);

      return v23();
    }

    v29 = *(v0 + 152);
    v30 = *(v0 + 160);
    sub_2584A5730();
    v25 = swift_allocError();
    v27 = *(v29 + v30);
    goto LABEL_12;
  }

  sub_2584A5730();
  v25 = swift_allocError();
  v28 = 18;
LABEL_15:
  *v26 = v28;
  v31 = v25;
  swift_willThrow();
  *(v0 + 424) = v31;
  v32 = swift_task_alloc();
  *(v0 + 432) = v32;
  *v32 = v0;
  v32[1] = sub_2584804C4;

  return sub_258491E14(v31);
}

uint64_t sub_2584804C4()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_2584805D4, v1, 0);
}

uint64_t sub_2584805D4(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_258480640()
{
  v1[9] = v0;
  v1[10] = type metadata accessor for SessionMessage(0);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584806D4, v0, 0);
}

uint64_t sub_2584806D4()
{
  v18 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) > 2u)
  {

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v3 = sub_258532A4C();
    *(v0 + 96) = __swift_project_value_buffer(v3, qword_27F93CFA8);

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17[0] = v7;
      *v6 = 136315138;
      sub_258533B8C();

      v17[1] = 0xD000000000000017;
      v17[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v8 = sub_258533DFC();
      MEMORY[0x259C81500](v8);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v9 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v17);

      *(v6 + 4) = v9;
      _os_log_impl(&dword_25845E000, v4, v5, "%s invalidating", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C82900](v7, -1, -1);
      MEMORY[0x259C82900](v6, -1, -1);
    }

    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    *(v1 + v2) = 3;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 2048;
    *(v0 + 16) = 0u;
    __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(v11 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
    v12 = off_286990988;
    type metadata accessor for TelemetryProvider(0);
    v12(v0 + 16);
    sub_2584A57D8(v0 + 16);
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_258480A54;
    v14 = *(v0 + 88);

    return sub_25849279C(v14);
  }
}

uint64_t sub_258480A54()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);

  sub_2584ABB80(v1, type metadata accessor for SessionMessage);

  return MEMORY[0x2822009F8](sub_258480B94, v2, 0);
}

uint64_t sub_258480B94(uint64_t a1)
{
  sub_2584A5730();
  v2 = swift_allocError();
  *(v1 + 112) = v2;
  *v3 = 2;
  v4 = swift_task_alloc();
  *(v1 + 120) = v4;
  *v4 = v1;
  v4[1] = sub_258480C54;

  return sub_258490178(v2);
}

uint64_t sub_258480C54()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_258480D80, v2, 0);
}

uint64_t sub_258480D80()
{
  v10 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136315138;
    sub_258533B8C();

    v9[1] = 0xD000000000000017;
    v9[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_258533DFC();
    MEMORY[0x259C81500](v5);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v6 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v9);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_25845E000, v1, v2, "%s invalidated", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C82900](v4, -1, -1);
    MEMORY[0x259C82900](v3, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_258480F88(uint64_t a1)
{
  *(v2 + 344) = v1;
  v3 = *(a1 + 16);
  *(v2 + 352) = *a1;
  *(v2 + 368) = v3;
  *(v2 + 313) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_258480FB8, v1, 0);
}

uint64_t sub_258480FB8(uint64_t a1)
{
  v2 = *(v1 + 344);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v1 + 384) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v2 + v3) == 2)
  {
    v4 = v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v4 + 24))
    {
      sub_258464C30(v4, v1 + 200);
      if (*(v1 + 224))
      {
LABEL_4:
        sub_258464C18((v1 + 200), v1 + 160);
        v5 = *(v1 + 184);
        v6 = *(v1 + 192);
        __swift_project_boxed_opaque_existential_1((v1 + 160), v5);
        v14 = (*(v6 + 96) + **(v6 + 96));
        v7 = swift_task_alloc();
        *(v1 + 392) = v7;
        *v7 = v1;
        v7[1] = sub_2584811D0;

        return v14(v1 + 240, v5, v6);
      }
    }

    else
    {
      v10 = *v4;
      v11 = *(v4 + 16);
      *(v1 + 232) = *(v4 + 32);
      *(v1 + 216) = v11;
      *(v1 + 200) = v10;
      if (*(v1 + 224))
      {
        goto LABEL_4;
      }
    }

    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  sub_2584A5730();
  swift_allocError();
  *v12 = v9;
  swift_willThrow();
  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_2584811D0()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_2584816C4;
  }

  else
  {
    v4 = sub_2584812FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584812FC(uint64_t a1)
{
  v2 = *(v1 + 384);
  v3 = *(v1 + 344);
  if (*(v3 + v2) == 2)
  {
    v4 = *(v1 + 313);
    v5 = *(v1 + 368);
    *(v1 + 280) = *(v1 + 352);
    *(v1 + 296) = v5;
    *(v1 + 312) = v4;
    *(v1 + 16) = 2;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    v6 = swift_task_alloc();
    *(v1 + 408) = v6;
    *v6 = v1;
    v6[1] = sub_258481470;

    return sub_25848A9E4(v1 + 280, v1 + 240, (v1 + 16));
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v3 + v2) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 240));
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 160));
    v10 = *(v1 + 8);

    return v10();
  }
}

uint64_t sub_258481470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[14] = v5;
  v6[15] = a1;
  v6[16] = a2;
  v6[17] = a3;
  v6[18] = a4;
  v6[19] = v4;
  v6[52] = a1;
  v6[53] = v4;

  v7 = v6[43];
  if (v4)
  {
    v8 = sub_258481728;
  }

  else
  {
    v8 = sub_258481594;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_258481594(uint64_t a1)
{
  v2 = v1[48];
  v3 = v1[43];
  if (*(v3 + v2) == 2)
  {
    v4 = v1[18];
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 30);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 20);
    v5 = v1[1];
    v6 = v1[52];

    return v5(v6, v4);
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v3 + v2) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 30);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 20);
    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_2584816C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258481728()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = v0[1];

  return v1();
}

uint64_t sub_258481794(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 320) = v1;
  *(v2 + 328) = v3;
  *(v2 + 313) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_2584817C0, v1, 0);
}

uint64_t sub_2584817C0(uint64_t a1)
{
  v2 = *(v1 + 320);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v1 + 336) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v2 + v3) == 2)
  {
    v4 = v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v4 + 24))
    {
      sub_258464C30(v4, v1 + 200);
      if (*(v1 + 224))
      {
LABEL_4:
        sub_258464C18((v1 + 200), v1 + 160);
        v5 = *(v1 + 184);
        v6 = *(v1 + 192);
        __swift_project_boxed_opaque_existential_1((v1 + 160), v5);
        v14 = (*(v6 + 96) + **(v6 + 96));
        v7 = swift_task_alloc();
        *(v1 + 344) = v7;
        *v7 = v1;
        v7[1] = sub_2584819D8;

        return v14(v1 + 240, v5, v6);
      }
    }

    else
    {
      v10 = *v4;
      v11 = *(v4 + 16);
      *(v1 + 232) = *(v4 + 32);
      *(v1 + 216) = v11;
      *(v1 + 200) = v10;
      if (*(v1 + 224))
      {
        goto LABEL_4;
      }
    }

    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  sub_2584A5730();
  swift_allocError();
  *v12 = v9;
  swift_willThrow();
  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_2584819D8()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_258481ECC;
  }

  else
  {
    v4 = sub_258481B04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258481B04(uint64_t a1)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 320);
  if (*(v3 + v2) == 2)
  {
    v4 = *(v1 + 313);
    *(v1 + 304) = *(v1 + 328);
    *(v1 + 312) = v4;
    *(v1 + 16) = 2;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    v5 = swift_task_alloc();
    *(v1 + 360) = v5;
    *v5 = v1;
    v5[1] = sub_258481C78;

    return sub_25848B110((v1 + 304), v1 + 240, (v1 + 16));
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v3 + v2) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v7 = v8;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 240));
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 160));
    v9 = *(v1 + 8);

    return v9();
  }
}

uint64_t sub_258481C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[14] = v5;
  v6[15] = a1;
  v6[16] = a2;
  v6[17] = a3;
  v6[18] = a4;
  v6[19] = v4;
  v6[46] = a1;
  v6[47] = v4;

  v7 = v6[40];
  if (v4)
  {
    v8 = sub_258481F30;
  }

  else
  {
    v8 = sub_258481D9C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_258481D9C(uint64_t a1)
{
  v2 = v1[42];
  v3 = v1[40];
  if (*(v3 + v2) == 2)
  {
    v4 = v1[16];
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 30);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 20);
    v5 = v1[1];
    v6 = v1[46];

    return v5(v6, v4);
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v3 + v2) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 30);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 20);
    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_258481ECC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258481F30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = v0[1];

  return v1();
}

uint64_t sub_258481FBC(uint64_t a1)
{
  v2 = v1[7];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v1[8] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v2 + v3) > 2u)
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v2 + v3) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v6 = v7;
    swift_willThrow();
    v8 = v1[1];

    return v8();
  }

  else
  {
    v4 = swift_task_alloc();
    v1[9] = v4;
    *v4 = v1;
    v4[1] = sub_2584820E8;

    return sub_258482A88((v1 + 2));
  }
}

uint64_t sub_2584820E8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_258482330;
  }

  else
  {
    v4 = sub_258482214;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258482214(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  if (*(v3 + v2) > 2u)
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v3 + v2) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v7 = v8;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
    v9 = v1[1];

    return v9();
  }

  else
  {
    v4 = [*(*__swift_project_boxed_opaque_existential_1(v1 + 2 v1[5]) + 24)];
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
    v5 = v1[1];

    return v5(v4);
  }
}

uint64_t sub_258482348(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_258482368, v1, 0);
}

uint64_t sub_258482368()
{
  sub_2584AC3B8(*(v0 + 104) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 56, &qword_27F930360, &unk_258537A90);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_258464C18((v0 + 56), v0 + 16);
    sub_258464C30(v0 + 16, v0 + 56);
    v2 = swift_allocObject();
    *(v0 + 112) = v2;
    sub_258464C18((v0 + 56), v2 + 16);

    return MEMORY[0x2822009F8](sub_258482488, v1, 0);
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F930360, &unk_258537A90);
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_258482488()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  if (*(v1 + 152) == 1)
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 144);
    *(v1 + 136) = &unk_258538398;
    *(v1 + 144) = v3;

    sub_258464B24(v4, v5);

    v6 = sub_2584AC7E4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90, &unk_25853F29C);
    v0[15] = swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v6 = sub_2584AC7C8;
  }

  return MEMORY[0x2822009F8](v6, v2, 0);
}

uint64_t sub_2584825C8(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_2584825E8, v1, 0);
}

uint64_t sub_2584825E8()
{
  sub_2584AC3B8(*(v0 + 104) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 56, &qword_27F930360, &unk_258537A90);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_258464C18((v0 + 56), v0 + 16);
    sub_258464C30(v0 + 16, v0 + 56);
    v2 = swift_allocObject();
    *(v0 + 112) = v2;
    sub_258464C18((v0 + 56), v2 + 16);

    return MEMORY[0x2822009F8](sub_258482708, v1, 0);
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F930360, &unk_258537A90);
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_258482708()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  if (*(v1 + 152) == 1)
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 144);
    *(v1 + 136) = &unk_258538388;
    *(v1 + 144) = v3;

    sub_258464B24(v4, v5);

    v6 = sub_258482848;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88, &unk_25853F29C);
    v0[15] = swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v6 = sub_2584828AC;
  }

  return MEMORY[0x2822009F8](v6, v2, 0);
}

uint64_t sub_258482848()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584828AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258482930()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2584AC7AC;

  return sub_25846287C();
}

uint64_t sub_2584829EC()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_258463A2C;

  return sub_25846287C();
}

uint64_t sub_258482A88(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_258533C6C();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v2[32] = *(v4 + 64);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258482BA0, v1, 0);
}

uint64_t sub_258482BA0()
{
  v1 = *(v0 + 232);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  *(v0 + 296) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v2, v0 + 56, &qword_27F930340, &qword_258537A68);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 224);
    sub_258464C18((v0 + 56), v0 + 16);
    sub_258464C18((v0 + 16), v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_258465168(v0 + 56, &qword_27F930340, &qword_258537A68);
    v7 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask;
    v8 = *(v6 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask);
    *(v0 + 304) = v8;
    if (v8)
    {

      v9 = swift_task_alloc();
      *(v0 + 312) = v9;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      *v9 = v0;
      v9[1] = sub_258482FDC;
      v12 = *(v0 + 224);
      v13 = MEMORY[0x277D84950];
      v14 = v8;
      v15 = v10;
    }

    else
    {
      v17 = *(v0 + 280);
      v16 = *(v0 + 288);
      v19 = *(v0 + 264);
      v18 = *(v0 + 272);
      v20 = *(v0 + 248);
      v36 = *(v0 + 256);
      v21 = *(v0 + 240);
      v34 = v17;
      v35 = *(v0 + 232);
      v22 = sub_25853368C();
      v37 = v16;
      (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
      v23 = sub_258533F6C();
      v32 = v24;
      v33 = v23;

      sub_258533C5C();
      sub_2584AC3B8(v16, v17, &qword_27F92FB78, &qword_2585368F0);
      v25 = v19;
      (*(v20 + 16))(v19, v18, v21);
      v26 = (*(v20 + 80) + 48) & ~*(v20 + 80);
      v27 = swift_allocObject();
      *(v27 + 2) = 0;
      *(v27 + 3) = 0;
      *(v27 + 4) = v33;
      *(v27 + 5) = v32;
      (*(v20 + 32))(&v27[v26], v25, v21);
      v28 = &v27[(v36 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v28 = &unk_258538160;
      *(v28 + 1) = v35;
      v29 = sub_2584771D0(0, 0, v34, &unk_258538170, v27);
      *(v0 + 328) = v29;
      (*(v20 + 8))(v18, v21);
      sub_258465168(v37, &qword_27F92FB78, &qword_2585368F0);
      *(v6 + v7) = v29;

      v30 = swift_task_alloc();
      *(v0 + 336) = v30;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      *v30 = v0;
      v30[1] = sub_258483198;
      v13 = MEMORY[0x277D84950];
      v12 = v0 + 96;
      v14 = v29;
      v15 = v31;
    }

    return MEMORY[0x282200430](v12, v14, v15, v11, v13);
  }
}

uint64_t sub_258482FDC()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_25848340C;
  }

  else
  {
    v4 = sub_258483108;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258483108()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258483198()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_25848349C;
  }

  else
  {
    v4 = sub_2584832C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584832C4()
{
  v1 = *(v0 + 43);
  v2 = *(v0 + 37);
  v3 = *(v0 + 29);
  sub_258464C30((v0 + 6), v0 + 136);
  swift_beginAccess();
  sub_2584AC5D0(v0 + 136, v3 + v2, &qword_27F930340, &qword_258537A68);
  swift_endAccess();
  sub_258483754();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  else
  {
    v5 = *(v0 + 28);

    sub_258464C18(v0 + 6, v5);
  }

  v4 = *(v0 + 1);

  return v4();
}

uint64_t sub_25848340C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848349C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848352C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for TimeSyncBackedTimeSynchronizer();
  swift_allocObject();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_2584835D8;

  return sub_2585035E0();
}

uint64_t sub_2584835D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_258483724, 0, 0);
  }
}

uint64_t sub_258483724()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v2[3] = *(v0 + 24);
  v2[4] = &off_286990B70;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_258483754()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  swift_beginAccess();
  sub_2584AC3B8(v0 + v1, &v17, &qword_27F930340, &qword_258537A68);
  if (!v18)
  {
    return sub_258465168(&v17, &qword_27F930340, &qword_258537A68);
  }

  sub_258464C18(&v17, v20);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC3B8(v0 + v2, &v15, &qword_27F92FB90, &qword_258535420);
  if (v16)
  {
    sub_258464C18(&v15, &v17);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v3 = v18;
    v4 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    (*(v4 + 24))(&v15, v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1(&v15, v16);
    v7 = v5[2];
    v6 = v5[3];
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    v10 = *(v9 + 8);

    v10(v14, v8, v9);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v11 = sub_258532D5C();
    sub_258504B8C(v7, v6, v11, v12);

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
  }

  else
  {
    sub_258465168(&v15, &qword_27F92FB90, &qword_258535420);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t sub_258483988()
{
  v16 = v0;
  __swift_project_boxed_opaque_existential_1((v0[38] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider), *(v0[38] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider + 24));
  v1 = sub_2585138CC(3u, 1);
  if (v1 == 2 || (v1 & 1) == 0)
  {
LABEL_9:
    v12 = v0[1];

    return v12();
  }

  v2 = v0[38];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  v0[39] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, (v0 + 2), &qword_27F930348, &qword_258537A70);
  v4 = v0[5];
  sub_258465168((v0 + 2), &qword_27F930348, &qword_258537A70);
  if (v4)
  {
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93D020);

    v6 = sub_258532A2C();
    v7 = sub_2585338CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      sub_258533B8C();

      v15[1] = 0xD000000000000017;
      v15[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v10 = sub_258533DFC();
      MEMORY[0x259C81500](v10);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v11 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v15);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_25845E000, v6, v7, "%s Time sync heartbeat already started", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);
    }

    goto LABEL_9;
  }

  v14 = swift_task_alloc();
  v0[40] = v14;
  *v14 = v0;
  v14[1] = sub_258483CE0;

  return sub_258482A88((v0 + 7));
}

uint64_t sub_258483CE0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  if (v0)
  {
    v4 = sub_258484268;
  }

  else
  {
    v4 = sub_258483E0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258483E0C()
{
  v25 = v0;
  v1 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_258504A68(v0 + 12);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v2 = sub_258532A4C();
    __swift_project_value_buffer(v2, qword_27F93D020);

    v3 = v1;
    v4 = sub_258532A2C();
    v5 = sub_2585338CC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24[0] = v8;
      *v6 = 136315394;
      sub_258533B8C();

      v24[1] = 0xD000000000000017;
      v24[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v9 = sub_258533DFC();
      MEMORY[0x259C81500](v9);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v10 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v24);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2112;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v12;
      *v7 = v12;
      _os_log_impl(&dword_25845E000, v4, v5, "%s Failed to start time sync heartbeat: %@", v6, 0x16u);
      sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v14 = v0[38];
    v13 = v0[39];
    sub_258464C30((v0 + 12), (v0 + 22));
    type metadata accessor for KTraceBackedSignpostReporter();
    v15 = swift_allocObject();
    v16 = v0[25];
    v17 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 22), v16);
    v18 = *(v16 - 8);
    v19 = swift_task_alloc();
    (*(v18 + 16))(v19, v17, v16);
    v20 = sub_2584A6468(*v19, 5000000000000000000, 0, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);

    v21 = type metadata accessor for TimeSyncHeartbeat();
    v0[17] = v20;
    v0[20] = v21;
    v0[21] = &off_2869912A0;
    __swift_project_boxed_opaque_existential_1(v0 + 17, v21);
    sub_25851118C();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    sub_258464C30((v0 + 17), (v0 + 27));
    swift_beginAccess();
    sub_2584AC5D0((v0 + 27), v14 + v13, &qword_27F930348, &qword_258537A70);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_258484268()
{
  v16 = v0;
  v1 = *(v0 + 328);
  if (qword_27F92F8F0 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D020);

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v6 = 136315394;
    sub_258533B8C();

    v15[1] = 0xD000000000000017;
    v15[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Failed to start time sync heartbeat: %@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_258484538()
{
  v1[33] = v0;
  v2 = sub_258533C6C();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v1[36] = *(v3 + 64);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258484650, v0, 0);
}

uint64_t sub_258484650()
{
  v1 = *(v0 + 264);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  *(v0 + 328) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  v3 = v1 + v2;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_258464C30(v3, v0 + 16);
    if (*(v0 + 40))
    {
LABEL_3:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

      v4 = *(v0 + 8);
LABEL_13:

      return v4();
    }
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 16);
    *(v0 + 48) = *(v3 + 32);
    *(v0 + 16) = v5;
    *(v0 + 32) = v6;
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_2584AC3B8(*(v0 + 264) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connectionVendor, v0 + 96, &qword_27F9302B8, &unk_2585379D0);
  if (!*(v0 + 120))
  {
    sub_258465168(v0 + 96, &qword_27F9302B8, &unk_2585379D0);
    sub_2584A5730();
    swift_allocError();
    *v29 = 7;
    swift_willThrow();
LABEL_12:

    v4 = *(v0 + 8);
    goto LABEL_13;
  }

  v7 = *(v0 + 264);
  sub_258464C18((v0 + 96), v0 + 56);
  v8 = (v7 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint);
  v9 = *(v7 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32);
  if (!v9)
  {
    sub_2584A5730();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_12;
  }

  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  v37 = *(v0 + 312);
  v38 = *(v0 + 296);
  v12 = *(v0 + 280);
  v39 = *(v0 + 288);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v15 = *(v8 + 5);
  v16 = *(v8 + 6);
  v17 = sub_25853368C();
  v32 = v8[1];
  v33 = *v8;
  v34 = v10;
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);

  v18 = sub_258533F6C();
  v35 = v19;
  v36 = v18;
  sub_258464C30(v0 + 56, v0 + 136);
  v20 = swift_allocObject();
  sub_258464C18((v0 + 136), v20 + 16);
  *(v20 + 56) = v14;
  *(v20 + 64) = v33;
  *(v20 + 80) = v32;
  *(v20 + 96) = v9;
  *(v20 + 104) = v15;
  *(v20 + 112) = v16;

  sub_258533C5C();
  sub_2584AC3B8(v10, v37, &qword_27F92FB78, &qword_2585368F0);
  (*(v12 + 16))(v38, v11, v13);
  v21 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v36;
  *(v22 + 5) = v35;
  (*(v12 + 32))(&v22[v21], v38, v13);
  v23 = &v22[(v39 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = &unk_258537FD8;
  *(v23 + 1) = v20;
  v24 = sub_258476F24(0, 0, v37, &unk_258537FE8, v22);
  *(v0 + 336) = v24;
  (*(v12 + 8))(v11, v13);
  sub_258465168(v34, &qword_27F92FB78, &qword_2585368F0);
  v25 = swift_task_alloc();
  *(v0 + 344) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930190, &unk_258537FF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  *v25 = v0;
  v25[1] = sub_258484B10;
  v28 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 176, v24, v26, v27, v28);
}

uint64_t sub_258484B10()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);

    v4 = sub_258484D44;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 264);
    v4 = sub_258484C38;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_258484C38()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  swift_beginAccess();
  v3 = *(v2 + v1 + 24);
  v4 = *(v0 + 200);
  v5 = *(v0 + 328);
  v6 = *(v0 + 264);
  v7 = v6 + v5;
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + v5));
    v7 = *(v0 + 264) + *(v0 + 328);
    if (v4)
    {
LABEL_3:
      sub_258464C18((v0 + 176), v7);
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_3;
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 192);
  *(v7 + 32) = *(v0 + 208);
  *v7 = v8;
  *(v7 + 16) = v9;
LABEL_6:
  swift_endAccess();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_258484D44()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258484DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_258484DF8, 0, 0);
}

uint64_t sub_258484DF8()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage);
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 16);
  *(v0 + 88) = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 32);
  *(v0 + 72) = v3;
  *(v0 + 56) = v2;
  v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_258484EF0;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return sub_258499DAC(v7, v0 + 56, v6, v1 + v4);
}

uint64_t sub_258484EF0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258485020, 0, 0);
  }
}

uint64_t sub_258485038()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v1 - 8);
  v26 = &v23 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930350, &unk_258537A78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v0 + v12, v5, &qword_27F930350, &unk_258537A78);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_258465168(v5, &qword_27F930350, &unk_258537A78);
    sub_2584A5730();
    swift_allocError();
    *v13 = 10;
    return swift_willThrow();
  }

  else
  {
    v15 = *(v7 + 32);
    v23 = v11;
    v24 = v15;
    v15(v11, v5, v6);
    v16 = sub_25853368C();
    (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
    v17 = v25;
    (*(v7 + 16))(v25, v11, v6);
    v18 = sub_2584AC2F0(&qword_27F930338, type metadata accessor for MediaContinuitySession, &protocol conformance descriptor for MediaContinuitySession);
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v0;
    *(v21 + 24) = v18;
    v24(v21 + v19, v17, v6);
    *(v21 + v20) = v0;
    swift_retain_n();
    v22 = sub_258476C88(0, 0, v26, &unk_258537FA8, v21);
    (*(v7 + 8))(v23, v6);
    *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor) = v22;
  }
}

uint64_t sub_2584853EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  type metadata accessor for SessionMessage(0);
  v5[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303E0, &qword_258537FB0);
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303E8, &qword_258537FB8);
  v5[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303F0, &unk_258537FC0);
  v5[37] = v8;
  v5[38] = *(v8 - 8);
  v5[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258485594, a5, 0);
}

uint64_t sub_258485594()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  sub_2585336FC();
  v1 = sub_2584AC2F0(&qword_27F930338, type metadata accessor for MediaContinuitySession, &protocol conformance descriptor for MediaContinuitySession);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v0[40] = v1;
  v0[41] = v2;
  v3 = v0[30];
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_2584856B0;
  v5 = v0[36];
  v6 = v0[37];

  return MEMORY[0x2822005A8](v5, v3, v1, v6, v0 + 28);
}

uint64_t sub_2584856B0()
{
  v2 = *v1;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_258486120;
  }

  else
  {
    v4 = sub_2584857C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584857C4()
{
  v1 = *(v0 + 288);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
LABEL_5:

    v5 = *(v0 + 8);

    return v5();
  }

  sub_2584AA828(v1, *(v0 + 280), &qword_27F9303E0, &qword_258537FB0);
  if (sub_25853376C())
  {
    v3 = *(v0 + 304);
    v2 = *(v0 + 312);
    v4 = *(v0 + 296);
    sub_258465168(*(v0 + 280), &qword_27F9303E0, &qword_258537FB0);
    (*(v3 + 8))(v2, v4);
    goto LABEL_5;
  }

  sub_2584AC3B8(*(v0 + 280), *(v0 + 272), &qword_27F9303E0, &qword_258537FB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 272);
      v9 = *(v8 + 32);
      v10 = *(v8 + 16);
      *(v0 + 16) = *v8;
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v11 = *(v8 + 56);
      v12 = *(v8 + 40);
      *(v0 + 88) = *(v8 + 72);
      *(v0 + 56) = v12;
      *(v0 + 72) = v11;
      v13 = swift_task_alloc();
      *(v0 + 368) = v13;
      *v13 = v0;
      v13[1] = sub_258485EF0;

      return sub_25848703C(v0 + 16, v0 + 56);
    }

    else
    {
      sub_258464C18(*(v0 + 272), v0 + 96);
      v16 = swift_task_alloc();
      *(v0 + 352) = v16;
      *v16 = v0;
      v16[1] = sub_258485CE8;

      return sub_258488EC4(v0 + 96);
    }
  }

  else
  {
    sub_2584A9D40(*(v0 + 272), *(v0 + 248), type metadata accessor for SessionMessage);
    v14 = swift_task_alloc();
    *(v0 + 344) = v14;
    *v14 = v0;
    v14[1] = sub_258485AE8;
    v15 = *(v0 + 248);

    return sub_25848E534(v15);
  }
}

uint64_t sub_258485AE8()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_258485BF8, v1, 0);
}

uint64_t sub_258485BF8()
{
  v1 = v0[35];
  sub_2584ABB80(v0[31], type metadata accessor for SessionMessage);
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = v0[40];
  v3 = v0[30];
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_2584856B0;
  v5 = v0[36];
  v6 = v0[37];

  return MEMORY[0x2822005A8](v5, v3, v2, v6, v0 + 28);
}

uint64_t sub_258485CE8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_25848662C;
  }

  else
  {
    v4 = sub_258485E14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258485E14()
{
  v1 = v0[35];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = v0[40];
  v3 = v0[30];
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_2584856B0;
  v5 = v0[36];
  v6 = v0[37];

  return MEMORY[0x2822005A8](v5, v3, v2, v6, v0 + 28);
}

uint64_t sub_258485EF0()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_258486B20;
  }

  else
  {
    v4 = sub_25848601C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25848601C()
{
  v1 = v0[35];
  sub_258465168((v0 + 7), &qword_27F92FB90, &qword_258535420);
  sub_258465168((v0 + 2), &qword_27F92FB90, &qword_258535420);
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = v0[40];
  v3 = v0[30];
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_2584856B0;
  v5 = v0[36];
  v6 = v0[37];

  return MEMORY[0x2822005A8](v5, v3, v2, v6, v0 + 28);
}

uint64_t sub_258486120()
{
  v17 = v0;
  (*(v0[38] + 8))(v0[39], v0[37]);
  v1 = v0[28];
  v0[48] = v1;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFA8);

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v6 = 136315394;
    sub_258533B8C();

    v16[1] = 0xD000000000000017;
    v16[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Connection interrupted, error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v13 = v0[30] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  swift_endAccess();
  v14 = swift_task_alloc();
  v0[49] = v14;
  *v14 = v0;
  v14[1] = sub_25848647C;

  return sub_258491E14(v1);
}

uint64_t sub_25848647C()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_25848658C, v1, 0);
}

uint64_t sub_25848658C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848662C()
{
  v18 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFA8);

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v16 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    v0[26] = 0;
    v0[27] = 0xE000000000000000;
    sub_258533B8C();

    v0[24] = 0xD000000000000017;
    v0[25] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(v0[24], v0[25], &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2112;
    v11 = v16;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s handlePeeledConnection failed, error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v13 = swift_task_alloc();
  v0[50] = v13;
  *v13 = v0;
  v13[1] = sub_25848692C;
  v14 = v0[45];

  return sub_258491E14(v14);
}

uint64_t sub_25848692C()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_258486A3C, v1, 0);
}

uint64_t sub_258486A3C()
{
  v1 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = *(v0 + 320);
  v3 = *(v0 + 240);
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_2584856B0;
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);

  return MEMORY[0x2822005A8](v5, v3, v2, v6, v0 + 224);
}

uint64_t sub_258486B20()
{
  v18 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFA8);

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v16 = v0[47];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    v0[22] = 0;
    v0[23] = 0xE000000000000000;
    sub_258533B8C();

    v0[20] = 0xD000000000000017;
    v0[21] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(v0[20], v0[21], &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2112;
    v11 = v16;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&dword_25845E000, v4, v5, "%s handleConnectionMigration failed, error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v13 = swift_task_alloc();
  v0[51] = v13;
  *v13 = v0;
  v13[1] = sub_258486E20;
  v14 = v0[47];

  return sub_258491E14(v14);
}

uint64_t sub_258486E20()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_258486F30, v1, 0);
}

uint64_t sub_258486F30()
{
  v1 = *(v0 + 280);
  sub_258465168(v0 + 56, &qword_27F92FB90, &qword_258535420);
  sub_258465168(v0 + 16, &qword_27F92FB90, &qword_258535420);
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = *(v0 + 320);
  v3 = *(v0 + 240);
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_2584856B0;
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);

  return MEMORY[0x2822005A8](v5, v3, v2, v6, v0 + 224);
}

uint64_t sub_25848703C(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  return MEMORY[0x2822009F8](sub_258487064, v2, 0);
}

uint64_t sub_258487064()
{
  v45 = v0;
  if (!*(*(v0 + 536) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
LABEL_39:
    v28 = *(v0 + 8);
    goto LABEL_40;
  }

  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFA8);
  sub_2584AC3B8(v2, v0 + 16, &qword_27F92FB90, &qword_258535420);
  sub_2584AC3B8(v1, v0 + 56, &qword_27F92FB90, &qword_258535420);

  v4 = sub_258532A2C();
  v5 = sub_2585338EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44[0] = v7;
    *v6 = 136315650;
    sub_258533B8C();

    v44[1] = 0xD000000000000017;
    v44[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v44);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    sub_2584AC3B8(v0 + 16, v0 + 336, &qword_27F92FB90, &qword_258535420);
    v10 = *(v0 + 360);
    if (v10)
    {
      v11 = *(v0 + 368);
      __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
      (*(v11 + 8))(v10, v11);
      __swift_project_boxed_opaque_existential_1((v0 + 456), *(v0 + 480));
      v12 = sub_258532D5C();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    }

    else
    {
      v12 = 1701736270;
      sub_258465168(v0 + 336, &qword_27F92FB90, &qword_258535420);
      v14 = 0xE400000000000000;
    }

    sub_258465168(v0 + 16, &qword_27F92FB90, &qword_258535420);
    v15 = sub_2584713B0(v12, v14, v44);

    *(v6 + 14) = v15;
    *(v6 + 22) = 2080;
    sub_2584AC3B8(v0 + 56, v0 + 376, &qword_27F92FB90, &qword_258535420);
    v16 = *(v0 + 400);
    if (v16)
    {
      v17 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));
      (*(v17 + 8))(v16, v17);
      __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
      v18 = sub_258532D5C();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
    }

    else
    {
      v18 = 1701736270;
      sub_258465168(v0 + 376, &qword_27F92FB90, &qword_258535420);
      v20 = 0xE400000000000000;
    }

    sub_258465168(v0 + 56, &qword_27F92FB90, &qword_258535420);
    v21 = sub_2584713B0(v18, v20, v44);

    *(v6 + 24) = v21;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Connection migrated from %s to %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  else
  {

    sub_258465168(v0 + 56, &qword_27F92FB90, &qword_258535420);
    sub_258465168(v0 + 16, &qword_27F92FB90, &qword_258535420);
  }

  v22 = *(v0 + 536);
  v23 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v0 + 544) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (sub_258472CF0(*(v22 + v23), &unk_28698B500))
  {
    sub_2584AC3B8(*(v0 + 528), v0 + 136, &qword_27F92FB90, &qword_258535420);
    v24 = *(v0 + 160);
    if (v24)
    {
      v25 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      (*(v25 + 8))(v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    }

    else
    {
      sub_258465168(v0 + 136, &qword_27F92FB90, &qword_258535420);
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0;
    }

    v29 = *(v0 + 536);
    sub_258488DB8(v0 + 96);
    sub_258465168(v0 + 96, &qword_27F92FB70, &qword_2585353E8);
    sub_2584AC3B8(v29 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 176, &qword_27F930360, &unk_258537A90);
    v30 = *(v0 + 200);
    if (v30)
    {
      v31 = *(v0 + 528);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v30);
      sub_2584AC3B8(v31, v0 + 296, &qword_27F92FB90, &qword_258535420);
      v32 = *(v0 + 320);
      if (v32)
      {
        v33 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
        (*(v33 + 8))(v32, v33);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
      }

      else
      {
        sub_258465168(v0 + 296, &qword_27F92FB90, &qword_258535420);
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
        *(v0 + 288) = 0;
      }

      v38 = swift_task_alloc();
      *(v0 + 552) = v38;
      *v38 = v0;
      v38[1] = sub_258487908;

      return sub_2584631DC(v0 + 256);
    }

    sub_258465168(v0 + 176, &qword_27F930360, &unk_258537A90);
    if (sub_258472CF0(*(*(v0 + 536) + *(v0 + 544)), &unk_28698B528))
    {
      if (*(*(v0 + 528) + 24))
      {
        v34 = *(v0 + 536);
        sub_2584AC3B8(*(v0 + 528), v0 + 216, &qword_27F92FB90, &qword_258535420);
        v35 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
        swift_beginAccess();
        sub_2584AC5D0(v0 + 216, v34 + v35, &qword_27F92FB90, &qword_258535420);
        swift_endAccess();
        v36 = swift_task_alloc();
        *(v0 + 560) = v36;
        *v36 = v0;
        v36[1] = sub_258487C0C;

        return sub_258488930();
      }

      sub_258488194(*(v0 + 536), *(v0 + 528));
      goto LABEL_39;
    }

    v39 = *(v0 + 544);
    v40 = *(v0 + 536);
    v41 = *(v0 + 528);
    sub_2584A5730();
    swift_allocError();
    if (*(v40 + v39) == 3)
    {
      v43 = 2;
    }

    else
    {
      v43 = 3;
    }

    *v42 = v43;
    swift_willThrow();
    sub_258488194(v40, v41);
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v22 + v23) == 3)
    {
      v27 = 2;
    }

    else
    {
      v27 = 3;
    }

    *v26 = v27;
    swift_willThrow();
  }

  v28 = *(v0 + 8);
LABEL_40:

  return v28();
}

uint64_t sub_258487908()
{
  v1 = *v0;
  v2 = *(*v0 + 536);

  sub_258465168(v1 + 256, &qword_27F92FB70, &qword_2585353E8);

  return MEMORY[0x2822009F8](sub_258487A30, v2, 0);
}

uint64_t sub_258487A30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  if (sub_258472CF0(*(v0[67] + v0[68]), &unk_28698B528))
  {
    if (*(v0[66] + 24))
    {
      v1 = v0[67];
      sub_2584AC3B8(v0[66], (v0 + 27), &qword_27F92FB90, &qword_258535420);
      v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
      swift_beginAccess();
      sub_2584AC5D0((v0 + 27), v1 + v2, &qword_27F92FB90, &qword_258535420);
      swift_endAccess();
      v3 = swift_task_alloc();
      v0[70] = v3;
      *v3 = v0;
      v3[1] = sub_258487C0C;

      return sub_258488930();
    }

    sub_258488194(v0[67], v0[66]);
    v10 = v0[1];
  }

  else
  {
    v5 = v0[68];
    v6 = v0[67];
    v7 = v0[66];
    sub_2584A5730();
    swift_allocError();
    if (*(v6 + v5) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
    sub_258488194(v6, v7);
    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_258487C0C()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = *(v2 + 536);
  if (v0)
  {
    v4 = sub_2584880C4;
  }

  else
  {
    v4 = sub_258487D38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258487D38()
{
  if (!sub_258472CF0(*(v0[67] + v0[68]), &unk_28698B550))
  {
    v4 = v0[68];
    v5 = v0[67];
    v6 = v0[66];
    sub_2584A5730();
    swift_allocError();
    if (*(v5 + v4) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v7 = v8;
    swift_willThrow();
    v2 = v5;
    v3 = v6;
    goto LABEL_8;
  }

  v1 = v0[71];
  sub_258483754();
  if (v1)
  {
    v2 = v0[67];
    v3 = v0[66];
LABEL_8:
    sub_258488194(v2, v3);
    v9 = v0[1];

    return v9();
  }

  v11 = swift_task_alloc();
  v0[72] = v11;
  *v11 = v0;
  v11[1] = sub_258487EA0;

  return sub_2584882F0();
}

uint64_t sub_258487EA0()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 536);
  if (v0)
  {
    v4 = sub_25848812C;
  }

  else
  {
    v4 = sub_258487FCC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258487FCC()
{
  if (sub_258472CF0(*(v0[67] + v0[68]), &unk_28698B578))
  {
    sub_258488194(v0[67], v0[66]);
    v1 = v0[1];
  }

  else
  {
    v2 = v0[68];
    v3 = v0[67];
    v4 = v0[66];
    sub_2584A5730();
    swift_allocError();
    if (*(v3 + v2) == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    *v5 = v6;
    swift_willThrow();
    sub_258488194(v3, v4);
    v1 = v0[1];
  }

  return v1();
}

uint64_t sub_2584880C4()
{
  sub_258488194(v0[67], v0[66]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25848812C()
{
  sub_258488194(v0[67], v0[66]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_258488194(uint64_t a1, uint64_t a2)
{
  sub_2584AC3B8(a2, &v8, &qword_27F92FB90, &qword_258535420);
  v3 = *v10;
  if (*v10)
  {
    v4 = *&v10[8];
    __swift_project_boxed_opaque_existential_1(&v8, *v10);
    (*(v4 + 8))(&v12, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    if (*(a1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) == 2 && *(&v13 + 1) != 0)
    {
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(a1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
      v8 = 1;
      v9 = 0u;
      memset(v10, 0, sizeof(v10));
      v11 = 8;
      v6 = off_286990988;
      type metadata accessor for TelemetryProvider(0);
      v6(&v8);
      sub_2584A57D8(&v8);
    }
  }

  else
  {
    sub_258465168(&v8, &qword_27F92FB90, &qword_258535420);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  return sub_258465168(&v12, &qword_27F92FB70, &qword_2585353E8);
}

uint64_t sub_2584882F0()
{
  v1[33] = v0;
  v1[34] = type metadata accessor for SessionMessage(0);
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258488384, v0, 0);
}

uint64_t sub_258488384()
{
  v1 = *(v0 + 264) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (!*(v1 + 24))
  {
    v18 = *v1;
    v19 = *(v1 + 16);
    *(v0 + 88) = *(v1 + 32);
    *(v0 + 72) = v19;
    *(v0 + 56) = v18;
    if (*(v0 + 80))
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_2584A5730();
    swift_allocError();
    *v20 = 8;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_258464C30(v1, v0 + 56);
  if (!*(v0 + 80))
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(v0 + 264);
  sub_258464C18((v0 + 56), v0 + 16);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v0 + 136, &qword_27F92FB90, &qword_258535420);
  if (*(v0 + 160))
  {
    v4 = *(v0 + 280);
    sub_258464C18((v0 + 136), v0 + 96);
    sub_258464C30(v0 + 96, v0 + 176);
    v5 = sub_2584AE310((v0 + 176));
    v7 = v6;
    v9 = v8;
    v11 = v10;
    *(v0 + 288) = v5;
    *(v0 + 296) = v6;
    *(v0 + 304) = v8;
    *(v0 + 312) = v10;
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
    *v4 = v5;
    v4[1] = v7;
    v4[2] = v9;
    v4[3] = v11;
    swift_storeEnumTagMultiPayload();
    v14 = *(v13 + 80);
    sub_2584A7B8C(v5, v7);
    sub_2584A7B8C(v9, v11);
    v23 = (v14 + *v14);
    v15 = swift_task_alloc();
    *(v0 + 320) = v15;
    *v15 = v0;
    v15[1] = sub_2584886B0;
    v16 = *(v0 + 280);

    return v23(v16, v12, v13);
  }

  sub_258465168(v0 + 136, &qword_27F92FB90, &qword_258535420);
  sub_2584A5730();
  swift_allocError();
  *v21 = 9;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_10:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2584886B0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 264);
  sub_2584ABB80(v3, type metadata accessor for SessionMessage);
  if (v0)
  {
    v5 = sub_2584888A4;
  }

  else
  {
    v5 = sub_25848880C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25848880C()
{
  v1 = v0[38];
  v2 = v0[39];
  sub_258467E20(v0[36], v0[37]);
  sub_258467E20(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2584888A4()
{
  v1 = v0[38];
  v2 = v0[39];
  sub_258467E20(v0[36], v0[37]);
  sub_258467E20(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_258488950()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v0[3] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + v2) == 2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_258488A4C;

    return sub_2584A1D38();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_258488A4C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_258488B90, v6, 0);
  }
}

uint64_t sub_258488B90(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  if (*(v2 + v3) == 2)
  {
    v4 = swift_task_alloc();
    v1[5] = v4;
    *v4 = v1;
    v4[1] = sub_258488CC4;

    return sub_2584A2268();
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v2 + v3) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v6 = v7;
    swift_willThrow();
    v8 = v1[1];

    return v8();
  }
}

uint64_t sub_258488CC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258488DB8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) == 2)
  {
    sub_2584AC3B8(result, &v3, &qword_27F92FB70, &qword_2585353E8);
    if (v4)
    {
      sub_258464C18(&v3, v6);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      LOBYTE(v3) = sub_25847B7F4();
      v5 = 3;
      v2 = off_286990988;
      type metadata accessor for TelemetryProvider(0);
      v2(&v3);
      sub_2584A57D8(&v3);
      return __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    else
    {
      return sub_258465168(&v3, &qword_27F92FB70, &qword_2585353E8);
    }
  }

  return result;
}

uint64_t sub_258488EC4(uint64_t a1)
{
  *(v2 + 696) = v1;
  *(v2 + 688) = a1;
  return MEMORY[0x2822009F8](sub_258488EE8, v1, 0);
}

uint64_t sub_258488EE8()
{
  v1 = *(v0 + 688);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 88) + **(v3 + 88));
  v4 = swift_task_alloc();
  *(v0 + 704) = v4;
  *v4 = v0;
  v4[1] = sub_258489014;

  return v6(v0 + 16, v2, v3);
}

uint64_t sub_258489014()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  v3 = *(v2 + 696);
  if (v0)
  {
    v4 = sub_2584898B8;
  }

  else
  {
    v4 = sub_25848912C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25848912C(uint64_t a1)
{
  v51 = v1;
  v2 = *(v1 + 696);
  v3 = *(v1 + 32);
  *(v1 + 112) = *(v1 + 16);
  *(v1 + 128) = v3;
  v4 = *(v1 + 96);
  *(v1 + 176) = *(v1 + 80);
  *(v1 + 192) = v4;
  v5 = *(v1 + 64);
  *(v1 + 144) = *(v1 + 48);
  *(v1 + 160) = v5;
  if (*(v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) != 2)
  {
    v22 = 2;
LABEL_16:
    sub_2584A5730();
    swift_allocError();
    *v42 = v22;
    swift_willThrow();
    sub_2584A975C(v1 + 112);
    v43 = *(v1 + 8);

    return v43();
  }

  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  v9 = *(v1 + 128);
  v8 = *(v1 + 136);
  v11 = *(v1 + 144);
  v10 = *(v1 + 152);
  v13 = *(v1 + 160);
  v12 = *(v1 + 168);
  v15 = *(v1 + 176);
  v14 = *(v1 + 184);
  v16 = *(v1 + 192);
  v17 = *(v1 + 200);
  v18 = (v17 >> 59) & 6 | ((v14 & 0x2000000000000000) != 0);
  if (v18 != 3)
  {
    if (v18 == 1)
    {
      *(v1 + 592) = v7;
      *(v1 + 600) = v6;
      *(v1 + 608) = v9;
      *(v1 + 616) = v8;
      *(v1 + 624) = v11;
      *(v1 + 632) = v10;
      *(v1 + 640) = v13;
      *(v1 + 648) = v12;
      *(v1 + 656) = v15;
      *(v1 + 664) = v14 & 0xDFFFFFFFFFFFFFFFLL;
      *(v1 + 672) = v16;
      *(v1 + 680) = v17 & 0xCFFFFFFFFFFFFFFFLL;
      v19 = swift_task_alloc();
      *(v1 + 720) = v19;
      *v19 = v1;
      v19[1] = sub_258489624;
      v20 = *(v1 + 688);

      return sub_258489998((v1 + 592), v20);
    }

    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v25 = sub_258532A4C();
    __swift_project_value_buffer(v25, qword_27F93CFA8);

    sub_2584A97B0(v1 + 112, v1 + 208);
    v26 = sub_258532A2C();
    v27 = sub_2585338CC();

    sub_2584A975C(v1 + 112);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44 = v29;
      *v28 = 136315394;
      sub_258533B8C();

      *&v45 = 0xD000000000000017;
      *(&v45 + 1) = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = sub_258533DFC();
      MEMORY[0x259C81500](v30);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v31 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v44);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = *(v1 + 160);
      v47 = *(v1 + 144);
      v48 = v32;
      v33 = *(v1 + 192);
      v49 = *(v1 + 176);
      v50 = v33;
      v34 = *(v1 + 128);
      v45 = *(v1 + 112);
      v46 = v34;
      sub_2584A97B0(v1 + 112, v1 + 400);
      v35 = sub_2584B2E74();
      v37 = v36;
      v38 = v48;
      *(v1 + 336) = v47;
      *(v1 + 352) = v38;
      v39 = v50;
      *(v1 + 368) = v49;
      *(v1 + 384) = v39;
      v40 = v46;
      *(v1 + 304) = v45;
      *(v1 + 320) = v40;
      sub_2584A975C(v1 + 304);
      v41 = sub_2584713B0(v35, v37, &v44);

      *(v28 + 14) = v41;
      _os_log_impl(&dword_25845E000, v26, v27, "%s received unexpected message %s on peeled connection", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v29, -1, -1);
      MEMORY[0x259C82900](v28, -1, -1);
    }

    v22 = 16;
    goto LABEL_16;
  }

  *(v1 + 496) = v7;
  *(v1 + 504) = v6;
  *(v1 + 512) = v9;
  *(v1 + 520) = v8;
  *(v1 + 528) = v11;
  *(v1 + 536) = v10;
  *(v1 + 544) = v13;
  *(v1 + 552) = v12;
  *(v1 + 560) = v15;
  *(v1 + 568) = v14 & 0xDFFFFFFFFFFFFFFFLL;
  *(v1 + 576) = v16;
  *(v1 + 584) = v17 & 0xCFFFFFFFFFFFFFFFLL;
  v23 = swift_task_alloc();
  *(v1 + 736) = v23;
  *v23 = v1;
  v23[1] = sub_2584897A0;
  v24 = *(v1 + 688);

  return sub_25848A230((v1 + 496), v24);
}

uint64_t sub_258489624()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  v3 = *(v2 + 696);
  if (v0)
  {
    v4 = sub_2584898D0;
  }

  else
  {
    v4 = sub_25848973C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25848973C()
{
  sub_2584A975C(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584897A0()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  v3 = *(v2 + 696);
  if (v0)
  {
    v4 = sub_258489934;
  }

  else
  {
    v4 = sub_2584AC7A0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584898D0()
{
  sub_2584A975C(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258489934()
{
  sub_2584A975C(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258489998(_OWORD *a1, uint64_t a2)
{
  *(v3 + 632) = v2;
  *(v3 + 624) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303A8, &unk_258537F60);
  *(v3 + 640) = v5;
  *(v3 + 648) = *(v5 - 8);
  *(v3 + 656) = swift_task_alloc();
  v6 = a1[3];
  *(v3 + 48) = a1[2];
  *(v3 + 64) = v6;
  v7 = a1[5];
  *(v3 + 80) = a1[4];
  *(v3 + 96) = v7;
  v8 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v8;

  return MEMORY[0x2822009F8](sub_258489A84, v2, 0);
}

uint64_t sub_258489A84()
{
  v1 = *(*(v0 + 632) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
  *(v0 + 664) = v1;
  return MEMORY[0x2822009F8](sub_258489AB0, v1, 0);
}

uint64_t sub_258489AB0()
{
  v1 = *(v0 + 664);
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {

    v3 = sub_2584BC4BC();
    v4 = *(v0 + 632);
    if (v5)
    {
      v6 = *(v2 + 56) + 40 * v3;
      v7 = *v6;
      *(v0 + 672) = *v6;
      v8 = *(v6 + 8);
      *(v0 + 680) = v8;
      v9 = *(v6 + 16);
      *(v0 + 688) = v9;
      v10 = *(v6 + 24);
      *(v0 + 696) = v10;
      v11 = *(v6 + 32);
      *(v0 + 577) = v11;
      sub_2584A967C(v7, v8, v9, v10, v11);

      v12 = sub_258489C54;
    }

    else
    {

      v12 = sub_2584AC7D0;
    }

    v14 = v12;
    v13 = v4;
  }

  else
  {
    v13 = *(v0 + 632);
    v14 = sub_258489BBC;
  }

  return MEMORY[0x2822009F8](v14, v13, 0);
}

uint64_t sub_258489BBC(uint64_t a1)
{
  sub_2584A5730();
  swift_allocError();
  *v2 = 12;
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_258489C54(uint64_t a1)
{
  v2 = *(v1 + 632);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v1 + 704) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v4 = *(v1 + 577);
  if (*(v2 + v3) != 2)
  {
    v5 = *(v1 + 696);
    v6 = *(v1 + 688);
    v7 = *(v1 + 680);
    v8 = *(v1 + 672);
    sub_2584A5730();
    swift_allocError();
    v10 = 2;
    goto LABEL_5;
  }

  if (((v4 >= 0) ^ *(v1 + 16)))
  {
    v5 = *(v1 + 696);
    v6 = *(v1 + 688);
    v7 = *(v1 + 680);
    v8 = *(v1 + 672);
    sub_2584A5730();
    swift_allocError();
    v10 = 15;
LABEL_5:
    *v9 = v10;
    swift_willThrow();
    sub_2584A96C0(v8, v7, v6, v5, v4);

    v11 = *(v1 + 8);

    return v11();
  }

  v13 = *(v1 + 688);
  *(v1 + 544) = *(v1 + 672);
  *(v1 + 560) = v13;
  *(v1 + 576) = v4;
  v14 = *(v1 + 64);
  *(v1 + 144) = *(v1 + 48);
  *(v1 + 160) = v14;
  v15 = *(v1 + 96);
  *(v1 + 176) = *(v1 + 80);
  *(v1 + 192) = v15;
  v16 = *(v1 + 32);
  *(v1 + 112) = *(v1 + 16);
  *(v1 + 128) = v16;
  sub_2584A9700(v1 + 16, v1 + 208);
  v17 = swift_task_alloc();
  *(v1 + 712) = v17;
  *v17 = v1;
  v17[1] = sub_258489E48;
  v18 = *(v1 + 624);

  return sub_25848A9E4(v1 + 544, v18, (v1 + 112));
}

uint64_t sub_258489E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  *(v7 + 496) = v5;
  *(v7 + 504) = a1;
  *(v7 + 512) = a2;
  *(v7 + 520) = a3;
  *(v7 + 528) = a4;
  *(v7 + 536) = v4;
  *(v7 + 720) = a1;
  *(v7 + 728) = v4;

  v8 = *(v6 + 632);
  v9 = *(v7 + 128);
  if (v4)
  {
    *(v7 + 304) = *(v7 + 112);
    *(v7 + 320) = v9;
    v10 = *(v7 + 144);
    v11 = *(v7 + 160);
    v12 = *(v7 + 192);
    *(v7 + 368) = *(v7 + 176);
    *(v7 + 384) = v12;
    *(v7 + 336) = v10;
    *(v7 + 352) = v11;
    sub_258465168(v7 + 304, &qword_27F9303B8, &qword_258537F70);
    v13 = sub_25848A1B4;
  }

  else
  {
    *(v7 + 400) = *(v7 + 112);
    *(v7 + 416) = v9;
    v14 = *(v7 + 144);
    v15 = *(v7 + 160);
    v16 = *(v7 + 192);
    *(v7 + 464) = *(v7 + 176);
    *(v7 + 480) = v16;
    *(v7 + 432) = v14;
    *(v7 + 448) = v15;
    sub_258465168(v7 + 400, &qword_27F9303B8, &qword_258537F70);
    v13 = sub_258489FF8;
  }

  return MEMORY[0x2822009F8](v13, v8, 0);
}

uint64_t sub_258489FF8(uint64_t a1)
{
  if (*(*(v1 + 632) + *(v1 + 704)) == 2)
  {
    v2 = *(v1 + 528);
    v3 = *(v1 + 688);
    v4 = *(v1 + 680);
    v5 = *(v1 + 672);
    v6 = *(v1 + 656);
    v7 = *(v1 + 648);
    v17 = *(v1 + 696);
    v18 = *(v1 + 640);
    *(v1 + 608) = *(v1 + 720);
    *(v1 + 616) = v2;
    v8 = *(v1 + 577);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
    sub_2585336CC();
    swift_unknownObjectRelease();
    sub_2584A96C0(v5, v4, v3, v17, v8);
    (*(v7 + 8))(v6, v18);
  }

  else
  {
    v10 = *(v1 + 696);
    v11 = *(v1 + 688);
    v12 = *(v1 + 680);
    v13 = *(v1 + 672);
    v14 = *(v1 + 577);
    sub_2584A5730();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_2584A96C0(v13, v12, v11, v10, v14);
  }

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_25848A1B4()
{
  sub_2584A96C0(*(v0 + 672), *(v0 + 680), *(v0 + 688), *(v0 + 696), *(v0 + 577));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848A230(_OWORD *a1, uint64_t a2)
{
  *(v3 + 608) = v2;
  *(v3 + 600) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303A8, &unk_258537F60);
  *(v3 + 616) = v5;
  *(v3 + 624) = *(v5 - 8);
  *(v3 + 632) = swift_task_alloc();
  v6 = a1[3];
  *(v3 + 48) = a1[2];
  *(v3 + 64) = v6;
  v7 = a1[5];
  *(v3 + 80) = a1[4];
  *(v3 + 96) = v7;
  v8 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v8;

  return MEMORY[0x2822009F8](sub_25848A31C, v2, 0);
}

uint64_t sub_25848A31C()
{
  v1 = *(*(v0 + 608) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
  *(v0 + 640) = v1;
  return MEMORY[0x2822009F8](sub_25848A348, v1, 0);
}

uint64_t sub_25848A348()
{
  v1 = *(v0 + 640);
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {

    v3 = sub_2584BC50C();
    v4 = *(v0 + 608);
    if (v5)
    {
      v6 = *(v2 + 56) + 16 * v3;
      v7 = *v6;
      *(v0 + 648) = *v6;
      v8 = *(v6 + 8);
      *(v0 + 593) = v8;
      sub_2584742A4(v7, v8);

      v9 = sub_25848A4D0;
    }

    else
    {

      v9 = sub_2584AC7D4;
    }

    v11 = v9;
    v10 = v4;
  }

  else
  {
    v10 = *(v0 + 608);
    v11 = sub_25848A438;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_25848A438(uint64_t a1)
{
  sub_2584A5730();
  swift_allocError();
  *v2 = 12;
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_25848A4D0(uint64_t a1)
{
  v2 = *(v1 + 608);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v1 + 656) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v4 = *(v1 + 593);
  if (*(v2 + v3) != 2)
  {
    v5 = 2;
    goto LABEL_6;
  }

  if (!*(v1 + 593))
  {
    if (*(v1 + 16))
    {
      goto LABEL_11;
    }

    v4 = 0;
    v5 = 15;
LABEL_6:
    sub_2584A9614(*(v1 + 648), v4);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v5 = 15;
LABEL_7:
    sub_2584A5730();
    swift_allocError();
    *v6 = v5;
    swift_willThrow();

    v7 = *(v1 + 8);

    return v7();
  }

LABEL_11:
  *(v1 + 584) = *(v1 + 648);
  *(v1 + 592) = v4;
  v9 = *(v1 + 64);
  *(v1 + 144) = *(v1 + 48);
  *(v1 + 160) = v9;
  v10 = *(v1 + 96);
  *(v1 + 176) = *(v1 + 80);
  *(v1 + 192) = v10;
  v11 = *(v1 + 32);
  *(v1 + 112) = *(v1 + 16);
  *(v1 + 128) = v11;
  sub_2584A9620(v1 + 16, v1 + 208);
  v12 = swift_task_alloc();
  *(v1 + 664) = v12;
  *v12 = v1;
  v12[1] = sub_25848A660;
  v13 = *(v1 + 600);

  return sub_25848B110((v1 + 584), v13, (v1 + 112));
}

uint64_t sub_25848A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  *(v6 + 496) = v5;
  *(v6 + 504) = a1;
  *(v6 + 512) = a2;
  *(v6 + 520) = a3;
  *(v6 + 528) = a4;
  *(v6 + 536) = v4;
  *(v6 + 672) = a1;
  *(v6 + 680) = v4;

  if (v4)
  {
    v7 = *(v6 + 608);
    v8 = *(v6 + 128);
    *(v6 + 304) = *(v6 + 112);
    *(v6 + 320) = v8;
    v9 = *(v6 + 192);
    v11 = *(v6 + 144);
    v10 = *(v6 + 160);
    *(v6 + 368) = *(v6 + 176);
    *(v6 + 384) = v9;
    *(v6 + 336) = v11;
    *(v6 + 352) = v10;
    sub_258465168(v6 + 304, &qword_27F9303B0, &unk_25853F8C0);
    v12 = sub_25848A974;
    v13 = v7;
  }

  else
  {
    v14 = *(v6 + 593);
    v15 = *(v6 + 648);
    v16 = *(v6 + 608);
    v17 = *(v6 + 128);
    *(v6 + 400) = *(v6 + 112);
    *(v6 + 416) = v17;
    v18 = *(v6 + 192);
    v20 = *(v6 + 144);
    v19 = *(v6 + 160);
    *(v6 + 464) = *(v6 + 176);
    *(v6 + 480) = v18;
    *(v6 + 432) = v20;
    *(v6 + 448) = v19;
    sub_258465168(v6 + 400, &qword_27F9303B0, &unk_25853F8C0);
    sub_2584A9614(v15, v14);
    v12 = sub_25848A818;
    v13 = v16;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_25848A818(uint64_t a1)
{
  if (*(v1[76] + v1[82]) == 2)
  {
    v2 = v1[79];
    v3 = v1[78];
    v4 = v1[77];
    v5 = v1[64] | 0x4000000000000000;
    v1[71] = v1[84];
    v1[72] = v5;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
    sub_2585336CC();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v6 = v1[1];

  return v6();
}

uint64_t sub_25848A974()
{
  sub_2584A9614(*(v0 + 648), *(v0 + 593));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848A9E4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v4 + 208) = a2;
  *(v4 + 216) = v3;
  *(v4 + 224) = type metadata accessor for VideoStreamInternalInitParameters(0);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v7 = *(a1 + 16);
  *(v4 + 248) = *a1;
  *(v4 + 264) = v7;
  *(v4 + 328) = *(a1 + 32);
  v8 = a3[3];
  *(v4 + 48) = a3[2];
  *(v4 + 64) = v8;
  v9 = a3[5];
  *(v4 + 80) = a3[4];
  *(v4 + 96) = v9;
  v10 = a3[1];
  *(v4 + 16) = *a3;
  *(v4 + 32) = v10;

  return MEMORY[0x2822009F8](sub_25848AAC4, v3, 0);
}

uint64_t sub_25848AAC4()
{
  v22 = *(v0 + 264);
  v23 = *(v0 + 272);
  v1 = *(v0 + 248);
  v21 = *(v0 + 256);
  v2 = *(v0 + 240);
  v24 = *(v0 + 232);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 32);
  v6 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 33);
  v19 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 16);
  v20 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage);
  v7 = *(v0 + 328);
  sub_258464C30(*(v0 + 208), v2 + 80);
  v8 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v9 = v3[8];
  v10 = sub_2585329BC();
  (*(*(v10 - 8) + 16))(v2 + v9, v4 + v8, v10);
  LOBYTE(v8) = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32) != 0;
  sub_258464C30(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider, v2 + v3[10]);
  *v2 = v20;
  *(v2 + 16) = v19;
  *(v2 + 32) = v5;
  *(v2 + 33) = v6;
  *(v2 + 40) = v1;
  *(v2 + 48) = v21;
  *(v2 + 56) = v22;
  *(v2 + 64) = v23;
  *(v2 + 72) = v7;
  v11 = *(v0 + 48);
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  *(v2 + 200) = *(v0 + 96);
  *(v2 + 184) = v13;
  *(v2 + 168) = v12;
  v14 = *(v0 + 16);
  *(v2 + 136) = *(v0 + 32);
  *(v2 + 120) = v14;
  *(v2 + 152) = v11;
  *(v2 + v3[9]) = v8;
  sub_2584AC4D0(v2, v24, type metadata accessor for VideoStreamInternalInitParameters);
  sub_2584A967C(v1, v21, v22, v23, v7);
  sub_2584AC3B8(v0 + 16, v0 + 112, &qword_27F9303B8, &qword_258537F70);
  *(v0 + 280) = sub_25850E63C(v24);
  v15 = *(v0 + 216);
  *(v0 + 288) = sub_2584AC2F0(&qword_27F9305A0, type metadata accessor for VideoStreamAVConference, &unk_25853EAD4);
  *(v0 + 296) = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
  swift_getObjectType();
  v17 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_25848ADA0, v17, v16);
}

uint64_t sub_25848ADA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9305A8, &qword_2585382C0);
  swift_allocObject();

  v2 = sub_25849497C(v1);
  *(v0 + 304) = v2;
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *v3 = v0;
  v3[1] = sub_25848AE8C;

  return sub_25849FE0C(v2);
}

uint64_t sub_25848AE8C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 216);

  if (v0)
  {
    v4 = sub_25848B074;
  }

  else
  {
    v4 = sub_25848AFD4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25848AFD4()
{
  sub_2584ABB80(v0[30], type metadata accessor for VideoStreamInternalInitParameters);

  v1 = v0[1];
  v2 = v0[35];
  v3 = v0[36];

  return v1(v2, &off_286990F08, &off_286990F18, v3);
}

uint64_t sub_25848B074()
{

  sub_2584ABB80(*(v0 + 240), type metadata accessor for VideoStreamInternalInitParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848B110(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  *(v4 + 208) = a2;
  *(v4 + 216) = v3;
  *(v4 + 224) = type metadata accessor for AudioStreamInternalInitParameters(0);
  *(v4 + 232) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v4 + 240) = v7;
  *(v4 + 248) = v8;
  *(v4 + 304) = *(a1 + 8);
  v9 = a3[3];
  *(v4 + 48) = a3[2];
  *(v4 + 64) = v9;
  v10 = a3[5];
  *(v4 + 80) = a3[4];
  *(v4 + 96) = v10;
  v11 = a3[1];
  *(v4 + 16) = *a3;
  *(v4 + 32) = v11;

  return MEMORY[0x2822009F8](sub_25848B1E4, v3, 0);
}

uint64_t sub_25848B1E4()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v21 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 32);
  v7 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 33);
  v19 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 16);
  v20 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage);
  sub_258464C30(*(v0 + 208), v3 + 56);
  v8 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v9 = v4[8];
  v10 = sub_2585329BC();
  (*(*(v10 - 8) + 16))(v3 + v9, v5 + v8, v10);
  LOBYTE(v9) = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32) != 0;
  sub_258464C30(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider, v3 + v4[10]);
  *v3 = v20;
  *(v3 + 16) = v19;
  *(v3 + 32) = v6;
  *(v3 + 33) = v7;
  *(v3 + 40) = v2;
  *(v3 + 48) = v1;
  v11 = *(v0 + 48);
  v12 = *(v0 + 64);
  v13 = *(v0 + 96);
  *(v3 + 160) = *(v0 + 80);
  *(v3 + 176) = v13;
  *(v3 + 144) = v12;
  v14 = *(v0 + 32);
  *(v3 + 96) = *(v0 + 16);
  *(v3 + 112) = v14;
  *(v3 + 128) = v11;
  *(v3 + v4[9]) = v9;
  sub_2584AC4D0(v3, v21, type metadata accessor for AudioStreamInternalInitParameters);
  sub_2584742A4(v2, v1);
  sub_2584AC3B8(v0 + 16, v0 + 112, &qword_27F9303B0, &unk_25853F8C0);
  *(v0 + 256) = sub_258531798(v21);
  v15 = *(v0 + 216);
  *(v0 + 264) = sub_2584AC2F0(&qword_27F930550, type metadata accessor for AudioStreamAVConference, &unk_25853F85C);
  *(v0 + 272) = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
  swift_getObjectType();
  v17 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_25848B494, v17, v16);
}

uint64_t sub_25848B494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930558, &qword_258538200);
  swift_allocObject();

  v2 = sub_258494A40(v1);
  *(v0 + 280) = v2;
  v3 = swift_task_alloc();
  *(v0 + 288) = v3;
  *v3 = v0;
  v3[1] = sub_25848B580;

  return sub_2584A0618(v2);
}

uint64_t sub_25848B580()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 216);

  if (v0)
  {
    v4 = sub_25848B768;
  }

  else
  {
    v4 = sub_25848B6C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25848B6C8()
{
  sub_2584ABB80(v0[30], type metadata accessor for AudioStreamInternalInitParameters);

  v1 = v0[1];
  v2 = v0[32];
  v3 = v0[33];

  return v1(v2, v3, &off_286991910, &off_286991920);
}

uint64_t sub_25848B768()
{

  sub_2584ABB80(*(v0 + 240), type metadata accessor for AudioStreamInternalInitParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848B804()
{
  v1[26] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930350, &unk_258537A78);
  v1[27] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[28] = v2;
  *v2 = v1;
  v2[1] = sub_25848B8CC;

  return sub_258484538();
}

uint64_t sub_25848B8CC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 208);

    return MEMORY[0x2822009F8](sub_25848BA18, v6, 0);
  }
}

uint64_t sub_25848BA18(uint64_t a1)
{
  v2 = *(v1 + 208);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v1 + 232) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v2 + v3) == 1)
  {
    v4 = v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v4 + 24))
    {
      sub_258464C30(v4, v1 + 56);
      if (*(v1 + 80))
      {
LABEL_4:
        sub_258464C18((v1 + 56), v1 + 16);
        v5 = *(v1 + 40);
        v6 = *(v1 + 48);
        __swift_project_boxed_opaque_existential_1((v1 + 16), v5);
        v15 = (*(v6 + 64) + **(v6 + 64));
        v7 = swift_task_alloc();
        *(v1 + 240) = v7;
        *v7 = v1;
        v7[1] = sub_25848BC64;
        v8 = *(v1 + 216);

        return v15(v8, v5, v6);
      }
    }

    else
    {
      v12 = *v4;
      v13 = *(v4 + 16);
      *(v1 + 88) = *(v4 + 32);
      *(v1 + 72) = v13;
      *(v1 + 56) = v12;
      if (*(v1 + 80))
      {
        goto LABEL_4;
      }
    }

    sub_2584A5730();
    swift_allocError();
    v11 = 8;
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v2 + v3) == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }
  }

  *v10 = v11;
  swift_willThrow();

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_25848BC64()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_25848C20C;
  }

  else
  {
    v4 = sub_25848BD90;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25848BD90()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream;
  swift_beginAccess();
  sub_2584AC5D0(v2, v3 + v5, &qword_27F930350, &unk_258537A78);
  swift_endAccess();
  if (*(v3 + v1) == 1)
  {
    if (*(v0[26] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
    {
      v6 = v0[5];
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
      v15 = (*(v7 + 104) + **(v7 + 104));
      v8 = swift_task_alloc();
      v0[32] = v8;
      *v8 = v0;
      v8[1] = sub_25848C02C;

      return v15(v0 + 12, v6, v7);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v14 = v0[1];
  }

  else
  {
    v10 = v0[29];
    v11 = v0[26];
    sub_2584A5730();
    swift_allocError();
    if (*(v11 + v10) == 3)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    *v12 = v13;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_25848C02C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_25848C278;
  }

  else
  {
    v4 = sub_25848C158;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25848C158()
{
  v1 = v0[26];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC5D0((v0 + 12), v1 + v2, &qword_27F92FB90, &qword_258535420);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25848C20C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848C278()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848C304()
{
  sub_2584AC3B8(*(v0 + 240) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 56, &qword_27F930360, &unk_258537A90);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 240);
    sub_258464C18((v0 + 56), v0 + 16);
    v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v2 + 24))
    {
      sub_258464C30(v2, v0 + 136);
      if (*(v0 + 160))
      {
LABEL_4:
        v3 = *(v0 + 240);
        sub_258464C18((v0 + 136), v0 + 96);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID;
        v15 = *(v0 + 120);
        v5 = *(v0 + 120);
        v6 = __swift_project_boxed_opaque_existential_1((v0 + 96), v5);
        *(v0 + 200) = v15;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
        (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);

        v8 = swift_task_alloc();
        *(v0 + 248) = v8;
        *v8 = v0;
        v8[1] = sub_25848C594;
        v9 = *(v0 + 240);

        return sub_25845FEA4(v3 + v4, v0 + 176, &unk_258538370, v9);
      }
    }

    else
    {
      v12 = *v2;
      v13 = *(v2 + 16);
      *(v0 + 168) = *(v2 + 32);
      *(v0 + 152) = v13;
      *(v0 + 136) = v12;
      if (*(v0 + 160))
      {
        goto LABEL_4;
      }
    }

    sub_2584A5730();
    swift_allocError();
    *v14 = 8;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v11 = *(v0 + 8);
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F930360, &unk_258537A90);
    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_25848C594()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);

    v4 = sub_25848C734;
  }

  else
  {
    v3 = *(v2 + 240);

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 176));
    v4 = sub_25848C6C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25848C6C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25848C734()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25848C7A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25848C7C4, a2, 0);
}

uint64_t sub_25848C7C4()
{
  v18 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFA8);

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v7 = 136315394;
    sub_258533B8C();

    v17[1] = 0xD000000000000017;
    v17[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_258533DFC();
    MEMORY[0x259C81500](v10);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v11 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_25845E000, v4, v5, "%s controlConnectionMigrationManager interrupted with error=%@", v7, 0x16u);
    sub_258465168(v8, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  v14 = swift_task_alloc();
  *(v0 + 32) = v14;
  *v14 = v0;
  v14[1] = sub_25848CAB4;
  v15 = *(v0 + 16);

  return sub_258491E14(v15);
}

uint64_t sub_25848CAB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25848CBA8()
{
  v1[33] = v0;
  v1[34] = type metadata accessor for SessionMessage(0);
  v1[35] = swift_task_alloc();
  v1[36] = type metadata accessor for ActivationRequestInfo(0);
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25848CC6C, v0, 0);
}

uint64_t sub_25848CC6C()
{
  v1 = *(v0 + 264);
  if (!*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
    goto LABEL_16;
  }

  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (!*(v2 + 24))
  {
    v27 = *v2;
    v28 = *(v2 + 16);
    *(v0 + 88) = *(v2 + 32);
    *(v0 + 72) = v28;
    *(v0 + 56) = v27;
    if (*(v0 + 80))
    {
      goto LABEL_4;
    }

LABEL_14:
    sub_2584A5730();
    swift_allocError();
    *v29 = 8;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_258464C30(v2, v0 + 56);
  if (!*(v0 + 80))
  {
    goto LABEL_14;
  }

LABEL_4:
  v3 = *(v0 + 264);
  sub_258464C18((v0 + 56), v0 + 16);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC3B8(v3 + v4, v0 + 136, &qword_27F92FB90, &qword_258535420);
  if (*(v0 + 160))
  {
    sub_258464C18((v0 + 136), v0 + 96);
    if (qword_27F92F958 != -1)
    {
      swift_once();
    }

    v5 = qword_27F93D260;
    v32 = qword_27F93D258;
    v6 = qword_27F92F950;

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v9 = *(v0 + 280);
    v10 = *(v0 + 264);
    v12 = qword_27F93D248;
    v11 = qword_27F93D250;
    v13 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
    v14 = v8[6];
    v15 = sub_2585329BC();
    (*(*(v15 - 8) + 16))(v7 + v14, v10 + v13, v15);
    sub_258464C30(v0 + 96, v0 + 176);

    v16 = sub_2584AE310((v0 + 176));
    *v7 = v32;
    v7[1] = v5;
    v7[2] = v12;
    v7[3] = v11;
    v17 = (v7 + v8[7]);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 1;
    v18 = (v7 + v8[8]);
    *v18 = v16;
    v18[1] = v19;
    v18[2] = v20;
    v18[3] = v21;
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
    sub_2584AC4D0(v7, v9, type metadata accessor for ActivationRequestInfo);
    swift_storeEnumTagMultiPayload();
    v33 = (*(v23 + 80) + **(v23 + 80));
    v24 = swift_task_alloc();
    *(v0 + 304) = v24;
    *v24 = v0;
    v24[1] = sub_25848D0D4;
    v25 = *(v0 + 280);

    return v33(v25, v22, v23);
  }

  sub_258465168(v0 + 136, &qword_27F92FB90, &qword_258535420);
  sub_2584A5730();
  swift_allocError();
  *v30 = 9;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_16:

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_25848D0D4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 264);
  sub_2584ABB80(v3, type metadata accessor for SessionMessage);
  if (v0)
  {
    v5 = sub_25848D2CC;
  }

  else
  {
    v5 = sub_25848D230;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25848D230()
{
  sub_2584ABB80(v0[37], type metadata accessor for ActivationRequestInfo);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25848D2CC()
{
  sub_2584ABB80(v0[37], type metadata accessor for ActivationRequestInfo);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25848D368(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25848D478, v1, 0);
}

uint64_t sub_25848D478()
{
  v1 = *(v0 + 216);
  if (!*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v4, &unk_27F930DB0, &qword_258536390);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_258465168(*(v0 + 232), &unk_27F930DB0, &qword_258536390);
    return sub_258533C9C();
  }

  v7 = *(v0 + 216);
  (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
  v8 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v0 + 56, &qword_27F92FB90, &qword_258535420);
  if (*(v0 + 80))
  {
    v9 = *(v0 + 208);
    sub_258464C18((v0 + 56), v0 + 16);
    sub_258493BD8(1, 0, 0, v9[4], v9[5], v9[6]);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);
    v18 = *(v0 + 216);
    v19 = *(v0 + 208);
    v37 = *v19;
    v38 = *(v0 + 224);
    v35 = v19[1];
    v36 = v19[2];
    v34 = v19[3];

    v20 = sub_25853294C();
    v32 = v21;
    v33 = v20;
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    (*(v22 + 8))(v23, v22);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v24 = sub_25847B7F4();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    v25 = v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
    v26 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo);
    v27 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 8);
    v28 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 16);
    v29 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 24);
    v30 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 32);
    v31 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 40);
    *v25 = v37;
    *(v25 + 8) = v35;
    *(v25 + 16) = v36;
    *(v25 + 24) = v34;
    *(v25 + 32) = v33;
    *(v25 + 40) = v32;
    *(v25 + 48) = v24;
    sub_2584A5834(v26, v27, v28, v29, v30, v31);
    sub_25853364C();
    (*(v11 + 8))(v10, v12);
    (*(v11 + 56))(v38, 1, 1, v12);
    swift_beginAccess();
    sub_2584AC5D0(v38, v1 + v5, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_7:

    v17 = *(v0 + 8);
    goto LABEL_8;
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  v15 = *(v0 + 240);
  sub_258465168(v0 + 56, &qword_27F92FB90, &qword_258535420);
  sub_2584A5730();
  swift_allocError();
  *v16 = 9;
  swift_willThrow();
  (*(v14 + 8))(v13, v15);

  v17 = *(v0 + 8);
LABEL_8:

  return v17();
}

uint64_t sub_25848D8B8(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v2[62] = type metadata accessor for SessionMessage(0);
  v2[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25848D9F8, v1, 0);
}

uint64_t sub_25848D9F8()
{
  v1 = *(v0 + 488);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
    goto LABEL_11;
  }

  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  *(v0 + 552) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v4, &unk_27F930DB0, &qword_258536390);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_258465168(*(v0 + 520), &unk_27F930DB0, &qword_258536390);
    return sub_258533C9C();
  }

  v7 = *(v0 + 488);
  (*(*(v0 + 536) + 32))(*(v0 + 544), *(v0 + 520), *(v0 + 528));
  v8 = v7 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (!*(v8 + 24))
  {
    v21 = *v8;
    v22 = *(v8 + 16);
    *(v0 + 216) = *(v8 + 32);
    *(v0 + 200) = v22;
    *(v0 + 184) = v21;
    if (*(v0 + 208))
    {
      goto LABEL_6;
    }

LABEL_9:
    v23 = *(v0 + 544);
    v24 = *(v0 + 536);
    v25 = *(v0 + 528);
    sub_2584A5730();
    swift_allocError();
    *v26 = 8;
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
    goto LABEL_11;
  }

  sub_258464C30(v8, v0 + 184);
  if (!*(v0 + 208))
  {
    goto LABEL_9;
  }

LABEL_6:
  v9 = *(v0 + 480);
  sub_258464C18((v0 + 184), v0 + 144);
  v10 = type metadata accessor for ActivationRequestInfo(0);
  *(v0 + 560) = v10;
  v11 = (v9 + *(v10 + 32));
  v12 = *v11;
  *(v0 + 568) = *v11;
  v13 = v11[1];
  *(v0 + 576) = v13;
  v14 = v11[2];
  *(v0 + 584) = v14;
  v15 = v11[3];
  *(v0 + 592) = v15;
  sub_2584A7B8C(v14, v15);
  sub_2584A7B8C(v12, v13);
  sub_2584A7B8C(v14, v15);
  sub_2584A7B8C(v12, v13);
  sub_2584D5658(v14, v15, v12, v13, (v0 + 16));
  if (*(v0 + 40))
  {
    v16 = *(v0 + 480);
    *(v0 + 288) = &type metadata for ControlConnectionInfoBackedNetworkPath;
    *(v0 + 296) = &off_28698F588;
    v17 = swift_allocObject();
    *(v0 + 264) = v17;
    v18 = *(v0 + 96);
    v17[5] = *(v0 + 80);
    v17[6] = v18;
    v17[7] = *(v0 + 112);
    *(v17 + 121) = *(v0 + 121);
    v19 = *(v0 + 32);
    v17[1] = *(v0 + 16);
    v17[2] = v19;
    v20 = *(v0 + 64);
    v17[3] = *(v0 + 48);
    v17[4] = v20;
    sub_258464C18((v0 + 264), v0 + 224);
    sub_258493BD8(*(v16 + *(v10 + 28)), *(v16 + *(v10 + 28) + 8), *(v16 + *(v10 + 28) + 16), 1, 0, 0);
    v32 = *(v0 + 488);
    sub_258464C30(v0 + 224, v0 + 304);
    v33 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 304, v32 + v33, &qword_27F92FB90, &qword_258535420);
    swift_endAccess();
    if (qword_27F92F958 != -1)
    {
      swift_once();
    }

    v35 = qword_27F93D258;
    v34 = qword_27F93D260;
    v36 = qword_27F92F950;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 504);
    v39 = qword_27F93D248;
    v38 = qword_27F93D250;
    v40 = *(v0 + 168);
    v41 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v40);
    *v37 = v35;
    v37[1] = v34;
    v37[2] = v39;
    v37[3] = v38;
    v37[5] = 0;
    v37[6] = 0;
    v37[4] = 1;
    swift_storeEnumTagMultiPayload();
    v42 = *(v41 + 80);

    v45 = (v42 + *v42);
    v43 = swift_task_alloc();
    *(v0 + 600) = v43;
    *v43 = v0;
    v43[1] = sub_25848E0AC;
    v44 = *(v0 + 504);

    return v45(v44, v40, v41);
  }

  v27 = *(v0 + 544);
  v28 = *(v0 + 536);
  v29 = *(v0 + 528);
  sub_258465168(v0 + 16, &qword_27F9303A0, &unk_258537F50);
  sub_2584A5730();
  swift_allocError();
  *v30 = 19;
  swift_willThrow();
  sub_258467E20(v14, v15);
  sub_258467E20(v12, v13);
  (*(v28 + 8))(v27, v29);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
LABEL_11:

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_25848E0AC()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 488);
  sub_2584ABB80(v3, type metadata accessor for SessionMessage);
  if (v0)
  {
    v5 = sub_25848E44C;
  }

  else
  {
    v5 = sub_25848E208;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25848E208()
{
  v24 = v0[73];
  v25 = v0[74];
  v26 = v0[71];
  v27 = v0[72];
  v1 = v0[67];
  v2 = v0[66];
  v28 = v0[64];
  v29 = v0[69];
  v3 = v0[60];
  v4 = v3[1];
  v22 = *v3;
  v23 = v0[68];
  v5 = v3[3];
  v20 = v0[61];
  v21 = v3[2];

  v6 = sub_25853294C();
  v8 = v7;
  v10 = v0[31];
  v9 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v10);
  (*(v9 + 8))(v10, v9);
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  LOBYTE(v3) = sub_25847B7F4();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 43);
  v11 = v20 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
  v12 = *(v20 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo);
  v13 = *(v20 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 8);
  v14 = *(v20 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 16);
  v15 = *(v20 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 24);
  v16 = *(v20 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 32);
  v17 = *(v20 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 40);
  *v11 = v22;
  *(v11 + 8) = v4;
  *(v11 + 16) = v21;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  *(v11 + 48) = v3;
  sub_2584A5834(v12, v13, v14, v15, v16, v17);
  sub_25853364C();
  sub_258467E20(v24, v25);
  sub_258467E20(v26, v27);
  (*(v1 + 8))(v23, v2);
  (*(v1 + 56))(v28, 1, 1, v2);
  swift_beginAccess();
  sub_2584AC5D0(v28, v20 + v29, &unk_27F930DB0, &qword_258536390);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  v18 = v0[1];

  return v18();
}

uint64_t sub_25848E44C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  sub_258467E20(v0[73], v0[74]);
  sub_258467E20(v2, v1);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25848E534(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  type metadata accessor for ActivationRequestInfo(0);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for SessionMessage(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25848E600, v1, 0);
}

uint64_t sub_25848E600()
{
  v36 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFA8);
  sub_2584AC4D0(v2, v1, type metadata accessor for SessionMessage);

  v4 = sub_258532A2C();
  v5 = sub_2585338BC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35[0] = v9;
    *v8 = 136315394;
    sub_258533B8C();

    v35[1] = 0xD000000000000017;
    v35[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_258533DFC();
    MEMORY[0x259C81500](v10);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v11 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v35);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = sub_2584B019C();
    v14 = v13;
    sub_2584ABB80(v7, type metadata accessor for SessionMessage);
    v15 = sub_2584713B0(v12, v14, v35);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_25845E000, v4, v5, "%s received message:%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {

    sub_2584ABB80(v7, type metadata accessor for SessionMessage);
  }

  sub_2584AC4D0(*(v0 + 72), *(v0 + 104), type metadata accessor for SessionMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = *(v0 + 104);
      v21 = *v20;
      *(v0 + 152) = *v20;
      v22 = v20[1];
      *(v0 + 160) = v22;
      v23 = v20[2];
      *(v0 + 168) = v23;
      v24 = v20[3];
      *(v0 + 176) = v24;
      v25 = swift_task_alloc();
      *(v0 + 184) = v25;
      *v25 = v0;
      v25[1] = sub_25848EFC0;

      return sub_25848F7E0(v21, v22, v23, v24);
    }

    else
    {
      v31 = byte_2585383A2[**(v0 + 104)];
      sub_2584A5730();
      v32 = swift_allocError();
      *(v0 + 200) = v32;
      *v33 = v31;
      v34 = swift_task_alloc();
      *(v0 + 208) = v34;
      *v34 = v0;
      v34[1] = sub_25848F1D0;

      return sub_258491E14(v32);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v26 = *(v0 + 104);
    v28 = v26[1];
    v27 = v26[2];
    v29 = *v26;
    *(v0 + 64) = *(v26 + 6);
    *(v0 + 32) = v28;
    *(v0 + 48) = v27;
    *(v0 + 16) = v29;
    v30 = swift_task_alloc();
    *(v0 + 136) = v30;
    *v30 = v0;
    v30[1] = sub_25848EDB4;

    return sub_25848D368(v0 + 16);
  }

  else
  {
    sub_2584A9D40(*(v0 + 104), *(v0 + 88), type metadata accessor for ActivationRequestInfo);
    v17 = swift_task_alloc();
    *(v0 + 120) = v17;
    *v17 = v0;
    v17[1] = sub_25848EBA0;
    v18 = *(v0 + 88);

    return sub_25848D8B8(v18);
  }
}

uint64_t sub_25848EBA0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = swift_task_alloc();
    *(v2 + 216) = v4;
    *v4 = v3;
    v4[1] = sub_25848F2FC;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_25848ED24, v6, 0);
  }
}

uint64_t sub_25848ED24()
{
  sub_2584ABB80(*(v0 + 88), type metadata accessor for ActivationRequestInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848EDB4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    sub_2584A7C28(v2 + 16);
    v4 = swift_task_alloc();
    *(v2 + 224) = v4;
    *v4 = v3;
    v4[1] = sub_25848F4A4;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = *(v2 + 80);
    sub_2584A7C28(v2 + 16);

    return MEMORY[0x2822009F8](sub_25848EF4C, v6, 0);
  }
}

uint64_t sub_25848EF4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848EFC0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = swift_task_alloc();
    *(v2 + 232) = v4;
    *v4 = v3;
    v4[1] = sub_25848F630;

    return sub_258491E14(v0);
  }

  else
  {
    v6 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_25848F144, v6, 0);
  }
}

uint64_t sub_25848F144()
{
  v1 = v0[21];
  v2 = v0[22];
  sub_258467E20(v0[19], v0[20]);
  sub_258467E20(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25848F1D0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2584AC7E8, v2, 0);
}

uint64_t sub_25848F2FC()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_25848F40C, v1, 0);
}

uint64_t sub_25848F40C()
{
  sub_2584ABB80(*(v0 + 88), type metadata accessor for ActivationRequestInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848F4A4()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_25848F5B4, v1, 0);
}

uint64_t sub_25848F5B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25848F630()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_25848F740, v1, 0);
}

uint64_t sub_25848F740()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  sub_258467E20(v0[19], v0[20]);
  sub_258467E20(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25848F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  return MEMORY[0x2822009F8](sub_25848F808, v4, 0);
}

uint64_t sub_25848F808()
{
  v45 = v0;
  if (*(*(v0 + 256) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v1 = sub_258532A4C();
    __swift_project_value_buffer(v1, qword_27F93CFA8);

    v2 = sub_258532A2C();
    v3 = sub_2585338CC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v42 = v5;
      *v4 = 136315138;
      sub_258533B8C();

      v43 = 0xD000000000000017;
      v44 = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v6 = sub_258533DFC();
      MEMORY[0x259C81500](v6);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v7 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v42);

      *(v4 + 4) = v7;
      _os_log_impl(&dword_25845E000, v2, v3, "%s unexpected controlConnectionPathUpdate received on client", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

LABEL_6:

    goto LABEL_7;
  }

  v10 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  sub_2584A7B8C(v10, v11);
  sub_2584A7B8C(v13, v12);
  sub_2584A7B8C(v10, v11);
  sub_2584A7B8C(v13, v12);
  sub_2584D5658(v10, v11, v13, v12, (v0 + 16));
  if (!*(v0 + 40))
  {
    sub_258465168(v0 + 16, &qword_27F9303A0, &unk_258537F50);
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v23 = sub_258532A4C();
    __swift_project_value_buffer(v23, qword_27F93CFA8);

    v2 = sub_258532A2C();
    v24 = sub_2585338CC();

    if (os_log_type_enabled(v2, v24))
    {
      v25 = *(v0 + 248);
      v26 = *(v0 + 240);
      v40 = *(v0 + 224);
      v41 = *(v0 + 232);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136315138;
      sub_258533B8C();

      v43 = 0xD000000000000017;
      v44 = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = sub_258533DFC();
      MEMORY[0x259C81500](v29);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v30 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v42);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_25845E000, v2, v24, "%s invalid controlConnectionPathUpdate", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x259C82900](v28, -1, -1);
      MEMORY[0x259C82900](v27, -1, -1);
      sub_258467E20(v26, v25);
      sub_258467E20(v40, v41);
    }

    else
    {
      v37 = *(v0 + 224);
      v36 = *(v0 + 232);
      sub_258467E20(*(v0 + 240), *(v0 + 248));
      sub_258467E20(v37, v36);
    }

    goto LABEL_6;
  }

  v14 = *(v0 + 256);
  *(v0 + 208) = &type metadata for ControlConnectionInfoBackedNetworkPath;
  *(v0 + 216) = &off_28698F588;
  v15 = swift_allocObject();
  *(v0 + 184) = v15;
  v16 = *(v0 + 96);
  v15[5] = *(v0 + 80);
  v15[6] = v16;
  v15[7] = *(v0 + 112);
  *(v15 + 121) = *(v0 + 121);
  v17 = *(v0 + 32);
  v15[1] = *(v0 + 16);
  v15[2] = v17;
  v18 = *(v0 + 64);
  v15[3] = *(v0 + 48);
  v15[4] = v18;
  sub_258464C18((v0 + 184), v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  sub_2584D60FC(v0 + 16);
  sub_258488DB8(v0 + 16);
  sub_258465168(v0 + 16, &qword_27F92FB70, &qword_2585353E8);
  sub_258464C30(v0 + 144, v0 + 16);
  v19 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 16, v14 + v19, &qword_27F92FB90, &qword_258535420);
  swift_endAccess();
  sub_258483754();
  v20 = *(v0 + 256);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v21);
  (*(v22 + 8))(v21, v22);
  if (*(v20 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) == 2 && *(v0 + 208))
  {
    v31 = *(v0 + 248);
    v33 = *(v0 + 232);
    v32 = *(v0 + 240);
    v34 = *(v0 + 224);
    __swift_project_boxed_opaque_existential_1((*(v0 + 256) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(*(v0 + 256) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 49) = 0u;
    *(v0 + 65) = 8;
    v35 = off_286990988;
    type metadata accessor for TelemetryProvider(0);
    v35(v0 + 16);
    sub_258467E20(v32, v31);
    sub_258467E20(v34, v33);
    sub_2584A57D8(v0 + 16);
  }

  else
  {
    v38 = *(v0 + 224);
    v39 = *(v0 + 232);
    sub_258467E20(*(v0 + 240), *(v0 + 248));
    sub_258467E20(v38, v39);
  }

  sub_258465168(v0 + 184, &qword_27F92FB70, &qword_2585353E8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
LABEL_7:
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_258490008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v6, a2 + v9, &unk_27F930DB0, &qword_258536390);
  swift_endAccess();
  return sub_258485038();
}

uint64_t sub_258490178(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2[62] = v3;
  v2[63] = *(v3 - 8);
  v2[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v2[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849027C, v1, 0);
}

uint64_t sub_25849027C()
{
  v1 = *(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_258464C30(v1, v0 + 16);
    if (*(v0 + 40))
    {
LABEL_3:
      sub_258464C30(v0 + 16, v0 + 296);
      if (*(v0 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      }

      v2 = *(v0 + 320);
      v3 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v2);
      v11 = (*(v3 + 72) + **(v3 + 72));
      v4 = swift_task_alloc();
      *(v0 + 528) = v4;
      *v4 = v0;
      v4[1] = sub_25849055C;

      return v11(v2, v3);
    }
  }

  else
  {
    v6 = *v1;
    v7 = *(v1 + 16);
    *(v0 + 48) = *(v1 + 32);
    *(v0 + 16) = v6;
    *(v0 + 32) = v7;
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_2584AC3B8(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 56, &qword_27F930360, &unk_258537A90);
  v8 = *(v0 + 80);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
    v9 = swift_task_alloc();
    *(v0 + 536) = v9;
    *v9 = v0;
    v9[1] = sub_2584907DC;

    return sub_258463534();
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F930360, &unk_258537A90);
    v10 = swift_task_alloc();
    *(v0 + 544) = v10;
    *v10 = v0;
    v10[1] = sub_2584909A4;

    return sub_2584A0EF8();
  }
}

uint64_t sub_25849055C()
{
  v1 = *(*v0 + 488);

  return MEMORY[0x2822009F8](sub_25849066C, v1, 0);
}

uint64_t sub_25849066C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  sub_2584AC3B8(v0[61] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, (v0 + 7), &qword_27F930360, &unk_258537A90);
  v1 = v0[10];
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_2584907DC;

    return sub_258463534();
  }

  else
  {
    sub_258465168((v0 + 7), &qword_27F930360, &unk_258537A90);
    v4 = swift_task_alloc();
    v0[68] = v4;
    *v4 = v0;
    v4[1] = sub_2584909A4;

    return sub_2584A0EF8();
  }
}

uint64_t sub_2584907DC()
{
  v1 = *(*v0 + 488);

  return MEMORY[0x2822009F8](sub_2584908EC, v1, 0);
}

uint64_t sub_2584908EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 544) = v1;
  *v1 = v0;
  v1[1] = sub_2584909A4;

  return sub_2584A0EF8();
}