uint64_t sub_23B9721A8(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_8())
  {
    sub_23BBDB0D8();

    return sub_23BBDA358();
  }

  else
  {
    sub_23BBDA478();
    OUTLINED_FUNCTION_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDAE88();
    OUTLINED_FUNCTION_4();
    sub_23BBDA358();
    sub_23BBDD648();
    OUTLINED_FUNCTION_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDA478();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDAE88();
    return sub_23BBDA358();
  }
}

uint64_t sub_23B9722CC(uint64_t a1)
{
  if (OUTLINED_FUNCTION_8())
  {
    sub_23BBDB0D8();
    OUTLINED_FUNCTION_9();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_0();
  }

  else
  {
    sub_23BBDA478();
    OUTLINED_FUNCTION_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDAE88();
    OUTLINED_FUNCTION_9();
    sub_23BBDD648();
    OUTLINED_FUNCTION_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDA478();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDAE88();
    sub_23BBDA358();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  return swift_getWitnessTable();
}

uint64_t sub_23B972460@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197870, &qword_23BBE38C8) + 36);
  sub_23B972538(a1, v7, &qword_27E197878, &qword_23BBE38D0);
  *(v7 + 40) = a2;
  return sub_23B972538(v3, a3, &qword_27E197880, &qword_23BBE38D8);
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

uint64_t sub_23B972538(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B972598@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (OUTLINED_FUNCTION_5())
  {
    v38 = a7;
    v39 = a8;
    v40 = v9;
    v37 = sub_23BBDA268();
    OUTLINED_FUNCTION_7();
    v19 = v18;
    MEMORY[0x28223BE20](v20);
    v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      sub_23BBDD768();

      strcpy(v42, "View.task @ ");
      BYTE5(v42[1]) = 0;
      HIWORD(v42[1]) = -5120;
      MEMORY[0x23EEB5890](a4, a5);
      MEMORY[0x23EEB5890](58, 0xE100000000000000);
      v41 = a6;
      v29 = sub_23BBDDA38();
      MEMORY[0x23EEB5890](v29);
    }

    sub_23BBDD368();
    OUTLINED_FUNCTION_7();
    v31 = MEMORY[0x28223BE20](v30);
    (*(v33 + 16))(&v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v31);

    sub_23BBDA258();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197898, &qword_23BBE38E0);
    OUTLINED_FUNCTION_3();
    (*(v34 + 16))(a9, v40);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1978A0, &qword_23BBE38E8);
    return (*(v19 + 32))(a9 + *(v35 + 36), v22, v37);
  }

  else
  {
    v23 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1978A8, &qword_23BBE38F0) + 36));
    v24 = *(sub_23BBDA008() + 20);
    sub_23BBDD368();
    OUTLINED_FUNCTION_3();
    (*(v25 + 16))(&v23[v24], a3);
    *v23 = a7;
    *(v23 + 1) = a8;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197898, &qword_23BBE38E0);
    v27 = *(*(v26 - 8) + 16);

    return v27(a9, v9, v26);
  }
}

uint64_t sub_23B97295C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_23B9731D4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_23B972984@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23BBDCFE8();

  *a2 = v3;
  return result;
}

uint64_t sub_23B9729CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B9729F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B9729FC(uint64_t a1)
{
  v2 = sub_23B972E7C(&qword_27E197968, type metadata accessor for AMSBagKey, &unk_23BBE3AFC);
  v3 = sub_23B972E7C(&unk_27E197970, type metadata accessor for AMSBagKey, &unk_23BBE3A9C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23B972ADC(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_5())
  {
    sub_23BBDA268();
  }

  else
  {
    sub_23BBDA008();
  }

  return sub_23BBDA358();
}

uint64_t sub_23B972B34(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_5())
  {
    sub_23BBDA268();
    OUTLINED_FUNCTION_4();
    sub_23BBDA358();
    sub_23B972BF0();
  }

  else
  {
    sub_23BBDA008();
    OUTLINED_FUNCTION_4();
    sub_23BBDA358();
    sub_23B972E7C(&qword_27E197890, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23B972BF0()
{
  result = qword_27E197888;
  if (!qword_27E197888)
  {
    sub_23BBDA268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197888);
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

uint64_t sub_23B972C60(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B972CB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B972CD4(uint64_t result, int a2, int a3)
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B972D34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_6(a1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B972D6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_6(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PackMuleView(uint64_t result, int a2, int a3)
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

void sub_23B972DE8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_23B972E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B972F54(uint64_t a1, uint64_t a2)
{
  v2 = sub_23BBDD018();
  v4 = v3;
  if (v2 == sub_23BBDD018() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23BBDDA88();
  }

  return v7 & 1;
}

uint64_t sub_23B972FD8(uint64_t a1)
{
  v1 = sub_23BBDD018();
  v2 = MEMORY[0x23EEB5900](v1);

  return v2;
}

uint64_t sub_23B973010(uint64_t a1, uint64_t a2)
{
  sub_23BBDD018();
  sub_23BBDDBB8();
  sub_23BBDD078();
  v2 = sub_23BBDDBF8();

  return v2;
}

uint64_t sub_23B973084(uint64_t a1, uint64_t a2)
{
  sub_23BBDD018();
  sub_23BBDD078();
}

uint64_t sub_23B9730DC(uint64_t a1, id *a2)
{
  result = sub_23BBDCFF8();
  *a2 = 0;
  return result;
}

uint64_t sub_23B973154(uint64_t a1, id *a2)
{
  v3 = sub_23BBDD008();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23B9731D4(uint64_t a1)
{
  sub_23BBDD018();
  v1 = sub_23BBDCFE8();

  return v1;
}

uint64_t OUTLINED_FUNCTION_5()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

uint64_t OUTLINED_FUNCTION_8()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_23BBDA358();
}

void sub_23B973304()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 20));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B973438()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 24));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B97356C()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 28));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B9736A0()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 32));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B9737D4()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 36));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B973908@<X0>(char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  v13 = v12;
  if (a2)
  {
    v14 = 1;
  }

  else
  {
    v15 = (v5 + *(v12 + 48));
    sub_23B974940();
    sub_23BBD9D28();
    v14 = 0;
    *v15 = a4;
    v15[1] = a5;
  }

  __swift_storeEnumTagSinglePayload(v5, v14, 1, v13);
  return sub_23B974A04(v5, a3);
}

uint64_t sub_23B973A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v4 = type metadata accessor for LayoutMetrics(0);
  __swift_allocate_value_buffer(v4, qword_27E1BF7C8);
  OUTLINED_FUNCTION_25();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8);
  v6 = v4[5];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v6);
  v7 = v4[6];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v7);
  v8 = v4[7];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v8);
  v9 = v4[8];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v9);
  v10 = v4[9];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v10);
  sub_23B9748D8(qword_27E1BF7C8);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8);
  sub_23B9748D8(qword_27E1BF7C8 + v6);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v6);
  sub_23B9748D8(qword_27E1BF7C8 + v7);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v7);
  sub_23B9748D8(qword_27E1BF7C8 + v8);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v8);
  v11 = *(v5 + 48);
  v15 = 0x404E000000000000;
  sub_23B974940();
  OUTLINED_FUNCTION_18(&v15);
  v14 = xmmword_23BBE3B90;
  *&v3[v11] = xmmword_23BBE3B90;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v3, qword_27E1BF7C8 + v9);
  v12 = *(v5 + 48);
  v15 = 0x404E000000000000;
  OUTLINED_FUNCTION_18(&v15);
  *&v3[v12] = v14;
  OUTLINED_FUNCTION_4_0();
  return sub_23B974994(v3, qword_27E1BF7C8 + v10);
}

void sub_23B973BD4(uint64_t a1)
{
  OUTLINED_FUNCTION_24();
  v18 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_3_0(v4);
  v8 = type metadata accessor for LayoutMetrics(0);
  v9 = v8[5];
  OUTLINED_FUNCTION_3_0(v4 + v9);
  v10 = v8[6];
  OUTLINED_FUNCTION_3_0(v4 + v10);
  v11 = v8[7];
  OUTLINED_FUNCTION_3_0(v4 + v11);
  v12 = v8[8];
  OUTLINED_FUNCTION_3_0(v4 + v12);
  v13 = v8[9];
  OUTLINED_FUNCTION_3_0(v4 + v13);
  sub_23B9748D8(v4);
  OUTLINED_FUNCTION_3_0(v4);
  sub_23B9748D8(v4 + v9);
  OUTLINED_FUNCTION_3_0(v4 + v9);
  sub_23B9748D8(v4 + v10);
  OUTLINED_FUNCTION_3_0(v4 + v10);
  v14 = *(v7 + 48);
  sub_23B974940();
  OUTLINED_FUNCTION_16();
  *(v1 + v14) = xmmword_23BBE3BA0;
  OUTLINED_FUNCTION_6_0(v1);
  sub_23B974994(v1, v4 + v11);
  if (v18)
  {
    v15 = 105.0;
  }

  else
  {
    v15 = 88.0;
  }

  v16 = v1 + *(v7 + 48);
  OUTLINED_FUNCTION_16();
  *v16 = v15;
  *(v16 + 8) = 0x7FF0000000000000;
  OUTLINED_FUNCTION_6_0(v1);
  sub_23B974994(v1, v4 + v12);
  v17 = *(v7 + 48);
  OUTLINED_FUNCTION_16();
  *(v1 + v17) = xmmword_23BBE3BB0;
  OUTLINED_FUNCTION_6_0(v1);
  sub_23B974994(v1, v4 + v13);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_23B973DA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v1);
  v3 = v13 - v2;
  v4 = type metadata accessor for LayoutMetrics(0);
  __swift_allocate_value_buffer(v4, qword_27E1BF7E0);
  OUTLINED_FUNCTION_25();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0);
  v6 = v4[5];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v6);
  v7 = v4[6];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v7);
  v8 = v4[7];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v8);
  v9 = v4[8];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v9);
  v10 = v4[9];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v10);
  sub_23B9748D8(qword_27E1BF7E0);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0);
  sub_23B9748D8(qword_27E1BF7E0 + v6);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v6);
  sub_23B9748D8(qword_27E1BF7E0 + v7);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v7);
  v11 = *(v5 + 48);
  v13[1] = 0x404E000000000000;
  sub_23B974940();
  sub_23BBD9D28();
  *&v3[v11] = xmmword_23BBE3B90;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v3, qword_27E1BF7E0 + v8);
  sub_23B9748D8(qword_27E1BF7E0 + v9);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v9);
  sub_23B9748D8(qword_27E1BF7E0 + v10);
  return OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v10);
}

void sub_23B973F60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for LayoutMetrics(0);
  __swift_allocate_value_buffer(v12, v7);
  OUTLINED_FUNCTION_25();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_3_0(v7);
  v14 = v12[5];
  OUTLINED_FUNCTION_3_0(v7 + v14);
  v15 = v12[6];
  OUTLINED_FUNCTION_3_0(v7 + v15);
  v16 = v12[7];
  OUTLINED_FUNCTION_3_0(v7 + v16);
  v17 = v12[8];
  OUTLINED_FUNCTION_3_0(v7 + v17);
  v23 = v12[9];
  OUTLINED_FUNCTION_3_0(v7 + v23);
  sub_23B9748D8(v7);
  OUTLINED_FUNCTION_3_0(v7);
  v18 = *(v13 + 48);
  v25 = v5;
  sub_23B974940();
  OUTLINED_FUNCTION_14();
  v24 = xmmword_23BBE3BC0;
  *&v11[v18] = xmmword_23BBE3BC0;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v11, v7 + v14);
  v19 = *(v13 + 48);
  v25 = v5;
  OUTLINED_FUNCTION_14();
  *&v11[v19] = v24;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v11, v7 + v15);
  sub_23B9748D8(v7 + v16);
  OUTLINED_FUNCTION_3_0(v7 + v16);
  v20 = *(v13 + 48);
  v25 = v3;
  OUTLINED_FUNCTION_14();
  *&v11[v20] = v24;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v11, v7 + v17);
  v21 = *(v13 + 48);
  v25 = v3;
  OUTLINED_FUNCTION_14();
  *&v11[v21] = v24;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v11, v7 + v23);
  OUTLINED_FUNCTION_23();
}

void sub_23B974140(uint64_t a1)
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  v6 = OUTLINED_FUNCTION_13_0(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v24[-v13];
  sub_23BA19634(v2, v30);
  v26 = v30[2];
  v25 = v31;
  *&v28 = v32;
  v27 = v33;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  OUTLINED_FUNCTION_3_0(v4);
  v16 = type metadata accessor for LayoutMetrics(0);
  v17 = v16[5];
  OUTLINED_FUNCTION_3_0(v4 + v17);
  v18 = v16[6];
  OUTLINED_FUNCTION_3_0(v4 + v18);
  v19 = v16[7];
  OUTLINED_FUNCTION_3_0(v4 + v19);
  v20 = v16[8];
  OUTLINED_FUNCTION_3_0(v4 + v20);
  v21 = v16[9];
  OUTLINED_FUNCTION_3_0(v4 + v21);
  sub_23B9748D8(v4);
  OUTLINED_FUNCTION_3_0(v4);
  sub_23B973908(v25 & 1, v14, -INFINITY, INFINITY);
  sub_23B974994(v14, v4 + v17);
  sub_23B973908(v27 & 1, v11, -INFINITY, INFINITY);
  sub_23B974994(v11, v4 + v18);
  sub_23B9748D8(v4 + v19);
  OUTLINED_FUNCTION_3_0(v4 + v19);
  v22 = *(v15 + 48);
  v29 = 0x402C000000000000;
  sub_23B974940();
  OUTLINED_FUNCTION_18(&v29);
  v28 = xmmword_23BBE3BC0;
  *&v8[v22] = xmmword_23BBE3BC0;
  OUTLINED_FUNCTION_6_0(v8);
  sub_23B974994(v8, v4 + v20);
  v23 = *(v15 + 48);
  v29 = 0x402C000000000000;
  OUTLINED_FUNCTION_18(&v29);
  *&v8[v23] = v28;
  OUTLINED_FUNCTION_6_0(v8);
  sub_23B974994(v8, v4 + v21);
  OUTLINED_FUNCTION_23();
}

void *sub_23B974398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(type metadata accessor for LayoutMetricsModifier(0) + 20)) == 1)
  {
    *&v3 = COERCE_DOUBLE(sub_23B974FC0());
    v5 = v4;
    sub_23B973304();
    v7 = v6;
    v9 = v8;
    sub_23B973438();
    v11 = v10;
    v13 = v12;
    sub_23B97356C();
    v37 = v14;
    v38 = v15;
    sub_23B9736A0();
    v36 = v16;
    v18 = v17;
    sub_23B9737D4();
    v21 = v20;
    v22 = *&v3;
    if (v5)
    {
      v22 = -INFINITY;
    }

    if (v9)
    {
      v23 = v22;
    }

    else
    {
      v23 = v7;
    }

    v24 = v11;
    if (v13)
    {
      v24 = v23;
    }
  }

  else
  {
    v19 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v21 = 1;
    v24 = -INFINITY;
    v23 = -INFINITY;
    v22 = -INFINITY;
    v18 = 1;
    v38 = 1;
  }

  if (v22 > v23 || v23 > v24)
  {
    goto LABEL_26;
  }

  v26 = v37;
  if (v38)
  {
    v26 = -INFINITY;
  }

  v27 = v36;
  if (v18)
  {
    v27 = v26;
  }

  v28 = v19;
  if (v21)
  {
    v28 = v27;
  }

  if (v26 > v27 || v27 > v28)
  {
LABEL_26:
    sub_23BBDD5A8();
    v30 = sub_23BBDB338();
    sub_23BBD9978();
  }

  sub_23BBDA488();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A38, &qword_23BBE3D28);
  (*(*(v31 - 8) + 16))(a2, a1, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A40, &unk_23BBE3D30);
  return memcpy((a2 + *(v32 + 36)), __src, 0x70uLL);
}

