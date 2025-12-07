uint64_t sub_2179B013C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2179B0188(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x2179B038CLL);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_2179B03D8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_6();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_12_5(v5);
  OUTLINED_FUNCTION_10_6();
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  return (*(v6 + 16))(a1, v1 + v4);
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.userVersion()()
{
  if (*(v0 + 16))
  {

    sub_2179A7198(0xD000000000000014, 0x80000002179EFD90);
    if (v1)
    {
    }

    else
    {
      sub_2179A54D4(1, 0, 29);
      v7 = 1;
      sub_2179AA0CC(v8, 0, &v7, 0);
      v2 = v8[0];
      if (v9 == 1)
      {
        sub_2179A6F48();
      }

      else
      {
        sub_2179AC53C(v8[0], v8[1], v9);
        sub_2179A6F48();

        return -1;
      }
    }
  }

  else
  {
    v3 = sub_2179ABC30();
    v4 = OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v3);
    OUTLINED_FUNCTION_7_4(v4, v5);
  }

  return v2;
}

uint64_t == infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v2);
  *v0 = v1;
}

{
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v0;
  OUTLINED_FUNCTION_4_5(v3 | 0x8000000000000000);
}

uint64_t sub_2179B0668()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_3_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

BOOL sub_2179B06A4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v6);
  if (v8 == 255)
  {
    (*(a2 + 32))(&v6, a1, a2);
    v4 = v8 == 255;
    if (v8 != 255)
    {
      sub_2179AA22C(v6, v7, v8);
    }
  }

  else
  {
    sub_2179AA22C(v6, v7, v8);
    return 0;
  }

  return v4;
}

void sub_2179B088C()
{
  OUTLINED_FUNCTION_21_1();
  v28 = v0;
  v29 = v1;
  OUTLINED_FUNCTION_3_8();
  v3 = *(v2 + 80);
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v8 = *(v7 + 88);
  v10 = type metadata accessor for Column.Func(0, v3, v8, v9);
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  OUTLINED_FUNCTION_19();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v26 - v21;
  v28(v20);
  if (__swift_getEnumTagSinglePayload(v22, 1, v10))
  {
    (*(v18 + 8))(v22, v16);
    v23 = 0uLL;
    v24 = -1;
  }

  else
  {
    (*(v12 + 16))(v15, v22, v10);
    (*(v18 + 8))(v22, v16);
    sub_2179CDA64(v10, v6);
    (*(v12 + 8))(v15, v10);
    (*(v8 + 40))(&v30, v3, v8);
    (*(v27 + 8))(v6, v3);
    v23 = v30;
    v24 = v31;
  }

  v25 = v29;
  *v29 = v23;
  *(v25 + 16) = v24;
  OUTLINED_FUNCTION_22_1();
}

uint64_t sub_2179B0B20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_2179B0BD4@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_6();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_12_5(v5);
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_10_6();
  type metadata accessor for Column.Func(255, v7, *(v6 + 88), v8);
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  return (*(v9 + 16))(a1, v1 + v4);
}

uint64_t ValueOf.queryValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2179B0CEC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_2179B0D04@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_6();
  v4 = *(v3 + 144);
  OUTLINED_FUNCTION_12_5(v5);
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_10_6();
  type metadata accessor for Column.Func(255, v7, *(v6 + 88), v8);
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  return (*(v9 + 16))(a1, v1 + v4);
}

uint64_t sub_2179B0DAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_2179B0F34()
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  v5 = v4;
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_4();
  sub_2179E9A60();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_1(v12, v21);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7))
  {
    v13 = OUTLINED_FUNCTION_11_4();
    v14(v13);
    v15 = 0uLL;
    v16 = 5;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18_2();
    v18(v17);
    v19 = OUTLINED_FUNCTION_11_4();
    v20(v19);
    (*(*(v5 + 88) + 40))(&v21, v7);
    (*(v9 + 8))(v0, v7);
    v15 = v21;
    v16 = v22;
  }

  *v3 = v15;
  *(v3 + 16) = v16;
  OUTLINED_FUNCTION_22_1();
}

uint64_t sub_2179B1154(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t Table.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t String.valueType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

void sub_2179B1204()
{
  OUTLINED_FUNCTION_8_9();
  if (v4)
  {
    OUTLINED_FUNCTION_3_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v7, &qword_280B1DAE8, &type metadata for ValueType);
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_6_7(v8);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v9 / 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v3 != v0 || &v11[24 * v2] <= v10)
    {
      memmove(v10, v11, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_2179B12EC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_2179E92A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 32);
  swift_beginAccess();
  v11 = *(v10 + 32);
  if (v11)
  {
    v39 = *(v10 + 24);
    v40 = v11;
LABEL_5:

    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = *(v10 + 64);
  if (v12 != 255)
  {
    v14 = *(v10 + 48);
    v13 = *(v10 + 56);
    sub_2179CA2D8(v14, v13, v12 & 1);
    v39 = sub_2179E56A8(v14, v13, v12 & 1);
    v40 = v15;
    sub_2179A7E34(v14, v13, v12);
    goto LABEL_5;
  }

  sub_2179E9290();
  v39 = sub_2179E9280();
  v40 = v36;
  (*(v7 + 8))(v9, v6);
LABEL_6:
  v16 = sub_2179A9878(a1, a2);

  v17 = *(v16 + 16);
  if (v17)
  {
    v38 = a3;
    v48 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v17, 0);
    v18 = v48;
    v37 = v16;
    v19 = v16 + 32;
    v20 = v16 + 32;
    v21 = v17;
    do
    {
      sub_2179A9940(v20, &v44);
      v41 = v44;
      v42[0] = v45;
      v42[1] = v46;
      v43 = v47;
      v22 = v44;
      __swift_destroy_boxed_opaque_existential_1(v42);
      v48 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2179A920C((v23 > 1), v24 + 1, 1);
        v18 = v48;
      }

      *(v18 + 16) = v24 + 1;
      *(v18 + 16 * v24 + 32) = v22;
      v20 += 56;
      --v21;
    }

    while (v21);
    *&v41 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v17, 0);
    v25 = v41;
    do
    {
      sub_2179A9940(v19, &v44);
      v26 = *(&v46 + 1);
      v27 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      if (sub_2179B06A4(v26, v27))
      {
        v28 = 0xE100000000000000;
        v29 = 63;
      }

      else
      {
        v29 = sub_2179C9430(v44, *(&v44 + 1), &v45, v39, v40, 0x65765F656C626174, 0xEE00736E6F697372);
        v28 = v30;
      }

      sub_2179A87AC(&v44, sub_2179A4BDC);
      *&v41 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2179A920C((v31 > 1), v32 + 1, 1);
        v25 = v41;
      }

      *(v25 + 16) = v32 + 1;
      v33 = v25 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v28;
      v19 += 56;
      --v17;
    }

    while (v17);

    LOBYTE(a3) = v38;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
  }

  v34 = sub_2179B1764(0x65765F656C626174, 0xEE00736E6F697372, v18, v25, a3 & 1);

  return v34;
}

uint64_t sub_2179B1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_2179A7E4C();
  v9 = v8;
  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v34 = OUTLINED_FUNCTION_10(v10);
    OUTLINED_FUNCTION_15(v34, v11 + 1);
    v9 = v35;
  }

  *(v9 + 16) = v12;
  v13 = v9 + 16 * v11;
  *(v13 + 32) = 0x545245534E49;
  *(v13 + 40) = 0xE600000000000000;
  if (a5)
  {
    v14 = *(v9 + 24);
    if ((v11 + 2) > (v14 >> 1))
    {
      v45 = OUTLINED_FUNCTION_10(v14);
      OUTLINED_FUNCTION_15(v45, v11 + 2);
      v9 = v46;
    }

    *(v9 + 16) = v11 + 2;
    v15 = v9 + 16 * v12;
    *(v15 + 32) = 0x414C50455220524FLL;
    *(v15 + 40) = 0xEA00000000004543;
    v12 = *(v9 + 16);
  }

  v16 = *(v9 + 24);
  v17 = v12 + 1;
  if (v12 >= v16 >> 1)
  {
    v36 = OUTLINED_FUNCTION_10(v16);
    OUTLINED_FUNCTION_15(v36, v12 + 1);
    v9 = v37;
  }

  *(v9 + 16) = v17;
  v18 = v9 + 16 * v12;
  *(v18 + 32) = 1330925129;
  *(v18 + 40) = 0xE400000000000000;
  v19 = *(v9 + 24);
  v20 = v12 + 2;

  if (v20 > (v19 >> 1))
  {
    OUTLINED_FUNCTION_15(v19 > 1, v20);
    v9 = v38;
  }

  *(v9 + 16) = v20;
  v21 = v9 + 16 * v17;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  sub_2179A5088();
  sub_2179A4B34();
  v22 = OUTLINED_FUNCTION_16_1();
  MEMORY[0x21CEA9600](v22);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  v24 = *(v9 + 16);
  v23 = *(v9 + 24);
  v25 = v23 >> 1;
  v26 = v24 + 1;
  if (v23 >> 1 <= v24)
  {
    v39 = OUTLINED_FUNCTION_10(v23);
    OUTLINED_FUNCTION_15(v39, v24 + 1);
    v9 = v40;
    v23 = *(v40 + 24);
    v25 = v23 >> 1;
  }

  *(v9 + 16) = v26;
  v27 = v9 + 16 * v24;
  *(v27 + 32) = 40;
  *(v27 + 40) = 0xE100000000000000;
  if (v25 < (v24 + 2))
  {
    v41 = OUTLINED_FUNCTION_10(v23);
    OUTLINED_FUNCTION_15(v41, v24 + 2);
    v9 = v42;
  }

  *(v9 + 16) = v24 + 2;
  v28 = v9 + 16 * v26;
  *(v28 + 32) = 0x5345554C4156;
  *(v28 + 40) = 0xE600000000000000;
  v29 = OUTLINED_FUNCTION_16_1();
  MEMORY[0x21CEA9600](v29);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  v31 = *(v9 + 16);
  v30 = *(v9 + 24);
  if (v31 >= v30 >> 1)
  {
    v43 = OUTLINED_FUNCTION_10(v30);
    OUTLINED_FUNCTION_15(v43, v31 + 1);
    v9 = v44;
  }

  *(v9 + 16) = v31 + 1;
  v32 = v9 + 16 * v31;
  *(v32 + 32) = 40;
  *(v32 + 40) = 0xE100000000000000;
  return v9;
}

