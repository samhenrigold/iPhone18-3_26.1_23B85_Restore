uint64_t sub_237A40130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s5ModelVMa(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MLClassifierMetrics(0);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_237A40214(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s5ModelVMa(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for MLClassifierMetrics(0);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_237A402E0(uint64_t a1)
{
  _s5ModelVMa(319);
  if (v1 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MLClassifierMetrics(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_237A403B4()
{
  OUTLINED_FUNCTION_63_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_37_0();
  v4(v3);
  return v0;
}

uint64_t objectdestroyTm_0()
{
  v1 = _s5ModelVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 16))
  {
  }

  v3 = *(v1 + 24);
  sub_237C0747C();
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v2 + v3);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A40518()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = _s5ModelVMa(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237A3B8B4(v5);
}

uint64_t sub_237A405D4()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237A40628()
{
  OUTLINED_FUNCTION_63_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_37_0();
  v4(v3);
  return v0;
}

uint64_t sub_237A40680()
{
  OUTLINED_FUNCTION_63_1();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_37_0();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_24_8()
{

  return sub_237A40094();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return sub_237A405D4();
}

void OUTLINED_FUNCTION_32_4()
{

  sub_237AF8658();
}

uint64_t OUTLINED_FUNCTION_50_2()
{
  *(v1 - 256) = *(v0 + 48);

  return sub_237A40628();
}

uint64_t OUTLINED_FUNCTION_51_3()
{
  v2 = *(v0 - 320);

  return sub_237A2A1B0(v2);
}

uint64_t OUTLINED_FUNCTION_57_2()
{
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return sub_237B7C890(v1, (v1 + v2), v0);
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_237A40628();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_237A405D4();
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3 + *(v4 - 256);

  return sub_2379D9054(v6, a2, a3);
}

uint64_t sub_237A40A68@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_237C082EC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_237A40AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1_20(a1, a2, a3, a4, a5, a6, a7, a8);
  v35 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_9_11(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_22();
  v17 = OUTLINED_FUNCTION_24_9(v15, MEMORY[0x277D83B88], v16);
  sub_237C08D2C();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_6(v19, v34);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B678, &qword_237C0DD38);
  v20 = sub_237A40DF4();
  v21 = OUTLINED_FUNCTION_12_10(v20);
  OUTLINED_FUNCTION_15_9(v21);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_17_9(v23);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  if (OUTLINED_FUNCTION_3_21() == a10)
  {
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_16_7();
    while (1)
    {
      sub_237C08F0C();
      result = __swift_getEnumTagSinglePayload(v10, 1, v17);
      if (result == 1)
      {
        v32 = OUTLINED_FUNCTION_18_11();
        return v33(v32);
      }

      if (__OFADD__(v36, *v10))
      {
        break;
      }

      v26 = OUTLINED_FUNCTION_5_15();
      v27(v26);
      OUTLINED_FUNCTION_6_16();
      sub_237C0860C();
      v28 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_11_12(v28);
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_8_15();
    MEMORY[0x2383DC360](v35);
    OUTLINED_FUNCTION_23_10();
    sub_237C08B3C();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_19_10();
    v29 = OUTLINED_FUNCTION_2_24();
    MEMORY[0x2383DC360](v29);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    v30 = swift_allocError();
    return OUTLINED_FUNCTION_13_8(v30, v31);
  }

  return result;
}

unint64_t sub_237A40DF4()
{
  result = qword_27DE9B680[0];
  if (!qword_27DE9B680[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B678, &qword_237C0DD38);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE9B680);
  }

  return result;
}

uint64_t sub_237A40E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1_20(a1, a2, a3, a4, a5, a6, a7, a8);
  v35 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_9_11(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_22();
  v17 = OUTLINED_FUNCTION_24_9(v15, MEMORY[0x277D83B88], v16);
  sub_237C08D2C();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_6(v19, v34);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B678, &qword_237C0DD38);
  v20 = sub_237A40DF4();
  v21 = OUTLINED_FUNCTION_12_10(v20);
  OUTLINED_FUNCTION_15_9(v21);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_17_9(v23);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  if (OUTLINED_FUNCTION_3_21() == a10)
  {
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_16_7();
    while (1)
    {
      sub_237C08F0C();
      result = __swift_getEnumTagSinglePayload(v10, 1, v17);
      if (result == 1)
      {
        v32 = OUTLINED_FUNCTION_18_11();
        return v33(v32);
      }

      if (__OFADD__(v36, *v10))
      {
        break;
      }

      v26 = OUTLINED_FUNCTION_5_15();
      v27(v26);
      OUTLINED_FUNCTION_6_16();
      sub_237C0854C();
      v28 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_11_12(v28);
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_8_15();
    MEMORY[0x2383DC360](v35);
    OUTLINED_FUNCTION_23_10();
    sub_237C08B3C();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_19_10();
    v29 = OUTLINED_FUNCTION_2_24();
    MEMORY[0x2383DC360](v29);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    v30 = swift_allocError();
    return OUTLINED_FUNCTION_13_8(v30, v31);
  }

  return result;
}

void sub_237A411A4(uint64_t a1)
{
  sub_237A413BC(319, &qword_27DE9B708, &type metadata for ColumnDescriptor);
  if (v1 <= 0x3F)
  {
    sub_237A413BC(319, &qword_27DE9B710, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_237C06AAC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A41280(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_237C06AAC();
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_237A41320(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_237C06AAC();
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_237A413BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_237C089DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OUTLINED_FUNCTION_1_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 272) = v9;
  *(v10 - 152) = v8;
  *(v10 - 144) = a8;
  *(v10 - 136) = a7;
  *(v10 - 200) = a6;
  *(v10 - 232) = a3;
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return sub_237C0924C();
}

uint64_t OUTLINED_FUNCTION_3_21()
{
  *(v1 - 208) = v0;

  return sub_237C08B3C();
}

uint64_t OUTLINED_FUNCTION_4_19()
{
  *(v4 - 256) = v1;
  *(v4 - 248) = v0;
  *(v4 - 120) = v0;
  *(v4 - 112) = v3;
  *(v4 - 104) = v1;
  *(v4 - 96) = v2;

  return MEMORY[0x2821FD0E0](0, v4 - 120);
}

uint64_t OUTLINED_FUNCTION_7_15()
{
  *(v0 - 200) = *(v0 + 48);
  *(v0 - 120) = 0;

  return sub_237C092FC();
}

void OUTLINED_FUNCTION_8_15()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_9_11(uint64_t a1@<X8>)
{
  *(v2 - 176) = a1;
  *(v2 - 168) = v1;
  *(v2 - 192) = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{
  v5 = *(v3 - 136);

  return MEMORY[0x282114EB8](v2, v5, v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{
  v6 = *(v1 + 8);
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = a1;
  *(v4 - 96) = v6;

  return sub_237C08F2C();
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_14_7()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_19_10()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_21_10()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  return sub_237C08EDC();
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return sub_237C06AAC();
}

void OUTLINED_FUNCTION_23_10()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 160) = a3;

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  v2 = *(v0 - 264);

  return MEMORY[0x2821FD0D0](v2);
}

void OUTLINED_FUNCTION_26_7()
{

  JUMPOUT(0x2383DC360);
}

void sub_237A41858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v39 = *a1;
  v42 = *(a1 + 8);
  v33 = *a2;
  LOBYTE(v36) = v7;
  sub_2379DBCF4(*a1, v42);
  v8 = sub_2379DBCF4(v6, v7);
  v16 = OUTLINED_FUNCTION_8_16(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39);
  v17 = a5(v16);
  OUTLINED_FUNCTION_9_12(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37, v40, v42);
  OUTLINED_FUNCTION_18_12(v25, v26, v27, v28, v29, v30, v31, v32, v35, v38, v41, v43, v44, v45);
}

uint64_t static MLDataColumn.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 4);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 4);
}

uint64_t static MLDataColumn.!= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 5);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 5);
}

uint64_t static MLDataColumn.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 7);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 7);
}

uint64_t static MLDataColumn.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 6);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 6);
}

uint64_t static MLDataColumn.>= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 9);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 9);
}

uint64_t static MLDataColumn.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 8);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 8);
}

uint64_t sub_237A41908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_11();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_10();
  v13 = *v12;
  v14 = *(v12 + 8);
  (*(v10 + 16))(v6);
  if (v14)
  {
    v30 = v13;
    v15 = v13;
    v16 = OUTLINED_FUNCTION_6_17();
    sub_2379DBCF4(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v18 = sub_237C0925C();
    if (v18)
    {
      v19 = v18;
      v20 = OUTLINED_FUNCTION_6_17();
      sub_2379DBC9C(v20, v21);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_2_25();
      *v23 = v13;
    }

    v26 = 1;
    v24 = OUTLINED_FUNCTION_6_17();
    sub_2379DBC9C(v24, v25);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v22 = OUTLINED_FUNCTION_11_13();
    (v5)(v22);
    OUTLINED_FUNCTION_16_8();
    v19 = sub_237A60280(a5, v13, &v28);
    sub_2379E8CE8(v28.n128_u64[0], v28.n128_u64[1], v29);
    sub_2379DBC9C(v13, 0);
    v26 = 0;
  }

  result = (*(v10 + 8))(v6, a3);
  *v5 = v19;
  *(v5 + 8) = v26;
  return result;
}

uint64_t sub_237A41B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_11();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_10();
  v13 = *v12;
  v14 = *(v12 + 8);
  (*(v10 + 16))(v6, v15);
  if (v14)
  {
    v31 = v13;
    v16 = v13;
    v17 = OUTLINED_FUNCTION_6_17();
    sub_2379DBCF4(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v19 = sub_237C0925C();
    if (v19)
    {
      v20 = v19;
      v21 = OUTLINED_FUNCTION_6_17();
      sub_2379DBC9C(v21, v22);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_2_25();
      *v24 = v13;
    }

    v27 = 1;
    v25 = OUTLINED_FUNCTION_6_17();
    sub_2379DBC9C(v25, v26);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v23 = OUTLINED_FUNCTION_11_13();
    (v5)(v23);
    OUTLINED_FUNCTION_16_8();
    v20 = sub_237A60530(a5, &v29);
    sub_2379E8CE8(v29.n128_u64[0], v29.n128_u64[1], v30);
    sub_2379DBC9C(v13, 0);
    v27 = 0;
  }

  result = (*(v10 + 8))(v6, a3);
  *v5 = v20;
  *(v5 + 8) = v27;
  return result;
}

void static MLDataColumn<>./ infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v26 = *a1;
  v28 = *(a1 + 8);
  v22 = *a2;
  LOBYTE(v24) = v5;
  sub_2379DBCF4(*a1, v28);
  v6 = sub_2379DBCF4(v4, v5);
  OUTLINED_FUNCTION_8_16(v6, v7, v8, v9, v10, v11, v12, v13, v22, v24, v26);
  static MLUntypedColumn./ infix(_:_:)();
  OUTLINED_FUNCTION_9_12(v14, v15, v16, v17, v18, v19, v20, v21, v23, v25, v27, v28);
  sub_237A41D7C(v29, v30, a3);

  sub_2379DBC9C(v29, v30);
}

void sub_237A41D7C(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2379E8AF0();
  v6 = swift_allocError();
  *v7 = 0xD00000000000001ALL;
  *(v7 + 8) = 0x8000000237C18DA0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 1;
  if (a2)
  {
    sub_2379DBCF4(a1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v8 = sub_237C0925C();
    if (v8)
    {
      v9 = v8;

      sub_2379DBC9C(a1, 1);
    }

    else
    {
      v9 = swift_allocError();
      *v12 = a1;
    }

    v13 = 1;
    goto LABEL_7;
  }

  v10 = *(a1[2] + 16);
  sub_2379DBCF4(a1, 0);
  v11 = sub_237B12C70(v10, 0, 0);
  v14 = v11;
  if (v11)
  {
    type metadata accessor for CMLColumn();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;

    sub_2379DBC9C(a1, 0);
    type metadata accessor for _UntypedColumn();
    v9 = swift_allocObject();
    v13 = 0;
    *(v9 + 16) = v15;
LABEL_7:
    *a3 = v9;
    *(a3 + 8) = v13;
    return;
  }

  __break(1u);
}

void sub_237A41F54(unint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a2[1])
  {
    OUTLINED_FUNCTION_14_8(a1, a2, a3, a4, a5, a6, a7, a8, v33, v34.n128_i64[0]);
    v8 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v8, v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9(v10, v11, MEMORY[0x277D84950], v12))
    {
      v13 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v13, v14);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v28, v29);
    }

    v30 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v30, v31);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v34 = a1;
    v35 = 0;
    v17 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v17, v18);
    v19 = sub_237A60530(a3, &v34);
    v27 = OUTLINED_FUNCTION_0_23(v19, v20, v21, v22, v23, v24, v25, v26, v33, v34.n128_u64[0], v34.n128_u64[1], v35);
    sub_2379DBC9C(v27, v32);
  }

  OUTLINED_FUNCTION_17_10();
}

void static MLDataColumn<>./ infix(_:_:)(void *a1, uint64_t *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a2[1])
  {
    OUTLINED_FUNCTION_14_8(a1, a2, a3, a4, a5, a6, a7, a8, v40, v41);
    v8 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v8, v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9(v10, v11, MEMORY[0x277D84950], v12))
    {
      v13 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v13, v14);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v31, v32);
    }

    v33 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v33, v34);
  }

  else
  {
    v16 = type metadata accessor for _UntypedColumn();
    v17 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v17, v18);
    OUTLINED_FUNCTION_19_11();
    v21 = sub_237A60530(v19, v20);
    v29 = OUTLINED_FUNCTION_0_23(v21, v22, v23, v24, v25, v26, v27, v28, v40, a1, 0, 0);
    if (v16)
    {
      OUTLINED_FUNCTION_5_16(v29, v30);
    }

    else
    {
      sub_2379DBC9C(v29, v30);
    }
  }

  v35 = OUTLINED_FUNCTION_84();
  sub_237A41D7C(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_84();
  sub_2379DBC9C(v38, v39);
}

void static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_237A42174();
}

{
  sub_237A42644(a1, a2, static MLUntypedColumn.+ infix(_:_:));
}

void static MLDataColumn<>.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_237A42174();
}

{
  sub_237A42644(a1, a2, static MLUntypedColumn.- infix(_:_:));
}

void static MLDataColumn<>.* infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_237A42174();
}

{
  sub_237A42644(a1, a2, static MLUntypedColumn.* infix(_:_:));
}

void sub_237A42174()
{
  OUTLINED_FUNCTION_4_20();
  if (v9)
  {
    OUTLINED_FUNCTION_14_8(v1, v2, v3, v4, v5, v6, v7, v8, v35, v36.n128_i64[0]);
    v10 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v10, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9(v12, v13, MEMORY[0x277D84950], v14))
    {
      v15 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v15, v16);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v30, v31);
    }

    v32 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v32, v33);
  }

  else
  {
    v17 = v3;
    v18 = v2;
    type metadata accessor for _UntypedColumn();
    v36 = v18;
    v37 = 0;
    v19 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v19, v20);
    v21 = sub_237A60280(v17, v0, &v36);
    v29 = OUTLINED_FUNCTION_0_23(v21, v22, v23, v24, v25, v26, v27, v28, v35, v36.n128_u64[0], v36.n128_u64[1], v37);
    sub_2379DBC9C(v29, v34);
  }

  OUTLINED_FUNCTION_17_10();
}

void static MLDataColumn<>./ infix(_:_:)()
{
  OUTLINED_FUNCTION_4_20();
  if (v8)
  {
    OUTLINED_FUNCTION_14_8(v0, v1, v2, v3, v4, v5, v6, v7, v42, v43);
    v9 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v9, v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9(v11, v12, MEMORY[0x277D84950], v13))
    {
      v14 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v14, v15);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v33, v34);
    }

    v35 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v35, v36);
  }

  else
  {
    v16 = v1;
    v17 = type metadata accessor for _UntypedColumn();
    v18 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v18, v19);
    OUTLINED_FUNCTION_19_11();
    v23 = sub_237A60280(v20, v21, v22);
    v31 = OUTLINED_FUNCTION_0_23(v23, v24, v25, v26, v27, v28, v29, v30, v42, v16, 0, 0);
    if (v17)
    {
      OUTLINED_FUNCTION_5_16(v31, v32);
    }

    else
    {
      sub_2379DBC9C(v31, v32);
    }
  }

  v37 = OUTLINED_FUNCTION_84();
  sub_237A41D7C(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_84();
  sub_2379DBC9C(v40, v41);
}

void static MLDataColumn<>.+ infix(_:_:)(uint64_t a1)
{
  sub_237A423EC();
}

{
  sub_237A42510();
}

void static MLDataColumn<>.- infix(_:_:)(uint64_t a1)
{
  sub_237A423EC();
}

{
  sub_237A42510();
}

void static MLDataColumn<>.* infix(_:_:)(uint64_t a1)
{
  sub_237A423EC();
}

{
  sub_237A42510();
}

void static MLDataColumn<>./ infix(_:_:)(uint64_t a1)
{
  sub_237A423EC();
}

{
  sub_237A42510();
}

void sub_237A423EC()
{
  OUTLINED_FUNCTION_4_20();
  if (v9)
  {
    OUTLINED_FUNCTION_14_8(v0, v1, v2, v3, v4, v5, v6, v7, v37, v38);
    v10 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v10, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9(v12, v13, MEMORY[0x277D84950], v14))
    {
      v15 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v15, v16);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v33, v34);
    }

    v35 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v35, v36);
  }

  else
  {
    v17 = v8;
    v18 = type metadata accessor for _UntypedColumn();
    v19 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v19, v20);
    OUTLINED_FUNCTION_19_11();
    v23 = sub_237A60530(v21, v22);
    v31 = OUTLINED_FUNCTION_0_23(v23, v24, v25, v26, v27, v28, v29, v30, v37, v17, 0, 1);
    if (v18)
    {
      OUTLINED_FUNCTION_5_16(v31, v32);
    }

    else
    {
      sub_2379DBC9C(v31, v32);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void sub_237A42510()
{
  OUTLINED_FUNCTION_4_20();
  if (v9)
  {
    OUTLINED_FUNCTION_14_8(v0, v1, v2, v3, v4, v5, v6, v7, v38, v39);
    v10 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v10, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9(v12, v13, MEMORY[0x277D84950], v14))
    {
      v15 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v15, v16);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v34, v35);
    }

    v36 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v36, v37);
  }

  else
  {
    v17 = v8;
    v18 = type metadata accessor for _UntypedColumn();
    v19 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v19, v20);
    OUTLINED_FUNCTION_19_11();
    v24 = sub_237A60280(v21, v22, v23);
    v32 = OUTLINED_FUNCTION_0_23(v24, v25, v26, v27, v28, v29, v30, v31, v38, v17, 0, 1);
    if (v18)
    {
      OUTLINED_FUNCTION_5_16(v32, v33);
    }

    else
    {
      sub_2379DBC9C(v32, v33);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void sub_237A42644(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v37 = *a1;
  v40 = *(a1 + 8);
  v31 = *a2;
  LOBYTE(v34) = v5;
  sub_2379DBCF4(*a1, v40);
  v6 = sub_2379DBCF4(v4, v5);
  v14 = OUTLINED_FUNCTION_8_16(v6, v7, v8, v9, v10, v11, v12, v13, v31, v34, v37);
  v15 = a3(v14);
  OUTLINED_FUNCTION_9_12(v15, v16, v17, v18, v19, v20, v21, v22, v32, v35, v38, v40);
  OUTLINED_FUNCTION_18_12(v23, v24, v25, v26, v27, v28, v29, v30, v33, v36, v39, v41, v42, v43);
}

uint64_t OUTLINED_FUNCTION_2_25()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, void *a11, char a12)
{
  sub_2379DBC9C(a9, a10);

  sub_2379DBC9C(a11, a12);
}

uint64_t OUTLINED_FUNCTION_13_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_237C0925C();
}

id OUTLINED_FUNCTION_14_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return v10;
}

__n128 OUTLINED_FUNCTION_16_8()
{
  v1 = *(v0 - 96);
  result = *(v0 - 112);
  *(v0 - 144) = result;
  *(v0 - 128) = v1;
  return result;
}

uint64_t sub_237A4288C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B718, &unk_237C0DD90);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237A42958);
}