uint64_t sub_23B97462C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for LayoutMetricsModifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B974734(a1, v14);
  v14[*(v12 + 20)] = a4;
  v15 = &v14[*(v12 + 24)];
  *v15 = a2;
  *(v15 + 1) = a3;
  MEMORY[0x23EEB43C0](v14, a5, v12, a6);
  return sub_23B9747B8(v14);
}

uint64_t sub_23B974734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9747B8(uint64_t a1)
{
  v2 = type metadata accessor for LayoutMetricsModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B9748D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B974940()
{
  result = qword_27E1979F0;
  if (!qword_27E1979F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1979F0);
  }

  return result;
}

uint64_t sub_23B974994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B974A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B974A88()
{
  OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for LayoutMetrics(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23B974B08()
{
  OUTLINED_FUNCTION_19();
  type metadata accessor for LayoutMetrics(0);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_23B974B64(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B974B9C(uint64_t a1)
{
  result = type metadata accessor for LayoutMetrics(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B974C24()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23B974C88()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0, &unk_23BBE3BE0);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_23B974CD0(uint64_t a1)
{
  sub_23B974D48(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B974D48(uint64_t a1)
{
  if (!qword_27E197A20)
  {
    v2 = sub_23B974940();
    v4 = type metadata accessor for OptionalScaledMetric(a1, MEMORY[0x277D85048], v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27E197A20);
    }
  }
}

uint64_t sub_23B974DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LayoutMetrics(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B974E88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  result = type metadata accessor for LayoutMetrics(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_15();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_23B974F20(uint64_t a1)
{
  result = type metadata accessor for LayoutMetrics(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B974FC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  sub_23B975158(v1, v2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8, &qword_23BBF9750);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    return 0;
  }

  v10 = (v2 + *(v8 + 48));
  (*(v4 + 32))(v1, v2, v0);
  v11 = *v10;
  v12 = v10[1];
  sub_23BBD9D38();
  (*(v4 + 8))(v1, v0);
  if (v12 >= v15)
  {
    v13 = v15;
  }

  else
  {
    v13 = v12;
  }

  if (v15 >= v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  return *&v14;
}

uint64_t sub_23B975158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8, &unk_23BBE3BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B9751CC()
{
  result = qword_27E197A50;
  if (!qword_27E197A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197A40, &unk_23BBE3D30);
    sub_23B9752A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197A50);
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

unint64_t sub_23B9752A0()
{
  result = qword_27E197A58;
  if (!qword_27E197A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197A38, &qword_23BBE3D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197A58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void *OUTLINED_FUNCTION_8_0()
{

  return sub_23BBD9D38();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_23BBD9D28();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return sub_23BBD9D28();
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return sub_23BBD9D28();
}

uint64_t OUTLINED_FUNCTION_22@<X0>(uint64_t a1@<X8>)
{

  return sub_23B975158(v1 + a1, v2);
}

id sub_23B975584()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23B9755E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23B97563C()
{
  type metadata accessor for StoreKitSwiftUIOverlayClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E1BF840 = result;
  return result;
}

uint64_t sub_23B975694()
{
  v0 = sub_23BBD9688();
  __swift_allocate_value_buffer(v0, qword_27E1BF848);
  v1 = __swift_project_value_buffer(v0, qword_27E1BF848);
  *v1 = type metadata accessor for StoreKitSwiftUIOverlayClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_23B975730()
{
  v0 = sub_23BBDB3D8();
  sub_23BBDA138();
  v2 = v1;
  sub_23BBDA128();
  if (v2 > -v3)
  {
    v4 = sub_23BBDB3A8();
    sub_23BBDB3D8();
    if (sub_23BBDB3D8() != v4)
    {
      v0 = sub_23BBDB3D8();
    }
  }

  sub_23BBDA138();
  v6 = v5;
  sub_23BBDA128();
  if (v6 > -v7)
  {
    v8 = sub_23BBDB3C8();
    sub_23BBDB3D8();
    if (sub_23BBDB3D8() != v8)
    {
      v0 = sub_23BBDB3D8();
    }
  }

  sub_23BBDA128();
  v10 = v9;
  sub_23BBDA138();
  v12 = v10 + v11;
  sub_23BBDA118();
  v14 = v12 + v13;
  sub_23BBDA108();
  if (v14 < v15)
  {
    v16 = sub_23BBDB3B8();
    sub_23BBDB3D8();
    if (sub_23BBDB3D8() != v16)
    {
      v0 = sub_23BBDB3D8();
    }
  }

  sub_23BBDA128();
  v18 = v17;
  sub_23BBDA138();
  v20 = v18 + v19;
  sub_23BBDA118();
  v22 = v20 + v21;
  sub_23BBDA108();
  if (v22 >= v23)
  {
    return v0;
  }

  v24 = sub_23BBDB3E8();
  sub_23BBDB3D8();
  if (sub_23BBDB3D8() == v24)
  {
    return v0;
  }

  return sub_23BBDB3D8();
}

uint64_t sub_23B9758C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v6);
  sub_23BBDC1E8();
  sub_23BBDC208();
  sub_23B975A78();
  sub_23BBDC198();
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_23B975A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDC208();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_23B975A78()
{
  result = qword_27E197A60;
  if (!qword_27E197A60)
  {
    sub_23BBDC208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197A60);
  }

  return result;
}

uint64_t sub_23B975AD0()
{
  if (sub_23BBDA7E8())
  {
    return 1;
  }

  return MEMORY[0x28212DE30]();
}

void sub_23B975B10(uint64_t a1)
{
  sub_23B975E4C(319, &qword_27E197AF0, &qword_27E197AF8, &unk_23BBFC260);
  if (v1 <= 0x3F)
  {
    sub_23B975EF0(319, &qword_27E197B00, type metadata accessor for SubscriptionStoreControlConfigurationSection, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23B975E04();
      if (v3 <= 0x3F)
      {
        sub_23B975E4C(319, &qword_27E197B10, &qword_27E197B18, qword_23BBE3DF0);
        if (v4 <= 0x3F)
        {
          sub_23B975EA0();
          if (v5 <= 0x3F)
          {
            sub_23B975EF0(319, &qword_27E197B28, type metadata accessor for Subscription, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B975CB0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  v5 = OUTLINED_FUNCTION_15_0(*(a3 + 60));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_23B975D48()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 60));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

unint64_t sub_23B975E04()
{
  result = qword_27E197B08;
  if (!qword_27E197B08)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E197B08);
  }

  return result;
}

void sub_23B975E4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23BBDD648();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23B975EA0()
{
  if (!qword_27E197B20)
  {
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E197B20);
    }
  }
}

void sub_23B975EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23B975F68(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 24));
  }

  type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  v5 = OUTLINED_FUNCTION_15_0(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_23B975FF4()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_23B97606C(uint64_t a1)
{
  sub_23B975EF0(319, &qword_27E197B40, type metadata accessor for SubscriptionStoreControlOption, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B976164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for Subscription(0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_23B97621C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  v8 = type metadata accessor for Subscription(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

void sub_23B9762C8(uint64_t a1)
{
  type metadata accessor for Subscription(319);
  if (v1 <= 0x3F)
  {
    sub_23B975EF0(319, &qword_27E197B58, MEMORY[0x277CDD2B8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B976384@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);
  a1[1] = sub_23B977368;
  a1[2] = 0;
}

uint64_t sub_23B9763A4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_23BBDD458();
  if (!v19)
  {
    return sub_23BBDD278();
  }

  v41 = v19;
  v45 = sub_23BBDD838();
  v32 = sub_23BBDD848();
  sub_23BBDD808();
  result = sub_23BBDD438();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_23BBDD558();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_23BBDD818();
      result = sub_23BBDD4B8();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B9767C0()
{
  v97 = type metadata accessor for Subscription(0);
  MEMORY[0x28223BE20](v97);
  v1 = &v81 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  v3 = *(v2 - 8);
  v88 = v2;
  v89 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70, &qword_23BBFC930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v81 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0, &qword_23BBE4010);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  v18 = type metadata accessor for SubscriptionStoreControlOption(0);
  v99 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v81 - v22;
  v24 = sub_23BBDCDB8();
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v30 = &v81 - v29;
  if (*(v90 + 8))
  {
  }

  v95 = v14;
  v96 = v8;
  v86 = v27;
  v87 = v5;
  v84 = v1;
  v98 = v20;
  v93 = v17;
  v94 = v18;
  v32 = *(v90 + 16);
  v33 = *(v32 + 16);
  v91 = v26;
  if (v33 == 1)
  {
    v34 = *(v32 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + 40);
    v35 = *(v34 + 16);
    v36 = v99;
    if (v35)
    {
      v100[0] = MEMORY[0x277D84F90];
      v37 = v26;

      sub_23BA92B88(0, v35, 0);
      v38 = v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v39 = *(v36 + 72);
      v98 = v34;
      v99 = v39;
      v31 = v100[0];
      v40 = v86;
      do
      {
        sub_23B979478();
        (*(v37 + 16))(v30, v23, v40);
        sub_23B979A48(v23, type metadata accessor for SubscriptionStoreControlOption);
        v100[0] = v31;
        v42 = *(v31 + 16);
        v41 = *(v31 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_23BA92B88(v41 > 1, v42 + 1, 1);
          v40 = v86;
          v31 = v100[0];
        }

        *(v31 + 16) = v42 + 1;
        (*(v91 + 32))(v31 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v42, v30, v40);
        v38 += v99;
        --v35;
      }

      while (v35);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v82 = v28;
    v43 = v26;
    sub_23B977154();
    v102 = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C20, &unk_23BBE4060);
    sub_23BBDD3C8();
    sub_23B9B7C5C();
    v85 = v44;
    v81 = (v43 + 32);
    v90 = v32;

    v46 = 0;
    v47 = 0;
    v48 = v94;
    v49 = v95;
    v92 = v11;
    while (1)
    {
      v50 = v98;
      v51 = v96;
      if (v46)
      {
        v83 = v47;
        v52 = v87;
        v53 = 0;
        while (1)
        {
          v54 = *(v46 + 16);
          if (v53 == v54)
          {
            __swift_storeEnumTagSinglePayload(v49, 1, 1, v48);
            result = sub_23B979910(v49, &qword_27E197BA0, &qword_23BBE4010);
            v74 = v90;
            v75 = v52;
            v47 = v83;
            goto LABEL_30;
          }

          if (v53 >= v54)
          {
            break;
          }

          v55 = v46;
          sub_23B979478();
          __swift_storeEnumTagSinglePayload(v49, 0, 1, v48);
          v56 = v93;
          sub_23B979688();
          if (__swift_getEnumTagSinglePayload(v56, 1, v48) == 1)
          {

            goto LABEL_37;
          }

          v57 = v52;
          sub_23B9799E0();
          v58 = v102;
          v59 = v50 + *(v97 + 20);
          v60 = *v59;
          v61 = *(v59 + 8);
          if (v61 == 2)
          {
            v62 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
            v64 = v63;
          }

          else
          {
            v64 = v61 & 1;
            v62 = *v59;
          }

          v65 = sub_23B9AFB8C(v62, v64, v61 == 2, v58);
          sub_23B979A38(v62, v64, v61 == 2);
          if (v65)
          {
            v50 = v98;
            result = sub_23B979A48(v98, type metadata accessor for SubscriptionStoreControlOption);
            ++v53;
            v52 = v57;
            v49 = v95;
            v51 = v96;
            v11 = v92;
          }

          else
          {
            if (v61 == 2)
            {
              v60 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
              v67 = v66;
            }

            else
            {
              v67 = v61 & 1;
            }

            v68 = v84;
            sub_23B9B94E0(v100, v60, v67, v61 == 2);
            sub_23B979A38(v100[0], v100[1], v101);
            sub_23B979478();
            v69 = *v81;
            (*v81)(v82, v68, v86);
            v70 = *(v85 + 16);
            v52 = v57;
            if (v70 >= *(v85 + 24) >> 1)
            {
              sub_23B9B7C5C();
              v85 = v73;
            }

            v49 = v95;
            v51 = v96;
            v50 = v98;
            ++v53;
            sub_23B979A48(v98, type metadata accessor for SubscriptionStoreControlOption);
            v72 = v85;
            v71 = v86;
            *(v85 + 16) = v70 + 1;
            result = v69(v72 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v70, v82, v71);
            v11 = v92;
          }

          v48 = v94;
          v46 = v55;
        }

        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v74 = v90;
      v75 = v87;
LABEL_30:
      v76 = *(v74 + 16);
      if (v47 == v76)
      {
        v77 = 1;
        v78 = v11;
      }

      else
      {
        if (v47 >= v76)
        {
          goto LABEL_42;
        }

        v78 = v11;
        sub_23B979478();
        v77 = 0;
        ++v47;
      }

      v79 = v88;
      __swift_storeEnumTagSinglePayload(v78, v77, 1, v88);
      sub_23B979688();
      if (__swift_getEnumTagSinglePayload(v51, 1, v79) == 1)
      {
        break;
      }

      sub_23B9799E0();
      v80 = *(v75 + 40);

      sub_23B979A48(v75, type metadata accessor for SubscriptionStoreControlConfigurationSection);

      v46 = v80;
    }

    __swift_storeEnumTagSinglePayload(v93, 1, 1, v48);
LABEL_37:

    return v85;
  }

  return v31;
}

void sub_23B977154()
{
  OUTLINED_FUNCTION_10_0();
  v1 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_7();
  v23 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70, &qword_23BBFC930);
  v8 = OUTLINED_FUNCTION_13_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *(v0 + 16);
  swift_getKeyPath();
  v16 = *(v15 + 16);

  v17 = 0;
  v18 = 0;
  while (v17 == v16)
  {
    v19 = 1;
    v17 = v16;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v14, v19, 1, v1);
    sub_23B979688();
    OUTLINED_FUNCTION_11_0(v11, 1, v1);
    if (v21)
    {
      goto LABEL_11;
    }

    sub_23B9799E0();
    swift_getAtKeyPath();
    sub_23B979A48(v6, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    v22 = __OFADD__(v18, v24);
    v18 += v24;
    if (v22)
    {
      __break(1u);
LABEL_11:

      OUTLINED_FUNCTION_9_1();
      return;
    }
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    if (v17 >= *(v15 + 16))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_0_1(v15 + v20);
    sub_23B979478();
    v19 = 0;
    ++v17;
    goto LABEL_7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_23B977374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0, &qword_23BBE4010);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-v3];
  v5 = *(v0 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BC0, &qword_23BBE4030);
  sub_23B97974C();
  v6 = OUTLINED_FUNCTION_13();
  sub_23BAE596C(v6, v5, sub_23B977368, 0, v11);
  sub_23BAC74C8(v4);
  v13 = v12;
  sub_23B979910(&v13, &qword_27E197BF8, &qword_23BBE4048);

  v7 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_11_0(v4, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_23B979910(v4, &qword_27E197BA0, &qword_23BBE4010);
  return v9;
}

void sub_23B9774BC()
{
  OUTLINED_FUNCTION_10_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70, &qword_23BBFC930);
  v2 = OUTLINED_FUNCTION_13_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_1();
  v72 = v3 - v4;
  MEMORY[0x28223BE20](v5);
  v71 = v67 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v67 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v67 - v11;
  v13 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_7();
  v73 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0, &qword_23BBE4010);
  v20 = OUTLINED_FUNCTION_13_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v70 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = v67 - v25;
  MEMORY[0x28223BE20](v27);
  v69 = v67 - v29;
  v30 = *(v0 + 16);
  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_15;
  }

  v68 = v28;

  v32 = 0;
  while (1)
  {
    if (v32 == v31)
    {
      v33 = 1;
      v32 = v31;
    }

    else
    {
      if (v32 >= v31)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_0_1(v30 + v34);
      sub_23B979478();
      v33 = 0;
      ++v32;
    }

    __swift_storeEnumTagSinglePayload(v12, v33, 1, v13);
    sub_23B979688();
    OUTLINED_FUNCTION_11_0(v9, 1, v13);
    if (v35)
    {

      type metadata accessor for SubscriptionStoreControlOption(0);
      v43 = v69;
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
LABEL_14:
      sub_23B979910(v43, &qword_27E197BA0, &qword_23BBE4010);

      goto LABEL_15;
    }

    sub_23B9799E0();
    v36 = *(v18 + 40);

    sub_23B979A48(v18, type metadata accessor for SubscriptionStoreControlConfigurationSection);

    v37 = *(v36 + 16);
    v38 = type metadata accessor for SubscriptionStoreControlOption(0);
    v39 = v38;
    if (v37)
    {
      break;
    }

    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
    sub_23B979910(v26, &qword_27E197BA0, &qword_23BBE4010);
    v31 = *(v30 + 16);
  }

  v48 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
  v49 = *(*(v38 - 8) + 72);
  sub_23B979478();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v39);
  v43 = v69;
  sub_23B979688();
  OUTLINED_FUNCTION_11_0(v43, 1, v39);
  if (v35)
  {

    goto LABEL_14;
  }

  v67[0] = v49;
  v67[1] = v48;
  sub_23B979910(v43, &qword_27E197BA0, &qword_23BBE4010);
  for (i = 1; ; i = 0)
  {
    v52 = v71;
    v51 = v72;
    if (!v36)
    {
      goto LABEL_19;
    }

    v53 = *(v36 + 16);
    if (i != v53)
    {
      break;
    }

    v54 = v70;
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v39);
    sub_23B979910(v54, &qword_27E197BA0, &qword_23BBE4010);
LABEL_19:
    v58 = *(v30 + 16);
    if (v32 == v58)
    {
      v59 = 1;
    }

    else
    {
      if (v32 >= v58)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_0_1(v30 + v60);
      sub_23B979478();
      v59 = 0;
      ++v32;
    }

    __swift_storeEnumTagSinglePayload(v52, v59, 1, v13);
    sub_23B979688();
    OUTLINED_FUNCTION_11_0(v51, 1, v13);
    if (v35)
    {

      v62 = v68;
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v39);
      goto LABEL_28;
    }

    sub_23B9799E0();
    v61 = *(v18 + 40);

    sub_23B979A48(v18, type metadata accessor for SubscriptionStoreControlConfigurationSection);

    v36 = v61;
  }

  if (i >= v53)
  {
    goto LABEL_31;
  }

  v66 = v70;
  sub_23B979478();

  __swift_storeEnumTagSinglePayload(v66, 0, 1, v39);
  v62 = v68;
  sub_23B979688();
LABEL_28:

  OUTLINED_FUNCTION_11_0(v62, 1, v39);
  sub_23B979910(v62, &qword_27E197BA0, &qword_23BBE4010);
LABEL_15:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B977AE0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  v21 = type metadata accessor for SubscriptionStoreControlConfiguration(0, a14, a15, a4);
  v22 = *(v21 + 60);
  v23 = type metadata accessor for Subscription(0);
  __swift_storeEnumTagSinglePayload(a9 + v22, 1, 1, v23);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  result = sub_23B979568(a12, a9 + v22);
  *(a9 + *(v21 + 64)) = a13;
  return result;
}

void sub_23B977BC0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA8, &qword_23BBE4018);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  (*(v17 + 16))(v16 - v15, v3, v5);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
    sub_23B979688();
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = sub_23B979910(v13, &qword_27E197BA8, &qword_23BBE4018);
    v23 = *v3;
    v49 = *(v3 + 1);
    v48 = *(v3 + 4);
    v24 = v3[40];
    v46 = v23;
    v47 = v24;
    v25 = *(v3 + 6);
    v26 = *(v3 + 7);
    if (v25)
    {
      v22 = swift_allocObject();
      v27 = v22;
      v28 = *(v5 + 16);
      *(v22 + 16) = v28;
      *(v22 + 32) = v25;
      *(v22 + 40) = v26;
      v29 = sub_23B979654;
    }

    else
    {
      v29 = 0;
      v27 = 0;
      v28 = *(v5 + 16);
    }

    v44 = v28;
    v45 = &v44;
    v50 = v29;
    v51 = v27;
    *&v30 = MEMORY[0x28223BE20](v22);
    *(&v44 - 1) = v30;

    sub_23B9794F0(v25, v26);
    sub_23BBDD648();
    swift_getFunctionTypeMetadata1();
    sub_23BBDD648();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB8, &qword_23BBE4028);
    sub_23BA20CF8(sub_23B9794D0, v31, v32, v52);
    sub_23B979500(v29, v27);
    v33 = v52[0];
    if (v52[0])
    {
      v34 = v52[1];
      v35 = swift_allocObject();
      *(v35 + 16) = v33;
      *(v35 + 24) = v34;
      v33 = sub_23B979610;
    }

    else
    {
      v35 = 0;
    }

    v37 = *(v3 + 8);
    v36 = *(v3 + 9);
    sub_23B979510();
    v38 = v3[*(v5 + 64)];
    v39 = *(v18 + 60);
    type metadata accessor for Subscription(0);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    *v7 = v46;
    *(v7 + 8) = 0;
    *(v7 + 16) = v49;
    *(v7 + 32) = v48;
    *(v7 + 40) = v47;
    *(v7 + 48) = v33;
    *(v7 + 56) = v35;
    *(v7 + 64) = v37;
    *(v7 + 72) = v36;

    sub_23B979568(v2, v7 + v39);
    *(v7 + *(v18 + 64)) = v38;
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B977FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  v9[5] = v7;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = sub_23B9796E0;
  v10[5] = v9;
  *a4 = sub_23B979720;
  a4[1] = v10;
}

uint64_t sub_23B97807C@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void, double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = sub_23BBDD648();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  a2(*a1, *(a1 + 8), *(a1 + 16), v12);
  v18 = a3;
  v19 = a4;
  sub_23BA20CF8(sub_23B97972C, MEMORY[0x277CE11C8], v15, a5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_23B9781C4@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_23BBDC0D8();
  *a4 = result;
  return result;
}

uint64_t sub_23B9782A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  v16 = a1;
  v14[1] = *(a2 + 16);
  v15 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C10, &qword_23BBE4058);
  v9 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  v10 = sub_23B97998C(&qword_27E197C18, &qword_27E197C10, &qword_23BBE4058);
  v12 = sub_23B9763A4(sub_23B979968, v14, v8, v9, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);

  *(a3 + 16) = v12;
  if (!*(a3 + 8))
  {
    result = sub_23B9767C0();
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_23B9783DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23B97933C(a1, a3);
  v6 = *(a2 + 16);
  v10[2] = a1;

  sub_23BB5B4B4(sub_23B979AA0, v10, v6, sub_23B977368, 0);
  v8 = v7;
  type metadata accessor for SubscriptionStoreContentConfiguration.Section(0);
  type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  result = sub_23B979478();
  *(a3 + 40) = v8;
  return result;
}

uint64_t sub_23B9784BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Subscription(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 40);
  sub_23B979478();
  LOBYTE(a2) = v6(v5);
  v7 = sub_23BBDCDB8();
  (*(*(v7 - 8) + 8))(v5, v7);
  return a2 & 1;
}

void sub_23B9785B0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  v4 = v2;
  OUTLINED_FUNCTION_19();
  v26 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v25 = *(v1 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  sub_23B9782A4(v2, v1, v10 - v9);
  if (*v2)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_23B977374();
  }

  v12 = *(v11 + 16);
  v13 = *(v2 + 32);
  v23 = *(v2 + 24);
  v22 = *(v2 + 40);
  v15 = *(v2 + 48);
  v14 = *(v2 + 56);
  v16 = *(v4 + 72);
  v21 = *(v4 + 64);
  sub_23B979510();
  v20 = *(v4 + *(v1 + 64));

  sub_23B9794F0(v15, v14);
  v17 = v3;
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);

  sub_23B977AE0(v24 & 1, 0, v12, v23, v13, v22, v15, v14, v26, v21, v16, v17, v20, v19, v18);
  (*(v25 + 8))(v11, v1);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9787A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_23BBDC8F8();
  sub_23B979510();
  v10 = sub_23BBDCB58();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_23B979910(v6, &qword_27E197B90, &qword_23BBE3F90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v9, &qword_27E197B90, &qword_23BBE3F90);
    return (*(*(v10 - 8) + 32))(a1, v6, v10);
  }

  return result;
}

void _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV6OptionV2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B80, &qword_23BC03950);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  if (sub_23BBA82BC(v5, v3))
  {
    v25 = v8;
    v24 = type metadata accessor for SubscriptionStoreControlOption(0);
    v18 = *(v14 + 48);
    sub_23B979510();
    sub_23B979510();
    OUTLINED_FUNCTION_11_0(v17, 1, v6);
    if (!v19)
    {
      sub_23B979510();
      OUTLINED_FUNCTION_11_0(&v17[v18], 1, v6);
      if (!v19)
      {
        v20 = v25;
        (*(v25 + 32))(v1, &v17[v18], v6);
        OUTLINED_FUNCTION_1_1();
        sub_23B979398(v21, v22, MEMORY[0x277CDD2C8]);
        sub_23BBDCF38();
        v23 = *(v20 + 8);
        v23(v1, v6);
        v23(v13, v6);
        sub_23B979910(v17, &unk_27E19FEF0, &unk_23BBE3E40);
        goto LABEL_11;
      }

      (*(v25 + 8))(v13, v6);
LABEL_10:
      sub_23B979910(v17, &qword_27E197B80, &qword_23BC03950);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_11_0(&v17[v18], 1, v6);
    if (!v19)
    {
      goto LABEL_10;
    }

    sub_23B979910(v17, &unk_27E19FEF0, &unk_23BBE3E40);
  }

LABEL_11:
  OUTLINED_FUNCTION_9_1();
}

