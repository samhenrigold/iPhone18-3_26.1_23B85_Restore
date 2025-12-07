uint64_t sub_26B17E238()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t Sequence.asyncCompactMap<A>(_:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_47_1(v3, v4, v5, v1, v6);
  v7 = sub_26B2133E0();
  v0[9] = v7;
  OUTLINED_FUNCTION_1_7(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_31();
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0();
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_31();
  v10 = sub_26B2133E0();
  OUTLINED_FUNCTION_21(v10);
  v0[18] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_9_0();
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_31();
  v12 = OUTLINED_FUNCTION_12_7();
  v0[21] = v12;
  OUTLINED_FUNCTION_1_7(v12);
  v0[22] = v13;
  v0[23] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26B17E538()
{
  v2 = sub_26B212EC0();
  v3 = OUTLINED_FUNCTION_26_3(v2);
  v4(v3);
  OUTLINED_FUNCTION_52_0();
  v5 = *(v1 + 128);
  OUTLINED_FUNCTION_51_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_24_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_10_7(v5);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_17_4();
    v9(v8);

    v14 = OUTLINED_FUNCTION_39_1();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_43_0();
    v11(v10);
    OUTLINED_FUNCTION_0_17();
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v0 + 192) = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_8_10(v12);
  }

  return v15(v14);
}

uint64_t sub_26B17E6EC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B17E7F0()
{
  v1 = v0[11];
  v2 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    (*(v5 + 8))(v0[17], v0[15]);
    (*(v8 + 8))(v1, v7);
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v11 + 32))(v9, v1, v2);
    (*(v11 + 16))(v10, v9, v2);
    sub_26B212F50();
    sub_26B212F00();
    (*(v11 + 8))(v9, v2);
    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[18];
  OUTLINED_FUNCTION_51_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_24_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_10_7(v12);
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_17_4();
    v16(v15);

    v21 = OUTLINED_FUNCTION_39_1();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_43_0();
    v18(v17);
    OUTLINED_FUNCTION_0_17();
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v0[24] = v19;
    *v19 = v20;
    v21 = OUTLINED_FUNCTION_8_10(v19);
  }

  return v22(v21);
}

uint64_t sub_26B17EA6C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t Collection.nonEmpty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_26B213260())
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16();
    (*(v6 + 16))(a2, v2, a1);
    v5 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, a1);
}

void Collection<>.transposed()()
{
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  v5 = v4;
  v29 = v6;
  v7 = *(*(v6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = v7;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v31 = v10;
  v32 = v9;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_2();
  v30 = v12;
  v13 = sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v16);
  v18 = v28 - v17;
  OUTLINED_FUNCTION_9_0();
  v20 = v19;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_41();
  sub_26B2132A0();
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v18, v13);
    swift_getAssociatedTypeWitness();
    sub_26B212F50();
    sub_26B212EC0();
  }

  else
  {
    (*(v20 + 32))(v1, v18, AssociatedTypeWitness);
    v22 = v30;
    v23 = sub_26B213250();
    v28[1] = v28;
    MEMORY[0x28223BE20](v23);
    v28[-4] = v5;
    v28[-3] = v3;
    v28[-2] = v29;
    v28[-1] = v0;
    swift_getAssociatedTypeWitness();
    v24 = sub_26B212F50();
    v25 = v32;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_26B14B604(sub_26B17FF80, &v28[-6], v25, v24, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v27);
    (*(v31 + 8))(v22, v25);
    (*(v20 + 8))(v1, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_28();
}

uint64_t sub_26B17EF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_26B14B604(sub_26B180048, v11, a2, AssociatedTypeWitness, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v9);
  *a5 = result;
  return result;
}

uint64_t sub_26B17F040@<X0>(uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_26B2132E0();
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v7, AssociatedTypeWitness);
  return v5(&v10, 0);
}

uint64_t Array.mutateEach(by:)()
{
  OUTLINED_FUNCTION_25();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[9] = *(v2 + 16);
  OUTLINED_FUNCTION_9_0();
  v1[10] = v5;
  v1[11] = *(v6 + 64);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B17F21C()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[8];
  v0[2] = sub_26B212EC0();
  v0[15] = *v2;
  sub_26B212EF0();
  sub_26B212E90();
  sub_26B2128F0();
  v3 = sub_26B212E50();
  v0[3] = v3;
  v4 = sub_26B212EF0();
  v5 = v0[15];
  if (v3 == v4)
  {
    OUTLINED_FUNCTION_35_0();
    *v1 = v0[2];

    OUTLINED_FUNCTION_10_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    v8 = sub_26B212EE0();
    OUTLINED_FUNCTION_34_0(v8);
    if (v1)
    {
      v9 = OUTLINED_FUNCTION_14_4();
      v5(v9);
    }

    else
    {
      v15 = v0[11];
      result = sub_26B213730();
      if (v15 != 8)
      {
        __break(1u);
        return result;
      }

      v16 = OUTLINED_FUNCTION_20_3(result);
      MEMORY[8](v16);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_19_3();
    v10 = OUTLINED_FUNCTION_15();
    v11(v10);
    OUTLINED_FUNCTION_5_6();
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v13 = OUTLINED_FUNCTION_6_11(v12);

    return v14(v13);
  }
}

uint64_t sub_26B17F408()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B17F518()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = OUTLINED_FUNCTION_15();
  v6(v5);
  sub_26B212F00();
  (*(v3 + 8))(v1, v2);
  v7 = v0[3];
  v8 = sub_26B212EF0();
  v9 = v0[15];
  if (v7 == v8)
  {
    OUTLINED_FUNCTION_35_0();
    *v4 = v0[2];

    OUTLINED_FUNCTION_10_0();

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    v12 = sub_26B212EE0();
    OUTLINED_FUNCTION_34_0(v12);
    if (v4)
    {
      v13 = OUTLINED_FUNCTION_14_4();
      v9(v13);
    }

    else
    {
      v19 = v0[11];
      result = sub_26B213730();
      if (v19 != 8)
      {
        __break(1u);
        return result;
      }

      v20 = OUTLINED_FUNCTION_20_3(result);
      MEMORY[8](v20);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_19_3();
    v14 = OUTLINED_FUNCTION_15();
    v15(v14);
    OUTLINED_FUNCTION_5_6();
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v17 = OUTLINED_FUNCTION_6_11(v16);

    return v18(v17);
  }
}

uint64_t sub_26B17F704()
{
  OUTLINED_FUNCTION_12();
  (*(v0[10] + 8))(v0[13], v0[9]);

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  OUTLINED_FUNCTION_33();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B17F7C8()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  v0[3] = sub_26B212870();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  OUTLINED_FUNCTION_45_0();
  v5 = sub_26B212F50();
  *v4 = v0;
  v4[1] = sub_26B17F8E8;
  v6 = v0[5];
  v7 = v0[4];

  return MEMORY[0x282200540](v0 + 2, v0 + 3, &unk_26B217248, v3, v7, v5, v6);
}

uint64_t sub_26B17F8E8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B17FA08()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B17FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[4] = AssociatedTypeWitness;
  v4[5] = *(AssociatedTypeWitness - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B17FB3C, 0, 0);
}

uint64_t sub_26B17FB3C()
{
  OUTLINED_FUNCTION_12();
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  OUTLINED_FUNCTION_45_0();
  sub_26B212F50();
  sub_26B212F00();

  OUTLINED_FUNCTION_10_0();

  return v1();
}

void Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_27_0();
  v49 = v1;
  v50 = v2;
  v4 = v3;
  v6 = v5;
  v51 = v8;
  v52 = v7;
  v47 = v9;
  v48 = sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v46 = v10;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  OUTLINED_FUNCTION_9_0();
  v44 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = sub_26B2133E0();
  OUTLINED_FUNCTION_21(v19);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_9_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v45 = v27;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v43 - v29;
  (*(v22 + 16))(v26, v52, v4);
  v52 = v30;
  sub_26B212D10();
  swift_getAssociatedConformanceWitness();
  v31 = (v44 + 32);
  v32 = (v44 + 8);
  for (i = (v46 + 8); ; (*i)(v13, v48))
  {
    sub_26B213460();
    OUTLINED_FUNCTION_10_7(v0);
    if (v34)
    {
      v36 = OUTLINED_FUNCTION_50_0();
      v37(v36);
      v38 = 1;
      v35 = v51;
      v39 = v47;
      goto LABEL_7;
    }

    (*v31)(v18, v0, v6);
    v35 = v51;
    sub_26B212950();
    (*v32)(v18, v6);
    if (__swift_getEnumTagSinglePayload(v13, 1, v35) != 1)
    {
      break;
    }
  }

  v40 = OUTLINED_FUNCTION_50_0();
  v41(v40);
  OUTLINED_FUNCTION_16();
  v39 = v47;
  (*(v42 + 32))(v47, v13, v35);
  v38 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v39, v38, 1, v35);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_26B17FFA4()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B1760A8;
  v4 = OUTLINED_FUNCTION_15();

  return sub_26B17FA64(v4, v5, v6, v2);
}

uint64_t OUTLINED_FUNCTION_19_3()
{
  *(v1 + 128) = v0;

  return sub_26B212F30();
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1)
{

  return sub_26B213460();
}

uint64_t OUTLINED_FUNCTION_34_0(char a1)
{

  return sub_26B212E80();
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_47_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = result;
  v6[4] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return sub_26B212D10();
}

uint64_t Dictionary.mapKeys<A>(_:)()
{
  OUTLINED_FUNCTION_12_8();
  v23 = v1;
  OUTLINED_FUNCTION_9_9();
  v19 = v3;
  v20 = v2;
  v21 = v4;
  OUTLINED_FUNCTION_3_11();
  sub_26B212940();
  OUTLINED_FUNCTION_7_8();
  sub_26B162128();
  v5 = OUTLINED_FUNCTION_1_14();
  result = OUTLINED_FUNCTION_4_11(v5, v6, v7, v8, v9, v5, MEMORY[0x277D84950], v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  if (!v0)
  {
    v12 = OUTLINED_FUNCTION_13_7(result);
    OUTLINED_FUNCTION_0_18(v12);
    return OUTLINED_FUNCTION_14_5(&v23);
  }

  return result;
}

uint64_t sub_26B18038C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, void *a7)
{
  v18[1] = a5;
  v19 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = v18 - v14;
  result = a2(a1);
  if (v7)
  {
    *a7 = v7;
  }

  else
  {
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v13 + 16))(v15, a1, TupleTypeMetadata2);
    (*(*(a4 - 8) + 32))(a6 + v17, &v15[*(TupleTypeMetadata2 + 48)], a4);
    return (*(*(v19 - 8) + 8))(v15);
  }

  return result;
}

uint64_t Dictionary.compactMapKeys<A>(_:)()
{
  OUTLINED_FUNCTION_12_8();
  v12 = v1;
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_3_11();
  sub_26B212940();
  OUTLINED_FUNCTION_7_8();
  v2 = OUTLINED_FUNCTION_2_14();
  result = OUTLINED_FUNCTION_6_12(v2, v3, v4, v5, v2, v6, v7, v8, v11);
  if (!v0)
  {
    v12 = result;
    v10 = sub_26B212F50();
    OUTLINED_FUNCTION_0_18(v10);
    return OUTLINED_FUNCTION_14_5(&v12);
  }

  return result;
}

uint64_t sub_26B18062C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v31 = a4;
  v32 = a2;
  v29 = a3;
  v30 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v27 - v9;
  v11 = sub_26B2133E0();
  v27 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v33;
  result = v32(a1);
  if (!v18)
  {
    v32 = TupleTypeMetadata2;
    v33 = v10;
    v21 = v30;
    v20 = v31;
    if (__swift_getEnumTagSinglePayload(v14, 1, a5) == 1)
    {
      (*(v27 + 8))(v14, v11);
      v22 = swift_getTupleTypeMetadata2();
      return __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
    }

    else
    {
      v23 = *(v15 + 32);
      v23(v17, v14, a5);
      v24 = swift_getTupleTypeMetadata2();
      v27 = *(v24 + 48);
      v23(v21, v17, a5);
      v25 = v33;
      v26 = v32;
      (*(v28 + 16))(v33, a1, v32);
      (*(*(v20 - 8) + 32))(v21 + v27, &v25[*(v26 + 12)], v20);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v24);
      return (*(*(v29 - 8) + 8))(v25);
    }
  }

  return result;
}

uint64_t Dictionary.mapKeyValues<A, B>(_:)()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_9_9();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  OUTLINED_FUNCTION_3_11();
  sub_26B212940();
  OUTLINED_FUNCTION_8_11();
  sub_26B162128();
  v5 = OUTLINED_FUNCTION_1_14();
  result = OUTLINED_FUNCTION_4_11(v5, v6, v7, v8, v9, v5, MEMORY[0x277D84950], v10, v13, v14, v15, v16, v17, v18, v19, v1, v20, v21);
  if (!v0)
  {
    v12 = OUTLINED_FUNCTION_13_7(result);
    OUTLINED_FUNCTION_0_18(v12);
    OUTLINED_FUNCTION_5_7();
    return sub_26B2128D0();
  }

  return result;
}

uint64_t sub_26B180A6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a7@<X8>, uint64_t a8, void *a9)
{
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a7, a7 + v13, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v9)
  {
    *a9 = v9;
  }

  return result;
}

uint64_t Dictionary.compactMapKeyValues<A, B>(_:)()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_3_11();
  sub_26B212940();
  OUTLINED_FUNCTION_8_11();
  v1 = OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_6_12(v1, v2, v3, v4, v1, v5, v6, v7, v11);
  if (!v0)
  {
    v9 = sub_26B212F50();
    OUTLINED_FUNCTION_0_18(v9);
    OUTLINED_FUNCTION_5_7();
    return sub_26B2128D0();
  }

  return v8;
}

uint64_t sub_26B180C14@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, char *, uint64_t, uint64_t)@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a4;
  v55 = a5;
  v56 = a3;
  v57 = a2;
  v52 = a8;
  v48 = *(a7 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v11);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B2133E0();
  v49 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = sub_26B2133E0();
  v53 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = v58;
  result = v57(v26, v20, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (!v28)
  {
    v57 = v18;
    v58 = v15;
    v31 = v49;
    v30 = v50;
    (*(v53 + 32))(v24, v26, v21);
    if (__swift_getEnumTagSinglePayload(v24, 1, a6) == 1)
    {
      (*(v31 + 8))(v20, v58);
      (*(v53 + 8))(v24, v21);
      v32 = v52;
    }

    else
    {
      v56 = *(v30 + 32);
      v56(v51, v24, a6);
      v33 = v31;
      v34 = *(v31 + 32);
      v35 = v57;
      v36 = v58;
      v34();
      v37 = a7;
      if (__swift_getEnumTagSinglePayload(v35, 1, a7) != 1)
      {
        v41 = v47;
        v42 = *(v48 + 32);
        v42(v47, v35, v37);
        v43 = swift_getTupleTypeMetadata2();
        v58 = v37;
        v44 = *(v43 + 48);
        v45 = v52;
        v56(v52, v51, a6);
        v42((v45 + v44), v41, v58);
        v39 = v45;
        v40 = 0;
        v38 = v43;
        return __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
      }

      (*(v30 + 8))(v51, a6);
      (*(v33 + 8))(v35, v36);
      v32 = v52;
    }

    v38 = swift_getTupleTypeMetadata2();
    v39 = v32;
    v40 = 1;
    return __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
  }

  return result;
}