uint64_t sub_2179B1BD4()
{
  OUTLINED_FUNCTION_3_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179B1C1C(uint64_t a1, unint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2;
  switch(*(a1 + 16))
  {
    case 1:
      v44 = sqlite3_bind_int64(*(v2 + 24), a2, v4);
      sub_21799FD18(v44, *(v2 + 16));
      if (OUTLINED_FUNCTION_1_26(v45, v46, v47))
      {
        return sub_21799C320(a2, v5, v4);
      }

      OUTLINED_FUNCTION_9_11();
      if (v15 && __PAIR128__(v5, a2) < 3)
      {
        goto LABEL_45;
      }

      if (qword_280B1DB60 != -1)
      {
        OUTLINED_FUNCTION_0_27(&qword_280B1DB60);
      }

      v84 = qword_280B1FEE8;
      sub_2179E9920();
      OUTLINED_FUNCTION_11_11();
      v17 = OUTLINED_FUNCTION_10_14(v48);
      v49 = OUTLINED_FUNCTION_7_13(v17, xmmword_2179EA820);
      OUTLINED_FUNCTION_12_11(v49, v50, &type metadata for SQLError, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      v17[3].n128_u64[1] = MEMORY[0x277D837D0];
      v51 = sub_21799C634();
      OUTLINED_FUNCTION_8_13(v51);
      sub_2179E9B10();

      *&v85 = 0xD000000000000010;
      *(&v85 + 1) = 0x80000002179F0480;
      goto LABEL_34;
    case 2:
      v27 = sqlite3_bind_int64(*(v2 + 24), a2, *a1 & 1);
      sub_21799FD18(v27, *(v2 + 16));
      if (OUTLINED_FUNCTION_1_26(v28, v29, v30))
      {
        return sub_21799C320(a2, v5, v4);
      }

      OUTLINED_FUNCTION_9_11();
      if (v15 && __PAIR128__(v5, a2) < 3)
      {
        goto LABEL_45;
      }

      if (qword_280B1DB60 != -1)
      {
        OUTLINED_FUNCTION_0_27(&qword_280B1DB60);
      }

      v84 = qword_280B1FEE8;
      sub_2179E9920();
      OUTLINED_FUNCTION_11_11();
      v17 = OUTLINED_FUNCTION_10_14(v31);
      v32 = OUTLINED_FUNCTION_3_18(v17, xmmword_2179EA820);
      OUTLINED_FUNCTION_12_11(v32, v33, &type metadata for SQLError, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      v20 = MEMORY[0x277D837D0];
      v17[3].n128_u64[1] = MEMORY[0x277D837D0];
      v34 = sub_21799C634();
      OUTLINED_FUNCTION_2_17(v34);
      OUTLINED_FUNCTION_4_18();
      v24 = v35 | 3;
      goto LABEL_43;
    case 3:
      v36 = sqlite3_bind_double(*(v2 + 24), a2, *a1);
      sub_21799FD18(v36, *(v2 + 16));
      if (OUTLINED_FUNCTION_1_26(v37, v38, v39))
      {
        return sub_21799C320(a2, v5, v4);
      }

      OUTLINED_FUNCTION_9_11();
      if (v15 && __PAIR128__(v5, a2) < 3)
      {
        goto LABEL_45;
      }

      if (qword_280B1DB60 != -1)
      {
        OUTLINED_FUNCTION_0_27(&qword_280B1DB60);
      }

      v84 = qword_280B1FEE8;
      sub_2179E9920();
      OUTLINED_FUNCTION_11_11();
      v17 = OUTLINED_FUNCTION_10_14(v40);
      v41 = OUTLINED_FUNCTION_7_13(v17, xmmword_2179EA820);
      OUTLINED_FUNCTION_12_11(v41, v42, &type metadata for SQLError, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      v17[3].n128_u64[1] = MEMORY[0x277D837D0];
      v43 = sub_21799C634();
      OUTLINED_FUNCTION_8_13(v43);
      sub_2179E9B10();

      *&v85 = 0x6F642820646E6962;
      *(&v85 + 1) = 0xEF203A29656C6275;
LABEL_34:
      MEMORY[0x21CEA9600](*(v2 + 32), *(v2 + 40));
      v53 = *(&v85 + 1);
      v52 = v85;
      v17[6].n128_u64[0] = MEMORY[0x277D837D0];
      goto LABEL_44;
    case 4:
      switch(v5 >> 62)
      {
        case 1uLL:
          if (v4 >> 32 < v4)
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          v73 = OUTLINED_FUNCTION_6_14();
          sub_2179AC430(v73, v74, v75);
          v69 = sub_2179E9110();
          if (v69)
          {
            v76 = sub_2179E9130();
            if (!__OFSUB__(v4, v76))
            {
              v69 += v4 - v76;
              goto LABEL_57;
            }

LABEL_68:
            __break(1u);
          }

LABEL_57:
          v72 = (v4 >> 32) - v4;
LABEL_58:
          v77 = sub_2179E9120();
          if (v77 >= v72)
          {
            v78 = v72;
          }

          else
          {
            v78 = v77;
          }

          v79 = (v78 + v69);
          if (v69)
          {
            v26 = v79;
          }

          else
          {
            v26 = 0;
          }

          v25 = v69;
LABEL_65:
          sub_2179B78E8(v25, v26, v2, a2, v4, v5);

          v80 = OUTLINED_FUNCTION_6_14();
          return sub_2179AC53C(v80, v81, v82);
        case 2uLL:
          v64 = *(v4 + 16);
          v65 = *(v4 + 24);

          v66 = OUTLINED_FUNCTION_6_14();
          sub_2179AC430(v66, v67, v68);
          v69 = sub_2179E9110();
          if (!v69)
          {
            goto LABEL_49;
          }

          v70 = sub_2179E9130();
          if (__OFSUB__(v64, v70))
          {
            goto LABEL_67;
          }

          v69 += v64 - v70;
LABEL_49:
          v71 = __OFSUB__(v65, v64);
          v72 = v65 - v64;
          if (!v71)
          {
            goto LABEL_58;
          }

          __break(1u);
LABEL_52:
          *(&v85 + 6) = 0;
          *&v85 = 0;

          v25 = &v85;
          v26 = &v85;
          goto LABEL_65;
        case 3uLL:
          goto LABEL_52;
        default:
          *&v85 = *a1;
          WORD4(v85) = v5;
          BYTE10(v85) = BYTE2(v5);
          BYTE11(v85) = BYTE3(v5);
          BYTE12(v85) = BYTE4(v5);
          BYTE13(v85) = BYTE5(v5);

          v25 = &v85;
          v26 = &v85 + BYTE6(v5);
          goto LABEL_65;
      }

    case 5:
      v54 = sqlite3_bind_null(*(v2 + 24), a2);
      sub_21799FD18(v54, *(v2 + 16));
      if (OUTLINED_FUNCTION_1_26(v55, v56, v57))
      {
        return sub_21799C320(a2, v5, v4);
      }

      OUTLINED_FUNCTION_9_11();
      if (v15 && __PAIR128__(v5, a2) < 3)
      {
        goto LABEL_45;
      }

      if (qword_280B1DB60 != -1)
      {
        OUTLINED_FUNCTION_0_27(&qword_280B1DB60);
      }

      v84 = qword_280B1FEE8;
      sub_2179E9920();
      OUTLINED_FUNCTION_11_11();
      v17 = OUTLINED_FUNCTION_10_14(v59);
      v60 = OUTLINED_FUNCTION_3_18(v17, xmmword_2179EA820);
      OUTLINED_FUNCTION_12_11(v60, v61, &type metadata for SQLError, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      v20 = MEMORY[0x277D837D0];
      v17[3].n128_u64[1] = MEMORY[0x277D837D0];
      v62 = sub_21799C634();
      OUTLINED_FUNCTION_2_17(v62);
      OUTLINED_FUNCTION_4_18();
      goto LABEL_43;
    default:
      v8 = *(v2 + 24);
      if (qword_280B1DB08 != -1)
      {
        swift_once();
      }

      v9 = qword_280B1DAF8;
      v10 = sub_2179E9670();
      LOBYTE(v4) = v10;
      v11 = sqlite3_bind_text(v8, a2, (v10 + 32), -1, v9);

      sub_21799FD18(v11, *(v6 + 16));
      if (OUTLINED_FUNCTION_1_26(v12, v13, v14))
      {
        return sub_21799C320(a2, v5, v4);
      }

      OUTLINED_FUNCTION_9_11();
      if (!v15 || __PAIR128__(v5, a2) >= 3)
      {
        if (qword_280B1DB60 != -1)
        {
          OUTLINED_FUNCTION_0_27(&qword_280B1DB60);
        }

        v84 = qword_280B1FEE8;
        sub_2179E9920();
        OUTLINED_FUNCTION_11_11();
        v17 = OUTLINED_FUNCTION_10_14(v16);
        v18 = OUTLINED_FUNCTION_3_18(v17, xmmword_2179EA820);
        OUTLINED_FUNCTION_12_11(v18, v19, &type metadata for SQLError, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
        v20 = MEMORY[0x277D837D0];
        v17[3].n128_u64[1] = MEMORY[0x277D837D0];
        v21 = sub_21799C634();
        OUTLINED_FUNCTION_2_17(v21);
        OUTLINED_FUNCTION_4_18();
        v24 = v23 + 2060;
LABEL_43:
        *&v85 = v22;
        *(&v85 + 1) = v24;
        MEMORY[0x21CEA9600](*(v6 + 32), *(v6 + 40));
        v53 = *(&v85 + 1);
        v52 = v85;
        v17[6].n128_u64[0] = v20;
LABEL_44:
        v17[6].n128_u64[1] = v3;
        v17[4].n128_u64[1] = v52;
        v17[5].n128_u64[0] = v53;
        sub_2179E93F0("Invoke failed, error=%{public}@, description=%{public}@", 55, 2, &dword_217998000, v84, v83, v17);
      }

LABEL_45:
      sub_2179A2D18();
      swift_allocError();
      *v63 = a2;
      *(v63 + 8) = v5;
      *(v63 + 16) = v4;
      return swift_willThrow();
  }
}

uint64_t KeyValueStore.subscript.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_0(a1, &qword_280B1DC20, MEMORY[0x277D837D0]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2179EA830;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  KeyValueStore.read(_:maxAge:)(v4, 1.79769313e308);

  sub_2179E9580();

  sub_2179E9560();
  swift_getWitnessTable();
  sub_2179E98C0();
}

uint64_t get_enum_tag_for_layout_string_5TeaDB9ValueTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

void FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_31();
  sub_2179A2C2C(0);
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_3_12(v31, xmmword_2179ECEC0);
  v33 = sub_2179AE120(v32);
  v35 = OUTLINED_FUNCTION_14_4(v33, v34);
  v36 = sub_2179AE120(v35);
  v38 = OUTLINED_FUNCTION_13_5(v36, v37);
  v39 = sub_2179AE120(v38);
  v41 = OUTLINED_FUNCTION_12_7(v39, v40);
  v42 = sub_2179AE120(v41);
  v44 = OUTLINED_FUNCTION_11_6(v42, v43);
  v45 = sub_2179AE120(v44);
  v47 = OUTLINED_FUNCTION_10_8(v45, v46);
  v48 = sub_2179AE120(v47);
  v50 = OUTLINED_FUNCTION_8_10(v48, v49);
  v51 = sub_2179AE120(v50);
  v53 = OUTLINED_FUNCTION_17_3(v51, v52);
  v54 = sub_2179AE120(v53);
  v56 = OUTLINED_FUNCTION_16_2(v54, v55);
  v57 = sub_2179AE120(v56);
  v59 = OUTLINED_FUNCTION_15_4(v57, v58);
  v60 = sub_2179AE120(v59);
  v62 = OUTLINED_FUNCTION_5_8(v60, v61);
  v63 = sub_2179AE120(v62);
  v65 = OUTLINED_FUNCTION_6_8(v63, v64);
  v31[40].n128_u64[1] = sub_2179AE120(v65);
  v31[41].n128_u64[0] = v66;

  *(v30 + 16) = v31;
  OUTLINED_FUNCTION_30();
}

uint64_t OUTLINED_FUNCTION_17_2(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_21799A5F4();
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
  return v2 + 440;
}

void OUTLINED_FUNCTION_17_5()
{

  sub_2179A7E4C();
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1)
{

  return sub_2179E98C0();
}

uint64_t Date.init(valueType:connection:)(uint64_t a1, void *a2)
{
  if (*(a1 + 16) == 3)
  {
    sub_2179E9240();

    return __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t LazyEntity.__allocating_init(valueType:connection:)(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_4();
  v4 = swift_allocObject();
  LazyEntity.init(valueType:connection:)(a1, a2);
  return v4;
}

uint64_t sub_2179B28FC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = LazyEntity.__allocating_init(valueType:connection:)(a1, a2);
  *a3 = result;
  return result;
}

void *LazyEntity.init(valueType:connection:)(uint64_t *a1, void *a2)
{
  v3 = *v2;
  if (*(a1 + 16))
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  else
  {
    v4 = v2;
    v7 = *a1;
    v6 = a1[1];
    v4[2] = *a1;
    v4[3] = v6;
    v8 = *(v3 + 80);
    v9 = *(v3 + 88);
    v10 = OUTLINED_FUNCTION_5_11();
    type metadata accessor for LazyLoader(v10, v11, v12, v13);
    sub_2179A70AC(a2, v17);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v9;
    v14[4] = v7;
    v14[5] = v6;
    sub_2179A0D5C(v17, (v14 + 6));

    v15 = LazyLoader.__allocating_init(block:)(sub_2179B4E70, v14);
    __swift_destroy_boxed_opaque_existential_1(a2);
    v4[4] = v15;
    return v4;
  }

  return result;
}

uint64_t sub_2179B2A70()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2179B2AE0(uint64_t *a1)
{
  result = type metadata accessor for LazyLoader.LoadState(319, a1[10], a1[11], a1[12]);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2179B2B84(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2179B2C20();
    if (v2 <= 0x3F)
    {
      sub_21799AC4C(319, &qword_280B1DBF8, MEMORY[0x277D84948]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2179B2C20()
{
  if (!qword_280B1C950)
  {
    v0 = sub_2179A2BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1C950);
    }
  }
}

uint64_t LazyLoader.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LazyLoader.init(block:)(a1, a2);
  return v4;
}

uint64_t **LazyLoader.init(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2179E9310();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1_30();
  v9 = *(v8 + 112);
  sub_2179E9300();
  sub_2179E9330();
  swift_allocObject();
  *(v2 + v9) = sub_2179E9320();
  v10 = (v3 + (*v3)[13]);
  *v10 = a1;
  v10[1] = a2;
  type metadata accessor for LazyLoader.LoadState(0, v6[10], v6[11], v6[12]);
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_2179B2DDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t JSON.init(valueType:connection:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v10 + 16) == 4)
  {
    v13 = *v10;
    v14 = *(v10 + 8);
    sub_2179E92D0();
    swift_allocObject();
    sub_2179E92C0();
    sub_2179E92B0();

    sub_2179AC53C(v13, v14, 4);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v8 + 32))(a4, v12, a2);
  }

  else
  {
    sub_2179E9C40();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t Int.init(valueType:connection:)(uint64_t *a1, void *a2)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *a1;
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v2;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

void *FastColumn.init(wrappedValue:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v3[4] = a1;
  v3[2] = a2;
  return v3;
}

uint64_t sub_2179B3098@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = Int.init(valueType:connection:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t Bool.init(valueType:connection:)(int *a1, void *a2)
{
  if (*(a1 + 16) == 2)
  {
    v2 = *a1;
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v2 & 1;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t sub_2179B314C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2179B31A4@<X0>(int *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Bool.init(valueType:connection:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2179B31D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2179B32B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t Optional<A>.init(valueType:connection:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 == 5 && *a1 == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
  }

  else
  {
    v14[0] = *a1;
    v14[1] = v8;
    v15 = v9;
    sub_2179A70AC(a2, v13);
    (*(a4 + 48))(v14, v13, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(a2);
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, a3);
  }
}

uint64_t LazyJSON.__allocating_init(valueType:connection:)(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_1_4();
  v4 = swift_allocObject();
  LazyJSON.init(valueType:connection:)(a1, a2);
  return v4;
}

uint64_t sub_2179B3470@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = LazyJSON.__allocating_init(valueType:connection:)(a1, a2);
  *a3 = result;
  return result;
}

void *LazyJSON.init(valueType:connection:)(uint64_t *a1, void *a2)
{
  v3 = *v2;
  if (*(a1 + 16) == 4)
  {
    v4 = v2;
    v7 = *a1;
    v6 = a1[1];
    v8 = v3[10];
    v9 = v3[11];
    v10 = v3[12];
    type metadata accessor for LazyLoader(0, v8, v9, v10);
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v9;
    v11[4] = v10;
    v11[5] = v7;
    v11[6] = v6;
    v12 = LazyLoader.__allocating_init(block:)(sub_2179B3AE8, v11);
    __swift_destroy_boxed_opaque_existential_1(a2);
    v4[2] = v12;
    return v4;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t sub_2179B35D0()
{
  sub_2179B314C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t LazyJSON.loaderValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  LazyLoader.load()(a1);
  v4 = *(v3 + 80);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t LazyLoader.load()@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = v1;
  v3 = *v1;
  v4 = v3[10];
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  State = type metadata accessor for LazyLoader.LoadState(0, v4, v3[11], v3[12]);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v32 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = (&v32 - v16);
  sub_2179E92E0();
  v18 = *(*v2 + 104);
  swift_beginAccess();
  v33 = v12;
  (*(v12 + 16))(v17, &v2[v18], State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = v17;
LABEL_10:
    (*(v6 + 32))(v34, v9, v4);
    return sub_2179B3BA8();
  }

  if (EnumCaseMultiPayload != 1)
  {
    swift_willThrow();
    return sub_2179B3BA8();
  }

  v20 = v35;
  (*v17)();
  if (!v20)
  {

    v30 = v32;
    (*(v6 + 16))(v32, v9, v4);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_19();
    (*(v33 + 40))(&v2[v18], v30, State);
    swift_endAccess();
    goto LABEL_10;
  }

  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  v35 = qword_280B1FEE8;
  LODWORD(v34) = sub_2179E9920();
  sub_21799ABE4(0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2179EA820;
  v22 = sub_2179E9EF0();
  v24 = v23;
  *(v21 + 56) = MEMORY[0x277D837D0];
  v25 = sub_21799C634();
  *(v21 + 64) = v25;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v36 = 0;
  v37 = 0xE000000000000000;
  v38 = v20;
  sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
  sub_2179E9C10();
  v26 = v36;
  v27 = v37;
  *(v21 + 96) = MEMORY[0x277D837D0];
  *(v21 + 104) = v25;
  *(v21 + 72) = v26;
  *(v21 + 80) = v27;
  sub_2179E93F0("Failed to lazy load JSON object of type %{public}@, error=%{public}@", 68, 2, &dword_217998000, v35, v34, v21);

  v28 = v32;
  *v32 = v20;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_19();
  v29 = v20;
  (*(v33 + 40))(&v2[v18], v28, State);
  swift_endAccess();
  swift_willThrow();

  return sub_2179B3BA8();
}

uint64_t sub_2179B3B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2179E92D0();
  swift_allocObject();
  sub_2179E92C0();
  sub_2179E92B0();
}

uint64_t LazyJSON.__deallocating_deinit()
{
  LazyJSON.deinit();
  OUTLINED_FUNCTION_1_4();

  return swift_deallocClassInstance();
}

uint64_t LazyLoader.deinit()
{
  v1 = *(*v0 + 104);
  State = type metadata accessor for LazyLoader.LoadState(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  (*(*(State - 8) + 8))(v0 + v1, State);

  return v0;
}

uint64_t LazyLoader.__deallocating_deinit()
{
  LazyLoader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2179B3D4C()
{
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_7();
  v2 = *(*(v1 + 88) + 8);
  *&v7 = v4;
  *(&v7 + 1) = v3;
  v8 = v2;
  v9 = v5;
  type metadata accessor for QuerySome(0, &v7);
  sub_2179A70AC(v0 + 16, &v7);
  return sub_2179A8074(&v7);
}

uint64_t sub_2179B3EAC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2179B3EEC(uint64_t *a1, __int128 *a2, uint64_t a3, char a4)
{
  v4 = *(a2 + 16);
  v8 = *a1;
  v6 = *a2;
  v7 = v4;
  return sub_2179DFE80(&v8, &v6, a3, a4 & 1, 0, 1);
}

void sub_2179B3F38(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_45:
      __break(1u);
      JUMPOUT(0x2179B4184);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v22 = &a1[v10 + 24] & ~v10;

          __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *a1 = v21;
        }
      }

      return;
  }
}

uint64_t sub_2179B41AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 24) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void *sub_2179B4374(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v5 + 8) + 8))();
  v6 = sub_2179A32C4(a1);
  v7 = *(v6 + 16);
  if (v7)
  {
    v17 = v4;
    v18 = v2;
    v19 = a1;
    v20 = MEMORY[0x277D84F90];
    result = sub_2179A920C(0, v7, 0);
    v9 = 0;
    v10 = v20;
    v11 = (v6 + 40);
    while (v9 < *(v6 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_2179A920C((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      ++v9;
      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 7;
      if (v7 == v9)
      {

        (*(v18 + 8))(v17, v19);
        return v10;
      }
    }

    __break(1u);
  }

  else
  {

    (*(v2 + 8))(v4, a1);
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2179B455C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 96);
  type metadata accessor for KVSEntity(255, v5, v6, a4);
  sub_2179E9840();
  Database.read<A>(block:)(&v19);
  if (v4)
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    v8 = qword_280B1FEE8;
    v9 = sub_2179E9920();
    sub_21799ABE4(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2179EA820;
    v11 = (*(v6 + 8))(v5, v6);
    v13 = v12;
    v14 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v15 = sub_21799C634();
    *(v10 + 64) = v15;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v19 = 0;
    v20 = 0xE000000000000000;
    v21 = v4;
    sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
    sub_2179E9C10();
    v16 = v19;
    v17 = v20;
    *(v10 + 96) = v14;
    *(v10 + 104) = v15;
    *(v10 + 72) = v16;
    *(v10 + 80) = v17;
    sub_2179E93F0("Failed to read from key-value store, store=%{public}@, error=%{public}@", 71, 2, &dword_217998000, v8, v9, v10);

    return swift_willThrow();
  }

  else
  {
    v21 = v19;
    MEMORY[0x28223BE20](v7);
    swift_getWitnessTable();
    return sub_2179E9B60();
  }
}

uint64_t sub_2179B4908()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2179B4948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, _UNKNOWN **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_31();
  a24 = v25;
  a25 = v27;
  v28 = *(v26 + 16);
  if (v28)
  {
    v29 = v26;
    a13 = MEMORY[0x277D84F90];
    sub_2179B4BA4(0, v28, 0);
    v30 = a13;
    v31 = (v29 + 40);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      a13 = v30;
      v35 = *(v30 + 16);
      v34 = *(v30 + 24);

      if (v35 >= v34 >> 1)
      {
        sub_2179B4BA4((v34 > 1), v35 + 1, 1);
        v30 = a13;
      }

      a11 = MEMORY[0x277D837D0];
      a12 = &protocol witness table for String;
      *&a9 = v33;
      *(&a9 + 1) = v32;
      *(v30 + 16) = v35 + 1;
      sub_2179A80B8(&a9, v30 + 40 * v35 + 32);
      v31 += 2;
      --v28;
    }

    while (v28);
  }

  OUTLINED_FUNCTION_30();
}

void sub_2179B4A2C(uint64_t a1)
{
  if (!qword_280B1D6C8)
  {
    sub_21799AC4C(255, &qword_280B1DB50, &protocol descriptor for QueryValueType);
    v1 = sub_2179E9D50();
    if (!v2)
    {
      atomic_store(v1, &qword_280B1D6C8);
    }
  }
}

void *sub_2179B4A94(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2179B4A2C(0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2179CF32C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_21799AC4C(0, &qword_280B1DB50, &protocol descriptor for QueryValueType);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2179B4BA4(void *a1, int64_t a2, char a3)
{
  result = sub_2179B4A94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t Date.queryValue.getter()
{
  sub_2179E9250();
  sub_2179E9860();
  return 0;
}

uint64_t QuerySome.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t && infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *a3 = v6 | 0x6000000000000000;
}

uint64_t sub_2179B4DB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2179B4E30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2179B4E94(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t KeyValueStore.Promises.write(_:)(uint64_t a1, uint64_t a2)
{
  sub_2179E95B0();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179B4F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v36 = sub_2179E9A60();
  v11 = *(v36 - 8);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = *(a5 + 8);
  type metadata accessor for Statement(0, a4, *(v17 + 24), v18);
  v42 = 3;
  v40 = MEMORY[0x277D837D0];
  v41 = &protocol witness table for String;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = 25705;
  *(v19 + 24) = 0xE200000000000000;
  sub_2179A0D5C(&v38, v19 + 32);
  v37 = v19;
  v38 = 0uLL;
  v39 = -1;

  v20 = sub_2179D1704(&v37, &v38, 1, 0, 0, 1, a4, v17);
  sub_2179B0CEC(v37);
  v22 = sub_2179ABC9C(v20, a4, v17, v21);
  v24 = v23;

  sub_2179A70AC(a3, &v38);
  v25 = sub_2179AC76C(&v42, v22, v24, &v38);
  v26 = v35;
  v27 = sub_2179AC7D4(v25);
  if (v26)
  {

    __swift_storeEnumTagSinglePayload(v16, 1, 1, a4);
  }

  else
  {
    v28 = v27;

    *&v38 = v28;
    sub_2179E9840();
    swift_getWitnessTable();
    sub_2179E98C0();
  }

  v29 = v36;
  (*(v11 + 16))(v14, v16, v36);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, a4);
  v31 = *(v11 + 8);
  if (EnumTagSinglePayload == 1)
  {
    v31(v14, v29);
    sub_2179DD730();
    swift_allocError();
    swift_willThrow();
    return (v31)(v16, v29);
  }

  else
  {
    v31(v16, v29);
    return (*(*(a4 - 8) + 32))(v34, v14, a4);
  }
}

uint64_t sub_2179B52B4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2179B52F4(uint64_t a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[3] = MEMORY[0x277CC9318];
  v12[4] = MEMORY[0x277CC9300];
  v12[0] = a1;
  v12[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x277CC9318]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_2179B5FB4(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_2179B6048(v10, v5, &v11);
LABEL_9:
      v8 = v11;
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v8;
  }
}

uint64_t Data.init(valueType:connection:)(uint64_t a1, void *a2)
{
  if (*(a1 + 16) == 4)
  {
    v3 = sub_2179B52F4(*a1, *(a1 + 8));
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v3;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t sub_2179B5588@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = Data.init(valueType:connection:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2179B55B0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyValueStore.write(_:)(a6);

    v9 = a6;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyValueStore.write(_:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 112);
  v116 = *(*v1 + 80);
  aBlock = v116;
  v137 = v3;
  v115 = v4;
  v138 = v4;
  v139 = v5;
  v114 = v5;
  v113 = v6;
  v140 = v6;
  v7 = type metadata accessor for KVSEntry(255, &aBlock);
  sub_2179E9A60();
  OUTLINED_FUNCTION_19();
  v9 = MEMORY[0x28223BE20](v8);
  v111 = &v103 - v10;
  v11 = *(v3 - 8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20(v16, v17, v18, v19, v20, v21, v22, v23, v103);
  v124 = v3;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v128 = v24;
  v122 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0();
  v135 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v127 = (v27 - v28);
  MEMORY[0x28223BE20](v29);
  v126 = (&v103 - v30);
  OUTLINED_FUNCTION_18();
  v120 = sub_2179E9270();
  OUTLINED_FUNCTION_0_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v110 = v34 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v103 - v37;
  OUTLINED_FUNCTION_15_0();
  v39 = swift_allocObject();
  v112 = v7;
  v40 = sub_2179E9500();
  v104 = v39;
  *(v39 + 16) = v40;
  v118 = v39 + 16;
  v125 = v1;
  v41 = v1[4];

  v119 = v38;
  v41(v42);

  v43 = a1 + 64;
  v44 = 1 << *(a1 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(a1 + 64);
  v123 = (v44 + 63) >> 6;
  v129 = (v11 + 16);
  v131 = (v11 + 32);
  v121 = (v135 + 32);
  v105 = v32;
  v108 = (v32 + 16);
  v106 = v11;
  v117 = v11 + 8;
  v107 = a1;

  v48 = 0;
  for (i = a1 + 64; ; v43 = i)
  {
    if (!v46)
    {
      v50 = v124;
      v52 = v127;
      v51 = v128;
      v53 = v126;
      while (1)
      {
        v49 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v49 >= v123)
        {
          __swift_storeEnumTagSinglePayload(v127, 1, 1, v128);
          v46 = 0;
          goto LABEL_12;
        }

        v46 = *(v43 + 8 * v49);
        ++v48;
        if (v46)
        {
          v48 = v49;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    v49 = v48;
    v50 = v124;
LABEL_11:
    v54 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v55 = v54 | (v49 << 6);
    v56 = (*(v107 + 48) + 16 * v55);
    v58 = *v56;
    v57 = v56[1];
    v59 = v106;
    v60 = v130;
    (*(v106 + 16))(v130, *(v107 + 56) + *(v106 + 72) * v55, v50);
    v62 = v127;
    v61 = v128;
    v63 = *(v128 + 48);
    *v127 = v58;
    v62[1] = v57;
    v51 = v61;
    v64 = *(v59 + 32);
    v52 = v62;
    v64(v62 + v63, v60, v50);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v51);

    v53 = v126;
LABEL_12:
    (*v121)(v53, v52, v122);
    if (__swift_getEnumTagSinglePayload(v53, 1, v51) == 1)
    {
      break;
    }

    v65 = *v53;
    v66 = v53[1];
    (*v131)(v14, v53 + *(v51 + 48), v50);
    v67 = v142;
    sub_2179B7540(v14);
    v142 = v67;
    if (v67)
    {
      v87 = v107;

      v99 = OUTLINED_FUNCTION_16();
      v100(v99, v50);
      v101 = OUTLINED_FUNCTION_11();
      v102(v101);
      goto LABEL_19;
    }

    v70 = v68;
    v71 = v69;
    v72 = v110;
    (*v108)(v110, v119, v120);

    v135 = v65;
    v73 = v70;
    v74 = v71;
    v75 = v14;
    v76 = v116;
    v77 = v50;
    v78 = v115;
    v79 = sub_2179B60C0(v65, v66, v73, v74, v72);
    v133 = v80;
    v134 = v79;
    v132 = v81;
    v82 = v130;
    (*v129)(v130, v75, v77);
    v83 = v111;
    v84 = v76;
    v14 = v75;
    sub_2179B6450(v134, v133, v132, v82, v84, v77, v78, v114, v111, v113);
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v112);
    aBlock = v135;
    v137 = v66;
    sub_2179E95B0();
    sub_2179E95D0();
    v85 = OUTLINED_FUNCTION_16();
    result = v86(v85, v77);
  }

  v87 = v107;

  v88 = v125;
  v89 = v125[7];
  OUTLINED_FUNCTION_12();
  v90 = swift_allocObject();
  v91 = v118;
  *(v90 + 16) = v88;
  *(v90 + 24) = v91;
  OUTLINED_FUNCTION_12();
  v92 = swift_allocObject();
  *(v92 + 16) = sub_2179B7BE4;
  *(v92 + 24) = v90;
  v140 = sub_2179B7BEC;
  v141 = v92;
  aBlock = MEMORY[0x277D85DD0];
  v137 = 1107296256;
  OUTLINED_FUNCTION_5();
  v138 = v93;
  v139 = &block_descriptor_33;
  v94 = _Block_copy(&aBlock);

  dispatch_sync(v89, v94);
  _Block_release(v94);
  LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

  if ((v89 & 1) == 0)
  {
    v95 = v125;
    OUTLINED_FUNCTION_12();
    v96 = swift_allocObject();
    *(v96 + 16) = v104;
    *(v96 + 24) = v95;
    LOBYTE(aBlock) = 0;

    Database.asyncWrite(_:block:)(&aBlock, sub_2179B6938, v96);

    v97 = OUTLINED_FUNCTION_11();
    v98(v97);

LABEL_19:

    return v87;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2179B5F6C()
{

  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void *sub_2179B5FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2179E9110();
  v7 = result;
  if (result)
  {
    result = sub_2179E9130();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 = (v7 + a1 - result);
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_2179E9120();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v7 + v11;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_2179B6048(v7, v13, a3);
}

uint64_t sub_2179B6048@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_2179E9190();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x21CEA90B0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x21CEA90C0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2179B60C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v9 = MEMORY[0x277D83D88];
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  sub_21799F4E0(0, &qword_280B1D7F0, sub_2179AAEF8, v9);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  sub_2179AD4A0(0, v19, v20, v21);
  swift_allocObject();
  sub_2179A7DE0();
  v23 = v22;
  sub_2179AAEF8(0);
  v25 = v24;
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v24);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v25);
  sub_2179AAF2C(0, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
  swift_allocObject();

  sub_2179AD6B4(0, 0, 0, v18, v16, v26, v27, v28, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v30 = v29;
  sub_2179AAFDC(0);
  swift_allocObject();

  v38 = -1;
  v31 = sub_2179ADBE4(0, 0, 0, 0, 0, 255, 0, 0, v38);
  swift_beginAccess();
  *(v23 + 24) = a1;
  *(v23 + 32) = a2;

  v32 = sub_2179E9270();
  (*(*(v32 - 8) + 32))(v12, a5, v32);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v32);
  v33 = *(*v30 + 104);
  swift_beginAccess();
  sub_2179B7840(v12, v30 + v33);
  swift_endAccess();

  swift_beginAccess();
  v34 = *(v31 + 24);
  v35 = *(v31 + 32);
  v36 = v40;
  *(v31 + 24) = a3;
  *(v31 + 32) = v36;
  sub_2179B78D4(v34, v35);

  return v23;
}

uint64_t sub_2179B6450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a10;
  v13 = type metadata accessor for KVSEntry(0, v15);
  return (*(*(a6 - 8) + 32))(&a9[*(v13 + 60)], a4, a6);
}

uint64_t sub_2179B64E4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *a2;
  v53 = a2;
  v7 = *(v5 + 112);
  v8 = *(v6 + 96);
  v61[0] = *(v6 + 80);
  v61[1] = v8;
  v62 = v7;
  v9 = type metadata accessor for KVSEntry(0, v61);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = v47 - v11;
  v59 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = sub_2179E9A60();
  v13 = *(v55 - 8);
  v14 = MEMORY[0x28223BE20](v55);
  v58 = (v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v57 = v47 - v16;
  swift_beginAccess();
  v17 = *(a1 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v47[2] = v10 + 16;
  v47[1] = v10 + 32;
  v54 = (v13 + 32);
  v49 = v10;
  v50 = v17;
  v52 = (v10 + 8);

  v24 = 0;
  v51 = v18;
  if (v21)
  {
    while (1)
    {
      v63 = v3;
      v25 = v24;
LABEL_10:
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = v28 | (v25 << 6);
      v30 = v49;
      v31 = (*(v50 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = v48;
      v35 = v59;
      (*(v49 + 16))(v48, *(v50 + 56) + *(v49 + 72) * v29, v59);
      v36 = TupleTypeMetadata2;
      v37 = *(TupleTypeMetadata2 + 48);
      v38 = v58;
      *v58 = v33;
      v38[1] = v32;
      v39 = v36;
      v40 = v35;
      v27 = v38;
      (*(v30 + 32))(v38 + v37, v34, v40);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v39);

      v26 = v57;
LABEL_11:
      (*v54)(v26, v27, v55);
      if (__swift_getEnumTagSinglePayload(v26, 1, v39) == 1)
      {
      }

      v41 = (v26 + *(v39 + 48));
      sub_2179B69CC();
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      v45 = *v52;

      v45(v41, v59);
      v60[0] = v42;
      v60[1] = v43;
      v60[2] = v44;
      v46 = v63;
      sub_2179B69F8(v60);
      v3 = v46;
      if (v46)
      {

        v3 = 0;
      }

      v18 = v51;

      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v26 = v57;
    v27 = v58;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v63 = v3;
        v39 = TupleTypeMetadata2;
        __swift_storeEnumTagSinglePayload(v58, 1, 1, TupleTypeMetadata2);
        v21 = 0;
        goto LABEL_11;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v63 = v3;
        v24 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2179B6954()
{
  OUTLINED_FUNCTION_0_26();
  v4(0, *(v2 + 80), *(v3 + 88));
  sub_2179A70AC(v1, v6);
  return v0(v6);
}

void sub_2179B69F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v60 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v59 = &v56 - v6;
  v58 = *(v7 + 88);
  v8 = *(*(v58 + 8) + 24);
  v61 = a1;
  v62 = v5;
  v57 = v8;
  v9 = sub_2179A32C4(v5);
  v11 = *(v9 + 16);
  v12 = MEMORY[0x277D84F90];
  v70 = v9;
  if (v11)
  {
    v13 = v9 + 32;
    v63 = v2;
    do
    {
      sub_2179A9940(v13, &v66);
      v14 = v68;
      v15 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      if (sub_2179B06A4(v14, v15))
      {
        v16 = v68;
        v17 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        (*(v17 + 16))(v64, v16, v17);
        v18 = v64[0];
        v19 = v64[1];
        v20 = v65;
        sub_2179AE2FC(&v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_7();
          sub_2179B1204();
          v12 = v23;
        }

        v21 = *(v12 + 16);
        if (v21 >= *(v12 + 24) >> 1)
        {
          sub_2179B1204();
          v12 = v24;
        }

        *(v12 + 16) = v21 + 1;
        v22 = v12 + 24 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        *(v22 + 48) = v20;
        v2 = v63;
      }

      else
      {
        sub_2179AE2FC(&v66);
      }

      v13 += 56;
      --v11;
    }

    while (v11);
  }

  v25 = v62;
  type metadata accessor for Statement(0, v62, v57, v10);
  v64[0] = v12;
  v26 = v59;
  (*(v60 + 16))(v59, v61, v25);
  *&v66 = sub_2179B7040(v26, 1, v25, v58);
  sub_2179A4B8C(0, &qword_280B1DD00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2179A4B34();
  *&v66 = sub_2179E95F0();
  *(&v66 + 1) = v27;

  MEMORY[0x21CEA9600](59, 0xE100000000000000);

  v28 = v66;
  sub_2179A70AC(v2 + 16, &v66);
  v63 = sub_2179AC76C(v64, v28, *(&v28 + 1), &v66);
  v29 = v70;
  v30 = *(v70 + 16);
  if (v30)
  {
    v64[0] = MEMORY[0x277D84F90];
    sub_2179A9394(0, v30, 0);
    v31 = 0;
    v32 = v64[0];
    v33 = v29 + 32;
    while (v31 < *(v29 + 16))
    {
      sub_2179A9940(v33, &v66);
      v34 = sub_2179B74E4(v66, *(&v66 + 1), v67, v2);
      if (v34)
      {
        v36 = v34;
        v37 = v35;
        v38 = swift_allocObject();
        *(v38 + 16) = v36;
        *(v38 + 24) = v37;
        v39 = sub_2179CF374;
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }

      sub_2179AE2FC(&v66);
      v64[0] = v32;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2179A9394((v40 > 1), v41 + 1, 1);
        v32 = v64[0];
      }

      ++v31;
      *(*(&v28 + 1) + 16) = v41 + 1;
      v42 = *(&v28 + 1) + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
      v33 += 56;
      v29 = v70;
      if (v30 == v31)
      {

        goto LABEL_22;
      }
    }

LABEL_36:
    __break(1u);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
LABEL_22:
    v43 = 0;
    v44 = *(v32 + 16);
    v45 = MEMORY[0x277D84F90];
LABEL_23:
    v46 = (v32 + 32 + 16 * v43);
    while (v44 != v43)
    {
      if (v43 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      ++v43;
      v47 = v46 + 2;
      v48 = *v46;
      v46 += 2;
      if (v48)
      {
        v49 = *(v47 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_7();
          sub_2179A94A4();
          v45 = v52;
        }

        v50 = *(v45 + 16);
        if (v50 >= *(v45 + 24) >> 1)
        {
          sub_2179A94A4();
          v45 = v53;
        }

        *(v45 + 16) = v50 + 1;
        v51 = v45 + 16 * v50;
        *(v51 + 32) = v48;
        *(v51 + 40) = v49;
        goto LABEL_23;
      }
    }

    sub_2179A9E30(v45);

    v55 = v56;
    sub_2179AC7D4(v54);

    if (!v55)
    {
    }
  }
}

uint64_t sub_2179B6F38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void Date.valueType.getter(uint64_t a1@<X8>)
{
  sub_2179E9250();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t Data.valueType.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 4;
  return sub_2179B2DDC(result, a2);
}

uint64_t static KeyValueStore.+= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  KeyValueStore.write(_:)(a2);
}

uint64_t sub_2179B7040(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v7 = sub_2179E92A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 24);
  v12 = v11(a3, a4);
  swift_beginAccess();
  v13 = *(v12 + 32);
  v54 = *(v12 + 24);

  v57 = v13;
  if (!v13)
  {
    v14 = v11(a3, a4);
    swift_beginAccess();
    v15 = *(v14 + 64);
    v16 = OUTLINED_FUNCTION_17_0();
    sub_2179CA2C0(v16, v17, v15);

    if (v15 == 255)
    {
      sub_2179E9290();
      v25 = sub_2179E9280();
      OUTLINED_FUNCTION_18_1(v25, v26);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_17_0();
      v21 = sub_2179E56A8(v18, v19, v20);
      OUTLINED_FUNCTION_18_1(v21, v22);
      v23 = OUTLINED_FUNCTION_17_0();
      sub_2179A7E34(v23, v24, v15);
    }
  }

  v55 = (*(*(a4 + 8) + 32))(a3, *(a4 + 8));
  v56 = v27;
  v53 = a3;
  v52 = a1;
  v28 = sub_2179A32C4(a3);
  v29 = *(v28 + 16);
  if (v29)
  {
    v65 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v29, 0);
    v30 = v65;
    v50 = v28;
    v31 = v28 + 32;
    v32 = v28 + 32;
    v33 = v29;
    do
    {
      sub_2179A9940(v32, &v61);
      v58 = v61;
      v59[0] = v62;
      v59[1] = v63;
      v60 = v64;
      v34 = v61;
      __swift_destroy_boxed_opaque_existential_1(v59);
      v65 = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        v37 = OUTLINED_FUNCTION_10(v35);
        sub_2179A920C(v37, v36 + 1, 1);
        v30 = v65;
      }

      *(v30 + 16) = v36 + 1;
      *(v30 + 16 * v36 + 32) = v34;
      v32 += 56;
      --v33;
    }

    while (v33);
    *&v58 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v29, 0);
    v38 = v58;
    do
    {
      sub_2179A9940(v31, &v61);
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      v39 = OUTLINED_FUNCTION_17_0();
      if (sub_2179B06A4(v39, v40))
      {
        v41 = 0xE100000000000000;
        v42 = 63;
      }

      else
      {
        v42 = sub_2179C9430(v61, *(&v61 + 1), &v62, v54, v57, v55, v56);
        v41 = v43;
      }

      sub_2179AE2FC(&v61);
      *&v58 = v38;
      v45 = *(v38 + 16);
      v44 = *(v38 + 24);
      if (v45 >= v44 >> 1)
      {
        v47 = OUTLINED_FUNCTION_10(v44);
        sub_2179A920C(v47, v45 + 1, 1);
        v38 = v58;
      }

      *(v38 + 16) = v45 + 1;
      v46 = v38 + 16 * v45;
      *(v46 + 32) = v42;
      *(v46 + 40) = v41;
      v31 += 56;
      --v29;
    }

    while (v29);
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
    v30 = MEMORY[0x277D84F90];
  }

  v48 = sub_2179B1764(v55, v56, v30, v38, v51 & 1);

  (*(*(v53 - 8) + 8))(v52);
  return v48;
}

uint64_t sub_2179B74E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 88))(a4 + 16, v5, v6);
}

void sub_2179B7540(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x21CEA9E60]();
  sub_2179B7628(a1, *(v3 + 88), &v6, &v5);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_2179B7628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X6>, uint64_t *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2179E9D50();
  swift_allocObject();
  sub_2179E97D0();
  v9 = *(TupleTypeMetadata2 + 48);
  *v10 = 118;
  *(v10 + 1) = 0xE100000000000000;
  (*(*(a2 - 8) + 16))(&v10[v9], a1, a2);
  sub_2179E9840();
  sub_2179E9540();
  sub_2179E90E0();
  swift_allocObject();
  sub_2179E90D0();
  sub_2179E95B0();
  swift_getWitnessTable();
  v11 = sub_2179E90C0();
  v13 = v12;

  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v11;
    a4[1] = v13;
  }

  return result;
}

uint64_t sub_2179B7840(uint64_t a1, uint64_t a2)
{
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179B78D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2179B314C(result, a2);
  }

  return result;
}

const void *sub_2179B78E8(const void *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(a3 + 24);
  v11 = MEMORY[0x21CEA9100](a5, a6);
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v6 = v11;
    if (v11 <= 0x7FFFFFFF)
    {
      if (qword_280B1DB08 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_5:
  v12 = sqlite3_bind_blob(v10, a4, v9, v6, qword_280B1DAF8);
  sub_21799FD18(v12, *(a3 + 16));
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (sub_2179A03E4(v13, v15, v17, 0, 0, 29))
  {
    return sub_21799C320(v14, v16, v18);
  }

  if (v18 != 29 || __PAIR128__(v16, v14) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    v30 = qword_280B1FEE8;
    v25 = sub_2179E9920();
    sub_21799ABE4(0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2179EA820;
    v28 = 0;
    v29 = 0xE000000000000000;
    v27 = v18;
    sub_2179E9C10();
    v20 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    v21 = sub_21799C634();
    *(v19 + 64) = v21;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    strcpy(v26, "bind (blob): ");
    HIWORD(v26[1]) = -4864;
    MEMORY[0x21CEA9600](*(a3 + 32), *(a3 + 40));
    v22 = v26[0];
    v23 = v26[1];
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 72) = v22;
    *(v19 + 80) = v23;
    sub_2179E93F0("Invoke failed, error=%{public}@, description=%{public}@", 55, 2, &dword_217998000, v30, v25, v19);
  }

  sub_2179A2D18();
  swift_allocError();
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  return swift_willThrow();
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

uint64_t objectdestroy_20Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2179B7C3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v2 + 112);

  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  v8 = v4;
  type metadata accessor for KVSEntry(0, v7);
  sub_2179E9360();
  swift_endAccess();
}

uint64_t sub_2179B7DE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a3;
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v38[-1] - v16;
  v38[0] = a4;
  v38[1] = a5;
  v38[2] = a6;
  v38[3] = a7;
  v38[4] = a8;
  v18 = type metadata accessor for KVSEntry(255, v38);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v38[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v38[-1] - v25);
  v27 = *a1;
  v28 = a1[1];
  *v26 = v27;
  v26[1] = v28;
  v29 = *(v18 - 8);
  (*(v29 + 16))(&v38[-1] + *(v24 + 48) - v25, a2, v18);
  (*(v20 + 16))(v23, v26, TupleTypeMetadata2);

  v30 = &v23[*(TupleTypeMetadata2 + 48)];
  v31 = *(v30 + 1);
  v32 = *(v29 + 8);

  v32(v30, v18);
  v33 = *(*v31 + 104);
  swift_beginAccess();
  sub_2179B819C(v31 + v33, v17);

  v34 = sub_2179E9270();
  result = __swift_getEnumTagSinglePayload(v17, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2179ABB38();
    if (sub_2179E9610())
    {
      sub_2179AAF2C(0, &qword_280B1D6D0, sub_2179ABB38, MEMORY[0x277D83638]);
      v36 = sub_2179E9620();
    }

    else
    {
      v36 = 0;
    }

    (*(v20 + 8))(v26, TupleTypeMetadata2);
    (*(*(v34 - 8) + 8))(v17, v34);
    return v36 & 1;
  }

  return result;
}

uint64_t sub_2179B819C(uint64_t a1, uint64_t a2)
{
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179B8254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v10 = type metadata accessor for KVSEntry(0, v12);
  return (*(*(a3 - 8) + 16))(a7, a1 + *(v10 + 60), a3);
}

void sub_2179B8338()
{
  v1 = *(sub_2179E92A0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  sub_2179B83BC(v2, v3, v4);
}

void sub_2179B83BC(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_280B1DEE0 != -1)
  {
    a1 = swift_once();
  }

  v4 = qword_280B1DEE8;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v4 + 24));
  sub_2179B8550((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  if (qword_280B1DEF8 != -1)
  {
    swift_once();
  }

  v5 = qword_280B1DF00;
  os_unfair_lock_lock((qword_280B1DF00 + 24));
  sub_2179B8A3C((v5 + 16), a3 & 1);
  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_2179B84CC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2179B889C(a2, *a1);
  sub_2179B88EC(a2);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2179E9A20();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t Database.__allocating_init(safeLocation:)(uint64_t *a1)
{
  if (qword_280B1DB60 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = qword_280B1FEE8;
  sub_21799ABE4(0);
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_17_2(v2, xmmword_2179EA830);
  v5 = v4;
  v2[3].n128_u64[1] = MEMORY[0x277D837D0];
  v6 = sub_21799C634();
  v2[4].n128_u64[0] = v6;
  v2[2].n128_u64[0] = v3;
  v2[2].n128_u64[1] = v5;
  v7 = sub_2179E9940();
  v34 = v1;
  sub_2179E93F0("Create persistent %{public}@ database", 37, 2, &dword_217998000, v1, v7, v2);

  OUTLINED_FUNCTION_8_3();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_3_4();
  sub_2179A5DEC(v9, v10, v11);
  OUTLINED_FUNCTION_15_2();
  if (v5)
  {
    v12 = v5;
    v13 = sub_2179E9920();
    OUTLINED_FUNCTION_26();
    v14 = swift_allocObject();
    v15 = OUTLINED_FUNCTION_17_2(v14, xmmword_2179EA820);
    v16 = MEMORY[0x277D837D0];
    v14[3].n128_u64[1] = MEMORY[0x277D837D0];
    v14[4].n128_u64[0] = v6;
    v14[2].n128_u64[0] = v15;
    v14[2].n128_u64[1] = v17;
    sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
    sub_2179E9C10();
    v14[6].n128_u64[0] = v16;
    v14[6].n128_u64[1] = v6;
    v14[4].n128_u64[1] = 0;
    v14[5].n128_u64[0] = 0xE000000000000000;
    sub_2179E93F0("Failed to create persistent %{public}@ database with error: %{public}@", 70, 2, &dword_217998000, v1, v13, v14);

    OUTLINED_FUNCTION_8_3();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_15_2();
    if (v13)
    {
      v18 = sub_2179E9920();
      OUTLINED_FUNCTION_26();
      v19 = swift_allocObject();
      v20 = OUTLINED_FUNCTION_17_2(v19, xmmword_2179EA820);
      v21 = MEMORY[0x277D837D0];
      v19[3].n128_u64[1] = MEMORY[0x277D837D0];
      v19[4].n128_u64[0] = v6;
      v19[2].n128_u64[0] = v20;
      v19[2].n128_u64[1] = v22;
      v23 = OUTLINED_FUNCTION_3_4();
      sub_2179A1578(v23, v24, v25);
      sub_2179E9C10();
      v19[6].n128_u64[0] = v21;
      v19[6].n128_u64[1] = v6;
      v19[4].n128_u64[1] = 0;
      v19[5].n128_u64[0] = 0xE000000000000000;
      sub_2179E93F0("Failed to create in-memory %{public}@ database with error: %{public}@", 69, 2, &dword_217998000, v34, v18, v19);

      OUTLINED_FUNCTION_8_3();
      swift_allocObject();
      v8 = sub_2179C59E0();

      v26 = v13;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_3_4();
      sub_2179A1578(v30, v31, v32);
      v26 = v12;
    }
  }

  else
  {
    v27 = OUTLINED_FUNCTION_3_4();
    sub_2179A1578(v27, v28, v29);
  }

  return v8;
}

uint64_t sub_2179B889C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2179A1C40(a1);
  if (v2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2179B88EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2179A1C40(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  sub_2179A1714(0, &unk_280B1DC40, MEMORY[0x277D843B8]);
  sub_2179E9C20();
  v6 = *(v10 + 48);
  v7 = sub_2179E92A0();
  (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  sub_2179A17C8();
  sub_2179A1608(&qword_280B1E700, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2179E9C30();
  *v2 = v10;
  return v8;
}

void sub_2179B8A3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v4 = sub_21799E0E0(a2 & 1), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 24 * v4 + 8);
    sub_2179B8B4C(v9);
    sub_2179B8E94(v9[0], v9[1], v9[2], a2 & 1);
  }

  else
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    v7 = qword_280B1FEE8;
    v8 = sub_2179E9920();
    sub_2179E93F0("Attempting to invalidate an missing assertion", 45, 2, &dword_217998000, v7, v8, MEMORY[0x277D84F90]);
  }
}

id sub_2179B8B4C@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + 2);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *v1;
    v2 = *(v1 + 1);
    if (qword_280B1E6F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_2179E9420();
  __swift_project_value_buffer(v7, qword_280B1FF00);
  v25 = v2;
  v8 = sub_2179E9400();
  v9 = sub_2179E9910();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 0xED0000776F4E6B73;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446466;
    v13 = v3;
    if (v3)
    {
      v14 = 0x61546873696E6946;
    }

    else
    {
      v14 = 0xD000000000000019;
    }

    if (!v3)
    {
      v10 = 0x80000002179F02F0;
    }

    v15 = sub_2179ABB6C(v14, v10, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2050;
    *(v11 + 14) = v6;
    _os_log_impl(&dword_217998000, v8, v9, "Decreasing interest in assertion. Name=%{public}s, New Interest Count=%{public}ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CEAA530](v12, -1, -1);
    MEMORY[0x21CEAA530](v11, -1, -1);
  }

  else
  {
    v13 = v3;
  }

  if (v6 < 1)
  {
    v17 = v25;
    v18 = sub_2179E9400();
    v19 = sub_2179E9910();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      if (v13)
      {
        v22 = 0x61546873696E6946;
      }

      else
      {
        v22 = 0xD000000000000019;
      }

      if (v13)
      {
        v23 = 0xED0000776F4E6B73;
      }

      else
      {
        v23 = 0x80000002179F02F0;
      }

      v24 = sub_2179ABB6C(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_217998000, v18, v19, "Assertion no longer has interest; invalidating assertion. Name=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CEAA530](v21, -1, -1);
      MEMORY[0x21CEAA530](v20, -1, -1);
    }

    result = [v17 invalidate];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *a1 = v13;
    a1[1] = v25;
    a1[2] = v6;

    return v25;
  }

  return result;
}

void sub_2179B8E94(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    sub_21799DF80(a1 & 1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    *v4 = v14;
  }

  else
  {
    v10 = sub_21799E0E0(a4 & 1);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      sub_21799B5B8(0, &qword_280B1DC38, MEMORY[0x277D843B8]);
      sub_2179E9C20();
      v13 = *(*(v15 + 56) + 24 * v12 + 8);
      sub_21799B6A8();
      sub_2179E9C30();

      *v4 = v15;
    }
  }
}

char *sub_2179B9018(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

uint64_t Double.init(valueType:connection:)(uint64_t a1, void *a2)
{
  if (*(a1 + 16) == 3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a2);
  }

  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t sub_2179B90D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = Double.init(valueType:connection:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t >= infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x3000000000000000);
}

uint64_t < infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x4000000000000000);
}

__n128 sub_2179B925C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2179B9270(uint64_t a1, int a2)
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

uint64_t sub_2179B9290(uint64_t result, int a2, int a3)
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

uint64_t sub_2179B9388()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2179B93C8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2179B947C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_2179B94B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t sub_2179B94EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2179B9574()
{

  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2179B95A8()
{

  OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2179B95E0()
{

  OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2179B9674(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x72656765746E69;
      break;
    case 2:
      result = 1819242338;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 1651469410;
      break;
    case 5:
      result = 1819047278;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s5TeaDB8DatabaseC9CacheSizeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_22_0(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5TeaDB8DatabaseC9CacheSizeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2179B98A8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2179B98F8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

__n128 sub_2179B9A94(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2179B9AA8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_2179B9B14(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2179B9B58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2179B9C1C()
{
  v1 = OUTLINED_FUNCTION_1_1();
  sub_2179D2A3C(v1, v2, v3);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v6 | 7);
}

__n128 sub_2179B9D38(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2179B9DB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2179B9E40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2179BA01C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2179BA0B8()
{
  v1 = OUTLINED_FUNCTION_1_1();
  sub_2179E38A0(v1, v2, v3);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v6 | 7);
}

uint64_t sub_2179BA148@<X0>(uint64_t *a1@<X8>)
{
  result = SearchColumn.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2179BA1C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2179BA200()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t KeyValueStore.__allocating_init(database:)(void *a1)
{
  v2 = swift_allocObject();
  KeyValueStore.init(database:)(a1);
  return v2;
}

uint64_t sub_2179BA328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v11 = sub_2179E9460();
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2179E9480();
  v14 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + 56);

    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = a5;
    v18[6] = v23;
    v18[7] = a1;
    aBlock[4] = sub_2179BD39C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2179A230C;
    aBlock[3] = &block_descriptor_86;
    v19 = _Block_copy(aBlock);

    sub_2179E9470();
    v26 = MEMORY[0x277D84F90];
    sub_21799F39C(&qword_280B1DD50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v20 = MEMORY[0x277D85198];
    sub_21799F4E0(0, &qword_280B1DD18, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21799F544(&qword_280B1DD10, &qword_280B1DD18, v20);
    sub_2179E9AA0();
    v21 = v22;
    MEMORY[0x21CEA98A0](0, v16, v13, v19);
    _Block_release(v19);

    (*(v25 + 8))(v13, v11);
    (*(v14 + 8))(v16, v24);
  }

  return result;
}

uint64_t sub_2179BA678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    v21[0] = a2;
    v21[1] = a3;
    v21[2] = a4;
    v21[3] = a5;
    v21[4] = a6;
    type metadata accessor for KVSEntry(0, v21);
    v12 = MEMORY[0x277D837D0];
    v13 = sub_2179E9550();

    swift_beginAccess();
    sub_2179E95B0();
    sub_2179E95A0();
    swift_endAccess();
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    v14 = qword_280B1FEE8;
    v15 = sub_2179E9920();
    sub_21799ABE4(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2179EA820;
    v17 = MEMORY[0x277D83C10];
    *(v16 + 56) = MEMORY[0x277D83B88];
    *(v16 + 64) = v17;
    *(v16 + 32) = v13;
    v18 = (*(a4 + 8))(a2, a4);
    v20 = v19;
    *(v16 + 96) = v12;
    *(v16 + 104) = sub_21799C634();
    *(v16 + 72) = v18;
    *(v16 + 80) = v20;
    sub_2179E93F0("Removed %ld cache entries from key-value store due to memory warning, store=%{public}@", 86, 2, &dword_217998000, v14, v15, v16);
  }

  return result;
}

uint64_t sub_2179BA8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  v6 = qword_280B1FEE8;
  v7 = sub_2179E9920();
  sub_21799ABE4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2179EA820;
  v9 = (*(a4 + 8))(a2, a4);
  v11 = v10;
  v12 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v13 = sub_21799C634();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
  sub_2179E9C10();
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xE000000000000000;
  sub_2179E93F0("Failed to create key-value store, store=%{public}@, error=%{public}@", 68, 2, &dword_217998000, v6, v7, v8);
}

uint64_t sub_2179BAA38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 32);
  if (result)
  {
    *a2 = *(v3 + 24);
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179BAAA0(uint64_t a1, uint64_t a2)
{
  sub_21799F4E0(0, &unk_280B1D898, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(a1 + 8);
  v7 = *(*v6 + 104);
  swift_beginAccess();
  sub_2179B819C(v6 + v7, v5);
  v8 = sub_2179E9270();
  result = __swift_getEnumTagSinglePayload(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2179ABB38();
    if (sub_2179E9610())
    {
      sub_2179AAF2C(0, &qword_280B1D6D0, sub_2179ABB38, MEMORY[0x277D83638]);
      v10 = sub_2179E9620();
    }

    else
    {
      v10 = 0;
    }

    (*(*(v8 - 8) + 8))(v5, v8);
    return v10 & 1;
  }

  return result;
}

uint64_t sub_2179BAC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = swift_beginAccess();
  v7 = *(a2 + 32);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v8 = *(a2 + 24);
    sub_2179B2DDC(v8, *(a2 + 32));
    sub_2179BAE88(a3);
    sub_2179B78D4(v8, v7);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, *(v5 + 88));
  }

  return result;
}

void sub_2179BAE88(uint64_t x8_0@<X8>)
{
  v5 = *v3;
  v6 = MEMORY[0x21CEA9E60]();
  sub_2179BC200(v5[10], v5[11], v5[12], v5[13], v5[14], &v7, x8_0);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_2179BAF70(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  swift_beginAccess();
  type metadata accessor for KVSEntity(0, *(v4 + 80), *(v4 + 96), v5);

  v8 = sub_2179E97C0();
  if (v8 == sub_2179E9820())
  {
  }

  while (1)
  {
    v6 = sub_2179E9800();
    sub_2179E97E0();
    if ((v6 & 1) == 0)
    {
      break;
    }

    sub_2179E9830();
    sub_2179E4CE8();
    sub_2179CE998();
    if (v3)
    {

      v3 = 0;
    }

    if (v8 == sub_2179E9820())
    {
    }
  }

  result = sub_2179E9B20();
  __break(1u);
  return result;
}

uint64_t KeyValueStore.delete(_:)(uint64_t a1)
{
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_12();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  OUTLINED_FUNCTION_12();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2179BB3E4;
  *(v5 + 24) = v4;
  v10[4] = sub_2179BD6C4;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_5();
  v10[2] = v6;
  v10[3] = &block_descriptor_46;
  v7 = _Block_copy(v10);

  dispatch_sync(v3, v7);
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_12();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v1;
    LOBYTE(v10[0]) = 0;

    Database.asyncWrite(_:block:)(v10, sub_2179BB490, v9);

    return a1;
  }

  return result;
}

uint64_t sub_2179BB310(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v2 + 112);
  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  v8 = v4;
  type metadata accessor for KVSEntry(0, v7);
  sub_2179E9370();
  return swift_endAccess();
}

uint64_t sub_2179BB3EC(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_2179E4CE8();

      sub_2179CEADC(v6, v5);
      if (v2)
      {

        v2 = 0;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2179BB4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_2179E9A60();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v10 = *a3;
  v9 = a3[1];
  (*(v11 + 16))(&v13 - v7, a1);

  return KeyValueStore.subscript.setter(v8, v10, v9);
}

uint64_t KeyValueStore.subscript.setter(char *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 88);
  v8 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *(v7 - 8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  (*(v10 + 16))(v13, a1, v8);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    v18 = *(v10 + 8);
    v19 = v18(v13, v8);
    OUTLINED_FUNCTION_7_0(v19, &qword_280B1DC20, MEMORY[0x277D837D0]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2179EA830;
    *(v20 + 32) = a2;
    *(v20 + 40) = a3;
    KeyValueStore.delete(_:)(v20);
    swift_bridgeObjectRelease_n();
    return v18(a1, v8);
  }

  else
  {
    v29 = v8;
    v30 = a1;
    (*(v14 + 32))(v17, v13, v7);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_2179E9D50();
    swift_allocObject();
    sub_2179E97D0();
    v22 = *(TupleTypeMetadata2 + 48);
    *v23 = a2;
    *(v23 + 1) = a3;
    (*(v14 + 16))(&v23[v22], v17, v7);
    sub_2179E9840();
    v24 = sub_2179E9540();
    KeyValueStore.write(_:)(v24);

    v27 = v29;
    v26 = v30;

    (*(v10 + 8))(v26, v27);
    return (*(v14 + 8))(v17, v7);
  }
}

void (*KeyValueStore.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  OUTLINED_FUNCTION_21();
  v8 = sub_2179E9A60();
  v7[3] = v8;
  v9 = *(v8 - 8);
  v7[4] = v9;
  v10 = *(v9 + 64);
  v7[5] = __swift_coroFrameAllocStub(v10);
  v7[6] = __swift_coroFrameAllocStub(v10);
  KeyValueStore.subscript.getter(a2, a3);
  return sub_2179BBA20;
}

void sub_2179BBA20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);

    KeyValueStore.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;

    KeyValueStore.subscript.setter(v4, v10, v9);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t KeyValueStore.Promises.delete(_:)()
{
  sub_21799F320(0);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179BBB6C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyValueStore.delete(_:)(a6);

    v9 = a6;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyValueStore.readAsync(_:)()
{
  OUTLINED_FUNCTION_13_0();
  v4 = v3;
  OUTLINED_FUNCTION_23(v5, v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_4_0(*(v1 + 112), v4[5], v4[6], v14[0], v14[1], v15);
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  result = (*(v11 + 16))(v14, v2);
  if (v14[0].n128_u8[8])
  {
    __break(1u);
  }

  else
  {
    KeyValueStore.Promises.read(_:maxAge:)(v0, v10);
    OUTLINED_FUNCTION_17_1();
    (*(v13 + 8))(v14, v10);
    return v0;
  }

  return result;
}

uint64_t KeyValueStore.readAsync(_:maxAge:)()
{
  OUTLINED_FUNCTION_13_0();
  v4 = v3;
  OUTLINED_FUNCTION_23(v5, v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_4_0(*(v1 + 112), v4[5], v4[6], v14[0], v14[1], v15);
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  result = (*(v11 + 16))(v14, v2);
  if (v14[0].n128_u8[8])
  {
    __break(1u);
  }

  else
  {
    KeyValueStore.Promises.read(_:maxAge:)(v0, v10);
    OUTLINED_FUNCTION_17_1();
    (*(v13 + 8))(v14, v10);
    return v0;
  }

  return result;
}

uint64_t sub_2179BBE38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_22();
  v6 = v5;
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v8 = OUTLINED_FUNCTION_4_0(*(v7 + 112), v6[5], v6[6], v12[0], v12[1], v13);
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  result = (*(v9 + 16))(v12, v2 + 72);
  if (v12[0].n128_u8[8])
  {
    __break(1u);
  }

  else
  {
    v11 = a2(a1, v8);
    (*(*(v8 - 8) + 8))(v12, v8);
    return v11;
  }

  return result;
}

uint64_t KeyValueStore.deinit()
{
  v1 = *v0;
  v2 = *v0;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4_0(v1[7].n128_i64[0], v2[5], v2[6], v5, v6, v7);
  OUTLINED_FUNCTION_9();
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v0 + 72);
  return v0;
}

uint64_t KeyValueStore.__deallocating_deinit()
{
  KeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2179BC094()
{
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](0);
  return sub_2179E9E40();
}

uint64_t sub_2179BC1A4(uint64_t a1)
{
  sub_2179E9E20();
  sub_2179BC06C();
  return sub_2179E9E40();
}

uint64_t sub_2179BC200@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v35 = a8;
  v23 = a7;
  v26 = a3;
  v27 = a5;
  v25 = a9;
  v12 = sub_2179E9A60();
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  sub_2179E92D0();
  swift_allocObject();
  sub_2179E92C0();
  sub_2179E95B0();
  v33 = MEMORY[0x277D83808];
  v34 = a6;
  swift_getWitnessTable();
  sub_2179E92B0();
  v15 = v9;

  if (v9)
  {
    goto LABEL_4;
  }

  v22 = a6;
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v28 = 118;
  v29 = 0xE100000000000000;
  sub_2179E95C0();

  if (__swift_getEnumTagSinglePayload(v14, 1, a4) == 1)
  {
    (*(v17 + 8))(v14, v12);
    v28 = v19;
    v29 = a4;
    v30 = v20;
    v31 = v22;
    v32 = v23;
    type metadata accessor for KeyValueStore.TranslationError(0, &v28);
    swift_getWitnessTable();
    v15 = swift_allocError();
    result = swift_willThrow();
LABEL_4:
    *v35 = v15;
    return result;
  }

  return (*(*(a4 - 8) + 32))(v18, v14, a4);
}

uint64_t sub_2179BC49C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2179E9D70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4164657461647075 && a2 == 0xE900000000000074;
    if (v6 || (sub_2179E9D70() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F734A65756C6176 && a2 == 0xE90000000000006ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_2179E9D70();

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

uint64_t sub_2179BC5F0(unsigned __int8 a1)
{
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](a1);
  return sub_2179E9E40();
}

uint64_t sub_2179BC644(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x4164657461647075;
  }

  return 0x6F734A65756C6176;
}

uint64_t sub_2179BC6C8(uint64_t a1)
{
  sub_2179E9E20();
  sub_2179BC5C8(v3, *v1);
  return sub_2179E9E40();
}

uint64_t sub_2179BC71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179BC49C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179BC770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179BC5B0();
  *a1 = result;
  return result;
}

uint64_t sub_2179BC7A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179BC7F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2179BC848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a3;
  v18 = a4;
  type metadata accessor for KVSEntity.CodingKeys(255, a5, a6, a4);
  swift_getWitnessTable();
  v8 = sub_2179E9D30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v22 = a2;
  v21 = 0;
  sub_2179AD4A0(0, v12, v13, v14);
  sub_21799F39C(&qword_27CB97BB0, sub_2179AD4A0, &protocol conformance descriptor for Column<A>);
  v15 = v20;
  sub_2179E9D20();
  if (!v15)
  {
    v16 = v18;
    v22 = v19;
    v21 = 1;
    sub_2179AAF2C(0, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
    sub_2179BD2C0(&qword_27CB97BB8, &protocol conformance descriptor for Column<A>);
    sub_2179E9D20();
    v22 = v16;
    v21 = 2;
    sub_2179AAFDC(0);
    sub_21799F39C(qword_27CB97BC0, sub_2179AAFDC, &protocol conformance descriptor for Column<A>);
    sub_2179E9D20();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2179BCB10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for KVSEntity.CodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v38 = sub_2179E9CD0();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v34 - v6;
  sub_21799F4E0(0, &qword_280B1D7F0, sub_2179AAEF8, MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  sub_2179AD4A0(0, v13, v14, v15);
  v36 = v16;
  swift_initStackObject();
  sub_2179A7DE0();
  v39 = v17;
  sub_2179AAEF8(0);
  v19 = v18;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  sub_2179AAF2C(0, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
  swift_allocObject();
  sub_2179AD6B4(0, 0, 0, v12, v10, v20, v21, v22, v34, v35, v36, v37, v38, v39, v40, WitnessTable, v42, v43, v44, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6]);
  v24 = v23;
  sub_2179AAFDC(0);
  v26 = v25;
  swift_initStackObject();
  v27 = sub_2179ADBE4(0, 0, 0, 0, 0, 255, 0, 0, -1);
  v28 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = v40;
  v30 = v42;
  sub_2179E9E90();
  if (v30)
  {
  }

  else
  {
    v35 = v26;
    WitnessTable = v24;
    v42 = v27;
    v31 = v37;
    HIBYTE(v44) = 0;
    sub_21799F39C(&qword_27CB97B98, sub_2179AD4A0, &protocol conformance descriptor for Column<A>);
    v32 = v38;
    sub_2179E9CC0();

    v5 = v46;
    HIBYTE(v44) = 1;
    sub_2179BD2C0(&qword_27CB97BA0, &protocol conformance descriptor for Column<A>);
    sub_2179E9CC0();

    HIBYTE(v44) = 2;
    sub_21799F39C(&qword_27CB97BA8, sub_2179AAFDC, &protocol conformance descriptor for Column<A>);
    sub_2179E9CC0();
    (*(v31 + 8))(v29, v32);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  return v5;
}

uint64_t sub_2179BD0A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_2179BCB10(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_2179BD1CC(uint64_t a1, int a2)
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

uint64_t sub_2179BD1EC(uint64_t result, int a2, int a3)
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

uint64_t sub_2179BD24C(uint64_t a1, int a2)
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

uint64_t sub_2179BD26C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2179BD2C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2179AAF2C(255, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RowID.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_2179BD428(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Transaction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2179BD554(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Optional<A>.valueType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13, v17);
  result = __swift_getEnumTagSinglePayload(v15, 1, v5);
  if (result == 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 5;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_7_1();
    v20(v19);
    (*(a2 + 40))(v5, a2);
    return (*(v7 + 8))(v11, v5);
  }

  return result;
}

uint64_t Optional<A>.saveChain(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    return 0;
  }

  v15 = OUTLINED_FUNCTION_7_1();
  v16(v15);
  v14 = (*(a3 + 8))(a1, v5, a3);
  (*(v6 + 8))(v9, v5);
  return v14;
}

uint64_t _Optional.value.getter@<X0>(uint64_t a2@<X8>)
{
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t _Optional.value.setter(uint64_t a1, uint64_t a2)
{
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t _Optional.valueType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  (*(v9 + 16))(&v18 - v11, v3, v7);
  v13 = OUTLINED_FUNCTION_10_2();
  if (__swift_getEnumTagSinglePayload(v13, v14, v6) == 1)
  {
    result = (*(v9 + 8))(v12, v7);
    v16 = 0uLL;
    v17 = 5;
  }

  else
  {
    (*(*(a1 + 24) + 40))(&v19, v6);
    v18 = v19;
    v17 = v20;
    result = (*(*(v6 - 8) + 8))(v12, v6);
    v16 = v18;
  }

  *a2 = v16;
  *(a2 + 16) = v17;
  return result;
}

uint64_t _Optional.init(valueType:connection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2();
  v61[1] = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v61 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v61 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v61 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v61 - v20;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = *a1;
  v23 = *(a1 + 8);
  v25 = *(a1 + 16);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_4_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  switch(v25)
  {
    case 1:
      v62 = v24;
      if (!OUTLINED_FUNCTION_8_0(v19, &v62, MEMORY[0x277D83B88]))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_1();
      (*(v50 + 8))(a3);
      v46 = OUTLINED_FUNCTION_3_0();
      v48 = v19;
      goto LABEL_12;
    case 2:
      LOBYTE(v62) = v24 & 1;
      if ((OUTLINED_FUNCTION_8_0(v13, &v62, MEMORY[0x277D839B0]) & 1) == 0)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_1();
      (*(v45 + 8))(a3);
      v46 = OUTLINED_FUNCTION_3_0();
      v48 = v13;
      goto LABEL_12;
    case 3:
      v62 = v24;
      if ((OUTLINED_FUNCTION_8_0(v16, &v62, MEMORY[0x277D839F8]) & 1) == 0)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_1();
      (*(v49 + 8))(a3);
      v46 = OUTLINED_FUNCTION_3_0();
      v48 = v16;
LABEL_12:
      v47(v46, v48, a2);
      goto LABEL_19;
    case 4:
      v62 = v24;
      v63 = v23;
      if (OUTLINED_FUNCTION_8_0(v10, &v62, MEMORY[0x277CC9318]))
      {
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_0_1();
        (*(v38 + 8))(a3);
        v39 = OUTLINED_FUNCTION_3_0();
        v40(v39, v10, a2);
        OUTLINED_FUNCTION_4_1();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
        return sub_2179B314C(v62, v63);
      }

      sub_2179B314C(v62, v63);
      goto LABEL_18;
    case 5:
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_0_1();
      (*(v51 + 8))(a3);
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_4_1();

      return __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    default:
      v62 = v24;
      v63 = v23;
      if (OUTLINED_FUNCTION_8_0(v21, &v62, MEMORY[0x277D837D0]))
      {
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_0_1();
        (*(v30 + 8))(a3);
        v31 = OUTLINED_FUNCTION_3_0();
        v32(v31, v21, a2);
        OUTLINED_FUNCTION_4_1();
        __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
      }

      else
      {

LABEL_18:
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_0_1();
        (*(v56 + 8))(a3);
        OUTLINED_FUNCTION_10_2();
LABEL_19:
        OUTLINED_FUNCTION_4_1();
        return __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      }
  }
}

uint64_t _Optional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_4_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1();
  v10 = *(v9 + 40);

  return v10(a2, a1, v8);
}

uint64_t _Optional.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v8 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v22 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v23 = a3;
  v28 = type metadata accessor for _Optional(0, a2, a3, v13);
  OUTLINED_FUNCTION_2();
  v25 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  __swift_storeEnumTagSinglePayload(&v21 - v16, 1, 1, a2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E80();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v25 + 8))(v17, v28);
  }

  else
  {
    v21 = v8;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    if ((sub_2179E9D90() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v26, v27);
      sub_2179E9D80();
      __swift_storeEnumTagSinglePayload(v12, 0, 1, a2);
      (*(v22 + 40))(v17, v12, v21);
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    v19 = v25;
    v20 = v28;
    (*(v25 + 16))(v24, v17, v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v19 + 8))(v17, v20);
  }
}

uint64_t _Optional.encode(to:)(void *a1, uint64_t a2)
{
  v17[1] = a2;
  v3 = *(a2 + 16);
  v4 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EA0();
  (*(v6 + 16))(v9, v17[2], v4);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    (*(v6 + 8))(v9, v4);
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    sub_2179E9DB0();
  }

  else
  {
    (*(v11 + 32))(v15, v9, v3);
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    sub_2179E9DA0();
    (*(v11 + 8))(v15, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
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

uint64_t sub_2179BE6B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2179BE748(uint64_t a1)
{
  result = sub_2179E9A60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2179BE7B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2179BE930(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2179BEB58(char a1, uint64_t a2, uint64_t a3)
{
  sub_2179A7E4C();
  v7 = v6;
  v8 = *(v6 + 16);
  v9 = v8 + 1;
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v27;
  }

  *(v7 + 16) = v9;
  v10 = v7 + 16 * v8;
  *(v10 + 32) = 0xD000000000000014;
  *(v10 + 40) = 0x80000002179EFB30;
  if (a1)
  {
    if ((v8 + 2) > *(v7 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v32;
    }

    *(v7 + 16) = v8 + 2;
    v11 = v7 + 16 * v9;
    strcpy((v11 + 32), "IF NOT EXISTS");
    *(v11 + 46) = -4864;
  }

  v12 = (*(*(a3 + 8) + 32))(a2);
  v14 = v13;
  v15 = *(v7 + 16);
  v16 = *(v7 + 24) >> 1;
  v17 = v15 + 1;
  if (v16 <= v15)
  {
    sub_2179A7E4C();
    v7 = v28;
    v16 = *(v28 + 24) >> 1;
  }

  *(v7 + 16) = v17;
  v18 = v7 + 16 * v15;
  *(v18 + 32) = v12;
  *(v18 + 40) = v14;
  if (v16 < (v15 + 2))
  {
    sub_2179A7E4C();
    v7 = v29;
  }

  *(v7 + 16) = v15 + 2;
  v19 = v7 + 16 * v17;
  *(v19 + 32) = 0x474E495355;
  *(v19 + 40) = 0xE500000000000000;
  sub_2179BEE3C(v7, a2, a3);
  v20 = sub_2179BEFF0(v7, a2, a3);
  sub_2179A922C(v20);
  sub_2179A5088();
  sub_2179A4B34();
  v21 = sub_2179E95F0();
  v23 = v22;

  MEMORY[0x21CEA9600](v21, v23);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2179A7E4C();
    v7 = v30;
  }

  v24 = *(v7 + 16);
  if (v24 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v31;
  }

  *(v7 + 16) = v24 + 1;
  v25 = v7 + 16 * v24;
  *(v25 + 32) = 0x2835737466;
  *(v25 + 40) = 0xE500000000000000;
  return v7;
}

uint64_t sub_2179BEE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*(*(v8 + 8) + 24) + 8))(a2);
  (*(a3 + 16))(v20, a2, a3);
  v9 = v20[1];

  v19 = v9;
  v16 = a2;
  v17 = a3;
  v18 = v7;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();
  v10 = sub_2179E9840();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_2179A2E44(sub_2179BF580, v15, v10, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  (*(v5 + 8))(v7, a2);
  return v13;
}

uint64_t sub_2179BEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 24);
  v6 = *(v5(a2, a3) + 16);

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = *(v5(a2, v3) + 16);
    if (v8)
    {
      v33 = v3;
      *&v35 = v7;
      sub_2179A920C(0, v8, 0);
      v9 = 32;
      do
      {
        v10 = sub_2179E9D40();
        v12 = v11;
        *&v35 = v7;
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_2179A920C((v13 > 1), v14 + 1, 1);
          v7 = v35;
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        v9 += 8;
        --v8;
      }

      while (v8);

      v3 = v33;
    }

    else
    {
    }

    sub_2179A5088();
    sub_2179A4B34();
    v16 = sub_2179E95F0();
    v18 = v17;

    *&v35 = 0x3D20786966657270;
    *(&v35 + 1) = 0xEA00000000002220;
    MEMORY[0x21CEA9600](v16, v18);

    MEMORY[0x21CEA9600](34, 0xE100000000000000);
    v19 = v35;
    sub_2179A7E4C();
    v7 = v20;
    v21 = *(v20 + 16);
    if (v21 >= *(v20 + 24) >> 1)
    {
      sub_2179A7E4C();
      v7 = v32;
    }

    *(v7 + 16) = v21 + 1;
    *(v7 + 16 * v21 + 32) = v19;
  }

  strcpy(v34, "tokenize = ");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  (*(v3 + 32))(&v35, a2, v3);
  v22 = sub_2179DD784();
  v24 = v23;
  sub_2179BF52C(&v35);
  MEMORY[0x21CEA9600](v22, v24);

  MEMORY[0x21CEA9600](34, 0xE100000000000000);
  v25 = v34[0];
  v26 = v34[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2179A7E4C();
    v7 = v30;
  }

  v27 = *(v7 + 16);
  if (v27 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v7 = v31;
  }

  *(v7 + 16) = v27 + 1;
  v28 = v7 + 16 * v27;
  *(v28 + 32) = v25;
  *(v28 + 40) = v26;
  return v7;
}

uint64_t sub_2179BF338@<X0>(uint64_t *a3@<X8>)
{
  swift_getAtKeyPath();
  v4 = *(v21 + 16);
  os_unfair_lock_lock((v4 + 64));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 64));
  sub_2179A7E4C();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9 >= *(v7 + 24) >> 1)
  {
    sub_2179A7E4C();
    v8 = v19;
  }

  *(v8 + 16) = v9 + 1;
  v10 = v8 + 16 * v9;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  v11 = *(v21 + 16);
  os_unfair_lock_lock((v11 + 64));
  v12 = *(v11 + 40);
  os_unfair_lock_unlock((v11 + 64));
  if (v12 == 1)
  {
    v13 = *(v8 + 16);
    if (v13 >= *(v8 + 24) >> 1)
    {
      sub_2179A7E4C();
      v8 = v20;
    }

    *(v8 + 16) = v13 + 1;
    v14 = v8 + 16 * v13;
    *(v14 + 32) = 0x455845444E494E55;
    *(v14 + 40) = 0xE900000000000044;
  }

  sub_2179A5088();
  sub_2179A4B34();
  v15 = sub_2179E95F0();
  v17 = v16;

  *a3 = v15;
  a3[1] = v17;
  return result;
}

uint64_t sub_2179BF5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t DataType.hashValue.getter()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t sub_2179BF674(uint64_t a1)
{
  v2 = *v1;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v2);
  return sub_2179E9E40();
}