void sub_23B978BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_23BBA87A0(v24);
  v36 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v35, 1, v25);
  if (v37)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v27 + 32))(v31, v35, v25);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_1_1();
    sub_23B979398(v38, v39, MEMORY[0x277CDD2C0]);
    sub_23BBDCE68();
    (*(v27 + 8))(v31, v25);
  }

  MEMORY[0x23EEB63A0](*(v20 + *(v36 + 24)));
  OUTLINED_FUNCTION_9_1();
}

void sub_23B978D9C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_23BBDDBB8();
  sub_23BBA87A0(&v15);
  v10 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v9, 1, v2);
  if (v11)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v4 + 32))(v1, v9, v2);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_1_1();
    sub_23B979398(v12, v13, MEMORY[0x277CDD2C0]);
    sub_23BBDCE68();
    (*(v4 + 8))(v1, v2);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v10 + 24)));
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B978F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDCC88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-1] - v9;
  sub_23BBDDBB8();
  sub_23BBA87A0(v13);
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_23BBDDBD8();
    sub_23B979398(&qword_27E197B78, MEMORY[0x277CDD2B8], MEMORY[0x277CDD2C0]);
    sub_23BBDCE68();
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x23EEB63A0](*(v2 + *(a2 + 24)));
  return sub_23BBDDBF8();
}

uint64_t sub_23B9791E0()
{
  v1 = (v0 + *(type metadata accessor for Subscription(0) + 20));
  if (v1[8] == 2)
  {
    return _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_23B979230@<X0>(uint64_t a1@<X8>)
{
  result = sub_23B9791E0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t sub_23B9792E4()
{
  result = qword_27E197B68;
  if (!qword_27E197B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197B68);
  }

  return result;
}

uint64_t sub_23B979398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B979424()
{
  result = qword_27E197B98;
  if (!qword_27E197B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197B98);
  }

  return result;
}

uint64_t sub_23B979478()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B9794F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B979500(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B979510()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_17_0();
  v4(v3);
  return v0;
}

uint64_t sub_23B979568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9795D8()
{

  return swift_deallocObject();
}

uint64_t sub_23B97961C()
{

  return swift_deallocObject();
}

uint64_t sub_23B979688()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_17_0();
  v4(v3);
  return v0;
}

uint64_t sub_23B9796E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 32);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

unint64_t sub_23B97974C()
{
  result = qword_27E197BC8;
  if (!qword_27E197BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197BC0, &qword_23BBE4030);
    sub_23B9797D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197BC8);
  }

  return result;
}

unint64_t sub_23B9797D0()
{
  result = qword_27E197BD0;
  if (!qword_27E197BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197BD8, &qword_23BBE4038);
    sub_23B979874();
    sub_23B97998C(&qword_27E197C00, &qword_27E197C08, &qword_23BBE4050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197BD0);
  }

  return result;
}

unint64_t sub_23B979874()
{
  result = qword_27E197BE0;
  if (!qword_27E197BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197BE8, &qword_23BBE4040);
    sub_23B97998C(&qword_27E197BF0, &qword_27E197BF8, &qword_23BBE4048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197BE0);
  }

  return result;
}

uint64_t sub_23B979910(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B97998C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23B9799E0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B979A38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23B979A48(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t _s23MarketingModifierValuesVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s23MarketingModifierValuesVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
        JUMPOUT(0x23B979D30);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI012SubscriptionA30ControlBackgroundStyleInternalO_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B979D94(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[113])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_23B979DD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23B979E60()
{
  if (v0[2] == 1)
  {
    if (*v0 == 1)
    {
      sub_23B9B6E40();
      memset(v3, 0, sizeof(v3));
      v4 = xmmword_23BBE4070;
      v1 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v5, v3);
      sub_23B97B104(v3);
      sub_23B97B104(v5);
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_23B979EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C28, &qword_23BBE42A0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = __src - v7;
  sub_23BBDC318();
  sub_23BBDA488();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C30, &qword_23BBE42A8);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  memcpy(&v8[*(v6 + 44)], __src, 0x70uLL);
  v10 = sub_23BBDAB48();
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C38, &qword_23BBE42B0) + 36);
  sub_23B97A0D0(v2, v11);
  v12 = sub_23BBD9D58();
  v13 = MEMORY[0x23EEB3BE0]((2 * v12));
  v14 = sub_23BBDA398();
  v15 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C40, &qword_23BBE42B8) + 36);
  *v15 = v14;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 17) = v13;
  *(v15 + 24) = v10;
  return sub_23B97A69C(v8, a2, &qword_27E197C28, &qword_23BBE42A0);
}

uint64_t sub_23B97A0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C48, &qword_23BBE42C0);
  MEMORY[0x28223BE20](v37);
  v9 = &v34 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C50, &qword_23BBE42C8);
  MEMORY[0x28223BE20](v38);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C58, &qword_23BBE42D0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  if (*(a1 + 2) == 1)
  {
    if (sub_23B979E60())
    {
      sub_23BB254D4(v11);
      v15 = sub_23BBDB3F8();
      sub_23BBD9B18();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197CB0, &qword_23BBFACC0) + 36)];
      *v24 = v15;
      *(v24 + 1) = v17;
      *(v24 + 2) = v19;
      *(v24 + 3) = v21;
      *(v24 + 4) = v23;
      v24[40] = 0;
      v25 = sub_23BBDB388();
      v26 = &v11[*(v38 + 36)];
      *v26 = v25;
      *(v26 + 8) = 0u;
      *(v26 + 24) = 0u;
      v26[40] = 1;
      sub_23B97B02C(v11, v9);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C98, &unk_23BBE42F0);
      sub_23B97AE30();
      sub_23B97AFA0();
      sub_23BBDACD8();
      sub_23B97B09C(v11);