uint64_t Dictionary.removeAll(where:)(uint64_t a1)
{
  sub_26B2128F0();
  OUTLINED_FUNCTION_5_7();
  result = sub_26B212900();
  if (!v2)
  {
    v4 = result;

    *v1 = v4;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1)
{

  return sub_26B2128D0();
}

double Duration.seconds.getter(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_19(a1, a2);
  OUTLINED_FUNCTION_1_15();
  return v3 / 1.0e18 + v2;
}

double Duration.milliseconds.getter(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_19(a1, a2) * 1000.0;
  OUTLINED_FUNCTION_1_15();
  return v2 + v3 / 1.0e15;
}

double Duration.microseconds.getter(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_19(a1, a2) * 1000000.0;
  OUTLINED_FUNCTION_1_15();
  return v2 + v3 / 1.0e12;
}

uint64_t Duration.nanoseconds.getter(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_19(a1, a2) * 1000000000.0;
  result = OUTLINED_FUNCTION_1_15();
  v5 = v2 + v4 / 1000000000.0;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 1.84467441e19)
  {
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26B181420(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B181490(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_26B1815CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
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

        break;
    }
  }

  else
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
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t Sequence<>.hexString.getter(uint64_t a1)
{
  sub_26B212D30();
  sub_26B165308();
  sub_26B165358();
  v1 = sub_26B2129F0();

  return v1;
}

uint64_t sub_26B181890@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_26B15FDE4(0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84B78];
  *(v4 + 16) = xmmword_26B2162F0;
  v6 = MEMORY[0x277D84BC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_26B212AB0();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t StringProtocol.trimmingEnd()(uint64_t a1, uint64_t a2)
{
  sub_26B2129D0();
  if ((v22 & 1) == 0)
  {
    v12 = MEMORY[0x277D84468];
    sub_26B182774(0, &qword_2803E7418, MEMORY[0x277D84468]);
    v13 = sub_26B1827D4(&qword_2803E7420, &qword_2803E7418, v12, MEMORY[0x277D84470]);
    OUTLINED_FUNCTION_2_15(v13, v14, v15, v16, v17, v18, v19, v20, v21);
    return sub_26B2132D0();
  }

  sub_26B213220();
  result = sub_26B213220();
  if (v23 >> 14 >= v21 >> 14)
  {
    v3 = MEMORY[0x277D83638];
    sub_26B182774(0, &qword_2803E7408, MEMORY[0x277D83638]);
    v4 = sub_26B1827D4(&qword_2803E7410, &qword_2803E7408, v3, MEMORY[0x277D83660]);
    OUTLINED_FUNCTION_2_15(v4, v5, v6, v7, v8, v9, v10, v11, v21);
    return sub_26B2132D0();
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall String.init(fourChar:)(Swift::UInt32 fourChar)
{
  v1 = bswap32(fourChar);
  OUTLINED_FUNCTION_0_20(*&fourChar, &qword_2803E7428, MEMORY[0x277D84900]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2151F0;
  if ((v1 & 0x80) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = v1;
  if ((v1 & 0x8000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 33) = BYTE1(v1);
  if ((v1 & 0x800000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 34) = BYTE2(v1);
  if ((v1 & 0x80000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 35) = HIBYTE(v1);
  *(inited + 36) = 0;
  inited = sub_26B1606C4(inited);
LABEL_10:
  result.value._object = v3;
  result.value._countAndFlagsBits = inited;
  return result;
}

void String.fourChar.getter(uint64_t a1, uint64_t a2)
{
  if (sub_26B212BB0() == 4)
  {
    v2 = sub_26B212B10();
    v3 = *(v2 + 16);
    if (v3)
    {
      v10 = MEMORY[0x277D84F90];
      sub_26B15B470(0, v3, 0);
      v4 = 0;
      v5 = v10;
      while (v4 < *(v2 + 16))
      {
        v6 = *(v2 + v4 + 32);
        if (v6 < 0)
        {
          goto LABEL_17;
        }

        v8 = *(v10 + 16);
        v7 = *(v10 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_26B15B470(v7 > 1, v8 + 1, 1);
        }

        ++v4;
        *(v10 + 16) = v8 + 1;
        *(v10 + 4 * v8 + 32) = v6;
        if (v3 == v4)
        {

          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
LABEL_11:
      v9 = *(v5 + 16);
      if (v9)
      {
        if (v9 != 1)
        {
          if (v9 >= 3)
          {
            if (v9 != 3)
            {

              return;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

Swift::String_optional __swiftcall String.init(eightChar:)(Swift::UInt64 eightChar)
{
  v1 = bswap64(eightChar);
  OUTLINED_FUNCTION_0_20(eightChar, &qword_2803E7428, MEMORY[0x277D84900]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2172D0;
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 32) = HIBYTE(v1);
  if ((v1 & 0x80000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 33) = BYTE6(v1);
  if ((v1 & 0x800000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 34) = BYTE5(v1);
  if ((v1 & 0x8000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 35) = BYTE4(v1);
  if ((v1 & 0x80000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 36) = BYTE3(v1);
  if ((v1 & 0x800000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 37) = BYTE2(v1);
  if ((v1 & 0x8000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 38) = BYTE1(v1);
  if ((v1 & 0x80) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 39) = v1;
  *(inited + 40) = 0;
  inited = sub_26B1606C4(inited);
LABEL_18:
  result.value._object = v3;
  result.value._countAndFlagsBits = inited;
  return result;
}

void String.eightChar.getter(uint64_t a1, uint64_t a2)
{
  if (sub_26B212BB0() == 8)
  {
    v2 = sub_26B212B10();
    v3 = *(v2 + 16);
    if (v3)
    {
      v10 = MEMORY[0x277D84F90];
      sub_26B15B4B4(0, v3, 0);
      v4 = 0;
      v5 = v10;
      while (v4 < *(v2 + 16))
      {
        v6 = *(v2 + v4 + 32);
        if (v6 < 0)
        {
          goto LABEL_21;
        }

        v8 = *(v10 + 16);
        v7 = *(v10 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_26B15B4B4(v7 > 1, v8 + 1, 1);
        }

        ++v4;
        *(v10 + 16) = v8 + 1;
        *(v10 + 8 * v8 + 32) = v6;
        if (v3 == v4)
        {

          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
LABEL_11:
      v9 = *(v5 + 16);
      if (v9)
      {
        if (v9 != 1)
        {
          if (v9 >= 3)
          {
            if (v9 != 3)
            {
              if (v9 >= 5)
              {
                if (v9 != 5)
                {
                  if (v9 >= 7)
                  {
                    if (v9 != 7)
                    {

                      return;
                    }

                    goto LABEL_29;
                  }

LABEL_28:
                  __break(1u);
LABEL_29:
                  __break(1u);
                  return;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t String.PaddingMode.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t String.pad(_:to:with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  result = sub_26B212BB0();
  v11 = __OFSUB__(a2, result);
  if (v9)
  {
    if (!v11)
    {
      sub_26B2128F0();
      v12 = sub_26B212CC0();
      v14 = v13;
      v15 = a5;
      sub_26B2128F0();
      MEMORY[0x26D670040](v12, v14);
LABEL_9:

      return v15;
    }

    __break(1u);
  }

  else if (!v11)
  {
    sub_26B2128F0();
    v15 = sub_26B212CC0();
    sub_26B2128F0();
    MEMORY[0x26D670040](a5, a6);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t String.TruncationMode.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t String.truncated(_:to:indicator:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  if (sub_26B212BB0() <= a2)
  {
    sub_26B2128F0();
    return a5;
  }

  if (!v10)
  {
    sub_26B2128F0();
    OUTLINED_FUNCTION_6_13();
    v25 = sub_26B212BB0();
    v26 = __OFSUB__(a2, v25);
    result = a2 - v25;
    if (!v26)
    {
      OUTLINED_FUNCTION_4_12();
      sub_26B1823AC(v27, v28, v29);
      sub_26B16EA1C();
      sub_26B2128F0();
      sub_26B212C00();

      return a3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 == 1)
  {
    OUTLINED_FUNCTION_6_13();
    result = sub_26B212BB0();
    if (!__OFSUB__(a2, result))
    {
      sub_26B2128F0();
      OUTLINED_FUNCTION_4_12();
      v15 = sub_26B182460(v12, v13, v14);
      v16 = MEMORY[0x26D66FF50](v15);

      sub_26B2128F0();
      v17 = OUTLINED_FUNCTION_6_13();
      MEMORY[0x26D670040](v17);

      sub_26B2128F0();
      OUTLINED_FUNCTION_4_12();
      v21 = sub_26B1823AC(v18, v19, v20);
      v22 = MEMORY[0x26D66FF50](v21);
      v24 = v23;

      sub_26B2128F0();
      MEMORY[0x26D670040](v22, v24);

      return v16;
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_26B2128F0();
  OUTLINED_FUNCTION_6_13();
  v30 = sub_26B212BB0();
  v26 = __OFSUB__(a2, v30);
  result = a2 - v30;
  if (!v26)
  {
    OUTLINED_FUNCTION_4_12();
    v34 = sub_26B182460(v31, v32, v33);
    a5 = sub_26B182584(v34, v35, v36, v37, a3, a4);

    return a5;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_26B1823AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_26B212BE0();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      OUTLINED_FUNCTION_10();
      sub_26B212D00();
      OUTLINED_FUNCTION_3_12();
      return OUTLINED_FUNCTION_5_8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B182460(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26B212BE0();
    OUTLINED_FUNCTION_10();
    sub_26B212D00();
    OUTLINED_FUNCTION_3_12();
    return OUTLINED_FUNCTION_5_8();
  }

  return result;
}

void sub_26B1824FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = a3 - a2;
    }

    else
    {
      v4 = 0;
    }

    OUTLINED_FUNCTION_10();
    v9 = sub_26B14F340(v5, v6, v7, v8);
    if (!a1 || v9 >= a1)
    {
      OUTLINED_FUNCTION_10();
      v4 = sub_26B14F314(v10, v11, v12, v13);
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_10();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_26B182584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_26B212BB0();
  v7 = sub_26B213430();
  v8 = __OFADD__(v6, v7);
  result = v6 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x26D66FF70](result);
    sub_26B16EA1C();
    sub_26B212C00();
    sub_26B212C00();
    return 0;
  }

  return result;
}

uint64_t sub_26B182668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26B212BB0();
  v5 = *(a1 + 16);
  v6 = __OFADD__(v4, v5);
  result = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x26D66FF70](result);
    sub_26B182AA4(0, &qword_2803E6D90, MEMORY[0x277D835B0], MEMORY[0x277D83940]);
    sub_26B182AF4();
    sub_26B212C00();
    sub_26B212C00();
    return 0;
  }

  return result;
}

void sub_26B182774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D83760], MEMORY[0x277D83768]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26B1827D4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_26B182774(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_26B182818(char *__src, char *__dst, size_t a3)
{
  if (__dst != __src || &__src[a3] <= __dst)
  {
    return memmove(__dst, __src, a3);
  }

  return __src;
}

unint64_t sub_26B182840()
{
  result = qword_2803E7430;
  if (!qword_2803E7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7430);
  }

  return result;
}

unint64_t sub_26B182898()
{
  result = qword_2803E7438;
  if (!qword_2803E7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7438);
  }

  return result;
}

_BYTE *_s11PaddingModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s14TruncationModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_26B182AA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26B182AF4()
{
  result = qword_2803E6D98;
  if (!qword_2803E6D98)
  {
    sub_26B182AA4(255, &qword_2803E6D90, MEMORY[0x277D835B0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6D98);
  }

  return result;
}

uint64_t sub_26B182B84(int a1)
{
  sub_26B214030();
  sub_26B214060();
  return sub_26B214070();
}

uint64_t sub_26B182BCC(char a1)
{
  sub_26B214030();
  MEMORY[0x26D671480](a1 & 1);
  return sub_26B214070();
}

uint64_t sub_26B182C14(uint64_t a1, uint64_t a2)
{
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  return sub_26B214070();
}

uint64_t sub_26B182C64(uint64_t a1)
{
  v1 = a1;
  sub_26B214030();
  sub_26B1BDCBC(v3, v1);
  return sub_26B214070();
}

uint64_t sub_26B182CC4()
{
  OUTLINED_FUNCTION_17_5();
  MEMORY[0x26D671480](v0);
  return sub_26B214070();
}

uint64_t sub_26B182D00()
{
  OUTLINED_FUNCTION_17_5();
  MEMORY[0x26D671480](v0 + 1);
  return sub_26B214070();
}

uint64_t sub_26B182D40()
{
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_28_3();
  return sub_26B214070();
}

uint64_t sub_26B182D80()
{
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_28_3();
  return sub_26B214070();
}

uint64_t sub_26B182DC0(uint64_t a1)
{
  OUTLINED_FUNCTION_26_4(a1);
  sub_26B214060();
  return sub_26B214070();
}

uint64_t sub_26B182DFC(uint64_t a1)
{
  OUTLINED_FUNCTION_26_4(a1);
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t sub_26B182E38(uint64_t a1)
{
  OUTLINED_FUNCTION_26_4(a1);
  sub_26B1BDCBC(v3, v1);
  return sub_26B214070();
}

uint64_t sub_26B182E74(uint64_t a1)
{
  OUTLINED_FUNCTION_26_4(a1);
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();

  return sub_26B214070();
}

uint64_t sub_26B182EEC(uint64_t a1)
{
  OUTLINED_FUNCTION_26_4(a1);
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();

  return sub_26B214070();
}

uint64_t sub_26B182F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  return sub_26B214070();
}

uint64_t sub_26B182FAC(uint64_t a1)
{
  OUTLINED_FUNCTION_26_4(a1);
  OUTLINED_FUNCTION_28_3();
  return sub_26B214070();
}

uint64_t sub_26B182FEC(uint64_t a1)
{
  OUTLINED_FUNCTION_26_4(a1);
  OUTLINED_FUNCTION_28_3();
  return sub_26B214070();
}

uint64_t sub_26B18302C(uint64_t a1, char a2)
{
  sub_26B214030();
  MEMORY[0x26D671480](a2 & 1);
  return sub_26B214070();
}

uint64_t sub_26B183070(uint64_t a1)
{
  OUTLINED_FUNCTION_26_4(a1);
  MEMORY[0x26D671480](v1 + 1);
  return sub_26B214070();
}

uint64_t sub_26B1830B0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_26B212CD0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1830F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_26B2127C0();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_26B1831A0(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1831E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B1831A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26B183210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1831B8(*v1);
  *a1 = result;
  return result;
}

void Task<>.Condition.description.getter()
{
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x26D670040](42, 0xE100000000000000);
      sub_26B213190();
    }
  }

  else
  {
    swift_getErrorValue();
    Error.onionDescription.getter();
  }
}

void *Task<>.Condition.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26B1830B0(a1, a2);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v6;
  v9 = v7;
  v10 = v6 == 35 && v7 == 0xE100000000000000;
  if (!v10 && (OUTLINED_FUNCTION_16_3(35) & 1) == 0)
  {
    v14 = v8 == 40 && v9 == 0xE100000000000000;
    if (v14 || (OUTLINED_FUNCTION_16_3(40) & 1) != 0)
    {

      v12 = static SonicErrorOnion.decodeOnion(_:)(a1, a2);

      if (v12)
      {
        v13 = 0;
        goto LABEL_22;
      }

LABEL_21:
      v12 = 0;
      v13 = -1;
      goto LABEL_22;
    }

    if (v8 == 42 && v9 == 0xE100000000000000)
    {
    }

    else
    {
      v16 = OUTLINED_FUNCTION_16_3(42);

      if ((v16 & 1) == 0)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    sub_26B16CD98(1uLL, a1, a2);
    result = sub_26B2131A0();
    if ((v17 & 1) == 0)
    {
      v12 = result;
      v13 = 1;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v12 = 0;
  v13 = 2;
LABEL_22:
  *a3 = v12;
  *(a3 + 8) = v13;
  return result;
}

uint64_t static Task<>.checkCondition(_:)()
{
  OUTLINED_FUNCTION_25();
  v0[8] = v1;
  v0[9] = v2;
  v3 = sub_26B2138A0();
  v0[10] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v0[11] = v4;
  v0[12] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_25();
  v0[2] = v1;
  v2 = sub_26B2138A0();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_7(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_26B1834CC()
{
  v22 = v0;
  sub_26B213110();
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = OUTLINED_FUNCTION_8_12();
  sub_26B1865EC(v5, v6, v7, v8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v10 = qword_280D2DB28;
  sub_26B2128F0();
  if (v10 != -1)
  {
    OUTLINED_FUNCTION_0_21();
    swift_once();
  }

  os_unfair_lock_lock(&dword_280D2DB30);
  sub_26B1851D4(&qword_280D2DB38, inited, &v20);
  swift_setDeallocating();
  sub_26B1858EC();
  os_unfair_lock_unlock(&dword_280D2DB30);
  v11 = v20;
  *(v0 + 104) = v20;
  v12 = v21;
  *(v0 + 128) = v21;
  if (v12)
  {
    if (v12 == 1)
    {
      sub_26B214150();
      sub_26B213F40();
      OUTLINED_FUNCTION_13(&dword_26B217418);
      v16 = swift_task_alloc();
      *(v0 + 112) = v16;
      *v16 = v0;
      v16[1] = sub_26B18374C;
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_30_3();

      __asm { BR              X5 }
    }

    if (v12 != 2)
    {

      OUTLINED_FUNCTION_10_0();
LABEL_2:
      OUTLINED_FUNCTION_30_3();

      __asm { BRAA            X1, X16 }
    }

    sub_26B212FB0();
    OUTLINED_FUNCTION_1_16();
    v15 = sub_26B186730(v13, v14, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_12_9(v15);
    OUTLINED_FUNCTION_29_2();
    swift_willThrow();
  }

  else
  {
    swift_willThrow();
    v19 = v11;
  }

  sub_26B173EF0(*(v0 + 104), *(v0 + 128));

  OUTLINED_FUNCTION_10_0();
  goto LABEL_2;
}

uint64_t sub_26B18374C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[15] = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    v9 = v5[1];

    return v9();
  }
}

uint64_t sub_26B1838D8()
{
  OUTLINED_FUNCTION_25();
  sub_26B173EF0(*(v0 + 104), *(v0 + 128));

  OUTLINED_FUNCTION_10_0();

  return v1();
}

void sub_26B1839F0()
{
  v15 = v0;
  sub_26B213110();
  if (qword_280D2DB28 != -1)
  {
    OUTLINED_FUNCTION_0_21();
    swift_once();
  }

  v3 = *(v0 + 16);
  os_unfair_lock_lock(&dword_280D2DB30);
  sub_26B1851D4(&qword_280D2DB38, v3, &v13);
  os_unfair_lock_unlock(&dword_280D2DB30);
  v4 = v13;
  *(v0 + 48) = v13;
  v5 = v14;
  *(v0 + 72) = v14;
  if (v5)
  {
    if (v5 == 1)
    {
      sub_26B214150();
      sub_26B213F40();
      OUTLINED_FUNCTION_13(&dword_26B217418);
      v9 = swift_task_alloc();
      *(v0 + 56) = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_20_4(v9);
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_30_3();

      __asm { BR              X5 }
    }

    if (v5 != 2)
    {

      OUTLINED_FUNCTION_10_0();
LABEL_2:
      OUTLINED_FUNCTION_30_3();

      __asm { BRAA            X1, X16 }
    }

    sub_26B212FB0();
    OUTLINED_FUNCTION_1_16();
    v8 = sub_26B186730(v6, v7, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_12_9(v8);
    OUTLINED_FUNCTION_29_2();
    swift_willThrow();
  }

  else
  {
    swift_willThrow();
    v12 = v4;
  }

  sub_26B173EF0(*(v0 + 48), *(v0 + 72));

  OUTLINED_FUNCTION_10_0();
  goto LABEL_2;
}

uint64_t sub_26B183C04()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 64) = v0;

  v7 = OUTLINED_FUNCTION_21_3();
  v8(v7);
  if (!v0)
  {

    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_25_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B183D80()
{
  OUTLINED_FUNCTION_25();
  sub_26B173EF0(*(v0 + 48), *(v0 + 72));

  OUTLINED_FUNCTION_10_0();

  return v1();
}

void static Task<>.checkCondition(_:)(uint64_t a1, uint64_t a2)
{
  sub_26B212740();
  OUTLINED_FUNCTION_22_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  sub_26B213110();
  if (!v3)
  {
    v16 = OUTLINED_FUNCTION_8_12();
    sub_26B1865EC(v16, v17, v18, v19);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v21 = qword_280D2DB28;
    sub_26B2128F0();
    if (v21 != -1)
    {
      OUTLINED_FUNCTION_0_21();
      swift_once();
    }

    os_unfair_lock_lock(&dword_280D2DB30);
    sub_26B1851D4(&qword_280D2DB38, inited, &v28);
    swift_setDeallocating();
    sub_26B1858EC();
    os_unfair_lock_unlock(&dword_280D2DB30);
    v22 = v29;
    if (v29 != 255)
    {
      v23 = v28;
      v24 = sub_26B213020();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v24);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = v23;
      *(v25 + 40) = v22;
      sub_26B185F0C(v23, v22);
      OUTLINED_FUNCTION_19_4();
      sub_26B161608();
      v27 = v26;
      sub_26B212730();
      sub_26B184458(v11, v27);
      (*(v7 + 8))(v11, v2);
      sub_26B173EF0(v23, v22);
    }
  }
}

uint64_t sub_26B184060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  v6 = sub_26B2138A0();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B184124, 0, 0);
}

uint64_t sub_26B184124()
{
  OUTLINED_FUNCTION_10_3();
  if (*(v0 + 64))
  {
    if (*(v0 + 64) == 1)
    {
      sub_26B214150();
      sub_26B213F40();
      OUTLINED_FUNCTION_13(&dword_26B217418);
      v10 = v1;
      v2 = swift_task_alloc();
      *(v0 + 48) = v2;
      *v2 = v0;
      OUTLINED_FUNCTION_20_4(v2);
      OUTLINED_FUNCTION_4_13();

      return v10();
    }

    sub_26B212FB0();
    OUTLINED_FUNCTION_1_16();
    v8 = sub_26B186730(v6, v7, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_12_9(v8);
    OUTLINED_FUNCTION_29_2();
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 16);
    swift_willThrow();
    v5 = v4;
  }

  OUTLINED_FUNCTION_10_0();

  return v9();
}

uint64_t sub_26B184280()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 56) = v0;

  v7 = OUTLINED_FUNCTION_21_3();
  v8(v7);
  if (!v0)
  {

    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_25_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1843FC()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

void sub_26B184458(uint64_t a1, uint64_t a2)
{
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch_semaphore_create(0);
  sub_26B1863A0(0, &qword_2803E7498, MEMORY[0x277D84F78] + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  *(v7 + 24) = 0;
  v8 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v9[5] = v7;
  v9[6] = a2;
  v10 = v6;
  swift_retain_n();
  v11 = v10;

  sub_26B161608();

  if (sub_26B213390())
  {
    sub_26B1864BC();
    swift_allocError();
LABEL_5:
    swift_willThrow();

    return;
  }

  v12 = *(v7 + 24);
  if (v12)
  {
    v13 = v12;
    goto LABEL_5;
  }

  swift_beginAccess();
  if (*(v7 + 16))
  {
    __break(1u);
  }

  else
  {
  }
}

void *sub_26B184660@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = dispatch_semaphore_create(0);
  sub_26B1863A0(0, &qword_2803E7480, &type metadata for OSState.Snapshot);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 88) = 0;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v11 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = a2;
  v13 = v9;
  swift_retain_n();
  v14 = v13;

  OUTLINED_FUNCTION_19_4();
  sub_26B1617D0();

  if (sub_26B213390())
  {
    sub_26B1864BC();
    swift_allocError();
LABEL_5:
    swift_willThrow();
  }

  v15 = *(v10 + 88);
  if (v15)
  {
    v16 = v15;
    goto LABEL_5;
  }

  result = swift_beginAccess();
  v18 = *(v10 + 24);
  if (v18)
  {
    *__src = *(v10 + 16);
    *&__src[8] = v18;
    v19 = *(v10 + 48);
    *&__src[16] = *(v10 + 32);
    *&__src[32] = v19;
    *&__src[48] = *(v10 + 64);
    __src[64] = *(v10 + 80);
    sub_26B186510(__src, v20);

    return memcpy(a3, __src, 0x41uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static Task<>.checkCondition(_:)(uint64_t a1)
{
  sub_26B212740();
  OUTLINED_FUNCTION_22_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  sub_26B213110();
  if (!v2)
  {
    if (qword_280D2DB28 != -1)
    {
      OUTLINED_FUNCTION_0_21();
      swift_once();
    }

    os_unfair_lock_lock(&dword_280D2DB30);
    sub_26B1851D4(&qword_280D2DB38, a1, &v24);
    os_unfair_lock_unlock(&dword_280D2DB30);
    v14 = v25;
    if (v25 != 255)
    {
      v15 = v24;
      v16 = sub_26B213020();
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = v15;
      *(v17 + 40) = v14;
      v18 = OUTLINED_FUNCTION_23_3();
      sub_26B185F0C(v18, v19);
      OUTLINED_FUNCTION_19_4();
      sub_26B161608();
      v21 = v20;
      sub_26B212730();
      sub_26B184458(v9, v21);
      (*(v5 + 8))(v9, v1);
      v22 = OUTLINED_FUNCTION_23_3();
      sub_26B173EF0(v22, v23);
    }
  }
}

uint64_t sub_26B184ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  v6 = sub_26B2138A0();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B184B90, 0, 0);
}

uint64_t sub_26B184B90()
{
  OUTLINED_FUNCTION_10_3();
  if (*(v0 + 64))
  {
    if (*(v0 + 64) == 1)
    {
      sub_26B214150();
      sub_26B213F40();
      OUTLINED_FUNCTION_13(&dword_26B217418);
      v10 = v1;
      v2 = swift_task_alloc();
      *(v0 + 48) = v2;
      *v2 = v0;
      OUTLINED_FUNCTION_20_4(v2);
      OUTLINED_FUNCTION_4_13();

      return v10();
    }

    sub_26B212FB0();
    OUTLINED_FUNCTION_1_16();
    v8 = sub_26B186730(v6, v7, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_12_9(v8);
    OUTLINED_FUNCTION_29_2();
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 16);
    swift_willThrow();
    v5 = v4;
  }

  OUTLINED_FUNCTION_10_0();

  return v9();
}

uint64_t sub_26B184CEC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 56) = v0;

  v7 = OUTLINED_FUNCTION_21_3();
  v8(v7);
  if (!v0)
  {

    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_25_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void static Task<>.stageCondition(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (qword_280D2DB28 != -1)
  {
    OUTLINED_FUNCTION_0_21();
    swift_once();
  }

  os_unfair_lock_lock(&dword_280D2DB30);
  sub_26B2128F0();
  sub_26B185F0C(v5, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26B1660EC(v5, v6, a2, a3, isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, qword_280D2DB38, v13, v14);
  qword_280D2DB38 = v12;

  os_unfair_lock_unlock(&dword_280D2DB30);
}

void static Task<>.stageCondition(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26B2128F0();
  Task<>.Condition.init(_:)(a1, a2, &v17);
  if (v18 == 255)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_26B2136C0();

    v17 = 0xD000000000000010;
    v18 = 0x800000026B21F910;
    MEMORY[0x26D670040](a1, a2);
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B21F930);
    v14 = v17;
    v15 = v18;
    sub_26B185FFC(0);
    sub_26B186730(&qword_2803E7458, sub_26B185FFC, &protocol conformance descriptor for SonicError<A>);
    swift_allocError();
    *v16 = 1;
    *(v16 + 8) = v14;
    *(v16 + 16) = v15;
    *(v16 + 24) = MEMORY[0x277D84F90];
    swift_willThrow();
  }

  else
  {
    if (qword_280D2DB28 != -1)
    {
      OUTLINED_FUNCTION_0_21();
      swift_once();
    }

    os_unfair_lock_lock(&dword_280D2DB30);
    sub_26B2128F0();
    v8 = OUTLINED_FUNCTION_23_3();
    sub_26B1860AC(v8, v9);
    v10 = OUTLINED_FUNCTION_23_3();
    sub_26B16EBE0(v10, v11, a3, a4);
    os_unfair_lock_unlock(&dword_280D2DB30);
    v12 = OUTLINED_FUNCTION_23_3();
    sub_26B173EF0(v12, v13);
  }
}

void static Task<>.clearConditions()()
{
  if (qword_280D2DB28 != -1)
  {
    OUTLINED_FUNCTION_0_21();
    swift_once();
  }

  os_unfair_lock_lock(&dword_280D2DB30);
  sub_26B1860C0(0, v0, v1, v2);
  sub_26B212910();

  os_unfair_lock_unlock(&dword_280D2DB30);
}

uint64_t sub_26B185188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26B166828(0, a2, a3, a4);
  result = sub_26B2128C0();
  dword_280D2DB30 = 0;
  qword_280D2DB38 = result;
  return result;
}

void sub_26B1851D4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *a1;
    v6 = (a2 + 40);
    do
    {
      if (*(v5 + 16))
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        sub_26B2128F0();
        v9 = sub_26B16E800(v8, v7);
        if (v10)
        {
          v12 = *(v5 + 56) + 16 * v9;
          v4 = *v12;
          v11 = *(v12 + 8);
          sub_26B185F0C(*v12, v11);
          sub_26B1CEDA8(v8, v7, &v13);

          sub_26B173EF0(v13, v14);
          goto LABEL_9;
        }
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  v11 = -1;
LABEL_9:
  *a3 = v4;
  *(a3 + 8) = v11;
}

uint64_t sub_26B1852BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a5;
  v8 = swift_task_alloc();
  v6[7] = v8;
  v9 = sub_26B16C9BC(0, &qword_280D2DA78, MEMORY[0x277D84948]);
  *v8 = v6;
  v8[1] = sub_26B185390;
  v10 = MEMORY[0x277D84950];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v6 + 9, a6, v11, v9, v10);
}

uint64_t sub_26B185390()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B18548C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 48);
  *(v0 + 72) = 0;
  result = swift_beginAccess();
  v3 = *(v0 + 72);
  *(v1 + 16) = v3;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_26B2133A0();
    OUTLINED_FUNCTION_10_0();

    return v4();
  }

  return result;
}

uint64_t sub_26B185514()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;

  swift_willThrow();
  sub_26B2133A0();
  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B18559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[42] = a4;
  v6[43] = a5;
  v6[41] = a1;
  v8 = swift_task_alloc();
  v6[44] = v8;
  v9 = sub_26B16C9BC(0, &qword_280D2DA78, MEMORY[0x277D84948]);
  *v8 = v6;
  v8[1] = sub_26B185670;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 2, a6, &type metadata for OSState.Snapshot, v9, v10);
}

uint64_t sub_26B185670()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B18576C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 344);
  swift_beginAccess();
  memcpy((v0 + 88), (v1 + 16), 0x41uLL);
  memcpy((v1 + 16), (v0 + 16), 0x41uLL);
  result = sub_26B18656C(v0 + 88);
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v0 + 344);
    v5 = *(v0 + 328);
    v6 = *(v1 + 16);
    *v5 = v6;
    *(v5 + 8) = v3;
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    v9 = *(v4 + 64);
    *(v5 + 64) = *(v4 + 80);
    *(v5 + 32) = v8;
    *(v5 + 48) = v9;
    *(v5 + 16) = v7;
    *(v0 + 160) = v6;
    *(v0 + 168) = v3;
    v10 = *(v4 + 32);
    v11 = *(v4 + 48);
    v12 = *(v4 + 64);
    *(v0 + 224) = *(v4 + 80);
    *(v0 + 192) = v11;
    *(v0 + 208) = v12;
    *(v0 + 176) = v10;
    sub_26B186510(v0 + 160, v0 + 232);
    sub_26B2133A0();
    OUTLINED_FUNCTION_10_0();

    return v13();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B185864()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = *(v2 + 88);
  *(v2 + 88) = v1;
  v4 = v1;

  swift_willThrow();
  sub_26B2133A0();
  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1858EC()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26B185930()
{
  sub_26B16C9BC(0, &qword_2803E6DC0, MEMORY[0x277D84D98]);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26B185994()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_26B213880();
  *(v1 + 64) = v12;
  OUTLINED_FUNCTION_1_7(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26B185A84()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26B2138A0();
  v5 = sub_26B186730(&qword_2803E74A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_26B213F20();
  sub_26B186730(&qword_2803E74A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_26B2138B0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26B185C14;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_26B185C14()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_10_0();

    return v14();
  }
}

uint64_t sub_26B185DB4()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

void sub_26B185E18(uint64_t a1)
{
  if (!qword_2803E6DE0)
  {
    sub_26B213020();
    v1 = sub_26B2133E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E6DE0);
    }
  }
}

uint64_t sub_26B185E70()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_25_2();

  return sub_26B184060(v3, v4, v5, v6, v7);
}

id sub_26B185F0C(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  sub_26B166870(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_26B185F60()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_25_2();

  return sub_26B184ACC(v3, v4, v5, v6, v7);
}

void sub_26B185FFC(uint64_t a1)
{
  if (!qword_2803E7448)
  {
    v2 = sub_26B186058();
    v4 = type metadata accessor for SonicError(a1, &type metadata for TaskConditionError, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_2803E7448);
    }
  }
}

unint64_t sub_26B186058()
{
  result = qword_2803E7450;
  if (!qword_2803E7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7450);
  }

  return result;
}

id sub_26B1860AC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_26B185F0C(result, a2);
  }

  return result;
}

void sub_26B1860C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2803E7460)
  {
    sub_26B166828(255, a2, a3, a4);
    v4 = sub_26B212920();
    if (!v5)
    {
      atomic_store(v4, &qword_2803E7460);
    }
  }
}

uint64_t sub_26B186140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_ScT15SonicFoundations5NeverORszACRs_rlE9ConditionOyA2C_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

_BYTE *storeEnumTagSinglePayload for TaskConditionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B186278()
{
  result = qword_2803E7468;
  if (!qword_2803E7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7468);
  }

  return result;
}

unint64_t sub_26B1862D0()
{
  result = qword_2803E7470;
  if (!qword_2803E7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7470);
  }

  return result;
}

unint64_t sub_26B186324(uint64_t a1)
{
  result = sub_26B18634C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B18634C()
{
  result = qword_2803E7478;
  if (!qword_2803E7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7478);
  }

  return result;
}

void sub_26B1863A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v6 = sub_26B16C9BC(255, &qword_280D2DA78, MEMORY[0x277D84948]);
    v7 = type metadata accessor for _OpaqueResult(a1, a3, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_26B186418()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_24_3();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_10(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_16(v4);

  return sub_26B18559C(v6, v7, v8, v9, v1, v2);
}

unint64_t sub_26B1864BC()
{
  result = qword_2803E7488;
  if (!qword_2803E7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7488);
  }

  return result;
}

uint64_t sub_26B18656C(uint64_t a1)
{
  sub_26B1865EC(0, &qword_2803E7490, &type metadata for OSState.Snapshot, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B1865EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B18668C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_24_3();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_10(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_16(v4);

  return sub_26B1852BC(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_26B186730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_26B214030();
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1)
{

  return sub_26B214030();
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_26B212880();
}

uint64_t sub_26B18681C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[5] = a4;
  v23[6] = a5;
  sub_26B162308(a3, v12);
  v13 = sub_26B213020();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_26B16239C(v12);
  }

  else
  {
    sub_26B213010();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26B212F70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26B212B10();
      sub_26B18A234(v19 + 32, v23);

      v20 = v23[0];
      sub_26B16239C(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26B16239C(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26B186A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a4;
  v26[1] = a5;
  sub_26B162308(a3, v13);
  v14 = sub_26B213020();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_26B16239C(v13);
  }

  else
  {
    sub_26B213010();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26B212F70();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26B212B10();
      sub_26B18A2F0(v20 + 32, v26, a6, v25);

      v21 = v25[0];
      sub_26B16239C(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26B16239C(a3);
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a4;
  v22[4] = a5;
  if (v19 | v17)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v17;
    v25[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26B186C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_25_3(a1, a3);
  OUTLINED_FUNCTION_0();
  v29 = v6;
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  sub_26B185E18(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = dispatch_semaphore_create(0);
  v15 = sub_26B162128();
  type metadata accessor for _OpaqueResult(0, a2, v15, MEMORY[0x277D84950]);
  v16 = sub_26B188F48();
  v17 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
  OUTLINED_FUNCTION_18_4();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v14;
  v18[5] = v16;
  v18[6] = v3;
  v19 = v14;
  swift_retain_n();
  v20 = v19;

  v21 = OUTLINED_FUNCTION_19_4();
  sub_26B18681C(v21, v22, v13, v23, v18, a2);

  if (sub_26B213390())
  {
    sub_26B1864BC();
    swift_allocError();
LABEL_5:
    swift_willThrow();
  }

  v24 = *(v16 + *(*v16 + 112));
  if (v24)
  {
    v25 = v24;
    goto LABEL_5;
  }

  v27 = *(*v16 + 104);
  swift_beginAccess();
  (*(v29 + 16))(v8, v16 + v27, v30);
  result = __swift_getEnumTagSinglePayload(v8, 1, a2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(*(a2 - 8) + 32))(v28, v8, a2);
  }

  return result;
}

uint64_t sub_26B186F68()
{
  sub_26B18A748();
  swift_allocObject();
  result = sub_26B2141B0();
  qword_2803F29A0 = result;
  return result;
}

uint64_t static Task<>.retrying(priority:count:delay:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  sub_26B185E18(0);
  v13 = OUTLINED_FUNCTION_21(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  sub_26B162308(a1, v15 - v14);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a5;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  *(v17 + 64) = a6;

  v18 = OUTLINED_FUNCTION_19_4();
  return sub_26B18681C(v18, v19, v16, v20, v17, a5);
}

uint64_t sub_26B1870A0(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a2;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  return MEMORY[0x2822009F8](sub_26B1870C8, 0, 0);
}

void sub_26B1870C8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[3];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v0[7] = 1;
      OUTLINED_FUNCTION_0_22();
      swift_task_alloc();
      OUTLINED_FUNCTION_9_2();
      v0[8] = v2;
      *v2 = v3;
      OUTLINED_FUNCTION_13_8();
    }

    else
    {
      sub_26B213110();
      OUTLINED_FUNCTION_0_22();
      swift_task_alloc();
      OUTLINED_FUNCTION_9_2();
      v0[10] = v8;
      *v8 = v9;
      OUTLINED_FUNCTION_14_6();
    }

    *(v4 + 8) = v5;
    v6 = OUTLINED_FUNCTION_30_4();

    v7(v6);
  }
}

uint64_t sub_26B18721C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t sub_26B187334()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B187414()
{
  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 48) * 1000000000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](v1);
  }

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_26B1874F4;
  v1 = v2;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_26B1874F4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26B1875F0()
{
  OUTLINED_FUNCTION_12();

  v1 = *(v0 + 56);
  if (v1 == *(v0 + 24))
  {
    v2 = *(v0 + 96);
    sub_26B213110();
    if (v2)
    {
      OUTLINED_FUNCTION_10_0();

      v3();
      return;
    }

    OUTLINED_FUNCTION_0_22();
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v0 + 80) = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_14_6();
  }

  else
  {
    *(v0 + 56) = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_22();
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v0 + 64) = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_13_8();
  }

  *(v6 + 8) = v7;
  v10 = OUTLINED_FUNCTION_30_4();

  v11(v10);
}

uint64_t sub_26B187754()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1877B0()
{
  OUTLINED_FUNCTION_6_14();
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v4 = v0[8];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_10(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_17(v6);

  return sub_26B1870A0(v8, v4, v9, v10, v1, v2, v3);
}

uint64_t static Task<>.delayed(by:priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_26B185E18(0);
  v11 = OUTLINED_FUNCTION_21(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  sub_26B162308(a1, v13 - v12);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;

  v16 = OUTLINED_FUNCTION_19_4();
  return sub_26B18681C(v16, v17, v14, v18, v15, a4);
}

uint64_t sub_26B187958(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26B187980, 0, 0);
}

uint64_t sub_26B187980(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  OUTLINED_FUNCTION_25();
  v5 = v4;
  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *v6 = v1;
  v6[1] = sub_26B187A60;
  a1 = v5;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_26B187A60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    v12 = v9;
    v10 = swift_task_alloc();
    *(v3 + 56) = v10;
    *v10 = v5;
    v10[1] = sub_26B187BF0;
    v11 = *(v3 + 16);

    return v12(v11);
  }
}

uint64_t sub_26B187BF0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26B187D1C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_26_5();
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_10(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_14(v7);

  return sub_26B187958(v9, v3, v1, v2, v5, v4);
}

uint64_t static Task<>.delayed(for:priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26B185E18(0);
  v13 = OUTLINED_FUNCTION_21(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  sub_26B162308(a3, v15 - v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a4;
  v17[8] = a5;

  v18 = OUTLINED_FUNCTION_19_4();
  return sub_26B18681C(v18, v19, v16, v20, v17, a6);
}

uint64_t sub_26B187EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_26B2138A0();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B187F84, 0, 0);
}

uint64_t sub_26B187F84()
{
  OUTLINED_FUNCTION_25();
  sub_26B213F40();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_26B188040;

  return sub_26B185994();
}

uint64_t sub_26B188040()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[9], v3[7]);
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = v3[5];
    (*(v3[8] + 8))(v3[9], v3[7]);
    v15 = (v10 + *v10);
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v3[12] = v11;
    *v11 = v12;
    v11[1] = sub_26B18822C;
    v13 = v3[2];

    return v15(v13);
  }
}

uint64_t sub_26B18822C()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26B188338()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B188394()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_14();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_10(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_17(v6);

  return sub_26B187EBC(v8, v9, v10, v1, v2, v3, v4);
}

uint64_t static Task<>.timeout(by:priority:operation:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26B185E18(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_27_3();
  sub_26B162308(v14, v15);
  OUTLINED_FUNCTION_18_4();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a5;
  v16[5] = a3;
  v16[6] = a4;

  v17 = OUTLINED_FUNCTION_19_4();
  v20 = sub_26B18681C(v17, v18, v13, v19, v16, a5);
  v21 = OUTLINED_FUNCTION_27_3();
  sub_26B162308(v21, v22);
  OUTLINED_FUNCTION_18_4();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = a5;
  *(v23 + 40) = a1;
  *(v23 + 48) = v20;

  v24 = OUTLINED_FUNCTION_19_4();
  v27 = sub_26B18681C(v24, v25, v13, v26, v23, a5);
  v28 = OUTLINED_FUNCTION_27_3();
  sub_26B162308(v28, v29);
  OUTLINED_FUNCTION_18_4();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a5;
  v30[5] = v20;
  v30[6] = v27;
  v31 = OUTLINED_FUNCTION_19_4();
  return sub_26B18681C(v31, v32, v13, v33, v34, a5);
}

uint64_t sub_26B1885CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_26B1760A8;

  return v8(a1);
}

uint64_t sub_26B1886C4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_14();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v5[1] = sub_26B178E9C;

  return sub_26B1885CC(v0, v1, v2, v3);
}

uint64_t sub_26B18878C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26B1887B0, 0, 0);
}

uint64_t sub_26B1887B0(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  OUTLINED_FUNCTION_25();
  v5 = v4;
  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  v6[1] = sub_26B188890;
  a1 = v5;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_26B188890()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_10_0();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_26B1889A8()
{
  OUTLINED_FUNCTION_12();
  sub_26B162128();
  sub_26B2130E0();
  sub_26B212FB0();
  sub_26B18A798();
  swift_allocError();
  sub_26B212880();
  swift_willThrow();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_18_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26B188A98()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_26_5();
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_10(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_14(v7);

  return sub_26B18878C(v4, v9, v2, v3, v5, v1);
}

uint64_t sub_26B188B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v10 = swift_task_alloc();
  v6[4] = v10;
  v11 = sub_26B162128();
  v6[5] = v11;
  *v10 = v6;
  v10[1] = sub_26B188C14;
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a4, a6, v11, v12);
}

uint64_t sub_26B188C14()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_10_0();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_26B188D2C()
{
  OUTLINED_FUNCTION_25();
  sub_26B2130E0();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B188D94()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_14();
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_17(v5);

  return sub_26B188B44(v7, v8, v9, v2, v3, v1);
}

uint64_t Task<>.wait(timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_26B213AB0();
  return sub_26B186C80(a1, a2, a3);
}

{
  OUTLINED_FUNCTION_25_3(a1, a3);
  OUTLINED_FUNCTION_0();
  v26 = v6;
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  sub_26B185E18(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  sub_26B213AB0();
  v14 = dispatch_semaphore_create(0);
  type metadata accessor for _OpaqueResult(0, a2, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v15 = sub_26B188F48();
  v16 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
  OUTLINED_FUNCTION_18_4();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = v15;
  v17[6] = v3;
  v18 = v14;
  swift_retain_n();
  v19 = v18;

  v20 = OUTLINED_FUNCTION_19_4();
  sub_26B186A38(v20, v21, v13, v22, v17, a2);

  if (sub_26B213390())
  {
    sub_26B1864BC();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v24 = *(*v15 + 104);
    swift_beginAccess();
    (*(v26 + 16))(v8, v15 + v24, v27);
    result = __swift_getEnumTagSinglePayload(v8, 1, a2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      return (*(*(a2 - 8) + 32))(v25, v8, a2);
    }
  }

  return result;
}

void *sub_26B188EA8(uint64_t a1)
{
  v2 = sub_26B213170();
  result = __swift_getEnumTagSinglePayload(a1, 1, v2);
  if (result != 1)
  {
    if (qword_2803E6A90 != -1)
    {
      swift_once();
    }

    result = sub_26B2141C0();
    if (v4 != 1)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B188F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6[6] = a4;
  v6[7] = a5;
  v6[5] = a1;
  v8 = *a5;
  v9 = *(*a5 + 80);
  v6[8] = v9;
  v10 = sub_26B2133E0();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[12] = v11;
  v12 = swift_task_alloc();
  v6[13] = v12;
  v13 = *(v8 + 88);
  *v12 = v6;
  v12[1] = sub_26B1890E4;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v11, a6, v9, v13, v14);
}

uint64_t sub_26B1890E4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1891E0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_31_2();
  v3 = OUTLINED_FUNCTION_22_5();
  v4(v3);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_29_3();
  v6(v5);
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_21_4();
    (*(v9 + 32))(v8, v1);
    sub_26B2133A0();

    OUTLINED_FUNCTION_10_0();

    return v10();
  }

  return result;
}

uint64_t sub_26B1892DC()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(*v2 + 112);
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  swift_willThrow();
  sub_26B2133A0();

  OUTLINED_FUNCTION_10_0();

  return v6();
}

uint64_t sub_26B18965C(uint64_t a1)
{
  v2 = sub_26B213170();
  result = __swift_getEnumTagSinglePayload(a1, 1, v2);
  if (result != 1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1896C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a4;
  v6[7] = a5;
  v6[5] = a1;
  v8 = *(*a5 + 80);
  v6[8] = v8;
  v9 = sub_26B2133E0();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[12] = v10;
  v11 = swift_task_alloc();
  v6[13] = v11;
  *v11 = v6;
  v11[1] = sub_26B1897FC;

  return MEMORY[0x282200460](v10, a6, v8);
}

uint64_t sub_26B1897FC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1898E4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_31_2();
  v3 = OUTLINED_FUNCTION_22_5();
  v4(v3);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_29_3();
  v6(v5);
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_21_4();
    (*(v9 + 32))(v8, v1);
    sub_26B2133A0();

    OUTLINED_FUNCTION_10_0();

    return v10();
  }

  return result;
}

uint64_t sub_26B1899DC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_14();
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_17(v5);

  return sub_26B1896C0(v7, v8, v9, v1, v2, v3);
}

uint64_t Result<>.init(catching:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[2] = v3;
  sub_26B162128();
  v4 = sub_26B2140B0();
  v0[3] = v4;
  v0[4] = *(v4 - 8);
  v0[5] = swift_task_alloc();
  v9 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[6] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_4_14(v5);

  return v9(v7);
}

uint64_t sub_26B189BEC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B189CE8()
{
  OUTLINED_FUNCTION_12();
  swift_storeEnumTagMultiPayload();
  v0 = OUTLINED_FUNCTION_27_3();
  v1(v0);

  OUTLINED_FUNCTION_10_0();

  return v2();
}

uint64_t sub_26B189D78()
{
  OUTLINED_FUNCTION_25();
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t TaskUnsafeTimeout.hashValue.getter()
{
  sub_26B214030();
  MEMORY[0x26D671480](0);
  return sub_26B214070();
}

unint64_t sub_26B189E8C()
{
  result = qword_2803E74B0[0];
  if (!qword_2803E74B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E74B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TaskUnsafeTimeout(_BYTE *result, int a2, int a3)
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

uint64_t sub_26B189F8C(uint64_t a1)
{
  result = sub_26B2133E0();
  if (v2 <= 0x3F)
  {
    result = sub_26B2133E0();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_26B18A060()
{
  v1 = *(*v0 + 104);
  v2 = sub_26B2133E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 112);
  v4 = sub_26B2133E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_26B18A14C()
{
  v0 = sub_26B18A060();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *sub_26B18A1A0()
{
  v1 = *v0;
  __swift_storeEnumTagSinglePayload(v0 + *(*v0 + 104), 1, 1, *(*v0 + 80));
  __swift_storeEnumTagSinglePayload(v0 + *(*v0 + 112), 1, 1, *(v1 + 88));
  return v0;
}

uint64_t sub_26B18A234@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B18A2F0@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B18A3DC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26B18A4D4;

  return v6(a1);
}

uint64_t sub_26B18A4D4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B18A5B8()
{
  OUTLINED_FUNCTION_10_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_4(v1);

  return v4(v3);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_18_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26B18A6A4()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_6_14();
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_17(v5);

  return sub_26B188F7C(v7, v8, v9, v1, v2, v3);
}

void sub_26B18A748()
{
  if (!qword_2803E7538)
  {
    v0 = sub_26B2141E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7538);
    }
  }
}

unint64_t sub_26B18A798()
{
  result = qword_2803E7440;
  if (!qword_2803E7440)
  {
    sub_26B212FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return swift_beginAccess();
}

uint64_t static SonicFeatureFlag.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = sub_26B2136E0();
  v4 = v3;
  if (v2 == sub_26B2136E0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26B213E30();
  }

  return v7 & 1;
}

uint64_t SonicFeatureFlag.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t sub_26B18A9F4()
{
  result = qword_2803E7540;
  if (!qword_2803E7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7540);
  }

  return result;
}

unint64_t sub_26B18AA58()
{
  result = qword_2803E7548;
  if (!qword_2803E7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7548);
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

uint64_t getEnumTagSinglePayload for SonicFeatureFlag(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SonicFeatureFlag(uint64_t result, int a2, int a3)
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

uint64_t FixedWidthInteger.rotateLeft(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  result = sub_26B213930();
  if (result <= a1)
  {
    __break(1u);
  }

  else
  {
    v16 = a1;
    sub_26B16BD74();
    OUTLINED_FUNCTION_1_17();
    sub_26B213530();
    result = sub_26B213930();
    if (!__OFSUB__(result, a1))
    {
      v16 = result - a1;
      OUTLINED_FUNCTION_1_17();
      sub_26B213520();
      sub_26B213510();
      v14 = *(v6 + 8);
      v14(v10, a2);
      return (v14)(v12, a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B18AD0C(char a1, uint64_t (*a2)(char *, uint64_t *))
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a1;
  result = a2(&v4, &v5);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B18AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_29();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v18(v14, v14 + *(*(v17 - 8) + 64), v16);
  if (v8)
  {
    return (*(v12 + 32))(a8, v16, a5);
  }

  return result;
}

uint64_t sub_26B18AE70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    sub_26B15FDE4(0);
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84B78];
    v6 = MEMORY[0x277D84BC0];
    do
    {
      v8 = *v3++;
      v7 = v8;
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_26B2162F0;
      *(v9 + 56) = v5;
      *(v9 + 64) = v6;
      OUTLINED_FUNCTION_8_13(v9);
      OUTLINED_FUNCTION_5_9();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_9();
        v4 = v13;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_26B16A704(v10 > 1);
        v4 = v14;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v1;
      --v2;
    }

    while (v2);
  }

  v15 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_0_23();
  sub_26B18CB80(0, &qword_2803E6D38, v15, v16);
  OUTLINED_FUNCTION_3_13(&qword_2803E6DB0);
  v17 = sub_26B2129F0();

  return v17;
}

void sub_26B18AFE8()
{
  v2 = sub_26B212780();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(v5 - v4, v0, v2);
  sub_26B18CB28();
  sub_26B212D10();
  v7 = *(v19 + 16);
  if (v20 == v7)
  {
LABEL_2:

    v8 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_0_23();
    sub_26B18CB80(0, &qword_2803E6D38, v8, v9);
    OUTLINED_FUNCTION_3_13(&qword_2803E6DB0);
    sub_26B2129F0();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v11 = v20;
    while ((v20 & 0x8000000000000000) == 0)
    {
      if (v11 >= *(v19 + 16))
      {
        goto LABEL_13;
      }

      v12 = *(v19 + 32 + v11);
      sub_26B15FDE4(0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_26B2162F0;
      *(v13 + 56) = MEMORY[0x277D84B78];
      *(v13 + 64) = MEMORY[0x277D84BC0];
      OUTLINED_FUNCTION_8_13(v13);
      OUTLINED_FUNCTION_5_9();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_9();
        v10 = v17;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26B16A704(v14 > 1);
        v10 = v18;
      }

      ++v11;
      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v1;
      if (v7 == v11)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t static HashDigest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = *(v7 + 16);
  v12(v10 - v9);
  v13 = sub_26B212050();
  v15 = v14;
  (v12)(v11, a2, a3);
  v16 = sub_26B212050();
  v18 = v17;
  LOBYTE(a2) = MEMORY[0x26D66F410](v13, v15, v16, v17);
  sub_26B14FF4C(v16, v18);
  sub_26B14FF4C(v13, v15);
  return a2 & 1;
}

uint64_t static HashDigest.== infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  (*(v17 + 16))(v16 - v15);
  v18 = sub_26B212050();
  v20 = v19;
  (*(v9 + 16))(v13, a2, a4);
  v21 = sub_26B212050();
  v23 = v22;
  LOBYTE(a2) = MEMORY[0x26D66F410](v18, v20, v21, v22);
  sub_26B14FF4C(v21, v23);
  sub_26B14FF4C(v18, v20);
  return a2 & 1;
}

{
  v6 = Sequence<>.hexString.getter(a3);
  v8 = v7;
  if (v6 == sub_26B2134F0() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26B213E30();
  }

  return v11 & 1;
}

uint64_t HashDigest.makeIterator()(uint64_t a1, uint64_t a2)
{
  sub_26B18B6D8(0);
  sub_26B211D60();
  return v3;
}

void *sub_26B18B6A8@<X0>(uint64_t *a1@<X8>, _BYTE *a2@<X0>, _BYTE *a3@<X1>)
{
  result = sub_26B2079C8(a2, a3);
  *a1 = result;
  a1[1] = 0;
  return result;
}

void sub_26B18B6D8(uint64_t a1)
{
  if (!qword_2803E7550)
  {
    v1 = MEMORY[0x277D84B78];
    sub_26B18CB80(255, &qword_2803E7558, MEMORY[0x277D84B78], MEMORY[0x277D83940]);
    sub_26B18CAE0(&qword_2803E7560, &qword_2803E7558, v1, MEMORY[0x277D83988]);
    v2 = sub_26B213910();
    if (!v3)
    {
      atomic_store(v2, &qword_2803E7550);
    }
  }
}

uint64_t HashDigest.description.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v13 = sub_26B2141F0();
  MEMORY[0x26D670040](8250, 0xE200000000000000);
  (*(v6 + 16))(v10, v2, a1);
  v11 = sub_26B212F60();
  sub_26B18AE70(v11);
  OUTLINED_FUNCTION_5_9();

  MEMORY[0x26D670040](a2, a1);

  return v13;
}

uint64_t sub_26B18B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18CAE0(&qword_2803E7600, &qword_2803E7558, MEMORY[0x277D84B78], MEMORY[0x277CC9C28]);

  return ContiguousBytes.hash<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t sub_26B18B9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18CA64();

  return ContiguousBytes.hash<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t sub_26B18BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C9E8();

  return ContiguousBytes.hash<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t sub_26B18BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C96C();

  return ContiguousBytes.hash<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t sub_26B18BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B16698C();

  return StringProtocol.hash<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t sub_26B18BC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B16BD74();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C918();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C8C4();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C870();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C81C();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C7C8();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C774();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C720();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C6CC();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18BFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C678();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18C038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C624();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C5D0();

  return BinaryInteger.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  return sub_26B18AD84(v8, a6, v10, a2, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], a8);
}

uint64_t sub_26B18C240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C57C();

  return BinaryFloatingPoint.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t sub_26B18C2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B18C528();

  return BinaryFloatingPoint.hash<A>(into:)(a1, a4, a2, v8, a3, v9, v10, v11);
}

uint64_t Optional<A>.hash<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_29();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  OUTLINED_FUNCTION_29();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v22, a2);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    return (*(v11 + 8))(v14, a2);
  }

  (*(v18 + 32))(v21, v14, v16);
  (*(a4 + 8))(a1, a3, a5, v16, a4);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_26B18C528()
{
  result = qword_2803E7568;
  if (!qword_2803E7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7568);
  }

  return result;
}

unint64_t sub_26B18C57C()
{
  result = qword_2803E7570;
  if (!qword_2803E7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7570);
  }

  return result;
}

unint64_t sub_26B18C5D0()
{
  result = qword_2803E7578;
  if (!qword_2803E7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7578);
  }

  return result;
}

unint64_t sub_26B18C624()
{
  result = qword_2803E7580;
  if (!qword_2803E7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7580);
  }

  return result;
}

unint64_t sub_26B18C678()
{
  result = qword_2803E7588;
  if (!qword_2803E7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7588);
  }

  return result;
}