unint64_t sub_2179BF6BC()
{
  result = qword_27CB97E10;
  if (!qword_27CB97E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DataType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2179BF874(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  static EntityType.dataType.getter(a1);
}

uint64_t sub_2179BF8B8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();

  return EntityType.valueType.getter(v1, v2);
}

uint64_t sub_2179BF904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  swift_beginAccess();
  result = *(v4 + 32);
  if (result)
  {
    *a2 = *(v4 + 24);
    *(a2 + 8) = result;
    *(a2 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EntityType.valueType.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 24))();
  swift_beginAccess();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  if (v4)
  {
    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179BF9F8()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_8_1(WitnessTable);
}

uint64_t sub_2179BFA30(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  if (!a3)
  {
    v27 = MEMORY[0x277D837D0];
    v28 = &protocol witness table for String;
    *&v26 = a1;
    *(&v26 + 1) = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = 25705;
    *(v7 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v26, v7 + 32);
    *&v26 = v7;

    v15 = sub_2179A9A0C(v8, v9, v10, v11, v12, v13, v14);
    v17 = sub_2179E5D00(42, 0xE100000000000000, v15, v16, 0, 0, 0, 1, 0, 1);

    *&v26 = v17;
    sub_2179A5088();
    sub_2179A4B34();
    *&v26 = sub_2179E95F0();
    *(&v26 + 1) = v18;

    MEMORY[0x21CEA9600](59, 0xE100000000000000);

    v19 = v26;
    sub_2179A70AC(a4, &v26);
    sub_2179C0E78(0, v20, v21, v22);
    swift_initStackObject();
    sub_2179A935C(3, v19, *(&v19 + 1), &v26);
    v23 = sub_2179A5760();

    if (*(v23 + 16))
    {
      v24 = *(v23 + 32);

      sub_2179AC53C(a1, a2, 0);
      __swift_destroy_boxed_opaque_existential_1(a4);
      return v24;
    }

    __break(1u);

    __break(1u);
  }

  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t EntityType.init(valueType:connection:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2179E9A60();
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  if (!*(a1 + 16))
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a4 + 8);
    type metadata accessor for Statement(0, a3, *(v16 + 24), v11);
    v32 = 3;
    v30 = MEMORY[0x277D837D0];
    v31 = &protocol witness table for String;
    *&v28 = v14;
    *(&v28 + 1) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = 25705;
    *(v17 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v28, v17 + 32);
    v27 = v17;
    v28 = 0uLL;
    v29 = -1;

    v18 = sub_2179D1704(&v27, &v28, 0, 1, 0, 1, a3, v16);
    sub_2179B0CEC(v27);
    v20 = sub_2179ABC9C(v18, a3, v16, v19);
    v22 = v21;

    sub_2179A70AC(a2, &v28);
    v23 = sub_2179AC76C(&v32, v20, v22, &v28);
    v24 = sub_2179AC7D4(v23);

    *&v28 = v24;
    sub_2179E9840();
    swift_getWitnessTable();
    sub_2179E98C0();
    if (__swift_getEnumTagSinglePayload(v13, 1, a3) != 1)
    {

      sub_2179AC53C(v14, v15, 0);
      __swift_destroy_boxed_opaque_existential_1(a2);
      return (*(*(a3 - 8) + 32))(a5, v13, a3);
    }

    __break(1u);
  }

  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t (*sub_2179BFF38())()
{
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_1(WitnessTable);
  return OUTLINED_FUNCTION_3_1();
}

uint64_t (*sub_2179BFF74(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  sub_2179A70AC(a1, v7);
  v5 = swift_allocObject();
  sub_2179A0D5C(v7, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;

  return sub_2179C0F58;
}

uint64_t (*EntityType.saveChain(for:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  sub_2179A70AC(v11, v16);
  (*(v7 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v12 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_2179A0D5C(v16, v13 + 32);
  (*(v7 + 32))(v13 + v12, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_2179C012C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static EntityType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t (*sub_2179C0174(uint64_t a1, char a2))()
{
  sub_2179A70AC(a1, v5);
  v3 = swift_allocObject();
  sub_2179A0D5C(v5, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 57) = 1;
  return sub_2179C10A0;
}

uint64_t (*sub_2179C0214())()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2(WitnessTable);
  return OUTLINED_FUNCTION_4_2();
}

uint64_t (*sub_2179C0250(uint64_t a1, char a2, char a3))()
{
  sub_2179A70AC(a1, v7);
  v5 = swift_allocObject();
  sub_2179A0D5C(v7, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 57) = a3;
  return sub_2179C0ED0;
}

uint64_t (*static EntityType.createTableChain(for:ifNotExists:shouldVersion:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5))()
{
  sub_2179A70AC(a1, v11);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  sub_2179A0D5C(v11, v9 + 32);
  *(v9 + 72) = a2;
  *(v9 + 73) = a3;
  return OUTLINED_FUNCTION_4_2();
}

uint64_t sub_2179C0354(uint64_t a1, char a2, char a3)
{
  sub_2179A70AC(a1, v15);
  sub_2179A0D5C(v15, v14);
  sub_2179A70AC(v14, v13);
  sub_2179A70AC(v14, v12);
  v5 = sub_2179A0BF8(v12);
  v7 = v6;
  v9 = v8;
  sub_2179C0F78(0, qword_280B1DF38, sub_2179A0730, &type metadata for Versions.Entity, type metadata accessor for Create);
  inited = swift_initStackObject();
  sub_2179A0D5C(v13, (inited + 2));
  inited[7] = v5;
  inited[8] = v7;
  inited[9] = v9;
  sub_2179A7BC0(a2, a3);
  swift_setDeallocating();
  sub_2179C0EF4();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_2179C0478(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Table(0, a4, a5, a4);
  sub_2179A70AC(a1, v9);
  sub_2179A8074(v9);
  sub_2179A6BC4();
  sub_2179A77F8(a2, a3);
}

uint64_t sub_2179C0520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2179A70AC(a1, v9);
  sub_2179A0D5C(v9, v8);
  sub_2179A70AC(v8, v7);
  sub_2179C0F78(0, qword_280B1E1D8, sub_2179A0E88, &type metadata for Versions.Entity, type metadata accessor for Save);
  inited = swift_initStackObject();
  sub_2179A0D5C(v7, inited + 16);
  sub_2179AFCA4(a2, a3);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_2179C0610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Table(0, a3, a4, a4);
  sub_2179A70AC(a1, v7);
  sub_2179A8074(v7);
  sub_2179B69CC();
  sub_2179B69F8(a2);
}

uint64_t sub_2179C0764(void *a1)
{
  sub_2179C0F78(0, &qword_27CB97E18, sub_2179C0E24, &type metadata for RawEntity.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179C0E24();
  sub_2179E9EB0();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2179C08C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179C0738(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2179C0910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179ABDB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2179C093C(uint64_t a1)
{
  v2 = sub_2179C0E24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179C0978(uint64_t a1)
{
  v2 = sub_2179C0E24();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2179C09F8(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  static EntityType.dataType.getter(a1);
}

uint64_t sub_2179C0A2C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();

  return EntityType.valueType.getter(v1, v2);
}

uint64_t sub_2179C0A78()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_1();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_8_1(WitnessTable);
}

uint64_t (*sub_2179C0AB0())()
{
  OUTLINED_FUNCTION_2_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_1(WitnessTable);
  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_2179C0AEC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static EntityType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t (*sub_2179C0B34())()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2(WitnessTable);
  return OUTLINED_FUNCTION_4_2();
}

uint64_t sub_2179C0B7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2179BFA30(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_2179C0BC4(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  static EntityType.dataType.getter(a1);
}

uint64_t sub_2179C0BF8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();

  return EntityType.valueType.getter(v1, v2);
}

uint64_t sub_2179C0C44()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_8_1(WitnessTable);
}

uint64_t (*sub_2179C0C7C())()
{
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_1(WitnessTable);
  return OUTLINED_FUNCTION_3_1();
}

uint64_t sub_2179C0CB8()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static EntityType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t (*sub_2179C0D00())()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2(WitnessTable);
  return OUTLINED_FUNCTION_4_2();
}

unint64_t sub_2179C0D4C(uint64_t a1)
{
  *(a1 + 8) = sub_2179C0D7C();
  result = sub_2179C0DD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2179C0D7C()
{
  result = qword_280B1D6B0;
  if (!qword_280B1D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1D6B0);
  }

  return result;
}

unint64_t sub_2179C0DD0()
{
  result = qword_280B1D6B8;
  if (!qword_280B1D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1D6B8);
  }

  return result;
}

unint64_t sub_2179C0E24()
{
  result = qword_27CB97E20;
  if (!qword_27CB97E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E20);
  }

  return result;
}

void sub_2179C0E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280B1DD58[0])
  {
    v4 = type metadata accessor for Statement(0, &type metadata for Versions.Entity, &off_282996810, a4);
    if (!v5)
    {
      atomic_store(v4, qword_280B1DD58);
    }
  }
}

uint64_t sub_2179C0EF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2179AE270(v0[7], v0[8], v0[9]);

  return swift_deallocClassInstance();
}

void sub_2179C0F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2179C0FF4()
{
  result = qword_27CB97E28;
  if (!qword_27CB97E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E28);
  }

  return result;
}

unint64_t sub_2179C104C()
{
  result = qword_27CB97E30;
  if (!qword_27CB97E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E30);
  }

  return result;
}

uint64_t sub_2179C10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(*v7 >> 62)
  {
    case 1:
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = *(v21 + 8);
      v24 = *(v23 + 32);

      v28 = v24(v22, v23);
      MEMORY[0x21CEA9600](0x2720484354414D20, 0xE800000000000000);
      matched = type metadata accessor for SearchMatchExpression(0, v22, v21, v25);
      v27 = sub_2179C1274(matched);
      MEMORY[0x21CEA9600](v27);

      MEMORY[0x21CEA9600](39, 0xE100000000000000);

      goto LABEL_7;
    case 2:
      v10 = OUTLINED_FUNCTION_4_3(a1, a2, a3, a4, a5, a6, a7);
      MEMORY[0x21CEA9600](v10);

      v11 = 0x2820444E412029;
      v12 = 0xE700000000000000;
      goto LABEL_5;
    case 3:
      v13 = OUTLINED_FUNCTION_4_3(a1, a2, a3, a4, a5, a6, a7);
      MEMORY[0x21CEA9600](v13);

      v11 = 0x2820524F2029;
      v12 = 0xE600000000000000;
LABEL_5:
      MEMORY[0x21CEA9600](v11, v12);
      v20 = sub_2179C10B8(a1, v14, v15, v16, v17, v18, v19);
      MEMORY[0x21CEA9600](v20);

      MEMORY[0x21CEA9600](41, 0xE100000000000000);
LABEL_7:
      result = v28;
      break;
    default:
      result = sub_2179A9A0C(a1, a2, a3, a4, a5, a6, a7);
      break;
  }

  return result;
}