LABEL_15:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C60, &qword_23BBE42D8);
      v30 = v14;
      v31 = 0;
      goto LABEL_16;
    }

    v28 = *(a1 + 104);
    if (*(a1 + 112) == 1)
    {
      if ((v28 & 1) == 0)
      {
LABEL_9:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C60, &qword_23BBE42D8);
        v30 = v14;
        v31 = 1;
LABEL_16:
        __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
        sub_23B97A69C(v14, a2, &qword_27E197C58, &qword_23BBE42D0);
        return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
      }
    }

    else
    {

      sub_23BBDD5A8();
      v35 = v12;
      v32 = sub_23BBDB338();
      v36 = a2;
      v33 = v32;
      v12 = v35;
      sub_23BBD9978();

      a2 = v36;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v28, 0);
      (*(v5 + 8))(v7, v4);
      if (v43[0] != 1)
      {
        goto LABEL_9;
      }
    }

    sub_23B9B6F70();
    if ((v42 - 1) > 1)
    {
      v39 = 1;
      v43[112] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C68, &unk_23BBE42E0);
      sub_23B97AC1C();
      sub_23BBDACD8();
      sub_23B97ADDC(v41);
      memcpy(v43, v40, sizeof(v43));
    }

    else
    {
      sub_23BBDC318();
      sub_23BBDA488();
      v41[0] = 0;
      v40[112] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C68, &unk_23BBE42E0);
      sub_23B97AC1C();
      sub_23BBDACD8();
    }

    memcpy(v9, v43, 0x71uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C98, &unk_23BBE42F0);
    sub_23B97AE30();
    sub_23B97AFA0();
    sub_23BBDACD8();
    goto LABEL_15;
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
}

uint64_t sub_23B97A69C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B97A704@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = (a2 >> 8) & 1;
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a2, 0);
    v14 = *(v9 + 8);
    v14(v11, v8);
    v20 = v22;

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a2, 0);
    v14(v11, v8);
    LOBYTE(v12) = v21;
    LOBYTE(a2) = v20;
  }

  v16 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197CF0, &qword_23BBE44F8) + 36);
  *v16 = a2 & 1;
  *(v16 + 1) = v12;
  *(v16 + 2) = HIBYTE(a3) & 1;
  *(v16 + 8) = swift_getKeyPath();
  *(v16 + 48) = 0;
  *(v16 + 56) = swift_getKeyPath();
  *(v16 + 96) = 0;
  *(v16 + 104) = swift_getKeyPath();
  *(v16 + 112) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197CF8, &unk_23BBE4500);
  return (*(*(v17 - 8) + 16))(a4, a1, v17);
}

uint64_t sub_23B97A9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_23B97A704(a1, *v2, v3 | *(v2 + 8), a2);
}

uint64_t sub_23B97A9E4()
{
  sub_23B97B158();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23B97AA68(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a1 & 1;
  v8[1] = a2;
  v8[2] = a3;
  KeyPath = swift_getKeyPath();
  v10 = 0;
  v11 = swift_getKeyPath();
  v12 = 0;
  v13 = swift_getKeyPath();
  v14 = 0;
  MEMORY[0x23EEB43C0](v8, a4, &type metadata for MarketingContentViewModifier, a5);
  return sub_23B97B1CC(v8);
}

uint64_t sub_23B97AB10(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v9 = a1;
  MEMORY[0x23EEB43C0](&KeyPath, a2, &type metadata for MarketingContentEnvironmentViewModifier, a3);
}

uint64_t sub_23B97AB94(char a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_23BBDB748();
}

unint64_t sub_23B97AC1C()
{
  result = qword_27E197C70;
  if (!qword_27E197C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C68, &unk_23BBE42E0);
    sub_23B97ACA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197C70);
  }

  return result;
}

unint64_t sub_23B97ACA8()
{
  result = qword_27E197C78;
  if (!qword_27E197C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C80, qword_23BC049B0);
    sub_23B97AD34();
    sub_23B97AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197C78);
  }

  return result;
}

unint64_t sub_23B97AD34()
{
  result = qword_27E197C88;
  if (!qword_27E197C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197C88);
  }

  return result;
}

unint64_t sub_23B97AD88()
{
  result = qword_27E197C90;
  if (!qword_27E197C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197C90);
  }

  return result;
}

unint64_t sub_23B97AE30()
{
  result = qword_27E197CA0;
  if (!qword_27E197CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C50, &qword_23BBE42C8);
    sub_23B97AEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CA0);
  }

  return result;
}

unint64_t sub_23B97AEBC()
{
  result = qword_27E197CA8;
  if (!qword_27E197CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197CB0, &qword_23BBFACC0);
    sub_23B97AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CA8);
  }

  return result;
}

unint64_t sub_23B97AF48()
{
  result = qword_27E197CB8;
  if (!qword_27E197CB8)
  {
    type metadata accessor for SubscriptionStorePolicySection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CB8);
  }

  return result;
}

unint64_t sub_23B97AFA0()
{
  result = qword_27E197CC0;
  if (!qword_27E197CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C98, &unk_23BBE42F0);
    sub_23B97AC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CC0);
  }

  return result;
}

uint64_t sub_23B97B02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C50, &qword_23BBE42C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B97B09C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C50, &qword_23BBE42C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B97B158()
{
  result = qword_27E197CC8;
  if (!qword_27E197CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CC8);
  }

  return result;
}

unint64_t sub_23B97B210()
{
  result = qword_27E197CD0;
  if (!qword_27E197CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C38, &qword_23BBE42B0);
    sub_23B97B2C8();
    sub_23B97B518(&qword_27E197CE8, &qword_27E197C40, &qword_23BBE42B8, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CD0);
  }

  return result;
}

unint64_t sub_23B97B2C8()
{
  result = qword_27E197CD8;
  if (!qword_27E197CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C28, &qword_23BBE42A0);
    sub_23B97B518(&qword_27E197CE0, &qword_27E197C30, &qword_23BBE42A8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CD8);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_23B97B3A0(uint64_t a1, unsigned int a2)
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

uint64_t sub_23B97B3E0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B97B450(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_23B97B460()
{
  result = qword_27E197D00;
  if (!qword_27E197D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197CF0, &qword_23BBE44F8);
    sub_23B97B518(&qword_27E197D08, &qword_27E197CF8, &unk_23BBE4500, MEMORY[0x277CE04B0]);
    sub_23B97B560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D00);
  }

  return result;
}

uint64_t sub_23B97B518(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_23B97B560()
{
  result = qword_27E197D10;
  if (!qword_27E197D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomaticSubscriptionOfferViewStyle(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AutomaticSubscriptionOfferViewStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23B97B720);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B97B75C()
{
  result = qword_27E197D18;
  if (!qword_27E197D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197D20, &unk_23BBEEE20);
    sub_23B97B7E8();
    sub_23B97B84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D18);
  }

  return result;
}

unint64_t sub_23B97B7E8()
{
  result = qword_27E197D28;
  if (!qword_27E197D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197D30, qword_23BBE4580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D28);
  }

  return result;
}

unint64_t sub_23B97B84C()
{
  result = qword_27E197D38;
  if (!qword_27E197D38)
  {
    type metadata accessor for ConfigureSubscriptionOfferViewEnvironmentViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D38);
  }

  return result;
}

uint64_t sub_23B97B8A4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (sub_23BBDA3A8())
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D48, &qword_23BBE4610);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D50, &qword_23BBE4618);
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_23B97B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D78, &qword_23BBE46E8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D80, &qword_23BBE46F0);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_23B97B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23B97BE1C();

  return MEMORY[0x2821309F8](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_23B97BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23B97BE1C();

  return MEMORY[0x282130A00](a1, a2, a3, a4, a5, v12, a6);
}

double sub_23B97BAFC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_23B97BB08(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_23B97BB44()
{
  sub_23B97BC08();
  result = sub_23BBD9E28();
  qword_27E1BF860 = result;
  return result;
}

uint64_t sub_23B97BB74()
{
  sub_23BBD9E18();
  if (qword_27E197638 != -1)
  {
    swift_once();
  }

  v0 = sub_23BBD9E08();

  qword_27E1BF868 = v0;
  return result;
}

unint64_t sub_23B97BC08()
{
  result = qword_27E197D40;
  if (!qword_27E197D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D40);
  }

  return result;
}

unint64_t sub_23B97BC9C()
{
  result = qword_27E197D58;
  if (!qword_27E197D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197D50, &qword_23BBE4618);
    sub_23B97B518(&qword_27E197D60, &qword_27E197D48, &qword_23BBE4610, MEMORY[0x277CE0520]);
    sub_23B97BD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D58);
  }

  return result;
}

unint64_t sub_23B97BD54()
{
  result = qword_27E197D68;
  if (!qword_27E197D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D68);
  }

  return result;
}

unint64_t sub_23B97BDAC()
{
  result = qword_27E197D70;
  if (!qword_27E197D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D70);
  }

  return result;
}

unint64_t sub_23B97BE1C()
{
  result = qword_27E197D88;
  if (!qword_27E197D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D88);
  }

  return result;
}

unint64_t sub_23B97BE74()
{
  result = qword_27E197D90;
  if (!qword_27E197D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197D80, &qword_23BBE46F0);
    sub_23B97B518(qword_27E197D98, &qword_27E197D78, &qword_23BBE46E8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D90);
  }

  return result;
}

void sub_23B97BF34(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23B985190(319, &qword_27E197E20, &qword_27E197E28, &unk_23BC030E0);
    if (v2 <= 0x3F)
    {
      sub_23B985190(319, &qword_27E197E30, &qword_27E197E38, qword_23BBE4780);
      if (v3 <= 0x3F)
      {
        sub_23B9850E8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23B9850E8(319, &qword_27E197E48, &type metadata for PlatterStyleVariant, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B97C084(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 89) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_21;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_21;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B97C1D0);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *a1;
        }

        else
        {
          v14 = 0;
          v15 = *a1;
        }

        v18 = v7 + (v15 | v14);
        return (v18 + 1);
      default:
        break;
    }
  }

  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = a1[v6];
  if (v17 < 2)
  {
    return 0;
  }

  v18 = (v17 + 2147483646) & 0x7FFFFFFF;
  return (v18 + 1);
}

void sub_23B97C1E4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 89) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, (((v9 & 0xFFFFFFFFFFFFFFF8) + 89) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_40:
      __break(1u);
      JUMPOUT(0x23B97C3BCLL);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0xFE)
        {
          a1[v9] = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23B97C440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 16);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a1 + 60)) == 2)
  {
    if (*(v2 + *(a1 + 56)) == 1)
    {
      a2[3] = MEMORY[0x277CDD8E8];
      result = sub_23B985784();
      a2[4] = result;
    }

    else
    {
      result = sub_23BAC69A0(2, v10);
      v16 = MEMORY[0x277CDF6A0];
      a2[3] = MEMORY[0x277CDF6A8];
      a2[4] = v16;
      *a2 = result;
    }

    return result;
  }

  if (*(v2 + *(a1 + 64)) == 1)
  {
    if (*(v2 + *(a1 + 56)) == 1)
    {
      v14 = v2 + *(a1 + 96);
      v15 = *v14;
      if (*(v14 + 8) == 1)
      {
        if ((v15 & 1) == 0)
        {
LABEL_8:
          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197F40, &qword_23BBE4A08);
          result = sub_23B97B518(&qword_27E197F48, &qword_27E197F40, &qword_23BBE4A08, MEMORY[0x277CE0848]);
          a2[4] = result;
          *a2 = 1;
          return result;
        }
      }

      else
      {

        v24 = sub_23BBDD5A8();
        v23 = sub_23BBDB338();
        sub_23BBD9978();

        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B97B450(v15, 0);
        (*(v9 + 8))(v12, v8);
        if ((v26 & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    (*(v25 + 16))(v7, v2, v5, v10);
    v20 = v2 + *(a1 + 96);
    v21 = *v20;
    if (*(v20 + 8) != 1)
    {

      v24 = sub_23BBDD5A8();
      v22 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v21, 0);
      (*(v9 + 8))(v12, v8);
    }

    a2[3] = sub_23BBDAAD8();
    a2[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_23BBD9B98();
    return (*(v25 + 8))(v7, v5);
  }

  else
  {
    v17 = *(a1 + 32);
    a2[3] = v5;
    a2[4] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    v19 = *(v25 + 16);

    return v19(boxed_opaque_existential_1, v2, v5);
  }
}

uint64_t sub_23B97C8AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBD9BF8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9B6F84();
  v12 = (*(v9 + 88))(v11, v8);
  v13 = *MEMORY[0x277CDF3D0];
  (*(v9 + 8))(v11, v8);
  if (v12 == v13)
  {
    v14 = v2 + *(a1 + 76);
    v15 = *v14;
    v16 = *(v14 + 8);

    if ((v16 & 1) == 0)
    {
      sub_23BBDD5A8();
      v17 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j__swift_release(v15);
      (*(v5 + 8))(v7, v4);
      v15 = v28;
    }

    sub_23BBDBD38();
    if (v15)
    {
      v18 = sub_23BBDBCD8();

      if (v18)
      {
        return sub_23BBDBCB8();
      }
    }

    else
    {
    }
  }

  v19 = v2 + *(a1 + 76);
  v20 = *v19;
  v21 = *(v19 + 8);

  v22 = v20;
  if ((v21 & 1) == 0)
  {
    sub_23BBDD5A8();
    v23 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v20);
    (*(v5 + 8))(v7, v4);
    v22 = v28;
  }

  sub_23BBDBD38();
  if (v22)
  {
    v24 = sub_23BBDBCD8();

    if (v24)
    {
      return sub_23BBDBCB8();
    }
  }

  else
  {
  }

  if ((v21 & 1) == 0)
  {
    sub_23BBDD5A8();
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v20);
    (*(v5 + 8))(v7, v4);
    v20 = v28;
  }

  if (!v20)
  {
    return sub_23BBDBCB8();
  }

  return v20;
}

uint64_t sub_23B97CC9C(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B97C8AC(a1);
  v7 = v1 + *(a1 + 96);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
  }

  v10 = sub_23BBDBD58();

  return v10;
}

double sub_23B97CE44(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 96);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  result = 0.0;
  if (v8)
  {
    return 2.0;
  }

  return result;
}

uint64_t sub_23B97CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v14 = type metadata accessor for PlatterStyleModifier(0, v21);
  v15 = *(a1 + *(v14 + 60));
  if (v15 == 2)
  {
    return 2;
  }

  v17 = v14;
  v18 = a1 + *(v14 + 96);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    if (v19)
    {
      return 3;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v20 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v19, 0);
    (*(v11 + 8))(v13, v10);
    if (v21[0])
    {
      return 3;
    }
  }

  if (*(a1 + *(v17 + 64)))
  {
    return v15;
  }

  else
  {
    return 3;
  }
}

double sub_23B97D178(int *a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + a1[18]);
  if ((v7[8] & 1) == 0)
  {
    return *v7;
  }

  v8 = *(v1 + a1[15]);
  result = 1.0;
  if (v8 != 2)
  {
    v10 = v1 + a1[24];
    v11 = *v10;
    if (*(v10 + 8) != 1)
    {

      sub_23BBDD5A8();
      v12 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v11, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v11) = v13[15];
    }

    result = 0.5;
    if ((v8 == 0) | v11 & 1)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_23B97D318(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(a1 + 60)) == 2)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = v1 + *(a1 + 96);
    v7 = *v8;
    if (*(v8 + 8) != 1)
    {

      sub_23BBDD5A8();
      v9 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v7, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v7) = v11[15];
    }
  }

  return v7 & 1;
}

double sub_23B97D484@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v10 = *(a1 + 24);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BBDA468();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v7, a1, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v20, v10);
    sub_23BBDBEC8();
    v26 = v28;
    v27 = v29;
    v23 = v30;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_23B9873D4(v20, v16, v22);
    sub_23BBDA448();
    v26 = v28;
    v27 = v29;
    v23 = v30;
    sub_23B987438(v16, *&v28);
  }

  result = *&v26;
  v25 = v27;
  *a2 = v26;
  *(a2 + 16) = v25;
  *(a2 + 32) = v23;
  return result;
}

double sub_23B97D6F8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v27[0] = a1;
  v27[1] = a3;
  v10 = *(a5 + 24);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BBDA468();
  MEMORY[0x28223BE20](v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6, a5, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v20, v10);
    v31 = a2 & 1;
    v30 = a4 & 1;
    sub_23BBDBEB8();
    v24 = v23;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_23B9873D4(v20, v16, v22);
    sub_23B9878FC(&qword_27E198168, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v29 = a2 & 1;
    v28 = a4 & 1;
    sub_23BBDBED8();
    v24 = v25;
    sub_23B987438(v16, v25);
  }

  return v24;
}