unint64_t sub_26B18C6CC()
{
  result = qword_2803E7590;
  if (!qword_2803E7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7590);
  }

  return result;
}

unint64_t sub_26B18C720()
{
  result = qword_2803E7598;
  if (!qword_2803E7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7598);
  }

  return result;
}

unint64_t sub_26B18C774()
{
  result = qword_2803E75A0;
  if (!qword_2803E75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75A0);
  }

  return result;
}

unint64_t sub_26B18C7C8()
{
  result = qword_2803E75A8;
  if (!qword_2803E75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75A8);
  }

  return result;
}

unint64_t sub_26B18C81C()
{
  result = qword_2803E75B0;
  if (!qword_2803E75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75B0);
  }

  return result;
}

unint64_t sub_26B18C870()
{
  result = qword_2803E75B8;
  if (!qword_2803E75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75B8);
  }

  return result;
}

unint64_t sub_26B18C8C4()
{
  result = qword_2803E75C0;
  if (!qword_2803E75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75C0);
  }

  return result;
}

unint64_t sub_26B18C918()
{
  result = qword_2803E75C8;
  if (!qword_2803E75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75C8);
  }

  return result;
}

unint64_t sub_26B18C96C()
{
  result = qword_2803E75D0;
  if (!qword_2803E75D0)
  {
    sub_26B18CB80(255, &qword_2803E75D8, MEMORY[0x277D84B78], MEMORY[0x277D83DB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75D0);
  }

  return result;
}

unint64_t sub_26B18C9E8()
{
  result = qword_2803E75E0;
  if (!qword_2803E75E0)
  {
    sub_26B18CB80(255, &qword_2803E75E8, MEMORY[0x277D84B78], MEMORY[0x277D836E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75E0);
  }

  return result;
}

unint64_t sub_26B18CA64()
{
  result = qword_2803E75F0;
  if (!qword_2803E75F0)
  {
    sub_26B18CB80(255, &qword_2803E75F8, MEMORY[0x277D84B78], MEMORY[0x277D83F98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E75F0);
  }

  return result;
}

uint64_t sub_26B18CAE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_23();
    sub_26B18CB80(255, v6, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B18CB28()
{
  result = qword_2803E7608;
  if (!qword_2803E7608)
  {
    sub_26B212780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7608);
  }

  return result;
}

void sub_26B18CB80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void OUTLINED_FUNCTION_7_9()
{

  sub_26B16A704(0);
}

uint64_t FNV1a.Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = bswap64(a3);
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = sub_26B162128();
  return sub_26B18AD84(&v8, sub_26B18CDC8, v9, MEMORY[0x277D84D38], v5, a4, MEMORY[0x277D84950], &v7);
}

uint64_t sub_26B18CDC8(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t FNV1a.Digest.hashValue.getter(unint64_t a1)
{
  sub_26B214030();
  sub_26B214040();
  return sub_26B214070();
}

uint64_t sub_26B18CE9C(uint64_t a1)
{
  v2 = *v1;
  sub_26B214030();
  sub_26B18CC1C(v4, v2);
  return sub_26B214070();
}

void *sub_26B18CF08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1FAAB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26B18CF9C(void *a1)
{
  a1[1] = sub_26B18CFDC();
  a1[2] = sub_26B18D030();
  a1[3] = sub_26B18D084();
  result = sub_26B18D0D8();
  a1[4] = result;
  return result;
}

unint64_t sub_26B18CFDC()
{
  result = qword_2803E7610;
  if (!qword_2803E7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7610);
  }

  return result;
}

unint64_t sub_26B18D030()
{
  result = qword_2803E7618;
  if (!qword_2803E7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7618);
  }

  return result;
}

unint64_t sub_26B18D084()
{
  result = qword_2803E7620;
  if (!qword_2803E7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7620);
  }

  return result;
}