uint64_t sub_237A42958()
{
  v1 = sub_237C07D9C();
  v0[23] = v1;
  v0[24] = v2;
  v3 = v1;
  v4 = v2;
  sub_2379E8EE0(0, &qword_27DE9B720, 0x277CBFF28);
  sub_237A2C2B0(v3, v4);
  v5 = sub_237A42E3C(v3, v4);
  v0[25] = v5;
  v6 = v5;
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[20];
  v13 = objc_opt_self();
  v12 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v0[26] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_237A42C08;
  swift_continuation_init();
  v0[17] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  sub_237C08A0C();
  (*(v7 + 32))(boxed_opaque_existential_0, v8, v9);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_237A42F28;
  v0[13] = &block_descriptor_2;
  [v13 loadModelAsset:v6 configuration:v12 completionHandler:?];
  (*(v7 + 8))(boxed_opaque_existential_0, v9);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_237A42C08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_237A42DA4;
  }

  else
  {
    v2 = sub_237A42D18;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_237A42D18()
{
  v1 = v0[25];
  v2 = v0[26];
  sub_2379E86D4(v0[23], v0[24]);

  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_237A42DA4(double a1)
{
  v2 = v1[26];
  v3 = v1[24];
  v4 = v1[25];
  v5 = v1[23];
  swift_willThrow();
  sub_2379E86D4(v5, v3);

  v6 = v1[1];

  return v6();
}

id sub_237A42E3C(uint64_t a1, unint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C05B6C();
  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelAssetWithSpecificationData:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_237C0593C();

    swift_willThrow();
  }

  sub_2379E86D4(a1, a2);
  return v5;
}

void sub_237A42F28(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_237A43008(v5, v7, MEMORY[0x277D85660]);
  }

  else if (a2)
  {
    v6 = a2;
    sub_237A43008(v5, v6, MEMORY[0x277D85668]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237A43008(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t))
{
  v6 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B718, &unk_237C0DD90);
  return a3(&v6, v4);
}

id MLDecisionTreeRegressor.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLDecisionTreeRegressor(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MLDecisionTreeRegressor(uint64_t a1)
{
  result = qword_27DE9B750;
  if (!qword_27DE9B750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLDecisionTreeRegressor.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLDecisionTreeRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLDecisionTreeRegressor.targetColumn.getter()
{
  type metadata accessor for MLDecisionTreeRegressor(0);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDecisionTreeRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLDecisionTreeRegressor(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*MLDecisionTreeRegressor.targetColumn.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLDecisionTreeRegressor(v0);
  return nullsub_1;
}

uint64_t MLDecisionTreeRegressor.featureColumns.getter()
{
  type metadata accessor for MLDecisionTreeRegressor(0);
}

uint64_t MLDecisionTreeRegressor.featureColumns.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MLDecisionTreeRegressor.featureColumns.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLDecisionTreeRegressor(v0);
  return nullsub_1;
}

uint64_t MLDecisionTreeRegressor.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  v3 = v1 + *(type metadata accessor for MLDecisionTreeRegressor(v2) + 32);

  return sub_237A43364(v3, v0);
}

id MLDecisionTreeRegressor.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLDecisionTreeRegressor(v0);
  v2 = OUTLINED_FUNCTION_40_1(*(v1 + 36));

  return sub_2379F7AF4(v2, v3, v4);
}

id MLDecisionTreeRegressor.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLDecisionTreeRegressor(v0);
  v2 = OUTLINED_FUNCTION_40_1(*(v1 + 40));

  return sub_2379F7AF4(v2, v3, v4);
}

uint64_t sub_237A43438()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9B728);
  v1 = __swift_project_value_buffer(v0, qword_27DE9B728);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLDecisionTreeRegressor._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A578 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9B728);
  OUTLINED_FUNCTION_2_26();
  return sub_237A46C5C(v3, a1, v4);
}

void MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v152 = v0;
  v153 = v1;
  v3 = v2;
  v165 = v4;
  v150 = v5;
  v159 = v6;
  v8 = v7;
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v156 = v9;
  v157 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v138 = v12 - v11;
  v13 = OUTLINED_FUNCTION_41_0();
  v14 = type metadata accessor for TreeRegressorModel(v13);
  v15 = OUTLINED_FUNCTION_1(v14);
  v142 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_134();
  v144 = v17;
  v143 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_58();
  v149 = v20;
  v21 = OUTLINED_FUNCTION_41_0();
  v147 = type metadata accessor for TreeRegressor(v21);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v148 = (v24 - v23);
  v25 = OUTLINED_FUNCTION_41_0();
  type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(v25);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_0();
  v139 = v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v30);
  v140 = &v136 - v31;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v136 - v33;
  v158 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v160 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_0();
  v146 = v37;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v136 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v136 - v42;
  v44 = type metadata accessor for MLDecisionTreeRegressor(0);
  v45 = v8 + *(v44 + 36);
  *v45 = 0;
  *(v45 + 8) = 0;
  v155 = v45;
  *(v45 + 16) = 0;
  v141 = v44;
  v46 = *(v44 + 40);
  v145 = v8;
  v47 = v8 + v46;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  swift_allocError();
  OUTLINED_FUNCTION_41_3();
  *v49 = v48 + 173;
  v49[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v50, v49);
  *v47 = v51;
  *(v47 + 8) = 0;
  v151 = v47;
  *(v47 + 16) = 1;
  sub_237A43364(v3, &v163);
  sub_237C071CC();
  sub_237C0715C();
  sub_237C070DC();
  sub_237C070FC();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237A44168(&v163);
  v154 = v3;
  sub_2379FC864(v3, &v161, &qword_27DE9A998, &unk_237C0C100);
  if (v162)
  {
    v52 = *(v27 + 48);
    sub_2379DAD24(&v161, &v163);
    swift_dynamicCast();
    v53 = v159;
    v54 = v152;
    sub_237A612D8(v34, &v34[v52], v159);
    if (v54)
    {

      sub_237A44168(v154);
      (*(v157 + 8))(v53, v156);
      v55 = OUTLINED_FUNCTION_47_4();
      v56(v55);
      OUTLINED_FUNCTION_6_18();
      sub_237A470A0();
    }

    else
    {
      v152 = v27;
      OUTLINED_FUNCTION_6_18();
      sub_237A470A0();
      v57 = v150;
      sub_237B19700(v34, v150, v165, v153);
      v59 = v58;

      v153 = 0;
      v60 = v40;
      v136 = v40;
      v61 = *(v160 + 16);
      v137 = v34;
      v62 = v158;
      v61(v60, v43, v158);
      v63 = v57;
      v64 = v148;
      *v148 = v63;
      v64[1] = v165;
      OUTLINED_FUNCTION_80();
      v64[2] = v59;
      v64[3] = v59;
      v64[4] = 0xD000000000000013;
      v64[5] = v65;
      v66 = v136;
      v67(v146, v136, v62);
      swift_bridgeObjectRetain_n();

      v68 = v137;
      v69 = v160;
      sub_237C06CEC();
      v71 = *(v69 + 8);
      v70 = v69 + 8;
      v72 = v66;
      v73 = v71;
      v71(v72, v62);
      v74 = v153;
      sub_237A0CAB0();
      if (v74)
      {

        sub_237A44168(v154);
        v75 = OUTLINED_FUNCTION_25_7();
        v76(v75);
        OUTLINED_FUNCTION_1_22();
        sub_237A470A0();
        sub_2379D9054(v68, &qword_27DE9ADC0, &unk_237C0BF40);
        v73(v43, v62);
      }

      else
      {
        v147 = v59;
        v146 = v73;
        v153 = 0;
        if ((sub_237A37A64() & 1) == 0)
        {
          v77 = OUTLINED_FUNCTION_30_6();
          v78 = v140;
          sub_2379FC864(v77, v140, v79, v80);
          v81 = v70;
          v82 = *(v152 + 48);
          v83 = sub_237C05D3C();
          (*(v157 + 8))(v78, v156);
          OUTLINED_FUNCTION_41_3();
          sub_237A37AEC(2, v84 + 2, 0x8000000237C17C00, v83);
          v85 = v78 + v82;
          v70 = v81;
          sub_2379D9054(v85, &qword_27DE9A9A0, &qword_237C0BF60);
        }

        v86 = v141;
        v87 = v145;
        v88 = (v145 + v141[6]);
        *v88 = v150;
        v88[1] = v165;
        v150 = v86[8];
        v89 = v154;
        sub_237A43364(v154, v87 + v150);
        *(v87 + v86[7]) = v147;
        OUTLINED_FUNCTION_3_23();
        v90 = v149;
        v91 = v144;
        sub_237A46C5C(v149, v144, v92);
        v93 = (*(v142 + 80) + 16) & ~*(v142 + 80);
        swift_allocObject();
        OUTLINED_FUNCTION_9_13();
        sub_237A470F4(v91, v94 + v93, v95);
        v96 = v153;
        sub_2379DD56C();
        if (v96)
        {
          v153 = v96;

          sub_237A44168(v89);
          v98 = OUTLINED_FUNCTION_25_7();
          v99(v98);
          OUTLINED_FUNCTION_0_24();
          sub_237A470A0();
          OUTLINED_FUNCTION_1_22();
          OUTLINED_FUNCTION_38_3();
          v100 = OUTLINED_FUNCTION_30_6();
          sub_2379D9054(v100, v101, v102);
          v103 = OUTLINED_FUNCTION_12_12();
          v104(v103);
        }

        else
        {
          v105 = v97;

          *(v87 + v86[5]) = v105;
          OUTLINED_FUNCTION_3_23();
          sub_237A46C5C(v90, v87, v106);
          v107 = v137;
          sub_237A478AC(v137, &v163);
          v153 = 0;
          v108 = v105;
          v160 = v70;
          v109 = v163;
          v110 = v164;
          v111 = v155;
          sub_2379F8918(*v155, *(v155 + 8), *(v155 + 16));
          *v111 = v109;
          *(v111 + 16) = v110;
          v112 = v139;
          sub_2379FC864(v107, v139, &qword_27DE9ADC0, &unk_237C0BF40);
          v113 = *(v152 + 48);
          v114 = v156;
          v115 = v89;
          if (__swift_getEnumTagSinglePayload(v112 + v113, 1, v156) == 1)
          {
            sub_237A44168(v89);
            v116 = v112;
            v117 = *(v157 + 8);
            v117(v159, v114);
            OUTLINED_FUNCTION_0_24();
            sub_237A470A0();
            OUTLINED_FUNCTION_1_22();
            OUTLINED_FUNCTION_38_3();
            sub_2379D9054(v107, &qword_27DE9ADC0, &unk_237C0BF40);
            v146(v43, v158);
            sub_2379D9054(v116 + v113, &qword_27DE9A9A0, &qword_237C0BF60);
            v117(v116, v114);
            goto LABEL_13;
          }

          v118 = v157;
          v119 = v112 + v113;
          v120 = v138;
          (*(v157 + 32))(v138, v119, v114);
          v121 = *(v118 + 8);
          v121(v112, v114);
          v122 = v153;
          sub_237A478AC(v120, &v163);
          v153 = v122;
          if (!v122)
          {
            sub_237A44168(v115);
            v121(v159, v114);
            v121(v120, v114);
            OUTLINED_FUNCTION_0_24();
            sub_237A470A0();
            OUTLINED_FUNCTION_1_22();
            OUTLINED_FUNCTION_38_3();
            v128 = OUTLINED_FUNCTION_30_6();
            sub_2379D9054(v128, v129, v130);
            v131 = OUTLINED_FUNCTION_12_12();
            v132(v131);
            v133 = v163;
            v134 = v164;
            v135 = v151;
            sub_2379F8918(*v151, *(v151 + 8), *(v151 + 16));
            *v135 = v133;
            *(v135 + 16) = v134;
            goto LABEL_13;
          }

          sub_237A44168(v115);
          v121(v159, v114);
          v121(v120, v114);
          OUTLINED_FUNCTION_0_24();
          sub_237A470A0();
          OUTLINED_FUNCTION_1_22();
          OUTLINED_FUNCTION_38_3();
          v123 = OUTLINED_FUNCTION_30_6();
          sub_2379D9054(v123, v124, v125);
          v126 = OUTLINED_FUNCTION_12_12();
          v127(v126);
          OUTLINED_FUNCTION_0_24();
          sub_237A470A0();
        }

        sub_237A44168(v87 + v150);
      }
    }

    sub_2379F8918(*v155, *(v155 + 8), *(v155 + 16));
    sub_2379F8918(*v151, *(v151 + 8), *(v151 + 16));
LABEL_13:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

uint64_t sub_237A441C0()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for TreeRegressorModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_2379F8924(v5);
}

uint64_t MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_20(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  LOBYTE(v10) = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  sub_237A70ED4(&v13, v11);
  sub_237A43364(a5, &v13);
  MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_237A44168(a5);
}

void MLDecisionTreeRegressor.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v73 = v0;
  v2 = v1;
  v4 = v3;
  v66 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v64 = v6;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  v65 = v8;
  v9 = OUTLINED_FUNCTION_41_0();
  v10 = type metadata accessor for TreeRegressorModel(v9);
  v11 = OUTLINED_FUNCTION_1(v10);
  v68 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_134();
  v69 = v14;
  v70 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_58();
  v74 = v16;
  OUTLINED_FUNCTION_41_0();
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v71 = v18;
  v72 = v17;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  type metadata accessor for TreeRegressor(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = (v24 - v23);
  v26 = type metadata accessor for MLDecisionTreeRegressor(0);
  v27 = v4 + *(v26 + 36);
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  v63 = v26;
  v28 = *(v26 + 40);
  v67 = v4;
  v29 = v4 + v28;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  swift_allocError();
  OUTLINED_FUNCTION_41_3();
  *v31 = v30 + 173;
  v31[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v32, v31);
  *v29 = v33;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  switch(*(v2 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v34 = sub_237C0929C();

      if (v34)
      {
LABEL_4:
        sub_237C071CC();
        *v25 = 0;
        v25[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_80();
        v25[2] = v35;
        v25[3] = v35;
        v25[4] = 0xD000000000000013;
        v25[5] = v36;
        v38 = v71;
        v37 = v72;
        v39 = OUTLINED_FUNCTION_58_0();
        v40(v39);
        sub_237C06CEC();
        (*(v38 + 8))(v21, v37);
        sub_2379FBDFC();
        v41 = v73;
        v42 = v74;
        sub_237C0743C();
        if (!v41)
        {
          OUTLINED_FUNCTION_3_23();
          v46 = v70;
          sub_237A46C5C(v42, v70, v47);
          v48 = (*(v68 + 80) + 16) & ~*(v68 + 80);
          swift_allocObject();
          OUTLINED_FUNCTION_9_13();
          sub_237A470F4(v46, v49 + v48, v50);
          sub_2379DD56C();
          v52 = v51;

          v53 = v63;
          v54 = v67;
          *(v67 + *(v63 + 20)) = v52;
          OUTLINED_FUNCTION_3_23();
          sub_237A46C5C(v42, v54, v55);
          v57 = v65;
          v56 = v66;
          *v65 = 0;
          *(v57 + 8) = 0;
          *(v57 + 16) = 256;
          swift_storeEnumTagMultiPayload();
          v58 = v53;
          v59 = v54 + *(v53 + 32);
          *v59 = 0u;
          *(v59 + 16) = 0u;
          *(v59 + 32) = 6;
          *(v59 + 40) = xmmword_237C0BF30;
          *(v59 + 56) = 42;
          v60 = v64;
          sub_237A46C5C(v57, v64, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
          v75[3] = v56;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
          sub_237A470F4(v60, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
          OUTLINED_FUNCTION_6_18();
          sub_237A470A0();
          sub_2379DAE54(v75, v59);
          v62 = (v54 + *(v58 + 24));
          *v62 = 0;
          v62[1] = 0xE000000000000000;
          OUTLINED_FUNCTION_5_17();
          sub_237A470A0();
          OUTLINED_FUNCTION_0_24();
          sub_237A470A0();
          OUTLINED_FUNCTION_1_22();
          sub_237A470A0();
          *(v54 + *(v58 + 28)) = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_5_17();
        sub_237A470A0();
        OUTLINED_FUNCTION_1_22();
      }

      else
      {
        OUTLINED_FUNCTION_50();
        swift_allocError();
        OUTLINED_FUNCTION_41_3();
        *v44 = v43 + 47;
        v44[1] = 0x8000000237C18E10;
        OUTLINED_FUNCTION_23_3(v45, v44);
        swift_willThrow();
        OUTLINED_FUNCTION_5_17();
      }

      sub_237A470A0();
      sub_2379F8918(*v27, *(v27 + 8), *(v27 + 16));
      sub_2379F8918(*v29, *(v29 + 8), *(v29 + 16));
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
  }
}

void static MLDecisionTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = (v4 - v3);
  v6 = *(v1 + 8);
  v10 = *v1;
  v11 = v6;
  sub_2379DBCF4(v10, v6);
  sub_237A70ED4(&v10, v5);
  static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  v7 = OUTLINED_FUNCTION_58_0();
  v8(v7);
  if (!v0)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B740, &qword_237C0DDC8);
    OUTLINED_FUNCTION_91(v9);
    sub_237BEC184();
  }

  OUTLINED_FUNCTION_73();
}

void static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  v8 = *(v0 + 8);
  v9 = *v0;
  v10 = v8;
  sub_2379DBCF4(v9, v8);
  sub_237A70ED4(&v9, v7);
  static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v47 = v1;
  v48 = v2;
  v4 = v3;
  v45 = v5;
  v46 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  v43 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v44 = v13;
  OUTLINED_FUNCTION_41_0();
  v14 = sub_237C071DC();
  v15 = OUTLINED_FUNCTION_20(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = (v17 - v16);
  type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  v49 = v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v41 - v27;
  v29 = v4;
  sub_2379FC864(v4, &v53, &qword_27DE9A998, &unk_237C0C100);
  if (v54)
  {
    v30 = *(v20 + 48);
    sub_2379DAD24(&v53, &v50);
    swift_dynamicCast();
    sub_237A612D8(v28, &v28[v30], v8);
    OUTLINED_FUNCTION_6_18();
    sub_237A470A0();
    if (!v0)
    {
      v42 = v25;
      sub_2379FC864(v28, v25, &qword_27DE9ADC0, &unk_237C0BF40);
      v55 = *(v20 + 48);
      v31 = v49;
      sub_2379FC864(v28, v49, &qword_27DE9ADC0, &unk_237C0BF40);
      v41 = *(v20 + 48);
      sub_237A43364(v29, &v50);
      v32 = v47;

      v33 = v46;

      sub_237C071CC();
      sub_237C0715C();
      sub_237C070DC();
      sub_237C070FC();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237A44168(&v50);
      OUTLINED_FUNCTION_2_26();
      v34 = v44;
      sub_237A46C5C(v48, v44, v35);
      v36 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v36);
      sub_237B1A5B0(v42, v31 + v41, v45, v33, v32, v18, v34);
      OUTLINED_FUNCTION_46();
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v37 + 8))(v49);
      sub_2379D9054(&v42[v55], &qword_27DE9A9A0, &qword_237C0BF60);
      v51 = v36;
      v52 = &off_284AC4B18;
      *&v50 = v33;
      OUTLINED_FUNCTION_2_26();
      v38 = v43;
      sub_237A46C5C(v48, v43, v39);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B748, &unk_237C0DDD0);
      OUTLINED_FUNCTION_91(v40);

      sub_2379E41D8(&v50, v38, 2);
      sub_2379D9054(v28, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLDecisionTreeRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B740, &qword_237C0DDC8);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEC184();
}

void static MLDecisionTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v6)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B740, &qword_237C0DDC8);
    OUTLINED_FUNCTION_91(v7);
    sub_237BEC184();
  }
}

void static MLDecisionTreeRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-1] - v8;
  OUTLINED_FUNCTION_2_26();
  sub_237A46C5C(a1, v9, v10);
  v11 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v11);
  v12 = sub_237B1A4D0(v9);
  if (!v1)
  {
    v18[3] = v11;
    v18[4] = &off_284AC4B18;
    v18[0] = v12;
    OUTLINED_FUNCTION_2_26();
    v13 = OUTLINED_FUNCTION_58_0();
    sub_237A46C5C(v13, v14, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B748, &unk_237C0DDD0);
    OUTLINED_FUNCTION_91(v16);
    sub_2379E41D8(v18, v6, 2);
  }
}

uint64_t sub_237A451FC(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B760, &qword_237C0DEA8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15 - 8];
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a4(v12);
    return sub_2379D9054(v12, &qword_27DE9B760, &qword_237C0DEA8);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_dynamicCast();
    v19 = v22;
    v20 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a4;
    v21[6] = a5;

    sub_237BBAEC8(0, 0, v16, &unk_237C0DEC8, v21);
  }
}

uint64_t sub_237A453F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B760, &qword_237C0DEA8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237A454AC);
}

uint64_t sub_237A454AC()
{
  OUTLINED_FUNCTION_9();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_237A4554C;

  return sub_237A457C4();
}

uint64_t sub_237A4554C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A45648()
{
  v2 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_37_0();
  sub_237A47030(v3, v4);
  OUTLINED_FUNCTION_35_3();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9B760, &qword_237C0DEA8);

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_237A45708()
{
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35_3();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9B760, &qword_237C0DEA8);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237A457C4()
{
  OUTLINED_FUNCTION_9();
  v0[24] = v1;
  v0[25] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v3);
  v0[26] = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for MLDecisionTreeRegressor(0);
  v0[27] = v4;
  OUTLINED_FUNCTION_20(v4);
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v5);
  v0[30] = OUTLINED_FUNCTION_19();
  v6 = sub_237C071DC();
  v0[31] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[32] = v7;
  v0[33] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v8);
  v0[34] = OUTLINED_FUNCTION_19();
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v0[35] = v9;
  OUTLINED_FUNCTION_20(v9);
  v0[36] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_237A4594C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);
  v4 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  v11 = *(v0 + 240);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  sub_237A470F4(*(v0 + 272), v6, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379FC864(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237A0BCC0(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v16 = *v14;
  v15 = v14[1];
  *(v0 + 296) = v15;
  v17 = *(v6 + v7[7]);
  *(v0 + 304) = v17;
  v18 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  swift_beginAccess();
  sub_2379FC864(v13 + v18, v12, &qword_27DE9AE10, &qword_237C0C090);
  v19 = type metadata accessor for TreeRegressorModel(0);
  result = __swift_getEnumTagSinglePayload(v12, 1, v19);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  sub_237A43364(v0 + 16, v0 + 80);
  v22 = v21[9];
  *(v0 + 336) = v22;
  v23 = v20 + v22;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = v21[10];
  *(v0 + 340) = v24;
  v25 = v20 + v24;
  sub_2379E8AF0();

  OUTLINED_FUNCTION_50();
  v26 = swift_allocError();
  *v27 = 0xD0000000000000C0;
  v27[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v26, v27);
  *v25 = v28;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(v20 + v21[7]) = v17;
  v29 = (v20 + v21[6]);
  *v29 = v16;
  v29[1] = v15;
  v30 = swift_task_alloc();
  *(v0 + 312) = v30;
  *v30 = v0;
  v30[1] = sub_237A45C08;

  return sub_237B91530();
}

uint64_t sub_237A45C08()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 320) = v0;

  if (!v0)
  {
    *(v5 + 328) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237A45D18()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  *(v1 + *(v3 + 20)) = *(v0 + 328);
  OUTLINED_FUNCTION_9_13();
  sub_237A470F4(v6, v1, v7);
  v8 = (v1 + *(v3 + 32));
  v10 = *(v0 + 112);
  v9 = *(v0 + 128);
  v11 = *(v0 + 96);
  *v8 = *(v0 + 80);
  v8[1] = v11;
  v8[2] = v10;
  v8[3] = v9;
  sub_237A470F4(v1, v2, type metadata accessor for MLDecisionTreeRegressor);
  result = sub_237A470F4(v2, v4, type metadata accessor for MLDecisionTreeRegressor);
  v13 = v5 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  v14 = *(v5 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v14 == 255)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v0 + 216);
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    v19 = *v13;
    v18 = *(v13 + 8);
    v20 = v14 & 1;
    sub_2379F7AF4(*v13, v18, v14 & 1);
    sub_237A44168(v0 + 16);
    OUTLINED_FUNCTION_14_9();
    sub_237A470A0();
    v21 = v17 + *(v15 + 36);
    sub_2379F8918(*v21, *(v21 + 8), *(v21 + 16));
    *v21 = v19;
    *(v21 + 8) = v18;
    *(v21 + 16) = v20;
    v23 = *(v16 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v22 = *(v16 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    v24 = *(v16 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
    sub_2379FC970(v23, v22, *(v16 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));

    if (v24 != 255)
    {
      v25 = *(v0 + 192) + *(*(v0 + 216) + 40);
      sub_2379F8918(*v25, *(v25 + 8), *(v25 + 16));
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24 & 1;
    }

    OUTLINED_FUNCTION_8();

    return v26();
  }

  return result;
}

uint64_t sub_237A45F14()
{
  v1 = *(v0 + 224);
  v2 = v1 + *(v0 + 336);
  v3 = v1 + *(v0 + 340);
  sub_237A44168(v0 + 80);
  OUTLINED_FUNCTION_0_24();
  sub_237A470A0();

  sub_2379F8918(*v2, *(v2 + 8), *(v2 + 16));
  sub_2379F8918(*v3, *(v3 + 8), *(v3 + 16));

  sub_237A44168(v0 + 16);
  OUTLINED_FUNCTION_14_9();
  sub_237A470A0();

  OUTLINED_FUNCTION_8();

  return v4();
}

void MLDecisionTreeRegressor.predictions(from:)()
{
  v1 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  type metadata accessor for MLDecisionTreeRegressor(0);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v0)
  {
    OUTLINED_FUNCTION_11();
    sub_237A47CE0(v8, v9);
    sub_237C05DFC();
    (*(v3 + 8))(v7, v1);
  }
}

uint64_t MLDecisionTreeRegressor.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = (v9 - v8);
  v11 = sub_237C0602C();
  v12 = OUTLINED_FUNCTION_20(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = *(a1 + 8);
  v18 = *a1;
  v19 = v16;
  sub_2379DBCF4(v18, v16);
  sub_237A70ED4(&v18, v10);
  MLDecisionTreeRegressor.predictions(from:)();
  if (v2)
  {
    return (*(v6 + 8))(v10, v4);
  }

  (*(v6 + 8))(v10, v4);
  return sub_237A72900(v15, 1, v1);
}

void *MLDecisionTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_146();
  v5 = type metadata accessor for MLDecisionTreeRegressor(v4);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v7 = (v2 + *(v5 + 24));
  v8 = v7[1];
  *(inited + 32) = *v7;
  *(inited + 40) = v8;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  return sub_237A478AC(a1, v1);
}