uint64_t sub_2179C1274(uint64_t a1)
{
  v3 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v39 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v40 = *(v39 + 16);
      v41 = *(v39 + 24);
      v42 = *(v40 + 16);
      if (v42)
      {
        v74 = MEMORY[0x277D84F90];
        v43 = sub_2179A920C(0, v42, 0);
        v44 = v74;
        v45 = (v40 + 32);
        do
        {
          v46 = *v45++;
          v73 = v46;
          v43 = sub_2179C1BC8(v43);
          v47 = v43;
          v49 = v48;
          v74 = v44;
          v51 = *(v44 + 16);
          v50 = *(v44 + 24);
          if (v51 >= v50 >> 1)
          {
            v43 = sub_2179A920C((v50 > 1), v51 + 1, 1);
            v44 = v74;
          }

          *(v44 + 16) = v51 + 1;
          v52 = v44 + 16 * v51;
          *(v52 + 32) = v47;
          *(v52 + 40) = v49;
          --v42;
        }

        while (v42);
      }

      v53 = OUTLINED_FUNCTION_0_4();
      sub_2179A823C(v53, v54, v55, v56);
      sub_2179A4B34();
      v57 = sub_2179E95F0();
      v59 = v58;

      v74 = 0x285241454ELL;
      v75 = 0xE500000000000000;
      MEMORY[0x21CEA9600](v57, v59);

      MEMORY[0x21CEA9600](8236, 0xE200000000000000);
      v73 = v41;
      v60 = sub_2179E9D40();
      goto LABEL_26;
    case 2uLL:
      v19 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v74 = 0;
      v75 = 0xE000000000000000;
      if (v20)
      {
        v23 = 8237;
      }

      else
      {
        v23 = 0;
      }

      if (v20)
      {
        v24 = 0xE200000000000000;
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      MEMORY[0x21CEA9600](v23, v24);

      v25 = MEMORY[0x21CEA9600](123, 0xE100000000000000);
      v73 = v21;
      MEMORY[0x28223BE20](v25);
      v71 = *(a1 + 16);
      v70[1] = v71;
      type metadata accessor for SearchColumn();
      sub_2179E9EC0();
      v26 = sub_2179E9840();
      WitnessTable = swift_getWitnessTable();
      v28 = MEMORY[0x277D837D0];
      v73 = sub_2179A2E44(sub_2179C2778, v70, v26, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v29);
      v30 = OUTLINED_FUNCTION_0_4();
      sub_2179A823C(v30, v31, v28, v32);
      sub_2179A4B34();
      v33 = sub_2179E95F0();
      v35 = v34;

      MEMORY[0x21CEA9600](v33, v35);

      MEMORY[0x21CEA9600](540680317, 0xE400000000000000);
      v73 = v22;
      v36 = sub_2179C1274(a1);
      MEMORY[0x21CEA9600](v36);
      goto LABEL_28;
    case 3uLL:
      v37 = OUTLINED_FUNCTION_1_6(v3);
      MEMORY[0x21CEA9600](v37);

      v38 = 0x20444E412029;
      goto LABEL_24;
    case 4uLL:
      v16 = OUTLINED_FUNCTION_1_6(v3);
      MEMORY[0x21CEA9600](v16);

      v17 = 0x2820524F2029;
      v18 = 0xE600000000000000;
      goto LABEL_25;
    case 5uLL:
      v61 = OUTLINED_FUNCTION_1_6(v3);
      MEMORY[0x21CEA9600](v61);

      v38 = 0x20544F4E2029;
LABEL_24:
      v17 = v38 & 0xFFFFFFFFFFFFLL | 0x28000000000000;
      v18 = 0xE700000000000000;
LABEL_25:
      MEMORY[0x21CEA9600](v17, v18);
      v73 = v2;
      v60 = sub_2179C1274(a1);
LABEL_26:
      MEMORY[0x21CEA9600](v60);

      MEMORY[0x21CEA9600](41, 0xE100000000000000);
      break;
    default:
      v5 = *(v3 + 16);
      v74 = 0;
      v75 = 0xE000000000000000;
      v6 = *(v5 + 16);
      v7 = MEMORY[0x277D84F90];
      if (v6)
      {
        v73 = MEMORY[0x277D84F90];

        v8 = sub_2179A920C(0, v6, 0);
        v9 = 32;
        v7 = v73;
        do
        {
          v72 = *(v5 + v9);
          v8 = sub_2179C1BC8(v8);
          v10 = v8;
          v12 = v11;
          v73 = v7;
          v14 = *(v7 + 16);
          v13 = *(v7 + 24);
          if (v14 >= v13 >> 1)
          {
            v8 = sub_2179A920C((v13 > 1), v14 + 1, 1);
            v7 = v73;
          }

          *(v7 + 16) = v14 + 1;
          v15 = v7 + 16 * v14;
          *(v15 + 32) = v10;
          *(v15 + 40) = v12;
          v9 += 8;
          --v6;
        }

        while (v6);
      }

      v73 = v7;
      v62 = OUTLINED_FUNCTION_0_4();
      sub_2179A823C(v62, v63, v64, v65);
      sub_2179A4B34();
      v66 = sub_2179E95F0();
      v68 = v67;

      MEMORY[0x21CEA9600](v66, v68);
LABEL_28:

      break;
  }

  return v74;
}