double sub_23B97D99C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B97D484(a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*sub_23B97DA10(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97DA84;
}

uint64_t sub_23B97DA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133768](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B97DB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133720](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B97DBA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133738](a1, WitnessTable);
}

double sub_23B97DC04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = v7;
  v8 = type metadata accessor for PlatterStyleModifier.PlatterShape(0, &v11);
  sub_23B97D484(v8, &v11);
  result = *&v11;
  v10 = v12;
  *a2 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v13;
  return result;
}

double sub_23B97DC88(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v12[0] = *(a5 + 16);
  v12[1] = v9;
  v10 = type metadata accessor for PlatterStyleModifier.PlatterShape(0, v12);
  LOBYTE(v12[0]) = a2 & 1;
  return sub_23B97D6F8(a1, a2 & 1, a3, a4 & 1, v10);
}

uint64_t sub_23B97DD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v36[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36[-1] - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v36[-1] - v16;
  v18 = sub_23BBDA468();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v36[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = *(a1 + 16);
  *(&v21 + 1) = v8;
  v35 = *(a1 + 32);
  v40 = v21;
  v41 = v35;
  v22 = type metadata accessor for PlatterStyleModifier.PlatterShape(0, &v40);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v36[-1] - v24;
  (*(v26 + 16))(&v36[-1] - v24, v4, v22, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v17, v25, v8);
    v28 = *(v9 + 16);
    v28(v14, v17, v8);
    if (swift_dynamicCast())
    {
      v38[0] = v40;
      v38[1] = v41;
      v39 = AssociatedConformanceWitness;
      sub_23BB238B4(v36);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      *(&v41 + 1) = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v40);
      sub_23BBDA318();
      sub_23B987854(v38);
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v40 = 0u;
      v41 = 0u;
      sub_23B9846E8(&v40, &qword_27E197E60, &qword_23BBE47D0);
      v28(v11, v17, v8);
      sub_23BB23808(v11, v8, *(&v35 + 1), v38);
      sub_23BB238B4(v36);
      sub_23B987854(v38);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      *(&v41 + 1) = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v40);
      sub_23BBDA318();
    }

    (*(v9 + 8))(v17, v8);
    result = sub_23B9878A8(v36);
    v34 = v41;
    *a2 = v40;
    *(a2 + 16) = v34;
    *(a2 + 32) = AssociatedConformanceWitness;
  }

  else
  {
    sub_23B9873D4(v25, v20, v27);
    v29 = sub_23BBDA458();
    *(&v41 + 1) = v29;
    AssociatedConformanceWitness = sub_23B9878FC(qword_27E1981D0, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
    sub_23B987944(v20, boxed_opaque_existential_1, v31);
    *(boxed_opaque_existential_1 + *(v29 + 20)) = a3;
    sub_23BB238B4(a2);
    sub_23B987438(v20, v32);
    return sub_23B987854(&v40);
  }

  return result;
}

uint64_t sub_23B97E1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v8 = type metadata accessor for PlatterStyleModifier.PlatterShape(0, v10);
  return (*(*(v8 - 8) + 32))(a6, a1, v8);
}

double sub_23B97E22C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B97DC04(a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*sub_23B97E2A4(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B988098;
}

void sub_23B97E318(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23B97E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133768](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B97E3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133720](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B97E458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133738](a1, WitnessTable);
}

uint64_t sub_23B97E4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v9 = sub_23BBDD648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = *(v8 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v2 + *(a1 + 68), v9, v15);
  if (__swift_getEnumTagSinglePayload(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v18 = *(v2 + *(a1 + 60));
    if (v18 == 2)
    {
      v19 = *(sub_23BBDA468() + 20);
      v20 = *MEMORY[0x277CE0118];
      v21 = sub_23BBDAA88();
      (*(*(v21 - 8) + 104))(a2 + v19, v20, v21);
      __asm { FMOV            V0.2D, #26.0 }

LABEL_13:
      *a2 = _Q0;
LABEL_14:
      v41 = *(a1 + 16);
      v42 = v8;
      v43 = *(a1 + 32);
      type metadata accessor for PlatterStyleModifier.PlatterShape(0, &v41);
      return swift_storeEnumTagMultiPayload();
    }

    v28 = v2 + *(a1 + 100);
    v29 = *v28;
    if (*(v28 + 8) == 1)
    {
      if ((v29 & 1) == 0)
      {
LABEL_7:
        if (v18)
        {
          v30 = 12.0;
        }

        else
        {
          v30 = 18.0;
        }

        v31 = *(sub_23BBDA468() + 20);
        v32 = *MEMORY[0x277CE0118];
        v33 = sub_23BBDAA88();
        (*(*(v33 - 8) + 104))(a2 + v31, v32, v33);
        *a2 = v30;
        *(a2 + 8) = v30;
        goto LABEL_14;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v34 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v29, 0);
      (*(v39 + 8))(v7, v40);
      if (v41 != 1)
      {
        goto LABEL_7;
      }
    }

    v35 = *(sub_23BBDA468() + 20);
    v36 = *MEMORY[0x277CE0118];
    v37 = sub_23BBDAA88();
    (*(*(v37 - 8) + 104))(a2 + v35, v36, v37);
    __asm { FMOV            V0.2D, #18.0 }

    goto LABEL_13;
  }

  v27 = *(v13 + 32);
  v27(v17, v12, v8);
  v27(a2, v17, v8);
  v41 = *(a1 + 16);
  v42 = v8;
  v43 = *(a1 + 32);
  type metadata accessor for PlatterStyleModifier.PlatterShape(0, &v41);
  return swift_storeEnumTagMultiPayload();
}

double sub_23B97E92C(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 88);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return 0.0;
    }

LABEL_5:
    result = 1.0;
    if (*(v1 + *(a1 + 52)))
    {
      return result;
    }

    return 0.0;
  }

  sub_23BBDD5A8();
  v9 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();
  sub_23B97B450(v8, 0);
  (*(v4 + 8))(v6, v3);
  if (v11[15] == 1)
  {
    goto LABEL_5;
  }

  return 0.0;
}

double sub_23B97EAA8(int *a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + a1[14]) != 1)
  {
    return 1.0;
  }

  v7 = v1 + a1[24];
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return 1.0;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v14[15] != 1)
    {
      return 1.0;
    }
  }

  v10 = v1 + a1[26];
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
      return 1.0;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v11, 0);
    (*(v4 + 8))(v6, v3);
    if (v14[14] != 1)
    {
      return 1.0;
    }
  }

  if (*(v1 + a1[15]) != 2)
  {
    return 0.989130435;
  }

  return 1.0;
}

uint64_t sub_23B97ECF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v223 = a1;
  v236 = a3;
  v235 = sub_23BBDAD18();
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v233 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDA928();
  v158 = *(v5 - 8);
  v159 = v5;
  MEMORY[0x28223BE20](v5);
  v157 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2;
  v264 = a2[2];
  v11 = v264;
  v252 = v264;
  v265 = v7;
  v12 = v7;
  v253 = v7;
  v266 = v8;
  v13 = v8;
  v249 = v8;
  v267 = v9;
  v14 = v9;
  v248 = v9;
  v247 = type metadata accessor for PlatterStyleModifier.ContainerShape(0, &v264);
  v232 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v231 = &v157 - v15;
  v246 = sub_23BBDAD08();
  v230 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v229 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_23BBDA538();
  v227 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v226 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = v11;
  v265 = v12;
  v266 = v13;
  v267 = v14;
  v18 = type metadata accessor for PlatterStyleModifier.PlatterShape(255, &v264);
  WitnessTable = swift_getWitnessTable();
  v251 = type metadata accessor for FillBlendLayerModifier(0, v18, WitnessTable, v20);
  v225 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v224 = &v157 - v21;
  v22 = v18;
  v256 = v18;
  v255 = WitnessTable;
  v23 = sub_23BBD9FF8();
  v222 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v221 = &v157 - v24;
  v243 = v10;
  v219 = *(v10 - 1);
  v220 = *(v219 + 64);
  MEMORY[0x28223BE20](v25);
  v217 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v179 = sub_23BBDAE98();
  v27 = sub_23BBDA358();
  v215 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v193 = &v157 - v28;
  v264 = MEMORY[0x277CDF6A8];
  v265 = v22;
  v266 = MEMORY[0x277CDF6A0];
  v267 = WitnessTable;
  sub_23BBDB0C8();
  v189 = v27;
  v29 = sub_23BBDA358();
  Description = v29[-1].Description;
  MEMORY[0x28223BE20](v29);
  v245 = &v157 - v30;
  sub_23BBDAF38();
  v31 = swift_getWitnessTable();
  v264 = MEMORY[0x277CE0F78];
  v265 = v23;
  v194 = v23;
  v266 = MEMORY[0x277CE0F60];
  v267 = v31;
  v32 = v31;
  v192 = v31;
  sub_23BBDAE78();
  v33 = sub_23BBDA358();
  v34 = swift_getWitnessTable();
  v178 = v34;
  v35 = sub_23B9852FC();
  v289 = v34;
  v290 = v35;
  v36 = MEMORY[0x277CDFAD8];
  v37 = swift_getWitnessTable();
  v184 = v37;
  v38 = swift_getWitnessTable();
  v287 = v37;
  v288 = v38;
  v238 = v36;
  v240 = v29;
  v39 = swift_getWitnessTable();
  v242 = v39;
  v40 = swift_getWitnessTable();
  v254 = MEMORY[0x277CE0488];
  v41 = swift_getWitnessTable();
  v285 = v40;
  v286 = v41;
  v239 = v33;
  v241 = swift_getWitnessTable();
  v264 = v29;
  v265 = v33;
  v266 = v39;
  v267 = v241;
  v237 = MEMORY[0x277CE0C78];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v206 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v186 = &v157 - v42;
  v195 = sub_23B985350();
  v264 = &type metadata for SubscriptionStorePickerStrokeStyle;
  v265 = v23;
  v266 = v195;
  v267 = v32;
  sub_23BBDAE78();
  v43 = sub_23BBDA358();
  v211 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v244 = &v157 - v44;
  v45 = sub_23BBDA358();
  v214 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v212 = &v157 - v46;
  type metadata accessor for ProminentPlatterShadow(255, v256, v255, v47);
  v48 = sub_23BBDD648();
  v284 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v210 = v48;
  v202 = v49;
  v209 = sub_23BBDACB8();
  v50 = sub_23BBDA358();
  v208 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v203 = &v157 - v51;
  v52 = sub_23BBDA358();
  v204 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v198 = &v157 - v53;
  v205 = sub_23BBDAE58();
  v54 = sub_23BBDA358();
  v200 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v197 = &v157 - v55;
  sub_23BBDB108();
  v56 = sub_23BBDA358();
  v199 = v56[-1].Description;
  MEMORY[0x28223BE20](v56);
  v196 = &v157 - v57;
  v264 = v240;
  v265 = v239;
  v266 = v242;
  v267 = v241;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v161 = OpaqueTypeConformance2;
  v59 = swift_getWitnessTable();
  v282 = OpaqueTypeConformance2;
  v283 = v59;
  v213 = v43;
  v60 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v163 = v60;
  v280 = v60;
  v281 = v61;
  v216 = v45;
  v62 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v165 = v62;
  v278 = v62;
  v279 = v63;
  v209 = v50;
  v168 = swift_getWitnessTable();
  v276 = v168;
  v277 = MEMORY[0x277CDF690];
  v207 = v52;
  v64 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v169 = v64;
  v274 = v64;
  v275 = v65;
  v205 = v54;
  v66 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v170 = v66;
  v272 = v66;
  v273 = v67;
  v68 = swift_getWitnessTable();
  v69 = sub_23B9878FC(&qword_27E197F30, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  v264 = v56;
  v70 = v246;
  v265 = v246;
  v266 = v68;
  v267 = v69;
  v71 = swift_getOpaqueTypeMetadata2();
  v173 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v172 = &v157 - v72;
  v164 = swift_getWitnessTable();
  sub_23BBDB058();
  v174 = v71;
  v73 = sub_23BBDA358();
  v185 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v182 = &v157 - v74;
  v75 = sub_23BBDA358();
  v188 = v75[-1].Description;
  MEMORY[0x28223BE20](v75);
  v183 = &v157 - v76;
  v201 = v56;
  v264 = v56;
  v265 = v70;
  v171 = v68;
  v266 = v68;
  v166 = v69;
  v267 = v69;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = swift_getWitnessTable();
  v162 = v77;
  v270 = v77;
  v271 = v78;
  v187 = v73;
  v167 = swift_getWitnessTable();
  v268 = v167;
  v269 = MEMORY[0x277CDFC60];
  v79 = swift_getWitnessTable();
  v190 = v75;
  v264 = v75;
  v177 = v79;
  v265 = v79;
  v80 = swift_getOpaqueTypeMetadata2();
  v180 = *(v80 - 8);
  v181 = v80;
  MEMORY[0x28223BE20](v80);
  v175 = &v157 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v176 = &v157 - v83;
  v238 = *(v256 - 8);
  MEMORY[0x28223BE20](v84);
  v237 = &v157 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v254 = &v157 - v87;
  v88 = v243;
  v89 = v250;
  sub_23B97E4BC(v243, &v157 - v87);
  LODWORD(v50) = *(v89 + *(v88 + 60));
  KeyPath = swift_getKeyPath();
  v160 = v50;
  LOBYTE(v264) = v50;
  v265 = KeyPath;
  LOBYTE(v266) = 0;
  v91 = v193;
  MEMORY[0x23EEB43C0](&v264, v179, &type metadata for PlatterInnerPadding, v178);

  sub_23B97C440(v88, &v264);
  v92 = __swift_project_boxed_opaque_existential_1(&v264, v267);
  v93 = MEMORY[0x28223BE20](v92);
  (*(v95 + 16))(&v157 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0), v93);
  v263 = sub_23BBD9DF8();
  v96 = v189;
  sub_23BBDB6C8();

  (*(v215 + 8))(v91, v96);
  __swift_destroy_boxed_opaque_existential_1(&v264);
  v97 = v219;
  v98 = v217;
  (*(v219 + 16))(v217, v89, v88);
  v99 = (*(v97 + 80) + 48) & ~*(v97 + 80);
  v100 = swift_allocObject();
  v101 = v252;
  v102 = v253;
  *(v100 + 2) = v252;
  *(v100 + 3) = v102;
  v103 = v249;
  v104 = v248;
  *(v100 + 4) = v249;
  *(v100 + 5) = v104;
  (*(v97 + 32))(&v100[v99], v98, v88);
  v257 = v101;
  v258 = v102;
  v259 = v103;
  v260 = v104;
  v105 = v250;
  v261 = v250;
  v262 = v254;
  swift_checkMetadataState();
  v106 = v186;
  v107 = v240;
  v108 = v245;
  sub_23BBDB7B8();

  Description[1](v108, v107);
  LOBYTE(v264) = sub_23B97CFA4(v88);
  sub_23B97D178(v88);
  v109 = v221;
  sub_23BBDBF38();
  v110 = OpaqueTypeMetadata2;
  v111 = v194;
  sub_23BBDBB98();
  (*(v222 + 8))(v109, v111);
  (*(v206 + 8))(v106, v110);
  v112 = *(v238 + 16);
  v113 = v237;
  v245 = (v238 + 16);
  v242 = v112;
  v112();
  v114 = 0;
  if (*(v105 + *(v88 + 60)) != 2)
  {
    v114 = *(v105 + *(v88 + 64));
  }

  v115 = v224;
  sub_23B980E10(v113, v160, v114, v256, v255, v224);
  v117 = v212;
  v116 = v213;
  v118 = v251;
  v119 = v244;
  MEMORY[0x23EEB43C0](v115, v213, v251, v163);
  (*(v225 + 8))(v115, v118);
  v120 = (*(v211 + 8))(v119, v116);
  v121 = MEMORY[0x28223BE20](v120);
  v122 = v216;
  sub_23B9C2924(v121);
  v123 = v203;
  sub_23BBDB6B8();
  (*(v214 + 8))(v117, v122);
  sub_23B97EAA8(v88);
  sub_23BBDC438();
  v124 = v198;
  v125 = v209;
  sub_23BBDB7A8();
  (*(v208 + 8))(v123, v125);
  v126 = v197;
  v127 = v254;
  v128 = v207;
  v129 = v256;
  sub_23BBDB7E8();
  (*(v204 + 8))(v124, v128);
  v130 = v226;
  sub_23BBDA518();
  v131 = v196;
  v132 = v205;
  sub_23BBDB7F8();
  (*(v227 + 8))(v130, v228);
  (*(v200 + 8))(v126, v132);
  v133 = v229;
  sub_23BBDA568();
  v134 = v172;
  v135 = v201;
  v136 = v246;
  sub_23BBDB758();
  (*(v230 + 8))(v133, v136);
  (v199)[1](v131, v135);
  v137 = v237;
  v242(v237, v127, v129);
  v138 = v231;
  sub_23B97E1B4(v137, v252, v253, v249, v248, v231);
  v139 = v182;
  v140 = v174;
  v141 = v247;
  sub_23BBDB848();
  (*(v232 + 8))(v138, v141);
  (*(v173 + 8))(v134, v140);
  v143 = v250 + *(v243 + 23);
  v144 = *v143;
  if (*(v143 + 8) != 1)
  {

    sub_23BBDD5A8();
    v145 = sub_23BBDB338();
    sub_23BBD9978();

    v146 = v157;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v144, 0);
    (*(v158 + 8))(v146, v159);
  }

  v156 = v187;
  sub_23B9C2924(v142);
  v147 = v183;
  sub_23BBDBB18();
  (*(v185 + 8))(v139, v156);
  sub_23B985698();
  v148 = v233;
  sub_23BBDAFA8();
  v149 = v175;
  v150 = v190;
  v151 = v177;
  sub_23BBDB878();
  (*(v234 + 8))(v148, v235);
  v188[1](v147, v150);
  v264 = v150;
  v265 = v151;
  swift_getOpaqueTypeConformance2();
  v152 = v176;
  v153 = v181;
  sub_23B9D2D88();
  v154 = *(v180 + 8);
  v154(v149, v153);
  sub_23B9D2D88();
  v154(v152, v153);
  return (*(v238 + 8))(v254, v256);
}