uint64_t MLDecisionTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  MLDecisionTreeRegressor.evaluation(on:)(v8);
  return (*(v4 + 8))(v8, v2);
}

void MLDecisionTreeRegressor.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v45 = v0;
  v3 = v2;
  v4 = type metadata accessor for TreeRegressorModel(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v20 = v3;
  v23 = v22 - v21;
  memcpy(v44, v20, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v36 = v11;
    v37 = v18;
    OUTLINED_FUNCTION_3_23();
    sub_237A46C5C(v45, v8, v24);
    v25 = *(&v44[0] + 1);
    if (*(&v44[0] + 1))
    {
      v26 = *&v44[0];
      v27 = *(&v44[1] + 1);
      v28 = *&v44[1];
      v29 = v44[2];
      v30 = *(&v44[3] + 1);
      v31 = *&v44[3];
      v32 = *&v44[4];
    }

    else
    {
      v33 = v23;
      v34 = NSFullUserName();
      v26 = sub_237C086EC();
      v25 = v35;

      v23 = v33;
      v32 = 0;
      v27 = 0x8000000237C17C90;
      v28 = 0xD000000000000033;
      v29 = 0uLL;
      v30 = 0xE100000000000000;
      v31 = 49;
    }

    v39[0] = v26;
    v39[1] = v25;
    v39[2] = v28;
    v39[3] = v27;
    v40 = v29;
    v41 = v31;
    v42 = v30;
    v43 = v32;
    sub_2379FC864(v44, &v38, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB350(v39);
    OUTLINED_FUNCTION_0_24();
    sub_237A470A0();
    sub_2379FC064(v39);
    sub_237C07E5C();
    (*(v36 + 8))(v15, v9);
    (*(v37 + 8))(v23, v16);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLDecisionTreeRegressor.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v24[1] = v3;
  v25 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  v17 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  memcpy(v26, v5, sizeof(v26));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v8 + 104))(v12, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLDecisionTreeRegressor.write(to:metadata:)();
  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_73();
}

unint64_t MLDecisionTreeRegressor.description.getter()
{
  v1 = type metadata accessor for MLDecisionTreeRegressor(0);
  v2 = MLDecisionTreeRegressor.ModelParameters.description.getter();
  v4 = v3;
  v5 = MLRegressorMetrics.description.getter();
  v7 = v6;
  v8 = *(v0 + *(v1 + 40) + 16);
  v9 = MLRegressorMetrics.description.getter();
  v11 = v10;
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v2, v4);

  OUTLINED_FUNCTION_80();
  v15 = v12;
  MEMORY[0x2383DC360](v5, v7);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v15);

  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_80();
    v16 = v13;
    MEMORY[0x2383DC360](v9, v11);
    MEMORY[0x2383DC360](0xD000000000000020, v16);
  }

  return 0xD000000000000022;
}

id MLDecisionTreeRegressor.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLDecisionTreeRegressor.description.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237A46BA0()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for TreeRegressorModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_2379F92CC(v5);
}

uint64_t sub_237A46C5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

