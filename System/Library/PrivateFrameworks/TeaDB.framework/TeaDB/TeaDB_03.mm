uint64_t sub_2179DA340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2179DA3C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179E9270();
    v7 = sub_2179DA48C(&qword_280B1D8B0, MEMORY[0x277CC9578], &protocol conformance descriptor for Date);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2179DA464(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_2179B314C(a1, a2);
  }
}

uint64_t sub_2179DA48C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_2179DA54C(_BYTE *result, int a2, int a3)
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

_BYTE *sub_2179DA5E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2179DA72C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Int.valueType.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_2179DA7F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2179DAEE8(0, &qword_280B1C960, sub_2179DA8D0, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2179EA830;
  *(v10 + 32) = 1802396018;
  *(v10 + 40) = 0xE400000000000000;
  sub_2179A70AC(a3, v10 + 48);

  return sub_2179DA998(a1, a2, v10, a4, a5);
}

void sub_2179DA8D0(uint64_t a1)
{
  if (!qword_280B1C9A8)
  {
    sub_2179DA93C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B1C9A8);
    }
  }
}

unint64_t sub_2179DA93C()
{
  result = qword_280B1DB50;
  if (!qword_280B1DB50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280B1DB50);
  }

  return result;
}

uint64_t sub_2179DA998(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v34 = a2;
  sub_2179DAEE8(0, &qword_280B1D590, sub_2179DAE38, MEMORY[0x277D85AB8]);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v35 = &v31 - v10;
  v32 = (*(*(a5 + 8) + 32))(a4);
  v12 = v11;
  v46[0] = a3;
  sub_2179DAEE8(0, &qword_280B1C9A0, sub_2179DA8D0, MEMORY[0x277D83940]);
  v14 = v13;
  v15 = sub_2179DAF4C();
  v46[0] = sub_2179A2E44(sub_2179DAE94, 0, v14, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
  sub_2179A5088();
  sub_2179A4B34();
  v31 = sub_2179E95F0();
  v18 = v17;

  v46[0] = a3;
  v20 = sub_2179A2E44(sub_2179DAFD4, 0, v14, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v19);

  v46[0] = v20;
  v21 = sub_2179E95F0();
  v23 = v22;

  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_2179E9B10();

  strcpy(v46, "INSERT INTO ");
  BYTE5(v46[1]) = 0;
  HIWORD(v46[1]) = -5120;
  v24 = v32;
  MEMORY[0x21CEA9600](v32, v12);
  MEMORY[0x21CEA9600](40, 0xE100000000000000);
  MEMORY[0x21CEA9600](v24, v12);

  MEMORY[0x21CEA9600](8236, 0xE200000000000000);
  MEMORY[0x21CEA9600](v31, v18);

  MEMORY[0x21CEA9600](0x5345554C41560A29, 0xE900000000000028);
  v44 = 39;
  v45 = 0xE100000000000000;
  v42 = v33;
  v43 = v34;
  v40 = 39;
  v41 = 0xE100000000000000;
  v38 = 10023;
  v39 = 0xE200000000000000;
  sub_2179A4934();
  v25 = sub_2179E9A80();
  v27 = v26;

  MEMORY[0x21CEA9600](v25, v27);

  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  MEMORY[0x21CEA9600](v44, v45);

  MEMORY[0x21CEA9600](8236, 0xE200000000000000);
  MEMORY[0x21CEA9600](v21, v23);

  MEMORY[0x21CEA9600](15145, 0xE200000000000000);
  v44 = v46[0];
  v45 = v46[1];
  sub_2179DAE38();
  v28 = v35;
  sub_2179E93E0();
  v42 = 32;
  v43 = 0xE100000000000000;
  sub_2179DB040();
  sub_2179DB094();
  sub_2179DB0E8();
  v29 = v36;
  sub_2179E98F0();
  (*(v37 + 8))(v28, v29);

  return v46[0];
}

void sub_2179DAE38()
{
  if (!qword_280B1C978)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B1C978);
    }
  }
}

uint64_t sub_2179DAE94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2179DB170(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void sub_2179DAEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2179DAF4C()
{
  result = qword_280B1C998;
  if (!qword_280B1C998)
  {
    sub_2179DAEE8(255, &qword_280B1C9A0, sub_2179DA8D0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1C998);
  }

  return result;
}

uint64_t sub_2179DAFD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_2179DB040()
{
  result = qword_280B1C9B0;
  if (!qword_280B1C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1C9B0);
  }

  return result;
}

unint64_t sub_2179DB094()
{
  result = qword_280B1C9B8[0];
  if (!qword_280B1C9B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B1C9B8);
  }

  return result;
}

unint64_t sub_2179DB0E8()
{
  result = qword_280B1D598;
  if (!qword_280B1D598)
  {
    sub_2179DAEE8(255, &qword_280B1D590, sub_2179DAE38, MEMORY[0x277D85AB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1D598);
  }

  return result;
}

uint64_t sub_2179DB170(uint64_t a1, uint64_t a2)
{
  sub_2179DA8D0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void SearchTable.Save.entity(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = sub_2179DC294(v5, v10);
  type metadata accessor for Statement(0, v5, *(*(v10 + 8) + 24), v12);
  v13 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  (*(v6 + 16))(v8, a1, v5);
  v43 = v10;
  v44 = v5;
  *&v45 = sub_2179C9EC4(v8, 1, v5, v10);
  sub_2179A5088();
  sub_2179A4B34();
  *&v45 = sub_2179E95F0();
  *(&v45 + 1) = v14;

  MEMORY[0x21CEA9600](59, 0xE100000000000000);

  v15 = v45;
  v42 = v3;
  sub_2179A70AC(v3, &v45);
  v16 = v11;
  v41[0] = sub_2179AC76C(&v47, v15, *(&v15 + 1), &v45);
  v17 = *(v11 + 16);
  if (v17)
  {
    v47 = v13;
    sub_2179A9394(0, v17, 0);
    v18 = 0;
    v19 = v47;
    v20 = v11 + 32;
    while (v18 < *(v16 + 16))
    {
      sub_2179A9940(v20, &v45);
      v22 = sub_2179DB5BC(v45, *(&v45 + 1), v46, v42);
      if (v22)
      {
        v23 = v21;
        v24 = swift_allocObject();
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
        v22 = sub_2179D006C;
      }

      else
      {
        v24 = 0;
      }

      sub_2179AE2FC(&v45);
      v47 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2179A9394((v25 > 1), v26 + 1, 1);
        v19 = v47;
      }

      ++v18;
      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v20 += 56;
      if (v17 == v18)
      {

        goto LABEL_12;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
LABEL_12:
    v28 = 0;
    v29 = *(v19 + 16);
    v30 = MEMORY[0x277D84F90];
LABEL_13:
    v31 = (v19 + 32 + 16 * v28);
    while (v29 != v28)
    {
      if (v28 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      ++v28;
      v32 = v31 + 2;
      v33 = *v31;
      v31 += 2;
      if (v33)
      {
        v34 = *(v32 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2179A94A4();
          v30 = v37;
        }

        v35 = *(v30 + 16);
        if (v35 >= *(v30 + 24) >> 1)
        {
          sub_2179A94A4();
          v30 = v38;
        }

        *(v30 + 16) = v35 + 1;
        v36 = v30 + 16 * v35;
        *(v36 + 32) = v33;
        *(v36 + 40) = v34;
        goto LABEL_13;
      }
    }

    sub_2179A9E30(v30);

    v40 = v41[1];
    sub_2179AC7D4(v39);

    if (!v40)
    {
    }
  }
}

uint64_t sub_2179DB5BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 88))(a4, v5, v6);
}

uint64_t sub_2179DB618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FastColumn.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FastColumn.wrappedValue.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_2179DB73C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2179E9D70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_2179E9D70();

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

uint64_t sub_2179DB808(char a1)
{
  if (a1)
  {
    return 0x5664657070617277;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2179DB874(uint64_t a1)
{
  sub_2179E9E20();
  sub_2179D4A14(v3, *v1);
  return sub_2179E9E40();
}

uint64_t sub_2179DB8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179DB73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179DB924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179D49FC();
  *a1 = result;
  return result;
}

uint64_t sub_2179DB954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179DB9A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FastColumn.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v5 + 80);
  v18 = *(*v5 + 88);
  v19 = v7;
  type metadata accessor for FastColumn.CodingKeys(255, v7, v18, a4);
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v8 = sub_2179E9D30();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v22 = 0;
  v14 = v20;
  sub_2179E9CE0();
  if (!v14)
  {
    swift_beginAccess();
    v23 = v5[4];
    v21 = 1;
    type metadata accessor for Column(0, v19, v18, v15);
    swift_getWitnessTable();
    sub_2179E9D20();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t FastColumn.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  FastColumn.init(from:)(a1, v3, v4, v5);
  return v2;
}

void *FastColumn.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  type metadata accessor for FastColumn.CodingKeys(255, v7, v8, a4);
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_2179E9CD0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E90();
  if (v5)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = sub_2179E9C80();
    v4[3] = v10;
    type metadata accessor for Column(0, v7, v8, v11);
    swift_getWitnessTable();
    sub_2179E9CC0();
    v13 = OUTLINED_FUNCTION_2_15();
    v14(v13);
    v4[4] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_2179DBEB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FastColumn.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FastColumn.description.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_20(a1);

  v1 = Column.description.getter();

  return v1;
}

_BYTE *sub_2179DBFD8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179DC0F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*(*(v7 + 8) + 24) + 8))();
  (*(a2 + 16))(v19, a1, a2);
  v8 = v19[1];

  v18 = v8;
  v15 = a1;
  v16 = a2;
  v17 = v6;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();
  v9 = sub_2179E9840();
  v10 = OUTLINED_FUNCTION_0_19();
  v12 = sub_2179A2E44(sub_2179DC628, v14, v9, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);

  (*(v4 + 8))(v6, a1);
  return v12;
}

uint64_t sub_2179DC294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v6(v19);

  swift_getAtKeyPath();

  v7 = v18;
  sub_2179A2C2C(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2179EA830;
  *(v8 + 32) = 0x6469776F72;
  *(v8 + 40) = 0xE500000000000000;
  *(v8 + 72) = type metadata accessor for RowID();
  *(v8 + 80) = &off_2829964F0;
  *(v8 + 48) = v7;

  (v6)(v19, a1, a2);
  v9 = v19[1];

  v18 = v9;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v3;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();
  v10 = sub_2179E9840();
  sub_2179A4BDC(0);
  v12 = v11;
  v13 = OUTLINED_FUNCTION_0_19();
  v15 = sub_2179A2E44(sub_2179DC604, v17, v10, v12, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);

  v19[0] = v8;
  sub_2179C2040(v15);

  return v19[0];
}

double static SearchEntityType.tokenizer.getter@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = 1;
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

uint64_t SearchSchema.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2179DC4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179DC524@<X0>(void *a3@<X8>)
{
  swift_getAtKeyPath();
  v4 = *(v7 + 16);
  os_unfair_lock_lock((v4 + 64));
  v5 = *(v4 + 32);
  os_unfair_lock_unlock((v4 + 64));

  *a3 = v5;
  return result;
}