unint64_t sub_26B18D0D8()
{
  result = qword_2803E7628;
  if (!qword_2803E7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7628);
  }

  return result;
}

unint64_t sub_26B18D130()
{
  result = qword_2803E7630;
  if (!qword_2803E7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7630);
  }

  return result;
}

void sub_26B18D1CC()
{
  if (!qword_2803E7558)
  {
    v0 = sub_26B212F50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7558);
    }
  }
}

uint64_t sub_26B18D21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B18D268()
{
  result = qword_2803E7640;
  if (!qword_2803E7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7640);
  }

  return result;
}

uint64_t sub_26B18D2DC(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_26B18D33C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_26B18D43C(a1);
  v5 = v4;
  v6 = sub_26B18D43C(v2);
  v8 = v7;
  v9 = MEMORY[0x26D66F410](v3, v5, v6, v7);
  sub_26B14FF4C(v6, v8);
  sub_26B14FF4C(v3, v5);
  return v9 & 1;
}

uint64_t sub_26B18D3BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26B18D4F4(a1);
  v5 = v4;
  v6 = sub_26B18D4F4(a2);
  v8 = v7;
  v9 = MEMORY[0x26D66F410](v3, v5, v6, v7);
  sub_26B14FF4C(v6, v8);
  sub_26B14FF4C(v3, v5);
  return v9 & 1;
}