id sub_237A46CB8@<X0>(void *a1@<X8>)
{
  result = MLDecisionTreeRegressor.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A46CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for TreeRegressorModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_237A46DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TreeRegressorModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_237A46E60(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(319);
  if (v1 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A46F28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A46F70(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237A453F0(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237A47030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B760, &qword_237C0DEA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A470A0()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237A470F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_35_3()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_237A47030(v2, v3);
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_237A470A0();
}

uint64_t sub_237A47294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237C08ADC();
  swift_getWitnessTable();
  sub_237C089EC();
  sub_237C089DC();
  swift_getWitnessTable();
  v4 = sub_237C088AC();

  swift_getWitnessTable();
  sub_237C08B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
  sub_237A474D0();
  sub_237C092FC();

  sub_237C08F2C();
  swift_getWitnessTable();
  sub_237C085BC();
  return v4;
}

unint64_t sub_237A474D0()
{
  result = qword_27DE9B768[0];
  if (!qword_27DE9B768[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE9B768);
  }

  return result;
}

uint64_t sub_237A4755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237A475A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_237A475E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_237A4764C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C0701C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A476E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0701C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TreeRegressorModel(uint64_t a1)
{
  result = qword_27DE9B7F0;
  if (!qword_27DE9B7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A477B4(uint64_t a1)
{
  sub_237A47848(319);
  if (v1 <= 0x3F)
  {
    sub_237C0701C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237A47848(uint64_t a1)
{
  if (!qword_27DE9B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B008, &qword_237C0C9B8);
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9B800);
    }
  }
}

uint64_t sub_237A478AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v41 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v39 = v3;
  MEMORY[0x28223BE20](v4);
  v38 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v37 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B818, &qword_237C0DFE0);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v42 = v32 - v15;
  v16 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v22 = v43;
  result = sub_237A47CE0(a1, v21);
  if (!v22)
  {
    v32[1] = 0;
    v33 = v18;
    v34 = v16;
    v35 = v13;
    v43 = v11;
    sub_237C05DEC();
    v45 = 0;
    sub_2379D9224(&qword_27DE9B820, &qword_27DE9AB88, &qword_237C0B8F0, MEMORY[0x277CE18F0]);
    v24 = v42;
    sub_237C05EAC();
    (*(v37 + 8))(v10, v6);
    v25 = v38;
    sub_237C05DFC();
    sub_237B635F0();
    v27 = v26;
    result = (*(v39 + 8))(v25, v41);
    if (v27)
    {
      v44 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B828, &qword_237C0DFE8);
      sub_237A48144();
      sub_2379D9224(&qword_27DE9B838, &qword_27DE9B818, &qword_237C0DFE0, MEMORY[0x277CE18B0]);
      sub_2379D9224(&qword_27DE9B840, &qword_27DE9B828, &qword_237C0DFE8, MEMORY[0x277D84280]);
      v28 = v43;
      OUTLINED_FUNCTION_1_23();
      sub_237C06EDC();
      v29 = v45;
      v44 = v27;
      OUTLINED_FUNCTION_1_23();
      sub_237C06EEC();
      (*(v35 + 8))(v24, v28);
      (*(v33 + 8))(v21, v34);

      v30 = v45;
      v31 = v36;
      *v36 = v29;
      v31[1] = v30;
      *(v31 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A47CE0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v28 = v10;
  v29 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  OUTLINED_FUNCTION_0();
  v30 = v15;
  v31 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = v27 - v17;
  if (!v6[2])
  {
LABEL_14:
    result = sub_237C090DC();
    __break(1u);
    return result;
  }

  result = sub_237A0D2E0(a1);
  if (!v5)
  {
    type metadata accessor for TreeRegressorModel(0);
    v20 = sub_237C0700C();
    sub_237C05DAC();
    v21 = v6[1];
    v27[2] = *v6;
    v22 = *(v20 + 16);
    if (v22)
    {
      v27[1] = a4;
      v32 = MEMORY[0x277D84F90];
      v27[0] = v21;

      sub_237AC8B54();
      v23 = 0;
      v24 = v32;
      while (v23 < *(v20 + 16))
      {
        v25 = *(v20 + 4 * v23 + 32);
        v32 = v24;
        v26 = *(v24 + 16);
        if (v26 >= *(v24 + 24) >> 1)
        {
          sub_237AC8B54();
          v24 = v32;
        }

        ++v23;
        *(v24 + 16) = v26 + 1;
        *(v24 + 8 * v26 + 32) = v25;
        if (v22 == v23)
        {

          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_11:
    v32 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
    sub_2379D9224(&qword_27DE9B810, &qword_27DE9ACF0, &unk_237C14060, MEMORY[0x277D83970]);
    sub_237C05EEC();
    sub_237C05D4C();
    (*(v28 + 8))(v13, v29);
    return (*(v30 + 8))(v18, v31);
  }

  return result;
}

uint64_t sub_237A48060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237A47CE0(a2, a1);
  v5 = *(v4 + 8);

  return v5();
}

unint64_t sub_237A480EC()
{
  result = qword_27DE9B808;
  if (!qword_27DE9B808)
  {
    type metadata accessor for TreeRegressorModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B808);
  }

  return result;
}

unint64_t sub_237A48144()
{
  result = qword_27DE9B830;
  if (!qword_27DE9B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B830);
  }

  return result;
}

void sub_237A481B4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_132_0();
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = sub_237C07A8C();
    OUTLINED_FUNCTION_20(v7);
    OUTLINED_FUNCTION_150_0();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_237A4823C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_132_0();
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_237A482A0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_132_0();
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
    OUTLINED_FUNCTION_20(v7);
    OUTLINED_FUNCTION_150_0();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_237A48334(uint64_t a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  MEMORY[0x28223BE20](v69);
  v68 = &v56[-v2];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  i = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v58 = &v56[-v5];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B900, &unk_237C0E248);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = &v56[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v56[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F8, &qword_237C0E238);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v56[-v11];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B930, &unk_237C0E260);
  MEMORY[0x28223BE20](v57);
  v14 = &v56[-v13];
  v15 = MEMORY[0x277CE18A8];
  *&v61 = sub_2379D9224(&qword_27DE9B938, &qword_27DE9AA88, &unk_237C0B800, MEMORY[0x277CE18A8]);
  v16 = sub_237C0887C();
  v17 = v15;
  v18 = v7;
  v62 = sub_2379D9224(&qword_27DE9B940, &qword_27DE9B900, &unk_237C0E248, v17);
  v19 = a1;
  v20 = v73;
  v21 = sub_237C0887C();
  if (v21 >= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v21;
  }

  v76 = MEMORY[0x277D84F90];
  sub_237AC8DF4();
  v72 = v76;
  sub_2379E9068(v19, v12, &qword_27DE9B8F8, &qword_237C0E238);
  (*(v65 + 4))(v63, v12, v18);
  sub_237C0885C();
  (*(v71 + 32))(v66, &v12[*(v10 + 60)], v20);
  v23 = (v14 + *(v57 + 52));
  sub_237C0885C();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v65 = v23;
    v66 = v18;
    if (!v22)
    {
LABEL_12:
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B948, &qword_237C13CD0) + 36);
      v40 = sub_2379D9224(&qword_27DE9AA90, &qword_27DE9AA88, &unk_237C0B800, MEMORY[0x277CE18B0]);
      v62 = v70 + 32;
      v61 = xmmword_237C0B660;
      v41 = v65;
      v63 = v40;
      for (i = v39; ; v39 = i)
      {
        sub_237C08B5C();
        if (*&v39[v14] == v74)
        {
          break;
        }

        v42 = sub_237C08B9C();
        v45 = *v43;
        v44 = v43[1];

        v42(&v74, 0);
        sub_237C08B6C();
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B950, &unk_237C0E270) + 36);
        sub_2379D9224(&qword_27DE9B958, &qword_27DE9B900, &unk_237C0E248, MEMORY[0x277CE18B0]);
        sub_237C08B5C();
        if (*&v41[v46] == v74)
        {

          break;
        }

        v71 = v45;
        v47 = sub_237C08B9C();
        v49 = *v48;

        v47(&v74, 0);
        sub_237C08B6C();
        v74 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
        v50 = swift_allocObject();
        *(v50 + 16) = v61;
        *(v50 + 32) = *(v49 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
        sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
        sub_237C082BC();
        v74 = v71;
        v75 = v44;
        v51 = v58;
        sub_237C06C6C();

        v52 = v72;
        v76 = v72;
        v53 = *(v72 + 16);
        if (v53 >= *(v72 + 24) >> 1)
        {
          sub_237AC8DF4();
          v51 = v58;
          v52 = v76;
        }

        *(v52 + 16) = v53 + 1;
        v54 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v72 = v52;
        (*(v70 + 32))(v52 + v54 + *(v70 + 72) * v53, v51, v67);
      }

      *(v14 + *(v57 + 56)) = 1;
      sub_2379D9054(v14, &qword_27DE9B930, &unk_237C0E260);
      return v72;
    }

    v71 = v22;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B948, &qword_237C13CD0) + 36);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B950, &unk_237C0E270) + 36);
    v62 = v70 + 32;
    v63 = v25;
    sub_2379D9224(&qword_27DE9AA90, &qword_27DE9AA88, &unk_237C0B800, MEMORY[0x277CE18B0]);
    v59 = xmmword_237C0B660;
    v60 = v14;
    *&v61 = v24;
    while (1)
    {
      sub_237C08B5C();
      if (*(v14 + v24) == v74)
      {
        break;
      }

      v26 = sub_237C08B9C();
      v29 = *v27;
      v28 = v27[1];

      v26(&v74, 0);
      sub_237C08B6C();
      sub_2379D9224(&qword_27DE9B958, &qword_27DE9B900, &unk_237C0E248, MEMORY[0x277CE18B0]);
      v30 = v65;
      sub_237C08B5C();
      if (*&v63[v30] == v74)
      {
        goto LABEL_22;
      }

      v31 = sub_237C08B9C();
      v33 = *v32;

      v31(&v74, 0);
      sub_237C08B6C();
      v74 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v34 = swift_allocObject();
      *(v34 + 16) = v59;
      *(v34 + 32) = *(v33 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
      sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
      sub_237C082BC();
      v74 = v29;
      v75 = v28;
      v35 = i;
      sub_237C06C6C();

      v36 = v72;
      v76 = v72;
      v37 = *(v72 + 16);
      if (v37 >= *(v72 + 24) >> 1)
      {
        sub_237AC8DF4();
        v36 = v76;
      }

      *(v36 + 16) = v37 + 1;
      v38 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v72 = v36;
      (*(v70 + 32))(v36 + v38 + *(v70 + 72) * v37, v35, v67);
      --v71;
      v14 = v60;
      v24 = v61;
      if (!v71)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_237A48E68(uint64_t a1)
{
  OUTLINED_FUNCTION_144_0("sound_classifier");
  _s20PersistentParametersVMa_2(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = v7;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = v7;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = v7;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = 0;
  _s10ClassifierVMa_0(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s5ModelVMa_0(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  type metadata accessor for MLSoundClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_66_2();
  sub_237A596A4(a1, v31);
  return v1;
}

uint64_t *sub_237A48FF0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  HIDWORD(v60) = a2;
  v61 = *v4;
  v62 = a1;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v12 = OUTLINED_FUNCTION_20(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  OUTLINED_FUNCTION_144_0("sound_classifier");
  v20 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  v21 = _s20PersistentParametersVMa_2(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  v25 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = v25;
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = v25;
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = v25;
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = 0;
  _s10ClassifierVMa_0(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  _s5ModelVMa_0(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v6);
  v37 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = OUTLINED_FUNCTION_58_0();
  sub_237A596FC(v48, v49);
  OUTLINED_FUNCTION_10_11();
  sub_237A596FC(a3, v10);
  v50 = v63;
  sub_237AD54F4(v15, v10, v19);
  if (v50)
  {
    OUTLINED_FUNCTION_68_0();
    sub_237A59650();
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_29_5();
    sub_237A59650();

    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9B8B0, &qword_237C13FC0);

    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &qword_27DE9B898, &qword_237C0E0D8);
    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model, &qword_27DE9B890, &qword_237C0E0D0);
    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, &qword_27DE9B968, &qword_237C0E2C8);
    v51 = OUTLINED_FUNCTION_168(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics);
    sub_2379D9054(v51, v52, &qword_237C0DD00);
    v53 = OUTLINED_FUNCTION_168(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics);
    sub_2379D9054(v53, v54, &qword_237C0DD00);
    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter, &qword_27DE9B8D0, &qword_237C0E1E8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_29_5();
    sub_237A59650();
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v21);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_2379E8FDC(v19, v4 + v20, &qword_27DE9B8B0, &qword_237C13FC0);
    swift_endAccess();
    OUTLINED_FUNCTION_66_2();
    sub_237A596A4(v64, v58);
    *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = BYTE4(v60) & 1;
  }

  return v4;
}

uint64_t sub_237A494AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_23();
  v58 = v4;
  v5 = OUTLINED_FUNCTION_41_0();
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(v5);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_22();
  v59 = v8;
  v9 = OUTLINED_FUNCTION_41_0();
  v10 = type metadata accessor for MLSoundClassifier.ModelParameters(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  v16 = OUTLINED_FUNCTION_20(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_0();
  v61 = v17;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v60 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0 + v27, v0, &qword_27DE9B8B0, &qword_237C13FC0);
  v28 = OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_73_1(v28, v29, v22);
  if (v30)
  {
    result = sub_2379D9054(v0, &qword_27DE9B8B0, &qword_237C13FC0);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_24();
    v31 = OUTLINED_FUNCTION_140_0();
    sub_237A596A4(v31, v32);
    sub_237A49928(v26);
    if (v62)
    {
      OUTLINED_FUNCTION_0_25();
      return sub_237A59650();
    }

    sub_237A596FC(v26 + v22[5], v59);
    v34 = v22[9];
    v35 = *(v26 + v22[8]);
    v36 = *(v26 + v22[6]);
    v37 = *(v26 + v34);
    v57 = *(v26 + v34 + 8);
    v38 = (v14 + v10[7]);
    *v38 = 0u;
    v38[1] = 0u;
    OUTLINED_FUNCTION_122_0(v14 + v10[8]);
    *(v14 + v10[9]) = 32;
    v39 = OUTLINED_FUNCTION_141_0();
    sub_237A596FC(v39, v40);
    *(v14 + v10[5]) = v35;
    *(v14 + v10[6]) = v36;
    v65 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v63 = v37;
    v64 = v57;

    OUTLINED_FUNCTION_8_17();
    sub_237A59650();
    sub_2379E8FDC(&v63, v38, &qword_27DE9A998, &unk_237C0C100);
    v41 = OUTLINED_FUNCTION_166();
    sub_237B59204(v41, v42, v43);
    v44 = _s10ClassifierVMa_0(0);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
    v48 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_2379E8FDC(v60, v1 + v48, &qword_27DE9B898, &qword_237C0E0D8);
    swift_endAccess();
    sub_2379E9068(v1 + v48, v61, &qword_27DE9B898, &qword_237C0E0D8);
    OUTLINED_FUNCTION_170();
    result = OUTLINED_FUNCTION_73_1(v49, v50, v51);
    if (!v30)
    {
      sub_237B5950C(v58);
      OUTLINED_FUNCTION_0_25();
      sub_237A59650();
      OUTLINED_FUNCTION_1_24();
      sub_237A59650();
      _s5ModelVMa_0(0);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
      v56 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_2379E8FDC(v58, v1 + v56, &qword_27DE9B890, &qword_237C0E0D0);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_237A49928(uint64_t a1)
{
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v95 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v94 = &v85 - v2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v97 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v4 = &v85 - v3;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v85 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - v12;
  v14 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  v20 = a1;
  v21 = v96;
  sub_237B3BD1C();
  if (!v21)
  {
    v86 = v16;
    v88 = v10;
    v89 = v13;
    v87 = v7;
    v90 = 0;
    v96 = v4;
    if (v22)
    {
      v87 = v22;
      v23 = _s20PersistentParametersVMa_2(0);
      v24 = v89;
      sub_237A596FC(v20 + v23[5], v89);
      v25 = *(v20 + v23[8]);
      v26 = *(v20 + v23[6]);
      v27 = v20 + v23[9];
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = &v19[v14[7]];
      *v30 = 0u;
      *(v30 + 1) = 0u;
      v31 = &v19[v14[8]];
      *v31 = 0;
      v31[8] = 1;
      *&v19[v14[9]] = 32;
      sub_237A596FC(v24, v19);
      *&v19[v14[5]] = v25;
      *&v19[v14[6]] = v26;
      v104 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v102 = v28;
      LOBYTE(v103) = v29;
      v32 = v87;
      sub_237A59650();
      sub_2379E8FDC(&v102, v30, &qword_27DE9A998, &unk_237C0C100);
      sub_237A596FC(v19, v88);
      sub_237A59650();
      v33 = v90;
      v34 = sub_237B1903C(v32);
      if (v33)
      {
LABEL_4:
        sub_237A59650();

        return;
      }

      v54 = v34;
      v55 = v35;
      sub_237A59650();
      v56 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
      v57 = v92;
      swift_beginAccess();
      *(v57 + v56) = v54;

      v58 = MEMORY[0x277D84F90];
      if (!v55)
      {
        v55 = MEMORY[0x277D84F90];
      }

      v59 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess();
      *(v57 + v59) = v55;

      swift_getKeyPath();
      v60 = *(v32 + 16);
      if (v60)
      {
        v90 = 0;
        v100 = v58;
        sub_237AC8A74();
        v61 = v100;
        v62 = v96;
        v63 = *(v97 + 16);
        v64 = v32 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
        v94 = *(v97 + 72);
        v95 = v63;
        v93 = (v97 + 8);
        v65 = v91;
        v97 += 16;
        do
        {
          (v95)(v62, v64, v65);
          swift_getAtKeyPath();
          (*v93)(v62, v65);
          v67 = v98;
          v66 = v99;
          v100 = v61;
          v68 = *(v61 + 16);
          if (v68 >= *(v61 + 24) >> 1)
          {
            sub_237AC8A74();
            v65 = v91;
            v61 = v100;
          }

          *(v61 + 16) = v68 + 1;
          v69 = v61 + 16 * v68;
          *(v69 + 32) = v67;
          *(v69 + 40) = v66;
          v64 += v94;
          --v60;
          v62 = v96;
        }

        while (v60);
LABEL_14:

        v57 = v92;
LABEL_25:
        *(v57 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = sub_237B42F98(v61);

        return;
      }
    }

    else
    {
      v36 = a1;
      sub_237B3C1CC();
      v37 = v89;
      v39 = v38;
      v40 = _s20PersistentParametersVMa_2(0);
      v90 = 0;
      v41 = v40;
      sub_237A596FC(v36 + *(v40 + 20), v37);
      v42 = *(v36 + v41[8]);
      v43 = *(v36 + v41[6]);
      v44 = v36 + v41[9];
      v88 = v39;
      v45 = *v44;
      v46 = *(v44 + 8);
      v47 = v86;
      v48 = &v86[v14[7]];
      *v48 = 0u;
      *(v48 + 1) = 0u;
      v49 = v47 + v14[8];
      *v49 = 0;
      *(v49 + 8) = 1;
      *(v47 + v14[9]) = 32;
      sub_237A596FC(v37, v47);
      *(v47 + v14[5]) = v42;
      *(v47 + v14[6]) = v43;
      v104 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v102 = v45;
      v50 = v88;
      LOBYTE(v103) = v46;
      sub_237A59650();
      sub_2379E8FDC(&v102, v48, &qword_27DE9A998, &unk_237C0C100);
      sub_237A596FC(v47, v87);
      sub_237A59650();
      v51 = v90;
      v52 = sub_237B192F8(v50);
      if (v51)
      {
        goto LABEL_4;
      }

      v70 = v52;
      v71 = v53;
      sub_237A59650();
      v72 = MEMORY[0x277D84F90];
      if (v71)
      {
        v73 = v71;
      }

      else
      {
        v73 = MEMORY[0x277D84F90];
      }

      v57 = v92;
      sub_237A4C0E8(v70, v73, v36);

      KeyPath = swift_getKeyPath();
      v75 = *(v50 + 16);
      if (v75)
      {
        v90 = 0;
        v101 = v72;
        sub_237AC8A74();
        v61 = v101;
        v76 = v94;
        v77 = *(v95 + 16);
        v78 = v50 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v96 = *(v95 + 72);
        v97 = v77;
        v91 = (v95 + 8);
        v79 = v93;
        v95 += 16;
        do
        {
          (v97)(v76, v78, v79);
          v80 = KeyPath;
          swift_getAtKeyPath();
          (*v91)(v76, v79);
          v81 = v102;
          v82 = v103;
          v101 = v61;
          v83 = *(v61 + 16);
          if (v83 >= *(v61 + 24) >> 1)
          {
            sub_237AC8A74();
            v79 = v93;
            v61 = v101;
          }

          *(v61 + 16) = v83 + 1;
          v84 = v61 + 16 * v83;
          *(v84 + 32) = v81;
          *(v84 + 40) = v82;
          v78 += v96;
          --v75;
          v76 = v94;
          KeyPath = v80;
        }

        while (v75);
        goto LABEL_14;
      }
    }

    v61 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }
}

void sub_237A4A240()
{
  OUTLINED_FUNCTION_74();
  v88 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v82 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v81 = v9;
  OUTLINED_FUNCTION_41_0();
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v85 = v11;
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  v80 = v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v84 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v15);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_22();
  v89 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v21 = OUTLINED_FUNCTION_20(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  v83 = v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  v26 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_138();
  v79 = v34;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v78 - v36;
  sub_237A9A92C(v3, v25);
  OUTLINED_FUNCTION_73_1(v25, 1, v26);
  if (!v43)
  {
    OUTLINED_FUNCTION_71_1();
    v87 = v37;
    sub_237A596A4(v25, v37);
    v40 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v0 + v40, v0, &qword_27DE9B8B0, &qword_237C13FC0);
    v41 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_73_1(v41, v42, v17);
    if (v43)
    {
      sub_2379D9054(v0, &qword_27DE9B8B0, &qword_237C13FC0);
      __break(1u);
    }

    else
    {
      v44 = v0;
      OUTLINED_FUNCTION_3_24();
      v45 = v89;
      sub_237A596A4(v0, v89);
      v46 = v88;
      sub_237A49928(v45);
      if (v46)
      {
        OUTLINED_FUNCTION_0_25();
        sub_237A59650();
        OUTLINED_FUNCTION_5_18();
LABEL_28:
        sub_237A59650();
        goto LABEL_29;
      }

      v48 = v87[*(v26 + 20)];
      if (v48 != 2)
      {
        if (v48 == 1)
        {
          sub_237A4AACC(v87);
          OUTLINED_FUNCTION_0_25();
          sub_237A59650();
          OUTLINED_FUNCTION_5_18();
        }

        else
        {
          sub_2379E8AF0();
          v57 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          *v58 = 0xD00000000000003ELL;
          v58[1] = 0x8000000237C19130;
          OUTLINED_FUNCTION_52(v57, v58);
          OUTLINED_FUNCTION_0_25();
          sub_237A59650();
        }

        goto LABEL_28;
      }

      v90 = v3;
      v49 = *(v3 + 16);
      if (v49)
      {
        v50 = v0;
        v51 = *(v28 + 72);
        v52 = v49 - 1;
        v53 = v3 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + v51 * (v49 - 1);
        v54 = -v51;
        while (1)
        {
          sub_237A596FC(v53, v32);
          switch(*(v32 + *(v26 + 20)))
          {
            case 1:

              OUTLINED_FUNCTION_5_18();
              v47 = sub_237A59650();
              v44 = v50;
              goto LABEL_22;
            case 2:
              OUTLINED_FUNCTION_51_4();
              break;
            case 3:
              OUTLINED_FUNCTION_158();
              break;
            case 4:
              OUTLINED_FUNCTION_60_0();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_156();
          v55 = sub_237C0929C();

          OUTLINED_FUNCTION_5_18();
          v47 = sub_237A59650();
          if (v55)
          {
            break;
          }

          --v52;
          v53 += v54;
          if (v52 == -1)
          {
            v52 = 0;
            break;
          }
        }

        v56 = v86;
        v44 = v50;
      }

      else
      {
        v52 = 0;
LABEL_22:
        v56 = v86;
      }

      v59 = v83;
      MEMORY[0x28223BE20](v47);
      *(&v78 - 2) = &v90;
      sub_237A9D3D4(sub_237A594BC, (&v78 - 4), v52, v60 & 1, v59);
      OUTLINED_FUNCTION_73_1(v59, 1, v26);
      if (v43)
      {
        sub_2379D9054(v59, &qword_27DE9B8E8, &qword_237C0EBF0);
      }

      else
      {
        OUTLINED_FUNCTION_71_1();
        v61 = v79;
        sub_237A596A4(v59, v79);
        sub_237A4AACC(v61);
        OUTLINED_FUNCTION_5_18();
        sub_237A59650();
      }

      v63 = v84;
      v62 = v85;
      v64 = v80;
      sub_237C05A2C();
      sub_237C05A3C();
      v65 = *(v62 + 8);
      v65(v64, v56);
      v66 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_2379E9068(v44 + v66, v82, &qword_27DE9B898, &qword_237C0E0D8);
      v67 = _s10ClassifierVMa_0(0);
      v68 = OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_73_1(v68, v69, v67);
      v70 = v81;
      if (!v43)
      {
        OUTLINED_FUNCTION_67_1();
        sub_237A595B8(v71, v72, &unk_237C14110);
        sub_237C0734C();
        v65(v63, v56);
        OUTLINED_FUNCTION_0_25();
        sub_237A59650();
        OUTLINED_FUNCTION_5_18();
        sub_237A59650();
        OUTLINED_FUNCTION_1_24();
        sub_237A59650();
        _s5ModelVMa_0(0);
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
        v77 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_2379E8FDC(v70, v44 + v77, &qword_27DE9B890, &qword_237C0E0D0);
        swift_endAccess();
        goto LABEL_29;
      }
    }

    __break(1u);
    JUMPOUT(0x237A4AAB8);
  }

  sub_2379D9054(v25, &qword_27DE9B8E8, &qword_237C0EBF0);
  sub_2379E8AF0();
  v38 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v39 = 0xD00000000000001DLL;
  v39[1] = 0x8000000237C19110;
  OUTLINED_FUNCTION_52(v38, v39);
LABEL_29:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A4AACC(uint64_t a1)
{
  v168 = a1;
  v161 = sub_237C05FAC();
  OUTLINED_FUNCTION_0();
  v160 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_22();
  v162 = v7;
  OUTLINED_FUNCTION_41_0();
  v8 = sub_237C05E5C();
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_58();
  v159 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23();
  v145 = v14;
  v15 = OUTLINED_FUNCTION_41_0();
  v16 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(v15);
  v17 = OUTLINED_FUNCTION_20(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_22();
  v149 = v18;
  v19 = OUTLINED_FUNCTION_41_0();
  v147 = type metadata accessor for MLSoundClassifier.ModelParameters(v19);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_22();
  v148 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  v23 = OUTLINED_FUNCTION_20(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  v150 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v27 = OUTLINED_FUNCTION_20(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  v163 = v31;
  OUTLINED_FUNCTION_41_0();
  v164 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v171 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_58();
  v170 = v37;
  OUTLINED_FUNCTION_41_0();
  v38 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v174 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_138();
  v173 = v42;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v44);
  v46 = &v135 - v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_138();
  v175 = v48;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_124_0();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v51);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_127_0();
  v53 = _s20PersistentParametersVMa_2(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_0();
  v57 = v56 - v55;
  v58 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v157 = v2;
  sub_2379E9068(v2 + v58, v1, &qword_27DE9B8B0, &qword_237C13FC0);
  v146 = v53;
  OUTLINED_FUNCTION_73_1(v1, 1, v53);
  if (v59)
  {
    result = sub_2379D9054(v1, &qword_27DE9B8B0, &qword_237C13FC0);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_24();
    v172 = v57;
    sub_237A596A4(v1, v57);
    OUTLINED_FUNCTION_51_4();
    sub_237C05A2C();
    OUTLINED_FUNCTION_74_1();
    v60 = v174;
    v61 = v174 + 8;
    v62 = *(v174 + 8);
    v62(v3, v38);
    OUTLINED_FUNCTION_49_0();
    sub_237C05A2C();
    v63 = v175;
    OUTLINED_FUNCTION_74_1();
    v168 = v61;
    v165 = v62;
    v62(v3, v38);
    v64 = *(v60 + 16);
    v64(v46, v4, v38);
    v65 = v167;
    OUTLINED_FUNCTION_71();
    v66 = v169;
    sub_237C05CDC();
    v169 = v66;
    v67 = v38;
    v166 = v4;
    if (v66)
    {
      OUTLINED_FUNCTION_137_0();
      v174 = v60 + 16;
      v155 = v64;
      (v64)();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F0, &unk_237C0E228);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE68, &qword_237C0C110);
      OUTLINED_FUNCTION_88_0();
      v71 = *(v70 + 72);
      v167 = v67;
      v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v142 = v68;
      v140 = v73 + 2 * v71;
      v74 = swift_allocObject();
      v138 = xmmword_237C0B670;
      *(v74 + 16) = xmmword_237C0B670;
      v141 = v73;
      v75 = (v74 + v73);
      v76 = *(v69 + 48);
      *v75 = 0x7365727574616566;
      v75[1] = 0xE800000000000000;
      v77 = *(v160 + 104);
      v139 = *MEMORY[0x277CE1910];
      v78 = v161;
      (v77)(v75 + v76);
      v143 = v71;
      v144 = v69;
      OUTLINED_FUNCTION_95_0((v75 + v71));
      v137 = *MEMORY[0x277CE1920];
      (v77)(v79 + v80);
      v160 = sub_237C085AC();
      sub_237B9068C(&unk_284ABFD58);
      sub_237B9068C(&unk_284ABFE18);
      sub_237B9068C(&unk_284ABFE78);
      v81 = v162;
      v136 = *MEMORY[0x277CE1918];
      v154 = v77;
      (v77)(v162);
      sub_237C05E4C();
      v82 = v158;
      OUTLINED_FUNCTION_71();
      sub_237C05CAC();
      v173 = *(v171 + 32);
      v173(v170, v82, v164);
      v155(v156, v175, v167);
      v84 = swift_allocObject();
      *(v84 + 16) = v138;
      v85 = v81;
      v86 = (v84 + v141);
      v87 = *(v144 + 48);
      *v86 = 0x7365727574616566;
      v86[1] = 0xE800000000000000;
      v88 = v154;
      (v154)(v86 + v87, v139, v78);
      OUTLINED_FUNCTION_95_0((v86 + v143));
      v88(v89 + v90, v137, v78);
      sub_237C085AC();
      v91 = sub_237B9068C(&unk_284ABFD58);
      sub_237B9068C(&unk_284ABFE18);
      sub_237B9068C(&unk_284ABFE78);
      v88(v85, v136, v78);
      OUTLINED_FUNCTION_137_0();
      sub_237C05E4C();
      v92 = v153;
      OUTLINED_FUNCTION_71();
      sub_237C05CAC();
      OUTLINED_FUNCTION_177();

      v94 = v164;
      __swift_storeEnumTagSinglePayload(v92, 0, 1, v164);
      v95 = v92;
      v67 = v167;
    }

    else
    {
      v91 = v64;
      v94 = v164;
      v173 = *(v171 + 32);
      v173(v170, v65, v164);
      v85 = v154;
      v64(v154, v63, v67);
      v95 = v155;
      OUTLINED_FUNCTION_71();
      v83 = v169;
      sub_237C05CDC();
      if (v83)
      {
      }

      OUTLINED_FUNCTION_177();
      __swift_storeEnumTagSinglePayload(v95, v93, 1, v94);
    }

    sub_237A594DC(v95, v91);
    sub_237A4BB60();
    v97 = v96;
    v98 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    swift_beginAccess();
    *&v85[v98] = v97;

    v99 = v152;
    sub_2379E9068(v91, v152, &qword_27DE9A9A0, &qword_237C0BF60);
    OUTLINED_FUNCTION_73_1(v99, 1, v94);
    if (v59)
    {
      v167 = v67;
      sub_2379D9054(v99, &qword_27DE9A9A0, &qword_237C0BF60);
    }

    else
    {
      v100 = OUTLINED_FUNCTION_30();
      (v173)(v100);
      sub_237A4BB60();
      v102 = v101;
      v167 = v67;
      v103 = OUTLINED_FUNCTION_141_0();
      v104(v103);
      v105 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess();
      *&v85[v105] = v102;
    }

    v174 = *&v85[OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels];
    v106 = v146;
    v107 = v172;
    v108 = v149;
    sub_237A596FC(v172 + v146[5], v149);
    v109 = *(v107 + v106[8]);
    v110 = *(v107 + v106[6]);
    v111 = v107 + v106[9];
    v173 = *v111;
    LODWORD(v169) = *(v111 + 8);
    v112 = v147;
    v113 = v148;
    v114 = (v148 + *(v147 + 28));
    *v114 = 0u;
    v114[1] = 0u;
    OUTLINED_FUNCTION_122_0(v113 + v112[8]);
    *(v113 + v112[9]) = 32;
    sub_237A596FC(v108, v113);
    *(v113 + v112[5]) = v109;
    *(v113 + v112[6]) = v110;
    v178 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v176 = v173;
    v177 = v169;

    OUTLINED_FUNCTION_8_17();
    sub_237A59650();
    sub_2379E8FDC(&v176, v114, &qword_27DE9A998, &unk_237C0C100);
    v115 = v150;
    v116 = OUTLINED_FUNCTION_140_0();
    sub_237B59204(v116, v117, v118);
    v119 = _s10ClassifierVMa_0(0);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v119);
    v123 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_2379E8FDC(v115, &v85[v123], &qword_27DE9B898, &qword_237C0E0D8);
    swift_endAccess();
    v124 = &v85[v123];
    v125 = v151;
    sub_2379E9068(v124, v151, &qword_27DE9B898, &qword_237C0E0D8);
    result = OUTLINED_FUNCTION_73_1(v125, 1, v119);
    if (!v59)
    {
      v127 = v145;
      sub_237B5950C(v145);
      sub_2379D9054(v163, &qword_27DE9A9A0, &qword_237C0BF60);
      (*(v171 + 8))(v170, v94);
      v128 = v167;
      v129 = v165;
      v165(v175, v167);
      v129(v166, v128);
      OUTLINED_FUNCTION_0_25();
      sub_237A59650();
      OUTLINED_FUNCTION_1_24();
      sub_237A59650();
      _s5ModelVMa_0(0);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
      v134 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_2379E8FDC(v127, &v85[v134], &qword_27DE9B890, &qword_237C0E0D0);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_237A4BB60()
{
  OUTLINED_FUNCTION_74();
  v48 = v1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F8, &qword_237C0E238);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_23();
  v45 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  OUTLINED_FUNCTION_0();
  v41 = v6;
  v42 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B900, &unk_237C0E248);
  OUTLINED_FUNCTION_0();
  v40 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  v39 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_127_0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B908, &qword_237C0E258);
  OUTLINED_FUNCTION_0();
  v46 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  OUTLINED_FUNCTION_90_0();
  sub_237C05DEC();
  OUTLINED_FUNCTION_89();
  sub_237C05DEC();
  v49 = 0;
  v50 = 0xE000000000000000;
  OUTLINED_FUNCTION_72_2();
  sub_2379D9224(v25, &qword_27DE9ACA0, &unk_237C0E0E0, v26);
  v51 = v19;
  sub_237C05EAC();
  (*(v13 + 8))(v0, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  OUTLINED_FUNCTION_46();
  sub_237C057CC();
  swift_allocObject();
  v49 = sub_237C057BC();
  sub_237A5954C(&qword_27DE9B918, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
  sub_237A595B8(&qword_27DE9B920, MEMORY[0x277CC8710], MEMORY[0x277CC86F0]);
  v27 = v2;
  v28 = v48;
  sub_237C05F5C();

  if (v28)
  {
    (*(v16 + 8))(v51, v47);
    (*(v46 + 8))(v24, v20);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_72_2();
    sub_2379D9224(v29, v30, v31, v32);
    v33 = v39;
    OUTLINED_FUNCTION_169();
    sub_237C05EAC();
    (*(v41 + 8))(v27, v0);
    v34 = *(v16 + 16);
    v35 = v45;
    v48 = v20;
    v36 = v47;
    v34(v45, v51, v47);
    v37 = v43;
    v38 = v40;
    (*(v40 + 16))(v35 + *(v44 + 52), v33, v43);
    sub_237A48334(v35);
    sub_2379D9054(v35, &qword_27DE9B8F8, &qword_237C0E238);
    (*(v38 + 8))(v33, v37);
    (*(v16 + 8))(v51, v36);
    (*(v46 + 8))(v24, v48);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A4C0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + *(_s20PersistentParametersVMa_2(0) + 28));
  v9 = sub_237A4C2B8(a1, v7);

  sub_237A5630C(&v9);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    *(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = v9;

    v9 = sub_237A4C2B8(a2, v7);

    sub_237A5630C(&v9);

    *(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = v9;
  }

  return result;
}

void *sub_237A4C200@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = sub_237C06C4C();
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_237A4C25C(uint64_t *a1)
{

  v1 = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  return sub_237C06C5C();
}

uint64_t sub_237A4C2B8(uint64_t a1, double a2)
{
  v4 = sub_237C05ADC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v43 = a1;

  sub_237A56258(&v43);
  v13 = *(v43 + 16);
  if (v13)
  {
    v14 = a2 * 1000.0;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v42 = v16;
    v17 = *(v15 + 64);
    v35 = v43;
    v38 = (v17 + 32) & ~v17;
    v18 = v43 + v38;
    v19 = (v15 - 8);
    v40 = v15;
    v41 = MEMORY[0x277D84F90];
    v20 = *(v15 + 56);
    v36 = v20;
    v37 = (v15 + 16);
    do
    {
      v42(v12, v18, v7);
      sub_237C06C7C();
      v21 = objc_allocWithZone(MEMORY[0x277CB8398]);
      v22 = sub_237A5584C(v6);
      v23 = v22;
      if (v22)
      {
        v24 = [v22 length] * 1000.0;
        v25 = [v23 fileFormat];
        [v25 sampleRate];
        v27 = v26;

        if (v14 <= v24 / v27)
        {
          v42(v39, v12, v7);
          v28 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237BC122C();
            v28 = v32;
          }

          v29 = v28;
          v30 = *(v28 + 16);
          v41 = v29;
          if (v30 >= *(v29 + 24) >> 1)
          {
            sub_237BC122C();
            v41 = v33;
          }

          (*v19)(v12, v7);
          v31 = v41;
          *(v41 + 16) = v30 + 1;
          v20 = v36;
          (*v37)(v31 + v38 + v30 * v36, v39, v7);
        }

        else
        {
          (*v19)(v12, v7);
        }
      }

      else
      {
        (*v19)(v12, v7);
      }

      v18 += v20;
      --v13;
    }

    while (v13);

    return v41;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void sub_237A4C690()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_87();
  v0 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  sub_237C06C7C();
  v7 = sub_237C05A8C();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v6, v0);
  sub_237C06C7C();
  v11 = sub_237C05A8C();
  v13 = v12;
  v10(v6, v0);
  if (v7 != v11 || v9 != v13)
  {
    OUTLINED_FUNCTION_105_0();
    sub_237C0929C();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A4C7F4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 1;
  switch(v2)
  {
    case 1:
      v4 = *(*(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) + 16);
      v5 = *(*(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) + 16);
      result = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        __break(1u);
        JUMPOUT(0x237A4C868);
      }

      return result;
    case 2:
      return result;
    case 3:
      result = 0;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_237A4C87C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_83();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  v9 = _s20PersistentParametersVMa_2(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v1 + v14, v3, &qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_73_1(v3, 1, v9);
  if (v15)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_3_24();
  v16 = OUTLINED_FUNCTION_138_0();
  sub_237A596A4(v16, v17);
  v18 = *(*(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) + 16);
  v3 = *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  v19 = *(v3 + 16);
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v21 <= a1)
  {
    OUTLINED_FUNCTION_0_25();
    sub_237A59650();
    return 0;
  }

  v60 = v21;
  v22 = *(v13 + v9[6]);
  v23 = *(v13 + v9[7]);
  v24 = (v13 + v9[9]);
  v25 = *v24;
  v49 = *(v24 + 8);
  v26 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters;
  v27 = *(v26 + *(type metadata accessor for MLTrainingSessionParameters(0) + 20));
  v20 = __OFADD__(a1, v27);
  v28 = a1 + v27;
  v29 = v20;
  v30 = a1 - v18;
  if (a1 < v18)
  {
    if ((v29 & 1) == 0)
    {
      if (v18 >= v28)
      {
        v18 = v28;
      }

      if (v18 >= a1)
      {
        v31 = OUTLINED_FUNCTION_58_0();
        sub_237A482A0(v31, v32);
        v3 = v33;
        *&v50 = v22;
        *(&v50 + 1) = v23;
        v51 = 0;
        v52 = v60;
        v53 = v25;
        v54 = v49;
        v37 = sub_237A4CBF8(v33, v34, v35, v36, &v50);
        if (!v2)
        {
          v38 = v37;
          v48 = v18;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          sub_237A96A1C(v38);
          swift_endAccess();
          goto LABEL_23;
        }

LABEL_21:
        OUTLINED_FUNCTION_0_25();
        sub_237A59650();
        return swift_unknownObjectRelease();
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v29)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v40 = v60;
  if (v60 < v28)
  {
    v28 = v60;
  }

  v48 = v28;
  v41 = v28 - v18;
  if (__OFSUB__(v28, v18))
  {
    goto LABEL_29;
  }

  if (v41 < v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_237A482A0(v30, v41);
  v3 = v42;
  *&v55 = v22;
  *(&v55 + 1) = v23;
  v56 = v18;
  v57 = v40;
  v58 = v25;
  v59 = v49;
  v46 = sub_237A4CBF8(v42, v43, v44, v45, &v55);
  if (v2)
  {
    goto LABEL_21;
  }

  v47 = v46;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A96A1C(v47);
  swift_endAccess();
LABEL_23:
  OUTLINED_FUNCTION_0_25();
  sub_237A59650();
  result = v48 - a1;
  if (__OFSUB__(v48, a1))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_2379D9054(v3, &qword_27DE9B8B0, &qword_237C13FC0);
    __break(1u);
  }

  return result;
}

unint64_t sub_237A4CBF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  v10 = swift_unknownObjectRetain();
  sub_237A55308(v10, a2, a3, a4, a5, &v13);
  if (!v5)
  {
    sub_237A9726C();
    a4 = v11;
  }

  return a4;
}

uint64_t sub_237A4CCA0(uint64_t a1, uint64_t a2)
{

  sub_237A5556C(v5, a2, &v8);
  if (!v3)
  {
    sub_237A9726C();
    v2 = v6;
  }

  return v2;
}

uint64_t sub_237A4CD30()
{
  OUTLINED_FUNCTION_9();
  v1[39] = v2;
  v1[40] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  OUTLINED_FUNCTION_20(v3);
  v1[41] = OUTLINED_FUNCTION_134_0();
  v1[42] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v4);
  v1[43] = OUTLINED_FUNCTION_134_0();
  v1[44] = swift_task_alloc();
  v5 = type metadata accessor for TrainingTablePrinter(0);
  v1[45] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[46] = v6;
  v1[47] = *(v7 + 64);
  v1[48] = OUTLINED_FUNCTION_134_0();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8D0, &qword_237C0E1E8);
  OUTLINED_FUNCTION_20(v8);
  v1[51] = OUTLINED_FUNCTION_134_0();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v9);
  v1[55] = OUTLINED_FUNCTION_19();
  v10 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v10);
}

void sub_237A4CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v15 = *(v14 + 440);
  v16 = *(v14 + 320);
  v17 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v16 + v17, v15, &qword_27DE9B8B0, &qword_237C13FC0);
  _s20PersistentParametersVMa_2(0);
  v18 = OUTLINED_FUNCTION_117_0();
  LODWORD(v16) = __swift_getEnumTagSinglePayload(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_30();
  sub_2379D9054(v21, v22, &qword_237C13FC0);
  if (v16 == 1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = *(v14 + 312);
  v24 = *(v14 + 320);
  v25 = v24 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters;
  v26 = type metadata accessor for MLTrainingSessionParameters(0);
  v27 = *(v25 + *(v26 + 20));
  *(v14 + 448) = v27;
  v28 = __OFADD__(v23, v27);
  v29 = v23 + v27;
  v30 = v28;
  *(v14 + 280) = v29;
  *(v14 + 288) = v30;
  if (v28)
  {
    goto LABEL_25;
  }

  v31 = *(v25 + *(v26 + 28));
  *(v14 + 456) = v31;
  v32 = __OFSUB__(v31, v23);
  v33 = v31 - v23;
  v34 = v32;
  *(v14 + 296) = v33;
  *(v14 + 304) = v34;
  if (v32)
  {
    goto LABEL_26;
  }

  v35 = *(v14 + 432);
  v36 = *(v14 + 360);
  type metadata accessor for EventCollector();
  swift_allocObject();
  v37 = sub_237AD988C();
  *(v14 + 464) = v37;
  v38 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v24 + v38, v35, &qword_27DE9B8D0, &qword_237C0E1E8);
  LODWORD(v36) = __swift_getEnumTagSinglePayload(v35, 1, v36);
  sub_2379D9054(v35, &qword_27DE9B8D0, &qword_237C0E1E8);
  if (v36 != 1)
  {
    goto LABEL_13;
  }

  v39 = *(v14 + 416);
  v40 = *(v14 + 424);
  v41 = *(v14 + 360);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237B4AD2C();
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v40, v24 + v38, &qword_27DE9B8D0, &qword_237C0E1E8);
  swift_endAccess();
  sub_2379E9068(v24 + v38, v39, &qword_27DE9B8D0, &qword_237C0E1E8);
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v45, v46, v47) == 1)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_237BAC5E0();
  OUTLINED_FUNCTION_16_9();
  sub_237A59650();
LABEL_13:
  v48 = *(v14 + 360);
  sub_2379E9068(v24 + v38, *(v14 + 408), &qword_27DE9B8D0, &qword_237C0E1E8);
  v49 = OUTLINED_FUNCTION_117_0();
  if (__swift_getEnumTagSinglePayload(v49, v50, v48) == 1)
  {
    sub_2379D9054(*(v14 + 408), &qword_27DE9B8D0, &qword_237C0E1E8);
    sub_237C090DC();
    OUTLINED_FUNCTION_54_2();
    return;
  }

  v51 = *(v14 + 320);
  OUTLINED_FUNCTION_30_7();
  sub_237A596A4(v52, v53);
  v54 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v55 = *(v51 + v54);
  *(v14 + 472) = v55;
  v56 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  if (*(v55 + 16))
  {
    v57 = *(v14 + 328);
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v51 + v56, v57, &qword_27DE9B898, &qword_237C0E0D8);
    v58 = _s10ClassifierVMa_0(0);
    if (__swift_getEnumTagSinglePayload(v57, 1, v58) != 1)
    {
      v59 = *(v14 + 384);
      v60 = *(v14 + 368);
      v61 = *(v14 + 320);
      v62 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      *(v14 + 512) = *(v61 + v62);
      OUTLINED_FUNCTION_69_1();
      v63 = OUTLINED_FUNCTION_34_1();
      sub_237A596FC(v63, v64);
      v65 = (*(v60 + 80) + 24) & ~*(v60 + 80);
      v66 = swift_allocObject();
      *(v14 + 520) = v66;
      *(v66 + 16) = v37;
      OUTLINED_FUNCTION_30_7();
      sub_237A596A4(v59, v67 + v65);
      OUTLINED_FUNCTION_125_0(&dword_237C0E1F0);

      v68 = swift_task_alloc();
      *(v14 + 528) = v68;
      *v68 = v14;
      v68[1] = sub_237A4D7AC;
      OUTLINED_FUNCTION_54_2();

      v74(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
      return;
    }

    goto LABEL_28;
  }

  v77 = *(v14 + 336);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v51 + v56, v77, &qword_27DE9B898, &qword_237C0E0D8);
  _s10ClassifierVMa_0(0);
  v78 = OUTLINED_FUNCTION_117_0();
  if (__swift_getEnumTagSinglePayload(v78, v79, v80) == 1)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v82 = *(v14 + 392);
  v81 = *(v14 + 400);
  v83 = *(v14 + 368);
  v84 = *(v14 + 320);
  v85 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  *(v14 + 480) = *(v84 + v85);
  OUTLINED_FUNCTION_69_1();
  sub_237A596FC(v81, v82);
  v86 = (*(v83 + 80) + 24) & ~*(v83 + 80);
  v87 = swift_allocObject();
  *(v14 + 488) = v87;
  *(v87 + 16) = v37;
  OUTLINED_FUNCTION_30_7();
  sub_237A596A4(v82, v88 + v86);
  OUTLINED_FUNCTION_125_0(&dword_237C0E208);

  v89 = swift_task_alloc();
  *(v14 + 496) = v89;
  *v89 = v14;
  v89[1] = sub_237A4D524;
  OUTLINED_FUNCTION_54_2();

  v94(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237A4D524()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_20_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1_24();
    sub_237A59650();
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A4D66C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[44];
  v2 = v0[40];
  _s5ModelVMa_0(0);
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v1, v2 + v7, &qword_27DE9B890, &qword_237C0E0D0);
  v8 = swift_endAccess();
  OUTLINED_FUNCTION_82_1(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237C0B660;
  v10 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v10;
  *(v9 + 32) = 3;
  OUTLINED_FUNCTION_148_0("event: %lu", v11, v12, &dword_2379D3000);

  v13 = swift_task_alloc();
  v0[70] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_58_2(v13);

  return sub_237A4F11C(v14);
}

uint64_t sub_237A4D7AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_20_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 536) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1_24();
    sub_237A59650();
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A4D91C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[43];
  v2 = v0[40];
  _s5ModelVMa_0(0);
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v1, v2 + v7, &qword_27DE9B890, &qword_237C0E0D0);
  v8 = swift_endAccess();
  OUTLINED_FUNCTION_82_1(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237C0B660;
  v10 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v10;
  *(v9 + 32) = 3;
  OUTLINED_FUNCTION_148_0("event: %lu", v11, v12, &dword_2379D3000);

  v13 = swift_task_alloc();
  v0[70] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_58_2(v13);

  return sub_237A4F11C(v14);
}

