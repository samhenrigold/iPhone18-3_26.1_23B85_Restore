uint64_t sub_255E19908()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E199D8(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E19A94(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E19B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E1B0D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E19B90(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6F546C61757165;
  v4 = 0xEB000000006E6168;
  v5 = 0x5472657461657267;
  if (*v1 != 2)
  {
    v5 = 0x6E6168547373656CLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C61757145746F6ELL;
    v2 = 0xEA00000000006F54;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255E19C1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 29295;
  }

  else
  {
    v3 = 6581857;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 29295;
  }

  else
  {
    v5 = 6581857;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E19CB0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E19D20(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E19D7C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E19DF4(uint64_t *a1@<X8>)
{
  v2 = 6581857;
  if (*v1)
  {
    v2 = 29295;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E19E80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F697469646E6F63;
  }

  else
  {
    v3 = 0x726F74617265706FLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v5 = 0x6F697469646E6F63;
  }

  else
  {
    v5 = 0x726F74617265706FLL;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E19F2C()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E19FB4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E1A028(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E1A0B8(uint64_t *a1@<X8>)
{
  v2 = 0x726F74617265706FLL;
  if (*v1)
  {
    v2 = 0x6F697469646E6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E1A0FC()
{
  if (*v0)
  {
    return 0x6F697469646E6F63;
  }

  else
  {
    return 0x726F74617265706FLL;
  }
}

uint64_t sub_255E1A13C@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255E1A1A0(uint64_t a1)
{
  v2 = sub_255E1B030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1A1DC(uint64_t a1)
{
  v2 = sub_255E1B030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1A218@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_255E1AE54(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_255E1A260(uint64_t a1)
{
  sub_255E3A578();
}

unint64_t sub_255E1A368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E1B3BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E1A398(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7496054;
  v5 = 0xEB000000006E6168;
  v6 = 0x5472657461657267;
  v7 = 0xE800000000000000;
  v8 = 0x6E6168547373656CLL;
  if (v2 != 4)
  {
    v8 = 0x4F6C616369676F6CLL;
    v7 = 0xEF726F7461726570;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6F546C61757165;
  if (v2 != 1)
  {
    v10 = 0x6C61757145746F6ELL;
    v9 = 0xEA00000000006F54;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_255E1A468()
{
  v1 = *v0;
  v2 = 7496054;
  v3 = 0x5472657461657267;
  v4 = 0x6E6168547373656CLL;
  if (v1 != 4)
  {
    v4 = 0x4F6C616369676F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F546C61757165;
  if (v1 != 1)
  {
    v5 = 0x6C61757145746F6ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_255E1A534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E1B3BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E1A55C(uint64_t a1)
{
  v2 = sub_255E1ADAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1A598(uint64_t a1)
{
  v2 = sub_255E1ADAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1A5D4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9040, &qword_255E5C078);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v24 = v1;
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_255E1ADAC();
  sub_255E3AE28();
  if (v2)
  {
    v9 = v24;
LABEL_4:

    type metadata accessor for Condition();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
  v29 = 0;
  sub_255E04D8C();
  v11 = v7;
  sub_255E3ABC8();
  v12 = v27;
  v13 = v28;
  v9 = v24;
  *(v24 + 16) = v26;
  *(v9 + 32) = v12;
  *(v9 + 40) = v13;
  v29 = 1;
  sub_255E3ABA8();
  v15 = v28;
  if (v28 == 255)
  {
    v29 = 2;
    sub_255E3ABA8();
    v15 = v28;
    if (v28 == 255)
    {
      v29 = 3;
      sub_255E3ABA8();
      v15 = v28;
      if (v28 == 255)
      {
        v29 = 4;
        sub_255E3ABA8();
        v15 = v28;
        if (v28 == 255)
        {
          v20 = sub_255E3AA08();
          swift_allocError();
          v22 = v21;
          v23[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7868, &qword_255E4BDC0) + 48);
          *(v22 + 24) = &type metadata for Condition.CodingKeys;
          *(v22 + 32) = v8;
          *v22 = 1;
          __swift_project_boxed_opaque_existential_1(v25, v25[3]);
          sub_255E3ADE8();
          sub_255E3A9C8();
          (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84158], v20);
          swift_willThrow();
          v9 = v24;
          (*(v10 + 8))(v11, v4);
          sub_255D4DE84(*(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40));
          goto LABEL_4;
        }

        v17 = v27;
        v18 = v26;
        v16 = 3;
      }

      else
      {
        v17 = v27;
        v18 = v26;
        v16 = 2;
      }
    }

    else
    {
      v17 = v27;
      v18 = v26;
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
    v17 = v27;
    v18 = v26;
  }

  *(v9 + 41) = v16;
  *(v9 + 48) = v18;
  *(v9 + 64) = v17;
  *(v9 + 72) = v15 & 1;
  LOBYTE(v26) = 5;
  if (sub_255E3ABE8())
  {
    v29 = 5;
    sub_255E1AE00();
    sub_255E3ABC8();
    (*(v5 + 8))(v11, v4);
    v19 = *(&v26 + 1);
    *(v9 + 80) = v26;
    *(v9 + 88) = v19;
  }

  else
  {
    (*(v5 + 8))(v11, v4);
  }

LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v9;
}

uint64_t sub_255E1AAC0(unint64_t a1)
{
  v3 = *(v1 + 41);
  sub_255DDEBF8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), &v10);
  v4 = v10;
  sub_255DDEBF8(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v9);
  v5 = v9[0];
  v6 = sub_255E194E8(&v10, v9, v3);
  sub_255D5C324(v5);
  sub_255D5C324(v4);
  if (!*(v1 + 88))
  {
    return v6 & 1;
  }

  if ((*(v1 + 80) & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {
      LOBYTE(v6) = 0;
      return v6 & 1;
    }

LABEL_6:

    v7 = sub_255E1AAC0(a1);

    return v7 & 1;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  LOBYTE(v6) = 1;
  return v6 & 1;
}

uint64_t sub_255E1ABDC()
{
  sub_255D4DE84(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D4DE84(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_255E1AC58(uint64_t a1, int a2)
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

uint64_t sub_255E1ACA0(uint64_t result, int a2, int a3)
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

unint64_t sub_255E1AD00()
{
  result = qword_27F7E9038;
  if (!qword_27F7E9038)
  {
    result = swift_getWitnessTable(byte_255E5BFFC, &type metadata for ComparisonOperation, v0, v1);
    atomic_store(result, &qword_27F7E9038);
  }

  return result;
}

uint64_t sub_255E1AD54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Condition();
  v5 = swift_allocObject();
  result = sub_255E1A5D4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_255E1ADAC()
{
  result = qword_27F7E9048;
  if (!qword_27F7E9048)
  {
    result = swift_getWitnessTable(byte_255E5C39C, &type metadata for Condition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9048);
  }

  return result;
}

unint64_t sub_255E1AE00()
{
  result = qword_27F7E9050;
  if (!qword_27F7E9050)
  {
    result = swift_getWitnessTable(byte_255E5C024, &type metadata for LogicalOperator, v0, v1);
    atomic_store(result, &qword_27F7E9050);
  }

  return result;
}

uint64_t sub_255E1AE54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9058, &qword_255E5C080);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1B030();
  sub_255E3AE28();
  v9 = 0;
  sub_255E1B084();
  sub_255E3ABC8();
  v6 = v10;
  type metadata accessor for Condition();
  v8[15] = 1;
  sub_255DCEF44();
  sub_255E3ABC8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_255E1B030()
{
  result = qword_27F7E9060;
  if (!qword_27F7E9060)
  {
    result = swift_getWitnessTable(byte_255E5C34C, &type metadata for LogicalOperator.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9060);
  }

  return result;
}

unint64_t sub_255E1B084()
{
  result = qword_27F7E9068;
  if (!qword_27F7E9068)
  {
    result = swift_getWitnessTable(byte_255E5C324, &type metadata for LogicOperation, v0, v1);
    atomic_store(result, &qword_27F7E9068);
  }

  return result;
}

unint64_t sub_255E1B0D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E1B158()
{
  result = qword_27F7E9070;
  if (!qword_27F7E9070)
  {
    result = swift_getWitnessTable(byte_255E5C11C, &type metadata for LogicOperation, v0, v1);
    atomic_store(result, &qword_27F7E9070);
  }

  return result;
}

unint64_t sub_255E1B1B0()
{
  result = qword_27F7E9078;
  if (!qword_27F7E9078)
  {
    result = swift_getWitnessTable(byte_255E5C20C, &type metadata for Condition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9078);
  }

  return result;
}

unint64_t sub_255E1B208()
{
  result = qword_27F7E9080;
  if (!qword_27F7E9080)
  {
    result = swift_getWitnessTable(byte_255E5C2FC, &type metadata for LogicalOperator.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9080);
  }

  return result;
}

unint64_t sub_255E1B260()
{
  result = qword_27F7E9088;
  if (!qword_27F7E9088)
  {
    result = swift_getWitnessTable(aM_16, &type metadata for LogicalOperator.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9088);
  }

  return result;
}

unint64_t sub_255E1B2B8()
{
  result = qword_27F7E9090;
  if (!qword_27F7E9090)
  {
    result = swift_getWitnessTable(asc_255E5C25C, &type metadata for LogicalOperator.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9090);
  }

  return result;
}

unint64_t sub_255E1B310()
{
  result = qword_27F7E9098;
  if (!qword_27F7E9098)
  {
    result = swift_getWitnessTable(asc_255E5C144, &type metadata for Condition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9098);
  }

  return result;
}

unint64_t sub_255E1B368()
{
  result = qword_27F7E90A0;
  if (!qword_27F7E90A0)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for Condition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E90A0);
  }

  return result;
}

unint64_t sub_255E1B3BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E1B408()
{
  result = qword_27F7E90A8;
  if (!qword_27F7E90A8)
  {
    result = swift_getWitnessTable(byte_255E5C0A4, &type metadata for LogicOperation, v0, v1);
    atomic_store(result, &qword_27F7E90A8);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_255E1B474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255E1B4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

void sub_255E1B520(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E90B8, &qword_255E5C668);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1BD88();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v22 = 0;
    sub_255D64774();
    sub_255E3ABC8();
    v9 = v17;
    v10 = v18;
    v16 = v19;
    v21 = v20;
    LOBYTE(v17) = 1;
    v11 = sub_255E3AB98();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    v12 = (v11 == 2) | v11 & 1;
    v13 = v16;
    *(a2 + 16) = v16;
    v14 = v21;
    *(a2 + 24) = v21;
    *(a2 + 25) = v12;
    sub_255D612A0(v9, v10, v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D4CB98(v9, v10, v13, v14);
  }
}

uint64_t sub_255E1B760(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61696C6169746E61;
  }

  else
  {
    v3 = 0x737569646172;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000646573;
  }

  if (*a2)
  {
    v5 = 0x61696C6169746E61;
  }

  else
  {
    v5 = 0x737569646172;
  }

  if (*a2)
  {
    v6 = 0xEB00000000646573;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E1B80C()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E1B894(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E1B908(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E1B98C@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255E1B9EC(uint64_t *a1@<X8>)
{
  v2 = 0x737569646172;
  if (*v1)
  {
    v2 = 0x61696C6169746E61;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000646573;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E1BA30()
{
  if (*v0)
  {
    return 0x61696C6169746E61;
  }

  else
  {
    return 0x737569646172;
  }
}

uint64_t sub_255E1BA70@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255E1BAD4(uint64_t a1)
{
  v2 = sub_255E1BD88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1BB10(uint64_t a1)
{
  v2 = sub_255E1BD88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1BB4C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v15 = *v3;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_255D612A0(v15, v7, v8, v9);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v10;
  sub_255D4CB98(v15, v16, v17, v18);
  if (a2)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FF0, &qword_255E5C660);
  v13 = sub_255E38AE8();
  a3[3] = v13;
  v14[0] = v12;
  v14[1] = sub_255E1BD24();
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v14);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39948();
}

unint64_t sub_255E1BCA8(uint64_t a1)
{
  result = sub_255E1BCD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1BCD0()
{
  result = qword_27F7E90B0;
  if (!qword_27F7E90B0)
  {
    result = swift_getWitnessTable(byte_255E5C618, &type metadata for CornerRadiusModifier, v0, v1);
    atomic_store(result, &qword_27F7E90B0);
  }

  return result;
}

unint64_t sub_255E1BD24()
{
  result = qword_27F7E7FF8;
  if (!qword_27F7E7FF8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FF0, &qword_255E5C660);
    result = swift_getWitnessTable(MEMORY[0x277CDF4F0], v3, v0, v1);
    atomic_store(result, &qword_27F7E7FF8);
  }

  return result;
}

unint64_t sub_255E1BD88()
{
  result = qword_27F7E90C0;
  if (!qword_27F7E90C0)
  {
    result = swift_getWitnessTable(byte_255E5C76C, &type metadata for CornerRadiusModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E90C0);
  }

  return result;
}

unint64_t sub_255E1BDF0()
{
  result = qword_27F7E90C8;
  if (!qword_27F7E90C8)
  {
    result = swift_getWitnessTable(byte_255E5C744, &type metadata for CornerRadiusModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E90C8);
  }

  return result;
}

unint64_t sub_255E1BE48()
{
  result = qword_27F7E90D0;
  if (!qword_27F7E90D0)
  {
    result = swift_getWitnessTable(asc_255E5C67C, &type metadata for CornerRadiusModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E90D0);
  }

  return result;
}

unint64_t sub_255E1BEA0()
{
  result = qword_27F7E90D8;
  if (!qword_27F7E90D8)
  {
    result = swift_getWitnessTable(a5_8, &type metadata for CornerRadiusModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E90D8);
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_255E1BF30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_255E1BF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255E1BFF4(uint64_t a1)
{
  *(v2 + 552) = v1;
  *(v2 + 544) = a1;
  v3 = sub_255E3A3B8();
  *(v2 + 560) = v3;
  *(v2 + 568) = *(v3 - 8);
  *(v2 + 576) = swift_task_alloc();
  v4 = sub_255E3A3D8();
  *(v2 + 584) = v4;
  *(v2 + 592) = *(v4 - 8);
  *(v2 + 600) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  *(v2 + 608) = swift_task_alloc();
  v5 = sub_255E38588();
  *(v2 + 616) = v5;
  v6 = *(v5 - 8);
  *(v2 + 624) = v6;
  *(v2 + 632) = *(v6 + 64);
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  *(v2 + 656) = swift_task_alloc();
  v7 = *(v1 + 144);
  *(v2 + 144) = *(v1 + 128);
  *(v2 + 160) = v7;
  *(v2 + 176) = *(v1 + 160);
  v8 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v8;
  v9 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v9;
  v10 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v10;
  v11 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v11;

  return MEMORY[0x2822009F8](sub_255E1C1F8, 0, 0);
}

uint64_t sub_255E1C1F8()
{
  v80 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v1 + 145);
  *(v0 + 400) = *(v1 + 136);
  *(v0 + 409) = v3;
  v79[0] = *(v1 + 136);
  *(v79 + 9) = *(v1 + 145);
  sub_255D7B16C(v0 + 400, v0 + 464);
  StringResolvable.resolved(with:)(v2);
  sub_255D38060(*&v79[0], *(&v79[0] + 1), *&v79[1], BYTE8(v79[1]));
  v4 = sub_255E3AB48();

  v5 = *(v0 + 544);
  *(v0 + 432) = *(v0 + 24);
  *(v0 + 441) = *(v0 + 33);
  v79[0] = *(v0 + 24);
  *(v79 + 9) = *(v0 + 33);
  sub_255D7B16C(v0 + 432, v0 + 496);
  StringResolvable.resolved(with:)(v5);
  sub_255D38060(*&v79[0], *(&v79[0] + 1), *&v79[1], BYTE8(v79[1]));
  v8 = *(v0 + 80);
  if (v8 <= 0xFD)
  {
    v11 = *(v0 + 544);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    *&v79[0] = *(v0 + 56);
    *(&v79[0] + 1) = v12;
    *&v79[1] = v13;
    BYTE8(v79[1]) = v8;
    sub_255D3E5A8(*&v79[0], v12, v13, v8);
    v14 = StringResolvable.resolved(with:)(v11);
    v16 = v15;
    sub_255D38060(*&v79[0], *(&v79[0] + 1), *&v79[1], BYTE8(v79[1]));
    v10 = v16;
    v9 = v14;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  HTTPRequestMethod.init(rawValue:)(*&v9);
  v17 = *(v0 + 112);
  if (v17 == 255)
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  else
  {
    v18 = sub_255DDF580(*(v0 + 544), *(v0 + 88), *(v0 + 96), *(v0 + 104), v17 & 1);
    sub_255E38498();
    swift_allocObject();
    sub_255E38488();
    *(v0 + 536) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B390();
    v19 = sub_255E38478();
    v21 = v20;
  }

  v22 = *(v0 + 624);
  v23 = *(v0 + 616);
  v24 = *(v0 + 608);
  sub_255E38578();

  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {
    sub_255D395E4(*(v0 + 608), &qword_27F7E6B28, &unk_255E48060);
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v25 = sub_255E386A8();
    __swift_project_value_buffer(v25, qword_27F8152D8);
    v26 = sub_255E38688();
    v27 = sub_255E3A848();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_255D2E000, v26, v27, "Failed to resolve url on ReloadAction.", v28, 2u);
      MEMORY[0x259C4F9E0](v28, -1, -1);
    }

    type metadata accessor for RemoteLoaderError(0);
    sub_255E1DBD8(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_255DD7758(v19, v21);

    v6 = *(v0 + 8);
  }

  else
  {
    v76 = v21;
    v77 = v19;
    v74 = (*(v0 + 624) + 32);
    v73 = *v74;
    (*v74)(*(v0 + 656), *(v0 + 608), *(v0 + 616));
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 656);
    v30 = *(v0 + 648);
    v31 = *(v0 + 624);
    v32 = *(v0 + 616);
    v33 = sub_255E386A8();
    __swift_project_value_buffer(v33, qword_27F8152D8);
    v68 = *(v31 + 16);
    v68(v30, v29, v32);
    v34 = sub_255E38688();
    v35 = sub_255E3A868();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 648);
    v38 = *(v0 + 624);
    v39 = *(v0 + 616);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v79[0] = v41;
      *v40 = 136315138;
      sub_255E1DBD8(&qword_27F7E73E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v42 = sub_255E3AC28();
      v72 = v4;
      v44 = v43;
      v75 = *(v38 + 8);
      v75(v37, v39);
      v45 = sub_255D378C0(v42, v44, v79);
      v4 = v72;

      *(v40 + 4) = v45;
      _os_log_impl(&dword_255D2E000, v34, v35, "Reload Action: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x259C4F9E0](v41, -1, -1);
      MEMORY[0x259C4F9E0](v40, -1, -1);
    }

    else
    {

      v75 = *(v38 + 8);
      v75(v37, v39);
    }

    v46 = *(v0 + 656);
    if (v4 >= 3)
    {
      v47 = 2;
    }

    else
    {
      v47 = v4;
    }

    v63 = v47;
    v48 = *(v0 + 640);
    v49 = *(v0 + 632);
    v50 = *(v0 + 624);
    v51 = *(v0 + 616);
    v64 = *(v0 + 600);
    v71 = *(v0 + 584);
    v69 = *(v0 + 568);
    v70 = *(v0 + 592);
    v66 = *(v0 + 576);
    v67 = *(v0 + 560);
    v52 = *(v0 + 544);
    sub_255DA5ED4();
    v65 = sub_255E3A878();
    v68(v48, v46, v51);
    v53 = (*(v50 + 80) + 185) & ~*(v50 + 80);
    v54 = swift_allocObject();
    v55 = *(v0 + 112);
    *(v54 + 136) = *(v0 + 128);
    v56 = *(v0 + 160);
    *(v54 + 152) = *(v0 + 144);
    *(v54 + 168) = v56;
    v57 = *(v0 + 48);
    *(v54 + 72) = *(v0 + 64);
    v58 = *(v0 + 96);
    *(v54 + 88) = *(v0 + 80);
    *(v54 + 104) = v58;
    *(v54 + 120) = v55;
    v59 = *(v0 + 32);
    *(v54 + 24) = *(v0 + 16);
    *(v54 + 40) = v59;
    *(v54 + 16) = v78;
    *(v54 + 184) = *(v0 + 176);
    *(v54 + 56) = v57;
    v73(v54 + v53, v48, v51);
    v60 = v54 + ((v53 + v49 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v60 = v52;
    *(v60 + 8) = v63;
    v61 = (v54 + ((v53 + v49 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v61 = v77;
    v61[1] = v76;
    *(v0 + 384) = sub_255E1DAA0;
    *(v0 + 392) = v54;
    *(v0 + 352) = MEMORY[0x277D85DD0];
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_255D5D0C8;
    *(v0 + 376) = &block_descriptor_3;
    v62 = _Block_copy((v0 + 352));
    sub_255D5C7BC(v0 + 16, v0 + 184);

    sub_255E1DB64(v77, v76);
    sub_255E3A3C8();
    *(v0 + 528) = MEMORY[0x277D84F90];
    sub_255E1DBD8(&qword_27F7E6AE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
    sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938, MEMORY[0x277D83970]);
    sub_255E3A928();
    MEMORY[0x259C4EBE0](0, v64, v66, v62);
    _Block_release(v62);

    sub_255DD7758(v77, v76);
    (*(v69 + 8))(v66, v67);
    (*(v70 + 8))(v64, v71);
    v75(v46, v51);

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_255E1CD4C(char a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v34 = a4;
  v35 = a5;
  v11 = a1;
  v12 = type metadata accessor for RemoteContent(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920);
  v19 = *(v18 + 48);
  v20 = *(v18 + 64);
  v21 = sub_255E38588();
  v22 = *(*(v21 - 8) + 16);
  if (v11 > 1)
  {
    v25 = &v15[v20];
    v22(v15, a3, v21);
    v15[v19] = a1;
    v26 = v33;
    *v25 = a6;
    *(v25 + 1) = v26;
    swift_storeEnumTagMultiPayload();
    v27 = *(a2 + 104);
    v28 = *(a2 + 112);
    v29 = *(a2 + 120);
    v30 = *(a2 + 128);
    sub_255E1DB64(a6, v26);
    v31 = sub_255DDF1BC(v34, v27, v28, v29, v30);
    v37[0] = v35;
    RemoteLoader.reload(content:showLoading:reloadtype:)(v15, v31 & 1, v37);
    v24 = v15;
  }

  else
  {
    v22(v17, a3, v21);
    v17[v19] = a1;
    *&v17[v20] = xmmword_255E3B900;
    swift_storeEnumTagMultiPayload();
    v23 = sub_255DDF1BC(v34, *(a2 + 104), *(a2 + 112), *(a2 + 120), *(a2 + 128));
    v36 = v35;
    RemoteLoader.reload(content:showLoading:reloadtype:)(v17, v23 & 1, &v36);
    v24 = v17;
  }

  return sub_255DDAA54(v24);
}

uint64_t sub_255E1CF80()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 2036625250;
  v4 = 0x64616F4C776F6873;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874654D70747468;
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

uint64_t sub_255E1D010@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255E1DDBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255E1D038(uint64_t a1)
{
  v2 = sub_255E1DC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1D074(uint64_t a1)
{
  v2 = sub_255E1DC20();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E1D0B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E90F0, &qword_255E5D040);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_255E3AE18();
  if (qword_27F7E5E68 != -1)
  {
    swift_once();
  }

  v9 = sub_255E3AAE8();
  v10 = __swift_project_value_buffer(v9, qword_27F8152C0);
  if (!*(v8 + 16) || (v11 = sub_255D3CA98(v10), (v12 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_255D3951C(*(v8 + 56) + 32 * v11, v56);

  type metadata accessor for AnyWeakRemoteLoader();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    type metadata accessor for RemoteLoaderError(0);
    sub_255E1DBD8(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return;
  }

  v13 = *v46;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_11;
  }

  v44 = v13;
  v45 = Strong;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1DC20();
  sub_255E3AE28();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v46[0] = 0;
    v15 = sub_255D3EA0C();
    sub_255E3ABC8();
    v43 = *v56;
    v33 = *&v56[16];
    v16 = v57;
    v46[0] = 1;
    sub_255E3ABA8();
    *(&v31 + 1) = v15;
    v32 = v16;
    v40 = *v56;
    v41 = *&v56[8];
    v42 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
    v46[0] = 2;
    sub_255D38950(&qword_27F7E7420, &qword_27F7E7418, qword_255E567D0, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABA8();
    v37 = *v56;
    v38 = *&v56[8];
    v39 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    v46[0] = 3;
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABA8();
    v17 = v57;
    if (v57 == 255)
    {
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v17 = 0;
    }

    else
    {
      v34 = *&v56[16];
      v35 = *&v56[8];
      v36 = *v56;
    }

    v81 = v17 & 1;
    v56[0] = 4;
    sub_255E3ABA8();
    v18 = v79;
    if (v79 <= 0xFDu)
    {
      v31 = v78;
      v19 = v77;
    }

    else
    {
      v18 = 0;
      v31 = 0xEB00000000617461;
      v19 = 0x44646E4177656976;
    }

    v30 = v19;

    (*(v5 + 8))(v7, v4);
    *v46 = v45;
    *&v46[8] = v43;
    v20 = v33;
    *&v46[24] = v33;
    LOBYTE(v47) = v32;
    *(&v47 + 1) = v84[0];
    DWORD1(v47) = *(v84 + 3);
    *(&v47 + 1) = v40;
    v48 = v41;
    LOBYTE(v49) = v42;
    *(&v49 + 1) = *v83;
    DWORD1(v49) = *&v83[3];
    *(&v49 + 1) = v37;
    v50 = v38;
    LOBYTE(v51) = v39;
    *(&v51 + 1) = *v82;
    DWORD1(v51) = *&v82[3];
    *(&v51 + 1) = v36;
    *&v52 = v35;
    *(&v52 + 1) = v34;
    LODWORD(v44) = v81;
    LOBYTE(v53) = v81;
    *(&v53 + 1) = *v80;
    DWORD1(v53) = *&v80[3];
    v22 = v30;
    v21 = v31;
    *(&v53 + 1) = v30;
    v54 = v31;
    v23 = *(&v31 + 1);
    v55 = v18;
    v24 = v85;
    *(v85 + 160) = v18;
    v25 = v50;
    v24[4] = v49;
    v24[5] = v25;
    v26 = v54;
    v24[8] = v53;
    v24[9] = v26;
    v27 = v48;
    v24[2] = v47;
    v24[3] = v27;
    v28 = *&v46[16];
    *v24 = *v46;
    v24[1] = v28;
    v29 = v52;
    v24[6] = v51;
    v24[7] = v29;
    sub_255D5C7BC(v46, v56);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *v56 = v45;
    *&v56[8] = v43;
    v57 = v20;
    v58 = v32;
    *v59 = v84[0];
    *&v59[3] = *(v84 + 3);
    v60 = v40;
    v61 = v41;
    v62 = v42;
    *v63 = *v83;
    *&v63[3] = *&v83[3];
    v64 = v37;
    v65 = v38;
    v66 = v39;
    *v67 = *v82;
    *&v67[3] = *&v82[3];
    v68 = v36;
    v69 = v35;
    v70 = v34;
    v71 = v44;
    *v72 = *v80;
    *&v72[3] = *&v80[3];
    v73 = v22;
    v74 = v21;
    v75 = v23;
    v76 = v18;
    sub_255E1DC74(v56);
  }
}

uint64_t sub_255E1D8FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255D50138;

  return sub_255E1BFF4(a1);
}

unint64_t sub_255E1D9A8(uint64_t a1)
{
  result = sub_255E1D9D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1D9D0()
{
  result = qword_27F7E90E0;
  if (!qword_27F7E90E0)
  {
    result = swift_getWitnessTable(asc_255E5CFCC, &type metadata for ReloadAction, v0, v1);
    atomic_store(result, &qword_27F7E90E0);
  }

  return result;
}

unint64_t sub_255E1DA24(uint64_t a1)
{
  result = sub_255E1DA4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1DA4C()
{
  result = qword_27F7E90E8;
  if (!qword_27F7E90E8)
  {
    result = swift_getWitnessTable(asc_255E5CFF4, &type metadata for ReloadAction, v0, v1);
    atomic_store(result, &qword_27F7E90E8);
  }

  return result;
}

uint64_t sub_255E1DAA0()
{
  v1 = *(sub_255E38588() - 8);
  v2 = (*(v1 + 80) + 185) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = (v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v4 + 8);
  v10 = *(v0 + 16);

  return sub_255E1CD4C(v10, v0 + 24, v0 + v2, v5, v9, v7, v8);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255E1DB64(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255D37E0C(result, a2);
  }

  return result;
}

uint64_t sub_255E1DB78(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_255E1DBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255E1DC20()
{
  result = qword_27F7E90F8;
  if (!qword_27F7E90F8)
  {
    result = swift_getWitnessTable(byte_255E5D10C, &type metadata for ReloadAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E90F8);
  }

  return result;
}

unint64_t sub_255E1DCB8()
{
  result = qword_27F7E9100;
  if (!qword_27F7E9100)
  {
    result = swift_getWitnessTable(byte_255E5D0E4, &type metadata for ReloadAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9100);
  }

  return result;
}

unint64_t sub_255E1DD10()
{
  result = qword_27F7E9108;
  if (!qword_27F7E9108)
  {
    result = swift_getWitnessTable(aM_18, &type metadata for ReloadAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9108);
  }

  return result;
}

unint64_t sub_255E1DD68()
{
  result = qword_27F7E9110;
  if (!qword_27F7E9110)
  {
    result = swift_getWitnessTable(asc_255E5D07C, &type metadata for ReloadAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9110);
  }

  return result;
}

uint64_t sub_255E1DDBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_255E3AC68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874654D70747468 && a2 == 0xEA0000000000646FLL || (sub_255E3AC68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F4C776F6873 && a2 == 0xEB00000000676E69 || (sub_255E3AC68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_255E3AC68();

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

uint64_t sub_255E1DF78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 56);
  }

  v5 = (v4 ^ 0xFF) - 2;
  if (v3 <= 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_255E1DFD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 56) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_255E1E040@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 56);
  v9 = *(v3 + 9);
  v10 = *(v3 + 10);
  v11 = *(v3 + 88);
  v30 = *(v3 + 8);
  v31 = v9;
  v32 = v10;
  v33 = v11;
  sub_255D3E5A8(v30, v9, v10, v11);
  v12 = StringResolvable.resolved(with:)(a2);
  v14 = v13;
  result = sub_255D38060(v30, v31, v32, v33);
  if (!v4)
  {
    if (v8 == 254)
    {
      v34 = 0;
    }

    else
    {
      v16 = v3[1];
      v23 = *v3;
      v24 = v16;
      *v25 = v3[2];
      *&v25[16] = *(v3 + 6);
      v25[24] = v8;
      v26[0] = v23;
      v26[1] = v16;
      v26[2] = *v25;
      v27 = *&v25[16];
      v28 = v8;
      sub_255D8DD84(v26, v21);
      v17 = sub_255D8D5DC(a2);
      v21[0] = v23;
      v21[1] = v24;
      v22[0] = *v25;
      *(v22 + 9) = *&v25[9];
      v34 = v17;
      sub_255D8DDBC(v21);
    }

    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    RemoteStateStore.subscript.getter(v12, v14, v26);

    *&v23 = *&v26[0];
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9120, &qword_255E5D6E8);
    v19 = sub_255E38AE8();
    a3[3] = v19;
    v20 = sub_255E1E778();
    v29[0] = v18;
    v29[1] = v20;
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v19, v29);
    __swift_allocate_boxed_opaque_existential_1(a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E1E7DC();
    sub_255E39CB8();

    return sub_255D5C324(v23);
  }

  return result;
}

uint64_t sub_255E1E28C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6F6974616D696E61;
  }
}

uint64_t sub_255E1E2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974616D696E61 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255E1E3A8(uint64_t a1)
{
  v2 = sub_255E1E860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1E3E4(uint64_t a1)
{
  v2 = sub_255E1E860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1E420@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9138, &qword_255E5D6F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1E860();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v33;
  v26 = 0;
  sub_255DFB06C();
  sub_255E3ABA8();
  v30 = v27;
  v31 = v28;
  *v32 = v29[0];
  *&v32[9] = *(v29 + 9);
  v22 = 1;
  sub_255D3EA0C();
  sub_255E3ABC8();
  (*(v5 + 8))(v7, v4);
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v13 = *v32;
  v12 = *&v32[16];
  v17[2] = *v32;
  v17[3] = *&v32[16];
  v14 = v31;
  v17[0] = v30;
  v17[1] = v31;
  v18[0] = v23;
  *&v18[1] = v24;
  BYTE8(v18[1]) = v25;
  *v8 = v30;
  v8[1] = v14;
  v15 = v18[0];
  *(v8 + 73) = *(v18 + 9);
  v8[3] = v12;
  v8[4] = v15;
  v8[2] = v13;
  sub_255E1E91C(v17, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19[0] = v30;
  v19[1] = v31;
  v19[2] = *v32;
  v19[3] = *&v32[16];
  v19[4] = v9;
  v20 = v10;
  v21 = v11;
  return sub_255E1E954(v19);
}

unint64_t sub_255E1E6FC(uint64_t a1)
{
  result = sub_255E1E724();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1E724()
{
  result = qword_27F7E9118;
  if (!qword_27F7E9118)
  {
    result = swift_getWitnessTable(aE_13, &type metadata for AnimationModifier, v0, v1);
    atomic_store(result, &qword_27F7E9118);
  }

  return result;
}

unint64_t sub_255E1E778()
{
  result = qword_27F7E9128;
  if (!qword_27F7E9128)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9120, &qword_255E5D6E8);
    result = swift_getWitnessTable(MEMORY[0x277CE01A0], v3, v0, v1);
    atomic_store(result, &qword_27F7E9128);
  }

  return result;
}

unint64_t sub_255E1E7DC()
{
  result = qword_27F7E9130;
  if (!qword_27F7E9130)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8018, &qword_255E5D6F0);
    v4[0] = sub_255D8AE34();
    result = swift_getWitnessTable(MEMORY[0x277D84F50], v3, v4);
    atomic_store(result, &qword_27F7E9130);
  }

  return result;
}

unint64_t sub_255E1E860()
{
  result = qword_27F7E9140;
  if (!qword_27F7E9140)
  {
    result = swift_getWitnessTable(asc_255E5D7CC, &type metadata for AnimationModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9140);
  }

  return result;
}

uint64_t sub_255E1E8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E86F8, &qword_255E5D700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E1E998()
{
  result = qword_27F7E9148;
  if (!qword_27F7E9148)
  {
    result = swift_getWitnessTable(asc_255E5D7A4, &type metadata for AnimationModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9148);
  }

  return result;
}

unint64_t sub_255E1E9F0()
{
  result = qword_27F7E9150;
  if (!qword_27F7E9150)
  {
    result = swift_getWitnessTable(byte_255E5D714, &type metadata for AnimationModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9150);
  }

  return result;
}

unint64_t sub_255E1EA48()
{
  result = qword_27F7E9158;
  if (!qword_27F7E9158)
  {
    result = swift_getWitnessTable(byte_255E5D73C, &type metadata for AnimationModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9158);
  }

  return result;
}

uint64_t sub_255E1EAAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x736E6D756C6F63;
  if (v2 != 1)
  {
    v3 = 0x646570756F7267;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000063;
  }

  v6 = 0x736E6D756C6F63;
  if (*a2 != 1)
  {
    v6 = 0x646570756F7267;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE900000000000063;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255E1EBB0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E1EC58(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E1ECEC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E1ED90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E1F71C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E1EDC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0x736E6D756C6F63;
  if (v2 != 1)
  {
    v4 = 0x646570756F7267;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6974616D6F747561;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_255E1EED4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255E1EF28@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255E1EF80(uint64_t a1)
{
  v2 = sub_255E1F458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1EFBC(uint64_t a1)
{
  v2 = sub_255E1F458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E1EFF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9168, &qword_255E5D8A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1F458();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255E1F4AC();
    sub_255E3ABC8();
    if (v15)
    {
      if (v15 == 1)
      {
        *(&v13 + 1) = sub_255E38B28();
        v14 = sub_255E1F500(&qword_27F7E9188, MEMORY[0x277CDDA70], MEMORY[0x277CDDA68]);
        __swift_allocate_boxed_opaque_existential_1(&v12);
        sub_255E3A2E8();
      }

      else
      {
        *(&v13 + 1) = sub_255E38B78();
        v14 = sub_255E1F500(&qword_27F7E9180, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
        __swift_allocate_boxed_opaque_existential_1(&v12);
        sub_255E3A2F8();
      }
    }

    else
    {
      *(&v13 + 1) = sub_255E38E28();
      v14 = sub_255E1F500(&qword_27F7E9190, MEMORY[0x277CDDE18], MEMORY[0x277CDDE10]);
      __swift_allocate_boxed_opaque_existential_1(&v12);
      sub_255E38E18();
    }

    (*(v6 + 8))(v8, v5);
    v9 = v13;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E1F2A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6.val[0] = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, *&v6.val[0].f64[0]);
  v6.val[1] = *(v2 + 24);
  __swift_project_boxed_opaque_existential_1(v2, *&v6.val[1].f64[0]);
  v4 = v7;
  v8 = v6;
  vst2q_f64(v4, v8);
  a2[3] = swift_getOpaqueTypeMetadata2();
  v9 = v6;
  vst2q_f64(v7, v9);
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39CE8();
}

unint64_t sub_255E1F3DC(uint64_t a1)
{
  result = sub_255E1F404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E1F404()
{
  result = qword_27F7E9160;
  if (!qword_27F7E9160)
  {
    result = swift_getWitnessTable(byte_255E5D864, &type metadata for FormStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E9160);
  }

  return result;
}

unint64_t sub_255E1F458()
{
  result = qword_27F7E9170;
  if (!qword_27F7E9170)
  {
    result = swift_getWitnessTable(asc_255E5DAAC, &type metadata for FormStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9170);
  }

  return result;
}

unint64_t sub_255E1F4AC()
{
  result = qword_27F7E9178;
  if (!qword_27F7E9178)
  {
    result = swift_getWitnessTable(byte_255E5DA84, &type metadata for FormStyleString, v0, v1);
    atomic_store(result, &qword_27F7E9178);
  }

  return result;
}

uint64_t sub_255E1F500(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255E1F56C()
{
  result = qword_27F7E9198;
  if (!qword_27F7E9198)
  {
    result = swift_getWitnessTable(a5_9, &type metadata for FormStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9198);
  }

  return result;
}

unint64_t sub_255E1F5C4()
{
  result = qword_27F7E91A0;
  if (!qword_27F7E91A0)
  {
    result = swift_getWitnessTable(aM_19, &type metadata for FormStyleString, v0, v1);
    atomic_store(result, &qword_27F7E91A0);
  }

  return result;
}

unint64_t sub_255E1F61C()
{
  result = qword_27F7E91A8;
  if (!qword_27F7E91A8)
  {
    result = swift_getWitnessTable(byte_255E5D8CC, &type metadata for FormStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E91A8);
  }

  return result;
}

unint64_t sub_255E1F674()
{
  result = qword_27F7E91B0;
  if (!qword_27F7E91B0)
  {
    result = swift_getWitnessTable(byte_255E5D8F4, &type metadata for FormStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E91B0);
  }

  return result;
}

unint64_t sub_255E1F6C8()
{
  result = qword_27F7E91B8;
  if (!qword_27F7E91B8)
  {
    result = swift_getWitnessTable(byte_255E5D9E4, &type metadata for FormStyleString, v0, v1);
    atomic_store(result, &qword_27F7E91B8);
  }

  return result;
}

unint64_t sub_255E1F71C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI11ViewContentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255E1F780(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_255E1F7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_255E1F864(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_255E1F8C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_255E1F920@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E91D8, &qword_255E5DC78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1FFC4();
  sub_255E3AE28();
  if (!v2)
  {
    v8 = v38;
    sub_255D447E8();
    sub_255E3ABA8();
    (*(v5 + 8))(v7, v4);
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v9 = v27;
    v37 = v27;
    v10 = v20;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v28 = *&v18[8];
    v29 = v19;
    v11 = v25;
    v12 = v26;
    *(v8 + 96) = v24;
    *(v8 + 112) = v11;
    *(v8 + 128) = v12;
    *(v8 + 144) = v9;
    v13 = v31;
    v14 = v32;
    *(v8 + 32) = v10;
    *(v8 + 48) = v13;
    v15 = v33;
    *(v8 + 64) = v14;
    *(v8 + 80) = v15;
    v16 = v29;
    *v8 = v28;
    *(v8 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E1FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E1FB94(uint64_t a1)
{
  v2 = sub_255E1FEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1FBD0(uint64_t a1)
{
  v2 = sub_255E1FEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E1FC0C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255E1FD60(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_255E1FC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 2003134838 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E1FCD0(uint64_t a1)
{
  v2 = sub_255E1FFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E1FD0C(uint64_t a1)
{
  v2 = sub_255E1FFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E1FD60(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E91C0, &unk_255E5DC68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E1FEE4();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255E1FF38();
    sub_255E3ABA8();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_255E1FEE4()
{
  result = qword_27F7E91C8;
  if (!qword_27F7E91C8)
  {
    result = swift_getWitnessTable(byte_255E5DE4C, &type metadata for LiftUIDataResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E91C8);
  }

  return result;
}

unint64_t sub_255E1FF38()
{
  result = qword_27F7E91D0;
  if (!qword_27F7E91D0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E73E8, &unk_255E480A0);
    v4 = sub_255D7D39C();
    v5[0] = MEMORY[0x277D83808];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v5);
    atomic_store(result, &qword_27F7E91D0);
  }

  return result;
}

unint64_t sub_255E1FFC4()
{
  result = qword_27F7E91E0;
  if (!qword_27F7E91E0)
  {
    result = swift_getWitnessTable(asc_255E5DDFC, &type metadata for LiftUIViewResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E91E0);
  }

  return result;
}

unint64_t sub_255E2003C()
{
  result = qword_27F7E91E8;
  if (!qword_27F7E91E8)
  {
    result = swift_getWitnessTable(byte_255E5DD1C, &type metadata for LiftUIDataResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E91E8);
  }

  return result;
}

unint64_t sub_255E20094()
{
  result = qword_27F7E91F0;
  if (!qword_27F7E91F0)
  {
    result = swift_getWitnessTable(byte_255E5DDD4, &type metadata for LiftUIViewResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E91F0);
  }

  return result;
}

unint64_t sub_255E200EC()
{
  result = qword_27F7E91F8;
  if (!qword_27F7E91F8)
  {
    result = swift_getWitnessTable(asc_255E5DD44, &type metadata for LiftUIViewResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E91F8);
  }

  return result;
}

unint64_t sub_255E20144()
{
  result = qword_27F7E9200;
  if (!qword_27F7E9200)
  {
    result = swift_getWitnessTable(aM_20, &type metadata for LiftUIViewResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9200);
  }

  return result;
}

unint64_t sub_255E2019C()
{
  result = qword_27F7E9208;
  if (!qword_27F7E9208)
  {
    result = swift_getWitnessTable(byte_255E5DC8C, &type metadata for LiftUIDataResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9208);
  }

  return result;
}

unint64_t sub_255E201F4()
{
  result = qword_27F7E9210;
  if (!qword_27F7E9210)
  {
    result = swift_getWitnessTable(asc_255E5DCB4, &type metadata for LiftUIDataResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9210);
  }

  return result;
}

uint64_t sub_255E20270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E27D6C(v2, v5, type metadata accessor for ColorDecodingError);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
  v7 = sub_255E3A9F8();
  v8 = *(v7 - 8);
  (*(v8 + 32))(a2, &v5[v6], v7);
  return (*(v8 + 56))(a2, 0, 1, v7);
}

uint64_t sub_255E20394(unint64_t a1)
{
  v3 = sub_255E39D38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v16 = *v1;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  sub_255D3E5A8(v16, v7, v8, v9);
  v10 = StringResolvable.resolved(with:)(a1);
  v12 = v11;
  sub_255D38060(v16, v17, v18, v19);
  switch(sub_255E273D4(v10, v12))
  {
    case 1u:

      result = MEMORY[0x282133458]();
      break;
    case 2u:

      result = MEMORY[0x282133478]();
      break;
    case 3u:

      result = MEMORY[0x282133490]();
      break;
    case 4u:

      result = MEMORY[0x282133498]();
      break;
    case 5u:

      result = MEMORY[0x282133430]();
      break;
    case 6u:

      result = MEMORY[0x2821334A8]();
      break;
    case 7u:

      result = sub_255E39D48();
      break;
    case 8u:

      result = MEMORY[0x282133438]();
      break;
    case 9u:

      result = MEMORY[0x282133428]();
      break;
    case 0xAu:

      result = MEMORY[0x2821334B0]();
      break;
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:

      result = MEMORY[0x282133418]();
      break;
    case 0x11u:

      result = MEMORY[0x282133448]();
      break;
    case 0x12u:

      result = MEMORY[0x282133408]();
      break;
    case 0x13u:
    case 0x14u:
      (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
      result = sub_255E39E68();
      break;
    case 0x15u:
      v13 = [objc_opt_self() magentaColor];

      result = MEMORY[0x28212FFA8](v13);
      break;
    case 0x16u:

      result = MEMORY[0x282133480]();
      break;
    case 0x17u:

      result = MEMORY[0x282133520]();
      break;
    case 0x18u:
    case 0x19u:

      result = MEMORY[0x2821334C8]();
      break;
    default:

      result = MEMORY[0x2821333F8]();
      break;
  }

  return result;
}

uint64_t sub_255E20964(unint64_t a1)
{
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  sub_255D3E5A8(*v1, v10, v11, v12);
  v3 = StringResolvable.resolved(with:)(a1);
  v5 = v4;
  sub_255D38060(v9, v10, v11, v12);
  switch(sub_255E273D4(v3, v5))
  {
    case 1u:
      v6 = [objc_opt_self() systemBrownColor];
      break;
    case 2u:
      v6 = [objc_opt_self() systemGreenColor];
      break;
    case 3u:
      v6 = [objc_opt_self() systemIndigoColor];
      break;
    case 4u:
      v6 = [objc_opt_self() systemOrangeColor];
      break;
    case 5u:
      v6 = [objc_opt_self() systemPinkColor];
      break;
    case 6u:
      v6 = [objc_opt_self() systemPurpleColor];
      break;
    case 7u:
      v6 = [objc_opt_self() systemRedColor];
      break;
    case 8u:
      v6 = [objc_opt_self() systemTealColor];
      break;
    case 9u:
      v6 = [objc_opt_self() systemMintColor];
      break;
    case 0xAu:
      v6 = [objc_opt_self() systemYellowColor];
      break;
    case 0xBu:
      v6 = [objc_opt_self() systemGrayColor];
      break;
    case 0xCu:
      v6 = [objc_opt_self() systemGray2Color];
      break;
    case 0xDu:
      v6 = [objc_opt_self() systemGray3Color];
      break;
    case 0xEu:
      v6 = [objc_opt_self() systemGray4Color];
      break;
    case 0xFu:
      v6 = [objc_opt_self() systemGray5Color];
      break;
    case 0x10u:
      v6 = [objc_opt_self() systemGray6Color];
      break;
    case 0x11u:

      JUMPOUT(0x255E39DB8);
    case 0x12u:
      v6 = [objc_opt_self() systemCyanColor];
      break;
    case 0x13u:
      v6 = [objc_opt_self() darkGrayColor];
      break;
    case 0x14u:
      v6 = [objc_opt_self() lightGrayColor];
      break;
    case 0x15u:
      v6 = [objc_opt_self() magentaColor];
      break;
    case 0x16u:

      JUMPOUT(0x255E39DE8);
    case 0x17u:

      JUMPOUT(0x255E39E48);
    case 0x18u:
    case 0x19u:

      JUMPOUT(0x255E39E38);
    default:
      v6 = [objc_opt_self() systemBlueColor];
      break;
  }

  v7 = v6;

  return MEMORY[0x28212FFA8](v7);
}

uint64_t sub_255E20EC8(unint64_t a1)
{
  v15 = sub_255E39D38();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 24);
  v16 = *v1;
  v17 = v6;
  v18 = v7;
  v19 = v12;
  sub_255D612A0(v16, v6, v7, v12);
  sub_255D6EF88(v8, v9, v10, v11);
  sub_255D8F6FC(a1);
  sub_255D4CB98(v16, v17, v18, v19);
  if (v11 <= 0xFD)
  {
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_255D8F6FC(a1);
    sub_255D4CB98(v16, v17, v18, v19);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v15);
  return sub_255E39E68();
}

uint64_t sub_255E2107C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974696361706FLL;
  }

  else
  {
    v3 = 0x6574696877;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974696361706FLL;
  }

  else
  {
    v5 = 0x6574696877;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E21120()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E211A0(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E2120C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E21294(uint64_t *a1@<X8>)
{
  v2 = 0x6574696877;
  if (*v1)
  {
    v2 = 0x7974696361706FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E212D0()
{
  if (*v0)
  {
    return 0x7974696361706FLL;
  }

  else
  {
    return 0x6574696877;
  }
}

uint64_t sub_255E21314(uint64_t a1)
{
  v2 = sub_255E271B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E21350(uint64_t a1)
{
  v2 = sub_255E271B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2138C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E93B8, &qword_255E5F2E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E271B4();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v22) = 0;
  sub_255D64774();
  sub_255E3ABC8();
  v9 = v25;
  v20 = v26;
  v21 = v27;
  v36 = v28;
  v37 = 1;
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  v19 = v33;
  v10 = v34;
  v18 = *(&v33 + 1);
  v11 = v35;
  v12 = v9;
  v13 = v20;
  *&v22 = v9;
  *(&v22 + 1) = v20;
  v14 = v21;
  *&v23 = v21;
  LOBYTE(v9) = v36;
  BYTE8(v23) = v36;
  *v24 = v33;
  *&v24[16] = v34;
  v24[24] = v35;
  v15 = v23;
  *a2 = v22;
  a2[1] = v15;
  a2[2] = *v24;
  *(a2 + 41) = *&v24[9];
  sub_255E27208(&v22, &v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v9;
  v29 = v19;
  v30 = v18;
  v31 = v10;
  v32 = v11;
  return sub_255E27240(&v25);
}

uint64_t sub_255E21670(unint64_t a1)
{
  v3 = sub_255E39D38();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 72);
  v14 = *(v1 + 80);
  v15 = *(v1 + 88);
  v16 = *(v1 + 96);
  v27 = *(v1 + 104);
  v28 = v16;
  v26 = *(v1 + 112);
  v30 = *(v1 + 120);
  v17 = *(v1 + 24);
  v34 = v5;
  v35 = v6;
  v36 = v7;
  v37 = v17;
  sub_255D612A0(v5, v6, v7, v17);
  sub_255D8F6FC(a1);
  v29 = v18;
  v20 = v19;
  sub_255D4CB98(v34, v35, v36, v37);
  if (v20 & 1) != 0 || (v34 = v9, v35 = v8, v36 = v10, v37 = v11, sub_255D612A0(v9, v8, v10, v11), sub_255D8F6FC(a1), v22 = v21, sub_255D4CB98(v34, v35, v36, v37), (v22) || (v34 = v13, v35 = v12, v36 = v14, v37 = v15, sub_255D612A0(v13, v12, v14, v15), sub_255D8F6FC(a1), v24 = v23, sub_255D4CB98(v34, v35, v36, v37), (v24))
  {

    JUMPOUT(0x255E39DE8);
  }

  if (v30 <= 0xFD)
  {
    v34 = v28;
    v35 = v27;
    v36 = v26;
    v37 = v30;
    sub_255D612A0(v28, v27, v26, v30);
    sub_255D8F6FC(a1);
    sub_255D4CB98(v34, v35, v36, v37);
  }

  (*(v32 + 104))(v31, *MEMORY[0x277CE0EE0], v33);
  return sub_255E39E58();
}

uint64_t sub_255E21924()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E219C4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E21A50(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E21AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E27428(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E21B1C(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 114;
  v4 = 0xE100000000000000;
  v5 = 98;
  if (*v1 != 2)
  {
    v5 = 0x7974696361706FLL;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 103;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255E21B78()
{
  v1 = 114;
  v2 = 98;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 103;
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

unint64_t sub_255E21BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E27428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E21BF8(uint64_t a1)
{
  v2 = sub_255E27270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E21C34(uint64_t a1)
{
  v2 = sub_255E27270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E21C70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E93C8, &qword_255E5F2F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255E27270();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  v10 = v6;
  v34 = a2;
  LOBYTE(v36) = 0;
  sub_255D64774();
  v11 = v5;
  sub_255E3ABC8();
  v32 = v43;
  v33 = v44;
  v60 = v45;
  LOBYTE(v36) = 1;
  sub_255E3ABC8();
  v30 = v43;
  v31 = v44;
  v29 = v45;
  LOBYTE(v36) = 2;
  sub_255E3ABC8();
  v27 = *(&v43 + 1);
  v28 = v43;
  v26 = v44;
  v12 = v45;
  v61 = 3;
  sub_255E3ABA8();
  (*(v10 + 8))(v8, v11);
  v24 = *(&v57 + 1);
  v25 = v57;
  v23 = v58;
  v22 = v59;
  v13 = v32;
  v36 = v32;
  v14 = v33;
  *&v37 = v33;
  v15 = v60;
  BYTE8(v37) = v60;
  v38 = v30;
  *&v39 = v31;
  LOBYTE(v10) = v29;
  BYTE8(v39) = v29;
  *&v40 = v28;
  *(&v40 + 1) = v27;
  *&v41 = v26;
  BYTE8(v41) = v12;
  v42[0] = v57;
  *&v42[1] = v58;
  BYTE8(v42[1]) = v59;
  v16 = v39;
  v17 = v34;
  v34[2] = v30;
  v17[3] = v16;
  v18 = v41;
  v17[4] = v40;
  v17[5] = v18;
  v19 = v37;
  *v17 = v36;
  v17[1] = v19;
  *(v17 + 105) = *(v42 + 9);
  v17[6] = v42[0];
  sub_255E272C4(&v36, &v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v43 = v13;
  v44 = v14;
  v45 = v15;
  v46 = v30;
  v47 = v31;
  v48 = v10;
  v49 = v28;
  v50 = v27;
  v51 = v26;
  v52 = v12;
  v53 = v25;
  v54 = v24;
  v55 = v23;
  v56 = v22;
  return sub_255E272FC(&v43);
}

uint64_t sub_255E220D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C646E7562;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C646E7562;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E22170()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E221E8(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E2224C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E222CC(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x656C646E7562;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E22300()
{
  if (*v0)
  {
    return 0x656C646E7562;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_255E2233C(uint64_t a1)
{
  v2 = sub_255E2732C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E22378(uint64_t a1)
{
  v2 = sub_255E2732C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E223B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];

  if (v3)
  {
    v4 = sub_255E3A4C8();
    v3 = [objc_opt_self() bundleWithIdentifier_];
  }

  return MEMORY[0x282133540](v1, v2, v3);
}

uint64_t sub_255E22454@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255E26BD8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_255E22484()
{
  v1 = sub_255D60254(*v0);

  return MEMORY[0x28212FFA8](v1);
}

unint64_t sub_255E224B0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_255E26DBC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_255E224DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = sub_255D3CAFC();
  sub_255E3AE28();
  if (!v2)
  {
    *&v45 = v9;
    v46 = v5;
    v11 = sub_255E3ABD8();
    if (*(v11 + 16))
    {
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
      v14 = *(v11 + 48);
      v15 = *(v11 + 56);

      v16 = v13 == 1701667182 && v12 == 0xE400000000000000;
      if (v16 || (sub_255E3AC68() & 1) != 0)
      {
        v51 = v13;
        v52 = v12;
        v53 = v14;
        LOBYTE(v54) = v15;
        sub_255E3AB78();

        v57 = &type metadata for NamedStandardColor;
        v58 = sub_255E270D8();
LABEL_12:
        v17 = swift_allocObject();
        *&v56 = v17;
        __swift_project_boxed_opaque_existential_1(v55, v55[3]);
        sub_255E3AE08();
        __swift_project_boxed_opaque_existential_1(&v51, v54);
        sub_255D3EA0C();
        sub_255E3ACB8();
        v45 = v48;
        v22 = v49;
        v23 = v50;
        __swift_destroy_boxed_opaque_existential_1Tm(&v51);
        *(v17 + 16) = v45;
        *(v17 + 32) = v22;
        *(v17 + 40) = v23;
        (*(v46 + 8))(v7, v4);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
LABEL_25:
        sub_255D34630(&v56, v59);
        v20 = v47;
LABEL_26:
        v24 = v59[1];
        *v20 = v59[0];
        *(v20 + 16) = v24;
        *(v20 + 32) = v60;
        return __swift_destroy_boxed_opaque_existential_1Tm(v61);
      }

      v18 = v15;
      v19 = v13 == 0x6D6574737973 && v12 == 0xE600000000000000;
      v20 = v47;
      if (v19 || (sub_255E3AC68() & 1) != 0)
      {
        v51 = v13;
        v52 = v12;
        v53 = v14;
        LOBYTE(v54) = v18;
        sub_255E3AB78();

        v57 = &type metadata for NamedSystemColor;
        v58 = sub_255E27084();
        goto LABEL_12;
      }

      v21 = v13 == 1869508461 && v12 == 0xE400000000000000;
      if (v21 || (sub_255E3AC68() & 1) != 0)
      {
        v51 = v13;
        v52 = v12;
        v53 = v14;
        LOBYTE(v54) = v18;
        sub_255E3AB78();

        v57 = &type metadata for MonoColor;
        v58 = sub_255DB163C();
        *&v56 = swift_allocObject();
        sub_255E2138C(v55, (v56 + 16));
LABEL_33:
        (*(v46 + 8))(v7, v4);
        sub_255D34630(&v56, v59);
        goto LABEL_26;
      }

      v25 = v13 == 6449010 && v12 == 0xE300000000000000;
      if (v25 || (sub_255E3AC68() & 1) != 0)
      {
        v51 = v13;
        v52 = v12;
        v53 = v14;
        LOBYTE(v54) = v18;
        sub_255E3AB78();

        v57 = &type metadata for RGBAColor;
        v58 = sub_255E27030();
        *&v56 = swift_allocObject();
        sub_255E21C70(v55, (v56 + 16));
        goto LABEL_33;
      }

      v26 = v13 == 0x656C646E7562 && v12 == 0xE600000000000000;
      if (v26 || (sub_255E3AC68() & 1) != 0)
      {
        v51 = v13;
        v52 = v12;
        v53 = v14;
        LOBYTE(v54) = v18;
        sub_255E3AB78();

        v27 = sub_255E26BD8(v55);
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v57 = &type metadata for BundleColor;
        v58 = sub_255E26FDC();
        v34 = swift_allocObject();
        *&v56 = v34;
        v34[2] = v27;
        v34[3] = v29;
        v34[4] = v31;
        v34[5] = v33;
LABEL_40:
        (*(v46 + 8))(v7, v4);
        goto LABEL_25;
      }

      v35 = v13 == 0x746E656D656C65 && v12 == 0xE700000000000000;
      if (v35 || (sub_255E3AC68() & 1) != 0)
      {
        v51 = v13;
        v52 = v12;
        v53 = v14;
        LOBYTE(v54) = v18;
        sub_255E3AB78();

        v36 = sub_255E26DBC(v55);
        v57 = &type metadata for ElementColor;
        v58 = sub_255E26F88();
        LOBYTE(v56) = v36;
        goto LABEL_40;
      }

      type metadata accessor for ColorDecodingError(0);
      HIDWORD(v43) = v18;
      sub_255E2716C(&qword_27F7E9388, type metadata accessor for ColorDecodingError, a5_16);
      swift_allocError();
      v38 = v37;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
      v44 = v38;
      *v38 = v13;
      v38[1] = v12;

      v39 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      v41 = v45;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v41;
      v42 = swift_allocObject();
      *(inited + 32) = v42;
      *(v42 + 16) = v13;
      *(v42 + 24) = v12;
      *(v42 + 32) = v14;
      *(v42 + 40) = BYTE4(v43);
      *&v56 = v39;

      sub_255D3CDA0(inited);
      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      sub_255E3A9A8();

      *&v56 = 0xD000000000000013;
      *(&v56 + 1) = 0x8000000255E66A20;
      MEMORY[0x259C4E8F0](v13, v12);

      sub_255E3A9C8();
    }

    else
    {

      type metadata accessor for DynamicKeyError(0);
      sub_255E2716C(&qword_27F7E61D8, type metadata accessor for DynamicKeyError, byte_255E482E4);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
    (*(v46 + 8))(v7, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v61);
}

uint64_t sub_255E22E68(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6874646977;
  }

  else
  {
    v2 = 0x726F6C6F63;
  }

  if (*a2)
  {
    v3 = 0x6874646977;
  }

  else
  {
    v3 = 0x726F6C6F63;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_255E3AC68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_255E22EE8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E22F58(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E22FAC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E23024(uint64_t *a1@<X8>)
{
  v2 = 0x726F6C6F63;
  if (*v1)
  {
    v2 = 0x6874646977;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_255E23054()
{
  if (*v0)
  {
    return 0x6874646977;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_255E2308C(uint64_t a1)
{
  v2 = sub_255E263C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E230C8(uint64_t a1)
{
  v2 = sub_255E263C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E23104@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9300, &qword_255E5E8F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E263C8();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = 0;
  sub_255D65E28();
  sub_255E3ABC8();
  sub_255D34630(&v10, v13);
  v17 = 1;
  sub_255D64774();
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_255E2641C(v13, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255E26454(v13);
}

uint64_t sub_255E2331C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 64);
  if (v6 > 0xFD || (v7 = *(v3 + 48), v8 = *(v3 + 56), v22 = *(v3 + 40), v23 = v7, v24 = v8, v25 = v6, v9 = a1, sub_255D612A0(v22, v7, v8, v6), sub_255D8F6FC(a2), v11 = v10, sub_255D4CB98(v22, v23, v24, v25), a1 = v9, (v11 & 1) != 0))
  {
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = *(v3 + 24);
    v13 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v3, v14);
    v22 = (*(v13 + 16))(a2, v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9258, &qword_255E5E898);
    v15 = sub_255E38AE8();
    a3[3] = v15;
    v26[0] = v12;
    v26[1] = sub_255D38950(&qword_27F7E9260, &qword_27F7E9258, &qword_255E5E898, MEMORY[0x277CDFC88]);
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v15, v26);
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  else
  {
    v16 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v18 = *(v3 + 24);
    v17 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v3, v18);
    v22 = (*(v17 + 16))(a2, v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9258, &qword_255E5E898);
    v19 = sub_255E38AE8();
    a3[3] = v19;
    v21[0] = v16;
    v21[1] = sub_255D38950(&qword_27F7E9260, &qword_27F7E9258, &qword_255E5E898, MEMORY[0x277CDFC88]);
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v19, v21);
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  sub_255E39BF8();
}

uint64_t sub_255E23600(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6C6F63;
  if (v2 != 1)
  {
    v4 = 0x74646957656E696CLL;
    v3 = 0xE900000000000068;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x737569646172;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F6C6F63;
  if (*a2 != 1)
  {
    v8 = 0x74646957656E696CLL;
    v7 = 0xE900000000000068;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737569646172;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E23700()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E237A0(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E2382C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E238C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E27474(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E238F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F6C6F63;
  if (v2 != 1)
  {
    v5 = 0x74646957656E696CLL;
    v4 = 0xE900000000000068;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737569646172;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255E23954()
{
  v1 = 0x726F6C6F63;
  if (*v0 != 1)
  {
    v1 = 0x74646957656E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737569646172;
  }
}

unint64_t sub_255E239AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E27474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E239D4(uint64_t a1)
{
  v2 = sub_255E2630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E23A10(uint64_t a1)
{
  v2 = sub_255E2630C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E23A4C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E92F0, &qword_255E5E8F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v9 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2630C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v18 = 0;
    sub_255D64774();
    sub_255E3ABC8();
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v18 = 1;
    sub_255D65E28();
    sub_255E3ABC8();
    sub_255D34630(&v9, v15);
    v18 = 2;
    sub_255E3ABA8();
    (*(v6 + 8))(v8, v5);
    *&v15[40] = v9;
    v16 = v10;
    v17 = v11;
    sub_255E26360(&v12, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255E26398(&v12);
  }
}

uint64_t sub_255E23CF4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_255E38BC8();
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9268, &qword_255E5E8A0);
  MEMORY[0x28223BE20](v45);
  v13 = &v42 - v12;
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  *&v48 = *v3;
  *(&v48 + 1) = v14;
  *&v49 = v15;
  BYTE8(v49) = v16;
  sub_255D612A0(v48, v14, v15, v16);
  v46 = a2;
  sub_255D8F6FC(a2);
  v18 = v17;
  v20 = v19;
  sub_255D4CB98(v48, *(&v48 + 1), v49, SBYTE8(v49));
  if (v20)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v43 = a3;
  v44 = v4;
  v22 = *(v5 + 96);
  if (v22 <= 0xFD)
  {
    v23 = *(v5 + 80);
    v24 = *(v5 + 88);
    *&v48 = *(v5 + 72);
    *(&v48 + 1) = v23;
    *&v49 = v24;
    BYTE8(v49) = v22;
    sub_255D612A0(v48, v23, v24, v22);
    sub_255D8F6FC(v46);
    sub_255D4CB98(v48, *(&v48 + 1), v49, SBYTE8(v49));
  }

  v25 = a1[4];
  v42 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = *(v9 + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_255E38F38();
  (*(*(v28 - 8) + 104))(&v11[v26], v27, v28);
  *v11 = v18;
  *(v11 + 1) = v18;
  v29 = *(v5 + 56);
  v30 = *(v5 + 64);
  __swift_project_boxed_opaque_existential_1((v5 + 32), v29);
  v31 = (*(v30 + 16))(v46, v29, v30);
  sub_255E388A8();
  sub_255E27D6C(v11, v13, MEMORY[0x277CDFC08]);
  v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9270, &qword_255E5E8A8) + 36)];
  v33 = v49;
  *v32 = v48;
  *(v32 + 1) = v33;
  *(v32 + 4) = v50;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9278, &qword_255E5E8B0);
  *&v13[*(v34 + 52)] = v31;
  *&v13[*(v34 + 56)] = 256;
  v35 = sub_255E3A228();
  v37 = v36;
  sub_255E26224(v11);
  v38 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9280, &qword_255E5E8B8) + 36)];
  *v38 = v35;
  v38[1] = v37;
  sub_255E3A228();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E9288, &qword_255E5E8C0);
  v39 = sub_255E38AE8();
  v40 = v43;
  *(v43 + 24) = v39;
  v41 = sub_255D38950(&qword_27F7E9290, &qword_27F7E9288, &qword_255E5E8C0, MEMORY[0x277CDFC88]);
  v47[0] = v25;
  v47[1] = v41;
  v40[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v39, v47);
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_255D38950(&qword_27F7E9298, &qword_27F7E9268, &qword_255E5E8A0, MEMORY[0x277CDFB00]);
  sub_255E39C48();
  return sub_255D395E4(v13, &qword_27F7E9268, &qword_255E5E8A0);
}

unint64_t sub_255E2418C()
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_255E3A9A8();

  v4 = 0xD00000000000001ALL;
  v5 = 0x8000000255E669E0;
  sub_255D3CE1C(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84B0, &qword_255E558B8);
  v1 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v1);

  MEMORY[0x259C4E8F0](62, 0xE100000000000000);
  return v4;
}

uint64_t sub_255E24240(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7972616974726574;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E2434C()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E243F4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E24488(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E2452C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E274C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E2455C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255E245C0()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

unint64_t sub_255E24620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E274C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E24648(uint64_t a1)
{
  v2 = sub_255E26484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E24684(uint64_t a1)
{
  v2 = sub_255E26484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E246C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9310, &unk_255E5E900);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E26484();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v11[0]) = 0;
  sub_255D65E28();
  sub_255E3ABC8();
  sub_255D34630(&v13, v16);
  HIBYTE(v10) = 1;
  sub_255E3ABA8();
  if (v12)
  {
    sub_255D3CE1C(v11, &v13);
    sub_255D65FFC(v11);
  }

  else
  {
    sub_255D395E4(v11, &qword_27F7E7F68, &qword_255E53540);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  HIBYTE(v10) = 2;
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    sub_255D3CE1C(v11, &v13);
    sub_255D65FFC(v11);
  }

  else
  {
    sub_255D395E4(v11, &qword_27F7E7F68, &qword_255E53540);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  v20 = v13;
  v21 = v14;
  v22 = v15;
  sub_255E264D8(v16, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255E26510(v16);
}

uint64_t sub_255E24A04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_255E25080((v3 + 5), &v32);
  if (v33)
  {
    sub_255D34630(&v32, v35);
    sub_255E25080((v3 + 10), &v29);
    if (v30)
    {
      sub_255D34630(&v29, &v32);
      v7 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v8 = v3[3];
      v9 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v8);
      *&v29 = (*(v9 + 16))(a2, v8, v9);
      v11 = v36;
      v10 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v38 = (*(v10 + 16))(a2, v11, v10);
      v12 = v33;
      v13 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v27[2] = (*(v13 + 16))(a2, v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92C0, &qword_255E5E8D8);
      v14 = sub_255E38AE8();
      a3[3] = v14;
      v27[0] = v7;
      v27[1] = sub_255D38950(&qword_27F7E92C8, &qword_27F7E92C0, &qword_255E5E8D8, MEMORY[0x277CE07B8]);
      a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v14, v27);
      __swift_allocate_boxed_opaque_existential_1(a3);
      sub_255E399C8();

      __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    }

    else
    {
      sub_255D395E4(&v29, &qword_27F7E9218, &qword_255E5DF20);
      v21 = a1[3];
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v21);
      v22 = v3[3];
      v23 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v22);
      *&v32 = (*(v23 + 16))(a2, v22, v23);
      v24 = v36;
      v25 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      *&v29 = (*(v25 + 16))(a2, v24, v25);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92B0, &qword_255E5E8D0);
      v26 = sub_255E38AE8();
      a3[3] = v26;
      v28[0] = v20;
      v28[1] = sub_255D38950(&qword_27F7E92B8, &qword_27F7E92B0, &qword_255E5E8D0, MEMORY[0x277CE07B0]);
      a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v26, v28);
      __swift_allocate_boxed_opaque_existential_1(a3);
      MEMORY[0x259C4DD30](&v32, &v29, v21, MEMORY[0x277CE0F78], MEMORY[0x277CE0F78], v20, MEMORY[0x277CE0F60], MEMORY[0x277CE0F60]);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    sub_255D395E4(&v32, &qword_27F7E9218, &qword_255E5DF20);
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = v3[3];
    v17 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v16);
    v35[0] = (*(v17 + 16))(a2, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92A0, &qword_255E5E8C8);
    v18 = sub_255E38AE8();
    a3[3] = v18;
    v31[0] = v15;
    v31[1] = sub_255D38950(&qword_27F7E92A8, &qword_27F7E92A0, &qword_255E5E8C8, MEMORY[0x277CE0740]);
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v18, v31);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255E399B8();
  }
}

unint64_t sub_255E24F30()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_255E3A9A8();

  v6 = 0xD00000000000001ALL;
  v7 = 0x8000000255E66A00;
  sub_255D3CE1C(v0, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84B0, &qword_255E558B8);
  v1 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v1);

  MEMORY[0x259C4E8F0](8236, 0xE200000000000000);
  sub_255E25080(v0 + 40, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9218, &qword_255E5DF20);
  v2 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v2);

  MEMORY[0x259C4E8F0](32, 0xE100000000000000);
  sub_255E25080(v0 + 80, v5);
  v3 = sub_255E3A528();
  MEMORY[0x259C4E8F0](v3);

  MEMORY[0x259C4E8F0](62, 0xE100000000000000);
  return v6;
}

uint64_t sub_255E25080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9218, &qword_255E5DF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255E250FC(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255E25144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_255E251F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255E25238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12CodableColor_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255E252DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255E25324(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255E25390@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_255D65E28();
    sub_255E3ACB8();
    sub_255D34630(&v7, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    v5 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E254AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  v12 = (*(v10 + 16))(a2, v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FD0, &unk_255E53810);
  v13 = sub_255E38AE8();
  a4[3] = v13;
  v15[0] = v9;
  v15[1] = sub_255D38950(&qword_27F7E7FD8, &qword_27F7E7FD0, &unk_255E53810, MEMORY[0x277CE0868]);
  a4[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v15);
  __swift_allocate_boxed_opaque_existential_1(a4);
  a3(v12, v8, v9);
}

uint64_t sub_255E255F4()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E25668(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E256BC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255E2574C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255E257A4(uint64_t a1)
{
  v2 = sub_255E262B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E257E0(uint64_t a1)
{
  v2 = sub_255E262B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2581C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E92E0, &qword_255E5E8E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E262B8();
  sub_255E3AE28();
  if (!v2)
  {
    if (sub_255E3ABE8())
    {
      sub_255DB04F4();
      sub_255E3ABC8();
      (*(v6 + 8))(v8, v5);
      sub_255D34630(v12, &v13);
      sub_255D34630(&v13, &v15);
      v16[24] = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_255E3AE08();
      __swift_project_boxed_opaque_existential_1(&v13, v14);
      sub_255D65E28();
      sub_255E3ACB8();
      (*(v6 + 8))(v8, v5);
      sub_255D34630(v11, v12);
      sub_255D34630(v12, &v15);
      v16[24] = 1;
      __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    }

    v10 = *v16;
    *a2 = v15;
    a2[1] = v10;
    *(a2 + 25) = *&v16[9];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E25AAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  sub_255E26280(v5, v41);
  if (v42 == 1)
  {
    sub_255D34630(v41, v38);
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = v39;
    v11 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v35[0] = (*(v11 + 16))(a2, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92D0, &qword_255E5E8E0);
    v12 = sub_255E38AE8();
    a3[3] = v12;
    v33[0] = v9;
    v33[1] = sub_255D38950(&qword_27F7E92D8, &qword_27F7E92D0, &qword_255E5E8E0, MEMORY[0x277CE0868]);
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v12, v33);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255E39B98();
  }

  else
  {
    sub_255D34630(v41, v38);
    v13 = a1[4];
    v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = v39;
    v16 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_255DEBAD8(a2, v15, v16, v35);
    if (!v4)
    {
      v17 = v36;
      v43 = v37;
      v18 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v31 = sub_255E3A8A8();
      v32 = &v28;
      v19 = *(v31 - 8);
      v29 = v13;
      v20 = v19;
      MEMORY[0x28223BE20](v31);
      v22 = &v28 - v21;
      v23 = *(v17 - 8);
      v30 = v14;
      v24 = v23;
      (*(v23 + 16))(&v28 - v21, v18, v17);
      (*(v24 + 56))(v22, 0, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E92D0, &qword_255E5E8E0);
      v25 = sub_255E38AE8();
      a3[3] = v25;
      v26 = sub_255D38950(&qword_27F7E92D8, &qword_27F7E92D0, &qword_255E5E8E0, MEMORY[0x277CE0868]);
      v34[0] = v29;
      v34[1] = v26;
      a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v25, v34);
      __swift_allocate_boxed_opaque_existential_1(a3);
      sub_255E39B98();
      (*(v20 + 8))(v22, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

unint64_t sub_255E25EC0(uint64_t a1)
{
  result = sub_255E25EE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E25EE8()
{
  result = qword_27F7E9220;
  if (!qword_27F7E9220)
  {
    result = swift_getWitnessTable(aA_18, &type metadata for TintColorModifier, v0, v1);
    atomic_store(result, &qword_27F7E9220);
  }

  return result;
}

unint64_t sub_255E25F3C(uint64_t a1)
{
  result = sub_255E25F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E25F64()
{
  result = qword_27F7E9228;
  if (!qword_27F7E9228)
  {
    result = swift_getWitnessTable(byte_255E5E780, &type metadata for AccentColorModifier, v0, v1);
    atomic_store(result, &qword_27F7E9228);
  }

  return result;
}

unint64_t sub_255E25FB8(uint64_t a1)
{
  result = sub_255E25FE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E25FE0()
{
  result = qword_27F7E9230;
  if (!qword_27F7E9230)
  {
    result = swift_getWitnessTable(aQ_10, &type metadata for ForegroundStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E9230);
  }

  return result;
}

unint64_t sub_255E26034(uint64_t a1)
{
  result = sub_255E2605C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2605C()
{
  result = qword_27F7E9238;
  if (!qword_27F7E9238)
  {
    result = swift_getWitnessTable(asc_255E5E6E0, &type metadata for ForegroundColorModifier, v0, v1);
    atomic_store(result, &qword_27F7E9238);
  }

  return result;
}

unint64_t sub_255E260B0(uint64_t a1)
{
  result = sub_255E260D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E260D8()
{
  result = qword_27F7E9240;
  if (!qword_27F7E9240)
  {
    result = swift_getWitnessTable(byte_255E5E758, &type metadata for BackgroundColorModifier, v0, v1);
    atomic_store(result, &qword_27F7E9240);
  }

  return result;
}

unint64_t sub_255E2612C(uint64_t a1)
{
  result = sub_255E26154();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E26154()
{
  result = qword_27F7E9248;
  if (!qword_27F7E9248)
  {
    result = swift_getWitnessTable(asc_255E5E730, &type metadata for RoundedBorderModifier, v0, v1);
    atomic_store(result, &qword_27F7E9248);
  }

  return result;
}

unint64_t sub_255E261A8(uint64_t a1)
{
  result = sub_255E261D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E261D0()
{
  result = qword_27F7E9250;
  if (!qword_27F7E9250)
  {
    result = swift_getWitnessTable(byte_255E5E708, &type metadata for BorderModifier, v0, v1);
    atomic_store(result, &qword_27F7E9250);
  }

  return result;
}

uint64_t sub_255E26224(uint64_t a1)
{
  v2 = sub_255E38BC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E262B8()
{
  result = qword_27F7E92E8;
  if (!qword_27F7E92E8)
  {
    result = swift_getWitnessTable(byte_255E5F24C, &type metadata for TintColorModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E92E8);
  }

  return result;
}

unint64_t sub_255E2630C()
{
  result = qword_27F7E92F8;
  if (!qword_27F7E92F8)
  {
    result = swift_getWitnessTable(asc_255E5F1FC, &type metadata for RoundedBorderModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E92F8);
  }

  return result;
}

unint64_t sub_255E263C8()
{
  result = qword_27F7E9308;
  if (!qword_27F7E9308)
  {
    result = swift_getWitnessTable(asc_255E5F1AC, &type metadata for BorderModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9308);
  }

  return result;
}

unint64_t sub_255E26484()
{
  result = qword_27F7E9318;
  if (!qword_27F7E9318)
  {
    result = swift_getWitnessTable(byte_255E5F15C, &type metadata for ForegroundStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9318);
  }

  return result;
}

uint64_t sub_255E26580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 57))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255E265D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_255E26658(uint64_t a1, unsigned int a2)
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

uint64_t sub_255E26694(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255E266F4()
{
  result = qword_27F7E9320;
  if (!qword_27F7E9320)
  {
    result = swift_getWitnessTable(aE_14, &type metadata for TintColorModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9320);
  }

  return result;
}

unint64_t sub_255E2674C()
{
  result = qword_27F7E9328;
  if (!qword_27F7E9328)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for RoundedBorderModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9328);
  }

  return result;
}

unint64_t sub_255E267A4()
{
  result = qword_27F7E9330;
  if (!qword_27F7E9330)
  {
    result = swift_getWitnessTable(byte_255E5F044, &type metadata for BorderModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9330);
  }

  return result;
}

unint64_t sub_255E267FC()
{
  result = qword_27F7E9338;
  if (!qword_27F7E9338)
  {
    result = swift_getWitnessTable(byte_255E5F134, &type metadata for ForegroundStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9338);
  }

  return result;
}

unint64_t sub_255E26854()
{
  result = qword_27F7E9340;
  if (!qword_27F7E9340)
  {
    result = swift_getWitnessTable(a5_10, &type metadata for ForegroundStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9340);
  }

  return result;
}

unint64_t sub_255E268AC()
{
  result = qword_27F7E9348;
  if (!qword_27F7E9348)
  {
    result = swift_getWitnessTable(aE_15, &type metadata for ForegroundStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9348);
  }

  return result;
}

unint64_t sub_255E26904()
{
  result = qword_27F7E9350;
  if (!qword_27F7E9350)
  {
    result = swift_getWitnessTable(asc_255E5EF7C, &type metadata for BorderModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9350);
  }

  return result;
}

unint64_t sub_255E2695C()
{
  result = qword_27F7E9358;
  if (!qword_27F7E9358)
  {
    result = swift_getWitnessTable(a5_11, &type metadata for BorderModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9358);
  }

  return result;
}

unint64_t sub_255E269B4()
{
  result = qword_27F7E9360;
  if (!qword_27F7E9360)
  {
    result = swift_getWitnessTable(byte_255E5EE8C, &type metadata for RoundedBorderModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9360);
  }

  return result;
}

unint64_t sub_255E26A0C()
{
  result = qword_27F7E9368;
  if (!qword_27F7E9368)
  {
    result = swift_getWitnessTable(asc_255E5EEB4, &type metadata for RoundedBorderModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9368);
  }

  return result;
}

unint64_t sub_255E26A64()
{
  result = qword_27F7E9370;
  if (!qword_27F7E9370)
  {
    result = swift_getWitnessTable(byte_255E5ED9C, &type metadata for TintColorModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9370);
  }

  return result;
}

unint64_t sub_255E26ABC()
{
  result = qword_27F7E9378;
  if (!qword_27F7E9378)
  {
    result = swift_getWitnessTable(byte_255E5EDC4, &type metadata for TintColorModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9378);
  }

  return result;
}

unint64_t sub_255E26B10(uint64_t a1)
{
  result = sub_255E26B38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E26B38()
{
  result = qword_27F7E9380;
  if (!qword_27F7E9380)
  {
    result = swift_getWitnessTable(byte_255E5ED74, &type metadata for MonoColor, v0, v1);
    atomic_store(result, &qword_27F7E9380);
  }

  return result;
}

uint64_t type metadata accessor for ColorDecodingError(uint64_t a1)
{
  result = qword_27F7E93F0;
  if (!qword_27F7E93F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255E26BD8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E93D8, &qword_255E5F2F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2732C();
  sub_255E3AE28();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_255E3ABB8();
    v10 = 1;
    sub_255E3AB88();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_255E26DBC(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_255E27380();
    sub_255E3ACB8();
    v3 = v5;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

unint64_t sub_255E26F88()
{
  result = qword_27F7E9390;
  if (!qword_27F7E9390)
  {
    result = swift_getWitnessTable(byte_255E60248, &type metadata for ElementColor, v0, v1);
    atomic_store(result, &qword_27F7E9390);
  }

  return result;
}

unint64_t sub_255E26FDC()
{
  result = qword_27F7E9398;
  if (!qword_27F7E9398)
  {
    result = swift_getWitnessTable(byte_255E6022C, &type metadata for BundleColor, v0, v1);
    atomic_store(result, &qword_27F7E9398);
  }

  return result;
}

unint64_t sub_255E27030()
{
  result = qword_27F7E93A0;
  if (!qword_27F7E93A0)
  {
    result = swift_getWitnessTable(byte_255E60210, &type metadata for RGBAColor, v0, v1);
    atomic_store(result, &qword_27F7E93A0);
  }

  return result;
}

unint64_t sub_255E27084()
{
  result = qword_27F7E93A8;
  if (!qword_27F7E93A8)
  {
    result = swift_getWitnessTable(byte_255E601F4, &type metadata for NamedSystemColor, v0, v1);
    atomic_store(result, &qword_27F7E93A8);
  }

  return result;
}

unint64_t sub_255E270D8()
{
  result = qword_27F7E93B0;
  if (!qword_27F7E93B0)
  {
    result = swift_getWitnessTable(byte_255E601D8, &type metadata for NamedStandardColor, v0, v1);
    atomic_store(result, &qword_27F7E93B0);
  }

  return result;
}

uint64_t objectdestroy_86Tm()
{
  sub_255D38060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255E2716C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255E271B4()
{
  result = qword_27F7E93C0;
  if (!qword_27F7E93C0)
  {
    result = swift_getWitnessTable(byte_255E60188, &type metadata for MonoColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E93C0);
  }

  return result;
}

unint64_t sub_255E27270()
{
  result = qword_27F7E93D0;
  if (!qword_27F7E93D0)
  {
    result = swift_getWitnessTable(byte_255E60138, &type metadata for RGBAColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E93D0);
  }

  return result;
}

unint64_t sub_255E2732C()
{
  result = qword_27F7E93E0;
  if (!qword_27F7E93E0)
  {
    result = swift_getWitnessTable(aA_19, &type metadata for BundleColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E93E0);
  }

  return result;
}

unint64_t sub_255E27380()
{
  result = qword_27F7E93E8;
  if (!qword_27F7E93E8)
  {
    result = swift_getWitnessTable(asc_255E3FB8C, &type metadata for ElementColorName, v0, v1);
    atomic_store(result, &qword_27F7E93E8);
  }

  return result;
}

unint64_t sub_255E273D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AD18();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E27428(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E27474(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E274C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255E2756C(uint64_t a1, int a2)
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

uint64_t sub_255E275B4(uint64_t result, int a2, int a3)
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

uint64_t sub_255E27614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255E2768C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_255E27714(uint64_t a1)
{
  sub_255E08F1C(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_255E3A9F8();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

unint64_t sub_255E277EC()
{
  result = qword_27F7E9400;
  if (!qword_27F7E9400)
  {
    result = swift_getWitnessTable(byte_255E5FEE0, &type metadata for MonoColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9400);
  }

  return result;
}

unint64_t sub_255E27844()
{
  result = qword_27F7E9408;
  if (!qword_27F7E9408)
  {
    result = swift_getWitnessTable(byte_255E5FFD0, &type metadata for RGBAColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9408);
  }

  return result;
}

unint64_t sub_255E2789C()
{
  result = qword_27F7E9410;
  if (!qword_27F7E9410)
  {
    result = swift_getWitnessTable(asc_255E600C0, &type metadata for BundleColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9410);
  }

  return result;
}

unint64_t sub_255E278F4()
{
  result = qword_27F7E9418;
  if (!qword_27F7E9418)
  {
    result = swift_getWitnessTable(byte_255E5FFF8, &type metadata for BundleColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9418);
  }

  return result;
}

unint64_t sub_255E2794C()
{
  result = qword_27F7E9420;
  if (!qword_27F7E9420)
  {
    result = swift_getWitnessTable(byte_255E60020, &type metadata for BundleColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9420);
  }

  return result;
}

unint64_t sub_255E279A4()
{
  result = qword_27F7E9428;
  if (!qword_27F7E9428)
  {
    result = swift_getWitnessTable(byte_255E5FF08, &type metadata for RGBAColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9428);
  }

  return result;
}

unint64_t sub_255E279FC()
{
  result = qword_27F7E9430;
  if (!qword_27F7E9430)
  {
    result = swift_getWitnessTable(byte_255E5FF30, &type metadata for RGBAColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9430);
  }

  return result;
}

unint64_t sub_255E27A54()
{
  result = qword_27F7E9438;
  if (!qword_27F7E9438)
  {
    result = swift_getWitnessTable(byte_255E5FE18, &type metadata for MonoColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9438);
  }

  return result;
}

unint64_t sub_255E27AAC()
{
  result = qword_27F7E9440;
  if (!qword_27F7E9440)
  {
    result = swift_getWitnessTable(byte_255E5FE40, &type metadata for MonoColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9440);
  }

  return result;
}

unint64_t sub_255E27B00(uint64_t a1)
{
  result = sub_255E27B28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27B28()
{
  result = qword_27F7E9448;
  if (!qword_27F7E9448)
  {
    result = swift_getWitnessTable(byte_255E5FDF0, &type metadata for NamedStandardColor, v0, v1);
    atomic_store(result, &qword_27F7E9448);
  }

  return result;
}

unint64_t sub_255E27B7C(uint64_t a1)
{
  result = sub_255E27BA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27BA4()
{
  result = qword_27F7E9450;
  if (!qword_27F7E9450)
  {
    result = swift_getWitnessTable(aA_20, &type metadata for NamedSystemColor, v0, v1);
    atomic_store(result, &qword_27F7E9450);
  }

  return result;
}

unint64_t sub_255E27BF8(uint64_t a1)
{
  result = sub_255E27C20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27C20()
{
  result = qword_27F7E9458;
  if (!qword_27F7E9458)
  {
    result = swift_getWitnessTable(aI_10, &type metadata for RGBAColor, v0, v1);
    atomic_store(result, &qword_27F7E9458);
  }

  return result;
}

unint64_t sub_255E27C74(uint64_t a1)
{
  result = sub_255E27C9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27C9C()
{
  result = qword_27F7E9460;
  if (!qword_27F7E9460)
  {
    result = swift_getWitnessTable(byte_255E5FD78, &type metadata for BundleColor, v0, v1);
    atomic_store(result, &qword_27F7E9460);
  }

  return result;
}

unint64_t sub_255E27CF0(uint64_t a1)
{
  result = sub_255E27D18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E27D18()
{
  result = qword_27F7E9468;
  if (!qword_27F7E9468)
  {
    result = swift_getWitnessTable(byte_255E5FD50, &type metadata for ElementColor, v0, v1);
    atomic_store(result, &qword_27F7E9468);
  }

  return result;
}

uint64_t sub_255E27D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255E27E20(uint64_t a1)
{
  v2 = sub_255E285F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E27E5C(uint64_t a1)
{
  v2 = sub_255E285F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E27EDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  result = (*(v10 + 48))(&v16, a2, a3, v11, v10);
  if (!v5)
  {
    v15 = v16;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8040, &qword_255E53880);
    v13 = sub_255E38AE8();
    a4[3] = v13;
    v14[0] = v9;
    v14[1] = sub_255D38950(&qword_27F7E8048, &qword_27F7E8040, &qword_255E53880, MEMORY[0x277CDF4F0]);
    a4[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v14);
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255D3D6B0();
    sub_255E39CC8();
  }

  return result;
}

uint64_t sub_255E28058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570616873 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E280DC(uint64_t a1)
{
  v2 = sub_255E2859C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E28118(uint64_t a1)
{
  v2 = sub_255E2859C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E28198@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v16 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255E3AE28();
  if (!v6)
  {
    v12 = v16;
    sub_255DB059C();
    sub_255E3ABC8();
    (*(v20 + 8))(v11, v9);
    sub_255D34630(&v17, v18);
    v13 = v18[1];
    *v12 = v18[0];
    *(v12 + 16) = v13;
    *(v12 + 32) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void *sub_255E28328@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  result = (*(v10 + 48))(&v16, a2, a3, v11, v10);
  if (!v5)
  {
    v15 = v16;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80D0, &qword_255E53898);
    v13 = sub_255E38AE8();
    a4[3] = v13;
    v14[0] = v9;
    v14[1] = sub_255D38950(&qword_27F7E80D8, &qword_27F7E80D0, &qword_255E53898, MEMORY[0x277CE0470]);
    a4[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v14);
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255D3D6B0();
    sub_255E39938();
  }

  return result;
}

unint64_t sub_255E284A4(uint64_t a1)
{
  result = sub_255E284CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E284CC()
{
  result = qword_27F7E9470;
  if (!qword_27F7E9470)
  {
    result = swift_getWitnessTable(asc_255E6033C, &type metadata for ContentShapeModifier, v0, v1);
    atomic_store(result, &qword_27F7E9470);
  }

  return result;
}

unint64_t sub_255E28520(uint64_t a1)
{
  result = sub_255E28548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E28548()
{
  result = qword_27F7E9478;
  if (!qword_27F7E9478)
  {
    result = swift_getWitnessTable(byte_255E60314, &type metadata for ClipShapeModifier, v0, v1);
    atomic_store(result, &qword_27F7E9478);
  }

  return result;
}

unint64_t sub_255E2859C()
{
  result = qword_27F7E9488;
  if (!qword_27F7E9488)
  {
    result = swift_getWitnessTable(byte_255E6057C, &type metadata for ContentShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9488);
  }

  return result;
}

unint64_t sub_255E285F0()
{
  result = qword_27F7E9498;
  if (!qword_27F7E9498)
  {
    result = swift_getWitnessTable(byte_255E6052C, &type metadata for ClipShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9498);
  }

  return result;
}

unint64_t sub_255E28668()
{
  result = qword_27F7E94A0;
  if (!qword_27F7E94A0)
  {
    result = swift_getWitnessTable(asc_255E6044C, &type metadata for ContentShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94A0);
  }

  return result;
}

unint64_t sub_255E286C0()
{
  result = qword_27F7E94A8;
  if (!qword_27F7E94A8)
  {
    result = swift_getWitnessTable(aS_1, &type metadata for ClipShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94A8);
  }

  return result;
}

unint64_t sub_255E28718()
{
  result = qword_27F7E94B0;
  if (!qword_27F7E94B0)
  {
    result = swift_getWitnessTable(asc_255E60474, &type metadata for ClipShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94B0);
  }

  return result;
}

unint64_t sub_255E28770()
{
  result = qword_27F7E94B8;
  if (!qword_27F7E94B8)
  {
    result = swift_getWitnessTable(asc_255E6049C, &type metadata for ClipShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94B8);
  }

  return result;
}

unint64_t sub_255E287C8()
{
  result = qword_27F7E94C0;
  if (!qword_27F7E94C0)
  {
    result = swift_getWitnessTable(byte_255E603BC, &type metadata for ContentShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94C0);
  }

  return result;
}

unint64_t sub_255E28820()
{
  result = qword_27F7E94C8;
  if (!qword_27F7E94C8)
  {
    result = swift_getWitnessTable(byte_255E603E4, &type metadata for ContentShapeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94C8);
  }

  return result;
}

uint64_t sub_255E28888(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616E6F6974636964;
  }

  else
  {
    v3 = 7955819;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA00000000007972;
  }

  if (*a2)
  {
    v5 = 0x616E6F6974636964;
  }

  else
  {
    v5 = 7955819;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007972;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E2892C()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E289AC(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E28A18(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E28A94@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255E28AF4(uint64_t *a1@<X8>)
{
  v2 = 7955819;
  if (*v1)
  {
    v2 = 0x616E6F6974636964;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007972;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E28B30()
{
  if (*v0)
  {
    return 0x616E6F6974636964;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_255E28B68@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255E28BCC(uint64_t a1)
{
  v2 = sub_255E29554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E28C08(uint64_t a1)
{
  v2 = sub_255E29554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E28C44@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E94E0, &qword_255E60828);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E29554();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
  LOBYTE(v25) = 0;
  sub_255E0EACC(&qword_27F7E7398, &qword_27F7E7390, &qword_255E55340);
  sub_255E3ABC8();
  v22 = a2;
  v23 = v28;
  v24 = v29;
  v39 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
  v40 = 1;
  sub_255E0EACC(&qword_27F7E7420, &qword_27F7E7418, qword_255E567D0);
  sub_255E3ABC8();
  (*(v6 + 8))(v8, v5);
  v9 = *(&v35 + 1);
  v21 = v35;
  v10 = v36;
  v11 = v37;
  v38 = v37;
  v12 = v23;
  v25 = v23;
  v13 = v24;
  *&v26 = v24;
  v14 = v39;
  BYTE8(v26) = v39;
  *v27 = v35;
  *&v27[16] = v36;
  v27[24] = v37;
  v15 = v23;
  v16 = v26;
  v17 = v35;
  v18 = v22;
  *(v22 + 41) = *&v27[9];
  v18[1] = v16;
  v18[2] = v17;
  *v18 = v15;
  sub_255D5CDC8(&v25, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v21;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  return sub_255E295A8(&v28);
}

uint64_t sub_255E28F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_255E3A758();
  v7[6] = sub_255E3A748();
  v9 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2901C, v9, v8);
}

uint64_t sub_255E2901C()
{
  v13 = v0;
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = sub_255DDF580(v1, v3, v4, v5, v6);
  v8 = v0[3];
  v11 = v7;
  sub_255D808F4(v0[4], v0[5], &v12);
  sub_255D5C324(v12);
  sub_255DEF60C(v8, v11, v3, v4, v5, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_255E29128(uint64_t a1)
{
  *(v2 + 144) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  *(v2 + 152) = swift_task_alloc();
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  *(v2 + 57) = *(v1 + 41);

  return MEMORY[0x2822009F8](sub_255E291DC, 0, 0);
}

uint64_t sub_255E291DC()
{
  v1 = sub_255DDEDA0(*(v0 + 144), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v3 = v2;
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = sub_255E3A778();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_255E3A758();
  sub_255D5CDC8(v0 + 16, v0 + 80);

  v7 = sub_255E3A748();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v10;
  *(v8 + 64) = *(v0 + 48);
  *(v8 + 73) = *(v0 + 57);
  *(v8 + 96) = v5;
  *(v8 + 104) = v1;
  *(v8 + 112) = v3;
  sub_255D51B90(0, 0, v4, &unk_255E60820, v8);

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_255E29388(uint64_t a1)
{
  result = sub_255E293B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E293B0()
{
  result = qword_27F7E94D0;
  if (!qword_27F7E94D0)
  {
    result = swift_getWitnessTable(aE_16, &type metadata for DictDeleteAction, v0, v1);
    atomic_store(result, &qword_27F7E94D0);
  }

  return result;
}

unint64_t sub_255E29404(uint64_t a1)
{
  result = sub_255E2942C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2942C()
{
  result = qword_27F7E94D8;
  if (!qword_27F7E94D8)
  {
    result = swift_getWitnessTable(byte_255E607CC, &type metadata for DictDeleteAction, v0, v1);
    atomic_store(result, &qword_27F7E94D8);
  }

  return result;
}

uint64_t sub_255E29480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D50138;

  return sub_255E28F80(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

unint64_t sub_255E29554()
{
  result = qword_27F7E94E8;
  if (!qword_27F7E94E8)
  {
    result = swift_getWitnessTable(byte_255E6092C, &type metadata for DictDeleteAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94E8);
  }

  return result;
}

unint64_t sub_255E295EC()
{
  result = qword_27F7E94F0;
  if (!qword_27F7E94F0)
  {
    result = swift_getWitnessTable(aR_3, &type metadata for DictDeleteAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94F0);
  }

  return result;
}

unint64_t sub_255E29644()
{
  result = qword_27F7E94F8;
  if (!qword_27F7E94F8)
  {
    result = swift_getWitnessTable(aE_17, &type metadata for DictDeleteAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E94F8);
  }

  return result;
}

unint64_t sub_255E2969C()
{
  result = qword_27F7E9500;
  if (!qword_27F7E9500)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for DictDeleteAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9500);
  }

  return result;
}

uint64_t sub_255E29700@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_255D48A94(v12);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v13, a2, a3, v10, v11, v20);

  v14 = v21;
  v15 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_255D48A94(v16);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v17, a2, a3, v14, v15, a6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t sub_255E2982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255E298D0, 0, 0);
}

uint64_t sub_255E298D0()
{
  if (sub_255E1AAC0(v0[2]))
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v1 = sub_255E386A8();
    __swift_project_value_buffer(v1, qword_27F8152D8);
    v2 = sub_255E38688();
    v3 = sub_255E3A868();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_255D2E000, v2, v3, "If Action: condition satisfied", v4, 2u);
      MEMORY[0x259C4F9E0](v4, -1, -1);
    }

    v5 = v0[5];

    if (v5)
    {
      v6 = v0[7];
      v7 = v0[5];
      v9 = v0[2];
      v8 = v0[3];
      v10 = sub_255E3A778();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v7;
      v11[5] = v9;
      v11[6] = v8;

      v12 = &unk_255E60A38;
LABEL_14:
      sub_255D52540(0, 0, v0[7], v12, v11);
    }
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v13 = sub_255E386A8();
    __swift_project_value_buffer(v13, qword_27F8152D8);
    v14 = sub_255E38688();
    v15 = sub_255E3A868();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_255D2E000, v14, v15, "If Action: condition NOT satisfied", v16, 2u);
      MEMORY[0x259C4F9E0](v16, -1, -1);
    }

    v17 = v0[6];

    if (v17)
    {
      v18 = v0[6];
      v19 = v0[7];
      v21 = v0[2];
      v20 = v0[3];
      v22 = sub_255E3A778();
      (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v18;
      v11[5] = v21;
      v11[6] = v20;

      v12 = &unk_255E5A580;
      goto LABEL_14;
    }
  }

  v23 = v0[1];

  return v23();
}

unint64_t sub_255E29C04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E2A4C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255E29C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E2A4C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E29C5C(uint64_t a1)
{
  v2 = sub_255E2A35C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E29C98(uint64_t a1)
{
  v2 = sub_255E2A35C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E29CD4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_255D50138;

  return sub_255E2982C(a1, a2, v6, v7, v8);
}

uint64_t sub_255E29DB0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255E29ED8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_255E29DE0(uint64_t a1)
{
  result = sub_255E29E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E29E08()
{
  result = qword_27F7E9508;
  if (!qword_27F7E9508)
  {
    result = swift_getWitnessTable(aI_11, &type metadata for IfAction, v0, v1);
    atomic_store(result, &qword_27F7E9508);
  }

  return result;
}

unint64_t sub_255E29E5C(uint64_t a1)
{
  result = sub_255E29E84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E29E84()
{
  result = qword_27F7E9510;
  if (!qword_27F7E9510)
  {
    result = swift_getWitnessTable(byte_255E609E8, &type metadata for IfAction, v0, v1);
    atomic_store(result, &qword_27F7E9510);
  }

  return result;
}

uint64_t sub_255E29ED8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9518, &qword_255E60A40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_255E2A35C();
  sub_255E3AE28();
  if (!v1)
  {
    type metadata accessor for Condition();
    LOBYTE(v29[0]) = 0;
    sub_255DCEF44();
    sub_255E3ABC8();
    v7 = *&v30[0];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
    LOBYTE(v30[0]) = 1;
    v9 = sub_255D7B658();
    sub_255E3ABA8();
    v28 = v9;
    if (v32)
    {
      v27 = v8;
      v10 = *(v32 + 16);
      if (v10)
      {
        v24 = v7;
        v25 = v4;
        v26 = v3;
        v31 = MEMORY[0x277D84F90];
        v23 = v32;
        sub_255DE5EF0(0, v10, 0);
        v11 = v31;
        v12 = v23 + 32;
        do
        {
          sub_255D7B730(v12, v29);
          sub_255D34630(v29, v30);
          v31 = v11;
          v14 = *(v11 + 16);
          v13 = *(v11 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_255DE5EF0((v13 > 1), v14 + 1, 1);
            v11 = v31;
          }

          *(v11 + 16) = v14 + 1;
          sub_255D34630(v30, v11 + 40 * v14 + 32);
          v12 += 40;
          --v10;
        }

        while (v10);

        v4 = v25;
        v3 = v26;
        v7 = v24;
      }

      else
      {
      }
    }

    LOBYTE(v30[0]) = 2;
    sub_255E3ABA8();
    if (v32)
    {
      v16 = *(v32 + 16);
      if (v16)
      {
        v24 = v7;
        v25 = v4;
        v26 = v3;
        v31 = MEMORY[0x277D84F90];
        v17 = v32;
        sub_255DE5EF0(0, v16, 0);
        v18 = v31;
        v28 = v17;
        v19 = v17 + 32;
        do
        {
          sub_255D7B730(v19, v29);
          sub_255D34630(v29, v30);
          v31 = v18;
          v21 = *(v18 + 16);
          v20 = *(v18 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_255DE5EF0((v20 > 1), v21 + 1, 1);
            v18 = v31;
          }

          *(v18 + 16) = v21 + 1;
          sub_255D34630(v30, v18 + 40 * v21 + 32);
          v19 += 40;
          --v16;
        }

        while (v16);
        (*(v25 + 8))(v6, v26);

        v7 = v24;
      }

      else
      {

        (*(v4 + 8))(v6, v3);
      }
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_255E2A35C()
{
  result = qword_27F7E9520;
  if (!qword_27F7E9520)
  {
    result = swift_getWitnessTable(byte_255E60B44, &type metadata for IfAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9520);
  }

  return result;
}

unint64_t sub_255E2A3C4()
{
  result = qword_27F7E9528;
  if (!qword_27F7E9528)
  {
    result = swift_getWitnessTable(byte_255E60B1C, &type metadata for IfAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9528);
  }

  return result;
}

unint64_t sub_255E2A41C()
{
  result = qword_27F7E9530;
  if (!qword_27F7E9530)
  {
    result = swift_getWitnessTable(aM_21, &type metadata for IfAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9530);
  }

  return result;
}

unint64_t sub_255E2A474()
{
  result = qword_27F7E9538;
  if (!qword_27F7E9538)
  {
    result = swift_getWitnessTable(asc_255E60A7C, &type metadata for IfAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9538);
  }

  return result;
}

unint64_t sub_255E2A4C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255E2A544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255E2A58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_255E2A5F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v4 = 0x7961727261;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7465537865646E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x74657366666FLL;
  if (*a2 != 1)
  {
    v8 = 0x7961727261;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7465537865646E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E2A6EC()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2A788(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E2A810(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E2A8A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E2F270(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E2A8D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v5 = 0x7961727261;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465537865646E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255E2A930()
{
  v1 = 0x74657366666FLL;
  if (*v0 != 1)
  {
    v1 = 0x7961727261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465537865646E69;
  }
}

unint64_t sub_255E2A984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E2F270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E2A9AC(uint64_t a1)
{
  v2 = sub_255E2ED8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2A9E8(uint64_t a1)
{
  v2 = sub_255E2ED8C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E2AA24(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E95C8, &qword_255E61978);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2ED8C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E95B8, &qword_255E61970);
    LOBYTE(v30) = 0;
    sub_255D38950(&qword_27F7E95C0, &qword_27F7E95B8, &qword_255E61970, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABA8();
    v9 = v37;
    if (v37 == 255)
    {
      v10 = 0xF000000000000007;
      *(&v29 + 1) = 0xE800000000000000;
      *&v29 = 0x7465537865646E69;
      v9 = 1;
    }

    else
    {
      v10 = v36;
      v29 = v35;
    }

    v28 = v9;
    v49 = v9 & 1;
    LOBYTE(v30) = 1;
    sub_255D8B704();
    sub_255E3ABA8();
    v26 = v10;
    if (v37 < 0xFEu)
    {
      v27 = v37;
      v24 = v35;
      v11 = v36;
      v12 = v48;
    }

    else
    {
      v27 = 1;
      v25 = 0xF000000000000007;
      *(&v24 + 1) = 0xE600000000000000;
      v11 = 0x74657366666FLL;
      v12 = &v46 + 8;
    }

    *(v12 - 32) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v50 = 2;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v22 = *(&v46 + 1);
    v23 = v46;
    v21 = v47;
    v13 = v48[0];
    v48[8] = v48[0];
    v30 = v29;
    v14 = v26;
    *&v31 = v26;
    v28 = v49;
    BYTE8(v31) = v49;
    v15 = v24;
    v32 = v24;
    v16 = *(&v24 + 1);
    v17 = v25;
    *&v33 = v25;
    v18 = v27;
    BYTE8(v33) = v27;
    *v34 = v46;
    *&v34[16] = v47;
    v34[24] = v48[0];
    v19 = v33;
    a2[2] = v24;
    a2[3] = v19;
    a2[4] = *v34;
    *(a2 + 73) = *&v34[9];
    v20 = v31;
    *a2 = v30;
    a2[1] = v20;
    sub_255D5CB60(&v30, &v35);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v35 = v29;
    v36 = v14;
    v37 = v28;
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v41 = v18;
    v42 = v23;
    v43 = v22;
    v44 = v21;
    v45 = v13;
    sub_255E2EDE0(&v35);
  }
}

uint64_t sub_255E2AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  sub_255E3A758();
  v7[7] = sub_255E3A748();
  v9 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2B02C, v9, v8);
}

uint64_t sub_255E2B02C()
{
  v20 = v0;
  v1 = v0[3];
  v2 = v0[4];

  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  sub_255D5C258(v4, v3, v5, v6);
  sub_255DDEBF8(v2, v4, v3, v5, v6, &v15);
  if (v15 >> 61 == 4)
  {
    v7 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v0[2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D38950(&qword_27F7E7A28, &qword_27F7E6160, &unk_255E4DBA0, MEMORY[0x277D83960]);
    sub_255E3A4A8();
    v15 = v4;
    v16 = v3;
    v17 = v5;
    v18 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v0[2];
    v19 = v8 | 0x8000000000000000;
    RemoteStateStore.set(reference:value:)(&v15, &v19);

    sub_255D4DE84(v15, v16, v17, v18);
  }

  else
  {
    sub_255D4DE84(v4, v3, v5, v6);

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v9 = sub_255E386A8();
    __swift_project_value_buffer(v9, qword_27F8152D8);
    v10 = sub_255E38688();
    v11 = sub_255E3A848();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_255D2E000, v10, v11, "Unable to decode array", v12, 2u);
      MEMORY[0x259C4F9E0](v12, -1, -1);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_255E2B2F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255D50138;

  return sub_255E2D990(a1);
}

unint64_t sub_255E2B3B4(uint64_t a1)
{
  result = sub_255E2B3DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2B3DC()
{
  result = qword_27F7E9540;
  if (!qword_27F7E9540)
  {
    result = swift_getWitnessTable(asc_255E6172C, &type metadata for MoveAction, v0, v1);
    atomic_store(result, &qword_27F7E9540);
  }

  return result;
}

uint64_t sub_255E2B430(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7961727261;
  }

  else
  {
    v3 = 0x7465537865646E69;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7961727261;
  }

  else
  {
    v5 = 0x7465537865646E69;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E2B4D4()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2B554(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E2B5C0(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E2B648(uint64_t *a1@<X8>)
{
  v2 = 0x7465537865646E69;
  if (*v1)
  {
    v2 = 0x7961727261;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E2B684()
{
  if (*v0)
  {
    return 0x7961727261;
  }

  else
  {
    return 0x7465537865646E69;
  }
}

uint64_t sub_255E2B6C8(uint64_t a1)
{
  v2 = sub_255E2ED08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2B704(uint64_t a1)
{
  v2 = sub_255E2ED08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2B740@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E95A8, &qword_255E61968);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2ED08();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E95B8, &qword_255E61970);
  LOBYTE(v26) = 0;
  sub_255D38950(&qword_27F7E95C0, &qword_27F7E95B8, &qword_255E61970, protocol conformance descriptor for Referenceable<A>);
  sub_255E3ABA8();
  v10 = v31;
  v23 = a2;
  if (v31 == 255)
  {
    v25 = 0xF000000000000007;
    *(&v24 + 1) = 0xE800000000000000;
    *&v24 = 0x7465537865646E69;
    v10 = 1;
  }

  else
  {
    v25 = v30;
    v24 = v29;
  }

  v40 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
  v41 = 1;
  sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
  sub_255E3ABC8();
  (*(v6 + 8))(v8, v5);
  v11 = *(&v36 + 1);
  v22 = v36;
  v12 = v37;
  v13 = v38;
  v39 = v38;
  v14 = v24;
  v26 = v24;
  v15 = v25;
  *&v27 = v25;
  v16 = v40;
  BYTE8(v27) = v40;
  *v28 = v36;
  *&v28[16] = v37;
  v28[24] = v38;
  v17 = v24;
  v18 = v27;
  v19 = v36;
  v20 = v23;
  *(v23 + 41) = *&v28[9];
  v20[1] = v18;
  v20[2] = v19;
  *v20 = v17;
  sub_255D5CC94(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v22;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  return sub_255E2ED5C(&v29);
}

uint64_t sub_255E2BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_255E3A758();
  v6[6] = sub_255E3A748();
  v8 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2BB84, v8, v7);
}

uint64_t sub_255E2BB84()
{
  v20 = v0;
  v1 = v0[3];
  v2 = v0[4];

  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  sub_255D5C258(v4, v3, v5, v6);
  sub_255DDEBF8(v2, v4, v3, v5, v6, &v15);
  if (v15 >> 61 == 4)
  {
    v7 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v0[2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D38950(&qword_27F7E7A28, &qword_27F7E6160, &unk_255E4DBA0, MEMORY[0x277D83960]);
    sub_255D38950(&qword_27F7E7A38, &qword_27F7E6160, &unk_255E4DBA0, MEMORY[0x277D83990]);
    sub_255E3A808();
    v15 = v4;
    v16 = v3;
    v17 = v5;
    v18 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v0[2];
    v19 = v8 | 0x8000000000000000;
    RemoteStateStore.set(reference:value:)(&v15, &v19);

    sub_255D4DE84(v15, v16, v17, v18);
  }

  else
  {
    sub_255D4DE84(v4, v3, v5, v6);

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v9 = sub_255E386A8();
    __swift_project_value_buffer(v9, qword_27F8152D8);
    v10 = sub_255E38688();
    v11 = sub_255E3A848();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_255D2E000, v10, v11, "Unable to decode array", v12, 2u);
      MEMORY[0x259C4F9E0](v12, -1, -1);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_255E2BE70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255D5D0A4;

  return sub_255E2E0A8(a1);
}

unint64_t sub_255E2BF34(uint64_t a1)
{
  result = sub_255E2BF5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2BF5C()
{
  result = qword_27F7E9548;
  if (!qword_27F7E9548)
  {
    result = swift_getWitnessTable(byte_255E61770, &type metadata for DeleteAction, v0, v1);
    atomic_store(result, &qword_27F7E9548);
  }

  return result;
}

uint64_t sub_255E2BFB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D656C4577656ELL;
  }

  else
  {
    v3 = 0x7961727261;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA0000000000746ELL;
  }

  if (*a2)
  {
    v5 = 0x656D656C4577656ELL;
  }

  else
  {
    v5 = 0x7961727261;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000746ELL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E2C058()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2C0DC(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E2C14C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255E2C1D8(uint64_t *a1@<X8>)
{
  v2 = 0x7961727261;
  if (*v1)
  {
    v2 = 0x656D656C4577656ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255E2C218()
{
  if (*v0)
  {
    return 0x656D656C4577656ELL;
  }

  else
  {
    return 0x7961727261;
  }
}

uint64_t sub_255E2C260(uint64_t a1)
{
  v2 = sub_255E2EC84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2C29C(uint64_t a1)
{
  v2 = sub_255E2EC84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2C2D8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9598, &qword_255E61960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2EC84();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
  LOBYTE(v25) = 0;
  sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
  sub_255E3ABC8();
  v22 = v28;
  v23 = v29;
  v39 = v30;
  v40 = 1;
  sub_255E3ABC8();
  (*(v6 + 8))(v8, v5);
  v9 = *(&v35 + 1);
  v21 = v35;
  v10 = v36;
  v11 = v37;
  v38 = v37;
  v12 = v22;
  v25 = v22;
  v13 = v23;
  *&v26 = v23;
  v14 = v39;
  BYTE8(v26) = v39;
  *v27 = v35;
  *&v27[16] = v36;
  v27[24] = v37;
  v15 = v22;
  v16 = v26;
  v17 = v35;
  v18 = v24;
  *(v24 + 41) = *&v27[9];
  v18[1] = v16;
  v18[2] = v17;
  *v18 = v15;
  sub_255E2E800(&v25, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v21;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  return sub_255E2ECD8(&v28);
}

uint64_t sub_255E2C5F8(unint64_t a1)
{
  v3 = v2;
  v26 = *(v1 + 8);
  v27 = *v1;
  v25 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v28 = *(v1 + 56);
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A868();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v5;
    v13 = a1;
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_255D2E000, v10, v11, "performing AppendAction", v14, 2u);
    v15 = v14;
    a1 = v13;
    v5 = v12;
    v3 = v2;
    MEMORY[0x259C4F9E0](v15, -1, -1);
  }

  result = sub_255DDEBF8(a1, v6, v7, v8, v28, &v29);
  if (!v3)
  {
    v17 = v29;
    sub_255DDEBF8(a1, v27, v26, v25, v5, &v29);
    if (v29 >> 61 == 4)
    {
      v18 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_255DE55B4(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_255DE55B4((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      *&v18[8 * v20 + 32] = v17;
      v29 = v27;
      v30 = v26;
      v31 = v25;
      v32 = v5;
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      v33 = v21 | 0x8000000000000000;
      sub_255D5C258(v27, v26, v25, v5);
      RemoteStateStore.set(reference:value:)(&v29, &v33);

      return sub_255D4DE84(v29, v30, v31, v32);
    }

    else
    {

      v22 = sub_255E38688();
      v23 = sub_255E3A848();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_255D2E000, v22, v23, "Unable to decode array", v24, 2u);
        MEMORY[0x259C4F9E0](v24, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_255E2C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_255E3A758();
  v5[4] = sub_255E3A748();
  v7 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2C9F8, v7, v6);
}

uint64_t sub_255E2C9F8()
{
  v1 = *(v0 + 24);

  sub_255E2C5F8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255E2CA9C(uint64_t a1)
{
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v4 = swift_task_alloc();
  v5 = v1[1];
  v14 = *v1;
  v15 = v5;
  v16[0] = v1[2];
  *(v16 + 9) = *(v1 + 41);
  v6 = sub_255E3A778();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_255E3A758();
  sub_255E2E800(&v14, &v13);

  v7 = sub_255E3A748();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = v15;
  *(v8 + 32) = v14;
  *(v8 + 48) = v10;
  *(v8 + 64) = v16[0];
  *(v8 + 73) = *(v16 + 9);
  *(v8 + 96) = a1;
  sub_255D51B90(0, 0, v4, &unk_255E61930, v8);

  v11 = *(v2 + 8);

  return v11();
}

unint64_t sub_255E2CC5C(uint64_t a1)
{
  result = sub_255E2CC84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2CC84()
{
  result = qword_27F7E9550;
  if (!qword_27F7E9550)
  {
    result = swift_getWitnessTable(aU_17, &type metadata for AppendAction, v0, v1);
    atomic_store(result, &qword_27F7E9550);
  }

  return result;
}

uint64_t sub_255E2CCD8()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E2CD3C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E2CD88@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255E2CE08@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255E2CE60(uint64_t a1)
{
  v2 = sub_255E2EC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2CE9C(uint64_t a1)
{
  v2 = sub_255E2EC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E2CED8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9588, &unk_255E61950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E2EC30();
  sub_255E3AE28();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_255E2D098(unint64_t a1)
{
  v3 = v2;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v9 = sub_255E386A8();
  __swift_project_value_buffer(v9, qword_27F8152D8);
  v10 = sub_255E38688();
  v11 = sub_255E3A868();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v8;
    v13 = v7;
    v14 = v6;
    v15 = v5;
    v16 = a1;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_255D2E000, v10, v11, "performing RemoveLastAction", v17, 2u);
    v18 = v17;
    a1 = v16;
    v5 = v15;
    v6 = v14;
    v7 = v13;
    v8 = v12;
    v3 = v2;
    MEMORY[0x259C4F9E0](v18, -1, -1);
  }

  sub_255DDEBF8(a1, v5, v6, v7, v8, &v28);
  if (!v3)
  {
    v19 = v28;
    if (v28 >> 61 != 4)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
      sub_255D7B470();
      swift_allocError();
      *v21 = v19;
      v21[1] = v20;
      swift_willThrow();
      return;
    }

    sub_255DDEBF8(a1, v5, v6, v7, v8, &v28);
    if (v28 >> 61 == 4)
    {
      v22 = *((v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      if (*(v22 + 2))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_255DF5ECC(v22);
        }

        v23 = *(v22 + 2);
        if (v23)
        {
          *(v22 + 2) = v23 - 1;

          v28 = v5;
          v29 = v6;
          v30 = v7;
          v31 = v8;
          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          v32 = v24 | 0x8000000000000000;
          sub_255D5C258(v5, v6, v7, v8);
          RemoteStateStore.set(reference:value:)(&v28, &v32);

          sub_255D4DE84(v28, v29, v30, v31);
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
    }

    v25 = sub_255E38688();
    v26 = sub_255E3A848();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_255D2E000, v25, v26, "Unable to decode array, or array length is 0", v27, 2u);
      MEMORY[0x259C4F9E0](v27, -1, -1);
    }
  }
}

uint64_t sub_255E2D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  sub_255E3A758();
  *(v8 + 48) = sub_255E3A748();
  v10 = sub_255E3A738();

  return MEMORY[0x2822009F8](sub_255E2D4B8, v10, v9);
}

uint64_t sub_255E2D4B8()
{
  v1 = *(v0 + 40);

  sub_255E2D098(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255E2D564(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v4 = swift_task_alloc();
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = sub_255E3A778();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_255E3A758();
  sub_255D5C258(v5, v6, v7, v8);

  v10 = sub_255E3A748();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  *(v11 + 64) = a1;
  sub_255D51B90(0, 0, v4, &unk_255E61948, v11);

  v13 = *(v2 + 8);

  return v13();
}

unint64_t sub_255E2D724(uint64_t a1)
{
  result = sub_255E2D74C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D74C()
{
  result = qword_27F7E9558;
  if (!qword_27F7E9558)
  {
    result = swift_getWitnessTable(byte_255E617F8, &type metadata for RemoveLastAction, v0, v1);
    atomic_store(result, &qword_27F7E9558);
  }

  return result;
}

unint64_t sub_255E2D7A0(uint64_t a1)
{
  result = sub_255E2D7C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D7C8()
{
  result = qword_27F7E9560;
  if (!qword_27F7E9560)
  {
    result = swift_getWitnessTable(aQ_11, &type metadata for RemoveLastAction, v0, v1);
    atomic_store(result, &qword_27F7E9560);
  }

  return result;
}

unint64_t sub_255E2D81C(uint64_t a1)
{
  result = sub_255E2D844();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D844()
{
  result = qword_27F7E9568;
  if (!qword_27F7E9568)
  {
    result = swift_getWitnessTable(byte_255E617DC, &type metadata for AppendAction, v0, v1);
    atomic_store(result, &qword_27F7E9568);
  }

  return result;
}

unint64_t sub_255E2D898(uint64_t a1)
{
  result = sub_255E2D8C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D8C0()
{
  result = qword_27F7E9570;
  if (!qword_27F7E9570)
  {
    result = swift_getWitnessTable(byte_255E61798, &type metadata for DeleteAction, v0, v1);
    atomic_store(result, &qword_27F7E9570);
  }

  return result;
}

unint64_t sub_255E2D914(uint64_t a1)
{
  result = sub_255E2D93C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E2D93C()
{
  result = qword_27F7E9578;
  if (!qword_27F7E9578)
  {
    result = swift_getWitnessTable(byte_255E61754, &type metadata for MoveAction, v0, v1);
    atomic_store(result, &qword_27F7E9578);
  }

  return result;
}

uint64_t sub_255E2D990(uint64_t a1)
{
  *(v2 + 288) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  *(v2 + 296) = swift_task_alloc();
  v3 = sub_255E385F8();
  *(v2 + 304) = v3;
  v4 = *(v3 - 8);
  *(v2 + 312) = v4;
  *(v2 + 320) = *(v4 + 64);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  *(v2 + 80) = v1[4];
  *(v2 + 89) = *(v1 + 73);
  v6 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;

  return MEMORY[0x2822009F8](sub_255E2DAC8, 0, 0);
}

uint64_t sub_255E2DAC8()
{
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v1 = sub_255E386A8();
  __swift_project_value_buffer(v1, qword_27F8152D8);
  v2 = sub_255E38688();
  v3 = sub_255E3A868();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255D2E000, v2, v3, "performing MoveAction", v4, 2u);
    MEMORY[0x259C4F9E0](v4, -1, -1);
  }

  v5 = *(v0 + 288);

  v6 = sub_255DDF8C4(v5, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255E2DEC0();
  sub_255E3A918();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      *(v0 + 280) = v9;
      sub_255E3A8F8();
      --v7;
    }

    while (v7);
  }

  v10 = *(v0 + 344);
  v11 = *(v0 + 328);
  v31 = *(v0 + 320);
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 288);
  v14 = *(v0 + 296);
  v29 = v14;
  v32 = *(v13 + 32);
  v32(v10);
  *(v0 + 208) = *(v0 + 48);
  *(v0 + 217) = *(v0 + 57);
  *v33 = *(v0 + 48);
  *&v33[9] = *(v0 + 57);
  sub_255E2DF18(v0 + 208, v0 + 240);
  v16 = sub_255D8F9E4(v15);
  v18 = v17;
  sub_255D4CB98(*v33, *&v33[8], *&v33[16], v33[24]);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v16;
  }

  v30 = v19;
  v20 = sub_255E3A778();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  (*(v13 + 16))(v11, v10, v12);
  sub_255E3A758();
  sub_255D5CB60(v0 + 16, v0 + 112);

  v21 = sub_255E3A748();
  v22 = (*(v13 + 80) + 136) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  v25 = *(v0 + 64);
  *(v23 + 64) = *(v0 + 48);
  *(v23 + 80) = v25;
  *(v23 + 96) = *(v0 + 80);
  *(v23 + 105) = *(v0 + 89);
  v26 = *(v0 + 32);
  *(v23 + 32) = *(v0 + 16);
  *(v23 + 48) = v26;
  *(v23 + 128) = v15;
  (v32)(v23 + v22, v11, v12);
  *(v23 + ((v31 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  sub_255D51B90(0, 0, v29, &unk_255E618F8, v23);

  (*(v13 + 8))(v10, v12);

  v27 = *(v0 + 8);

  return v27();
}

unint64_t sub_255E2DEC0()
{
  result = qword_27F7E9580;
  if (!qword_27F7E9580)
  {
    v3 = sub_255E385F8();
    result = swift_getWitnessTable(MEMORY[0x277CC9A58], v3, v0, v1);
    atomic_store(result, &qword_27F7E9580);
  }

  return result;
}

uint64_t sub_255E2DF74(uint64_t a1)
{
  v4 = *(sub_255E385F8() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[16];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_255D50138;

  return sub_255E2AF90(a1, v6, v7, (v1 + 4), v8, v1 + v5, v9);
}

uint64_t sub_255E2E0A8(uint64_t a1)
{
  *(v2 + 160) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  *(v2 + 168) = swift_task_alloc();
  v3 = sub_255E385F8();
  *(v2 + 176) = v3;
  v4 = *(v3 - 8);
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 + 64);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v5 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  *(v2 + 48) = v1[2];
  *(v2 + 57) = *(v1 + 41);

  return MEMORY[0x2822009F8](sub_255E2E1D8, 0, 0);
}

uint64_t sub_255E2E1D8()
{
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v1 = sub_255E386A8();
  __swift_project_value_buffer(v1, qword_27F8152D8);
  v2 = sub_255E38688();
  v3 = sub_255E3A868();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255D2E000, v2, v3, "performing DeleteAction", v4, 2u);
    MEMORY[0x259C4F9E0](v4, -1, -1);
  }

  v5 = *(v0 + 160);

  v6 = sub_255DDF8C4(v5, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255E2DEC0();
  sub_255E3A918();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      *(v0 + 152) = v9;
      sub_255E3A8F8();
      --v7;
    }

    while (v7);
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 200);
  v25 = v11;
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v26 = v14;
  v16 = *(v13 + 32);
  v16(v10);
  v17 = sub_255E3A778();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  (*(v13 + 16))(v11, v10, v12);
  sub_255E3A758();
  sub_255D5CC94(v0 + 16, v0 + 80);

  v18 = sub_255E3A748();
  v19 = (*(v13 + 80) + 104) & ~*(v13 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  v22 = *(v0 + 32);
  *(v20 + 32) = *(v0 + 16);
  *(v20 + 48) = v22;
  *(v20 + 64) = *(v0 + 48);
  *(v20 + 73) = *(v0 + 57);
  *(v20 + 96) = v15;
  (v16)(v20 + v19, v25, v12);
  sub_255D51B90(0, 0, v26, &unk_255E61918, v20);

  (*(v13 + 8))(v10, v12);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_255E2E550(uint64_t a1)
{
  v4 = *(sub_255E385F8() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255D5D0A4;

  return sub_255E2BAE8(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t sub_255E2E64C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = v1[1];
  v16 = *v1;
  v17 = v6;
  v18[0] = v1[2];
  *(v18 + 9) = *(v1 + 41);
  if ([objc_opt_self() isMainThread])
  {
    v7 = v1[1];
    v14[0] = *v1;
    v14[1] = v7;
    v15[0] = v1[2];
    *(v15 + 9) = *(v1 + 41);
    return sub_255E2C5F8(a1);
  }

  else
  {
    v9 = sub_255E3A778();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    sub_255E3A758();
    sub_255E2E800(&v16, v14);

    v10 = sub_255E3A748();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    v13 = v17;
    *(v11 + 32) = v16;
    *(v11 + 48) = v13;
    *(v11 + 64) = v18[0];
    *(v11 + 73) = *(v18 + 9);
    *(v11 + 96) = a1;
    sub_255D51B90(0, 0, v5, &unk_255E61928, v11);
  }
}

uint64_t sub_255E2E838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255D5D0A4;

  return sub_255E2C960(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_39Tm_1()
{
  swift_unknownObjectRelease();
  sub_255D4DE84(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D4DE84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_255E2E958(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  if ([objc_opt_self() isMainThread])
  {
    v14[0] = v7;
    v14[1] = v6;
    v14[2] = v8;
    v15 = v9;
    sub_255E2D098(a1);
  }

  else
  {
    v10 = sub_255E3A778();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_255E3A758();
    sub_255D5C258(v7, v6, v8, v9);

    v11 = sub_255E3A748();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v7;
    *(v12 + 40) = v6;
    *(v12 + 48) = v8;
    *(v12 + 56) = v9;
    *(v12 + 64) = a1;
    sub_255D51B90(0, 0, v5, &unk_255E61940, v12);
  }
}

uint64_t sub_255E2EB00(uint64_t a1)
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
  v11[1] = sub_255D5D0A4;

  return sub_255E2D418(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();
  sub_255D4DE84(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_255E2EC30()
{
  result = qword_27F7E9590;
  if (!qword_27F7E9590)
  {
    result = swift_getWitnessTable(byte_255E61E3C, &type metadata for RemoveLastAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9590);
  }

  return result;
}

unint64_t sub_255E2EC84()
{
  result = qword_27F7E95A0;
  if (!qword_27F7E95A0)
  {
    result = swift_getWitnessTable(asc_255E61DEC, &type metadata for AppendAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E95A0);
  }

  return result;
}

unint64_t sub_255E2ED08()
{
  result = qword_27F7E95B0;
  if (!qword_27F7E95B0)
  {
    result = swift_getWitnessTable(byte_255E61D9C, &type metadata for DeleteAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E95B0);
  }

  return result;
}

unint64_t sub_255E2ED8C()
{
  result = qword_27F7E95D0;
  if (!qword_27F7E95D0)
  {
    result = swift_getWitnessTable(asc_255E61D4C, &type metadata for MoveAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E95D0);
  }

  return result;
}

unint64_t sub_255E2EE54()
{
  result = qword_27F7E95D8;
  if (!qword_27F7E95D8)
  {
    result = swift_getWitnessTable(aU_18, &type metadata for RemoveLastAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E95D8);
  }

  return result;
}

unint64_t sub_255E2EEAC()
{
  result = qword_27F7E95E0;
  if (!qword_27F7E95E0)
  {
    result = swift_getWitnessTable(byte_255E61B44, &type metadata for AppendAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E95E0);
  }

  return result;
}

unint64_t sub_255E2EF04()
{
  result = qword_27F7E95E8;
  if (!qword_27F7E95E8)
  {
    result = swift_getWitnessTable(byte_255E61C34, &type metadata for DeleteAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E95E8);
  }

  return result;
}

unint64_t sub_255E2EF5C()
{
  result = qword_27F7E95F0;
  if (!qword_27F7E95F0)
  {
    result = swift_getWitnessTable(byte_255E61D24, &type metadata for MoveAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E95F0);
  }

  return result;
}

unint64_t sub_255E2EFB4()
{
  result = qword_27F7E95F8;
  if (!qword_27F7E95F8)
  {
    result = swift_getWitnessTable(aE_18, &type metadata for MoveAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E95F8);
  }

  return result;
}

unint64_t sub_255E2F00C()
{
  result = qword_27F7E9600;
  if (!qword_27F7E9600)
  {
    result = swift_getWitnessTable(aU_19, &type metadata for MoveAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9600);
  }

  return result;
}

unint64_t sub_255E2F064()
{
  result = qword_27F7E9608;
  if (!qword_27F7E9608)
  {
    result = swift_getWitnessTable(a5_12, &type metadata for DeleteAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9608);
  }

  return result;
}

unint64_t sub_255E2F0BC()
{
  result = qword_27F7E9610;
  if (!qword_27F7E9610)
  {
    result = swift_getWitnessTable(aE_19, &type metadata for DeleteAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9610);
  }

  return result;
}

unint64_t sub_255E2F114()
{
  result = qword_27F7E9618;
  if (!qword_27F7E9618)
  {
    result = swift_getWitnessTable(asc_255E61A7C, &type metadata for AppendAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9618);
  }

  return result;
}

unint64_t sub_255E2F16C()
{
  result = qword_27F7E9620;
  if (!qword_27F7E9620)
  {
    result = swift_getWitnessTable(a5_13, &type metadata for AppendAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9620);
  }

  return result;
}

unint64_t sub_255E2F1C4()
{
  result = qword_27F7E9628;
  if (!qword_27F7E9628)
  {
    result = swift_getWitnessTable(byte_255E6198C, &type metadata for RemoveLastAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9628);
  }

  return result;
}

unint64_t sub_255E2F21C()
{
  result = qword_27F7E9630;
  if (!qword_27F7E9630)
  {
    result = swift_getWitnessTable(asc_255E619B4, &type metadata for RemoveLastAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9630);
  }

  return result;
}

unint64_t sub_255E2F270(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255E2F2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_255E2F32C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_255E2F3AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 8))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_255E2F404@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_255DBFA2C(a2, *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
  if (v4)
  {

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    v42 = v11;
    v43 = v10;
    v54 = v9;
    v13 = a1[3];
    v40 = a1[4];
    v41 = __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    v44 = *v5;
    v45 = v14;
    v46 = v15;
    LOBYTE(v47) = v16;
    sub_255D3E5A8(v44, v14, v15, v16);
    v34 = a3;
    v17 = StringResolvable.resolved(with:)(a2);
    v19 = v18;
    v39 = 0;
    v20 = sub_255D38060(v44, v45, v46, v47);
    v35 = v19;
    v38 = &v33;
    v52 = v17;
    v53 = v19;
    v21 = MEMORY[0x28223BE20](v20);
    v37 = v32;
    v32[2] = v5;
    MEMORY[0x28223BE20](v21);
    v36 = v31;
    v31[2] = v5;
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
    v24 = sub_255D6EEE8();
    v25 = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
    v26 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
    v44 = v13;
    v45 = MEMORY[0x277D837D0];
    v46 = v22;
    v47 = v23;
    v27 = v13;
    v28 = v40;
    v48 = v40;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v30 = v34;
    *(v34 + 24) = OpaqueTypeMetadata2;
    v44 = v27;
    v45 = MEMORY[0x277D837D0];
    v46 = v22;
    v47 = v23;
    v48 = v28;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    v30[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_255E39BA8();
  }
}

uint64_t sub_255E2F74C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (*(a1 + 64))
  {
    v1 = *(a1 + 64);
  }

  v6 = v1;
  KeyPath = swift_getKeyPath();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v4 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v6, KeyPath, sub_255D5D978, 0, v3, MEMORY[0x277CE11C8], v4, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255E2F848@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D4FB3C(a1 + 72, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    result = sub_255D395E4(v7, &qword_27F7E6558, &qword_255E3DD80);
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255E2F8F8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E2F9C0(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E2FA74(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E2FB38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E3042C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E2FB68(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0x736E6F69746361;
  if (*v1 != 2)
  {
    v4 = 0x6567617373656DLL;
  }

  if (*v1)
  {
    v3 = 0x6E65736572507369;
    v2 = 0xEB00000000646574;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_255E2FBEC()
{
  v1 = 0x656C746974;
  v2 = 0x736E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6E65736572507369;
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

unint64_t sub_255E2FC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E3042C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E2FC94(uint64_t a1)
{
  v2 = sub_255E30258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E2FCD0(uint64_t a1)
{
  v2 = sub_255E30258();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E2FD0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9640, &qword_255E62228);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E30258();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v20 = v5;
    v8 = v21;
    v45 = 0;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v19[6] = *(&v22 + 1);
    v19[7] = v22;
    v32 = v22;
    v19[5] = v23;
    v33 = v23;
    v44 = BYTE8(v23);
    v34 = BYTE8(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    v45 = 1;
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    v19[3] = v23;
    v19[4] = v22;
    v35 = v22;
    v19[2] = *(&v22 + 1);
    v36 = v23;
    v37 = BYTE8(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v45 = 2;
    sub_255D5F038();
    sub_255E3ABA8();
    v9 = v7;
    v10 = a1;
    v19[0] = v9;
    if (v22)
    {
      v11 = sub_255D48968(v22);
    }

    else
    {
      v11 = 0;
    }

    v19[1] = v11;
    v38 = v11;
    v45 = 3;
    sub_255D447E8();
    sub_255E3ABA8();
    if (*(&v22 + 1))
    {
      v12 = sub_255D44794();
      v13 = swift_allocObject();
      v14 = v29;
      *(v13 + 112) = v28;
      *(v13 + 128) = v14;
      *(v13 + 144) = v30;
      *(v13 + 160) = v31;
      v15 = v25;
      *(v13 + 48) = v24;
      *(v13 + 64) = v15;
      v16 = v27;
      *(v13 + 80) = v26;
      *(v13 + 96) = v16;
      v17 = v23;
      *(v13 + 16) = v22;
      *(v13 + 32) = v17;
      (*(v20 + 8))(v19[0], v4);
      v18 = &type metadata for ViewContent;
    }

    else
    {
      (*(v20 + 8))(v19[0], v4);
      sub_255D395E4(&v22, &qword_27F7E6C20, &qword_255E58D80);
      v18 = 0;
      v12 = 0;
      v13 = 0;
    }

    v39 = v13;
    v40 = 0;
    v41 = 0;
    v42 = v18;
    v43 = v12;
    sub_255E302AC(&v32, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    sub_255E302E4(&v32);
  }
}

unint64_t sub_255E301DC(uint64_t a1)
{
  result = sub_255E30204();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E30204()
{
  result = qword_27F7E9638;
  if (!qword_27F7E9638)
  {
    result = swift_getWitnessTable(aQ_12, &type metadata for AlertModifier, v0, v1);
    atomic_store(result, &qword_27F7E9638);
  }

  return result;
}

unint64_t sub_255E30258()
{
  result = qword_27F7E9648;
  if (!qword_27F7E9648)
  {
    result = swift_getWitnessTable(byte_255E6232C, &type metadata for AlertModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9648);
  }

  return result;
}

unint64_t sub_255E30328()
{
  result = qword_27F7E9650;
  if (!qword_27F7E9650)
  {
    result = swift_getWitnessTable(byte_255E62304, &type metadata for AlertModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9650);
  }

  return result;
}

unint64_t sub_255E30380()
{
  result = qword_27F7E9658;
  if (!qword_27F7E9658)
  {
    result = swift_getWitnessTable(aE_20, &type metadata for AlertModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9658);
  }

  return result;
}

unint64_t sub_255E303D8()
{
  result = qword_27F7E9660;
  if (!qword_27F7E9660)
  {
    result = swift_getWitnessTable(aU_20, &type metadata for AlertModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9660);
  }

  return result;
}

unint64_t sub_255E3042C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255E30488(uint64_t a1)
{
  v2 = sub_255E308C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E304C4(uint64_t a1)
{
  v2 = sub_255E308C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E30500@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9670, &qword_255E62400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E308C0();
  sub_255E3AE28();
  if (!v2)
  {
    v12 = &type metadata for ViewContent;
    v13 = sub_255D44794();
    *&v11 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    sub_255D34630(&v11, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E306BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3A228();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8058, &qword_255E53888);
  v4 = sub_255E38AE8();
  a2[3] = v4;
  v6[0] = v3;
  v6[1] = sub_255E3085C();
  a2[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, v6);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39C38();
}

unint64_t sub_255E307E0(uint64_t a1)
{
  result = sub_255E30808();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E30808()
{
  result = qword_27F7E9668;
  if (!qword_27F7E9668)
  {
    result = swift_getWitnessTable(aQT, &type metadata for OverlayModifier, v0, v1);
    atomic_store(result, &qword_27F7E9668);
  }

  return result;
}

unint64_t sub_255E3085C()
{
  result = qword_27F7E8060;
  if (!qword_27F7E8060)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8058, &qword_255E53888);
    result = swift_getWitnessTable(MEMORY[0x277CDFC88], v3, v0, v1);
    atomic_store(result, &qword_27F7E8060);
  }

  return result;
}

unint64_t sub_255E308C0()
{
  result = qword_27F7E9678;
  if (!qword_27F7E9678)
  {
    result = swift_getWitnessTable(asc_255E624CC, &type metadata for OverlayModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9678);
  }

  return result;
}

unint64_t sub_255E30928()
{
  result = qword_27F7E9680;
  if (!qword_27F7E9680)
  {
    result = swift_getWitnessTable(asc_255E624A4, &type metadata for OverlayModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9680);
  }

  return result;
}

unint64_t sub_255E30980()
{
  result = qword_27F7E9688;
  if (!qword_27F7E9688)
  {
    result = swift_getWitnessTable(byte_255E62414, &type metadata for OverlayModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9688);
  }

  return result;
}

unint64_t sub_255E309D8()
{
  result = qword_27F7E9690;
  if (!qword_27F7E9690)
  {
    result = swift_getWitnessTable(byte_255E6243C, &type metadata for OverlayModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9690);
  }

  return result;
}

void sub_255E30A94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 36);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_255E30CC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_255D667C4();
  if (v7 <= 0x3F)
  {
    sub_255E30A94(319, &qword_27F7E96B0, &type metadata for StringResolvable, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_255E30A94(319, &qword_27F7E6E28, &type metadata for AnyViewModifier, MEMORY[0x277D83940]);
      if (v9 <= 0x3F)
      {
        sub_255D66878(319);
        if (v10 <= 0x3F)
        {
          sub_255E30E00(319, a4, a5);
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_255E30E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255E38878();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_255E30E90()
{
  v1 = *(v0 + 80);
  if (v1 > 0xFD)
  {
    return 0xD000000000000016;
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = *(v0 + 80);
  if (*(v0 + 96))
  {
    sub_255D94C04(v2, v3, v4, v1);

    v6 = StringResolvable.resolved(with:)(v5);
    sub_255D38060(v8, v9, v10, v11);

    return v6;
  }

  else
  {
    sub_255D3E5A8(v2, v3, v4, v1);
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E30FCC@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v2 = sub_255E38858();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v12 = v1[12];
  if (v12)
  {
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;

    *(inited + 32) = sub_255E30E90();
    *(inited + 40) = v15;
    sub_255E33544(&qword_27F7E9700, &qword_255E62D68, type metadata accessor for ColorSchemeReader, MEMORY[0x277CDF3E0], v8);
    (*(v3 + 104))(v6, *MEMORY[0x277CDF3D0], v2);
    v16 = sub_255E38848();
    v17 = *(v3 + 8);
    v17(v6, v2);
    v17(v8, v2);
    if (v16)
    {
      v18 = 0x746867696CLL;
    }

    else
    {
      v18 = 1802658148;
    }

    if (v16)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    *(inited + 48) = v20;
    v21 = sub_255DC53CC(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
    v22 = sub_255DC5124(MEMORY[0x277D84F90]);
    type metadata accessor for RemoteStateStore(0);
    swift_allocObject();
    v23 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v12, v21, v22);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E386C8();
    v25 = v26;
    *v26 = v13;
    v25[1] = result;
    v25[2] = v23;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

unint64_t sub_255E31338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E34EE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255E31368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E34EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E31390(uint64_t a1)
{
  v2 = sub_255E34964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E313CC(uint64_t a1)
{
  v2 = sub_255E34964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E31408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9748, &qword_255E62DE0);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ColorSchemeReader(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 11) = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v36 = sub_255E38CC8();
  *(v13 + 12) = v36;
  *(v13 + 13) = v14;
  v15 = *(v11 + 44);
  *&v13[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9700, &qword_255E62D68);
  swift_storeEnumTagMultiPayload();
  v16 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_255E34964();
  v17 = v37;
  sub_255E3AE28();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v38);

    return sub_255D395E4(&v13[v15], &qword_27F7E96C0, &qword_255E62A48);
  }

  else
  {
    v19 = v33;
    v18 = v34;
    LOBYTE(v39) = 0;
    v20 = sub_255E3AB88();
    v23 = v21;
    v37 = v7;
    if (!v21)
    {
      v24 = v6;
      sub_255E385C8();
      v25 = sub_255E385B8();
      v27 = v26;
      (*(v19 + 8))(v24, v32);
      v23 = v27;
      v20 = v25;
    }

    *v13 = v20;
    *(v13 + 1) = v23;
    v43 = 1;
    v41 = &type metadata for ViewContent;
    v42 = sub_255D44794();
    *&v39 = swift_allocObject();
    sub_255D447E8();
    v28 = v37;
    sub_255E3ABC8();
    sub_255D34630(&v39, (v13 + 16));
    v43 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v35 + 8))(v9, v28);
    v29 = v40;
    v30 = v41;
    *(v13 + 56) = v39;
    *(v13 + 9) = v29;
    v13[80] = v30;
    sub_255E349B8(v13, v18, type metadata accessor for ColorSchemeReader);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    return sub_255E34A20(v13, type metadata accessor for ColorSchemeReader);
  }
}

uint64_t sub_255E31904(uint64_t a1, uint64_t a2)
{
  sub_255E319BC(&qword_27F7E8D10, type metadata accessor for ColorSchemeReader, asc_255E62D48);
  sub_255E319BC(&qword_27F7E6950, type metadata accessor for ColorSchemeReader, byte_255E62AB8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255E319BC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255E31A04()
{
  v1 = 0x797274656D6F6567;
  v2 = *(v0 + 80);
  if (v2 > 0xFD)
  {
    return v1;
  }

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = *(v0 + 80);
  if (*(v0 + 96))
  {
    sub_255D94C04(v3, v4, v5, v2);

    v7 = StringResolvable.resolved(with:)(v6);
    sub_255D38060(v9, v10, v11, v12);

    return v7;
  }

  sub_255D3E5A8(v3, v4, v5, v2);
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255E31B44@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v34 = (*(v4 + 24))(v3, v4);
  v5 = a1[12];
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;

    v33 = v5;
    *(inited + 32) = sub_255E31A04();
    *(inited + 40) = v7;
    v32 = swift_allocObject();
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_255E558C0;
    *(v8 + 32) = 1702521203;
    *(v8 + 40) = 0xE400000000000000;
    v9 = swift_allocObject();
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_255E558C0;
    *(v10 + 32) = 0x6874646977;
    *(v10 + 40) = 0xE500000000000000;
    v11 = swift_allocObject();
    sub_255E38938();
    *(v11 + 16) = v12;
    *(v10 + 48) = v11 | 0x4000000000000000;
    *(v10 + 56) = 0x746867696568;
    *(v10 + 64) = 0xE600000000000000;
    v13 = swift_allocObject();
    sub_255E38938();
    *(v13 + 16) = v14;
    *(v10 + 72) = v13 | 0x4000000000000000;
    v15 = sub_255DC53CC(v10);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F40, &unk_255E559F0);
    swift_arrayDestroy();
    *(v9 + 16) = v15;
    *(v8 + 48) = v9 | 0xA000000000000000;
    strcpy((v8 + 56), "safeAreaInsets");
    *(v8 + 71) = -18;
    v16 = swift_allocObject();
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_255E62520;
    *(v17 + 32) = 7368564;
    *(v17 + 40) = 0xE300000000000000;
    v18 = swift_allocObject();
    sub_255E38928();
    *(v18 + 16) = v19;
    *(v17 + 48) = v18 | 0x4000000000000000;
    *(v17 + 56) = 0x676E696C69617274;
    *(v17 + 64) = 0xE800000000000000;
    v20 = swift_allocObject();
    sub_255E38928();
    *(v20 + 16) = v21;
    *(v17 + 72) = v20 | 0x4000000000000000;
    *(v17 + 80) = 0x6D6F74746F62;
    *(v17 + 88) = 0xE600000000000000;
    v22 = swift_allocObject();
    sub_255E38928();
    *(v22 + 16) = v23;
    *(v17 + 96) = v22 | 0x4000000000000000;
    *(v17 + 104) = 0x676E696461656CLL;
    *(v17 + 112) = 0xE700000000000000;
    v24 = swift_allocObject();
    sub_255E38928();
    *(v24 + 16) = v25;
    *(v17 + 120) = v24 | 0x4000000000000000;
    v26 = sub_255DC53CC(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v16 + 16) = v26;
    *(v8 + 72) = v16 | 0xA000000000000000;
    v27 = sub_255DC53CC(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v32 + 16) = v27;
    *(inited + 48) = v32 | 0xA000000000000000;
    v28 = sub_255DC53CC(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
    v29 = sub_255DC5124(MEMORY[0x277D84F90]);
    type metadata accessor for RemoteStateStore(0);
    swift_allocObject();
    v30 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v33, v28, v29);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E386C8();
    *a2 = v34;
    a2[1] = result;
    a2[2] = v30;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

unint64_t sub_255E32044@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E34F2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255E32074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E34F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E3209C(uint64_t a1)
{
  v2 = sub_255E348E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E320D8(uint64_t a1)
{
  v2 = sub_255E348E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E32114@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_255E385D8();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9738, &qword_255E62DD8);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v34 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v37 = sub_255E38CC8();
  v35 = v37;
  v36 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E348E0();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v11 = v22;
    v12 = v23;
    LOBYTE(v26) = 0;
    v13 = sub_255E3AB88();
    if (!v14)
    {
      v16 = v6;
      sub_255E385C8();
      v17 = sub_255E385B8();
      v21 = v18;
      (*(v11 + 8))(v16, v4);
      v14 = v21;
      v13 = v17;
    }

    v30[0] = v13;
    v30[1] = v14;
    v25 = 1;
    v28 = &type metadata for ViewContent;
    v29 = sub_255D44794();
    *&v26 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    v19 = v24;
    sub_255D34630(&v26, v31);
    v25 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v19 + 8))(v9, v7);
    *&v31[40] = v26;
    v32 = v27;
    v33 = v28;
    sub_255D4E898(v30, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255E34934(v30);
  }
}

uint64_t sub_255E32538@<X0>(uint64_t *a1@<X8>)
{
  sub_255D4E898(v1, v8);
  v3 = swift_allocObject();
  v4 = v8[5];
  v3[5] = v8[4];
  v3[6] = v4;
  v3[7] = v8[6];
  v5 = v8[1];
  v3[1] = v8[0];
  v3[2] = v5;
  v6 = v8[3];
  v3[3] = v8[2];
  v3[4] = v6;
  *&v8[0] = sub_255D4E8F4;
  *(&v8[0] + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6958, &unk_255E3E260);
  sub_255D38950(&qword_27F7E6960, &qword_27F7E6958, &unk_255E3E260, MEMORY[0x277CDF7D8]);
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

__n128 sub_255E32618@<Q0>(uint64_t (**a1)(uint64_t)@<X8>)
{
  sub_255D4E898(v1, v7);
  v3 = swift_allocObject();
  v4 = v7[5];
  *(v3 + 80) = v7[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = v7[6];
  v5 = v7[1];
  *(v3 + 16) = v7[0];
  *(v3 + 32) = v5;
  result = v7[3];
  *(v3 + 48) = v7[2];
  *(v3 + 64) = result;
  *a1 = sub_255E35024;
  a1[1] = v3;
  return result;
}

uint64_t sub_255E326F4()
{
  v1 = 0x69566C6C6F726373;
  v2 = *(v0 + 80);
  if (v2 > 0xFD)
  {
    return v1;
  }

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = *(v0 + 80);
  if (*(v0 + 96))
  {
    sub_255D94C04(v3, v4, v5, v2);

    v7 = StringResolvable.resolved(with:)(v6);
    sub_255D38060(v9, v10, v11, v12);

    return v7;
  }

  sub_255D3E5A8(v3, v4, v5, v2);
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255E32840@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[5];
  v7 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v9 = a2[14];
  if (v9)
  {
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9708, &unk_255E62D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;

    *(inited + 32) = sub_255E326F4();
    *(inited + 40) = v12;
    v13 = sub_255E38B18();
    *(inited + 72) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, a1, v13);
    v15 = sub_255DC7634(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E8168, &qword_255E53918);
    v16 = sub_255DC5124(MEMORY[0x277D84F90]);
    type metadata accessor for LocalStateStore(0);
    swift_allocObject();
    v17 = LocalStateStore.init(parent:initialSet:referenceKeyMap:)(v9, v15, v16);
    sub_255E319BC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E386C8();
    *a3 = v10;
    a3[1] = result;
    a3[2] = v17;
  }

  else
  {
    type metadata accessor for LocalStateStore(0);
    sub_255E319BC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E32A6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 2003134838;
  if (v2 != 1)
  {
    v4 = 0x79654B79786F7270;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 2003134838;
  if (*a2 != 1)
  {
    v8 = 0x79654B79786F7270;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E32B58()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E32BE8(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E32C64(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E32CF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E34F78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E32D20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x79654B79786F7270;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255E32D6C()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 0x79654B79786F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_255E32DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E34F78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E32DDC(uint64_t a1)
{
  v2 = sub_255E3485C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E32E18(uint64_t a1)
{
  v2 = sub_255E3485C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E32E54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_255E385D8();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9728, &unk_255E62DC8);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v35 = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v24 = sub_255E38CC8();
  v36 = v24;
  v37 = v9;
  type metadata accessor for LocalStateStore(0);
  sub_255E319BC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);
  v38 = sub_255E38CC8();
  v39 = v10;
  v11 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_255E3485C();
  v12 = v25;
  sub_255E3AE28();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    v13 = v22;
    v14 = v23;
    LOBYTE(v27) = 0;
    v15 = sub_255E3AB88();
    if (!v16)
    {
      v18 = v5;
      sub_255E385C8();
      v25 = sub_255E385B8();
      v20 = v19;
      (*(v21 + 8))(v18, v3);
      v16 = v20;
      v15 = v25;
    }

    v31[0] = v15;
    v31[1] = v16;
    v26 = 1;
    v29 = &type metadata for ViewContent;
    v30 = sub_255D44794();
    *&v27 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v27, v32);
    v26 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v13 + 8))(v8, v6);
    *&v32[40] = v27;
    v33 = v28;
    v34 = v29;
    sub_255D4E9B8(v31, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return sub_255E348B0(v31);
  }
}

uint64_t sub_255E332DC@<X0>(uint64_t *a1@<X8>)
{
  sub_255D4E9B8(v1, v9);
  v3 = swift_allocObject();
  v4 = v9[5];
  v3[5] = v9[4];
  v3[6] = v4;
  v5 = v9[7];
  v3[7] = v9[6];
  v3[8] = v5;
  v6 = v9[1];
  v3[1] = v9[0];
  v3[2] = v6;
  v7 = v9[3];
  v3[3] = v9[2];
  v3[4] = v7;
  *&v9[0] = sub_255D4EA14;
  *(&v9[0] + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6970, &qword_255E62DC0);
  sub_255D38950(&qword_27F7E6978, &qword_27F7E6970, &qword_255E62DC0, MEMORY[0x277CDDB40]);
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

double sub_255E333BC@<D0>(uint64_t (**a1)(uint64_t)@<X8>)
{
  sub_255D4E9B8(v1, v9);
  v3 = swift_allocObject();
  v4 = v13;
  *(v3 + 80) = v12;
  *(v3 + 96) = v4;
  v5 = v15;
  *(v3 + 112) = v14;
  *(v3 + 128) = v5;
  v6 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v6;
  result = *&v10;
  v8 = v11;
  *(v3 + 48) = v10;
  *(v3 + 64) = v8;
  *a1 = sub_255E35020;
  a1[1] = v3;
  return result;
}

uint64_t sub_255E33498(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  a4(a1, a2, a3);
  a5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255E33544@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v22 = a5;
  v10 = sub_255E38D48();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  v17 = a3(0);
  sub_255D3957C(v5 + *(v17 + 36), v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a4(0);
    return (*(*(v18 - 8) + 32))(v22, v16, v18);
  }

  else
  {
    sub_255E3A858();
    v20 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_255E33758()
{
  v1 = *(v0 + 80);
  if (v1 > 0xFD)
  {
    return 0xD00000000000001ALL;
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = *(v0 + 80);
  if (*(v0 + 96))
  {
    sub_255D94C04(v2, v3, v4, v1);

    v6 = StringResolvable.resolved(with:)(v5);
    sub_255D38060(v8, v9, v10, v11);

    return v6;
  }

  else
  {
    sub_255D3E5A8(v2, v3, v4, v1);
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E33894@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v2 = sub_255E38AB8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v12 = v1[12];
  if (v12)
  {
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255E3BBC0;

    *(inited + 32) = sub_255E33758();
    *(inited + 40) = v15;
    sub_255E33544(&qword_27F7E9710, &qword_255E62D80, type metadata accessor for LayoutDirectionReader, MEMORY[0x277CDFAA0], v8);
    (*(v3 + 104))(v6, *MEMORY[0x277CDFA90], v2);
    v16 = sub_255E38AA8();
    v17 = *(v3 + 8);
    v17(v6, v2);
    v17(v8, v2);
    if (v16)
    {
      v18 = 0x4C6F547468676972;
    }

    else
    {
      v18 = 0x69526F547466656CLL;
    }

    if (v16)
    {
      v19 = 0xEB00000000746665;
    }

    else
    {
      v19 = 0xEB00000000746867;
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    *(inited + 48) = v20;
    v21 = sub_255DC53CC(inited);
    swift_setDeallocating();
    sub_255D395E4(inited + 32, &qword_27F7E6F40, &unk_255E559F0);
    v22 = sub_255DC5124(MEMORY[0x277D84F90]);
    type metadata accessor for RemoteStateStore(0);
    swift_allocObject();
    v23 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v12, v21, v22);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E386C8();
    v25 = v26;
    *v26 = v13;
    v25[1] = result;
    v25[2] = v23;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255E33C14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 2003134838;
  if (v2 != 1)
  {
    v4 = 0x79654B61746164;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 2003134838;
  if (*a2 != 1)
  {
    v8 = 0x79654B61746164;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E33D00()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E33D90(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E33E0C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E33E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E34FC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255E33EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E34FC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E33EF0(uint64_t a1)
{
  v2 = sub_255E34808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E33F2C(uint64_t a1)
{
  v2 = sub_255E34808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E33F68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9718, &qword_255E62D88);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for LayoutDirectionReader(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 11) = MEMORY[0x277D84F90];
  type metadata accessor for RemoteStateStore(0);
  sub_255E319BC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v36 = sub_255E38CC8();
  *(v13 + 12) = v36;
  *(v13 + 13) = v14;
  v15 = *(v11 + 44);
  *&v13[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9710, &qword_255E62D80);
  swift_storeEnumTagMultiPayload();
  v16 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_255E34808();
  v17 = v37;
  sub_255E3AE28();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v38);

    return sub_255D395E4(&v13[v15], &qword_27F7E9698, &unk_255E62530);
  }

  else
  {
    v19 = v33;
    v18 = v34;
    LOBYTE(v39) = 0;
    v20 = sub_255E3AB88();
    v23 = v21;
    v37 = v7;
    if (!v21)
    {
      v24 = v6;
      sub_255E385C8();
      v25 = sub_255E385B8();
      v27 = v26;
      (*(v19 + 8))(v24, v32);
      v23 = v27;
      v20 = v25;
    }

    *v13 = v20;
    *(v13 + 1) = v23;
    v43 = 1;
    v41 = &type metadata for ViewContent;
    v42 = sub_255D44794();
    *&v39 = swift_allocObject();
    sub_255D447E8();
    v28 = v37;
    sub_255E3ABC8();
    sub_255D34630(&v39, (v13 + 16));
    v43 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v35 + 8))(v9, v28);
    v29 = v40;
    v30 = v41;
    *(v13 + 56) = v39;
    *(v13 + 9) = v29;
    v13[80] = v30;
    sub_255E349B8(v13, v18, type metadata accessor for LayoutDirectionReader);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    return sub_255E34A20(v13, type metadata accessor for LayoutDirectionReader);
  }
}

uint64_t sub_255E3442C@<X0>(void (*a1)(__int128 *__return_ptr)@<X2>, uint64_t *a2@<X8>)
{
  a1(&v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F80, &unk_255E43FF0);
  sub_255D3849C();
  result = sub_255E3A038();
  *a2 = result;
  return result;
}

uint64_t sub_255E344D8(uint64_t a1, uint64_t a2)
{
  sub_255E319BC(&qword_27F7E8D28, type metadata accessor for LayoutDirectionReader, aU_21);
  sub_255E319BC(&qword_27F7E6988, type metadata accessor for LayoutDirectionReader, byte_255E62CA4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_255E34590(uint64_t a1)
{
  result = sub_255E319BC(&qword_27F7E96E0, type metadata accessor for LayoutDirectionReader, byte_255E62C60);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255E345E8(uint64_t a1)
{
  result = sub_255E34610();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255E34610()
{
  result = qword_27F7E96E8;
  if (!qword_27F7E96E8)
  {
    result = swift_getWitnessTable(aMv, &type metadata for ScrollViewReaderView, v0, v1);
    atomic_store(result, &qword_27F7E96E8);
  }

  return result;
}

unint64_t sub_255E34664(uint64_t a1)
{
  result = sub_255E3468C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255E3468C()
{
  result = qword_27F7E96F0;
  if (!qword_27F7E96F0)
  {
    result = swift_getWitnessTable(byte_255E62B18, &type metadata for GeometryReaderView, v0, v1);
    atomic_store(result, &qword_27F7E96F0);
  }

  return result;
}

uint64_t sub_255E346E0(uint64_t a1)
{
  result = sub_255E319BC(&qword_27F7E96F8, type metadata accessor for ColorSchemeReader, byte_255E62A74);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255E34738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_255E34808()
{
  result = qword_27F7E9720;
  if (!qword_27F7E9720)
  {
    result = swift_getWitnessTable(aU_22, &type metadata for LayoutDirectionReader.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9720);
  }

  return result;
}

unint64_t sub_255E3485C()
{
  result = qword_27F7E9730;
  if (!qword_27F7E9730)
  {
    result = swift_getWitnessTable(byte_255E63284, &type metadata for ScrollViewReaderView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9730);
  }

  return result;
}

unint64_t sub_255E348E0()
{
  result = qword_27F7E9740;
  if (!qword_27F7E9740)
  {
    result = swift_getWitnessTable(byte_255E63234, &type metadata for GeometryReaderView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9740);
  }

  return result;
}

unint64_t sub_255E34964()
{
  result = qword_27F7E9750;
  if (!qword_27F7E9750)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for ColorSchemeReader.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9750);
  }

  return result;
}

uint64_t sub_255E349B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255E34A20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_255E34AC4()
{
  result = qword_27F7E9758;
  if (!qword_27F7E9758)
  {
    result = swift_getWitnessTable(byte_255E62EEC, &type metadata for LayoutDirectionReader.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9758);
  }

  return result;
}

unint64_t sub_255E34B1C()
{
  result = qword_27F7E9760;
  if (!qword_27F7E9760)
  {
    result = swift_getWitnessTable(byte_255E62FDC, &type metadata for ScrollViewReaderView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9760);
  }

  return result;
}

unint64_t sub_255E34B74()
{
  result = qword_27F7E9768;
  if (!qword_27F7E9768)
  {
    result = swift_getWitnessTable(byte_255E630CC, &type metadata for GeometryReaderView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9768);
  }

  return result;
}

unint64_t sub_255E34BCC()
{
  result = qword_27F7E9770;
  if (!qword_27F7E9770)
  {
    result = swift_getWitnessTable(aO_1, &type metadata for ColorSchemeReader.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9770);
  }

  return result;
}

unint64_t sub_255E34C24()
{
  result = qword_27F7E9778;
  if (!qword_27F7E9778)
  {
    result = swift_getWitnessTable(byte_255E630F4, &type metadata for ColorSchemeReader.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9778);
  }

  return result;
}

unint64_t sub_255E34C7C()
{
  result = qword_27F7E9780;
  if (!qword_27F7E9780)
  {
    result = swift_getWitnessTable(byte_255E6311C, &type metadata for ColorSchemeReader.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9780);
  }

  return result;
}

unint64_t sub_255E34CD4()
{
  result = qword_27F7E9788;
  if (!qword_27F7E9788)
  {
    result = swift_getWitnessTable(byte_255E63004, &type metadata for GeometryReaderView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9788);
  }

  return result;
}

unint64_t sub_255E34D2C()
{
  result = qword_27F7E9790;
  if (!qword_27F7E9790)
  {
    result = swift_getWitnessTable(byte_255E6302C, &type metadata for GeometryReaderView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9790);
  }

  return result;
}

unint64_t sub_255E34D84()
{
  result = qword_27F7E9798;
  if (!qword_27F7E9798)
  {
    result = swift_getWitnessTable(byte_255E62F14, &type metadata for ScrollViewReaderView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9798);
  }

  return result;
}

unint64_t sub_255E34DDC()
{
  result = qword_27F7E97A0;
  if (!qword_27F7E97A0)
  {
    result = swift_getWitnessTable(byte_255E62F3C, &type metadata for ScrollViewReaderView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E97A0);
  }

  return result;
}

unint64_t sub_255E34E34()
{
  result = qword_27F7E97A8;
  if (!qword_27F7E97A8)
  {
    result = swift_getWitnessTable(asc_255E62E24, &type metadata for LayoutDirectionReader.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E97A8);
  }

  return result;
}

unint64_t sub_255E34E8C()
{
  result = qword_27F7E97B0;
  if (!qword_27F7E97B0)
  {
    result = swift_getWitnessTable(byte_255E62E4C, &type metadata for LayoutDirectionReader.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E97B0);
  }

  return result;
}

unint64_t sub_255E34EE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E34F2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E34F78(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E34FC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255E35050@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v19 = *(v3 + 40);
  v20 = v8;
  v21 = v9;
  LOBYTE(v22) = v10;
  sub_255D3E5A8(v19, v8, v9, v10);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v19, v20, v21, v22);
  }

  sub_255D38060(v19, v20, v21, v22);
  v12 = sub_255E3AB48();

  v17[1] = (v12 > 2) | (6u >> (v12 & 7));
  v13 = a1[3];
  v14 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v23 = v17;
  MEMORY[0x28223BE20](v18);
  sub_255E390F8();
  v15 = MEMORY[0x277CE11C8];
  v19 = v13;
  v20 = MEMORY[0x277CE11C8];
  v16 = MEMORY[0x277CE11C0];
  v21 = v14;
  v22 = MEMORY[0x277CE11C0];
  a3[3] = swift_getOpaqueTypeMetadata2();
  v19 = v13;
  v20 = v15;
  v21 = v14;
  v22 = v16;
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39BE8();
}

uint64_t sub_255E35248()
{
  if (*v0)
  {
    return 1701274725;
  }

  else
  {
    return 2003134838;
  }
}

uint64_t sub_255E3526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v5 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701274725 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255E35348(uint64_t a1)
{
  v2 = sub_255E35E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E35384(uint64_t a1)
{
  v2 = sub_255E35E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E353C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97E8, &qword_255E63848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E35E9C();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  v12 = &type metadata for ViewContent;
  v13 = sub_255D44794();
  *&v10 = swift_allocObject();
  sub_255D447E8();
  sub_255E3ABC8();
  sub_255D34630(&v10, v14);
  v18 = 1;
  sub_255D3EA0C();
  sub_255E3ABC8();
  (*(v6 + 8))(v8, v5);
  v15 = v10;
  v16 = v11;
  v17 = v12;
  sub_255E35EF0(v14, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255E35F28(v14);
}

uint64_t sub_255E35624@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97C8, &qword_255E63830);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_255E390A8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = *(v3 + 8);
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v35 = *v3;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  sub_255D3E5A8(v35, v17, v18, v19);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v35, v36, v37, v38);
  }

  v32 = v10;
  v33 = a3;
  v21 = v34;
  sub_255D38060(v35, v36, v37, v38);
  v22 = sub_255E3AB48();

  if (v22 == 2)
  {
    sub_255E39098();
    v23 = v11;
    goto LABEL_9;
  }

  v23 = v11;
  if (v22 == 1)
  {
    sub_255E39078();
LABEL_9:
    v24 = v32;
    goto LABEL_10;
  }

  v24 = v32;
  if (v22)
  {
    (*(v23 + 56))(v9, 1, 1, v32);
    sub_255E39098();
    v26 = v23;
    if ((*(v23 + 48))(v9, 1, v24) != 1)
    {
      sub_255E35DE0(v9);
    }

    goto LABEL_11;
  }

  sub_255E39088();
LABEL_10:
  v25 = *(v23 + 32);
  v25(v9, v14, v24);
  (*(v23 + 56))(v9, 0, 1, v24);
  v25(v16, v9, v24);
  v26 = v23;
LABEL_11:
  v27 = v21[3];
  v28 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v27);
  v39 = View.anyView.getter(v27, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97D0, &qword_255E63838);
  v30 = v33;
  v33[3] = v29;
  v35 = MEMORY[0x277CE11C8];
  v36 = MEMORY[0x277CE11C0];
  v30[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v30);
  sub_255E39928();

  return (*(v26 + 8))(v16, v24);
}

uint64_t sub_255E359AC()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 2003134838;
  }
}

uint64_t sub_255E359DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v5 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255E35AB4(uint64_t a1)
{
  v2 = sub_255E35E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E35AF0(uint64_t a1)
{
  v2 = sub_255E35E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E35B2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97D8, &qword_255E63840);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E35E48();
  sub_255E3AE28();
  if (!v2)
  {
    v15 = 1;
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255E35CE8(uint64_t a1)
{
  result = sub_255E35D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E35D10()
{
  result = qword_27F7E97B8;
  if (!qword_27F7E97B8)
  {
    result = swift_getWitnessTable(aJ8, &type metadata for MagicPocketStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E97B8);
  }

  return result;
}

unint64_t sub_255E35D64(uint64_t a1)
{
  result = sub_255E35D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E35D8C()
{
  result = qword_27F7E97C0;
  if (!qword_27F7E97C0)
  {
    result = swift_getWitnessTable(aEj_0, &type metadata for MagicPocketModifier, v0, v1);
    atomic_store(result, &qword_27F7E97C0);
  }

  return result;
}

uint64_t sub_255E35DE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E97C8, &qword_255E63830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E35E48()
{
  result = qword_27F7E97E0;
  if (!qword_27F7E97E0)
  {
    result = swift_getWitnessTable(aL, &type metadata for MagicPocketStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E97E0);
  }

  return result;
}

unint64_t sub_255E35E9C()
{
  result = qword_27F7E97F0;
  if (!qword_27F7E97F0)
  {
    result = swift_getWitnessTable(aX_6, &type metadata for MagicPocketModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E97F0);
  }

  return result;
}

unint64_t sub_255E35F7C()
{
  result = qword_27F7E97F8;
  if (!qword_27F7E97F8)
  {
    result = swift_getWitnessTable(byte_255E638EC, &type metadata for MagicPocketStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E97F8);
  }

  return result;
}

unint64_t sub_255E35FD4()
{
  result = qword_27F7E9800;
  if (!qword_27F7E9800)
  {
    result = swift_getWitnessTable(aG_3, &type metadata for MagicPocketModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9800);
  }

  return result;
}

unint64_t sub_255E3602C()
{
  result = qword_27F7E9808;
  if (!qword_27F7E9808)
  {
    result = swift_getWitnessTable(byte_255E63914, &type metadata for MagicPocketModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9808);
  }

  return result;
}

unint64_t sub_255E36084()
{
  result = qword_27F7E9810;
  if (!qword_27F7E9810)
  {
    result = swift_getWitnessTable(byte_255E6393C, &type metadata for MagicPocketModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9810);
  }

  return result;
}

unint64_t sub_255E360DC()
{
  result = qword_27F7E9818;
  if (!qword_27F7E9818)
  {
    result = swift_getWitnessTable(aEw, &type metadata for MagicPocketStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9818);
  }

  return result;
}

unint64_t sub_255E36134()
{
  result = qword_27F7E9820;
  if (!qword_27F7E9820)
  {
    result = swift_getWitnessTable(aUs, &type metadata for MagicPocketStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9820);
  }

  return result;
}

uint64_t sub_255E361A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 272))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255E361F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_255E362A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6874646977;
    v6 = 0x6E656D6E67696C61;
    if (a1 != 2)
    {
      v6 = 0x68746469576E696DLL;
    }

    if (a1)
    {
      v5 = 0x746867696568;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x68676965486E696DLL;
    v2 = 0x6965486C61656469;
    if (a1 != 7)
    {
      v2 = 0x686769654878616DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6469576C61656469;
    if (a1 != 4)
    {
      v3 = 0x687464695778616DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_255E363DC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D77A70(v3, v1);
  return sub_255E3ADD8();
}

uint64_t sub_255E3642C(uint64_t a1)
{
  v2 = *v1;
  sub_255E3AD98();
  sub_255D77A70(v4, v2);
  return sub_255E3ADD8();
}

unint64_t sub_255E36470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E37D84(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_255E364A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255E362A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_255E364E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E37D84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E3651C(uint64_t a1)
{
  v2 = sub_255E37A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E36558(uint64_t a1)
{
  v2 = sub_255E37A98();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E36594(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9848, &qword_255E64B40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255E37A98();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    return;
  }

  v53 = a2;
  v54 = v6;
  LOBYTE(v55[0]) = 0;
  sub_255D64774();
  sub_255E3ABA8();
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v52 = v59;
  LOBYTE(v55[0]) = 1;
  sub_255E3ABA8();
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  LOBYTE(v55[0]) = 3;
  sub_255E3ABA8();
  v41 = v56;
  v42 = v57;
  v43 = v58;
  v44 = v59;
  LOBYTE(v55[0]) = 4;
  sub_255E3ABA8();
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v37 = v59;
  LOBYTE(v55[0]) = 5;
  sub_255E3ABA8();
  v33 = v56;
  v34 = v57;
  v35 = v58;
  v36 = v59;
  LOBYTE(v55[0]) = 6;
  sub_255E3ABA8();
  v29 = v56;
  v30 = v57;
  v31 = v58;
  v32 = v59;
  LOBYTE(v55[0]) = 7;
  sub_255E3ABA8();
  v25 = v56;
  v26 = v57;
  v27 = v58;
  v28 = v59;
  LOBYTE(v55[0]) = 8;
  sub_255E3ABA8();
  v21 = v56;
  v22 = v57;
  v23 = v58;
  v24 = v59;
  LOBYTE(v55[0]) = 2;
  sub_255D9BE68();
  sub_255E3ABA8();
  if (v56 <= 4u)
  {
    if (v56 > 1u)
    {
      if (v56 == 2)
      {
        v10 = sub_255E3A248();
      }

      else if (v56 == 3)
      {
        v10 = sub_255E3A208();
      }

      else
      {
        v10 = sub_255E3A218();
      }

      goto LABEL_22;
    }

    if (v56)
    {
      v10 = sub_255E3A238();
      goto LABEL_22;
    }

LABEL_14:
    v10 = sub_255E3A228();
    goto LABEL_22;
  }

  if (v56 <= 6u)
  {
    if (v56 == 5)
    {
      v10 = sub_255E3A1C8();
    }

    else
    {
      v10 = sub_255E3A1D8();
    }

    goto LABEL_22;
  }

  if (v56 == 7)
  {
    v10 = sub_255E3A1E8();
    goto LABEL_22;
  }

  if (v56 != 8)
  {
    goto LABEL_14;
  }

  v10 = sub_255E3A1F8();
LABEL_22:
  v19 = v11;
  v20 = v10;
  (*(v54 + 8))(v8, v5);
  HIDWORD(v55[19]) = *&v101[3];
  *(&v55[19] + 1) = *v101;
  HIDWORD(v55[23]) = *&v100[3];
  *(&v55[23] + 1) = *v100;
  HIDWORD(v55[27]) = *&v99[3];
  *(&v55[27] + 1) = *v99;
  HIDWORD(v55[31]) = *&v98[3];
  *(&v55[31] + 1) = *v98;
  *(&v55[3] + 1) = v105[0];
  HIDWORD(v55[3]) = *(v105 + 3);
  *(&v55[7] + 1) = *v104;
  HIDWORD(v55[7]) = *&v104[3];
  *(&v55[11] + 1) = *v103;
  HIDWORD(v55[11]) = *&v103[3];
  *(&v55[15] + 1) = *v102;
  HIDWORD(v55[15]) = *&v102[3];
  v12 = v49;
  v13 = v50;
  v55[0] = v49;
  v55[1] = v50;
  v14 = v51;
  v55[2] = v51;
  v15 = v52;
  LOBYTE(v55[3]) = v52;
  v17 = v45;
  v16 = v46;
  v55[4] = v45;
  v55[5] = v46;
  v55[6] = v47;
  LOBYTE(v55[7]) = v48;
  v55[8] = v41;
  v55[9] = v42;
  v55[10] = v43;
  LOBYTE(v55[11]) = v44;
  v55[12] = v38;
  v55[13] = v39;
  v55[14] = v40;
  LOBYTE(v55[15]) = v37;
  v55[16] = v33;
  v55[17] = v34;
  v55[18] = v35;
  LOBYTE(v55[19]) = v36;
  v55[20] = v29;
  v55[21] = v30;
  v55[22] = v31;
  LOBYTE(v55[23]) = v32;
  v55[24] = v25;
  v55[25] = v26;
  v55[26] = v27;
  LOBYTE(v55[27]) = v28;
  v55[28] = v21;
  v55[29] = v22;
  v55[30] = v23;
  LOBYTE(v55[31]) = v24;
  v55[32] = v20;
  v55[33] = v19;
  memcpy(v53, v55, 0x110uLL);
  sub_255E37AEC(v55, &v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  v56 = v12;
  v57 = v13;
  v58 = v14;
  v59 = v15;
  v61 = v17;
  v62 = v16;
  *v60 = v105[0];
  *&v60[3] = *(v105 + 3);
  v63 = v47;
  v64 = v48;
  *v65 = *v104;
  *&v65[3] = *&v104[3];
  v66 = v41;
  v67 = v42;
  v68 = v43;
  v69 = v44;
  *v70 = *v103;
  *&v70[3] = *&v103[3];
  v71 = v38;
  v72 = v39;
  v73 = v40;
  v74 = v37;
  *v75 = *v102;
  *&v75[3] = *&v102[3];
  v76 = v33;
  v77 = v34;
  v78 = v35;
  v79 = v36;
  *&v80[3] = *&v101[3];
  *v80 = *v101;
  v81 = v29;
  v82 = v30;
  v83 = v31;
  v84 = v32;
  *&v85[3] = *&v100[3];
  *v85 = *v100;
  v86 = v25;
  v87 = v26;
  v88 = v27;
  v89 = v28;
  *&v90[3] = *&v99[3];
  *v90 = *v99;
  v91 = v21;
  v92 = v22;
  v93 = v23;
  v94 = v24;
  *&v95[3] = *&v98[3];
  *v95 = *v98;
  v96 = v20;
  v97 = v19;
  sub_255E37B24(&v56);
}

uint64_t sub_255E36FAC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  if (v6 < 0xFE)
  {
    v19 = *(v3 + 8);
    v20 = *(v3 + 16);
    v45 = *v3;
    v46 = v19;
    v47 = v20;
    v48 = v6;
    sub_255D612A0(v45, v19, v20, v6);
    v11 = a2;
    sub_255D8F6FC(a2);
    sub_255D4CB98(v45, v46, v47, v48);
    if (v10 > 0xFD)
    {
LABEL_9:
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v22 = sub_255E38AE8();
      a3[3] = v22;
      v44[0] = v21;
      v44[1] = MEMORY[0x277CDF678];
      a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v22, v44);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_255E39BB8();
    }

LABEL_8:
    v45 = v7;
    v46 = v8;
    v47 = v9;
    v48 = v10;
    sub_255D612A0(v7, v8, v9, v10);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v7, v8, v9, v10);
    goto LABEL_9;
  }

  v11 = a2;
  if (v10 <= 0xFD)
  {
    goto LABEL_8;
  }

  v12 = *(v3 + 88);
  v14 = *(v3 + 96);
  v13 = *(v3 + 104);
  v15 = *(v3 + 112);
  v16 = *(v3 + 120);
  v39 = *(v3 + 136);
  v40 = *(v3 + 128);
  v17 = *(v3 + 152);
  v28 = *(v3 + 144);
  v29 = *(v3 + 176);
  v18 = *(v3 + 192);
  v32 = *(v3 + 200);
  v30 = *(v3 + 168);
  v31 = *(v3 + 208);
  v37 = *(v3 + 184);
  v38 = *(v3 + 216);
  v35 = *(v3 + 224);
  v36 = *(v3 + 160);
  v33 = *(v3 + 240);
  v34 = *(v3 + 232);
  v41 = *(v3 + 248);
  if (v12 > 0xFD)
  {
    if (v16 <= 0xFD)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (v17 > 0xFD)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v42 = *(v3 + 104);
  v24 = *(v3 + 72);
  v25 = *(v3 + 80);
  v45 = *(v3 + 64);
  v46 = v24;
  v47 = v25;
  v48 = v12;
  sub_255D612A0(v45, v24, v25, v12);
  sub_255D8F6FC(v11);
  sub_255D4CB98(v45, v46, v47, v48);
  v13 = v42;
  if (v16 > 0xFD)
  {
    goto LABEL_11;
  }

LABEL_5:
  v45 = v14;
  v46 = v13;
  v47 = v15;
  v48 = v16;
  sub_255D612A0(v14, v13, v15, v16);
  sub_255D8F6FC(v11);
  sub_255D4CB98(v14, v46, v15, v16);
  if (v17 <= 0xFD)
  {
LABEL_6:
    v45 = v40;
    v46 = v39;
    v47 = v28;
    v48 = v17;
    sub_255D612A0(v40, v39, v28, v17);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v40, v39, v28, v17);
  }

LABEL_12:
  if (v37 <= 0xFD)
  {
    v45 = v36;
    v46 = v30;
    v47 = v29;
    v48 = v37;
    sub_255D612A0(v36, v30, v29, v37);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v36, v30, v29, v37);
  }

  if (v38 <= 0xFD)
  {
    v45 = v18;
    v46 = v32;
    v47 = v31;
    v48 = v38;
    sub_255D612A0(v18, v32, v31, v38);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v18, v32, v31, v38);
  }

  if (v41 <= 0xFD)
  {
    v45 = v35;
    v46 = v34;
    v47 = v33;
    v48 = v41;
    sub_255D612A0(v35, v34, v33, v41);
    sub_255D8F6FC(v11);
    sub_255D4CB98(v35, v34, v33, v41);
  }

  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_255E38AE8();
  a3[3] = v27;
  v49[0] = v26;
  v49[1] = MEMORY[0x277CDFC60];
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v27, v49);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39BC8();
}

uint64_t sub_255E37538()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E375B4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E3760C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255E376A4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255E376FC(uint64_t a1)
{
  v2 = sub_255E37A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E37738(uint64_t a1)
{
  v2 = sub_255E37A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E37774@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E9838, &qword_255E64B38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E37A44();
  sub_255E3AE28();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABA8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255E3794C(uint64_t a1)
{
  result = sub_255E37974();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E37974()
{
  result = qword_27F7E9828;
  if (!qword_27F7E9828)
  {
    result = swift_getWitnessTable(a1w, &type metadata for ClippedModifier, v0, v1);
    atomic_store(result, &qword_27F7E9828);
  }

  return result;
}

unint64_t sub_255E379C8(uint64_t a1)
{
  result = sub_255E379F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E379F0()
{
  result = qword_27F7E9830;
  if (!qword_27F7E9830)
  {
    result = swift_getWitnessTable(aYw, &type metadata for FrameModifier, v0, v1);
    atomic_store(result, &qword_27F7E9830);
  }

  return result;
}

unint64_t sub_255E37A44()
{
  result = qword_27F7E9840;
  if (!qword_27F7E9840)
  {
    result = swift_getWitnessTable(byte_255E64D84, &type metadata for ClippedModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9840);
  }

  return result;
}

unint64_t sub_255E37A98()
{
  result = qword_27F7E9850;
  if (!qword_27F7E9850)
  {
    result = swift_getWitnessTable(byte_255E64D34, &type metadata for FrameModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9850);
  }

  return result;
}

unint64_t sub_255E37B78()
{
  result = qword_27F7E9858;
  if (!qword_27F7E9858)
  {
    result = swift_getWitnessTable(byte_255E64C1C, &type metadata for ClippedModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9858);
  }

  return result;
}

unint64_t sub_255E37BD0()
{
  result = qword_27F7E9860;
  if (!qword_27F7E9860)
  {
    result = swift_getWitnessTable(byte_255E64D0C, &type metadata for FrameModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9860);
  }

  return result;
}

unint64_t sub_255E37C28()
{
  result = qword_27F7E9868;
  if (!qword_27F7E9868)
  {
    result = swift_getWitnessTable(aC_0, &type metadata for FrameModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9868);
  }

  return result;
}

unint64_t sub_255E37C80()
{
  result = qword_27F7E9870;
  if (!qword_27F7E9870)
  {
    result = swift_getWitnessTable(aMX, &type metadata for FrameModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9870);
  }

  return result;
}

unint64_t sub_255E37CD8()
{
  result = qword_27F7E9878;
  if (!qword_27F7E9878)
  {
    result = swift_getWitnessTable(aMd_0, &type metadata for ClippedModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9878);
  }

  return result;
}

unint64_t sub_255E37D30()
{
  result = qword_27F7E9880;
  if (!qword_27F7E9880)
  {
    result = swift_getWitnessTable(aL_0, &type metadata for ClippedModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E9880);
  }

  return result;
}

unint64_t sub_255E37D84(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27F815290 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27F815284 > a2)
  {
    return 1;
  }

  if (dword_27F815284 < a2)
  {
    return 0;
  }

  return dword_27F815288 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27F815298 == -1)
  {
    if (qword_27F8152A0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27F8152A0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27F815290 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27F815284 > a3)
      {
        return 1;
      }

      if (dword_27F815284 >= a3)
      {
        return dword_27F815288 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27F8152A0;
  if (qword_27F8152A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F8152A0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x259C4F320](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27F815284, &dword_27F815288);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}