uint64_t sub_26B18D43C(int a1)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v6[3] = &type metadata for Murmur3.Digest;
  v6[4] = sub_26B18E110();
  LODWORD(v6[0]) = a1;
  v4 = bswap32(*__swift_project_boxed_opaque_existential_1(v6, &type metadata for Murmur3.Digest));
  sub_26B18E61C(&v4, &v5, &v5);
  v2 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v2;
}

uint64_t sub_26B18D4F4(uint64_t a1)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v6[3] = &type metadata for FNV1a.Digest;
  v6[4] = sub_26B18CFDC();
  v6[0] = a1;
  v4 = bswap64(*__swift_project_boxed_opaque_existential_1(v6, &type metadata for FNV1a.Digest));
  sub_26B18E61C(&v4, &v5, &v5);
  v2 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v2;
}

uint64_t sub_26B18D5AC(unint64_t a1)
{
  MEMORY[0x26D670040](8250, 0xE200000000000000);
  v2 = sub_26B18D9B4(a1);
  v3 = sub_26B18AE70(v2);
  v5 = v4;

  MEMORY[0x26D670040](v3, v5);

  return 0x747365676944;
}

uint64_t sub_26B18D63C(uint64_t a1)
{
  v1 = a1;
  MEMORY[0x26D670040](8250, 0xE200000000000000);
  v2 = sub_26B18DB60(v1);
  v3 = sub_26B18AE70(v2);
  v5 = v4;

  MEMORY[0x26D670040](v3, v5);

  return 0x747365676944;
}

uint64_t Murmur3.Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = bswap32(a3);
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = sub_26B162128();
  return sub_26B18AD84(&v8, sub_26B18CDC8, v9, MEMORY[0x277D84CC0], v5, a4, MEMORY[0x277D84950], &v7);
}

uint64_t Murmur3.Digest.hashValue.getter(unsigned int a1)
{
  sub_26B214030();
  sub_26B214040();
  return sub_26B214070();
}

uint64_t sub_26B18D854(uint64_t a1)
{
  v2 = *v1;
  sub_26B214030();
  sub_26B18CC88(v4, v2);
  return sub_26B214070();
}