uint64_t sub_237A4DA5C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 568) = v3;

  v4 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_237A4DB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v24 = v14[43];
  v25 = v14[42];
  v26 = v14[41];

  OUTLINED_FUNCTION_16_9();
  sub_237A59650();

  OUTLINED_FUNCTION_54_2();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, a12, a13, a14);
}

uint64_t sub_237A4DC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_106_0();
  v26 = v16[44];
  v27 = v16[43];
  v28 = v16[41];
  v29 = v16[63];

  OUTLINED_FUNCTION_16_9();
  sub_237A59650();
  OUTLINED_FUNCTION_1_24();
  sub_237A59650();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, v28, v29, a14, a15, a16);
}

uint64_t sub_237A4DD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_106_0();
  v26 = v16[44];
  v27 = v16[43];
  v28 = v16[42];
  v29 = v16[67];

  OUTLINED_FUNCTION_16_9();
  sub_237A59650();
  OUTLINED_FUNCTION_1_24();
  sub_237A59650();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, v28, v29, a14, a15, a16);
}

uint64_t sub_237A4DE58()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v0;
  v1[3] = v5;
  v1[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[7] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[8] = v8;
  v1[9] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v1[10] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[11] = v10;
  v1[12] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[13] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[14] = v12;
  v1[15] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v1[16] = v13;
  OUTLINED_FUNCTION_1(v13);
  v1[17] = v14;
  v1[18] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v1[19] = v15;
  OUTLINED_FUNCTION_20(v15);
  v1[20] = OUTLINED_FUNCTION_19();
  v1[2] = v3;
  v16 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_237A4E04C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[20];
  v2 = v0[6];
  v3 = _s10ClassifierVMa_0(0);
  sub_2379E9068(v2 + *(v3 + 20), v1, &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v0[11] + 32))(v0[12], v0[20], v0[10]);
    v4 = swift_task_alloc();
    v0[23] = v4;
    v5 = OUTLINED_FUNCTION_62_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_7_17();
    sub_2379D9224(v7, v8, &qword_237C0E218, v9);
    OUTLINED_FUNCTION_159();
    *v4 = v10;
    v4[1] = sub_237A4E334;
    OUTLINED_FUNCTION_162();

    return MEMORY[0x282115360](v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_35_4();
    v13(v12);
    v14 = swift_task_alloc();
    v0[21] = v14;
    v15 = OUTLINED_FUNCTION_62_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_7_17();
    sub_2379D9224(v17, v18, &qword_237C0E218, v19);
    OUTLINED_FUNCTION_159();
    *v14 = v20;
    v14[1] = sub_237A4E23C;
    OUTLINED_FUNCTION_162();

    return MEMORY[0x282115308](v21);
  }
}

uint64_t sub_237A4E23C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A4E334()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A4E42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[15];
  v14 = v12[13];
  (*(v12[17] + 8))(v12[18], v12[16]);
  OUTLINED_FUNCTION_10_11();
  v15 = OUTLINED_FUNCTION_83();
  sub_237A596FC(v15, v16);
  v17 = _s5ModelVMa_0(0);
  v18 = OUTLINED_FUNCTION_84_1(v17);
  v19(v18, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_237A4E530()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237A4E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = *(v12 + 72);
  v14 = *(v12 + 56);
  v15 = OUTLINED_FUNCTION_38();
  v16(v15);
  OUTLINED_FUNCTION_10_11();
  v17 = OUTLINED_FUNCTION_83();
  sub_237A596FC(v17, v18);
  v19 = _s5ModelVMa_0(0);
  v20 = OUTLINED_FUNCTION_84_1(v19);
  v21(v20, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_237A4E6E0()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237A4E7D0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v1[6] = v6;
  v1[7] = v0;
  v1[4] = v7;
  v1[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[8] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[9] = v10;
  v1[10] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v1[11] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[12] = v12;
  v1[13] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[14] = v13;
  OUTLINED_FUNCTION_1(v13);
  v1[15] = v14;
  v1[16] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v1[17] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[18] = v16;
  v1[19] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v1[20] = v17;
  OUTLINED_FUNCTION_20(v17);
  v1[21] = OUTLINED_FUNCTION_19();
  v1[2] = v5;
  v1[3] = v3;
  v18 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_237A4E9D0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[21];
  v2 = v0[7];
  v3 = _s10ClassifierVMa_0(0);
  sub_2379E9068(v2 + *(v3 + 20), v1, &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[12] + 32))(v0[13], v5, v0[11]);
    v6 = swift_task_alloc();
    v0[24] = v6;
    v7 = OUTLINED_FUNCTION_62_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_7_17();
    sub_2379D9224(v9, v10, &qword_237C0E218, v11);
    OUTLINED_FUNCTION_159();
    *v6 = v12;
    v6[1] = sub_237A4ECC0;
    v14 = OUTLINED_FUNCTION_92_0(v13, v0[10]);

    return MEMORY[0x282115358](v14);
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v5, v0[17]);
    v15 = swift_task_alloc();
    v0[22] = v15;
    v16 = OUTLINED_FUNCTION_62_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    OUTLINED_FUNCTION_7_17();
    sub_2379D9224(v18, v19, &qword_237C0E218, v20);
    OUTLINED_FUNCTION_159();
    *v15 = v21;
    v15[1] = sub_237A4EBC8;
    v23 = OUTLINED_FUNCTION_92_0(v22, v0[16]);

    return MEMORY[0x282115300](v23);
  }
}

uint64_t sub_237A4EBC8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A4ECC0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A4EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[16];
  v14 = v12[14];
  (*(v12[18] + 8))(v12[19], v12[17]);
  OUTLINED_FUNCTION_10_11();
  v15 = OUTLINED_FUNCTION_83();
  sub_237A596FC(v15, v16);
  v17 = _s5ModelVMa_0(0);
  v18 = OUTLINED_FUNCTION_84_1(v17);
  v19(v18, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_237A4EEBC()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237A4EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = OUTLINED_FUNCTION_38();
  v16(v15);
  OUTLINED_FUNCTION_10_11();
  v17 = OUTLINED_FUNCTION_83();
  sub_237A596FC(v17, v18);
  v19 = _s5ModelVMa_0(0);
  v20 = OUTLINED_FUNCTION_84_1(v19);
  v21(v20, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_237A4F06C()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237A4F11C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_237C06A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237A4F1DC);
}

uint64_t sub_237A4F1DC()
{
  OUTLINED_FUNCTION_106_0();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_237C06A1C();
  sub_237B1A15C(v2);
  OUTLINED_FUNCTION_176();
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_62_2();
  v4(v5);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_46_3();
    sub_237B19FFC(v6, 3);
  }

  OUTLINED_FUNCTION_123_0();
  sub_237C06A2C();
  sub_237B1A15C(v2);
  OUTLINED_FUNCTION_176();
  v7 = OUTLINED_FUNCTION_62_2();
  v4(v7);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_46_3();
    sub_237B19FFC(v8, 5);
  }

  OUTLINED_FUNCTION_123_0();
  sub_237C069EC();
  sub_237B1A15C(v2);
  OUTLINED_FUNCTION_176();
  v9 = OUTLINED_FUNCTION_62_2();
  v4(v9);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_46_3();
    sub_237B19FFC(v10, 0);
  }

  OUTLINED_FUNCTION_123_0();
  sub_237C06A0C();
  sub_237B1A15C(v2);
  OUTLINED_FUNCTION_176();
  v11 = OUTLINED_FUNCTION_62_2();
  v4(v11);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_46_3();
    sub_237B19FFC(v12, 4);
  }

  v13 = OUTLINED_FUNCTION_129_0();

  return v14(v13);
}