uint64_t sub_23B9808A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v14 = a1 + *(type metadata accessor for PlatterStyleModifier(0, v18) + 84);
  v15 = *v14;
  LOBYTE(a4) = *(v14 + 8);

  if ((a4 & 1) == 0)
  {
    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v15);
    (*(v11 + 8))(v13, v10);
    return v18[0];
  }

  return v15;
}

uint64_t sub_23B980A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v33 = a2;
  v34 = a1;
  v35 = a7;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v11 = type metadata accessor for PlatterStyleModifier.PlatterShape(255, &v38);
  WitnessTable = swift_getWitnessTable();
  v30[2] = WitnessTable;
  v13 = sub_23BBD9FF8();
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v31 = v30 - v14;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v15 = type metadata accessor for PlatterStyleModifier(255, &v38);
  swift_getWitnessTable();
  sub_23BBDAE98();
  sub_23BBDA358();
  v38 = MEMORY[0x277CDF6A8];
  v39 = v11;
  v40 = MEMORY[0x277CDF6A0];
  v41 = WitnessTable;
  sub_23BBDB0C8();
  sub_23BBDA358();
  sub_23BBDAF38();
  v30[0] = v13;
  v16 = swift_getWitnessTable();
  v38 = MEMORY[0x277CE0F78];
  v39 = v13;
  v40 = MEMORY[0x277CE0F60];
  v41 = v16;
  v30[1] = sub_23BBDAE78();
  v17 = sub_23BBDA358();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v30 - v22;
  v38 = sub_23B97CC9C(v15);
  sub_23B97CE44(v15);
  v24 = v31;
  sub_23BBDBF38();
  v25 = swift_getWitnessTable();
  v26 = v30[0];
  sub_23BBDBB98();
  (*(v32 + 8))(v24, v26);

  v27 = swift_getWitnessTable();
  v36 = v25;
  v37 = v27;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v28 = *(v18 + 8);
  v28(v20, v17);
  sub_23B9D2D88();
  return (v28)(v23, v17);
}

uint64_t sub_23B980E10@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for FillBlendLayerModifier(0, a4, a5, v11);
  *(a6 + v12[9]) = a2;
  *(a6 + v12[10]) = a3;
  v13 = a6 + v12[11];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_23B980EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a2;
  v40 = a1;
  v42 = a7;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v11 = type metadata accessor for PlatterStyleModifier.PlatterShape(0, &v44);
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34 = &v34 - v12;
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for ProminentPlatterShadow(0, v11, WitnessTable, v13);
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = &v34 - v18;
  v19 = sub_23BBDD648();
  v41 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v25 = type metadata accessor for PlatterStyleModifier(0, &v44);
  v26 = v40;
  if (sub_23B97D318(v25))
  {
    v27 = v34;
    (*(v36 + 16))(v34, v38, v11);
    v28 = sub_23B97E92C(v25);
    sub_23B9812FC(v27, *(v26 + *(v25 + 56)), *(v26 + *(v25 + 60)), v11, WitnessTable, v16, v28);
    swift_getWitnessTable();
    v29 = v37;
    sub_23B9D2D88();
    v30 = v39;
    v31 = *(v39 + 8);
    v31(v16, v14);
    sub_23B9D2D88();
    v31(v29, v14);
    (*(v30 + 32))(v21, v16, v14);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v14);
    swift_getWitnessTable();
  }

  sub_23BB2F9F4(v21, v14);
  v32 = *(v41 + 8);
  v32(v21, v19);
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v32)(v24, v19);
}

uint64_t sub_23B9812FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v14 = type metadata accessor for ProminentPlatterShadow(0, a4, a5, v13);
  *(a6 + v14[9]) = a7;
  *(a6 + v14[10]) = a2;
  *(a6 + v14[11]) = a3;
  v15 = v14[12];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  swift_storeEnumTagMultiPayload();
  v16 = a6 + v14[13];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a6 + v14[14];
  result = swift_getKeyPath();
  *v17 = result;
  *(v17 + 8) = 0;
  return result;
}

uint64_t sub_23B981420@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v34[0] = a10;
  v34[1] = a11;
  v34[2] = a12;
  v34[3] = a13;
  v19 = type metadata accessor for PlatterStyleModifier(0, v34);
  *(a9 + v19[13]) = a2;
  *(a9 + v19[14]) = a3;
  *(a9 + v19[15]) = a4;
  *(a9 + v19[16]) = a5;
  v20 = v19[17];
  v21 = sub_23BBDD648();
  (*(*(v21 - 8) + 32))(a9 + v20, a6, v21);
  v22 = a9 + v19[18];
  *v22 = a7;
  *(v22 + 8) = a8 & 1;
  v23 = a9 + v19[19];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v19[20];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  swift_storeEnumTagMultiPayload();
  v25 = a9 + v19[21];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a9 + v19[22];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a9 + v19[23];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = a9 + v19[24];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v29 = a9 + v19[25];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  v30 = a9 + v19[26];
  result = swift_getKeyPath();
  *v30 = result;
  *(v30 + 8) = 0;
  return result;
}

uint64_t sub_23B981658(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return sub_23BBDC448();
    }
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v11[15] != 1)
    {
      return sub_23BBDC448();
    }
  }

  return sub_23BBDC458();
}

uint64_t sub_23B9817C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v2 = *(a1 + 16);
  v30 = *(a1 + 24);
  sub_23BBD9C28();
  v3 = sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  v52 = MEMORY[0x277CDF760];
  v4 = MEMORY[0x277CDFAD8];
  v32 = swift_getWitnessTable();
  type metadata accessor for PositionReader(255, v3, v32, v5);
  sub_23BBDACE8();
  v25 = sub_23BBDBE28();
  v34 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v31 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198188, &unk_23BBECC80);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198190, &qword_23BBE4EE0);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC098();
  sub_23BBDA358();
  sub_23BBDA358();
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CE0688];
  v29 = v4;
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CE06B0];
  v26 = swift_getWitnessTable();
  v27 = sub_23BBDADF8();
  v7 = sub_23BBDA358();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = v2;
  v14 = v30;
  v39 = v2;
  v40 = v30;
  v15 = v33;
  v41 = v33;
  v45 = swift_getWitnessTable();
  v46 = v32;
  v16 = swift_getWitnessTable();
  v17 = v31;
  sub_23BBDBE18();
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v44 = v16;
  v18 = v25;
  v19 = swift_getWitnessTable();
  sub_23B9C2924(v20);
  sub_23BBDBAD8();
  (*(v34 + 8))(v17, v18);
  v21 = swift_getWitnessTable();
  v42 = v19;
  v43 = v21;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v22 = *(v28 + 8);
  v22(v9, v7);
  sub_23B9D2D88();
  return (v22)(v12, v7);
}

uint64_t sub_23B981D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  sub_23BBD9C28();
  v7 = sub_23BBDA358();
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v55 - v10;
  v67 = a2;
  v68 = a3;
  v12 = type metadata accessor for ProminentPlatterShadow(0, a2, a3, v11);
  v63 = *(v12 - 8);
  v60 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v55 - v13;
  v14 = sub_23BBDAD18();
  MEMORY[0x28223BE20](v14 - 8);
  v59 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v77 = MEMORY[0x277CDF760];
  v16 = swift_getWitnessTable();
  v18 = type metadata accessor for PositionReader(0, v7, v16, v17);
  v62 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v58 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v57 = &v55 - v21;
  v22 = sub_23BBDA928();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23BBDACE8();
  v72 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v70 = v12;
  v71 = &v55 - v27;
  v28 = a1 + *(v12 + 52);
  v29 = *v28;
  if (*(v28 + 8) != 1)
  {

    sub_23BBDD5A8();
    v56 = v22;
    v35 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v29, 0);
    (*(v23 + 8))(v25, v56);
    if (v75 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v36 = v59;
    sub_23BBDAF98();
    v37 = v70;
    sub_23B981658(v70);
    v39 = v38;
    v41 = v40;
    sub_23B981658(v37);
    v43 = v42;
    v45 = v44;
    v46 = v63;
    v47 = v61;
    (*(v63 + 16))(v61, a1, v37);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v49 = swift_allocObject();
    v50 = v68;
    *(v49 + 16) = v67;
    *(v49 + 24) = v50;
    (*(v46 + 32))(v49 + v48, v47, v37);
    v51 = v58;
    sub_23BAD87F0(v36, sub_23B9877A0, v49, v7, v16, v58, v39, v41, v43, v45);
    swift_getWitnessTable();
    v52 = v57;
    sub_23B9D2D88();
    v53 = *(v62 + 8);
    v53(v51, v18);
    sub_23B9D2D88();
    v34 = v71;
    sub_23BA82D64();
    v53(v51, v18);
    v53(v52, v18);
    goto LABEL_8;
  }

  if (v29)
  {
    goto LABEL_7;
  }

LABEL_3:
  v30 = 0.2;
  if (!*(a1 + *(v70 + 40)))
  {
    v30 = 0.0;
  }

  v31 = v65;
  sub_23B982708(v70, v65, *(a1 + *(v70 + 36)) - v30);
  v32 = v64;
  sub_23B9D2D88();
  v33 = *(v66 + 8);
  v33(v31, v7);
  sub_23B9D2D88();
  swift_getWitnessTable();
  v34 = v71;
  sub_23BA82E14();
  v33(v31, v7);
  v33(v32, v7);
LABEL_8:
  v73 = swift_getWitnessTable();
  v74 = v16;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v72 + 8))(v34, v26);
}

uint64_t sub_23B9824FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23BBD9C28();
  v7 = sub_23BBDA358();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  sub_23BAD8734();
  v16 = 1.0;
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  if (v15 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = type metadata accessor for ProminentPlatterShadow(0, a3, a4, v14);
  v19 = 0.1;
  if (!*(a2 + *(v18 + 40)))
  {
    v19 = 0.0;
  }

  sub_23B982708(v18, v10, v17 - v19);
  v22[0] = swift_getWitnessTable();
  v22[1] = MEMORY[0x277CDF760];
  swift_getWitnessTable();
  sub_23B9D2D88();
  v20 = *(v8 + 8);
  v20(v10, v7);
  sub_23B9D2D88();
  return (v20)(v13, v7);
}

uint64_t sub_23B982708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v22[1] = a2;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_23BBD9C28();
  v22[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v11 = sub_23BBDA358();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  sub_23BBDC438();
  sub_23BBDBF28();
  v23[0] = *(v3 + *(a1 + 44));
  v24 = a3;
  type metadata accessor for ProminentPlatterShadow.ShadowColor(0, v6, v7, v18);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BBDBDE8();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBB58();

  (*(v22[0] + 8))(v10, v8);
  v22[2] = WitnessTable;
  v22[3] = MEMORY[0x277CDF760];
  swift_getWitnessTable();
  sub_23B9D2D88();
  v20 = *(v12 + 8);
  v20(v14, v11);
  sub_23B9D2D88();
  return (v20)(v17, v11);
}

uint64_t sub_23B982A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a3;
  v24 = a2;
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198188, &unk_23BBECC80);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198190, &qword_23BBE4EE0);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v4 = sub_23BBDC098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = sub_23BBDA358();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_23BBDA358();
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  v28 = v24;
  v29 = v26;
  v30 = v25;
  sub_23B9C2924(v15);
  sub_23BBDC088();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB8B8();
  (*(v5 + 8))(v7, v4);
  v33 = WitnessTable;
  v34 = MEMORY[0x277CE0688];
  v19 = swift_getWitnessTable();
  sub_23BBDB8C8();
  (*(v22 + 8))(v10, v8);
  v31 = v19;
  v32 = MEMORY[0x277CE06B0];
  swift_getWitnessTable();
  sub_23B9D2D88();
  v20 = *(v23 + 8);
  v20(v13, v11);
  sub_23B9D2D88();
  return (v20)(v17, v11);
}

uint64_t sub_23B982E40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  v4 = sub_23BBDA358();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198188, &unk_23BBECC80);
  v8 = sub_23BBDA358();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32[0] = v32 - v13;
  v14 = *(a2 + 16);
  sub_23BBDBB68();
  *&v34 = sub_23BBDBD18();
  v15 = sub_23B97B518(&qword_27E198198, &qword_27E198180, &unk_23BBE4ED0, MEMORY[0x277CE04A0]);
  v39[4] = v14;
  v39[5] = v15;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB8A8();

  (*(v5 + 8))(v7, v4);
  v17 = sub_23B97B518(&qword_27E1981A0, &qword_27E198188, &unk_23BBECC80, MEMORY[0x277CE0740]);
  v39[2] = WitnessTable;
  v39[3] = v17;
  v18 = swift_getWitnessTable();
  v19 = v32[0];
  sub_23B9D2D88();
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_23BBDC438();
  v22 = v21;
  v24 = v23;
  v25 = sub_23BBDBD38();
  (*(v9 + 16))(v11, v19, v8);
  __asm { FMOV            V0.2D, #2.0 }

  v34 = _Q0;
  v35 = v22;
  v36 = v24;
  v37 = v25;
  v38 = 0xBFF0000000000000;
  v39[0] = v11;
  v39[1] = &v34;

  v33[0] = v8;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198190, &qword_23BBE4EE0);
  v32[2] = v18;
  v32[3] = sub_23B9874B8();
  sub_23BB6739C(v39, 2, v33);

  v20(v19, v8);

  return (v20)(v11, v8);
}

float sub_23B9831F4(uint64_t a1, char a2, double a3)
{
  if (!a2)
  {
    sub_23BBDBD08();
    sub_23BBDBD58();

    sub_23BBDBD18();
    sub_23BBDBD58();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270, &unk_23BBE65E0);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270, &unk_23BBE65E0, &unk_23BBEAA18);
    sub_23BBDBDE8();