void *sub_26B18D8C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1FAB18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26B18D950@<X0>(uint64_t a1@<X8>)
{
  result = Murmur3.init()();
  v3 = MEMORY[0x277D84F90];
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

void *sub_26B18D9B4(unint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = bswap64(a1);
  v1 = sub_26B2079C8(&v22, &v23);
  v2 = v1[2];
  v3 = MEMORY[0x277D84F90];
  v4 = 0;
  if (v2)
  {
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (v1 + 4);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (!v4)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_26B18E694(0, &qword_280D2CCD0, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
        v12 = swift_allocObject();
        v13 = 2 * _swift_stdlib_malloc_size(v12) - 64;
        v12[2] = v11;
        v12[3] = v13;
        v14 = (v12 + 4);
        v15 = v3[3];
        if (v3[2])
        {
          if (v12 != v3 || v14 >= v3 + (v15 >> 1) + 32)
          {
            memmove(v12 + 4, v3 + 4, v15 >> 1);
          }

          v3[2] = 0;
        }

        v5 = (v14 + (v15 >> 1));
        v4 = (v13 >> 1) - (v15 >> 1);

        v3 = v12;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v5++ = v7;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v18 = v3[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v17 = __OFSUB__(v19, v4);
    v20 = v19 - v4;
    if (v17)
    {
      goto LABEL_25;
    }

    v3[2] = v20;
  }

  return v3;
}

void *sub_26B18DB60(unsigned int a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = bswap32(a1);
  v1 = sub_26B2079C8(&v22, &v23);
  v2 = v1[2];
  v3 = MEMORY[0x277D84F90];
  v4 = 0;
  if (v2)
  {
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (v1 + 4);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (!v4)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_26B18E694(0, &qword_280D2CCD0, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
        v12 = swift_allocObject();
        v13 = 2 * _swift_stdlib_malloc_size(v12) - 64;
        v12[2] = v11;
        v12[3] = v13;
        v14 = (v12 + 4);
        v15 = v3[3];
        if (v3[2])
        {
          if (v12 != v3 || v14 >= v3 + (v15 >> 1) + 32)
          {
            memmove(v12 + 4, v3 + 4, v15 >> 1);
          }

          v3[2] = 0;
        }

        v5 = (v14 + (v15 >> 1));
        v4 = (v13 >> 1) - (v15 >> 1);

        v3 = v12;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v5++ = v7;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v18 = v3[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v17 = __OFSUB__(v19, v4);
    v20 = v19 - v4;
    if (v17)
    {
      goto LABEL_25;
    }

    v3[2] = v20;
  }

  return v3;
}

void *sub_26B18DD0C()
{
  OUTLINED_FUNCTION_3_14();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  OUTLINED_FUNCTION_0_24();
  sub_26B18E694(0, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v6[2] = v2;
  v6[3] = 2 * v7 - 64;
  return v6;
}

void *sub_26B18DD80()
{
  OUTLINED_FUNCTION_3_14();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  OUTLINED_FUNCTION_0_24();
  sub_26B18E694(0, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v6[2] = v2;
  v6[3] = 2 * ((v7 - 32) / 16);
  return v6;
}

void *sub_26B18DE00()
{
  OUTLINED_FUNCTION_3_14();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_26B18E6E4(0, &qword_2803E6C60, type metadata accessor for URLResourceKey);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * ((v4 - 32) / 8);
  return v3;
}

void *sub_26B18DE88()
{
  OUTLINED_FUNCTION_3_14();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  OUTLINED_FUNCTION_0_24();
  sub_26B18E694(0, v4, v3 + 8, v5);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v6[2] = v2;
  v6[3] = (2 * ((v7 - 32) / 8)) | 1;
  return v6;
}

void *sub_26B18DF10(uint64_t a1, uint64_t a2)
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

  sub_26B18E6E4(0, &qword_2803E7680, type metadata accessor for SQLDatabase.AttachedLocation);
  v4 = *(type metadata accessor for SQLDatabase.AttachedLocation(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26B18E01C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_18();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_26B14EC44(v5 - v9, 1);
  v11 = *v2;
  if (!v10)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v12 = *(v11 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_16;
  }

  sub_26B1734FC((v11 + 32 + a2), v12 - a2, (v11 + 32 + v8));
  v13 = *(v11 + 16);
  v7 = __OFADD__(v13, v10);
  v14 = v13 + v10;
  if (!v7)
  {
    *(v11 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

unint64_t sub_26B18E0D0(void *a1)
{
  a1[1] = sub_26B18E110();
  a1[2] = sub_26B18E164();
  a1[3] = sub_26B18E1B8();
  result = sub_26B18E20C();
  a1[4] = result;
  return result;
}

unint64_t sub_26B18E110()
{
  result = qword_2803E7648;
  if (!qword_2803E7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7648);
  }

  return result;
}

unint64_t sub_26B18E164()
{
  result = qword_2803E7650;
  if (!qword_2803E7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7650);
  }

  return result;
}

unint64_t sub_26B18E1B8()
{
  result = qword_2803E7658;
  if (!qword_2803E7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7658);
  }

  return result;
}

unint64_t sub_26B18E20C()
{
  result = qword_2803E7660;
  if (!qword_2803E7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7660);
  }

  return result;
}

unint64_t sub_26B18E264()
{
  result = qword_2803E7668;
  if (!qword_2803E7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7668);
  }

  return result;
}

unint64_t sub_26B18E2BC()
{
  result = qword_2803E7638;
  if (!qword_2803E7638)
  {
    sub_26B18B6D8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7638);
  }

  return result;
}

unint64_t sub_26B18E318()
{
  result = qword_2803E7670;
  if (!qword_2803E7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7670);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_26B18E380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_26B18E3C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26B18E420(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_18();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_26B17375C(v5 - v9, 1);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 32 * v8);
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_26B173588((v12 + 32 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_26B18E4F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_18();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_26B17385C(v5 - v9, 1);
  v11 = *v2;
  v12 = *(type metadata accessor for SQLDatabase.AttachedLocation(0) - 8);
  v13 = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v14 = *(v12 + 72);
  v15 = v13 + v14 * v8;
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v16 = *(v11 + 16);
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_16;
  }

  sub_26B173634(v13 + v14 * a2, v16 - a2, v15);
  v17 = *(v11 + 16);
  v7 = __OFADD__(v17, v10);
  v18 = v17 - v9;
  if (!v7)
  {
    *(v11 + 16) = v18;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_26B18E61C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
    result = sub_26B211F00();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x26D66F350]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x26D66F370]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_26B18E694(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26B18E6E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B213BA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26B18E73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v24 = v29 - v23;
  if (v18)
  {
    v25 = *(*(v21 - 8) + 72);
    v26 = *(*(v20 - 8) + 72);
    if (v25 == v26)
    {
      goto LABEL_10;
    }

    v27 = v19 * v26;
    if ((v19 * v26) >> 64 == (v19 * v26) >> 63)
    {
      if (v25)
      {
        if (v27 != 0x8000000000000000 || v25 != -1)
        {
          v19 = v27 / v25;
LABEL_10:
          result = v22(v18, v19, v16);
          if (!v11)
          {
            return result;
          }

          return (*(v13 + 32))(a11, v16, a8);
        }

LABEL_17:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  result = v22(0, 0, v29 - v23);
  v16 = v24;
  if (v11)
  {
    return (*(v13 + 32))(a11, v16, a8);
  }

  return result;
}

uint64_t sub_26B18E8C8(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(a3 + 32, *(a3 + 16));
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B18E904@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v34 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v34 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v36 = v5;
  (*(v5 + 16))(&v34 - v22);
  v24 = a2[4];
  v46 = a2 + 4;
  v47 = v24;
  v41 = v12;
  v24(v18, v15, v12, a1, a2);
  v25 = *(v5 + 8);
  v25(v12, a1);
  v25(v15, a1);
  v45 = a2[1];
  v43 = *(v45 + 8);
  sub_26B213520();
  v25(v18, a1);
  sub_26B213540();
  v25(v21, a1);
  v42 = a2;
  v37 = a2[2];
  v38 = a2 + 2;
  v26 = v41;
  v27 = v44;
  v37(v21, v18, v15, v41, v44, a1, v42);
  v25(v27, a1);
  v25(v26, a1);
  v25(v15, a1);
  v25(v21, a1);
  v28 = v39;
  (*(v36 + 32))(v39, v23, a1);
  sub_26B213950();
  v25(v28, a1);
  v25(v18, a1);
  v29 = v42;
  v47(v18, v15, v26, a1, v42);
  v25(v26, a1);
  v25(v18, a1);
  v35 = v23;
  sub_26B213520();
  v25(v15, a1);
  sub_26B213540();
  v25(v21, a1);
  v30 = v41;
  v31 = v44;
  v37(v21, v18, v15, v41, v44, a1, v29);
  v25(v31, a1);
  v25(v30, a1);
  v25(v18, a1);
  v25(v21, a1);
  v32 = v35;
  sub_26B213950();
  v25(v15, a1);
  v25(v32, a1);
  v47(v18, v15, v30, a1, v42);
  v25(v15, a1);
  v25(v18, a1);
  sub_26B213520();
  v25(v30, a1);
  sub_26B213540();
  return (v25)(v21, a1);
}

void XXHashVariant._xxhash_avalanche()()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v58 = v4;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  v57 = v8 - v9;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_7();
  v61 = v11;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_35_1();
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = v53 - v17;
  v54 = v6;
  v19 = OUTLINED_FUNCTION_32_2();
  v20(v19);
  v21 = *(v1 + 32);
  v63 = v1 + 32;
  v64 = v21;
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_27_4();
  v22();
  v23 = *(v6 + 8);
  v24 = OUTLINED_FUNCTION_20_5();
  v23(v24);
  v25 = OUTLINED_FUNCTION_6_16();
  v23(v25);
  v26 = v1;
  v62 = *(v1 + 8);
  v27 = *(v62 + 8);
  OUTLINED_FUNCTION_17_6();
  v60 = v27;
  sub_26B213520();
  v28 = OUTLINED_FUNCTION_12_10();
  v23(v28);
  OUTLINED_FUNCTION_17_6();
  sub_26B213540();
  v29 = OUTLINED_FUNCTION_7_10();
  v23(v29);
  v59 = v26;
  v55 = *(v26 + 16);
  v56 = v26 + 16;
  v30 = OUTLINED_FUNCTION_18_5();
  v31(v30);
  v32 = OUTLINED_FUNCTION_19();
  v23(v32);
  v33 = OUTLINED_FUNCTION_20_5();
  v23(v33);
  v34 = OUTLINED_FUNCTION_6_16();
  v23(v34);
  v35 = OUTLINED_FUNCTION_7_10();
  v23(v35);
  (*(v54 + 32))(v57, v18, v3);
  sub_26B213950();
  v36 = OUTLINED_FUNCTION_19();
  v23(v36);
  v37 = OUTLINED_FUNCTION_12_10();
  v23(v37);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_27_4();
  v64();
  v38 = OUTLINED_FUNCTION_20_5();
  v23(v38);
  v39 = OUTLINED_FUNCTION_12_10();
  v23(v39);
  v53[1] = v18;
  sub_26B213520();
  v40 = OUTLINED_FUNCTION_6_16();
  v23(v40);
  OUTLINED_FUNCTION_19_5();
  sub_26B213540();
  v41 = OUTLINED_FUNCTION_7_10();
  v23(v41);
  v42 = OUTLINED_FUNCTION_18_5();
  v55(v42);
  v43 = OUTLINED_FUNCTION_13_9();
  v23(v43);
  v44 = OUTLINED_FUNCTION_20_5();
  v23(v44);
  v45 = OUTLINED_FUNCTION_12_10();
  v23(v45);
  v46 = OUTLINED_FUNCTION_7_10();
  v23(v46);
  sub_26B213950();
  v47 = OUTLINED_FUNCTION_13_9();
  v23(v47);
  v48 = OUTLINED_FUNCTION_6_16();
  v23(v48);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_27_4();
  v64();
  v49 = OUTLINED_FUNCTION_6_16();
  v23(v49);
  v50 = OUTLINED_FUNCTION_12_10();
  v23(v50);
  sub_26B213520();
  v51 = OUTLINED_FUNCTION_20_5();
  v23(v51);
  OUTLINED_FUNCTION_19_5();
  sub_26B213540();
  v52 = OUTLINED_FUNCTION_7_10();
  v23(v52);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_26B18F358@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v46 = a4;
  v50 = *(a2 - 8);
  v6 = v50;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v39 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v39 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v39 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v39 - v20;
  v47 = v39 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v49 = v39 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v39 - v24;
  (*(v6 + 16))(v39 - v24);
  v42 = *(a3 + 16);
  v43 = a3 + 16;
  v42(v21, v18, v15, v12, v9, a2, a3);
  v26 = *(v6 + 8);
  v26(v9, a2);
  v45 = v12;
  v27 = a3;
  v26(v12, a2);
  v44 = v15;
  v26(v15, a2);
  v28 = v47;
  v26(v47, a2);
  v29 = *(v27 + 8);
  v30 = v49;
  sub_26B213970();
  v48 = v18;
  v26(v18, a2);
  v31 = *(v50 + 32);
  v50 += 32;
  v41 = v31;
  v31(v28, v25, a2);
  sub_26B213940();
  v26(v28, a2);
  v26(v30, a2);
  v32 = (*(v27 + 24))(a2, v27);
  result = sub_26B213930();
  if (v32 >= result)
  {
    __break(1u);
  }

  else
  {
    v40 = v27;
    v51 = v32;
    sub_26B16BD74();
    sub_26B213530();
    result = sub_26B213930();
    if (!__OFSUB__(result, v32))
    {
      v51 = result - v32;
      v39[1] = v29;
      v34 = v28;
      v35 = v48;
      sub_26B213520();
      v36 = v49;
      sub_26B213510();
      v26(v35, a2);
      v26(v34, a2);
      v26(v25, a2);
      v41(v25, v36, a2);
      v38 = v44;
      v37 = v45;
      v42(v36, v34, v35, v44, v45, a2, v40);
      v26(v37, a2);
      v26(v38, a2);
      v26(v35, a2);
      v26(v34, a2);
      sub_26B213950();
      v26(v36, a2);
      return (v26)(v25, a2);
    }
  }

  __break(1u);
  return result;
}

void XXHashVariant._xxhash_round(input:)()
{
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  v64 = v4;
  v62 = v5;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v65 = v6;
  v66 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_35_1();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v55 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v63 = v55 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v55 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v20);
  v22 = v55 - v21;
  v23 = OUTLINED_FUNCTION_32_2();
  v24(v23);
  OUTLINED_FUNCTION_22_6();
  v57 = v26;
  v58 = v25;
  v26();
  v27 = *(v7 + 8);
  v28 = OUTLINED_FUNCTION_7_10();
  v27(v28);
  v60 = v1;
  v29 = OUTLINED_FUNCTION_6_16();
  v27(v29);
  v59 = v14;
  v30 = v14;
  v31 = v63;
  (v27)(v30, v3);
  v32 = OUTLINED_FUNCTION_19();
  v27(v32);
  v33 = v66;
  v34 = *(v66 + 8);
  sub_26B213970();
  v35 = OUTLINED_FUNCTION_9_10();
  v27(v35);
  v36 = *(v65 + 32);
  v65 += 32;
  v56 = v36;
  v36(v19, v22, v3);
  v64 = v22;
  v37 = v19;
  sub_26B213940();
  v38 = OUTLINED_FUNCTION_19();
  v27(v38);
  v61 = v0;
  v39 = OUTLINED_FUNCTION_20_5();
  v27(v39);
  v40 = OUTLINED_FUNCTION_37_1();
  v42 = v41(v40, v33);
  if (v42 >= sub_26B213930())
  {
    __break(1u);
  }

  else
  {
    v67 = v42;
    sub_26B16BD74();
    OUTLINED_FUNCTION_11_8();
    sub_26B213530();
    v55[1] = v34;
    v43 = sub_26B213930();
    if (!__OFSUB__(v43, v42))
    {
      v67 = v43 - v42;
      v44 = v64;
      OUTLINED_FUNCTION_11_8();
      sub_26B213520();
      v45 = v61;
      sub_26B213510();
      v46 = OUTLINED_FUNCTION_9_10();
      v27(v46);
      v47 = OUTLINED_FUNCTION_13_9();
      v27(v47);
      v48 = OUTLINED_FUNCTION_19();
      v27(v48);
      v56(v44, v45, v3);
      (v57)(v45, v37, v31, v59, v60, v3, v66);
      v49 = OUTLINED_FUNCTION_7_10();
      v27(v49);
      v50 = OUTLINED_FUNCTION_6_16();
      v27(v50);
      v51 = OUTLINED_FUNCTION_9_10();
      v27(v51);
      v52 = OUTLINED_FUNCTION_13_9();
      v27(v52);
      sub_26B213950();
      v53 = OUTLINED_FUNCTION_19();
      v27(v53);
      v54 = OUTLINED_FUNCTION_20_5();
      v27(v54);
      OUTLINED_FUNCTION_28();
      return;
    }
  }

  __break(1u);
}

uint64_t UInt32._xxhash_finalize(tail:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_6();
  v4 = sub_26B14DFF4();
  v7 = v6 - v4;
  if (v6 != v4)
  {
    v8 = (v5 + 4 * v4);
    do
    {
      v9 = *v8++;
      HIDWORD(v10) = a3 - 1028477379 * v9;
      LODWORD(v10) = HIDWORD(v10);
      a3 = 668265263 * (v10 >> 15);
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_28_4();
  v14 = sub_26B18E738(v11, v12, v13);
  if (v16 && v15 != v14)
  {
    v17 = (v16 + v14);
    v18 = v15 - v14;
    do
    {
      v19 = *v17++;
      HIDWORD(v20) = a3 + 374761393 * v19;
      LODWORD(v20) = HIDWORD(v20);
      a3 = -1640531535 * (v20 >> 21);
      --v18;
    }

    while (v18);
  }

  return a3;
}

_DWORD *sub_26B18FDB4(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *result = -1640531535;
  *a2 = -2048144777;
  *a3 = -1028477379;
  *a4 = 668265263;
  *a5 = 374761393;
  return result;
}

_DWORD *sub_26B18FDFC(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  *result = 15;
  *a2 = 13;
  *a3 = 16;
  return result;
}

_DWORD *sub_26B18FE48@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  HIDWORD(v3) = *v2 - 2048144777 * *result;
  LODWORD(v3) = HIDWORD(v3);
  *a2 = -1640531535 * (v3 >> 19);
  return result;
}

uint64_t sub_26B18FE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = *v3;
  if (a1)
  {
    v8 = (a2 - a1) / 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_26B14DFF4();
  v12 = v11 - v9;
  if (v11 != v9)
  {
    v13 = (v10 + 4 * v9);
    do
    {
      v14 = *v13++;
      HIDWORD(v15) = v7 - 1028477379 * v14;
      LODWORD(v15) = HIDWORD(v15);
      v7 = 668265263 * (v15 >> 15);
      --v12;
    }

    while (v12);
  }

  result = sub_26B18E738(4 * v8, a1, a2);
  if (v18 && v17 != result)
  {
    v19 = (v18 + result);
    v20 = v17 - result;
    do
    {
      v21 = *v19++;
      HIDWORD(v22) = v7 + 374761393 * v21;
      LODWORD(v22) = HIDWORD(v22);
      v7 = -1640531535 * (v22 >> 21);
      --v20;
    }

    while (v20);
  }

  *a3 = v7;
  return result;
}

double static UInt64._xxhash_primes.getter@<D0>(uint64_t a1@<X8>)
{
  result = -4.07656821e-163;
  *a1 = xmmword_26B217F50;
  *(a1 + 16) = xmmword_26B217F60;
  *(a1 + 32) = 0x27D4EB2F165667C5;
  return result;
}

unint64_t UInt64._xxhash_finalize(tail:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_26_6();
  v4 = sub_26B14DFF4();
  v7 = v6 - v4;
  if (v6 != v4)
  {
    v8 = (v5 + 8 * v4);
    do
    {
      v9 = *v8++;
      a3 = 0x9E3779B185EBCA87 * __ROR8__((0x9E3779B185EBCA87 * ((0x93EA75A780000000 * v9) | ((0xC2B2AE3D27D4EB4FLL * v9) >> 33))) ^ a3, 37) - 0x7A1435883D4D519DLL;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_28_4();
  sub_26B18E738(v10, v11, v12);
  OUTLINED_FUNCTION_26_6();
  v13 = sub_26B14DFF4();
  v16 = v15 - v13;
  if (v15 != v13)
  {
    v17 = (v14 + 4 * v13);
    do
    {
      v18 = *v17++;
      a3 = 0xC2B2AE3D27D4EB4FLL * __ROR8__((0x9E3779B185EBCA87 * v18) ^ a3, 41) + 0x165667B19E3779F9;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_28_4();
  v22 = sub_26B18E738(v19, v20, v21);
  if (v24 && v23 != v22)
  {
    v25 = (v24 + v22);
    v26 = v23 - v22;
    do
    {
      v27 = *v25++;
      a3 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v27) ^ a3, 53);
      --v26;
    }

    while (v26);
  }

  return a3;
}

void sub_26B19018C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  static UInt64._xxhash_primes.getter(v14);
  v10 = v14[1];
  v11 = v14[2];
  v12 = v14[3];
  v13 = v14[4];
  *a1 = v14[0];
  *a2 = v10;
  *a3 = v11;
  *a4 = v12;
  *a5 = v13;
}

void *sub_26B190204(void *result, void *a2, void *a3)
{
  *result = 33;
  *a2 = 29;
  *a3 = 32;
  return result;
}

void sub_26B190220(unint64_t *a1@<X8>)
{
  v3 = *v1 ^ (*v1 >> 33);
  static UInt64._xxhash_primes.getter(v5);
  v4 = ((v6 * v3) ^ ((v6 * v3) >> 29)) * v7;
  *a1 = v4 ^ HIDWORD(v4);
}

void sub_26B190270(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  static UInt64._xxhash_primes.getter(v6);
  *a2 = __ROR8__(v5 + v6[1] * v4, 33) * v6[0];
}

void sub_26B1902C4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  static UInt64._xxhash_primes.getter(v6);
  *a2 = v6[3] + ((__ROR8__(v6[1] * v4, 33) * v6[0]) ^ v5) * v6[0];
}

void sub_26B190324(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  if (a1)
  {
    v8 = (a2 - a1) / 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_26B14DFF4();
  v12 = v11 - v9;
  if (v11 != v9)
  {
    v13 = v9;
    v14 = v10;
    static UInt64._xxhash_primes.getter(&v39);
    v15 = (v14 + 8 * v13);
    do
    {
      v16 = *v15++;
      v7 = v42 + __ROR8__((__ROR8__(v16 * v40, 33) * v39) ^ v7, 37) * v39;
      --v12;
    }

    while (v12);
  }

  v17 = sub_26B18E738(8 * v8, a1, a2);
  if (v19)
  {
    v20 = (v18 - v17) / 4;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v19 + v18;
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = v19 + v17;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_26B14DFF4();
  v26 = v25 - v23;
  if (v25 != v23)
  {
    v27 = v23;
    v28 = v24;
    static UInt64._xxhash_primes.getter(&v39);
    v29 = (v28 + 4 * v27);
    do
    {
      v30 = *v29++;
      v7 = v41 + __ROR8__((v39 * v30) ^ v7, 41) * v40;
      --v26;
    }

    while (v26);
  }

  v31 = sub_26B18E738(4 * v20, v22, v21);
  if (v33)
  {
    v34 = v31;
    v35 = v32;
    if (v32 != v31)
    {
      v36 = (v33 + v31);
      static UInt64._xxhash_primes.getter(&v39);
      v37 = v35 - v34;
      do
      {
        v38 = *v36++;
        v7 = __ROR8__((v43 * v38) ^ v7, 53) * v39;
        --v37;
      }

      while (v37);
    }
  }

  *a3 = v7;
}

uint64_t XXHash.Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 16);
  OUTLINED_FUNCTION_9_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_29_4();
  v13 = *(v12 + 24);
  sub_26B213990();
  v18 = v8;
  v19 = a4;
  v20 = v13;
  v21 = a1;
  v22 = a2;
  v14 = sub_26B162128();
  sub_26B18AD84(v4, sub_26B190670, v17, v8, v14, a4, MEMORY[0x277D84950], &v16);
  return (*(v10 + 8))(v4, v8);
}

uint64_t sub_26B190670(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 40))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t XXHash.Digest.hashValue.getter(uint64_t a1)
{
  sub_26B214030();
  WitnessTable = swift_getWitnessTable();
  HashDigest.hash(into:)(v4, a1, WitnessTable);
  return sub_26B214070();
}

uint64_t sub_26B19071C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return HashDigest.hash(into:)(a1, a2, WitnessTable);
}

uint64_t sub_26B19077C(uint64_t a1, uint64_t a2)
{
  sub_26B214030();
  WitnessTable = swift_getWitnessTable();
  HashDigest.hash(into:)(v5, a2, WitnessTable);
  return sub_26B214070();
}

uint64_t sub_26B190804(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HashDigest.description.getter(a1, WitnessTable);
}

uint64_t sub_26B190858@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  v6 = HashDigest.makeIterator()(a1, WitnessTable);
  v8 = v7;
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_26B1908FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static HashDigest.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_26B190968(uint64_t a1)
{
  v2 = *(a1 - 8);
  result = a1 - 8;
  v3 = *(v2 + 64);
  if ((v3 - 0x2000000000000000) >> 62 == 3)
  {
    return 4 * v3;
  }

  __break(1u);
  return result;
}

void XXHash.init(seed:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v61 = *(v2 - 8);
  v62 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_7();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_7();
  v65 = v16;
  v18 = v17;
  v57 = v17;
  *v17 = 0;
  v55 = type metadata accessor for XXHash(0, v19, v20, v21);
  *(v18 + *(v55 + 40)) = MEMORY[0x277D84F90];
  v22 = *(v1 + 16);
  v58 = v1 + 16;
  v59 = v22;
  v63 = v7;
  OUTLINED_FUNCTION_22_6();
  v24 = v23;
  v25();
  v26 = *(v61 + 8);
  v27 = OUTLINED_FUNCTION_19();
  v26(v27);
  v28 = OUTLINED_FUNCTION_6_16();
  v26(v28);
  v29 = v11;
  (v26)(v11, v3);
  v56 = v14;
  v30 = OUTLINED_FUNCTION_9_10();
  v26(v30);
  v64 = *(v24 + 8);
  v60 = v24;
  sub_26B213940();
  v31 = OUTLINED_FUNCTION_13_9();
  v26(v31);
  OUTLINED_FUNCTION_22_6();
  v32 = v59;
  v59();
  v33 = OUTLINED_FUNCTION_19();
  v26(v33);
  v34 = OUTLINED_FUNCTION_9_10();
  v26(v34);
  v35 = OUTLINED_FUNCTION_6_16();
  v26(v35);
  v36 = OUTLINED_FUNCTION_13_9();
  v26(v36);
  v57 += *(v55 + 36);
  v37 = v65;
  sub_26B213940();
  v38 = OUTLINED_FUNCTION_19();
  v26(v38);
  v39 = OUTLINED_FUNCTION_30_5();
  v26(v39);
  OUTLINED_FUNCTION_22_6();
  v32();
  v40 = OUTLINED_FUNCTION_6_16();
  v26(v40);
  (v26)(v29, v3);
  v41 = OUTLINED_FUNCTION_6_16();
  v26(v41);
  v42 = (v26)(v37, v3);
  v66[0] = v3;
  v66[1] = v3;
  v66[2] = v3;
  v66[3] = v3;
  v44 = OUTLINED_FUNCTION_21_5(v42, v43, v66);
  v45 = v57;
  v46 = v62;
  sub_26B213940();
  v47 = OUTLINED_FUNCTION_13_9();
  v26(v47);
  (*(v61 + 16))(&v45[*(v44 + 64)], v46, v3);
  OUTLINED_FUNCTION_22_6();
  v59();
  v48 = OUTLINED_FUNCTION_6_16();
  v26(v48);
  v49 = OUTLINED_FUNCTION_12_10();
  v26(v49);
  v50 = OUTLINED_FUNCTION_7_10();
  v26(v50);
  v51 = OUTLINED_FUNCTION_13_9();
  v26(v51);
  sub_26B213960();
  v52 = OUTLINED_FUNCTION_19();
  v26(v52);
  v53 = OUTLINED_FUNCTION_7_10();
  v26(v53);
  OUTLINED_FUNCTION_28();
}

void XXHash.finalize()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v161 = v25;
  v26 = *(v23 + 16);
  v179[0] = v26;
  v179[1] = v26;
  v179[2] = v26;
  v179[3] = v26;
  v27 = OUTLINED_FUNCTION_21_5(v23, v22, v179);
  OUTLINED_FUNCTION_9_0();
  v29 = v28;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v156 - v31;
  OUTLINED_FUNCTION_9_0();
  v173 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_0();
  v158 = v35 - v36;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_7();
  v165 = v38;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_7();
  v169 = v40;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_7();
  v174 = v42;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_7();
  v177 = v44;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_7();
  v166 = v46;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_33_2();
  v164 = v48;
  v49 = *v20;
  v50 = *(v24 + 24);
  v51 = sub_26B190968(v26);
  v52 = *(v24 + 36);
  v53 = *(v29 + 16);
  v175 = v20;
  v171 = v52;
  v172 = v29 + 16;
  v168 = v53;
  v53(v32, v20 + v52, v27);
  v54 = v27[12];
  v55 = v27[16];
  v157 = v27;
  v56 = v27[20];
  v159 = v49;
  v160 = v24;
  v167 = v50;
  v163 = v55;
  v162 = v56;
  if (v49 >= v51)
  {
    v72 = v173;
    OUTLINED_FUNCTION_37_1();
    v178 = v73;
    if (sub_26B213930() < 2)
    {
      __break(1u);
    }

    else
    {
      v179[0] = 1;
      v74 = *(v178 + 8);
      v170 = sub_26B16BD74();
      OUTLINED_FUNCTION_11_8();
      v176 = v74;
      sub_26B213530();
      v75 = sub_26B213930();
      if (!__OFSUB__(v75, 1))
      {
        v179[0] = v75 - 1;
        OUTLINED_FUNCTION_4_15();
        sub_26B213520();
        OUTLINED_FUNCTION_17_6();
        sub_26B213510();
        v77 = *(v72 + 8);
        v76 = v72 + 8;
        v59 = v77;
        v78 = OUTLINED_FUNCTION_7_10();
        v77(v78);
        v79 = OUTLINED_FUNCTION_6_16();
        v77(v79);
        v80 = OUTLINED_FUNCTION_0_25(&a17);
        v77(v80);
        v81 = OUTLINED_FUNCTION_0_25(&a18);
        v77(v81);
        (v77)(&v32[v54], v26);
        v82 = OUTLINED_FUNCTION_9_10();
        v77(v82);
        OUTLINED_FUNCTION_2_19();
        v83 = v157;
        OUTLINED_FUNCTION_16_5();
        v84();
        v85 = v83[12];
        v86 = v83[16];
        v87 = v83[20];
        if (OUTLINED_FUNCTION_38_2() >= 8)
        {
          v179[0] = 7;
          OUTLINED_FUNCTION_34_1();
          OUTLINED_FUNCTION_4_15();
          sub_26B213530();
          v88 = OUTLINED_FUNCTION_38_2();
          if (!__OFSUB__(v88, 7))
          {
            v179[0] = v88 - 7;
            OUTLINED_FUNCTION_34_1();
            v162 = v87;
            OUTLINED_FUNCTION_4_15();
            v163 = v85;
            sub_26B213520();
            v156 = v86;
            OUTLINED_FUNCTION_18_5();
            OUTLINED_FUNCTION_17_6();
            sub_26B213510();
            v89 = OUTLINED_FUNCTION_12_10();
            v59(v89);
            v90 = OUTLINED_FUNCTION_7_10();
            v59(v90);
            v91 = OUTLINED_FUNCTION_0_25(&a17);
            v59(v91);
            v92 = OUTLINED_FUNCTION_0_25(&a11);
            v59(v92);
            v93 = OUTLINED_FUNCTION_0_25(&a18);
            v59(v93);
            v94 = OUTLINED_FUNCTION_9_10();
            v59(v94);
            OUTLINED_FUNCTION_17_6();
            sub_26B213940();
            v95 = OUTLINED_FUNCTION_6_16();
            v59(v95);
            v96 = OUTLINED_FUNCTION_30_5();
            v59(v96);
            OUTLINED_FUNCTION_2_19();
            OUTLINED_FUNCTION_16_5();
            v97();
            v98 = v83[12];
            v99 = v83[16];
            v163 = v83[20];
            OUTLINED_FUNCTION_37_1();
            if (sub_26B213930() >= 13)
            {
              v179[0] = 12;
              OUTLINED_FUNCTION_4_15();
              sub_26B213530();
              v100 = OUTLINED_FUNCTION_38_2();
              if (!__OFSUB__(v100, 12))
              {
                v179[0] = v100 - 12;
                OUTLINED_FUNCTION_4_15();
                v162 = v98;
                sub_26B213520();
                sub_26B213510();
                v101 = OUTLINED_FUNCTION_19();
                v59(v101);
                v102 = OUTLINED_FUNCTION_6_16();
                v59(v102);
                v103 = OUTLINED_FUNCTION_0_25(&a18);
                v59(v103);
                (v59)(&v32[v99], v26);
                v104 = OUTLINED_FUNCTION_0_25(&a17);
                v59(v104);
                v105 = OUTLINED_FUNCTION_9_10();
                v59(v105);
                OUTLINED_FUNCTION_17_6();
                sub_26B213940();
                v106 = OUTLINED_FUNCTION_7_10();
                v59(v106);
                v107 = OUTLINED_FUNCTION_30_5();
                v59(v107);
                OUTLINED_FUNCTION_2_19();
                OUTLINED_FUNCTION_16_5();
                v108();
                v109 = v83[12];
                v110 = v83[16];
                v111 = v83[20];
                OUTLINED_FUNCTION_37_1();
                if (sub_26B213930() >= 19)
                {
                  v179[0] = 18;
                  OUTLINED_FUNCTION_34_1();
                  OUTLINED_FUNCTION_4_15();
                  sub_26B213530();
                  v112 = OUTLINED_FUNCTION_38_2();
                  if (!__OFSUB__(v112, 18))
                  {
                    v158 = v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                    v179[0] = v112 - 18;
                    OUTLINED_FUNCTION_34_1();
                    v165 = v109;
                    v113 = v169;
                    OUTLINED_FUNCTION_11_8();
                    v170 = v110;
                    sub_26B213520();
                    v163 = v111;
                    sub_26B213510();
                    (v59)(v113, v26);
                    v114 = OUTLINED_FUNCTION_7_10();
                    v59(v114);
                    v115 = OUTLINED_FUNCTION_0_25(&a18);
                    v59(v115);
                    v116 = OUTLINED_FUNCTION_5_10(v170);
                    v59(v116);
                    v117 = OUTLINED_FUNCTION_5_10(v165);
                    v59(v117);
                    v118 = OUTLINED_FUNCTION_9_10();
                    v59(v118);
                    sub_26B213940();
                    v119 = OUTLINED_FUNCTION_19();
                    v59(v119);
                    v120 = OUTLINED_FUNCTION_6_16();
                    v59(v120);
                    v121 = OUTLINED_FUNCTION_2_19();
                    v122 = v168;
                    (v168)(v121);
                    v123 = v122;
                    v163 = v83[12];
                    v162 = v83[16];
                    v124 = v83[20];
                    v170 = *(v167 + 56);
                    v165 = v167 + 56;
                    v170(v32, v26);
                    (v59)(&v32[v124], v26);
                    v125 = OUTLINED_FUNCTION_0_25(&a17);
                    v59(v125);
                    v126 = OUTLINED_FUNCTION_0_25(&a18);
                    v59(v126);
                    v127 = OUTLINED_FUNCTION_9_10();
                    v59(v127);
                    v128 = v171;
                    v123(v32, v175 + v171, v83);
                    v129 = v83[12];
                    v163 = v83[16];
                    v162 = v83[20];
                    (v170)(&v32[v129], v26, v167);
                    v130 = OUTLINED_FUNCTION_30_5();
                    v59(v130);
                    v131 = OUTLINED_FUNCTION_0_25(&a17);
                    v59(v131);
                    v132 = OUTLINED_FUNCTION_0_25(&a18);
                    v59(v132);
                    (v59)(&v32[v129], v26);
                    v133 = OUTLINED_FUNCTION_9_10();
                    v59(v133);
                    v123(v32, v175 + v128, v83);
                    v169 = v83[12];
                    v134 = v83[16];
                    v135 = v83[20];
                    v136 = v167;
                    (v170)(&v32[v134], v26, v167);
                    v137 = OUTLINED_FUNCTION_30_5();
                    v59(v137);
                    v138 = &v32[v135];
                    v57 = v166;
                    (v59)(v138, v26);
                    (v59)(&v32[v134], v26);
                    v139 = OUTLINED_FUNCTION_5_10(v169);
                    v59(v139);
                    v140 = OUTLINED_FUNCTION_9_10();
                    v59(v140);
                    OUTLINED_FUNCTION_2_19();
                    OUTLINED_FUNCTION_16_5();
                    v141();
                    v174 = v83[12];
                    v142 = v83[16];
                    v143 = v83[20];
                    (v170)(&v32[v143], v26, v136);
                    (v59)(v177, v26);
                    (v59)(&v32[v143], v26);
                    (v59)(&v32[v142], v26);
                    (v59)(&v32[v174], v26);
                    v70 = v164;
                    (v59)(v32, v26);
                    v71 = v173;
                    v144 = OUTLINED_FUNCTION_18_5();
                    v145(v144);
                    goto LABEL_12;
                  }

LABEL_22:
                  __break(1u);
                  return;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v57 = v166;
  v178 = v54;
  OUTLINED_FUNCTION_22_6();
  v58();
  v59 = *(v173 + 8);
  v158 = (v173 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60 = OUTLINED_FUNCTION_19();
  v59(v60);
  v61 = OUTLINED_FUNCTION_13_9();
  v59(v61);
  (v59)(v177, v26);
  v62 = OUTLINED_FUNCTION_12_10();
  v59(v62);
  v63 = *(v50 + 8);
  v64 = v163;
  v65 = v164;
  OUTLINED_FUNCTION_17_6();
  sub_26B213940();
  v66 = OUTLINED_FUNCTION_7_10();
  v59(v66);
  v67 = OUTLINED_FUNCTION_0_25(&a17);
  v59(v67);
  (v59)(&v32[v64], v26);
  v68 = OUTLINED_FUNCTION_5_10(v178);
  v59(v68);
  v69 = OUTLINED_FUNCTION_9_10();
  v59(v69);
  v178 = v63;
  v176 = *(v63 + 8);
  v70 = v65;
  v71 = v173;
LABEL_12:
  v179[0] = v159;
  sub_26B16BD74();
  sub_26B213580();
  v146 = *(v71 + 32);
  OUTLINED_FUNCTION_19_5();
  v146();
  OUTLINED_FUNCTION_18_5();
  sub_26B213940();
  v147 = OUTLINED_FUNCTION_19();
  v59(v147);
  v148 = OUTLINED_FUNCTION_12_10();
  v149 = (v59)(v148);
  v150 = v167;
  if (*(*(v175 + *(v160 + 40)) + 16))
  {
    MEMORY[0x28223BE20](v149);
    *(&v156 - 4) = v26;
    *(&v156 - 3) = v150;
    *(&v156 - 2) = v70;
    sub_26B18E8C8(sub_26B192EBC, (&v156 - 6), v151);
  }

  (*(v150 + 40))(v26, v150);
  v152 = OUTLINED_FUNCTION_18_5();
  v153(v152);
  OUTLINED_FUNCTION_19_5();
  v154();
  (v146)(v161, v57, v26);
  v155 = OUTLINED_FUNCTION_7_10();
  v59(v155);
  OUTLINED_FUNCTION_28();
}

void XXHash.init()()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v47 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9_0();
  v46 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_0();
  v40 = v7 - v8;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_33_2();
  v39 = v10;
  v48 = v1;
  v11 = *(v1 + 8);
  v12 = *(v11 + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  sub_26B213310();
  OUTLINED_FUNCTION_9_0();
  v43 = v15;
  v44 = v14;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  OUTLINED_FUNCTION_9_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_33_2();
  v41 = v27;
  OUTLINED_FUNCTION_28_4();
  swift_getAssociatedConformanceWitness();
  sub_26B213ED0();
  sub_26B213E10();
  v45 = v11;
  sub_26B213980();
  if (sub_26B212A10())
  {
    v28 = v20;
    v29 = *(v20 + 32);
    v30 = v39;
    v29(v39, v12, v3);
    v31 = TupleTypeMetadata2;
    v29(v30 + *(TupleTypeMetadata2 + 48), v24, v3);
    v32 = v46;
    v33 = v40;
    (*(v46 + 16))(v40, v30, v31);
    v34 = *(v31 + 48);
    v35 = OUTLINED_FUNCTION_18_5();
    (v29)(v35);
    v38 = *(v28 + 8);
    v38(v33 + v34, v3);
    (*(v32 + 32))(v33, v30, v31);
    v36 = v44;
    v29(&v18[*(v44 + 36)], v33 + *(v31 + 48), v3);
    v38(v33, v3);
    sub_26B2139A0();
    (*(v43 + 8))(v18, v36);
    XXHash.init(seed:)();
    OUTLINED_FUNCTION_28();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B19217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v32 = a2;
  v33 = a3;
  v7 = *(a5 + 16);
  v30 = *(v7 - 8);
  v8 = v30;
  v9 = MEMORY[0x28223BE20](a1);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v38 = &v29 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v37 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v29 = &v29 - v15;
  v39 = v7;
  v40 = v7;
  v41 = v7;
  v42 = v7;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v31 = *(TupleTypeMetadata - 1);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v18 = &v29 - v17;
  v19 = *(v8 + 16);
  v19(&v29 - v17, a1, v7);
  v20 = TupleTypeMetadata[12];
  v19(&v18[v20], v32, v7);
  v21 = TupleTypeMetadata[16];
  v19(&v18[v21], v33, v7);
  v33 = TupleTypeMetadata[20];
  v19(&v18[v33], v34, v7);
  v22 = v35 + *(a5 + 36);
  v23 = *(a5 + 24);
  v24 = *(v23 + 48);
  v24(v18, v7, v23);
  v35 = TupleTypeMetadata[12];
  v24(&v18[v20], v7, v23);
  v34 = TupleTypeMetadata[16];
  v24(&v18[v21], v7, v23);
  v25 = TupleTypeMetadata[20];
  v26 = v36;
  v24(&v18[v33], v7, v23);
  (*(v31 + 8))(v18, TupleTypeMetadata);
  v27 = *(v30 + 40);
  v27(v22, v29, v7);
  v27(v22 + v35, v37, v7);
  v27(v22 + v34, v38, v7);
  return (v27)(v22 + v25, v26, v7);
}

void XXHash.update(bufferPointer:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v93 = *(v2 + 16);
  v94 = v93;
  v95 = v93;
  v96 = v93;
  v83 = v93;
  v82 = OUTLINED_FUNCTION_21_5(v6, v4, &v93);
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  v78 = v11 - v12;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_7();
  v80 = v14;
  OUTLINED_FUNCTION_44_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_33_2();
  v79 = v16;
  v17 = v5 - v7;
  if (!v7)
  {
    v17 = 0;
  }

  v18 = __OFADD__(*v0, v17);
  v19 = *v0 + v17;
  if (v18)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *v0 = v19;
  v20 = *(v3 + 40);
  v21 = *(*(v0 + v20) + 16);
  if (v21)
  {
    v81 = *(v3 + 24);
    v22 = sub_26B190968(v83);
    v23 = v22 - v21;
    if (__OFSUB__(v22, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v24 = v22;
    sub_26B1824FC(v22 - v21, v7, v5);
    sub_26B14DE28(v25, v26, v27, v28);
    sub_26B16CE68(v23, v7, v5);
    if (v31)
    {
      v5 = v31 + v30;
    }

    else
    {
      v5 = 0;
    }

    if (v31)
    {
      v7 = v31 + v29;
    }

    else
    {
      v7 = 0;
    }

    if (*(*(v0 + v20) + 16) != v24)
    {
      goto LABEL_38;
    }

    MEMORY[0x28223BE20](v29);
    v32 = v81;
    v67[-4] = v83;
    v67[-3] = v32;
    v67[-2] = v0;
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_4();
    sub_26B18E8C8(v33, v34, v35);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v0 + v20);
    v72 = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_26B18E01C(0, *(v37 + 16));
    }

    else
    {
      v38 = sub_26B18DD0C();

      *(v1 + v20) = v38;
    }
  }

  else
  {
    v72 = *(v3 + 40);
  }

  v39 = v5 - v7;
  if (v7)
  {
    v40 = v5 - v7;
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_26B190968(v83);
  if (!v41)
  {
    goto LABEL_40;
  }

  if (v40 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_44;
  }

  v69 = v5;
  v67[1] = 0;
  if (!v7)
  {
    v45 = 0;
LABEL_33:
    v77 = v3;
    v81 = v1;
    v68 = v7;
    v93 = v7;
    v94 = v45;
    v71 = v41;
    v46 = v40 / v41;
    sub_26B212A30();
    swift_getWitnessTable();
    v70 = v46;
    sub_26B2132B0();
    v84 = v88;
    v85 = v89;
    v86 = v90;
    v87 = v91;
    v93 = v88;
    v94 = v89;
    v95 = v90;
    v96 = v91;
    v47 = sub_26B214000();
    sub_26B213FD0();
    v75 = v83 - 8;
    v74 = (v9 + 16);
    v73 = (v9 + 8);
    v76 = v47;
    v48 = v83;
    v49 = v80;
    while (1)
    {
      sub_26B213FE0();
      if (v92 == v88)
      {
        break;
      }

      v50 = v79;
      sub_26B214010();
      sub_26B213FF0();
      v51 = v82;
      v52 = v82[12];
      v53 = v82[16];
      v54 = v82[20];
      v55 = *(v48 - 8);
      v56 = *(v55 + 32);
      v57 = OUTLINED_FUNCTION_31_3();
      v56(v57);
      (v56)(v49 + v52, v50 + v52, v48);
      (v56)(v49 + v53, v50 + v53, v48);
      (v56)(v49 + v54, v50 + v54, v48);
      v58 = v78;
      (*v74)(v78, v49, v51);
      v59 = v51[12];
      v60 = v51[16];
      v61 = v51[20];
      sub_26B19217C(v58, v58 + v59, v58 + v60, v58 + v61, v77);
      (*v73)(v49, v51);
      v62 = *(v55 + 8);
      v62(v58 + v61, v48);
      v62(v58 + v60, v48);
      v62(v58 + v59, v48);
      v62(v58, v48);
    }

    if ((v70 * v71) >> 64 == (v70 * v71) >> 63)
    {
      v63 = sub_26B18E738(v70 * v71, v68, v69);
      sub_26B14DE28(v63, v64, v65, v66);
LABEL_38:
      OUTLINED_FUNCTION_28();
      return;
    }

    goto LABEL_41;
  }

  v43 = *(v9 + 72);
  if (v43)
  {
    if (v39 == 0x8000000000000000 && v43 == -1)
    {
      goto LABEL_45;
    }

    v45 = v39 / v43;
    goto LABEL_33;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_26B192AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v17 = a4;
  v18 = a4;
  v19 = a4;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = a4;
  v15 = a5;
  v16 = a3;
  return sub_26B18E73C(TupleTypeMetadata, sub_26B1939F4, v13, a1, a2, MEMORY[0x277D84B78], TupleTypeMetadata, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v12);
}

uint64_t sub_26B192B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[2] = a4;
  v20[3] = a4;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v10 = sub_26B2133E0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  v20[0] = a1;
  v20[1] = a2;
  sub_26B212A30();
  swift_getWitnessTable();
  sub_26B2132A0();
  result = __swift_getEnumTagSinglePayload(v12, 1, TupleTypeMetadata);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = TupleTypeMetadata[12];
    v16 = TupleTypeMetadata[16];
    v17 = TupleTypeMetadata[20];
    v18 = type metadata accessor for XXHash(0, a4, a5, v14);
    sub_26B19217C(v12, &v12[v15], &v12[v16], &v12[v17], v18);
    v19 = *(*(a4 - 8) + 8);
    v19(&v12[v17], a4);
    v19(&v12[v16], a4);
    v19(&v12[v15], a4);
    return (v19)(v12, a4);
  }

  return result;
}

uint64_t sub_26B192D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  (*(v10 + 16))(v13, v16, v17);
  if (a1)
  {
    v18 = a2 + a1;
  }

  else
  {
    v18 = 0;
  }

  (*(a5 + 64))(a1, v18, a4, a5);
  (*(v10 + 8))(v13, a4);
  return (*(v10 + 40))(a3, v15, a4);
}

unint64_t sub_26B192F08(uint64_t a1)
{
  result = sub_26B192F30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B192F30()
{
  result = qword_2803E7688;
  if (!qword_2803E7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7688);
  }

  return result;
}

unint64_t sub_26B192F84(uint64_t a1)
{
  result = sub_26B192FAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B192FAC()
{
  result = qword_2803E7690[0];
  if (!qword_2803E7690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E7690);
  }

  return result;
}

uint64_t sub_26B193000(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

void sub_26B193164(uint64_t a1)
{
  swift_getTupleTypeMetadata();
  if (v1 <= 0x3F)
  {
    sub_26B18D1CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B193214(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
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

  v9 = ((*(*(v4 - 8) + 64) + v7 + ((*(*(v4 - 8) + 64) + v7 + ((*(*(v4 - 8) + 64) + v7) & ~v7)) & ~v7)) & ~v7) + *(*(v4 - 8) + 64);
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 8) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B19338C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
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
  v11 = ((*(*(v6 - 8) + 64) + v10 + ((*(*(v6 - 8) + 64) + v10 + ((*(*(v6 - 8) + 64) + v10) & ~v10)) & ~v10)) & ~v10) + *(*(v6 - 8) + 64);
  v12 = ((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_56:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = (&a1[v10 + 8] & ~v10);
          if (v8 < 0x7FFFFFFF)
          {
            v23 = (&v19[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v24 = (a2 - 1);
            }

            *v23 = v24;
          }

          else if (v8 >= a2)
          {
            v25 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v25, a2, v8, v6);
          }

          else
          {
            if (v11 <= 3)
            {
              v20 = ~(-1 << (8 * v11));
            }

            else
            {
              v20 = -1;
            }

            if (v11)
            {
              v21 = v20 & (~v8 + a2);
              if (v11 <= 3)
              {
                v22 = v11;
              }

              else
              {
                v22 = 4;
              }

              bzero(v19, v11);
              switch(v22)
              {
                case 2:
                  *v19 = v21;
                  break;
                case 3:
                  *v19 = v21;
                  v19[2] = BYTE2(v21);
                  break;
                case 4:
                  *v19 = v21;
                  break;
                default:
                  *v19 = v21;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v9 + a2;
      bzero(a1, v12);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26B19362C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B19369C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_26B1937D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
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

        break;
    }
  }

  else
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
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return sub_26B213930();
}

uint64_t OSLogInterpolation.appendInterpolation(fourChar:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B2125A0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B212630();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v24 = sub_26B212B70();
  v23 = v11;
  v12 = sub_26B192F30();
  v29 = sub_26B193DF0();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  LOBYTE(a2) = BYTE2(v13) & 1;
  v19 = v14;
  v20 = v15;
  sub_26B193E60();
  sub_26B193E78();
  v25 = v16;
  LOBYTE(v26) = v17;
  BYTE1(v26) = v18;
  BYTE2(v26) = a2;
  v27 = v19;
  v28 = v20;
  sub_26B193E90(sub_26B193DC0, v10, v16, v26, v19, v20, v9, v6, v24, v23, MEMORY[0x277D84CC0], v12);
  sub_26B193F2C(v6, MEMORY[0x277D85AD0]);
  sub_26B193F2C(v9, MEMORY[0x277D85B10]);
  sub_26B193F8C(v19, v20);
}

uint64_t sub_26B193DC0@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_26B193E90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LOWORD(v13) = a4 & 0x101;
  BYTE2(v13) = BYTE2(a4) & 1;
  return sub_26B194234(a1, a2, a3, v13, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_26B193F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26B193F8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OSLogInterpolation.appendInterpolation(eightChar:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B2125A0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B212630();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v24 = sub_26B212B70();
  v23 = v11;
  v12 = sub_26B192FAC();
  v29 = sub_26B193DF0();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  LOBYTE(a2) = BYTE2(v13) & 1;
  v19 = v14;
  v20 = v15;
  sub_26B193E60();
  sub_26B193E78();
  v25 = v16;
  LOBYTE(v26) = v17;
  BYTE1(v26) = v18;
  BYTE2(v26) = a2;
  v27 = v19;
  v28 = v20;
  sub_26B193E90(sub_26B194204, v10, v16, v26, v19, v20, v9, v6, v24, v23, MEMORY[0x277D84D38], v12);
  sub_26B193F2C(v6, MEMORY[0x277D85AD0]);
  sub_26B193F2C(v9, MEMORY[0x277D85B10]);
  sub_26B193F8C(v19, v20);
}

uint64_t sub_26B194204@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_26B194234(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a8;
  v40 = a7;
  v46 = a2;
  v45 = a1;
  v39 = a12;
  v38 = a11;
  v37 = a10;
  v36 = a9;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v14 = a4;
  v15 = BYTE1(a4);
  v16 = BYTE2(a4);
  v42 = sub_26B212580();
  v19 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v12 + 25);
  result = sub_26B212640();
  if (v22 < result)
  {
    v47 = a3;
    LOBYTE(v48) = v14 & 1;
    BYTE1(v48) = v15 & 1;
    BYTE2(v48) = v16 & 1;
    v43 = a5;
    v49 = a5;
    v44 = a6;
    v50 = a6;
    v24 = a3;
    v25 = v40;
    v26 = v41;
    sub_26B194570(v38, v40, v41, v36, v37, v24, v48, a5, a6, v38, v39);
    v27 = v12;
    sub_26B212B90();

    v28 = *v25;
    sub_26B194D18(*v25, v25[1]);
    if (v28)
    {
      sub_26B2125F0();
    }

    v29 = sub_26B2125A0();
    v30 = v42;
    (*(v19 + 16))(v21, v26 + *(v29 + 20), v42);
    if ((*(v19 + 88))(v21, v30) == *MEMORY[0x277D85AC8])
    {
      (*(v19 + 8))(v21, v30);
      v31 = 0;
    }

    else
    {
      (*(v19 + 8))(v21, v30);
      v31 = 1;
    }

    if (v31)
    {
      sub_26B2125E0();
    }

    v32 = v43;
    sub_26B194D18(v43, v44);
    if (v32)
    {
      sub_26B212600();
    }

    sub_26B213930();
    sub_26B2125D0();
    result = sub_26B2125B0();
    v34 = *(v27 + 25);
    v33 = (v27 + 25);
    v35 = v34 + 1;
    if (((v34 + 1) >> 8))
    {
      __break(1u);
    }

    else
    {
      *v33 = v35;
    }
  }

  return result;
}