uint64_t sub_237A4F350()
{
  OUTLINED_FUNCTION_9();
  v1[48] = v0;
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_20(v2);
  v1[49] = OUTLINED_FUNCTION_19();
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v1[50] = v3;
  OUTLINED_FUNCTION_20(v3);
  v1[51] = OUTLINED_FUNCTION_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v4);
  v1[52] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v1[53] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[54] = v6;
  v1[55] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  v1[56] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[57] = v8;
  v1[58] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v1[59] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[60] = v10;
  v1[61] = OUTLINED_FUNCTION_134_0();
  v1[62] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  OUTLINED_FUNCTION_20(v11);
  v1[63] = OUTLINED_FUNCTION_134_0();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v12);
  v1[66] = OUTLINED_FUNCTION_19();
  v13 = _s5ModelVMa_0(0);
  v1[67] = v13;
  OUTLINED_FUNCTION_20(v13);
  v1[68] = OUTLINED_FUNCTION_19();
  v14 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_237A4F5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v15 = v14[66];
  v16 = v14[48];
  v17 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v16 + v17, v15, &qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v18, v19, v20) == 1)
  {
    sub_2379D9054(v14[66], &qword_27DE9B890, &qword_237C0E0D0);
    OUTLINED_FUNCTION_31_5();
    a10 = v22;
    a11 = v21;

    OUTLINED_FUNCTION_54_2();
  }

  else
  {
    v31 = v14[48];
    sub_237A596A4(v14[66], v14[68]);
    v32 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    v14[69] = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v14[70] = *(v31 + v32);
    OUTLINED_FUNCTION_125_0(&dword_237C0E118);

    v33 = swift_task_alloc();
    v14[71] = v33;
    *v33 = v14;
    v33[1] = sub_237A4F7CC;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_54_2();
  }

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237A4F7CC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 576) = v6;
  *(v7 + 584) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_237A4F8F8()
{
  v1 = *(v0 + 576);
  KeyPath = swift_getKeyPath();
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = *(v0 + 576);
    v94 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v6 = v94;
    OUTLINED_FUNCTION_119_0();
    v8 = v5 + v7;
    OUTLINED_FUNCTION_171();
    do
    {
      OUTLINED_FUNCTION_137_0();
      v91();
      v9 = KeyPath;
      swift_getAtKeyPath();
      v10 = OUTLINED_FUNCTION_87_0();
      v11(v10);
      v12 = *(v0 + 288);
      v13 = *(v0 + 296);
      v15 = *(v94 + 16);
      v14 = *(v94 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_106(v14);
        sub_237AC8A74();
      }

      *(v94 + 16) = v15 + 1;
      v16 = v94 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v8 += v89;
      --v3;
      KeyPath = v9;
    }

    while (v3);

    v4 = MEMORY[0x277D84F90];
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v17 = *(v0 + 552);
  v18 = *(v0 + 384);
  *(v0 + 352) = v6;
  v19 = *(v18 + v17);
  v20 = swift_getKeyPath();
  v21 = *(v19 + 16);
  if (v21)
  {

    sub_237AC8A74();
    v22 = v4;
    OUTLINED_FUNCTION_119_0();
    v24 = v19 + v23;
    OUTLINED_FUNCTION_171();
    do
    {
      v25 = OUTLINED_FUNCTION_87_0();
      (v91)(v25);
      v26 = v20;
      swift_getAtKeyPath();
      v27 = OUTLINED_FUNCTION_140_0();
      v28(v27);
      v29 = *(v0 + 304);
      v30 = *(v0 + 312);
      v32 = *(v4 + 16);
      v31 = *(v4 + 24);
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_106(v31);
        sub_237AC8A74();
      }

      *(v4 + 16) = v32 + 1;
      v33 = v4 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v24 += v89;
      --v21;
      v20 = v26;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v34 = *(v0 + 520);
  v35 = *(v0 + 480);
  v36 = *(v0 + 384);
  *(v0 + 360) = v22;
  v37 = OUTLINED_FUNCTION_34_1();
  *(v0 + 592) = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  OUTLINED_FUNCTION_137_0();
  *(v0 + 600) = sub_2379D9224(v39, v40, v41, v42);
  sub_237C06FBC();
  *(v0 + 608) = *(v35 + 32);
  *(v0 + 616) = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v43 = OUTLINED_FUNCTION_37_0();
  v44(v43);
  *(v0 + 624) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  swift_storeEnumTagMultiPayload();
  *(v0 + 632) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v45 = type metadata accessor for MLClassifierMetrics(0);
  *(v0 + 640) = v45;
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  v49 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v34, v36 + v49, &qword_27DE9B660, &qword_237C0DD00);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles;
  v51 = *(v36 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  v52 = &unk_27DEAC000;
  if (!*(v51 + 16) || (v53 = *(v0 + 384), v54 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures, swift_beginAccess(), *(*(v53 + v54) + 16)))
  {
LABEL_17:
    v55 = *(v0 + 384);

    v56 = v52[403];
    *(v0 + 648) = v56;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v57 = *(v55 + v56);
    *(v0 + 656) = v57;
    if (*(v57 + 16))
    {

      v58 = swift_task_alloc();
      *(v0 + 664) = v58;
      *v58 = v0;
      v58[1] = sub_237A50170;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_147_0();

      __asm { BR              X3 }
    }

    v61 = *(v0 + 504);
    v62 = *(v0 + 384);
    OUTLINED_FUNCTION_4_21();
    sub_237A59650();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v45);
    v66 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_2379E8FDC(v61, v62 + v66, &qword_27DE9B660, &qword_237C0DD00);
    swift_endAccess();
    OUTLINED_FUNCTION_31_5();

    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_147_0();

    __asm { BRAA            X3, X16 }
  }

  v85 = v45;
  v86 = v54;
  v87 = v53;
  v69 = *(v0 + 416);
  v70 = *(v0 + 384);
  v71 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v70 + v71, v69, &qword_27DE9B8B0, &qword_237C13FC0);
  v72 = _s20PersistentParametersVMa_2(0);
  result = __swift_getEnumTagSinglePayload(v69, 1, v72);
  if (result != 1)
  {
    v93 = *(v0 + 584);
    v74 = *(v0 + 408);
    v75 = *(v0 + 416);
    v76 = *(v0 + 392);
    v77 = *(v0 + 400);

    sub_237A596FC(v75 + v72[5], v76);
    v78 = v72[9];
    v88 = *(v75 + v72[8]);
    v79 = *(v75 + v72[6]);
    v92 = *(v75 + v78);
    v90 = *(v75 + v78 + 8);
    v80 = (v74 + v77[7]);
    *v80 = 0u;
    v80[1] = 0u;
    OUTLINED_FUNCTION_122_0(v74 + v77[8]);
    *(v74 + v77[9]) = 32;
    sub_237A596FC(v76, v74);
    *(v74 + v77[5]) = v88;
    *(v74 + v77[6]) = v79;
    *(v0 + 88) = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    *(v0 + 64) = v92;
    *(v0 + 72) = v90;
    OUTLINED_FUNCTION_8_17();
    sub_237A59650();
    sub_2379E8FDC(v0 + 64, v80, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_0_25();
    sub_237A59650();
    sub_237A96C5C(v74, *(*(v36 + v50) + 16), v0 + 16);
    v81 = sub_237A4CCA0(v51, v0 + 16);
    if (v93)
    {
      OUTLINED_FUNCTION_4_21();
      sub_237A59650();

      OUTLINED_FUNCTION_80_1();

      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_147_0();

      __asm { BRAA            X2, X16 }
    }

    v84 = v81;

    *(v87 + v86) = v84;
    v52 = &unk_27DEAC000;
    v45 = v85;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A50170()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 672) = v6;
  *(v7 + 680) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_237A5029C()
{
  v1 = v0[84];
  KeyPath = swift_getKeyPath();
  v3 = *(v1 + 16);
  v4 = v0[84];
  v5 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = v0[57];
    v54 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v7 = v54;
    OUTLINED_FUNCTION_119_0();
    v9 = v4 + v8;
    v49 = *(v6 + 72);
    v51 = v10;
    do
    {
      OUTLINED_FUNCTION_137_0();
      v51();
      v11 = KeyPath;
      swift_getAtKeyPath();
      v12 = OUTLINED_FUNCTION_87_0();
      v13(v12);
      v14 = v0[40];
      v15 = v0[41];
      v17 = *(v54 + 16);
      v16 = *(v54 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_106(v16);
        sub_237AC8A74();
      }

      *(v54 + 16) = v17 + 1;
      v18 = v54 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v9 += v49;
      --v3;
      KeyPath = v11;
    }

    while (v3);

    v5 = MEMORY[0x277D84F90];
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v19 = v0[81];
  v20 = v0[48];
  v0[46] = v7;
  v21 = *(v20 + v19);
  v22 = swift_getKeyPath();
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = v0[54];

    sub_237AC8A74();
    v25 = v5;
    OUTLINED_FUNCTION_119_0();
    v27 = v21 + v26;
    v50 = *(v24 + 72);
    v52 = v28;
    do
    {
      v29 = OUTLINED_FUNCTION_87_0();
      v52(v29);
      v30 = v22;
      swift_getAtKeyPath();
      v31 = OUTLINED_FUNCTION_140_0();
      v32(v31);
      v33 = v0[42];
      v34 = v0[43];
      v36 = *(v5 + 16);
      v35 = *(v5 + 24);
      if (v36 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_106(v35);
        sub_237AC8A74();
      }

      *(v5 + 16) = v36 + 1;
      v37 = v5 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      v27 += v50;
      --v23;
      v22 = v30;
    }

    while (v23);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v53 = v0[80];
  v38 = v0[76];
  v39 = v0[64];
  v40 = v0[48];
  v0[47] = v25;
  sub_237C06FBC();
  OUTLINED_FUNCTION_4_21();
  sub_237A59650();
  v41 = OUTLINED_FUNCTION_140_0();
  v38(v41);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v53);
  v45 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v39, v40 + v45, &qword_27DE9B660, &qword_237C0DD00);
  swift_endAccess();
  OUTLINED_FUNCTION_31_5();

  v46 = OUTLINED_FUNCTION_136_0();

  return v47(v46);
}

uint64_t sub_237A506DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_4_21();
  sub_237A59650();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_179();

  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_54_2();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237A507B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_4_21();
  sub_237A59650();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_179();

  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_54_2();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237A5088C()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = _s5ModelVMa_0(0);
  v1[8] = v5;
  OUTLINED_FUNCTION_20(v5);
  v1[9] = OUTLINED_FUNCTION_19();
  v6 = sub_237C074BC();
  v1[10] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  v1[13] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[16] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[19] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v1[22] = v14;
  OUTLINED_FUNCTION_20(v14);
  v1[23] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v1[24] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[25] = v16;
  v1[26] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  v1[27] = v17;
  OUTLINED_FUNCTION_1(v17);
  v1[28] = v18;
  v1[29] = OUTLINED_FUNCTION_134_0();
  v1[30] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v1[31] = v19;
  OUTLINED_FUNCTION_1(v19);
  v1[32] = v20;
  v1[33] = OUTLINED_FUNCTION_19();
  v21 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v21);
}

uint64_t sub_237A50BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v15[34] = *(v15[4] + 16);
  sub_237BC194C();
  v15[35] = 0;
  v15[36] = v16;
  if (v15[34])
  {
    OUTLINED_FUNCTION_103_0();
    v17();
    sub_237C08A4C();
    OUTLINED_FUNCTION_40_5();
    v29 = v15[7];
    v28 = v15[8];
    sub_237C06C7C();
    sub_2379E9068(v29 + *(v28 + 20), v14, &qword_27DE9A790, &qword_237C0A710);
    OUTLINED_FUNCTION_62_2();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_115_0();
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_35_4();
      v32(v31);
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_41_4(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_11_14(v34);
      OUTLINED_FUNCTION_54_2();

      return MEMORY[0x2821153B0](v36);
    }

    else
    {
      v38 = OUTLINED_FUNCTION_39_3();
      v39(v38);
      v40 = swift_task_alloc();
      v41 = OUTLINED_FUNCTION_42_1(v40);
      *v41 = v42;
      OUTLINED_FUNCTION_12_13(v41);
      OUTLINED_FUNCTION_54_2();

      return MEMORY[0x2821153A0](v43);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_27();
    v45 = v18;

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_54_2();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, v45, a11, a12, a13, a14);
  }
}

uint64_t sub_237A50E7C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A50F74()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A517F4()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = _s5ModelVMa_1(0);
  v1[8] = v5;
  OUTLINED_FUNCTION_20(v5);
  v1[9] = OUTLINED_FUNCTION_19();
  v6 = sub_237C074BC();
  v1[10] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  v1[13] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[16] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[19] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v1[22] = v14;
  OUTLINED_FUNCTION_20(v14);
  v1[23] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v1[24] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[25] = v16;
  v1[26] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  v1[27] = v17;
  OUTLINED_FUNCTION_1(v17);
  v1[28] = v18;
  v1[29] = OUTLINED_FUNCTION_134_0();
  v1[30] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v1[31] = v19;
  OUTLINED_FUNCTION_1(v19);
  v1[32] = v20;
  v1[33] = OUTLINED_FUNCTION_19();
  v21 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v21);
}

uint64_t sub_237A51B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v14[34] = *(v14[4] + 16);
  sub_237BC194C();
  v14[35] = 0;
  v14[36] = v15;
  if (v14[34])
  {
    OUTLINED_FUNCTION_103_0();
    v16();
    sub_237C08A4C();
    OUTLINED_FUNCTION_40_5();
    sub_237C06C7C();
    v27 = OUTLINED_FUNCTION_128();
    sub_2379E9068(v27, v28, v29, v30);
    OUTLINED_FUNCTION_62_2();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_115_0();
    if (v31)
    {
      v32 = OUTLINED_FUNCTION_35_4();
      v33(v32);
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_41_4(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_11_14(v35);
      OUTLINED_FUNCTION_54_2();

      return MEMORY[0x2821153B0](v37);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_39_3();
      v40(v39);
      v41 = swift_task_alloc();
      v42 = OUTLINED_FUNCTION_42_1(v41);
      *v42 = v43;
      OUTLINED_FUNCTION_12_13(v42);
      OUTLINED_FUNCTION_54_2();

      return MEMORY[0x2821153A0](v44);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_27();
    v46 = v17;

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_54_2();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, v46, a11, a12, a13, a14);
  }
}

uint64_t sub_237A51DDC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A51ED4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A52388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v29 = *(v14 + 304);
  OUTLINED_FUNCTION_114_0();
  v19();
  (*(v18 + 8))(v16, v17);

  (*(v12 + 8))(v13, v15);
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_237A52854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v29 = *(v14 + 320);
  OUTLINED_FUNCTION_114_0();
  v19();
  (*(v18 + 8))(v16, v17);

  (*(v12 + 8))(v13, v15);
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_237A529A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  return sub_237C06E1C();
}