uint64_t sub_2179DC598@<X0>(uint64_t **a3@<X8>)
{
  swift_getAtKeyPath();
  v4 = sub_2179E2BD8(a3 + 2);
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t Transaction.rawValue.getter()
{
  v1 = 0x54414944454D4D49;
  if (*v0 != 1)
  {
    v1 = 0x564953554C435845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445525245464544;
  }
}

TeaDB::Transaction_optional __swiftcall Transaction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2179E9C70();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2179DC71C()
{
  result = qword_27CB983E0[0];
  if (!qword_27CB983E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB983E0);
  }

  return result;
}

uint64_t sub_2179DC794@<X0>(uint64_t *a1@<X8>)
{
  result = Transaction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Transaction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t LazyEntity.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LazyEntity.loaderValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  LazyLoader.load()(a1);
  v4 = *(v3 + 80);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t LazyEntity.__allocating_init(value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  LazyEntity.init(value:)(a1);
  return v2;
}

void *LazyEntity.init(value:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_8();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v11 = (*(*(v10 + 88) + 24))(v5, *(v10 + 88));
  swift_beginAccess();
  v13 = *(v11 + 24);
  v12 = *(v11 + 32);

  if (v12)
  {
    v2[2] = v13;
    v2[3] = v12;
    v15 = OUTLINED_FUNCTION_5_11();
    type metadata accessor for LazyLoader(v15, v16, v17, v18);
    (*(v6 + 16))(v9, a1, v5);
    v19 = LazyLoader.__allocating_init(object:)(v9);
    (*(v6 + 8))(a1, v5);
    v2[4] = v19;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LazyEntity.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_2179DCB2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2179E9D70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2179E9D70();

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

uint64_t sub_2179DCBF8(char a1)
{
  if (a1)
  {
    return 0x726564616F6CLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2179DCC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179DCB2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179DCC70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179DCCC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LazyEntity.deinit()
{

  return v0;
}

uint64_t LazyEntity.__deallocating_deinit()
{
  LazyEntity.deinit();
  OUTLINED_FUNCTION_4();

  return swift_deallocClassInstance();
}

uint64_t LazyEntity.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v5 + 80);
  v16 = *(*v5 + 88);
  v17 = v7;
  type metadata accessor for LazyEntity.CodingKeys(255, v7, v16, a4);
  OUTLINED_FUNCTION_0_20();
  swift_getWitnessTable();
  v8 = sub_2179E9D30();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v21 = 0;
  v14 = v18;
  sub_2179E9CE0();
  if (!v14)
  {
    v19 = v5[4];
    v20 = 1;
    type metadata accessor for LazyLoader(0, v17, *(*(v16 + 8) + 8), *(*(v16 + 8) + 16));
    swift_getWitnessTable();
    sub_2179E9D20();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t LazyEntity.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  LazyEntity.init(from:)(a1);
  return v2;
}

void *LazyEntity.init(from:)(void *a1)
{
  OUTLINED_FUNCTION_3_8();
  type metadata accessor for LazyEntity.CodingKeys(255, *(v4 + 80), *(v4 + 88), v5);
  OUTLINED_FUNCTION_0_20();
  swift_getWitnessTable();
  sub_2179E9CD0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E90();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_2179E9C80();
    v1[3] = v7;
    v8 = OUTLINED_FUNCTION_5_11();
    type metadata accessor for LazyLoader(v8, v9, v10, v11);
    swift_getWitnessTable();
    sub_2179E9CC0();
    v13 = OUTLINED_FUNCTION_2_15();
    v14(v13);
    v1[4] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2179DD23C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LazyEntity.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t LazyEntity.saveChain(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  LazyLoader.load()(&v13 - v9);
  v11 = (*(*(*(*(v3 + 88) + 16) + 24) + 8))(a1, v5);
  (*(v7 + 8))(v10, v5);
  return v11;
}

_BYTE *sub_2179DD610(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2179DD730()
{
  result = qword_280B1CEE8[0];
  if (!qword_280B1CEE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B1CEE8);
  }

  return result;
}

uint64_t *sub_2179DD784()
{
  sub_2179E9100();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_8();
  v2 = *v0;
  v3 = *(v0 + 8);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  switch(*(v0 + 49))
  {
    case 1:
      LOWORD(v30) = *v0;
      v17 = sub_2179DDB00();
      MEMORY[0x21CEA9600](v17);

      v18 = 0x206D617267697274;
      v19 = 0xE800000000000000;
      goto LABEL_11;
    case 2:
      v30 = 0x3665646F63696E75;
      v31 = 0xEA00000000002031;
      LOBYTE(v23) = v2;
      v24 = v3;
      v25 = v5;
      v26 = v4;
      v27 = v6;
      v28 = v7;
      v9 = sub_2179DDCA0();
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_14_5();
      v23 = v13;
      v24 = v14;
      v25 = v16;
      v26 = v15;
      v9 = sub_2179DE19C();
      goto LABEL_10;
    default:
      v30 = 0x20726574726F70;
      v31 = 0xE700000000000000;
      if (v8 == 255)
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      else
      {
        v23 = v2;
        v24 = v3;
        v25 = v5;
        v26 = v4;
        v27 = v6;
        v28 = v7;
        v29 = v8 & 1;
        v9 = sub_2179DD9B4();
        v11 = v10;
      }

      v12 = v11;
LABEL_10:
      MEMORY[0x21CEA9600](v9, v12);

      v18 = v30;
      v19 = v31;
LABEL_11:
      v23 = v18;
      v24 = v19;
      sub_2179E90F0();
      sub_2179A4934();
      sub_2179E9A70();
      v20 = OUTLINED_FUNCTION_11_8();
      v21(v20);

      return &v23;
  }
}

void __swiftcall Unicode61TokenizerOptions.init(removeDiacritics:categories:tokenChars:separators:)(TeaDB::Unicode61TokenizerOptions *__return_ptr retstr, Swift::Bool_optional removeDiacritics, Swift::OpaquePointer categories, Swift::String_optional tokenChars, Swift::String_optional separators)
{
  retstr->removeDiacritics = removeDiacritics;
  retstr->categories = categories;
  retstr->tokenChars = tokenChars;
  retstr->separators = separators;
}

TeaDB::TrigramTokenizerOptions __swiftcall TrigramTokenizerOptions.init(removeDiacritics:caseSensitive:)(Swift::Bool_optional removeDiacritics, Swift::Bool_optional caseSensitive)
{
  v2->value = removeDiacritics.value;
  v2[1].value = caseSensitive.value;
  result.removeDiacritics = removeDiacritics;
  return result;
}

TeaDB::AsciiTokenizerOptions __swiftcall AsciiTokenizerOptions.init(tokenChars:separators:)(Swift::String_optional tokenChars, Swift::String_optional separators)
{
  *v2 = tokenChars;
  v2[1] = separators;
  result.separators = separators;
  result.tokenChars = tokenChars;
  return result;
}

uint64_t *sub_2179DD9B4()
{
  sub_2179E9100();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_8();
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  if (v0[6])
  {
    OUTLINED_FUNCTION_14_5();
    v14 = v7;
    v15 = v6;
    v16 = v9;
    v17 = v8;
    v10 = sub_2179DE19C();
  }

  else
  {
    v19 = 0x3665646F63696E75;
    v20 = 0xEA00000000002031;
    LOBYTE(v14) = v3;
    v15 = v2;
    v16 = v5;
    v17 = v4;
    v18 = *(v0 + 2);
    v10 = sub_2179DDCA0();
  }

  MEMORY[0x21CEA9600](v10);

  v14 = v19;
  v15 = v20;
  sub_2179E90F0();
  sub_2179A4934();
  sub_2179E9A70();
  v11 = OUTLINED_FUNCTION_11_8();
  v12(v11);

  return &v14;
}

uint64_t *sub_2179DDB00()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_2179E9B10();

    OUTLINED_FUNCTION_22_3();
    v18 = v5;
    v19 = v4;
    if (v1)
    {
      v6 = 49;
    }

    else
    {
      v6 = 48;
    }

    MEMORY[0x21CEA9600](v6, 0xE100000000000000);

    v7 = v18;
    v8 = v19;
    OUTLINED_FUNCTION_17_5();
    v3 = v9;
    v10 = *(v9 + 16);
    if (v10 >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_21();
      v3 = v15;
    }

    *(v3 + 16) = v10 + 1;
    v11 = v3 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  if (v2 != 2)
  {
    sub_2179E9B10();

    v18 = 0x6E65735F65736163;
    v19 = 0xEF20657669746973;
    if (v2)
    {
      v12 = 49;
    }

    else
    {
      v12 = 48;
    }

    MEMORY[0x21CEA9600](v12, 0xE100000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v3 = v16;
    }

    OUTLINED_FUNCTION_8_11();
    if (v13)
    {
      OUTLINED_FUNCTION_0_21();
      v3 = v17;
    }

    OUTLINED_FUNCTION_7_11();
  }

  v18 = v3;
  sub_2179A5088();
  sub_2179A4B34();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_18_5();
  return &v18;
}

uint64_t *sub_2179DDCA0()
{
  v1 = *v0;
  v2 = v0[1];
  v42 = v0[3];
  v3 = v0[5];
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  if (v1 != 2)
  {
    sub_2179E9B10();

    OUTLINED_FUNCTION_22_3();
    v46 = v7;
    v47 = v6;
    if (v1)
    {
      v8 = 50;
    }

    else
    {
      v8 = 48;
    }

    MEMORY[0x21CEA9600](v8, 0xE100000000000000);

    v9 = v46;
    v10 = v47;
    OUTLINED_FUNCTION_17_5();
    v5 = v11;
    v12 = *(v11 + 16);
    if (v12 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_21();
      v5 = v40;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  v14 = *(v2 + 16);
  if (v14)
  {
    v41 = v3;
    v46 = 0x69726F6765746163;
    v47 = 0xEB00000000207365;
    sub_2179A920C(0, v14, 0);
    v15 = (v2 + 32);
    v16 = v4;
    v17 = "L*";
    do
    {
      v19 = *v15++;
      v18 = v19;
      switch(v19 >> 5)
      {
        case 1:
          v20 = &v17[8 * (v18 & 0x1F)];
          break;
        case 2:
          v20 = &aM_1[8 * (v18 & 0x1F)];
          break;
        case 3:
          v20 = &aN_1[8 * (v18 & 0x1F)];
          break;
        case 4:
          v20 = &aP_1[8 * (v18 & 0x1F)];
          break;
        case 5:
          v20 = &aS_1[8 * (v18 & 0x1F)];
          break;
        case 6:
          v20 = &aZ_1[8 * (v18 & 0x1F)];
          break;
        default:
          v20 = &aC_1[8 * v18];
          break;
      }

      v21 = *v20;
      v44 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = v17;
        sub_2179A920C((v22 > 1), v23 + 1, 1);
        v17 = v25;
        v16 = v44;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = 0xE200000000000000;
      --v14;
    }

    while (v14);
    sub_2179A5088();
    sub_2179A4B34();
    sub_2179E95F0();

    v43 = 39;
    v45 = 0xE100000000000000;
    OUTLINED_FUNCTION_10_11();
    sub_2179A4934();
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_1_3();
    v26 = sub_2179E9A80();
    v28 = v27;

    MEMORY[0x21CEA9600](v26, v28);

    OUTLINED_FUNCTION_20_3();
    MEMORY[0x21CEA9600](39, 0xE100000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v5 = v34;
    }

    v3 = v41;
    OUTLINED_FUNCTION_8_11();
    if (v29)
    {
      OUTLINED_FUNCTION_0_21();
      v5 = v35;
    }

    OUTLINED_FUNCTION_7_11();
  }

  if (v42)
  {
    OUTLINED_FUNCTION_23_4(0x6168636E656B6F74);
    OUTLINED_FUNCTION_10_11();
    sub_2179A4934();
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_1_3();
    v30 = sub_2179E9A80();
    MEMORY[0x21CEA9600](v30);

    OUTLINED_FUNCTION_20_3();
    MEMORY[0x21CEA9600](v43, v45);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v5 = v36;
    }

    OUTLINED_FUNCTION_8_11();
    if (v29)
    {
      OUTLINED_FUNCTION_0_21();
      v5 = v37;
    }

    OUTLINED_FUNCTION_7_11();
  }

  if (v3)
  {
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_4(v31);
    OUTLINED_FUNCTION_10_11();
    sub_2179A4934();
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_1_3();
    v32 = sub_2179E9A80();
    MEMORY[0x21CEA9600](v32);

    OUTLINED_FUNCTION_20_3();
    MEMORY[0x21CEA9600](v43, v45);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v5 = v38;
    }

    OUTLINED_FUNCTION_8_11();
    if (v29)
    {
      OUTLINED_FUNCTION_0_21();
      v5 = v39;
    }

    OUTLINED_FUNCTION_7_11();
  }

  v46 = v5;
  sub_2179A5088();
  sub_2179A4B34();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_18_5();
  return &v46;
}

uint64_t *sub_2179DE19C()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    v4 = MEMORY[0x277D84F90];
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v14 = 0x6168636E656B6F74;
  v15 = 0xEB00000000207372;
  OUTLINED_FUNCTION_10_11();
  sub_2179A4934();
  OUTLINED_FUNCTION_1_3();
  v2 = sub_2179E9A80();
  MEMORY[0x21CEA9600](v2);

  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  MEMORY[0x21CEA9600](39, 0xE100000000000000);

  OUTLINED_FUNCTION_17_5();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_21();
    v4 = v11;
  }

  *(v4 + 16) = v5 + 1;
  v6 = v4 + 16 * v5;
  *(v6 + 32) = 0x6168636E656B6F74;
  *(v6 + 40) = 0xEB00000000207372;
  if (v1)
  {
LABEL_7:
    OUTLINED_FUNCTION_21_3();
    v14 = v7;
    v15 = 0xEB00000000207372;
    OUTLINED_FUNCTION_10_11();
    sub_2179A4934();
    OUTLINED_FUNCTION_1_3();
    v8 = sub_2179E9A80();
    MEMORY[0x21CEA9600](v8);

    MEMORY[0x21CEA9600](39, 0xE100000000000000);
    MEMORY[0x21CEA9600](39, 0xE100000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_16();
      v4 = v12;
    }

    OUTLINED_FUNCTION_8_11();
    if (v9)
    {
      OUTLINED_FUNCTION_0_21();
      v4 = v13;
    }

    OUTLINED_FUNCTION_7_11();
  }

LABEL_12:
  v14 = v4;
  sub_2179A5088();
  sub_2179A4B34();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_18_5();
  return &v14;
}

uint64_t Unicode61TokenizerOptions.categories.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Unicode61TokenizerOptions.tokenChars.setter()
{
  OUTLINED_FUNCTION_24_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Unicode61TokenizerOptions.separators.setter()
{
  OUTLINED_FUNCTION_24_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Special_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Special.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Letter_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Letter.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Mark_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Mark.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Number_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Number.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Punctuation_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Punctuation.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Symbol_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Symbol.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

TeaDB::Unicode61TokenizerOptions::UnicodeCategories::Separator_optional __swiftcall Unicode61TokenizerOptions.UnicodeCategories.Separator.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_14();
  sub_2179E9C70();
  result.value = OUTLINED_FUNCTION_15_5();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t AsciiTokenizerOptions.tokenChars.setter()
{
  OUTLINED_FUNCTION_24_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AsciiTokenizerOptions.separators.setter()
{
  OUTLINED_FUNCTION_24_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

unint64_t sub_2179DEB9C()
{
  result = qword_27CB98468;
  if (!qword_27CB98468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98468);
  }

  return result;
}

unint64_t sub_2179DEBF4()
{
  result = qword_27CB98470;
  if (!qword_27CB98470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98470);
  }

  return result;
}

unint64_t sub_2179DEC4C()
{
  result = qword_27CB98478;
  if (!qword_27CB98478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98478);
  }

  return result;
}

unint64_t sub_2179DECA4()
{
  result = qword_27CB98480;
  if (!qword_27CB98480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98480);
  }

  return result;
}

unint64_t sub_2179DECFC()
{
  result = qword_27CB98488;
  if (!qword_27CB98488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98488);
  }

  return result;
}

unint64_t sub_2179DED54()
{
  result = qword_27CB98490;
  if (!qword_27CB98490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98490);
  }

  return result;
}