LABEL_6:
    sub_23BBDBD78();
    v4 = v5;
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    sub_23BBDBD28();
    goto LABEL_6;
  }

  sub_23BBDBD18();
  sub_23BBDBD58();

  sub_23BBDBD78();
  v4 = v3;
LABEL_7:

  return v4;
}

uint64_t sub_23B9833B8(double a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x23EEB63A0](a3);
  v4 = 0.0;
  if (a1 != 0.0)
  {
    v4 = a1;
  }

  return MEMORY[0x23EEB63C0](*&v4);
}

uint64_t sub_23B983400(unsigned __int8 a1, double a2)
{
  sub_23BBDDBB8();
  sub_23B9833B8(a2, v5, a1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B983490(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23B9833B8(*(v1 + 8), v3, *v1);
  return sub_23BBDDBF8();
}

void sub_23B9834FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23B9831F4(a1, *v2, *(v2 + 8));
  *(a2 + 4) = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
}

uint64_t sub_23B98355C@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + a1[10]) != 1)
  {
    goto LABEL_6;
  }

  v10 = v2 + a1[11];
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v11, 0);
    (*(v6 + 8))(v9, v5);
    if (v16[15] != 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v13 = MEMORY[0x277CE0F60];
    v14 = MEMORY[0x277CE0F78];
    result = sub_23BBDBD28();
    goto LABEL_7;
  }

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_4:
  result = sub_23BAC69A0(*(v2 + a1[9]), v7);
  v13 = MEMORY[0x277CDF6A0];
  v14 = MEMORY[0x277CDF6A8];
LABEL_7:
  a2[3] = v14;
  a2[4] = v13;
  *a2 = result;
  return result;
}

uint64_t sub_23B983718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[2] = a1;
  v20[3] = a3;
  swift_getWitnessTable();
  sub_23BBDAE98();
  v4 = *(a2 + 24);
  v20[0] = *(a2 + 16);
  v21[0] = MEMORY[0x277CDF6A8];
  v21[1] = v20[0];
  v21[2] = MEMORY[0x277CDF6A0];
  v22 = v4;
  v20[1] = sub_23BBDB0C8();
  v5 = sub_23BBDA358();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  sub_23B98355C(a2, v21);
  v12 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v13 = MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v20[6] = sub_23BBD9DF8();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB6C8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v17 = swift_getWitnessTable();
  v20[4] = WitnessTable;
  v20[5] = v17;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v18 = *(v6 + 8);
  v18(v8, v5);
  sub_23B9D2D88();
  return (v18)(v11, v5);
}

uint64_t sub_23B983A24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    sub_23BBDD5A8();
    v14 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a3, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a3) = v23[15];
  }

  if (a2 == 2)
  {
    v15 = 0x4030000000000000;
  }

  else
  {
    v15 = 0x4028000000000000;
  }

  v16 = (a3 & 1) == 0;
  if (a3)
  {
    v17 = 0x4028000000000000;
  }

  else
  {
    v17 = v15;
  }

  if (v16)
  {
    v18 = 0x4030000000000000;
  }

  else
  {
    v18 = 0x4028000000000000;
  }

  v19 = sub_23BBDB398();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198170, &qword_23BBE4EC0);
  (*(*(v20 - 8) + 16))(a5, a1, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198178, &qword_23BBE4EC8);
  v22 = a5 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v17;
  *(v22 + 16) = v18;
  *(v22 + 24) = v17;
  *(v22 + 32) = v18;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_23B983C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v47 = a7;
  v39 = a8;
  v40 = a3;
  v44 = a6;
  v45 = a5;
  v41 = a4;
  v37 = a1;
  v38 = a2;
  v46 = a9;
  v35 = a14;
  v42 = a13;
  v43 = a10;
  v36 = sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  OUTLINED_FUNCTION_3_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v48[0] = a11;
  v48[1] = a12;
  v48[2] = a14;
  v48[3] = a15;
  v26 = type metadata accessor for PlatterStyleModifier(0, v48);
  OUTLINED_FUNCTION_3_2();
  v28 = v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v34 - v31;
  (*(v21 + 16))(v25, v37, a11, v30);
  (*(v16 + 16))(v19, v38, v36);
  sub_23B981420(v25, v40, v41, v44, v45, v19, v47, v39 & 1, v32, a11, a12, v35, a15);
  MEMORY[0x23EEB43C0](v32, v43, v26, v42);
  return (*(v28 + 8))(v32, v26);
}

uint64_t sub_23B983E90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a2;
  v76 = sub_23BBDA928();
  OUTLINED_FUNCTION_3_2();
  v87 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  OUTLINED_FUNCTION_3_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = sub_23BBDB068();
  OUTLINED_FUNCTION_3_2();
  v81 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  v23 = *(a1 + 24);
  *&v97 = v10;
  *(&v97 + 1) = &type metadata for OpenAnyShape;
  v75 = v23;
  *&v98 = v23;
  *(&v98 + 1) = sub_23B984600();
  v74 = *(&v98 + 1);
  v84 = v17;
  v77 = type metadata accessor for PlatterStyleModifier(255, &v97);
  v24 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v82 = v25;
  MEMORY[0x28223BE20](v26);
  v78 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v79 = &v72 - v29;
  v80 = v22;
  sub_23BBDB078();
  v85 = v12;
  v30 = *(v12 + 16);
  v83 = v16;
  v30(v16, v3, v10);
  sub_23B9B6FAC();
  sub_23B98466C(&v95, &v93);
  if (v94)
  {
    sub_23B98473C(&v93, v88);
    v31 = v89;
    v32 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v33);
    OUTLINED_FUNCTION_3_1();
    v36 = v35 - v34;
    (*(v37 + 16))(v35 - v34);
    sub_23BB23808(v36, v31, v32, &v97);
    sub_23B9846E8(&v95, &qword_27E197E28, &unk_23BC030E0);
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    sub_23B9846E8(&v95, &qword_27E197E28, &unk_23BC030E0);
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
  }

  v73 = *(v3 + *(a1 + 36));
  v72 = sub_23BBDB088();
  v38 = v3 + *(a1 + 48);
  v39 = *v38;
  v40 = v76;
  if (*(v38 + 8) != 1)
  {

    sub_23BBDD5A8();
    v41 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v39, 0);
    v42 = OUTLINED_FUNCTION_20_0();
    v43(v42);
    LOBYTE(v39) = v95;
  }

  v44 = v3 + *(a1 + 52);
  v45 = *v44;
  if (*(v44 + 8) != 1)
  {

    sub_23BBDD5A8();
    v46 = sub_23BBDB338();
    OUTLINED_FUNCTION_22_0(v46, &dword_23B970000, v47, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v48, v49, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v45, 0);
    v50 = OUTLINED_FUNCTION_20_0();
    v51(v50);
    LODWORD(v45) = v95;
  }

  v52 = v3 + *(a1 + 44);
  v53 = *v52;
  v54 = *(v52 + 8);
  if (*(v52 + 9) != 1)
  {

    sub_23BBDD5A8();
    v55 = sub_23BBDB338();
    OUTLINED_FUNCTION_22_0(v55, &dword_23B970000, v56, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v57, v58, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9846DC(v53, v54, 0);
    (*(v87 + 8))(v9, v40);
    v53 = v95;
    LOBYTE(v54) = v96;
  }

  OUTLINED_FUNCTION_7_1();
  v61 = sub_23B9878FC(v59, v60, MEMORY[0x277CDE270]);
  v62 = v84;
  v63 = v39 & 1;
  v64 = v54 & 1;
  v65 = v78;
  v66 = v83;
  v67 = v80;
  sub_23B983C34(v83, &v97, v73, v72 & 1, v63, v45, v53, v64, v78, v84, v10, &type metadata for OpenAnyShape, v61, v75, v74);
  sub_23B9846E8(&v97, &qword_27E197E60, &qword_23BBE47D0);
  (*(v85 + 8))(v66, v10);
  (*(v81 + 8))(v67, v62);
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v91 = v61;
  v92 = WitnessTable;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  v69 = v79;
  sub_23B9D2D88();
  v70 = *(v82 + 8);
  v70(v65, v24);
  sub_23B9D2D88();
  return (v70)(v69, v24);
}

unint64_t sub_23B984600()
{
  result = qword_27E197E50;
  if (!qword_27E197E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197E50);
  }

  return result;
}

uint64_t sub_23B98466C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197E28, &unk_23BC030E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9846DC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_23B9846E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B98473C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_23B9847F4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B995898();
  *v0 = result;
  return result;
}

uint64_t sub_23B98481C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B995898();
  *v0 = result;
  return result;
}

uint64_t sub_23B984844()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC7244();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B98486C()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC727C();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B984898()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC720C();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9848C0()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23B99539C();
  return OUTLINED_FUNCTION_15_1(v0);
}

void sub_23B9848F0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23BBDD648();
    if (v2 <= 0x3F)
    {
      sub_23B9850E8(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23B985190(319, &qword_27E197EF8, &qword_27E197F00, &qword_23BBE4948);
        if (v5 <= 0x3F)
        {
          sub_23B985138(319, v4);
          if (v6 <= 0x3F)
          {
            sub_23B985190(319, &qword_27E197F10, &qword_27E197F18, qword_23BBE4950);
            if (v7 <= 0x3F)
            {
              sub_23B9850E8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B984A94(unsigned __int8 *a1, unsigned int a2, uint64_t a3, double a4)
{
  v32 = *(a3 + 16);
  v5 = *(v32 - 8);
  v6 = *(v5 + 84);
  v31 = *(a3 + 24);
  v7 = *(v31 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_23BBD9BF8() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  v16 = 23;
  if (!v8)
  {
    v16 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v17 = *(v12 + 80) & 0xF8 | 7;
    v18 = ((v13 + ((((v16 + *(v7 + 64) + ((v15 + v14 + 4) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + v17 + 9) & ~v17) + 88) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v18 <= 3)
    {
      v19 = ((a2 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = a1[v18];
        if (!a1[v18])
        {
          break;
        }

        goto LABEL_31;
      case 2:
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_31;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B984D84);
      case 4:
        v22 = *&a1[v18];
        if (!v22)
        {
          break;
        }

LABEL_31:
        v23 = v18 > 3;
        if (v18 <= 3)
        {
          v24 = (v22 - 1) << (8 * v18);
        }

        else
        {
          v24 = 0;
        }

        if (v23)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }

        v28 = v11 + (v29 | v24);
        return (v28 + 1);
      default:
        break;
    }
  }

  if (v6 == v11)
  {

    return __swift_getEnumTagSinglePayload(a1, v6, v32);
  }

  v26 = &a1[v14];
  if (v10 > 0xFE)
  {
    if (v8 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v26[v15 + 4] & ~v15, v8, v31);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = *v26;
  if (v27 < 2)
  {
    return 0;
  }

  v28 = (v27 + 2147483646) & 0x7FFFFFFF;
  return (v28 + 1);
}

void sub_23B984D98(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4, double a5)
{
  v31 = *(a4 + 24);
  v32 = *(a4 + 16);
  v6 = *(v32 - 8);
  v7 = *(v6 + 84);
  v8 = *(v31 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  if (v11 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v11;
  }

  v13 = sub_23BBD9BF8();
  v14 = v9;
  v15 = 0;
  v16 = *(v13 - 8);
  if (*(v16 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v16 + 64);
  }

  v18 = *(v6 + 64);
  v19 = *(v8 + 80);
  v20 = *(v8 + 64);
  if (!v14)
  {
    ++v20;
  }

  v21 = *(v16 + 80) & 0xF8 | 7;
  v22 = ((v17 + ((((v20 + ((v19 + v18 + 4) & ~v19) + 23) & 0xFFFFFFFFFFFFFFF8) + v21 + 9) & ~v21) + 88) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 < a3)
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v15 = v24;
    }

    else
    {
      v15 = 0;
    }
  }

  v25 = a2;
  if (v12 < a2)
  {
    v26 = ~v12 + a2;
    bzero(a1, v22);
    if (v22 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v22 > 3)
    {
      *a1 = v26;
    }

    else
    {
      *a1 = v26;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v22) = v27;
        return;
      case 2:
        *(a1 + v22) = v27;
        return;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v22) = v27;
        return;
      default:
        return;
    }
  }

  v28 = a1;
  switch(v15)
  {
    case 1:
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 2:
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 3:
LABEL_54:
      __break(1u);
      JUMPOUT(0x23B9850C0);
    case 4:
      *(a1 + v22) = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (!a2)
      {
        return;
      }

LABEL_40:
      if (v7 == v12)
      {
        v14 = v7;
        v29 = v32;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v28, v25, v14, v29);
        return;
      }

      v30 = a1 + v18;
      if (v11 <= 0xFE)
      {
        *v30 = a2 + 1;
        return;
      }

      if (v14 >= 2)
      {
        v28 = (&v30[v19 + 4] & ~v19);
        v25 = a2 + 1;
        v29 = v31;
        goto LABEL_42;
      }

      return;
  }
}

void sub_23B9850E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23B985138(uint64_t a1, double a2)
{
  if (!qword_27E197F08)
  {
    sub_23BBD9BF8();
    v2 = sub_23BBD9C18();
    if (!v3)
    {
      atomic_store(v2, &qword_27E197F08);
    }
  }
}

void sub_23B985190(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23BBD9C18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23B9851E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23BBDB068();
  v6[0] = v1;
  v6[1] = &type metadata for OpenAnyShape;
  v6[2] = v2;
  v6[3] = sub_23B984600();
  type metadata accessor for PlatterStyleModifier(255, v6);
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_7_1();
  sub_23B9878FC(v3, v4, MEMORY[0x277CDE270]);
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23B9852FC()
{
  result = qword_27E197F20;
  if (!qword_27E197F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F20);
  }

  return result;
}

unint64_t sub_23B985350()
{
  result = qword_27E197F28;
  if (!qword_27E197F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F28);
  }

  return result;
}

uint64_t sub_23B9853BC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC6A90();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9853E4()
{
  v3 = *(v1 + 40);
  v25 = *(v1 + 16);
  v2 = v25;
  v26 = *(v1 + 24);
  v24 = v26;
  v27 = v3;
  type metadata accessor for PlatterStyleModifier(0, &v25);
  OUTLINED_FUNCTION_19_0();
  v5 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  OUTLINED_FUNCTION_16_0();
  (*(v6 + 8))(v5, v2);
  v7 = v0[17];
  if (!__swift_getEnumTagSinglePayload(v5 + v7, 1, v24))
  {
    OUTLINED_FUNCTION_16_0();
    (*(v8 + 8))(v5 + v7, v24);
  }

  v9 = OUTLINED_FUNCTION_2_1(v0[19]);
  j__swift_release(v9);
  v10 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9BF8();
    OUTLINED_FUNCTION_12_1();
    (*(v11 + 8))(v5 + v10);
  }

  else
  {
  }

  v12 = OUTLINED_FUNCTION_2_1(v0[21]);
  j__swift_release(v12);
  v13 = OUTLINED_FUNCTION_2_1(v0[22]);
  sub_23B97B450(v13, v14);
  v15 = OUTLINED_FUNCTION_2_1(v0[23]);
  sub_23B97B450(v15, v16);
  v17 = OUTLINED_FUNCTION_2_1(v0[24]);
  sub_23B97B450(v17, v18);
  v19 = OUTLINED_FUNCTION_2_1(v0[25]);
  sub_23B97B450(v19, v20);
  v21 = OUTLINED_FUNCTION_2_1(v0[26]);
  sub_23B97B450(v21, v22);
  return swift_deallocObject();
}

uint64_t sub_23B9855CC(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for PlatterStyleModifier(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_23B980854(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_23B985698()
{
  result = qword_27E197F38;
  if (!qword_27E197F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F38);
  }

  return result;
}

uint64_t sub_23B9856EC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23B9953EC();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_23B985784()
{
  result = qword_27E197F50[0];
  if (!qword_27E197F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E197F50);
  }

  return result;
}

uint64_t sub_23B9857E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for PlatterStyleModifier.PlatterShape(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B985860(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDAA88() - 8);
  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (v7 <= ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64))
  {
    v7 = ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_22:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 255;
}

void sub_23B985A14(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDAA88() - 8);
  v9 = ((*(v8 + 80) + 16) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(*(a4 + 24) - 8);
  if (*(v10 + 64) > v9)
  {
    v9 = *(v10 + 64);
  }

  v11 = v9 + 1;
  v12 = 8 * (v9 + 1);
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v9 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23B985C38);
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v11] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = 0;
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
          a1[v9] = -a2;
        }

        break;
    }
  }
}