uint64_t sub_237A52A7C(_BYTE *a1, _BYTE *a2)
{
  if (*a1 == 1 && *a2 == 2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void sub_237A52AB0()
{
  OUTLINED_FUNCTION_74();
  v82 = v1;
  v80 = v0;
  v6 = v5;
  v83[3] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  OUTLINED_FUNCTION_20(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12();
  v79 = sub_237C05E7C();
  OUTLINED_FUNCTION_0();
  v75 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v74 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_124_0();
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v76 = v18;
  v77 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_0();
  v73 = v19;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_58();
  v78 = v21;
  OUTLINED_FUNCTION_41_0();
  v81 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x28223BE20](v30);
  v33 = &v70 - v32;
  v34 = *v6;
  if (v34 != 2)
  {
    if (v34 != 1)
    {
      goto LABEL_14;
    }

    v35 = v31;
    OUTLINED_FUNCTION_51_4();
    sub_237C05A2C();
    OUTLINED_FUNCTION_74_1();
    v36 = *(v23 + 8);
    v37 = v81;
    v36(v2, v81);
    OUTLINED_FUNCTION_49_0();
    sub_237C05A2C();
    v72 = v35;
    OUTLINED_FUNCTION_74_1();
    v38 = OUTLINED_FUNCTION_166();
    (v36)(v38);
    v39 = [objc_opt_self() defaultManager];
    v40 = sub_237C059EC();
    v83[0] = 0;
    v41 = [v39 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:v83];

    v42 = v83[0];
    if (v41)
    {
      v71 = v36;
      v43 = v80;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      v44 = v42;

      v46 = v78;
      sub_237A532D8(v45, v78);

      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_172();
      sub_237C05E6C();
      OUTLINED_FUNCTION_175();
      v47 = v77;
      v48 = v82;
      sub_237C05C6C();
      if (v48)
      {
        (*(v75 + 8))(v3, v79);
        (*(v76 + 8))(v46, v47);
      }

      else
      {
        v75 = *(v75 + 8);
        (v75)(v3, v79);
        v82 = 0;
        OUTLINED_FUNCTION_71();
        swift_beginAccess();

        sub_237A532D8(v62, v73);

        v63 = v74;
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_172();
        sub_237C05E6C();
        v64 = v82;
        sub_237C05C6C();
        if (!v64)
        {
          (v75)(v63, v79);
          v67 = *(v76 + 8);
          v68 = OUTLINED_FUNCTION_34_1();
          v67(v68);
          (v67)(v78, v47);
          OUTLINED_FUNCTION_169();
          v69 = v71;
          v71();
          (v69)(v33, v67);
          goto LABEL_14;
        }

        (v75)(v63, v79);
        v43 = *(v76 + 8);
        v65 = OUTLINED_FUNCTION_34_1();
        v43(v65);
        (v43)(v78, v47);
      }

      OUTLINED_FUNCTION_169();
      v66 = v71;
      v71();
      (v66)(v33, v43);
    }

    else
    {
      v61 = v83[0];
      OUTLINED_FUNCTION_143_0();
      sub_237C0593C();

      swift_willThrow();
      v36(v72, v37);
      v36(v33, v37);
    }

LABEL_14:
    OUTLINED_FUNCTION_73();
    return;
  }

  sub_237C05A2C();
  sub_237C05A3C();
  v49 = *(v23 + 8);
  v50 = v81;
  v49(v2, v81);
  v51 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  v52 = v80;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v52 + v51, v4, &qword_27DE9B898, &qword_237C0E0D8);
  _s10ClassifierVMa_0(0);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_73_1(v53, v54, v55);
  if (v56)
  {
    __break(1u);
  }

  else
  {
    v57 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v52 + v57, v10, &qword_27DE9B890, &qword_237C0E0D0);
    v58 = _s5ModelVMa_0(0);
    OUTLINED_FUNCTION_73_1(v10, 1, v58);
    if (!v56)
    {
      OUTLINED_FUNCTION_67_1();
      sub_237A595B8(v59, v60, &unk_237C14110);
      sub_237C0735C();
      v49(v27, v50);
      OUTLINED_FUNCTION_4_21();
      sub_237A59650();
      OUTLINED_FUNCTION_1_24();
      sub_237A59650();
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_237A532D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47[1] = a2;
  v4 = sub_237C0873C();
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_22();
  v52 = v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  v50 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v47[0] = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  sub_237C057FC();
  swift_allocObject();
  v55 = sub_237C057EC();
  v53 = a1;
  v23 = *(a1 + 16);
  OUTLINED_FUNCTION_90_0();
  v56 = v22;
  sub_237C05EDC();
  OUTLINED_FUNCTION_89();
  v57 = v19;
  v54 = v23;
  sub_237C05EDC();
  v24 = 0;
  v48 = (v8 + 8);
  v49 = v13 + 16;
  v47[2] = v13 + 8;
  while (v54 != v24)
  {
    OUTLINED_FUNCTION_119_0();
    (*(v13 + 16))(v2, v53 + v25 + *(v13 + 72) * v24, v11);
    v26 = v50;
    sub_237C06C7C();
    sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
    v27 = v51;
    v28 = sub_237C0834C();
    (*v48)(v26, v27);
    v61 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    sub_237A5954C(&qword_27DE9B8A8, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    v29 = sub_237C057DC();
    v31 = v30;
    ++v24;

    sub_237C0872C();
    v61 = sub_237C0870C();
    v62 = v32;
    sub_237C05F4C();

    sub_237C06C4C();
    v59 = v61;
    v60 = v62;
    sub_237C05F3C();
    sub_2379E86D4(v29, v31);

    v33 = OUTLINED_FUNCTION_138_0();
    v34(v33);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  OUTLINED_FUNCTION_46();
  v35 = sub_237C0602C();
  OUTLINED_FUNCTION_1(v35);
  v36 = OUTLINED_FUNCTION_133_0();
  *(v36 + 16) = xmmword_237C0B670;
  v37 = v58;
  v38 = v56;
  sub_237C05EBC();
  sub_237C05EBC();
  v61 = v36;
  v39 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  OUTLINED_FUNCTION_7_17();
  sub_2379D9224(v41, v42, &unk_237C0B910, v43);
  sub_237C05D7C();

  v44 = *(v47[0] + 8);
  v45 = OUTLINED_FUNCTION_32_3();
  v44(v45);
  return (v44)(v38, v37);
}

uint64_t sub_237A5384C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v26 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_127_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v11 = *(a1 + 16);
  OUTLINED_FUNCTION_90_0();
  sub_237C05EDC();
  OUTLINED_FUNCTION_89();
  sub_237C05EDC();
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
    OUTLINED_FUNCTION_88_0();
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    v16 = (v6 + 8);
    do
    {
      sub_237C06C7C();
      sub_237C05F3C();
      (*v16)(v2, v4);
      sub_237C06C4C();
      sub_237C05F3C();

      v13 += v15;
      --v11;
    }

    while (v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  OUTLINED_FUNCTION_46();
  v17 = sub_237C0602C();
  OUTLINED_FUNCTION_1(v17);
  *(OUTLINED_FUNCTION_133_0() + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  sub_237C05EBC();
  v18 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_7_17();
  sub_2379D9224(v20, v21, &unk_237C0B910, v22);
  sub_237C05D7C();
  (*(v26 + 8))(v1, v27);
  v23 = OUTLINED_FUNCTION_138_0();
  return v24(v23);
}

void sub_237A53BFC()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = _s20PersistentParametersVMa_2(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v9 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0 + v9, v6, &qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_73_1(v6, 1, v7);
  if (v10)
  {
    sub_2379D9054(v6, &qword_27DE9B8B0, &qword_237C13FC0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v11 = 0xD000000000000030;
    *(v11 + 8) = 0x8000000237C191C0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    OUTLINED_FUNCTION_151_0(v11, 2);
  }

  else
  {
    OUTLINED_FUNCTION_3_24();
    v12 = OUTLINED_FUNCTION_32_3();
    sub_237A596A4(v12, v13);
    sub_237AD564C(v2);
    OUTLINED_FUNCTION_0_25();
    sub_237A59650();
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A53D90()
{
  OUTLINED_FUNCTION_74();
  v38 = v0;
  v39 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_124_0();
  v12 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v16 = OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v25 = *v5;
  (*(v14 + 16))(v0, v39, v12, v22);
  sub_237AD5F50(v0, v24);
  if (!v1)
  {
    v26 = v10;
    v27 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
    v28 = v38;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v28 + v27, v2, &qword_27DE9B8B0, &qword_237C13FC0);
    OUTLINED_FUNCTION_73_1(v2, 1, v16);
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_128();
      sub_2379D9054(v30, v31, &qword_237C13FC0);
      OUTLINED_FUNCTION_3_24();
      v32 = OUTLINED_FUNCTION_173();
      sub_237A596A4(v32, v33);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v16);
      v37 = v38;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_2379E8FDC(v26, v37 + v27, &qword_27DE9B8B0, &qword_237C13FC0);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_3_24();
      sub_237A596A4(v2, v20);
      v40 = v25;
      sub_237A54030(v24, v20, &v40);
      sub_237A59650();
      sub_237A59650();
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A54030(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v118 = a2;
  v7 = OUTLINED_FUNCTION_87();
  v8 = type metadata accessor for MLSoundClassifier.DataSource(v7);
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  v117 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v116 = v12;
  v13 = OUTLINED_FUNCTION_41_0();
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v109 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B960, &qword_237C0E2C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_30_0();
  v23 = *a3;
  sub_237B3C1CC();
  if (v4)
  {
    return;
  }

  v25 = v24;
  v114 = v20;
  v115 = v5;
  v112 = v21;
  v113 = v17;
  v111 = v23;
  v26 = _s20PersistentParametersVMa_2(0);
  v27 = *(v3 + v26[7]);
  v28 = sub_237A4C2B8(v25, v27);
  v29 = v3;
  v30 = v118;
  v31 = v28;

  sub_237B3C1CC();
  v110 = v29;
  v33 = *(v30 + v26[7]);
  v34 = sub_237A4C2B8(v32, v33);

  v35 = sub_237AC743C(v31, v34);

  if ((v35 & 1) == 0)
  {
    sub_2379E8AF0();
    v59 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_23_11(v59, v60);
LABEL_26:
    OUTLINED_FUNCTION_151_0(v58, v61);
    return;
  }

  v36 = v26[5];
  v37 = *(v112 + 48);
  v38 = v115;
  sub_237A596FC(v110 + v36, v115);
  sub_237A596FC(v30 + v36, v38 + v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = v30;
  v41 = v113;
  v42 = v114;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v62 = OUTLINED_FUNCTION_64_3();
      sub_237A596FC(v62, v42);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        OUTLINED_FUNCTION_29_5();
        sub_237A59650();
LABEL_30:
        sub_2379E8AF0();
        v81 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_23_11(v81, v82);
        OUTLINED_FUNCTION_151_0(v83, v84);
        sub_2379D9054(v38, &qword_27DE9B960, &qword_237C0E2C0);
        return;
      }

      sub_237A596A4(v42, v116);
      sub_237A596A4(v38 + v37, v117);
      sub_237B3C1CC();
      sub_237A4C2B8(v63, v27);

      sub_237B3C1CC();
      sub_237A4C2B8(v64, v33);

      v96 = OUTLINED_FUNCTION_32_3();
      v98 = sub_237AC743C(v96, v97);

      if ((v98 & 1) == 0)
      {
        sub_2379E8AF0();
        v105 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_23_11(v105, v106);
        OUTLINED_FUNCTION_151_0(v107, v108);
        sub_237A59650();
        OUTLINED_FUNCTION_173();
        sub_237A59650();
        goto LABEL_21;
      }

      sub_237A59650();
      OUTLINED_FUNCTION_173();
LABEL_7:
      sub_237A59650();
LABEL_8:
      OUTLINED_FUNCTION_8_17();
      sub_237A59650();
      if (*(v110 + v26[6]) != *(v40 + v26[6]))
      {
        v73 = sub_237C08A6C();
        v75 = v74;
        v76 = sub_237C08A6C();
        v78 = v77;
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v58 = xmmword_237C0DFF0;
LABEL_24:
        *(v58 + 16) = v73;
        *(v58 + 24) = v75;
        *(v58 + 32) = v76;
        *(v58 + 40) = v78;
        goto LABEL_25;
      }

      if (v27 != v33)
      {
        v73 = sub_237C08A6C();
        v75 = v79;
        v76 = sub_237C08A6C();
        v78 = v80;
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v58 = 0xD000000000000023;
        *(v58 + 8) = 0x8000000237C19170;
        goto LABEL_24;
      }

      v43 = v26[9];
      v44 = v110 + v43;
      v45 = *(v110 + v43);
      v46 = *(v110 + v43 + 8);
      v47 = v40 + v43;
      v48 = *(v40 + v43);
      v49 = *(v40 + v43 + 8);
      if (v46)
      {
        if (*v44 != v48)
        {
          v49 = 0;
        }

        if ((v49 & 1) == 0)
        {
LABEL_14:
          v50 = OUTLINED_FUNCTION_120_0(v45);
          OUTLINED_FUNCTION_180(v50, v51);
          OUTLINED_FUNCTION_121_0();

          v52 = v119;
          v53 = v120;
          v54 = OUTLINED_FUNCTION_120_0(*v47);
          OUTLINED_FUNCTION_180(v54, v55);
          OUTLINED_FUNCTION_121_0();

          v56 = v119;
          v57 = v120;
          sub_2379E8AF0();
          OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          *v58 = 0xD000000000000011;
          *(v58 + 8) = 0x8000000237C191A0;
          *(v58 + 16) = v52;
          *(v58 + 24) = v53;
          *(v58 + 32) = v56;
          *(v58 + 40) = v57;
LABEL_25:
          v61 = 3;
          goto LABEL_26;
        }
      }

      else
      {
        if (*v44 != v48)
        {
          v49 = 1;
        }

        if (v49)
        {
          goto LABEL_14;
        }
      }

      v85 = v110;
      switch(v111)
      {
        case 1:

          return;
        case 2:
          OUTLINED_FUNCTION_51_4();
          goto LABEL_38;
        case 3:
          OUTLINED_FUNCTION_158();
          goto LABEL_38;
        case 4:
          OUTLINED_FUNCTION_60_0();
          goto LABEL_38;
        default:
LABEL_38:
          OUTLINED_FUNCTION_156();
          v86 = sub_237C0929C();

          if (v86)
          {
            return;
          }

          v87 = v26[8];
          v88 = *(v40 + v87);
          if (*(v85 + v87) != v88)
          {
            v119 = *(v85 + v87);
            sub_237A20C10();
            OUTLINED_FUNCTION_58_0();
            v90 = sub_237C08DEC();
            v92 = v91;
            v121 = v88;
            OUTLINED_FUNCTION_58_0();
            v93 = sub_237C08DEC();
            v95 = v94;
            sub_2379E8AF0();
            OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            *v58 = xmmword_237C0E000;
            *(v58 + 16) = v90;
            *(v58 + 24) = v92;
LABEL_52:
            *(v58 + 32) = v93;
            *(v58 + 40) = v95;
            goto LABEL_25;
          }

          v89 = *(v47 + 8);
          if (*(v44 + 8))
          {
            if (*v44 != *v47)
            {
              v89 = 0;
            }

            if ((v89 & 1) == 0)
            {
LABEL_51:
              v99 = OUTLINED_FUNCTION_120_0(*v44);
              OUTLINED_FUNCTION_180(v99, v100);
              OUTLINED_FUNCTION_121_0();

              v101 = v119;
              v102 = v120;
              v103 = OUTLINED_FUNCTION_120_0(*v47);
              OUTLINED_FUNCTION_180(v103, v104);
              OUTLINED_FUNCTION_121_0();

              v93 = v119;
              v95 = v120;
              sub_2379E8AF0();
              OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
              *v58 = xmmword_237C0E010;
              *(v58 + 16) = v101;
              *(v58 + 24) = v102;
              goto LABEL_52;
            }
          }

          else
          {
            if (*v44 != *v47)
            {
              v89 = 1;
            }

            if (v89)
            {
              goto LABEL_51;
            }
          }

          break;
      }

      return;
    case 2:
      v65 = OUTLINED_FUNCTION_64_3();
      sub_237A596FC(v65, v41);
      v66 = *v41;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_237AFE1A4(v66, *(v38 + v37));
        v68 = v67;

        if (v68)
        {
          goto LABEL_8;
        }

        sub_2379E8AF0();
        v69 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_23_11(v69, v70);
        OUTLINED_FUNCTION_151_0(v71, v72);
LABEL_21:
        OUTLINED_FUNCTION_8_17();
        sub_237A59650();
        return;
      }

      goto LABEL_30;
    default:
      OUTLINED_FUNCTION_8_17();
      goto LABEL_7;
  }
}

uint64_t sub_237A548C0()
{

  OUTLINED_FUNCTION_68_0();
  sub_237A59650();
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9B8B0, &qword_237C13FC0);

  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &qword_27DE9B898, &qword_237C0E0D8);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model, &qword_27DE9B890, &qword_237C0E0D0);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, &qword_27DE9B968, &qword_237C0E2C8);
  v1 = OUTLINED_FUNCTION_168(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics);
  sub_2379D9054(v1, v2, &qword_237C0DD00);
  v3 = OUTLINED_FUNCTION_168(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics);
  sub_2379D9054(v3, v4, &qword_237C0DD00);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter, &qword_27DE9B8D0, &qword_237C0E1E8);
  return v0;
}

uint64_t sub_237A54A2C()
{
  sub_237A548C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SoundClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = qword_27DE9B850;
  if (!qword_27DE9B850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A54AD8(uint64_t a1)
{
  type metadata accessor for MLTrainingSessionParameters(319);
  if (v1 <= 0x3F)
  {
    sub_237A54DA0(319, &qword_27DE9B860, _s20PersistentParametersVMa_2);
    if (v2 <= 0x3F)
    {
      sub_237A54DA0(319, &qword_27DE9B868, _s10ClassifierVMa_0);
      if (v3 <= 0x3F)
      {
        sub_237A54DA0(319, &qword_27DE9B870, _s5ModelVMa_0);
        if (v4 <= 0x3F)
        {
          sub_237A54DA0(319, &qword_27DE9B878, type metadata accessor for MLSoundClassifier.ModelParameters);
          if (v5 <= 0x3F)
          {
            sub_237A54DA0(319, &qword_27DE9B880, type metadata accessor for MLClassifierMetrics);
            if (v6 <= 0x3F)
            {
              sub_237A54DA0(319, &qword_27DE9B888, type metadata accessor for TrainingTablePrinter);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_237A54DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237A54E64(uint64_t a1)
{
  v2 = sub_237A4C87C(a1);
  v3 = *(v1 + 8);
  v5 = v4 & 1;

  return v3(v2, v5);
}

uint64_t sub_237A54F18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237A54FB0;

  return sub_237A4CD30();
}

uint64_t sub_237A54FB0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_18();
  v8 = *v1;
  OUTLINED_FUNCTION_3();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (v0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v3 & 1;
    v10 = v7;
    v11 = v5;
  }

  return v12(v10, v11, v13);
}

uint64_t sub_237A550C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237A55150;

  return sub_237A4F350();
}

uint64_t sub_237A55150()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18();
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (v0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v3 & 1;
    v8 = v5;
  }

  return v9(v8, v10);
}

uint64_t sub_237A55308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5[1];
  v22 = *a5;
  v11 = *(a5 + 4);
  v12 = *(a5 + 40);
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v23 = *(a5 + 4);
  sub_237C092CC();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v16 != (a4 >> 1) - a3)
  {
LABEL_17:
    swift_unknownObjectRelease();
    v11 = v23;
LABEL_2:
    sub_237A55F7C(a1, a2, a3, a4);
    v14 = v13;
    goto LABEL_9;
  }

  v14 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease();
  v11 = v23;
  if (v14)
  {
    goto LABEL_10;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_9:
  result = swift_unknownObjectRelease();
LABEL_10:
  if (*&v22 >= 0.0 && *&v22 < 1.0)
  {
    *a6 = v22;
    *(a6 + 16) = v21;
    *(a6 + 32) = v11;
    *(a6 + 40) = v12;
    *(a6 + 48) = v14;
  }

  else
  {

    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003ALL, 0x8000000237C19090);
    sub_237C08A8C();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_237C0B660;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;

    sub_237C0939C();

    sub_2379E8AF0();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0xE000000000000000;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A5556C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (*a2 >= 0.0 && v3 < 1.0)
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 32);
    v10 = *(a2 + 8);
    *a3 = v3;
    *(a3 + 8) = v10;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = v9;
    *(a3 + 40) = v8;
    *(a3 + 48) = result;
  }

  else
  {

    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003ALL, 0x8000000237C19090);
    sub_237C08A8C();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_237C0B660;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;

    sub_237C0939C();

    sub_2379E8AF0();
    v6 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    return OUTLINED_FUNCTION_52(v6, v7);
  }

  return result;
}

uint64_t sub_237A556DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  while (1)
  {
    while (1)
    {
      v4 = sub_237C087EC();
      if (!v5)
      {

        sub_237C087EC();
        v13 = v12;

        if (v13)
        {
          goto LABEL_18;
        }

        return 0;
      }

      v6 = v4;
      v7 = v5;
      v8 = sub_237C087EC();
      if (!v9)
      {

LABEL_15:

        return 0;
      }

      if (v6 != v8 || v7 != v9)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_105_0();
    if (sub_237C0929C())
    {
      break;
    }

    v11 = sub_237C0929C();

    if (v11)
    {
      goto LABEL_15;
    }
  }

LABEL_18:

  return 1;
}

id sub_237A5584C(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C059EC();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    sub_237C05ADC();
    OUTLINED_FUNCTION_4();
    v8 = *(v7 + 8);
    v9 = v6;
    v10 = OUTLINED_FUNCTION_87_0();
    v8(v10);
  }

  else
  {
    v11 = v14[0];
    sub_237C0593C();

    swift_willThrow();
    sub_237C05ADC();
    OUTLINED_FUNCTION_4();
    (*(v12 + 8))(a1);
  }

  return v5;
}

uint64_t sub_237A55984()
{
  sub_237A2EAA4();
  v1 = OUTLINED_FUNCTION_6_6();
  v3 = sub_237A01800(v1, v2);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  sub_237BC24E4(v3, 0);
  OUTLINED_FUNCTION_143_0();

  v13 = OUTLINED_FUNCTION_130_0(v5, v6, v7, v8, v9, v10, v11, v12, v18);
  v16 = sub_237BA2040(v13, v14, v15);

  if (v16 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v0;
}

const void *sub_237A55A8C(void *a1, uint64_t a2)
{
  v9 = a1;
  v3 = a2 & 1;
  v10 = a2 & 1;
  MLDataTable.size.getter();
  OUTLINED_FUNCTION_6_6();
  v4 = sub_237A018D0();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_237BC25C8(v4, 0);
  sub_2379DBCF4(a1, v3);
  v7 = sub_237BA19E4(&v9, v6 + 32, v5, a1, v3);
  sub_2379DBC9C(v9, v10);
  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

const void *sub_237A55B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A2E9F4();
  v6 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v6, v7);
  v8 = OUTLINED_FUNCTION_6_6();
  v9 = sub_237A0290C(v8);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = v9;
  v11 = sub_237BC2630();

  v12 = sub_237BA1788(&v14, v11 + 32, v10, a1, a2, a3);

  if (v12 != v10)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t sub_237A55C98(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  sub_237A2E9F4();
  v8 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v8, v9);
  v10 = OUTLINED_FUNCTION_6_6();
  v11 = a2(v10);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = v11;
  v13 = a3(v11, 0);

  v14 = a4(&v16, v13 + 32, v12, a1);

  if (v14 != v12)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_237A55D4C()
{
  sub_237A2E9F4();
  v1 = OUTLINED_FUNCTION_6_6();
  v3 = sub_237A017E8(v1, v2);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  sub_237BC2698();
  OUTLINED_FUNCTION_143_0();

  v13 = OUTLINED_FUNCTION_130_0(v5, v6, v7, v8, v9, v10, v11, v12, v18);
  v16 = sub_237BA1438(v13, v14, v15);

  if (v16 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v0;
}

void sub_237A55DCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_237A36634();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_237A55EA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_237BC2708((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_237C07A8C();
      OUTLINED_FUNCTION_88_0();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_237A55F7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_237BC2730((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_237A560B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for TrainingTablePrinter(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  sub_237C05BFC();
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0 + v2);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A561D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for TrainingTablePrinter(v4);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a2(v2, v7, v8);
}

void sub_237A56258(size_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FC94();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_237A563BC(v6);
  *a1 = v3;
}

void sub_237A5630C(size_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_20(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FC94();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_237A56504(v8);
  *a1 = v5;
}

void sub_237A563BC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_237C0923C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
        v6 = sub_237C0898C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_237A56DA0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_237A56644(0, v2, 1, a1);
  }
}

void sub_237A56504(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_237C0923C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
        v6 = sub_237C0898C();
        *(v6 + 16) = v5;
      }

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
      OUTLINED_FUNCTION_20(v7);
      OUTLINED_FUNCTION_119_0();
      sub_237A579CC(&v13, v14, a1, v4, v9, v10, v11, v12, v6 + v8, v5);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_237A569FC();
  }
}

void sub_237A56644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v55 = sub_237C05ADC();
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  MEMORY[0x28223BE20](v10);
  v49 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v39 - v13;
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v39 - v17;
  v41 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v15 + 16);
    v19 = v15 + 16;
    v21 = *(v19 + 56);
    v51 = (v8 + 8);
    v52 = v20;
    v50 = (v19 - 8);
    v53 = v19;
    v22 = (v18 + v21 * (a3 - 1));
    v46 = -v21;
    v47 = (v19 + 16);
    v23 = a1 - a3;
    v48 = v18;
    v40 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v44 = v22;
      v45 = a3;
      v42 = v24;
      v43 = v23;
      v56 = v23;
      do
      {
        v25 = v52;
        v52(v16);
        (v25)(v60, v22, v10);
        v26 = v54;
        sub_237C06C7C();
        v27 = sub_237C05A8C();
        v57 = v28;
        v58 = v27;
        v29 = v10;
        v30 = *v51;
        v31 = v55;
        (*v51)(v26, v55);
        sub_237C06C7C();
        v32 = sub_237C05A8C();
        v34 = v33;
        v30(v26, v31);
        v10 = v29;
        LOBYTE(v32) = sub_237A556DC(v32, v34, v58, v57);

        v35 = *v50;
        (*v50)(v60, v29);
        v35(v59, v29);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return;
        }

        v36 = *v47;
        v37 = v49;
        (*v47)(v49, v24, v10);
        swift_arrayInitWithTakeFrontToBack();
        v36(v22, v37, v10);
        v22 += v46;
        v24 += v46;
      }

      while (!__CFADD__(v56++, 1));
      a3 = v45 + 1;
      v22 = &v44[v40];
      v23 = v43 - 1;
      v24 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }
}