unint64_t sub_2179DEDAC()
{
  result = qword_27CB98498;
  if (!qword_27CB98498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98498);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaDB13BaseTokenizerOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2179DEE48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 50))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 49);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179DEE88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2179DEF0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179DEF4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2179DEFCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2179DF00C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1A)
  {
    if (a2 + 230 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 230) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 231;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v5 >= 0x19)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 230 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 230) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x19)
  {
    v6 = ((a2 - 26) >> 8) + 1;
    *result = a2 - 26;
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
          *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2179DF218(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories.Punctuation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories.Punctuation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Unicode61TokenizerOptions.UnicodeCategories.Symbol(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2179DF540(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2179DF5C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179DF6A0(uint64_t a1, unsigned int a2)
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

uint64_t sub_2179DF6F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrigramTokenizerOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrigramTokenizerOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2179DF8F0()
{
  v1 = v0 + 16;
  v2 = *(*v0 + 88);
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_12(v4, v5, *(*(v3 + 104) + 8), v6);
  v29 = 3;
  sub_2179B4374(v2);
  OUTLINED_FUNCTION_14_6();
  v28 = v7;
  v26 = 0uLL;
  v27 = -1;
  OUTLINED_FUNCTION_4_17();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_4_17();
  v11 = *(v10 + 96);
  OUTLINED_FUNCTION_11_9();
  v19 = sub_2179D18E0(v12, v13, v14, v15, v16, v17, v18, v9, v11);

  v21 = sub_2179ABC9C(v19, v9, v11, v20);
  v23 = v22;

  sub_2179A70AC(v1, &v26);
  v24 = sub_2179AC76C(&v29, v21, v23, &v26);
  sub_2179AC7D4(v24);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179DFA30(uint64_t a1)
{
  v2 = v1 + 16;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(*v1 + 88);
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_12(v8, v9, *(*(v7 + 104) + 8), v10);
  v33 = 3;
  sub_2179B4374(v6);
  v32 = 0xF000000000000007;
  v30[0] = v3;
  v30[1] = v4;
  v31 = v5;
  sub_2179AEC5C(v3, v4);
  OUTLINED_FUNCTION_4_17();
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_4_17();
  v14 = *(v13 + 96);
  OUTLINED_FUNCTION_11_9();
  v22 = sub_2179D18E0(v15, v16, v17, v18, v19, v20, v21, v12, v14);

  sub_2179AEC68(v3, v4, v5);
  sub_2179ABC9C(v22, v12, v14, v23);
  OUTLINED_FUNCTION_8_12();

  sub_2179A70AC(v2, v30);
  OUTLINED_FUNCTION_7_12();
  v28 = sub_2179AC76C(v24, v25, v26, v27);
  sub_2179AC7D4(v28);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179DFCF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = v5 + 16;
  v7 = *v5;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(*v5 + 88);
  OUTLINED_FUNCTION_10_12(a1, a2, *(v7[13] + 8), a4);
  v13 = OUTLINED_FUNCTION_5_13();
  sub_2179B4374(v13);
  OUTLINED_FUNCTION_14_6();
  v31 = v14;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  sub_2179AEC5C(v9, v10);
  v15 = v7[10];
  v16 = v7[12];
  v17 = sub_2179D18E0(v12, &v31, &v28, a2, a3 & 1, a4, a5 & 1, v15, v16);

  sub_2179AEC68(v28, v29, v30);
  sub_2179ABC9C(v17, v15, v16, v18);
  OUTLINED_FUNCTION_8_12();

  sub_2179A70AC(v8, &v28);
  OUTLINED_FUNCTION_7_12();
  v23 = sub_2179AC76C(v19, v20, v21, v22);
  sub_2179AC7D4(v23);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179DFE80(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v25 = a4;
  v8 = (v6 + 2);
  v7 = *v6;
  v9 = *a1;
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  OUTLINED_FUNCTION_10_12(a1, a2, *(*(*v6 + 104) + 8), a4);
  v13 = OUTLINED_FUNCTION_5_13();
  v14 = sub_2179B4374(v13);
  v31 = v9;
  v29[0] = v10;
  v29[1] = v11;
  v30 = v12;
  v15 = *(v7 + 80);
  v16 = *(v7 + 96);

  v17 = sub_2179D18E0(v14, &v31, v29, a3, v25 & 1, a5, a6 & 1, v15, v16);

  sub_2179B0CEC(v31);
  sub_2179ABC9C(v17, v15, v16, v18);
  OUTLINED_FUNCTION_8_12();

  sub_2179A70AC(v8, v29);
  OUTLINED_FUNCTION_7_12();
  v23 = sub_2179AC76C(v19, v20, v21, v22);
  sub_2179AC7D4(v23);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t SearchTable.Query.all()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_15_1();
  type metadata accessor for Statement(v5, v6, v7, v8);
  v25 = 3;
  v24 = 0xF000000000000007;
  *&v23[0] = 0;
  WORD4(v23[0]) = 255;
  OUTLINED_FUNCTION_3_16();
  v16 = sub_2179D1E78(v9, v10, v11, v12, v13, v14, v15, v2, v3);
  v18 = sub_2179ABC9C(v16, v2, v4, v17);
  v20 = v19;

  sub_2179A70AC(v1, v23);
  v21 = sub_2179AC76C(&v25, v18, v20, v23);
  sub_2179AC7D4(v21);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

void SearchTable.Query.first(order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_3();
  a26 = v28;
  a27 = v29;
  v31 = *v30;
  v32 = *(v30 + 4);
  v34 = *(v33 + 16);
  v35 = *(*(v33 + 24) + 8);
  v36 = OUTLINED_FUNCTION_15_1();
  type metadata accessor for Statement(v36, v37, v38, v39);
  OUTLINED_FUNCTION_13();
  a15 = 0xF000000000000007;
  *&a11 = v31;
  WORD4(a11) = v32;
  v44 = OUTLINED_FUNCTION_1_22(v40, v41, v42, v43);
  v46 = sub_2179ABC9C(v44, v34, v35, v45);
  v48 = v47;

  OUTLINED_FUNCTION_18_6(v49, v50, v51, v52);
  v53 = sub_2179AC76C(&a17, v46, v48, &a11);
  sub_2179AC7D4(v53);
  OUTLINED_FUNCTION_11_10();
  if (!v27)
  {
    *&a11 = v46;
    OUTLINED_FUNCTION_15_1();
    v54 = sub_2179E9840();
    OUTLINED_FUNCTION_0_22(v54);
    sub_2179E98C0();
  }

  OUTLINED_FUNCTION_10_0();
}

uint64_t sub_2179E0BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Bool.queryValue.getter(char a1)
{
  if (a1)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t Bool.valueType.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t Assertion.__allocating_init(name:)(_BYTE *a1)
{
  OUTLINED_FUNCTION_0_23();
  *(swift_allocObject() + 16) = *a1;
  sub_21799AD84();
  if (v1)
  {
  }

  return OUTLINED_FUNCTION_1_23();
}

uint64_t Assertion.Name.hashValue.getter()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t Assertion.__allocating_init()()
{
  OUTLINED_FUNCTION_0_23();
  *(swift_allocObject() + 16) = 0;
  sub_21799AD84();
  if (v0)
  {
  }

  return OUTLINED_FUNCTION_1_23();
}

uint64_t Assertion.init()()
{
  *(v0 + 16) = 0;
  sub_21799AD84();
  if (v1)
  {
  }

  return OUTLINED_FUNCTION_1_23();
}

uint64_t Assertion.init(name:)(_BYTE *a1)
{
  *(v1 + 16) = *a1;
  sub_21799AD84();
  if (v2)
  {
  }

  return OUTLINED_FUNCTION_1_23();
}

_BYTE *storeEnumTagSinglePayload for Assertion.Name(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179E0F70(uint64_t a1, unint64_t a2)
{
  v3 = sub_2179E0FBC(a1, a2);
  sub_2179E10D4(&unk_282993BD8);
  return v3;
}

uint64_t sub_2179E0FBC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2179E9730())
  {
    result = sub_2179E11B8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2179E9AE0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2179E9B50();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2179E10D4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2179E122C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2179E11B8(uint64_t a1, uint64_t a2)
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

  sub_21799DC40(0, &qword_280B1C958, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2179E122C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21799DC40(0, &qword_280B1C958, MEMORY[0x277D84B78]);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_2179E1324(uint64_t a1)
{
  sub_2179E1380(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2179E1380(uint64_t a1)
{
  if (!qword_280B1C980)
  {
    sub_21799AED8(255, &qword_280B1C988, 0x277D82BB8);
    v1 = sub_2179E9A60();
    if (!v2)
    {
      atomic_store(v1, &qword_280B1C980);
    }
  }
}

uint64_t sub_2179E13E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2179E1428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2179E1478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v11 = *(a6 + 16);
  v12 = v11(a4, a6);
  swift_beginAccess();
  v13 = *(v12 + 32);
  v45 = *(v12 + 24);

  v46 = v13;
  if (!v13)
  {
    v14 = v8;
    v15 = v11(v8, a6);
    swift_beginAccess();
    v16 = a1;
    v17 = *(v15 + 48);
    v18 = *(v15 + 56);
    v19 = *(v15 + 64);
    sub_2179CA2C0(v17, v18, *(v15 + 64));

    if (v19 == 255)
    {

      updated = type metadata accessor for UpdateCommand.Errors(0, a3, a5, v41);
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
      (*(*(v14 - 8) + 8))(v16, v14);
      return updated;
    }

    v45 = sub_2179E56A8(v17, v18, v19 & 1);
    v46 = v20;
    sub_2179A7E34(v17, v18, v19);
    v8 = v14;
    a1 = v16;
  }

  v42 = (*(a5 + 32))(a3, a5);
  v43 = v21;
  v44 = v8;
  v22 = sub_2179A32C4(v8);
  result = sub_2179E18AC(a2);
  v24 = result;
  v25 = 0;
  v48 = v22;
  v50 = *(v22 + 16);
  v47 = v22 + 32;
  v26 = result + 56;
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v50)
    {

      updated = sub_2179E196C(v42, v43, v45, v46, v27);

      (*(*(v44 - 8) + 8))(a1);
      return updated;
    }

    if (v25 >= *(v48 + 16))
    {
      break;
    }

    v28 = a1;
    v29 = v25 + 1;
    sub_2179A9940(v47 + 56 * v25, v55);
    if (*(v24 + 16))
    {
      v30 = v55[0];
      sub_2179E9E20();
      sub_2179E96C0();
      v31 = sub_2179E9E40();
      v32 = ~(-1 << *(v24 + 32));
      while (1)
      {
        v33 = v31 & v32;
        if (((*(v26 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
        {
          break;
        }

        v34 = (*(v24 + 48) + 16 * v33);
        if (*v34 != v30 || v34[1] != *(&v30 + 1))
        {
          v36 = sub_2179E9D70();
          v31 = v33 + 1;
          if ((v36 & 1) == 0)
          {
            continue;
          }
        }

        v51 = v55[0];
        v52 = v55[1];
        v53 = v55[2];
        v54 = v56;
        result = swift_isUniquelyReferenced_nonNull_native();
        v57 = v27;
        if ((result & 1) == 0)
        {
          result = sub_2179A90BC(0, *(v27 + 16) + 1, 1);
          v27 = v57;
        }

        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        if (v38 >= v37 >> 1)
        {
          result = sub_2179A90BC((v37 > 1), v38 + 1, 1);
          v27 = v57;
        }

        *(v27 + 16) = v38 + 1;
        v39 = v27 + 56 * v38;
        *(v39 + 80) = v54;
        *(v39 + 48) = v52;
        *(v39 + 64) = v53;
        *(v39 + 32) = v51;
        goto LABEL_21;
      }
    }

    result = sub_2179AE2FC(v55);
LABEL_21:
    v25 = v29;
    a1 = v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_2179E18AC(uint64_t a1)
{
  result = MEMORY[0x21CEA9790](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2179E1D80(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_2179E196C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_2179A7E4C();
  v7 = v6;
  v8 = *(v6 + 16);
  v9 = v8 + 1;
  if (v8 >= *(v6 + 24) >> 1)
  {
LABEL_27:
    sub_2179A7E4C();
    v7 = v37;
  }

  *(v7 + 16) = v9;
  v10 = v7 + 16 * v8;
  *(v10 + 32) = 0x455441445055;
  *(v10 + 40) = 0xE600000000000000;
  v11 = *(v7 + 24);
  v12 = v8 + 2;

  if ((v8 + 2) > (v11 >> 1))
  {
    sub_2179A7E4C();
    v7 = v38;
  }

  v8 = 0;
  *(v7 + 16) = v12;
  v13 = v7 + 16 * v9;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v40 = a5 + 32;
  v14 = *(a5 + 16);
  while (1)
  {
    if (v8 == v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0uLL;
      v8 = v14;
      v18 = 0uLL;
      v19 = 0uLL;
    }

    else
    {
      if (v8 >= v14)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_26;
      }

      v46 = v8;
      sub_2179A9940(v40 + 56 * v8, &v47);
      v16 = v46;
      v15 = v47;
      v17 = v48[0];
      v18 = v48[1];
      ++v8;
      v19 = v48[2];
    }

    v49[0] = v16;
    v49[1] = v15;
    v50[0] = v17;
    v50[1] = v18;
    v9 = v17;
    v50[2] = v19;
    if (!v17)
    {
      break;
    }

    sub_2179A0D5C((v50 + 8), v45);
    v46 = v15;
    v47 = v9;
    sub_2179A0D5C(v45, v48);
    if (v16)
    {
      v20 = 44;
    }

    else
    {
      v20 = 5522771;
    }

    if (v16)
    {
      v21 = 0xE100000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = *(v7 + 16);
    if (v22 >= *(v7 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v30;
    }

    *(v7 + 16) = v22 + 1;
    v23 = v7 + 16 * v22;
    *(v23 + 32) = v20;
    *(v23 + 40) = v21;
    v24 = sub_2179C9430(v15, v9, v48, a3, a4, a1, a2);
    v26 = v25;

    MEMORY[0x21CEA9600](2112800, 0xE300000000000000);
    MEMORY[0x21CEA9600](v24, v26);

    v27 = v15;
    v28 = *(v7 + 16);
    a5 = v28 + 1;
    if (v28 >= *(v7 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v31;
    }

    *(v7 + 16) = a5;
    v29 = v7 + 16 * v28;
    *(v29 + 32) = v27;
    *(v29 + 40) = v9;
    sub_2179AE2FC(&v46);
  }

  strcpy(v49, "WHERE id = '");
  BYTE5(v49[1]) = 0;
  HIWORD(v49[1]) = -5120;
  MEMORY[0x21CEA9600](a3, a4);
  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  v32 = v49[0];
  v33 = v49[1];
  v34 = *(v7 + 16);
  if (v34 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v39;
  }

  *(v7 + 16) = v34 + 1;
  v35 = v7 + 16 * v34;
  *(v35 + 32) = v32;
  *(v35 + 40) = v33;
  return v7;
}

uint64_t sub_2179E1D1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2179EB920;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_2179E1D80(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2179E9E20();
  sub_2179E96C0();
  v8 = sub_2179E9E40();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2179E9D70() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2179E211C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2179E1ECC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2179E25F8();
  result = sub_2179E9AC0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2179E1D1C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2179E9E20();
    sub_2179E96C0();
    result = sub_2179E9E40();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2179E211C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2179E1ECC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2179E23D0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2179E9E20();
      sub_2179E96C0();
      result = sub_2179E9E40();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2179E9D70() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2179E2284();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2179E9DC0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2179E2284()
{
  v1 = v0;
  sub_2179E25F8();
  v2 = *v0;
  v3 = sub_2179E9AB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2179E23D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2179E25F8();
  result = sub_2179E9AC0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2179E9E20();

        sub_2179E96C0();
        result = sub_2179E9E40();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_2179E25F8()
{
  if (!qword_27CB98500[0])
  {
    v0 = sub_2179E9AD0();
    if (!v1)
    {
      atomic_store(v0, qword_27CB98500);
    }
  }
}

_BYTE *sub_2179E2650(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179E26EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CGSize.init(valueType:connection:)(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    goto LABEL_18;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  v21[0] = 44;
  v21[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](a1);
  v18 = v21;

  v5 = sub_2179D12B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_2179D1638, &v17, v3, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = a2;
    v21[0] = MEMORY[0x277D84F90];
    sub_2179C2118(0, v6, 0);
    v7 = v21[0];
    v8 = v5 + 56;
    do
    {

      v9 = sub_2179E9870();
      v11 = v10;
      v21[0] = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2179C2118((v12 > 1), v13 + 1, 1);
        v7 = v21[0];
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11 & 1;
      v8 += 32;
      --v6;
    }

    while (v6);

    a2 = v20;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v15 = *(v7 + 16);
  if (!v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((*(v7 + 40) & 1) == 0)
  {
    if (v15 != 1)
    {
      if ((*(v7 + 56) & 1) == 0)
      {

        sub_2179AC53C(v3, v4, 0);
        return __swift_destroy_boxed_opaque_existential_1(a2);
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  v19 = 0;
  v18 = 28;
  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t CGSize.valueType.getter@<X0>(uint64_t a2@<X8>)
{
  v8 = sub_2179E9850();
  v9 = v5;
  MEMORY[0x21CEA9600](44, 0xE100000000000000);
  v6 = sub_2179E9850();
  MEMORY[0x21CEA9600](v6);

  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_2179E2A48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = CGSize.init(valueType:connection:)(a1, a2);
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_2179E2A70(uint64_t a1)
{
  *(a1 + 8) = sub_2179E2AD8(&qword_27CB98590, MEMORY[0x277CBF2A0]);
  result = sub_2179E2AD8(&qword_27CB98598, MEMORY[0x277CBF288]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2179E2AD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SearchColumn.name.getter()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 16);

  os_unfair_lock_unlock((v0 + 64));
  return v1;
}

uint64_t SearchColumn.unindexed.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 64));
  return v2;
}

double SearchColumn.weight.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 32);
  os_unfair_lock_unlock((v1 + 64));
  return v2;
}

uint64_t sub_2179E2BD8(uint64_t **a1)
{
  v3 = *v1;
  v4 = v1[2];
  os_unfair_lock_lock((v4 + 64));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 64));
  a1[3] = v3;
  a1[4] = &off_282997D08;
  *a1 = v1;

  return v5;
}

uint64_t sub_2179E2C70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchColumn.wrappedValue.setter(v1, v2);
}

uint64_t SearchColumn.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 16);
  sub_2179E2D60(&v3[4]);
  os_unfair_lock_unlock(v3 + 16);
}

uint64_t sub_2179E2D10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  return result;
}

uint64_t (*SearchColumn.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_6_13();
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);

  os_unfair_lock_unlock((v2 + 64));
  *a1 = v5;
  a1[1] = v4;
  return sub_2179E2DE0;
}

uint64_t sub_2179E2DE0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return SearchColumn.wrappedValue.setter(*a1, v2);
  }

  SearchColumn.wrappedValue.setter(v3, v2);
}

uint64_t SearchColumn.__allocating_init(name:weight:unindexed:)()
{
  OUTLINED_FUNCTION_5_14();
  v0 = swift_allocObject();
  SearchColumn.init(name:weight:unindexed:)();
  return v0;
}

uint64_t SearchColumn.init(name:weight:unindexed:)()
{
  OUTLINED_FUNCTION_5_14();
  sub_2179E2F14(0);
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0xE000000000000000;
  *(v1 + 16) = v5;
  return v1;
}

void sub_2179E2F14(uint64_t a1)
{
  if (!qword_280B1C970)
  {
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_2179E9B40();
    if (!v2)
    {
      atomic_store(v1, &qword_280B1C970);
    }
  }
}

uint64_t SearchColumn.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2179E2FD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_3_17(1701667182, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_3_17(0x746867696577, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657865646E696E75 && a2 == 0xE900000000000064;
      if (v7 || (OUTLINED_FUNCTION_3_17(0x657865646E696E75, 0xE900000000000064) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_3_17(0x65756C6176, 0xE500000000000000);

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2179E30FC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x746867696577;
      break;
    case 2:
      result = 0x657865646E696E75;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2179E3198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179E2FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179E31CC(uint64_t a1)
{
  v2 = sub_2179E3604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179E3208(uint64_t a1)
{
  v2 = sub_2179E3604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchColumn.__allocating_init(from:)(void *a1)
{
  v3 = OUTLINED_FUNCTION_1_1();
  sub_2179E38A0(v3, v4, v5);
  v37 = v6;
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E3604();
  sub_2179E9E90();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v35;
    v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = a1;
    v40 = 0;
    v13 = v37;
    v14 = v10;
    v15 = sub_2179E9C80();
    v17 = v16;
    v39 = 1;
    sub_2179E9CA0();
    v19 = v18;
    v38 = 2;
    v21 = sub_2179E9C90();
    v22 = v15;
    v11 = swift_allocObject();
    sub_2179E2F14(0);
    v23 = swift_allocObject();
    *(v23 + 64) = 0;
    v31 = (v23 + 64);
    *(v23 + 16) = v22;
    v32 = v23 + 16;
    *(v23 + 24) = v17;
    *(v23 + 32) = v19;
    *(v23 + 40) = v21 & 1;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0xE000000000000000;
    *(v11 + 16) = v23;
    v24 = v33;
    (*(v12 + 16))(v33, v14, v13);
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = swift_allocObject();
    v27 = (*(v12 + 32))(v26 + v25, v24, v13);
    v36 = &v31;
    MEMORY[0x28223BE20](v27);
    *(&v31 - 2) = sub_2179E36C0;
    *(&v31 - 1) = v26;
    v28 = v31;
    os_unfair_lock_lock(v31);
    sub_2179E3780(v32);
    os_unfair_lock_unlock(v28);

    v29 = OUTLINED_FUNCTION_1_24();
    v30(v29);

    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return v11;
}

unint64_t sub_2179E3604()
{
  result = qword_27CB985A8;
  if (!qword_27CB985A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB985A8);
  }

  return result;
}

uint64_t sub_2179E36C0()
{
  v0 = OUTLINED_FUNCTION_1_1();
  sub_2179E38A0(v0, v1, v2);
  return sub_2179E3658();
}

uint64_t sub_2179E372C(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    v6 = result;
    v7 = v5;

    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
  }

  return result;
}

uint64_t SearchColumn.encode(to:)(void *a1)
{
  v2 = v1;
  sub_2179E38A0(0, &qword_27CB985B0, MEMORY[0x277D84538]);
  swift_allocBox();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E3604();
  sub_2179E9EB0();
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 64));

  sub_2179E3AAC((v4 + 16));
  os_unfair_lock_unlock((v4 + 64));
}

void sub_2179E38A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179E3604();
    v7 = a3(a1, &unk_282997DF8, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2179E3904(double *a1, uint64_t a2)
{
  sub_2179E38A0(0, &qword_27CB985B0, MEMORY[0x277D84538]);
  swift_projectBox();
  swift_beginAccess();
  sub_2179E9CE0();
  result = swift_endAccess();
  if (!v2)
  {
    swift_beginAccess();
    sub_2179E9D00();
    swift_endAccess();
    swift_beginAccess();
    sub_2179E9CF0();
    swift_endAccess();
    swift_beginAccess();
    sub_2179E9CE0();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2179E3AAC(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t sub_2179E3AF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchColumn.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2179E3B44()
{
  OUTLINED_FUNCTION_6_13();
  v1 = *(v0 + 48);

  os_unfair_lock_unlock((v0 + 64));
  return v1;
}

uint64_t static SearchColumn.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock((v3 + 64));
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);

  os_unfair_lock_unlock((v3 + 64));
  v6 = *(a2 + 16);
  os_unfair_lock_lock((v6 + 64));
  v8 = *(v6 + 48);
  v7 = *(v6 + 56);

  os_unfair_lock_unlock((v6 + 64));
  if (v5 == v8 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2179E9D70();
  }

  return v10 & 1;
}

void sub_2179E3C84(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_13();
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);

  os_unfair_lock_unlock((v1 + 64));
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
}

void sub_2179E3CCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 255)
  {
    v7 = *(v1 + 16);
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    if (v2 != 5 || *a1 != 0)
    {
      v6 = *(v1 + 16);
      MEMORY[0x28223BE20](a1);
      sub_2179E4228(v3, v4, v2);
      os_unfair_lock_lock(v6 + 16);
      sub_2179E4204(&v6[4]);
      os_unfair_lock_unlock(v6 + 16);
      sub_2179AA22C(v3, v4, v2);
      return;
    }

    v7 = *(v1 + 16);
    sub_2179E4228(0, 0, 5);
    sub_2179AC430(0, 0, 5);
  }

  os_unfair_lock_lock((v7 + 64));
  *(v7 + 48) = 0;
  *(v7 + 56) = 0xE000000000000000;

  os_unfair_lock_unlock((v7 + 64));
}

uint64_t sub_2179E3E10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  else
  {

    v5 = sub_2179E9770();
    v7 = v6;

    *(a1 + 32) = v5;
    *(a1 + 40) = v7;
  }

  return result;
}

uint64_t SearchColumn.saveChain(for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 16);

  os_unfair_lock_unlock(v1 + 16);

  return 0;
}

_BYTE *sub_2179E4014(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2179E4100()
{
  result = qword_27CB985B8;
  if (!qword_27CB985B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB985B8);
  }

  return result;
}

unint64_t sub_2179E4158()
{
  result = qword_27CB985C0;
  if (!qword_27CB985C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB985C0);
  }

  return result;
}

unint64_t sub_2179E41B0()
{
  result = qword_27CB985C8[0];
  if (!qword_27CB985C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB985C8);
  }

  return result;
}

uint64_t sub_2179E4228(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179AC430(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2179E4240@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_2179E42C4()
{
  result = qword_280B1DBA0;
  if (!qword_280B1DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DBA0);
  }

  return result;
}

unint64_t sub_2179E431C()
{
  result = qword_280B1DB98;
  if (!qword_280B1DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DB98);
  }

  return result;
}

uint64_t sub_2179E43C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_2179E43F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

TeaDB::AssertionOptions sub_2179E44A8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AssertionOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2179E44E8@<X0>(uint64_t *a1@<X8>)
{
  result = AssertionOptions.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2179E4520()
{
  result = qword_280B1DBF8;
  if (!qword_280B1DBF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280B1DBF8);
  }

  return result;
}

uint64_t JSON.valueType.getter@<X0>(uint64_t a2@<X8>)
{
  sub_2179E90E0();
  swift_allocObject();
  sub_2179E90D0();
  v3 = sub_2179E90C0();
  v5 = v4;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = 4;
  return result;
}

uint64_t sub_2179E4678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179D2330(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2179E46B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179E4704(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t JSON.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v11 = a2[2];
  type metadata accessor for JSON.CodingKeys(255, v11, v3, a2[4]);
  OUTLINED_FUNCTION_1_25();
  swift_getWitnessTable();
  v4 = sub_2179E9D30();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  sub_2179E9D20();
  return (*(v6 + 8))(v9, v4);
}

uint64_t JSON.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  OUTLINED_FUNCTION_2();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSON.CodingKeys(255, v12, v13, v14);
  OUTLINED_FUNCTION_1_25();
  swift_getWitnessTable();
  v40 = sub_2179E9CD0();
  OUTLINED_FUNCTION_2();
  v35 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v36 = a2;
  v38 = a3;
  v19 = type metadata accessor for JSON(0, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v33 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v41;
  sub_2179E9E90();
  if (!v24)
  {
    v32 = v23;
    v41 = v19;
    v26 = v35;
    v25 = v36;
    v27 = v37;
    v28 = v39;
    sub_2179E9CC0();
    (*(v26 + 8))(v18, v40);
    v29 = v32;
    (*(v27 + 32))(v32, v28, v25);
    (*(v33 + 32))(v34, v29, v41);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *sub_2179E4BCC(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179E4E08(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = *(*v6 + 80);
  v9 = *(*v6 + 88);
  type metadata accessor for Statement(0, v8, *(v9 + 24), a4);
  v15 = 2;
  if (a1)
  {
    sub_2179E9B10();

    *&v14[0] = 0xD000000000000015;
    *(&v14[0] + 1) = 0x80000002179F0420;
  }

  else
  {
    *&v14[0] = 0x42415420504F5244;
    *(&v14[0] + 1) = 0xEB0000000020454CLL;
  }

  v10 = (*(v9 + 32))(v8, v9);
  MEMORY[0x21CEA9600](v10);

  MEMORY[0x21CEA9600](59, 0xE100000000000000);
  v11 = v14[0];
  sub_2179A70AC(v6 + 16, v14);
  v12 = sub_2179AC76C(&v15, v11, *(&v11 + 1), v14);
  sub_2179AC7D4(v12);

  if (!v5)
  {
  }

  return result;
}

uint64_t Drop.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_2179E5094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v55 = v6;
  v11 = *v6;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v15 + 16))
  {
    v16 = sub_2179A32C4(a3);
    v58 = 1;
    (*(v12 + 16))(v14, a1, a3);
    v18 = *(v11 + 80);
    v17 = *(v11 + 88);

    v19 = sub_2179E1478(v14, a2, v18, a3, v17, a4);
    if (v5)
    {
LABEL_3:
    }

    else
    {
      v21 = v19;
      v52 = 0;
      type metadata accessor for Statement(0, v18, *(v17 + 24), v20);
      v23 = sub_2179E1CA4(v21, v18, v17, v22);
      v25 = v24;

      sub_2179A70AC((v55 + 2), &v56);
      v51 = sub_2179AC76C(&v58, v23, v25, &v56);
      v26 = *(v16 + 16);
      if (v26)
      {
        v53 = a3;
        v54 = a4;
        v58 = MEMORY[0x277D84F90];
        sub_2179A9394(0, v26, 0);
        v27 = 0;
        v28 = v58;
        v29 = v16;
        v30 = v16 + 32;
        while (v27 < *(v29 + 16))
        {
          sub_2179A9940(v30, &v56);
          v32 = sub_2179B74E4(v56, *(&v56 + 1), v57, v55);
          if (v32)
          {
            v33 = v31;
            v34 = swift_allocObject();
            *(v34 + 16) = v32;
            *(v34 + 24) = v33;
            v32 = sub_2179D006C;
          }

          else
          {
            v34 = 0;
          }

          sub_2179AE2FC(&v56);
          v58 = v28;
          v36 = *(v28 + 16);
          v35 = *(v28 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_2179A9394((v35 > 1), v36 + 1, 1);
            v28 = v58;
          }

          ++v27;
          *(v28 + 16) = v36 + 1;
          v37 = v28 + 16 * v36;
          *(v37 + 32) = v32;
          *(v37 + 40) = v34;
          v30 += 56;
          if (v26 == v27)
          {

            goto LABEL_15;
          }
        }

LABEL_29:
        __break(1u);
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
LABEL_15:
        v38 = 0;
        v39 = *(v28 + 16);
        v40 = MEMORY[0x277D84F90];
LABEL_16:
        v41 = (v28 + 32 + 16 * v38);
        while (v39 != v38)
        {
          if (v38 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_29;
          }

          ++v38;
          v42 = v41 + 2;
          v43 = *v41;
          v41 += 2;
          if (v43)
          {
            v44 = *(v42 - 1);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2179A94A4();
              v40 = v47;
            }

            v45 = *(v40 + 16);
            if (v45 >= *(v40 + 24) >> 1)
            {
              sub_2179A94A4();
              v40 = v48;
            }

            *(v40 + 16) = v45 + 1;
            v46 = v40 + 16 * v45;
            *(v46 + 32) = v43;
            *(v46 + 40) = v44;
            goto LABEL_16;
          }
        }

        sub_2179A9E30(v40);

        v50 = v52;
        sub_2179AC7D4(v49);

        if (!v50)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

uint64_t Update.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2179E55E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE3 && *(a1 + 17))
    {
      v2 = *a1 + 226;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0x1D)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179E5620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *(result + 16) = 0;
    *result = a2 - 227;
    *(result + 8) = 0;
    if (a3 >= 0xE3)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
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

uint64_t sub_2179E5664(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x1D)
  {
    *result = a2 - 29;
    *(result + 8) = 0;
    LOBYTE(a2) = 29;
  }

  *(result + 16) = a2;
  return result;
}

void (*sub_2179E56A8(void (*a1)(void *__return_ptr), uint64_t a2, char a3))(void *__return_ptr)
{
  v3 = a1;
  if (a3)
  {
    a1(&v5);
    return v5;
  }

  else
  {
  }

  return v3;
}

uint64_t sub_2179E56FC()
{
  v17 = sub_2179E9E70();
  v16 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v1 = &v14 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v19 + 1) = &type metadata for RawEntity;
  sub_2179E9E50();
  v15 = v1;
  sub_2179E9E60();
  sub_2179E9C00();

  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2179E9C60();
    v25 = v18;
    v26[0] = v19;
    v26[1] = v20;
    if (!*(&v20 + 1))
    {
      break;
    }

    v3 = v25;
    sub_2179AD670(v26, v24);
    if (*(&v3 + 1))
    {
      sub_2179AD43C(v24, v22);
      sub_21799AC4C(0, qword_280B1E498, &protocol descriptor for ColumnCodable);
      if (swift_dynamicCast())
      {
        sub_2179A0D5C(&v18, v23);
        v18 = v3;
        sub_2179A70AC(v23, &v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2179ADDC4(0, v2[2] + 1, 1, v2);
          v2 = v10;
        }

        v5 = v2[2];
        v4 = v2[3];
        if (v5 >= v4 >> 1)
        {
          sub_2179ADDC4(v4 > 1, v5 + 1, 1, v2);
          v2 = v11;
        }

        __swift_destroy_boxed_opaque_existential_1(v23);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v2[2] = v5 + 1;
        v6 = &v2[7 * v5];
        v7 = v18;
        v8 = v19;
        v9 = v20;
        v6[10] = v21;
        *(v6 + 3) = v8;
        *(v6 + 4) = v9;
        *(v6 + 2) = v7;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v24);

        *&v20 = 0;
        v19 = 0u;
        v18 = 0u;
        sub_2179A87AC(&v18, sub_2179E7634);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v12 = sub_2179AAA9C(v2);

  (*(v16 + 8))(v15, v17);
  return v12;
}

uint64_t sub_2179E5A0C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_2179A7E4C();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10 >= *(v8 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v25;
  }

  *(v9 + 16) = v10 + 1;
  v11 = v9 + 16 * v10;
  *(v11 + 32) = 0x455441455243;
  *(v11 + 40) = 0xE600000000000000;
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  v14 = (*(v13 + 56))(v12, v13);
  v15 = *(v9 + 16);
  if (v14)
  {
    v16 = v15 + 1;
    if (v15 >= *(v9 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v28;
    }

    *(v9 + 16) = v16;
    v17 = v9 + 16 * v15;
    *(v17 + 32) = 0x455551494E55;
    *(v17 + 40) = 0xE600000000000000;
  }

  else
  {
    v16 = *(v9 + 16);
  }

  v18 = v16 + 1;
  if (v16 >= *(v9 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v26;
  }

  *(v9 + 16) = v18;
  v19 = v9 + 16 * v16;
  *(v19 + 32) = 0x5845444E49;
  *(v19 + 40) = 0xE500000000000000;
  if (a4)
  {
    v20 = v16 + 2;
    if (v20 > *(v9 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v29;
    }

    *(v9 + 16) = v20;
    v21 = v9 + 16 * v18;
    strcpy((v21 + 32), "IF NOT EXISTS");
    *(v21 + 46) = -4864;
  }

  sub_2179E9B10();

  MEMORY[0x21CEA9600](a1, a2);
  MEMORY[0x21CEA9600](542002976, 0xE400000000000000);
  MEMORY[0x21CEA9600](0x65765F656C626174, 0xEE00736E6F697372);
  MEMORY[0x21CEA9600](10272, 0xE200000000000000);
  MEMORY[0x21CEA9600](a1, a2);

  MEMORY[0x21CEA9600](15145, 0xE200000000000000);
  v22 = *(v9 + 16);
  if (v22 >= *(v9 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v27;
  }

  *(v9 + 16) = v22 + 1;
  v23 = v9 + 16 * v22;
  *(v23 + 32) = 0xD000000000000015;
  *(v23 + 40) = 0x80000002179F0530;
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t sub_2179E5D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  sub_2179A7E4C();
  v17 = v16;
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    v63 = OUTLINED_FUNCTION_10(v18);
    OUTLINED_FUNCTION_15(v63, v19 + 1);
    v17 = v64;
    v18 = *(v64 + 24);
    v20 = v18 >> 1;
  }

  *(v17 + 16) = v21;
  v22 = v17 + 16 * v19;
  *(v22 + 32) = 0x5443454C4553;
  *(v22 + 40) = 0xE600000000000000;
  v23 = v19 + 2;
  if (v20 < (v19 + 2))
  {
    OUTLINED_FUNCTION_1_28(v18);
    sub_2179A7E4C();
    v17 = v65;
  }

  *(v17 + 16) = v23;
  v24 = v17 + 16 * v21;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  v25 = *(v17 + 24);
  v26 = v19 + 3;
  if ((v19 + 3) > (v25 >> 1))
  {
    v66 = OUTLINED_FUNCTION_10(v25);
    OUTLINED_FUNCTION_15(v66, v19 + 3);
    v17 = v67;
  }

  *(v17 + 16) = v26;
  v27 = v17 + 16 * v23;
  *(v27 + 32) = 1297044038;
  *(v27 + 40) = 0xE400000000000000;
  v28 = *(v17 + 24);
  v29 = v19 + 4;
  if ((v19 + 4) > (v28 >> 1))
  {
    v68 = OUTLINED_FUNCTION_10(v28);
    OUTLINED_FUNCTION_15(v68, v19 + 4);
    v17 = v69;
  }

  *(v17 + 16) = v29;
  v30 = v17 + 16 * v26;
  strcpy((v30 + 32), "table_versions");
  *(v30 + 47) = -18;
  if (a4)
  {
    v31 = *(v17 + 24);
    v32 = v19 + 5;
    if ((v19 + 5) > (v31 >> 1))
    {
      v70 = OUTLINED_FUNCTION_10(v31);
      OUTLINED_FUNCTION_15(v70, v19 + 5);
      v17 = v71;
    }

    *(v17 + 16) = v32;
    v33 = v17 + 16 * v29;
    *(v33 + 32) = 0x4552454857;
    *(v33 + 40) = 0xE500000000000000;
    v34 = *(v17 + 24);
    if ((v19 + 6) > (v34 >> 1))
    {
      OUTLINED_FUNCTION_1_28(v34);
      sub_2179A7E4C();
      v17 = v72;
    }

    *(v17 + 16) = v19 + 6;
    v35 = v17 + 16 * v32;
    *(v35 + 32) = a3;
    *(v35 + 40) = a4;
  }

  if (a6)
  {
    v37 = *(v17 + 16);
    v36 = *(v17 + 24);
    if (v37 >= v36 >> 1)
    {
      OUTLINED_FUNCTION_1_28(v36);
      sub_2179A7E4C();
      v17 = v73;
    }

    *(v17 + 16) = v37 + 1;
    v38 = v17 + 16 * v37;
    *(v38 + 32) = a5;
    *(v38 + 40) = a6;
  }

  if (a8)
  {
    if (a10)
    {
      return v17;
    }

    v39 = *(v17 + 24);
    if (*(v17 + 16) >= v39 >> 1)
    {
      OUTLINED_FUNCTION_1_28(v39);
      sub_2179A7E4C();
      v17 = v80;
    }

    OUTLINED_FUNCTION_7_15();
    v40 = sub_2179E9D40();
    v42 = v41;
    v44 = *(v17 + 16);
    v43 = *(v17 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      OUTLINED_FUNCTION_1_28(v43);
      sub_2179A7E4C();
      v17 = v81;
    }

    *(v17 + 16) = v45;
    v46 = v17 + 16 * v44;
    *(v46 + 32) = v40;
    *(v46 + 40) = v42;
    goto LABEL_31;
  }

  v47 = *(v17 + 24);
  if (*(v17 + 16) >= v47 >> 1)
  {
    OUTLINED_FUNCTION_1_28(v47);
    sub_2179A7E4C();
    v17 = v74;
  }

  OUTLINED_FUNCTION_7_15();
  v48 = sub_2179E9D40();
  v50 = v49;
  v52 = *(v17 + 16);
  v51 = *(v17 + 24);
  v45 = v52 + 1;
  if (v52 >= v51 >> 1)
  {
    OUTLINED_FUNCTION_1_28(v51);
    sub_2179A7E4C();
    v17 = v75;
  }

  *(v17 + 16) = v45;
  v53 = v17 + 16 * v52;
  *(v53 + 32) = v48;
  *(v53 + 40) = v50;
  if ((a10 & 1) == 0)
  {
LABEL_31:
    v54 = *(v17 + 24);
    if (v45 >= v54 >> 1)
    {
      v76 = OUTLINED_FUNCTION_10(v54);
      OUTLINED_FUNCTION_15(v76, v45 + 1);
      v17 = v77;
    }

    *(v17 + 16) = v45 + 1;
    v55 = v17 + 16 * v45;
    *(v55 + 32) = 0x54455346464FLL;
    *(v55 + 40) = 0xE600000000000000;
    v56 = sub_2179E9D40();
    v58 = v57;
    v60 = *(v17 + 16);
    v59 = *(v17 + 24);
    if (v60 >= v59 >> 1)
    {
      v78 = OUTLINED_FUNCTION_10(v59);
      OUTLINED_FUNCTION_15(v78, v60 + 1);
      v17 = v79;
    }

    *(v17 + 16) = v60 + 1;
    v61 = v17 + 16 * v60;
    *(v61 + 32) = v56;
    *(v61 + 40) = v58;
  }

  return v17;
}

void *sub_2179E60DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_2179A7BC0(1, 1);
  if (!v4)
  {
    v19 = MEMORY[0x277D837D0];
    v20 = &protocol witness table for String;
    strcpy(&v18, "table_versions");
    HIBYTE(v18) = -18;
    v7 = swift_allocObject();
    *(v7 + 16) = 25705;
    *(v7 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v18, v7 + 32);
    a3 = sub_2179A95E0(v7, 0, 0, 255, v8, v9, v10);
    v12 = v11;

    if (a3)
    {
      swift_beginAccess();
      v14 = *(v12 + 32);
      swift_beginAccess();
      v15 = *(v14 + 32);
      if (v15 && (*(v14 + 24) == 0x302E302E30 ? (v16 = v15 == 0xE500000000000000) : (v16 = 0), v16 || (sub_2179E9D70() & 1) != 0))
      {
        sub_2179AA30C(a3, v12);
      }

      else
      {
        sub_2179A70AC(a4, &v18);
        sub_2179E75D8(0);
        inited = swift_initStackObject();
        sub_2179A0D5C(&v18, inited + 16);
        sub_2179AA30C(a3, v12);
        sub_2179E6300(1);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 16));
      }
    }
  }

  return a3;
}

uint64_t sub_2179E6300(char a1)
{
  if (a1)
  {
    sub_2179A70AC(v1 + 16, v6);
    sub_2179A4AE0(0, qword_280B1DD58, &type metadata for Versions.Entity, &off_282996810, type metadata accessor for Statement);
    swift_initStackObject();
    v3 = 0xD000000000000024;
    v4 = 0x80000002179F0500;
  }

  else
  {
    sub_2179A70AC(v1 + 16, v6);
    sub_2179A4AE0(0, qword_280B1DD58, &type metadata for Versions.Entity, &off_282996810, type metadata accessor for Statement);
    swift_initStackObject();
    v4 = 0x80000002179F04E0;
    v3 = 0xD00000000000001ALL;
  }

  sub_2179A935C(2, v3, v4, v6);
  sub_2179A5760();

  if (!v2)
  {
  }

  return result;
}

uint64_t Create<>.EntityMigration.init(migrate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = result;
  a4[2] = a2;
  return result;
}

uint64_t Create<>.migrate<A>(from:ifNotExists:migrate:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v7[7])
  {
    v13 = *v7;
    v57 = a4;

    sub_2179A7BC0(1, 1);

    if (v8)
    {
      return result;
    }

    v48 = a2;
    v49 = a5;
    v50 = a7;
    v15 = *(v13 + 80);
    v16 = a6;
    v17 = *(a6 + 8);
    v18 = *(v17 + 32);

    v19 = v18(v15, v17);
    v55 = MEMORY[0x277D837D0];
    v56 = &protocol witness table for String;
    *&v54 = v19;
    *(&v54 + 1) = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = 25705;
    *(v21 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v54, v21 + 32);
    v25 = sub_2179A95E0(v21, 0, 0, 255, v22, v23, v24);
    v27 = v26;

    v47 = v16;
    if (v25)
    {
      OUTLINED_FUNCTION_11_12(v27 + 32, &v54);
      v28 = *(v27 + 32);
      OUTLINED_FUNCTION_11_12(v28 + 24, v53);
      v30 = *(v28 + 24);
      v29 = *(v28 + 32);
      v31 = *(*(v50 + 8) + 40);

      v32 = v31();
      if (v29)
      {
        if (v30 == v32 && v29 == v33)
        {
        }

        else
        {
          OUTLINED_FUNCTION_16_6();
          v35 = sub_2179E9D70();

          if ((v35 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v36 = *(v27 + 32);
        OUTLINED_FUNCTION_11_12(v36 + 24, v52);
        v38 = *(v36 + 24);
        v37 = *(v36 + 32);
        v39 = *(v17 + 40);

        v40 = v39(v15, v17);
        if (v37)
        {
          v42 = v38 == v40 && v37 == v41;
          v43 = v49;
          v44 = v50;
          v45 = v47;
          if (v42)
          {

            goto LABEL_26;
          }

          OUTLINED_FUNCTION_16_6();
          v46 = sub_2179E9D70();

          if (v46)
          {
            goto LABEL_26;
          }
        }

        else
        {

          v43 = v49;
          v44 = v50;
          v45 = v47;
        }

        sub_2179E67B4(a3, v57, v48 & 1, v43, v45, v44);
      }

      else
      {
      }

LABEL_26:
    }

    a2 = v48;
  }

  return sub_2179A750C(a2 & 1);
}

uint64_t sub_2179E67B4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v9 = *(*v6 + 80);
  v10 = type metadata accessor for MigratableEntity(255, v9, a5, a4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Create(0, v10, WitnessTable, v12);
  v53 = v6 + 16;
  sub_2179A70AC(v6 + 16, &v55);
  sub_2179A7790(&v55, 0, 0, 0);
  sub_2179A44CC(1, 1);

  sub_2179AC7D4(v13);
  if (!v7)
  {
    v49 = v9;
    v48 = v6;

    v14 = *(a6 + 8);
    type metadata accessor for Statement(0, a4, *(v14 + 24), v15);
    v57 = 3;
    v54 = 0xF000000000000007;
    v55 = 0uLL;
    v56 = -1;
    v16 = sub_2179D1704(&v54, &v55, 0, 1, 0, 1, a4, v14);
    v18 = sub_2179ABC9C(v16, a4, v14, v17);
    v20 = v19;

    sub_2179A70AC(v53, &v55);
    v21 = sub_2179AC76C(&v57, v18, v20, &v55);
    v23 = sub_2179AC7D4(v21);

    v24 = swift_getWitnessTable();
    type metadata accessor for Save(0, v10, v24, v25);
    sub_2179A70AC(v53, &v55);
    v26 = sub_2179A8074(&v55);
    *&v55 = v23;
    MEMORY[0x28223BE20](v26);
    sub_2179E9840();
    swift_getWitnessTable();
    sub_2179E9790();

    v57 = 2;
    strcpy(&v55, "DROP TABLE ");
    HIDWORD(v55) = -352321536;
    v27 = (*(v14 + 32))();
    MEMORY[0x21CEA9600](v27);

    MEMORY[0x21CEA9600](59, 0xE100000000000000);
    v28 = v55;
    sub_2179A70AC(v53, &v55);
    v29 = sub_2179AC76C(&v57, v28, *(&v28 + 1), &v55);
    sub_2179AC7D4(v29);

    v30 = v49;
    v31 = *(a5 + 8);
    type metadata accessor for Statement(0, v49, *(v31 + 24), v32);
    v57 = 1;
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    sub_2179E9B10();

    strcpy(&v55, "ALTER TABLE ");
    BYTE13(v55) = 0;
    HIWORD(v55) = -5120;
    v33 = sub_2179D02F4(v49, a5);
    MEMORY[0x21CEA9600](v33);

    MEMORY[0x21CEA9600](0x20454D414E455220, 0xEB00000000204F54);
    v34 = *(v31 + 32);
    v35 = v34(v49, v31);
    MEMORY[0x21CEA9600](v35);

    MEMORY[0x21CEA9600](59, 0xE100000000000000);
    v36 = v55;
    sub_2179A70AC(v53, &v55);
    v37 = sub_2179AC76C(&v57, v36, *(&v36 + 1), &v55);
    sub_2179AC7D4(v37);

    sub_2179AE478(a3 & 1);
    *&v55 = sub_2179E97C0();
    while (v55 != sub_2179E9820())
    {
      v38 = sub_2179E9800();
      sub_2179E97E0();
      if (v38)
      {
      }

      else
      {
        sub_2179E9B20();
      }

      v39 = sub_2179E9830();
      sub_2179AC7D4(v39);

      v30 = v49;
    }

    if (*(v48 + 56))
    {

      v40 = v30;
      v41 = v34(v30, v31);
      v43 = v42;
      v44 = (*(v31 + 40))(v40, v31);
      v46 = sub_2179AC0B8(v41, v43, v44, v45);
      sub_2179AFCA4(v46, v47);
    }
  }
}

uint64_t Create<>.migrate<A>(from:ifNotExists:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!v6[7])
  {
    return sub_2179A750C(a2 & 1);
  }

  v11 = *v6;
  v64 = a4;
  v54 = a2;

  sub_2179A7BC0(1, 1);

  if (v7)
  {
    return result;
  }

  v58 = a6;
  v13 = *(v11 + 80);
  v14 = *(a5 + 8);
  v15 = *(v14 + 32);

  v16 = v15(v13, v14);
  v62 = MEMORY[0x277D837D0];
  v63 = &protocol witness table for String;
  *&v61 = v16;
  *(&v61 + 1) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = 25705;
  *(v18 + 24) = 0xE200000000000000;
  sub_2179A0D5C(&v61, v18 + 32);
  v22 = sub_2179A95E0(v18, 0, 0, 255, v19, v20, v21);
  v24 = v23;

  v57 = v24;
  a2 = v54;
  if (!v22)
  {
    return sub_2179A750C(a2 & 1);
  }

  v51 = v14;
  v25 = v24;
  if (!a3)
  {
LABEL_25:
    sub_2179A750C(v54 & 1);
  }

  v26 = a1;
  OUTLINED_FUNCTION_11_12(v24 + 32, &v61);
  v27 = (v64 & 0xFFFFFFFFFFFFFFFELL);
  v28 = (v58 & 0xFFFFFFFFFFFFFFFELL);
  while (1)
  {
    v64 = a3;
    v29 = *v27;
    v30 = *v28;
    v52 = *(*v26 + 8);
    v31 = *(*v26 + 16);
    v32 = *(v25 + 32);
    OUTLINED_FUNCTION_11_12(v32 + 24, v60);
    v34 = *(v32 + 24);
    v33 = *(v32 + 32);
    v53 = v30;
    v35 = *(v30 + 8);
    v36 = *(v35 + 40);

    v37 = v36(v29, v35);
    if (v33)
    {
      break;
    }

    v25 = v57;
    v41 = v64;
LABEL_24:
    v26 += 8;
    ++v28;
    ++v27;
    a3 = v41 - 1;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  v55 = v31;
  if (v34 == v37 && v33 == v38)
  {

    v41 = v64;
  }

  else
  {
    v40 = OUTLINED_FUNCTION_19_7(v37, v38, v37);

    v41 = v64;
    if ((v40 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v42 = *(v57 + 32);
  OUTLINED_FUNCTION_11_12(v42 + 24, v59);
  v44 = *(v42 + 24);
  v43 = *(v42 + 32);
  v45 = *(v51 + 40);

  v46 = v45();
  if (v43)
  {
    v48 = v44 == v46 && v43 == v47;
    v49 = v55;
    if (v48)
    {

      goto LABEL_23;
    }

    v50 = OUTLINED_FUNCTION_19_7(v46, v47, v46);

    if ((v50 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_21:

LABEL_23:
    v25 = v57;
    goto LABEL_24;
  }

  v49 = v55;
LABEL_29:

  sub_2179E67B4(v52, v49, v54 & 1, v29, a5, v53);
}

uint64_t sub_2179E7250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179E72A4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v6 = *(*a4 + 80);
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = &v25 - v7;
  v8 = *(v6 + 16);
  v9 = sub_2179E9A60();
  v29 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v28 = *(v8 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v25 - v16);
  v18 = v31;
  result = v30(a1);
  if (!v18)
  {
    v30 = v17;
    v21 = v28;
    v20 = v29;
    v31 = a4;
    if (__swift_getEnumTagSinglePayload(v12, 1, v8) == 1)
    {
      return (*(v20 + 8))(v12, v9);
    }

    else
    {
      v22 = v30;
      (*(v21 + 32))(v30, v12, v8);
      (*(v21 + 16))(v15, v22, v8);
      v23 = v6;
      v24 = v26;
      sub_2179D0090(v15, v8, v26);
      sub_2179B69F8(v24);
      (*(v27 + 8))(v24, v23);
      return (*(v21 + 8))(v22, v8);
    }
  }

  return result;
}

unint64_t sub_2179E75B4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_2179E75D8(uint64_t a1)
{
  if (!qword_27CB98650[0])
  {
    v2 = sub_2179A0730();
    v4 = type metadata accessor for Drop(a1, &type metadata for Versions.Entity, v2, v3);
    if (!v5)
    {
      atomic_store(v4, qword_27CB98650);
    }
  }
}

void sub_2179E7634(uint64_t a1)
{
  if (!qword_27CB98588)
  {
    sub_21799AC4C(255, qword_280B1E498, &protocol descriptor for ColumnCodable);
    v1 = sub_2179E9A60();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB98588);
    }
  }
}

uint64_t sub_2179E76B4()
{
  sub_2179E797C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179ECE30;
  *(inited + 32) = 0x6469776F72;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 61;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = sub_2179E9D40();
  *(inited + 72) = v1;
  return OUTLINED_FUNCTION_0_30();
}

uint64_t sub_2179E77AC()
{
  OUTLINED_FUNCTION_1_29();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179EA830;
  v4 = type metadata accessor for SearchExpression(0, v1, v0, v3);
  *(inited + 32) = sub_2179C10B8(v4, v5, v6, v7, v8, v9, v10);
  *(inited + 40) = v11;
  return sub_2179E79CC(inited, v1, *(v0 + 8));
}

uint64_t sub_2179E7824()
{
  OUTLINED_FUNCTION_1_29();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179EA830;
  *(inited + 32) = sub_2179A9A0C(inited, v1, v2, v3, v4, v5, v6);
  *(inited + 40) = v7;
  return OUTLINED_FUNCTION_0_30();
}

uint64_t sub_2179E7880(uint64_t a1, uint64_t a2)
{
  sub_2179E797C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179ECE30;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 61;
  *(inited + 56) = 0xE100000000000000;
  sub_2179A4934();
  v3 = sub_2179E9A80();
  MEMORY[0x21CEA9600](v3);

  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  *(inited + 64) = 39;
  *(inited + 72) = 0xE100000000000000;
  return OUTLINED_FUNCTION_0_30();
}

void sub_2179E797C()
{
  if (!qword_280B1DC20)
  {
    v0 = sub_2179E9D50();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1DC20);
    }
  }
}

uint64_t sub_2179E79CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2179A7E4C();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v18;
  }

  *(v7 + 16) = v8 + 1;
  v9 = v7 + 16 * v8;
  *(v9 + 32) = 0x46204554454C4544;
  *(v9 + 40) = 0xEB000000004D4F52;
  v10 = (*(a3 + 32))(a2, a3);
  v12 = v11;
  v13 = *(v7 + 16);
  v14 = v13 + 1;
  if (v13 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v19;
  }

  *(v7 + 16) = v14;
  v15 = v7 + 16 * v13;
  *(v15 + 32) = v10;
  *(v15 + 40) = v12;
  if (*(a1 + 16))
  {
    if ((v13 + 2) > *(v7 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v20;
    }

    *(v7 + 16) = v13 + 2;
    v16 = v7 + 16 * v14;
    *(v16 + 32) = 0x4552454857;
    *(v16 + 40) = 0xE500000000000000;
    sub_2179A922C(a1);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_2179E7B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179E7BE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  LOBYTE(v5) = *(v1 + 8);
  v8 = *(v1 + 9);
  v45 = 0x594220524544524FLL;
  v46 = 0xE900000000000020;
  if (v5)
  {
    if (!v7)
    {
      MEMORY[0x21CEA9600](1802396018, 0xE400000000000000);
      goto LABEL_14;
    }

    v9 = *(v4 + 24);
    v10 = *(v9 + 16);

    v10(&v43, v2, v9);
    v11 = v44;

    v42 = v11;
    MEMORY[0x28223BE20](v12);
    *(&v38 - 4) = v2;
    *(&v38 - 3) = v9;
    *(&v38 - 2) = v7;
    type metadata accessor for SearchColumn();
    sub_2179E9EC0();
    v13 = sub_2179E9840();
    WitnessTable = swift_getWitnessTable();
    v16 = sub_2179A2E44(sub_2179E86EC, (&v38 - 6), v13, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v15);
    sub_2179D2144(v7, 1);

    v17 = *(v16 + 16);
    if (v17)
    {
      v39 = v9;
      v40 = v2;
      v41 = v8;
      v43 = MEMORY[0x277D84F90];
      sub_2179A920C(0, v17, 0);
      v18 = v43;
      v19 = 32;
      sub_2179E8710();
      do
      {
        v42 = *(v16 + v19);
        v20 = sub_2179E9520();
        v22 = v21;
        v43 = v18;
        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2179A920C((v23 > 1), v24 + 1, 1);
          v18 = v43;
        }

        *(v18 + 16) = v24 + 1;
        v25 = v18 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v19 += 8;
        --v17;
      }

      while (v17);

      v8 = v41;
      v9 = v39;
      v2 = v40;
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    v43 = v18;
    sub_2179A5088();
    sub_2179A4B34();
    v31 = sub_2179E95F0();
    v33 = v32;

    v43 = 0x2835326D62;
    v44 = 0xE500000000000000;
    v34 = (*(*(v9 + 8) + 32))(v2);
    MEMORY[0x21CEA9600](v34);

    MEMORY[0x21CEA9600](8236, 0xE200000000000000);
    MEMORY[0x21CEA9600](v31, v33);

    MEMORY[0x21CEA9600](41, 0xE100000000000000);
    MEMORY[0x21CEA9600](v43, v44);
  }

  else
  {
    v26 = *(*(*(v4 + 24) + 8) + 24);
    v27 = *(v26 + 8);

    v27(v2, v26);
    swift_getAtKeyPath();
    (*(v3 + 8))(v6, v2);
    v28 = *(v43 + 16);
    os_unfair_lock_lock((v28 + 64));
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);

    os_unfair_lock_unlock((v28 + 64));

    MEMORY[0x21CEA9600](v29, v30);
    sub_2179D2144(v7, 0);
  }

LABEL_14:
  if (v8 != 2)
  {
    if (v8)
    {
      v35 = 0x4353454420;
      v36 = 0xE500000000000000;
    }

    else
    {
      v35 = 1129529632;
      v36 = 0xE400000000000000;
    }

    MEMORY[0x21CEA9600](v35, v36);
  }

  return v45;
}

uint64_t SearchOrder.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t sub_2179E8120(uint64_t a1)
{
  sub_2179E9E20();
  SearchOrder.Direction.hash(into:)();
  return sub_2179E9E40();
}

uint64_t SearchOrder.sortBy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2179D2120(v2, v3);
}

uint64_t SearchOrder.sortBy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_2179D2144(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t static SearchOrder.sort(by:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 9) = v5;
  return sub_2179D2120(v3, v4);
}

{
  v3 = *a2;
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 9) = v3;
}

uint64_t SearchOrder.reversed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = (v4 & 1) == 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v5;
  return sub_2179D2120(v2, v3);
}

uint64_t sub_2179E82A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2179E82FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179E833C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2179E8398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179E83D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179E8414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *sub_2179E847C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179E8548@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v9;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();

  sub_2179E95C0();

  if (v16)
  {
    (*(*(*(a4 + 8) + 24) + 8))(a3);
    swift_getAtKeyPath();
    (*(v8 + 8))(v11, a3);
    v13 = *(v15 + 16);
    os_unfair_lock_lock((v13 + 64));
    v14 = *(v13 + 32);
    os_unfair_lock_unlock((v13 + 64));
  }

  else
  {
    v14 = v15;
  }

  *a5 = v14;
  return result;
}

unint64_t sub_2179E8710()
{
  result = qword_27CB98758;
  if (!qword_27CB98758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98758);
  }

  return result;
}

uint64_t LazyLoader.__allocating_init(object:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LazyLoader.init(object:)(a1);
  return v2;
}

char *LazyLoader.init(object:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2179E9310();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1_30();
  v7 = *(v6 + 112);
  sub_2179E9300();
  sub_2179E9330();
  swift_allocObject();
  *&v1[v7] = sub_2179E9320();
  v8 = v4[10];
  (*(*(v8 - 8) + 32))(&v2[*(*v2 + 104)], a1, v8);
  type metadata accessor for LazyLoader.LoadState(0, v8, v4[11], v4[12]);
  swift_storeEnumTagMultiPayload();
  return v2;
}

uint64_t LazyLoader.__allocating_init(from:)(void *a1)
{
  v4 = *(v1 + 80);
  OUTLINED_FUNCTION_2();
  v18 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17[-1] - v11;
  v13 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2179E9E80();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_2179E9D80();
    v15 = v18;
    (*(v18 + 16))(v9, v12, v4);
    v13 = LazyLoader.__allocating_init(object:)(v9);
    (*(v15 + 8))(v12, v4);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t LazyLoader.encode(to:)()
{
  v2 = *(*v0 + 80);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2179E9EA0();
  LazyLoader.load()(v8);
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_2179E9DA0();
    (*(v4 + 8))(v8, v2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_2179E8C28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LazyLoader.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2179E8CB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
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
    goto LABEL_22;
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_2179E8DDC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LazyLoaderError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2179E9050()
{
  result = qword_27CB98760;
  if (!qword_27CB98760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98760);
  }

  return result;
}

void Double.valueType.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}