void static SearchMatchExpression.userSearchQuery(_:language:)(uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  if (a4)
  {
    v8 = sub_2179E9640();
    [v7 setLanguage_];
  }

  v9 = sub_2179E9640();
  [v7 setString_];

  v10 = sub_2179E9900();
  if (!*(v10 + 16))
  {

    v27 = 0xF000000000000007;
    goto LABEL_17;
  }

  v37 = v7;

  v38 = v10;
  sub_2179C1B08(1uLL, v10);
  v14 = v13 >> 1;
  v15 = (v13 >> 1) - v12;
  if (__OFSUB__(v13 >> 1, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = a5;
  if (!v15)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x277D84F90];
LABEL_15:
    sub_2179C1BA0(v38);
    if (v28)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_15_0();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_12();
    v30 = swift_allocObject();

    v31 = sub_2179E9780();
    v32 = MEMORY[0x21CEA9590](v31);
    v34 = v33;

    *(v30 + 16) = v32;
    *(v30 + 24) = v34;
    *(v29 + 16) = v30;
    OUTLINED_FUNCTION_15_0();
    v27 = swift_allocObject();
    sub_2179A823C(0, &qword_27CB97E38, &type metadata for SearchMatchPhrase, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2179EA830;
    *(inited + 32) = v29 | 0x8000000000000000;

    sub_2179C1F6C(inited);

    *(v27 + 16) = v18;
    a5 = v36;
LABEL_17:
    *a5 = v27;
    return;
  }

  v16 = v11;
  v17 = v12;
  v39 = MEMORY[0x277D84F90];
  sub_2179C2138(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v18 = v39;
    v19 = v16 + 16 * v17 + 8;
    while (v17 < v14)
    {
      OUTLINED_FUNCTION_12();
      v20 = swift_allocObject();
      v21 = sub_2179E9780();
      v22 = MEMORY[0x21CEA9590](v21);
      v24 = v23;

      *(v20 + 16) = v22;
      *(v20 + 24) = v24;
      v26 = *(v39 + 16);
      v25 = *(v39 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2179C2138((v25 > 1), v26 + 1, 1);
      }

      *(v39 + 16) = v26 + 1;
      *(v39 + 8 * v26 + 32) = v20;
      ++v17;
      v19 += 16;
      if (v14 == v17)
      {
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_2179C1B08(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2179C2880(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_2179C2814(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2179C1BA0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    return *(v1 + 16 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2179C1BC8(uint64_t a1)
{
  switch(*v1 >> 62)
  {
    case 1:
      v9 = sub_2179C1BC8(a1);
      v6 = MEMORY[0x21CEA9600](2108192, 0xE300000000000000);
      v7 = sub_2179C1BC8(v6);
      MEMORY[0x21CEA9600](v7);
      goto LABEL_6;
    case 2:

      v9 = sub_2179C1BC8(v3);
      MEMORY[0x21CEA9600](42, 0xE100000000000000);

      break;
    case 3:
      v9 = 94;

      v5 = sub_2179C1BC8(v4);
      MEMORY[0x21CEA9600](v5);

LABEL_6:

      break;
    default:
      sub_2179A4934();
      v2 = sub_2179E9A80();
      v9 = 34;
      MEMORY[0x21CEA9600](v2);

      MEMORY[0x21CEA9600](34, 0xE100000000000000);
      break;
  }

  return v9;
}

uint64_t sub_2179C1D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(*(v8 + 8) + 24) + 8))(a2);
  swift_getAtKeyPath();
  (*(v5 + 8))(v7, a2);
  v9 = *(v13[1] + 16);
  os_unfair_lock_lock((v9 + 64));
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);

  os_unfair_lock_unlock((v9 + 64));

  *a3 = v11;
  a3[1] = v10;
  return result;
}

uint64_t SearchMatchExpression.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t SearchMatchPhrase.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_12();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = result;
  return result;
}

uint64_t sub_2179C1F28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_12();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_2179C1F6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2179A92E4(result, 1, sub_2179CF11C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2179C2040(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2179A92E4(v4, 1, sub_2179CF2B8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2179A4BDC(0);
  OUTLINED_FUNCTION_8_2(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

char *sub_2179C20F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2179C2464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2179C2118(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2179C2574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2179C2138(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2179C2660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2179C215C()
{
  result = qword_27CB97E40;
  if (!qword_27CB97E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97E40);
  }

  return result;
}

unint64_t sub_2179C21C0()
{
  result = qword_27CB97E48[0];
  if (!qword_27CB97E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB97E48);
  }

  return result;
}

uint64_t sub_2179C222C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179C228C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179C22D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
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

uint64_t sub_2179C2328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2179C23B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
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

void *sub_2179C2408(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_7_3(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void *sub_2179C2464(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_2179A823C(0, &qword_280B1DB30, MEMORY[0x277D84E78], MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_2179CF2EC(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2179C2574(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_2179C2798(0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2179CF30C(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2179C2660(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2179A823C(0, &qword_27CB97E38, &type metadata for SearchMatchPhrase, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_2179CF354((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2179C2798(uint64_t a1)
{
  if (!qword_27CB97F50)
  {
    sub_2179A823C(255, &qword_27CB97F58, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    v1 = sub_2179E9D50();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB97F50);
    }
  }
}

unint64_t sub_2179C2814(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2179C2880(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_2179C28E8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_2179C2F30(a1, a2);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v45 = MEMORY[0x277D84F90];
  result = sub_2179C20F8(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v45;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v39 = 4 << v9;
    v12 = 15;
    v40 = v6;
    v41 = v3;
    v42 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v36 = v16;
          result = sub_2179C3274(v12, v3, a2);
          v16 = v36;
          v11 = v42;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_59;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          result = sub_2179C3168(result, v3, a2);
          v16 = v18;
          v11 = v42;
          v17 = result >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_60;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_2179E9B00();
        v16 = v22;
        v11 = v42;
        v21 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v3;
        v44 = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = &v43 + v17;
        v23 = *(&v43 + v17);
        v21 = *(&v43 + v17);
        if (v23 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
LABEL_33:
              v21 = v19[1] & 0x3F | ((v21 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_34:
              v24 = v19[1];
              v25 = v19[2];
              v26 = ((v21 & 0xF) << 12) | ((v24 & 0x3F) << 6);
              goto LABEL_36;
            case 0x1Cu:
LABEL_35:
              v27 = v19[1];
              v28 = v19[2];
              v25 = v19[3];
              v26 = ((v21 & 0xF) << 18) | ((v27 & 0x3F) << 12) | ((v28 & 0x3F) << 6);
LABEL_36:
              v21 = v26 & 0xFFFFFFC0 | v25 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v37 = v16;
          result = sub_2179E9B50();
          v16 = v37;
          v11 = v42;
        }

        v19 = (result + v17);
        v20 = *(result + v17);
        v21 = *(result + v17);
        if (v20 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_33;
            case 0x1Bu:
              goto LABEL_34;
            case 0x1Cu:
              goto LABEL_35;
            default:
              break;
          }
        }
      }

      v45 = v5;
      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      if (v30 >= v29 >> 1)
      {
        v38 = v16;
        result = sub_2179C20F8((v29 > 1), v30 + 1, 1);
        v16 = v38;
        v11 = v42;
        v5 = v45;
      }

      *(v5 + 16) = v30 + 1;
      *(v5 + 4 * v30 + 32) = v21;
      if (v16)
      {
        v10 = v39;
        v31 = v40;
        v3 = v41;
        if (v14 == v39)
        {
          result = sub_2179C3274(v12, v41, a2);
          v11 = v42;
          v12 = result;
        }

        if (v11 <= v12 >> 16)
        {
          goto LABEL_61;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_2179C3168(v12, v41, a2);
          v11 = v42;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v31 = v40;
        v3 = v41;
        v10 = v39;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_62;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_2179E9690();
        v11 = v42;
        v12 = result;
      }

      else
      {
        v32 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v43 = v3;
          v44 = a2 & 0xFFFFFFFFFFFFFFLL;
          v33 = *(&v43 + v32);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_2179E9B50();
            v11 = v42;
          }

          v33 = *(result + v32);
        }

        v34 = v33;
        v35 = __clz(v33 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        v12 = ((v32 + v35) << 16) | 5;
      }

      ++v8;
      if (v13 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2179C2CE0()
{
  result = sub_2179C28E8(0xD000000000000010, 0x80000002179EFBB0);
  off_280B1DB70 = result;
  return result;
}

uint64_t Data.queryValue.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_2179E9210();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2179B2DDC(a1, a2);
  sub_2179E9220();
  while (1)
  {
    result = sub_2179E9200();
    if ((result & 0x100) != 0)
    {
      (*(v5 + 8))(v7, v4);
      v11[0] = 10104;
      v11[1] = 0xE200000000000000;
      MEMORY[0x21CEA9600](v12, v13);
      MEMORY[0x21CEA9600](39, 0xE100000000000000);

      return v11[0];
    }

    v9 = result;
    if (qword_280B1DB68 != -1)
    {
      result = swift_once();
    }

    v10 = off_280B1DB70;
    if (*(off_280B1DB70 + 2) <= (v9 >> 4))
    {
      break;
    }

    result = sub_2179E96B0();
    if (v10[2] <= (v9 & 0xF))
    {
      goto LABEL_10;
    }

    sub_2179E96B0();
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_2179C2F30(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_2179C32F0(0xFuLL, a1, a2);
  result = sub_2179C32F0(v6, a1, a2);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_2179E9690();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_2179E9B50();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_2179E96A0();
        v7 = result;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_2179E9B50();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_42;
  }

  return 0;
}

unint64_t sub_2179C3168(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x2821FD070]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_2179E9B50();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t sub_2179C3274(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2179E9750();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEA9650](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_2179C32F0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2179C3390(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2179C3168(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2179C3390(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_2179C3274(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2179C3400(uint64_t a1, uint64_t a2)
{
  v2 = sub_2179E9C70();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2179C346C(char a1)
{
  sub_2179E9E20();
  sub_2179B9674(a1);
  sub_2179E96C0();

  return sub_2179E9E40();
}

uint64_t sub_2179C3584(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_2179E9E20();
  a2(v5, a1);
  return sub_2179E9E40();
}

uint64_t sub_2179C35DC(uint64_t a1, char a2)
{
  sub_2179E96C0();
}

uint64_t sub_2179C3694(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4();
}

uint64_t sub_2179C36CC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4();
}

uint64_t sub_2179C3704(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4();
}

uint64_t sub_2179C373C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4();
}

uint64_t sub_2179C3774(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4();
}

uint64_t sub_2179C37AC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4();
}

uint64_t sub_2179C37E4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_4();
}

uint64_t sub_2179C381C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_3();
  }

  sub_2179E96C0();
}

uint64_t sub_2179C38A8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_2179E9E20();
  if (!v2)
  {
    OUTLINED_FUNCTION_3_3();
  }

  sub_2179E96C0();

  return sub_2179E9E40();
}

uint64_t sub_2179C39E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_2179E9E20();
  a3(v6, a2);
  return sub_2179E9E40();
}

uint64_t sub_2179C3A34(uint64_t a1, char a2)
{
  sub_2179E9E20();
  sub_2179B9674(a2);
  sub_2179E96C0();

  return sub_2179E9E40();
}

unint64_t sub_2179C3A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2179C3400(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2179C3AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2179B9674(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2179C3AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179C344C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179C3B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179C3450();
  *a1 = result;
  return result;
}

uint64_t sub_2179C3B68(uint64_t a1)
{
  v2 = sub_2179C3E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179C3BA4(uint64_t a1)
{
  v2 = sub_2179C3E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ValueType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2179C410C(0, &qword_27CB97F60, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179C3E98();
  sub_2179E9E90();
  if (!v2)
  {
    v6 = sub_2179E9C80();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_0_5();
    v10(v9);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2179C3E98()
{
  result = qword_27CB97F68;
  if (!qword_27CB97F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F68);
  }

  return result;
}

uint64_t ValueType.encode(to:)(void *a1)
{
  sub_2179C410C(0, &qword_27CB97F70, MEMORY[0x277D84538]);
  v13 = v3;
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179C3E98();
  sub_2179E9EB0();
  switch(v11)
  {
    case 1:
      LOBYTE(v14) = 1;
      OUTLINED_FUNCTION_2_3();
      sub_2179E9D10();
      return (*(v5 + 8))(v8, v9);
    case 2:
      LOBYTE(v14) = 2;
      OUTLINED_FUNCTION_2_3();
      sub_2179E9CF0();
      return (*(v5 + 8))(v8, v9);
    case 3:
      LOBYTE(v14) = 3;
      v9 = v13;
      sub_2179E9D00();
      return (*(v5 + 8))(v8, v9);
    case 4:
      v14 = v9;
      v15 = v10;
      v16 = 4;
      sub_2179A2DF0();
      OUTLINED_FUNCTION_2_3();
      sub_2179E9D20();
      return (*(v5 + 8))(v8, v9);
    case 5:
      return (*(v5 + 8))(v8, v13);
    default:
      LOBYTE(v14) = 0;
      v9 = v13;
      sub_2179E9CE0();
      return (*(v5 + 8))(v8, v9);
  }
}

void sub_2179C410C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179C3E98();
    v7 = a3(a1, &type metadata for ValueType.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ValueType.description.getter()
{
  v1 = *v0;
  result = 1819047278;
  switch(*(v0 + 16))
  {
    case 1:
      result = sub_2179E9D40();
      break;
    case 2:
      if (v1)
      {
        v3 = 1702195828;
      }

      else
      {
        v3 = 0x65736C6166;
      }

      if (v1)
      {
        v4 = 0xE400000000000000;
      }

      else
      {
        v4 = 0xE500000000000000;
      }

      MEMORY[0x21CEA9600](v3, v4);

      goto LABEL_12;
    case 3:
      sub_2179E9860();
LABEL_12:
      result = 0;
      break;
    case 4:
      result = sub_2179E91C0();
      break;
    case 5:
      return result;
    default:

      result = v1;
      break;
  }

  return result;
}

uint64_t static ValueType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  switch(*(a1 + 16))
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_23;
      }

      v10 = *&v3 == *&v4;
      goto LABEL_16;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_23;
      }

      v9 = LOBYTE(v4) ^ LOBYTE(v3) ^ 1;
      return v9 & 1;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_23;
      }

      v10 = v3 == v4;
LABEL_16:
      v9 = v10;
      return v9 & 1;
    case 4:
      if (v6 == 4)
      {
        JUMPOUT(0x21CEA90E0);
      }

      goto LABEL_23;
    case 5:
      if (v6 != 5 || (v5 | *&v4) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    default:
      if (*(a2 + 16))
      {
LABEL_23:
        v9 = 0;
      }

      else
      {
        if (*&v3 != *&v4 || *(a1 + 8) != v5)
        {
          return sub_2179E9D70();
        }

LABEL_25:
        v9 = 1;
      }

      return v9 & 1;
  }
}

uint64_t ValueType.queryValue.getter()
{
  result = 1280070990;
  switch(*(v0 + 16))
  {
    case 1:
      result = sub_2179E9D40();
      break;
    case 2:
      if (*v0)
      {
        result = 49;
      }

      else
      {
        result = 48;
      }

      break;
    case 3:
      v3 = 0;
      sub_2179E9860();
      goto LABEL_4;
    case 4:
      result = Data.queryValue.getter(*v0, *(v0 + 8));
      break;
    case 5:
      return result;
    default:
      v3 = 39;
      sub_2179A4934();
      v2 = sub_2179E9A80();
      MEMORY[0x21CEA9600](v2);

      MEMORY[0x21CEA9600](39, 0xE100000000000000);
LABEL_4:
      result = v3;
      break;
  }

  return result;
}

uint64_t sub_2179C44C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t sub_2179C4504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_2179C4548(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ValueType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ValueType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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