void sub_237A569FC()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_87();
  v72 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_22();
  v71 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  v64 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  v56 = v6;
  if (v4 != v6)
  {
    v21 = *v2;
    v23 = *(v18 + 16);
    v22 = v18 + 16;
    v24 = *(v22 + 56);
    v68 = (v8 + 8);
    v69 = v23;
    v66 = v16;
    v67 = (v22 - 8);
    v70 = v22;
    v62 = (v22 + 16);
    v63 = v21;
    v25 = v21 + v24 * (v4 - 1);
    v61 = -v24;
    v26 = v0 - v4;
    v55 = v24;
    v27 = v21 + v24 * v4;
    v65 = v20;
    while (2)
    {
      v59 = v25;
      v60 = v4;
      v57 = v27;
      v58 = v26;
      v28 = v26;
      v75 = v25;
      while (1)
      {
        v73 = v28;
        v74 = v27;
        v29 = OUTLINED_FUNCTION_175();
        v30 = v69;
        (v69)(v29);
        v30(v16, v75, v11);
        v31 = v71;
        OUTLINED_FUNCTION_155_0();
        sub_237C06C7C();
        v32 = OUTLINED_FUNCTION_182();
        v34 = v33;
        v35 = *v68;
        v36 = v72;
        (*v68)(v31, v72);
        OUTLINED_FUNCTION_155_0();
        sub_237C06C7C();
        v37 = v11;
        v38 = OUTLINED_FUNCTION_182();
        v40 = v39;
        v35(v31, v36);
        if (v32 == v38 && v34 == v40)
        {
          break;
        }

        OUTLINED_FUNCTION_105_0();
        v42 = sub_237C0929C();

        v16 = v66;
        v43 = *v67;
        v44 = OUTLINED_FUNCTION_138_0();
        v43(v44);
        v45 = OUTLINED_FUNCTION_175();
        v43(v45);
        v11 = v37;
        v47 = v73;
        v46 = v74;
        if (v42)
        {
          if (!v63)
          {
            __break(1u);
            return;
          }

          v48 = *v62;
          v49 = v64;
          (*v62)(v64, v74, v11);
          OUTLINED_FUNCTION_153_0();
          swift_arrayInitWithTakeFrontToBack();
          v48(v75, v49, v11);
          v75 += v61;
          v27 = v46 + v61;
          v50 = __CFADD__(v47, 1);
          v28 = v47 + 1;
          if (!v50)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v16 = v66;
      v51 = *v67;
      v52 = OUTLINED_FUNCTION_138_0();
      v51(v52);
      v53 = OUTLINED_FUNCTION_175();
      v51(v53);
      v11 = v37;
LABEL_14:
      v4 = v60 + 1;
      v25 = v59 + v55;
      v26 = v58 - 1;
      v27 = v57 + v55;
      if (v60 + 1 != v56)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A56DA0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v145 = a1;
  v164 = sub_237C05ADC();
  v6 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  MEMORY[0x28223BE20](v8);
  v148 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v140 - v11;
  MEMORY[0x28223BE20](v12);
  v170 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v171 = &v140 - v15;
  MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v140 - v21;
  v153 = v18;
  v154 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_101:
    v171 = *v145;
    if (!v171)
    {
      goto LABEL_143;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v155;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_103;
    }

    goto LABEL_137;
  }

  v141 = a4;
  v24 = 0;
  v165 = v18 + 16;
  v166 = (v18 + 8);
  v161 = (v18 + 32);
  v162 = (v6 + 8);
  v25 = MEMORY[0x277D84F90];
  v142 = v19;
  v144 = v22;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v149 = v24;
    if (v24 + 1 < v23)
    {
      v157 = v23;
      v28 = v24;
      v29 = *v154;
      v30 = *(v18 + 72);
      v31 = *(v18 + 16);
      v32 = *v154 + v30 * v27;
      (v31)(v22, v20);
      v33 = v29 + v30 * v28;
      v34 = v142;
      v151 = v31;
      (v31)(v142, v33, v8);
      v35 = v144;
      v36 = v155;
      sub_237B54EF0();
      LODWORD(v152) = v37;
      v155 = v36;
      if (v36)
      {
        v139 = *v166;
        (*v166)(v34, v8);
        (v139)(v35, v8);
LABEL_111:

        return;
      }

      v143 = v25;
      v25 = v166;
      v38 = *v166;
      (*v166)(v34, v8);
      v150 = v38;
      (v38)(v35, v8);
      v39 = v149 + 2;
      v40 = v29 + v30 * (v149 + 2);
      v158 = v30;
      v41 = v157;
      while (1)
      {
        v42 = v39;
        v43 = v27 + 1;
        if (v43 >= v41)
        {
          break;
        }

        v44 = v151;
        v169 = v39;
        v151();
        v45 = v170;
        v168 = v32;
        (v44)(v170, v32, v8);
        v156 = v43;
        v46 = v163;
        sub_237C06C7C();
        v167 = sub_237C05A8C();
        v160 = v47;
        v48 = *v162;
        v49 = v164;
        (*v162)(v46, v164);
        sub_237C06C7C();
        v50 = sub_237C05A8C();
        v52 = v51;
        v53 = v46;
        v27 = v156;
        v48(v53, v49);
        LODWORD(v50) = sub_237A556DC(v50, v52, v167, v160) & 1;
        v30 = v158;

        v25 = v166;
        v54 = v150;
        (v150)(v45, v8);
        v54(v171, v8);
        v42 = v169;
        v41 = v157;
        v40 += v30;
        v32 = v168 + v30;
        v39 = v169 + 1;
        if ((v152 & 1) != v50)
        {
          goto LABEL_10;
        }
      }

      v27 = v41;
LABEL_10:
      if (v152)
      {
        v26 = v149;
        if (v27 < v149)
        {
          goto LABEL_136;
        }

        if (v149 >= v27)
        {
          v25 = v143;
        }

        else
        {
          if (v41 >= v42)
          {
            v55 = v42;
          }

          else
          {
            v55 = v41;
          }

          v56 = v30 * (v55 - 1);
          v57 = v30 * v55;
          v58 = v149 * v30;
          v156 = v27;
          v59 = v149;
          do
          {
            if (v59 != --v27)
            {
              v60 = *v154;
              if (!*v154)
              {
                goto LABEL_141;
              }

              v61 = *v161;
              (*v161)(v148, v60 + v58, v8);
              v62 = v58 < v56 || v60 + v58 >= (v60 + v57);
              if (v62)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v61((v60 + v56), v148, v8);
              v26 = v149;
              v30 = v158;
            }

            ++v59;
            v56 -= v30;
            v57 -= v30;
            v58 += v30;
          }

          while (v59 < v27);
          v25 = v143;
          v27 = v156;
        }
      }

      else
      {
        v25 = v143;
        v26 = v149;
      }
    }

    v63 = v154[1];
    if (v27 < v63)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_133;
      }

      if (v27 - v26 < v141)
      {
        break;
      }
    }

LABEL_48:
    if (v27 < v26)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237BC0B38();
      v25 = v128;
    }

    v86 = *(v25 + 2);
    v87 = v86 + 1;
    if (v86 >= *(v25 + 3) >> 1)
    {
      sub_237BC0B38();
      v25 = v129;
    }

    *(v25 + 2) = v87;
    v88 = v25 + 32;
    v89 = &v25[16 * v86 + 32];
    *v89 = v149;
    *(v89 + 1) = v27;
    v169 = *v145;
    if (!v169)
    {
      goto LABEL_142;
    }

    v156 = v27;
    if (v86)
    {
      while (1)
      {
        v90 = v87 - 1;
        v91 = &v88[16 * v87 - 16];
        v92 = &v25[16 * v87];
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v93 = *(v25 + 4);
          v94 = *(v25 + 5);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_68:
          if (v96)
          {
            goto LABEL_119;
          }

          v108 = *v92;
          v107 = *(v92 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_122;
          }

          v112 = *(v91 + 1);
          v113 = v112 - *v91;
          if (__OFSUB__(v112, *v91))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v110, v113))
          {
            goto LABEL_127;
          }

          if (v110 + v113 >= v95)
          {
            if (v95 < v113)
            {
              v90 = v87 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v87 < 2)
        {
          goto LABEL_121;
        }

        v115 = *v92;
        v114 = *(v92 + 1);
        v103 = __OFSUB__(v114, v115);
        v110 = v114 - v115;
        v111 = v103;
LABEL_83:
        if (v111)
        {
          goto LABEL_124;
        }

        v117 = *v91;
        v116 = *(v91 + 1);
        v103 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v103)
        {
          goto LABEL_126;
        }

        if (v118 < v110)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v90 - 1 >= v87)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v154)
        {
          goto LABEL_139;
        }

        v122 = v25;
        v25 = &v88[16 * v90 - 16];
        v123 = *v25;
        v124 = &v88[16 * v90];
        v125 = *(v124 + 1);
        v126 = v155;
        sub_237A58644(*v154 + *(v153 + 72) * *v25, *v154 + *(v153 + 72) * *v124, *v154 + *(v153 + 72) * v125, v169);
        v155 = v126;
        if (v126)
        {
          goto LABEL_111;
        }

        if (v125 < v123)
        {
          goto LABEL_114;
        }

        v127 = *(v122 + 2);
        if (v90 > v127)
        {
          goto LABEL_115;
        }

        *v25 = v123;
        *(v25 + 1) = v125;
        if (v90 >= v127)
        {
          goto LABEL_116;
        }

        v87 = v127 - 1;
        sub_237BA130C(v124 + 16, v127 - 1 - v90, &v88[16 * v90]);
        v25 = v122;
        *(v122 + 2) = v127 - 1;
        if (v127 <= 2)
        {
          goto LABEL_97;
        }
      }

      v97 = &v88[16 * v87];
      v98 = *(v97 - 8);
      v99 = *(v97 - 7);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_117;
      }

      v102 = *(v97 - 6);
      v101 = *(v97 - 5);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_118;
      }

      v104 = *(v92 + 1);
      v105 = v104 - *v92;
      if (__OFSUB__(v104, *v92))
      {
        goto LABEL_120;
      }

      v103 = __OFADD__(v95, v105);
      v106 = v95 + v105;
      if (v103)
      {
        goto LABEL_123;
      }

      if (v106 >= v100)
      {
        v120 = *v91;
        v119 = *(v91 + 1);
        v103 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v103)
        {
          goto LABEL_131;
        }

        if (v95 < v121)
        {
          v90 = v87 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v18 = v153;
    v23 = v154[1];
    v24 = v156;
    v22 = v144;
    if (v156 >= v23)
    {
      goto LABEL_101;
    }
  }

  v64 = v26 + v141;
  if (__OFADD__(v26, v141))
  {
    goto LABEL_134;
  }

  if (v64 >= v63)
  {
    v64 = v154[1];
  }

  if (v64 < v26)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    v25 = sub_237BA12F8(v25);
LABEL_103:
    v131 = v25;
    v133 = *(v25 + 2);
    v25 += 16;
    for (i = v133; i >= 2; *v25 = i)
    {
      if (!*v154)
      {
        goto LABEL_140;
      }

      v134 = &v131[16 * i];
      v135 = *v134;
      v136 = &v25[16 * i];
      v137 = *(v136 + 1);
      sub_237A58644(*v154 + *(v153 + 72) * *v134, *v154 + *(v153 + 72) * *v136, *v154 + *(v153 + 72) * v137, v171);
      if (v8)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_128;
      }

      if (i - 2 >= *v25)
      {
        goto LABEL_129;
      }

      *v134 = v135;
      *(v134 + 1) = v137;
      v138 = *v25 - i;
      if (*v25 < i)
      {
        goto LABEL_130;
      }

      i = *v25 - 1;
      sub_237BA130C(v136 + 16, v138, v136);
    }

    goto LABEL_111;
  }

  if (v27 == v64)
  {
    goto LABEL_48;
  }

  v143 = v25;
  v65 = *v154;
  v66 = *(v153 + 72);
  v160 = *(v153 + 16);
  v67 = v65 + v66 * (v27 - 1);
  v157 = -v66;
  v158 = v65;
  v68 = (v26 - v27);
  v146 = v66;
  v69 = (v65 + v27 * v66);
  v147 = v64;
LABEL_41:
  v156 = v27;
  v150 = v69;
  v151 = v68;
  v70 = v68;
  v152 = v67;
  while (1)
  {
    v167 = v70;
    v71 = v160;
    v160();
    (v71)(v170, v67, v8);
    v72 = v163;
    sub_237C06C7C();
    v73 = sub_237C05A8C();
    v168 = v74;
    v169 = v73;
    v75 = *v162;
    v76 = v8;
    v77 = v164;
    (*v162)(v72, v164);
    sub_237C06C7C();
    v78 = sub_237C05A8C();
    v80 = v79;
    v81 = v77;
    v8 = v76;
    v75(v72, v81);
    LOBYTE(v78) = sub_237A556DC(v78, v80, v169, v168);

    v82 = *v166;
    (*v166)(v170, v76);
    (v82)(v171, v76);
    if ((v78 & 1) == 0)
    {
LABEL_46:
      v27 = v156 + 1;
      v67 = v152 + v146;
      v68 = (v151 - 1);
      v69 = &v150[v146];
      if (v156 + 1 == v147)
      {
        v27 = v147;
        v25 = v143;
        v26 = v149;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v83 = v167;
    if (!v158)
    {
      break;
    }

    v84 = *v161;
    v85 = v159;
    (*v161)(v159, v69, v76);
    swift_arrayInitWithTakeFrontToBack();
    v84(v67, v85, v76);
    v67 += v157;
    v69 += v157;
    v62 = __CFADD__(v83, 1);
    v70 = v83 + 1;
    if (v62)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_237A579CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  OUTLINED_FUNCTION_74();
  v190 = v10;
  v179 = v12;
  v14 = v13;
  v176 = v15;
  v199 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_22();
  v198 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_138();
  v194 = v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v173 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  v189 = v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_138();
  v188 = v31;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  v186 = v35;
  v187 = v14;
  v37 = v14[1];
  if (v37 < 1)
  {
LABEL_112:
    OUTLINED_FUNCTION_160();
    if (!v157)
    {
      goto LABEL_155;
    }

    v17 = v156;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v190;
    if (isUniquelyReferenced_nonNull_native)
    {
      v163 = v17;
      goto LABEL_115;
    }

LABEL_149:
    v163 = sub_237BA12F8(v17);
LABEL_115:
    v164 = v163 + 16;
    v165 = *(v163 + 2);
    while (v165 >= 2)
    {
      if (!*v187)
      {
        goto LABEL_152;
      }

      v17 = v163;
      v166 = &v163[16 * v165];
      v167 = *v166;
      v168 = &v164[2 * v165];
      v169 = *(v168 + 1);
      sub_237A58CEC(*v187 + *(v186 + 72) * *v166, *v187 + *(v186 + 72) * *v168, *v187 + *(v186 + 72) * v169, a10, v159, v160, v161, v162, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
      if (v20)
      {
        break;
      }

      if (v169 < v167)
      {
        goto LABEL_140;
      }

      if (v165 - 2 >= *v164)
      {
        goto LABEL_141;
      }

      *v166 = v167;
      *(v166 + 1) = v169;
      v170 = *v164 - v165;
      if (*v164 < v165)
      {
        goto LABEL_142;
      }

      v165 = *v164 - 1;
      sub_237BA130C(v168 + 16, v170, v168);
      *v164 = v165;
      v163 = v17;
    }

    goto LABEL_123;
  }

  v173 = v34;
  v174 = v36;
  v38 = 0;
  v200 = (v35 + 8);
  v201 = v35 + 16;
  v196 = (v35 + 32);
  v197 = (v17 + 8);
  v39 = MEMORY[0x277D84F90];
  v202 = v11;
  v203 = v27;
  v175 = v20;
  while (1)
  {
    v177 = v39;
    v40 = v38 + 1;
    v178 = v38;
    if (v38 + 1 >= v37)
    {
      goto LABEL_36;
    }

    v41 = v38;
    v193 = v37;
    v42 = *v187;
    v43 = *(v35 + 72);
    v191 = v38 + 1;
    v44 = (v42 + v43 * v40);
    v45 = *(v35 + 16);
    v46 = v173;
    a10 = v44;
    v45(v173);
    v205 = v42;
    v185 = v45;
    (v45)(v174, v42 + v43 * v41, v20);
    v47 = v190;
    sub_237A4C690();
    LODWORD(v192) = v48;
    v190 = v47;
    if (v47)
    {
      v171 = *v200;
      v172 = OUTLINED_FUNCTION_141_0();
      v171(v172);
      (v171)(v46, v20);
LABEL_123:

      OUTLINED_FUNCTION_73();
      return;
    }

    v49 = *v200;
    v50 = OUTLINED_FUNCTION_141_0();
    (v49)(v50);
    v184 = v49;
    (v49)(v46, v20);
    v51 = v41 + 2;
    v17 = v205 + v43 * (v41 + 2);
    v40 = v191;
    v52 = v43;
    v195 = v43;
    v53 = v193;
    v54 = a10;
    while (1)
    {
      v55 = v51;
      if (v40 + 1 >= v53)
      {
        break;
      }

      v205 = v51;
      v191 = v40;
      v56 = OUTLINED_FUNCTION_30();
      v57 = v185;
      v185(v56);
      a10 = v54;
      v57(v189, v54, v20);
      v58 = v198;
      sub_237C06C7C();
      v204 = sub_237C05A8C();
      v60 = v59;
      v61 = *v197;
      v62 = v199;
      (*v197)(v58, v199);
      sub_237C06C7C();
      v63 = sub_237C05A8C();
      v65 = v64;
      v61(v58, v62);
      if (v204 == v63 && v60 == v65)
      {
        v67 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_105_0();
        v67 = sub_237C0929C();
      }

      v11 = v202;

      v68 = v184;
      (v184)(v189, v20);
      v68(v188, v20);
      v52 = v195;
      v17 += v195;
      v54 = &v195[a10];
      v40 = v191 + 1;
      v55 = v205;
      v51 = v205 + 1;
      v27 = v203;
      v53 = v193;
      if ((v192 ^ v67))
      {
        goto LABEL_16;
      }
    }

    v40 = v53;
LABEL_16:
    if (v192)
    {
      v69 = v178;
      v70 = v179;
      if (v40 < v178)
      {
        goto LABEL_148;
      }

      if (v178 < v40)
      {
        if (v53 >= v55)
        {
          v71 = v55;
        }

        else
        {
          v71 = v53;
        }

        v72 = v52 * (v71 - 1);
        v73 = v52 * v71;
        v74 = v40;
        v75 = v178 * v52;
        v191 = v74;
        do
        {
          if (v69 != --v74)
          {
            v76 = *v187;
            if (!*v187)
            {
              goto LABEL_153;
            }

            v17 = v76 + v75;
            v77 = *v196;
            (*v196)(v182, v76 + v75, v20);
            if (v75 < v72 || v17 >= v76 + v73)
            {
              OUTLINED_FUNCTION_153_0();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v75 != v72)
            {
              OUTLINED_FUNCTION_153_0();
              swift_arrayInitWithTakeBackToFront();
            }

            v77(v76 + v72, v182, v20);
            v70 = v179;
            v52 = v195;
          }

          ++v69;
          v72 -= v52;
          v73 -= v52;
          v75 += v52;
        }

        while (v69 < v74);
        v11 = v202;
        v27 = v203;
        v40 = v191;
      }
    }

    else
    {
LABEL_36:
      v70 = v179;
    }

    v79 = v187[1];
    if (v40 < v79)
    {
      if (__OFSUB__(v40, v178))
      {
        goto LABEL_145;
      }

      if (v40 - v178 < v70)
      {
        break;
      }
    }

LABEL_58:
    v105 = v178;
    if (v40 < v178)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = v177;
    }

    else
    {
      sub_237BC0B38();
      v106 = v154;
    }

    v17 = *(v106 + 16);
    v107 = *(v106 + 24);
    v108 = v17 + 1;
    v191 = v40;
    if (v17 >= v107 >> 1)
    {
      sub_237BC0B38();
      v106 = v155;
    }

    *(v106 + 16) = v108;
    v109 = v106 + 32;
    v110 = (v106 + 32 + 16 * v17);
    v111 = v191;
    *v110 = v105;
    v110[1] = v111;
    OUTLINED_FUNCTION_160();
    if (!v116)
    {
      goto LABEL_154;
    }

    if (v17)
    {
      v20 = v39;
      while (1)
      {
        v117 = v108 - 1;
        v118 = (v109 + 16 * (v108 - 1));
        v119 = (v39 + 16 * v108);
        if (v108 >= 4)
        {
          break;
        }

        if (v108 == 3)
        {
          v120 = *(v39 + 32);
          v121 = *(v39 + 40);
          v130 = __OFSUB__(v121, v120);
          v122 = v121 - v120;
          v123 = v130;
LABEL_79:
          if (v123)
          {
            goto LABEL_131;
          }

          v135 = *v119;
          v134 = v119[1];
          v136 = __OFSUB__(v134, v135);
          v137 = v134 - v135;
          v138 = v136;
          if (v136)
          {
            goto LABEL_134;
          }

          v139 = v118[1];
          v140 = v139 - *v118;
          if (__OFSUB__(v139, *v118))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v137, v140))
          {
            goto LABEL_139;
          }

          if (v137 + v140 >= v122)
          {
            if (v122 < v140)
            {
              v117 = v108 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v108 < 2)
        {
          goto LABEL_133;
        }

        v142 = *v119;
        v141 = v119[1];
        v130 = __OFSUB__(v141, v142);
        v137 = v141 - v142;
        v138 = v130;
LABEL_94:
        if (v138)
        {
          goto LABEL_136;
        }

        v144 = *v118;
        v143 = v118[1];
        v130 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v130)
        {
          goto LABEL_138;
        }

        if (v145 < v137)
        {
          v39 = v20;
          goto LABEL_108;
        }

LABEL_101:
        if (v117 - 1 >= v108)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v187)
        {
          goto LABEL_151;
        }

        v149 = (v109 + 16 * (v117 - 1));
        v150 = *v149;
        v17 = v109 + 16 * v117;
        v151 = *(v17 + 8);
        v152 = v190;
        sub_237A58CEC(*v187 + *(v186 + 72) * *v149, *v187 + *(v186 + 72) * *v17, *v187 + *(v186 + 72) * v151, a10, v112, v113, v114, v115, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
        v190 = v152;
        if (v152)
        {
          goto LABEL_123;
        }

        if (v151 < v150)
        {
          goto LABEL_126;
        }

        v153 = *(v20 + 16);
        if (v117 > v153)
        {
          goto LABEL_127;
        }

        *v149 = v150;
        v149[1] = v151;
        if (v117 >= v153)
        {
          goto LABEL_128;
        }

        v108 = v153 - 1;
        sub_237BA130C((v17 + 16), v153 - 1 - v117, (v109 + 16 * v117));
        v39 = v20;
        *(v20 + 16) = v153 - 1;
        v27 = v203;
        if (v153 <= 2)
        {
          goto LABEL_108;
        }
      }

      v124 = v109 + 16 * v108;
      v125 = *(v124 - 64);
      v126 = *(v124 - 56);
      v130 = __OFSUB__(v126, v125);
      v127 = v126 - v125;
      if (v130)
      {
        goto LABEL_129;
      }

      v129 = *(v124 - 48);
      v128 = *(v124 - 40);
      v130 = __OFSUB__(v128, v129);
      v122 = v128 - v129;
      v123 = v130;
      if (v130)
      {
        goto LABEL_130;
      }

      v131 = v119[1];
      v132 = v131 - *v119;
      if (__OFSUB__(v131, *v119))
      {
        goto LABEL_132;
      }

      v130 = __OFADD__(v122, v132);
      v133 = v122 + v132;
      if (v130)
      {
        goto LABEL_135;
      }

      if (v133 >= v127)
      {
        v147 = *v118;
        v146 = v118[1];
        v130 = __OFSUB__(v146, v147);
        v148 = v146 - v147;
        if (v130)
        {
          goto LABEL_143;
        }

        if (v122 < v148)
        {
          v117 = v108 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v35 = v186;
    v37 = v187[1];
    v38 = v191;
    v20 = v175;
    v11 = v202;
    if (v191 >= v37)
    {
      goto LABEL_112;
    }
  }

  v80 = v178 + v70;
  if (__OFADD__(v178, v70))
  {
    goto LABEL_146;
  }

  if (v80 >= v79)
  {
    v80 = v187[1];
  }

  if (v80 < v178)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v40 == v80)
  {
    goto LABEL_58;
  }

  v81 = *v187;
  v82 = *(v186 + 72);
  v195 = *(v186 + 16);
  v83 = (v81 + v82 * (v40 - 1));
  v192 = -v82;
  v84 = (v178 - v40);
  v193 = v81;
  v180 = v82;
  v85 = v81 + v40 * v82;
  v181 = v80;
LABEL_46:
  v191 = v40;
  v183 = v85;
  v184 = v84;
  v86 = v84;
  v185 = v83;
  while (1)
  {
    a10 = v86;
    v205 = v85;
    v87 = v195;
    (v195)(v27, v85, v20);
    v204 = v83;
    v87(v11, v83, v20);
    v88 = v198;
    OUTLINED_FUNCTION_155_0();
    sub_237C06C7C();
    v89 = OUTLINED_FUNCTION_182();
    v91 = v90;
    v92 = *v197;
    v93 = v199;
    (*v197)(v88, v199);
    OUTLINED_FUNCTION_155_0();
    sub_237C06C7C();
    v94 = OUTLINED_FUNCTION_182();
    v96 = v95;
    v92(v88, v93);
    if (v89 == v94 && v91 == v96)
    {

      v17 = *v200;
      v11 = v202;
      v104 = OUTLINED_FUNCTION_166();
      (v17)(v104);
      v27 = v203;
      (v17)(v203, v20);
LABEL_56:
      v40 = v191 + 1;
      v83 = (v185 + v180);
      v84 = v184 - 1;
      v85 = v183 + v180;
      if (v191 + 1 == v181)
      {
        v40 = v181;
        goto LABEL_58;
      }

      goto LABEL_46;
    }

    OUTLINED_FUNCTION_105_0();
    v98 = sub_237C0929C();

    v17 = v200;
    v99 = *v200;
    v11 = v202;
    v100 = OUTLINED_FUNCTION_166();
    v99(v100);
    v27 = v203;
    (v99)(v203, v20);
    if ((v98 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!v193)
    {
      break;
    }

    v101 = *v196;
    v17 = v194;
    v102 = v205;
    (*v196)(v194, v205, v20);
    v103 = v204;
    OUTLINED_FUNCTION_153_0();
    swift_arrayInitWithTakeFrontToBack();
    v101(v103, v17, v20);
    v83 = (v103 + v192);
    v85 = v102 + v192;
    v86 = a10 + 1;
    if (a10 == -1)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}