void sub_23B985C68(uint64_t a1)
{
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23B985138(319, v1);
    if (v3 <= 0x3F)
    {
      sub_23B9850E8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B985D48(unsigned __int8 *a1, unsigned int a2, uint64_t a3, double a4)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_23BBD9BF8() - 8);
  v11 = 8;
  if (*(v10 + 64) > 8uLL)
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v9 < a2)
  {
    v13 = *(v10 + 80) & 0xF8 | 7;
    v14 = ((v11 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 10) & ~v13) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v14 <= 3)
    {
      v15 = ((a2 - v9 + 255) >> 8) + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v18 = a1[v14];
        if (!a1[v14])
        {
          break;
        }

        goto LABEL_23;
      case 2:
        v18 = *&a1[v14];
        if (*&a1[v14])
        {
          goto LABEL_23;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B985F78);
      case 4:
        v18 = *&a1[v14];
        if (!v18)
        {
          break;
        }

LABEL_23:
        v19 = v14 > 3;
        if (v14 <= 3)
        {
          v20 = (v18 - 1) << (8 * v14);
        }

        else
        {
          v20 = 0;
        }

        if (v19)
        {
          v24 = *a1;
        }

        else
        {
          v24 = *a1;
        }

        v23 = v9 + (v24 | v20);
        return (v23 + 1);
      default:
        break;
    }
  }

  if (v8 >= 0xFE)
  {

    return __swift_getEnumTagSinglePayload(a1, v8, v6);
  }

  v22 = *((&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v22 < 2)
  {
    return 0;
  }

  v23 = (v22 + 2147483646) & 0x7FFFFFFF;
  return (v23 + 1);
}

void sub_23B985F8C(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4, double a5)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_23BBD9BF8() - 8);
  v13 = 8;
  if (*(v12 + 64) > 8uLL)
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v9 + 64);
  v15 = *(v12 + 80) & 0xF8 | 7;
  v16 = ((v13 + ((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 10) & ~v15) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v11 < a2)
  {
    v20 = ~v11 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v16 > 3)
    {
      *a1 = v20;
    }

    else
    {
      *a1 = v20;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v21;
        return;
      case 2:
        *(a1 + v16) = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v16) = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23B986200);
    case 4:
      *(a1 + v16) = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v10 < 0xFE)
        {
          *(((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v10, v8);
        }
      }

      return;
  }
}

void sub_23B986230(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23B9850E8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B9862EC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 9) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_21;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_21;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B986438);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *a1;
        }

        else
        {
          v14 = 0;
          v15 = *a1;
        }

        v18 = v7 + (v15 | v14);
        return (v18 + 1);
      default:
        break;
    }
  }

  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = a1[v6 + 1];
  if (v17 < 2)
  {
    return 0;
  }

  v18 = (v17 + 2147483646) & 0x7FFFFFFF;
  return (v18 + 1);
}

void sub_23B98644C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_41:
      __break(1u);
      JUMPOUT(0x23B986630);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0xFE)
        {
          a1[v9 + 1] = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23B986658(uint64_t a1, double a2)
{
  result = sub_23BBDA468();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B9866D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDAA88() - 8);
  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (v7 <= ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64))
  {
    v7 = ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_22:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 255;
}

void sub_23B986884(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDAA88() - 8);
  v9 = ((*(v8 + 80) + 16) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(*(a4 + 24) - 8);
  if (*(v10 + 64) > v9)
  {
    v9 = *(v10 + 64);
  }

  v11 = v9 + 1;
  v12 = 8 * (v9 + 1);
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v9 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23B986AA8);
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v11] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = 0;
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
          a1[v9] = -a2;
        }

        break;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B986AE4(uint64_t a1, unsigned int a2)
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

uint64_t sub_23B986B24(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B986B78(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_14_1();
  type metadata accessor for PlatterStyleModifier(v1, v2);
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDAE98();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  v3 = OUTLINED_FUNCTION_14_1();
  type metadata accessor for PlatterStyleModifier.PlatterShape(v3, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_1();
  sub_23BBDB0C8();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  sub_23BBDAF38();
  OUTLINED_FUNCTION_5_1();
  sub_23BBD9FF8();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_14_1();
  sub_23BBDAE78();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  sub_23B9852FC();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_1();
  swift_getOpaqueTypeMetadata2();
  sub_23B985350();
  OUTLINED_FUNCTION_14_1();
  sub_23BBDAE78();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  v5 = OUTLINED_FUNCTION_5_1();
  type metadata accessor for FillBlendLayerModifier(v5, v6, v7, v8);
  sub_23BBDA358();
  v9 = OUTLINED_FUNCTION_5_1();
  type metadata accessor for ProminentPlatterShadow(v9, v10, v11, v12);
  OUTLINED_FUNCTION_17_1();
  sub_23BBDD648();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_23BBDACB8();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_5_1();
  sub_23BBDAE58();
  sub_23BBDA358();
  OUTLINED_FUNCTION_5_1();
  sub_23BBDB108();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  sub_23BBDAD08();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_10_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9878FC(&qword_27E197F30, MEMORY[0x277CDDFF8], MEMORY[0x277CDDFF0]);
  swift_getOpaqueTypeMetadata2();
  v13 = OUTLINED_FUNCTION_14_1();
  type metadata accessor for PlatterStyleModifier.ContainerShape(v13, v14);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_4_2();
  sub_23BBDB058();
  OUTLINED_FUNCTION_23_0();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_21_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23B9871AC()
{
  result = qword_27E198158;
  if (!qword_27E198158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198158);
  }

  return result;
}

unint64_t sub_23B98723C()
{
  result = qword_27E198160;
  if (!qword_27E198160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198160);
  }

  return result;
}

uint64_t sub_23B9873D4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_23BBDA468();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B987438(uint64_t a1, double a2)
{
  v3 = sub_23BBDA468();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23B9874B8()
{
  result = qword_27E1981A8;
  if (!qword_27E1981A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198190, &qword_23BBE4EE0);
    sub_23B987570();
    sub_23B97B518(&qword_27E198198, &qword_27E198180, &unk_23BBE4ED0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1981A8);
  }

  return result;
}

unint64_t sub_23B987570()
{
  result = qword_27E1981B0;
  if (!qword_27E1981B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1981B8, &qword_23BBE4EE8);
    sub_23B97B518(&qword_27E1981C0, &qword_27E1981C8, &qword_23BBE4EF0, MEMORY[0x277CDF480]);
    sub_23B97B518(&qword_27E1981A0, &qword_27E198188, &unk_23BBECC80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1981B0);
  }

  return result;
}

uint64_t sub_23B987654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 16);
  type metadata accessor for ProminentPlatterShadow(0, v6, *(v5 + 24), a4);
  OUTLINED_FUNCTION_19_0();
  v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  OUTLINED_FUNCTION_16_0();
  (*(v9 + 8))(v8, v6);
  v10 = v4[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9BF8();
    OUTLINED_FUNCTION_12_1();
    (*(v11 + 8))(v8 + v10);
  }

  else
  {
  }

  v12 = OUTLINED_FUNCTION_2_1(v4[13]);
  sub_23B97B450(v12, v13);
  v14 = OUTLINED_FUNCTION_2_1(v4[14]);
  sub_23B97B450(v14, v15);

  return swift_deallocObject();
}

uint64_t sub_23B9877A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ProminentPlatterShadow(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23B9824FC(a1, v9, v6, v7);
}

uint64_t sub_23B9878FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B987944(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_23BBDA468();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_23B9879DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B987A24(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[16])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t sub_23B987A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_23B987AA4()
{
  result = qword_27E198258;
  if (!qword_27E198258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198178, &qword_23BBE4EC8);
    sub_23B97B518(&qword_27E198260, &qword_27E198170, &qword_23BBE4EC0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198258);
  }

  return result;
}

uint64_t sub_23B987B5C(void *a1)
{
  sub_23BBD9C28();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_5_1();
  type metadata accessor for PositionReader(v1, v2, v3, v4);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180, &unk_23BBE4ED0);
  OUTLINED_FUNCTION_4_2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198188, &unk_23BBECC80);
  OUTLINED_FUNCTION_4_2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198190, &qword_23BBE4EE0);
  OUTLINED_FUNCTION_4_2();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_4_2();
  sub_23BBDC098();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_24_0();
  swift_getWitnessTable();
  sub_23BBDADF8();
  OUTLINED_FUNCTION_23_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_0();
  return OUTLINED_FUNCTION_24_0();
}

uint64_t sub_23B987DD4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for FillBlendLayerModifier(v2, v3, v1, v4);
  OUTLINED_FUNCTION_10_1();
  swift_getWitnessTable();
  sub_23BBDAE98();
  sub_23BBDB0C8();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23B987EA4()
{
  result = qword_27E198268;
  if (!qword_27E198268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198268);
  }

  return result;
}

unint64_t sub_23B987F20()
{
  result = qword_27E198278;
  if (!qword_27E198278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198270, &unk_23BBE65E0);
    sub_23B987FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198278);
  }

  return result;
}

unint64_t sub_23B987FA4()
{
  result = qword_27E198280;
  if (!qword_27E198280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198288, qword_23BBE5000);
    sub_23B988028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198280);
  }

  return result;
}

unint64_t sub_23B988028()
{
  result = qword_27E198290;
  if (!qword_27E198290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198290);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_23BBD9978();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return sub_23BBDA358();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_getWitnessTable();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B98829C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_23B9882F0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23B9883A8(char a1)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](a1 & 1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B98840C(uint64_t a1)
{
  v2 = *v1;
  sub_23BBDDBB8();
  sub_23B988380(v4, v2);
  return sub_23BBDDBF8();
}

uint64_t sub_23B988450@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A0, qword_23BBEADC0);
  OUTLINED_FUNCTION_7();
  v9 = v8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A8, &qword_23BBE5170);
  OUTLINED_FUNCTION_7();
  v36 = v14;
  v37 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982B0, &qword_23BBE5178);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982B8, &qword_23BBE5180);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a1 & 1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  v40 = a1 & 1;
  v41 = a2;
  v42 = a3;

  sub_23BBDBFA8();
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982C0, &qword_23BBE5188);
  sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0, qword_23BBEADC0, MEMORY[0x277CDF028]);
  sub_23B989234();
  sub_23BBDBC48();
  (*(v9 + 8))(v12, v7);
  v44 = a2;
  v45 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982E0, &qword_23BBE5190);
  sub_23BBDBF68();
  v25 = v43;
  if (v43)
  {
  }

  v26 = v25 != 0;
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  (*(v36 + 32))(v20, v17, v37);
  v29 = &v20[*(v35 + 36)];
  *v29 = KeyPath;
  v29[1] = sub_23B989418;
  v29[2] = v28;
  v30 = &v23[*(v38 + 36)];
  if (qword_27E197748 != -1)
  {
    swift_once();
  }

  type metadata accessor for CanMakePaymentsCache(0);
  sub_23B989BD4(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache, &unk_23BBEFE88);

  *v30 = sub_23BBDA0E8();
  v30[1] = v31;
  v32 = *(type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0) + 20);
  *(v30 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0, &unk_23BBEC890);
  swift_storeEnumTagMultiPayload();
  sub_23B989918(v20, v23, &qword_27E1982B0, &qword_23BBE5178);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  sub_23B989428();

  sub_23BBDBA28();

  return sub_23B989650(v23);
}

uint64_t sub_23B988988(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_23BBDD328();
  v9 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_23BBDD308();

  v10 = sub_23BBDD2F8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a1 & 1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v13 = sub_23BB52778(0, 0, v8, &unk_23BBE5218, v11);
  v15[2] = a2;
  v15[3] = a3;
  v15[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982E0, &qword_23BBE5190);
  return sub_23BBDBF78();
}

uint64_t sub_23B988ADC@<X0>(uint64_t a2@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v3 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_23B988BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[10] = sub_23BBDD308();
  v6[11] = sub_23BBDD2F8();
  v7 = swift_task_alloc();
  v6[12] = v7;
  *v7 = v6;
  v7[1] = sub_23B988C84;

  return MEMORY[0x28212C3F0]();
}

uint64_t sub_23B988C84()
{
  *(*v1 + 104) = v0;

  v3 = sub_23BBDD2D8();
  if (v0)
  {
    v4 = sub_23B988E84;
  }

  else
  {
    v4 = sub_23B988DE0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23B988DE0()
{
  v2 = v0[8];
  v1 = v0[9];

  v0[4] = v2;
  v0[5] = v1;
  v0[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982E0, &qword_23BBE5190);
  sub_23BBDBF78();
  v3 = v0[1];

  return v3();
}

uint64_t sub_23B988E84()
{
  v2 = v0[8];
  v1 = v0[9];

  v0[2] = v2;
  v0[3] = v1;
  v0[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982E0, &qword_23BBE5190);
  sub_23BBDBF78();
  v3 = v0[1];

  return v3();
}

void *sub_23B988F34@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198328, &qword_23BBE5220);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = __src - v4;
  __src[0] = swift_getKeyPath();
  LOBYTE(__src[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198330, &qword_23BBE5258);
  sub_23B97B518(&qword_27E198338, &qword_27E198330, &qword_23BBE5258, MEMORY[0x277CE04B0]);
  sub_23B9898BC();
  sub_23BBDB728();

  v6 = sub_23BBDB398();
  v7 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198348, &qword_23BBE5260) + 36)];
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v7[40] = 1;
  v8 = sub_23BBDB438();
  KeyPath = swift_getKeyPath();
  v10 = &v5[*(v3 + 44)];
  *v10 = KeyPath;
  v10[1] = v8;
  sub_23BBDC318();
  sub_23BBDA488();
  sub_23B989918(v5, a1, &qword_27E198328, &qword_23BBE5220);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198350, &qword_23BBE5298);
  return memcpy((a1 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_23B989168()
{

  return swift_deallocObject();
}

uint64_t sub_23B9891C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A0, qword_23BBEADC0);
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

unint64_t sub_23B989234()
{
  result = qword_27E1982D0;
  if (!qword_27E1982D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982C0, &qword_23BBE5188);
    sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0, qword_23BBEADC0, MEMORY[0x277CDF028]);
    sub_23B9892EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1982D0);
  }

  return result;
}

unint64_t sub_23B9892EC()
{
  result = qword_27E1982D8;
  if (!qword_27E1982D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1982D8);
  }

  return result;
}

uint64_t sub_23B989344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BBDC208();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

unint64_t sub_23B989428()
{
  result = qword_27E1982F8;
  if (!qword_27E1982F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982B8, &qword_23BBE5180);
    sub_23B9894E4();
    sub_23B989BD4(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1982F8);
  }

  return result;
}

unint64_t sub_23B9894E4()
{
  result = qword_27E198300;
  if (!qword_27E198300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982B0, &qword_23BBE5178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982A0, qword_23BBEADC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982C0, &qword_23BBE5188);
    sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0, qword_23BBEADC0, MEMORY[0x277CDF028]);
    sub_23B989234();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198300);
  }

  return result;
}

uint64_t sub_23B989650(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982B8, &qword_23BBE5180);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_23B9896B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23B9896F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B9897C0;

  return sub_23B988BD8(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_23B9897C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23B9898BC()
{
  result = qword_27E198340;
  if (!qword_27E198340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198340);
  }

  return result;
}

uint64_t sub_23B989918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t getEnumTagSinglePayload for SubscriptionStoreBackgroundState.PolicyLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}