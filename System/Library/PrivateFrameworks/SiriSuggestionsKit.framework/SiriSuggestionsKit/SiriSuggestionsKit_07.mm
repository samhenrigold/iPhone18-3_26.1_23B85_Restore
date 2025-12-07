unint64_t sub_1BF9454B8()
{
  result = qword_1EBDE9AD0;
  if (!qword_1EBDE9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AD0);
  }

  return result;
}

unint64_t sub_1BF945510()
{
  result = qword_1EDBF4120;
  if (!qword_1EDBF4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4120);
  }

  return result;
}

unint64_t sub_1BF945568()
{
  result = qword_1EDBF4128;
  if (!qword_1EDBF4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4128);
  }

  return result;
}

unint64_t sub_1BF9455BC()
{
  result = qword_1EBDE9AE0;
  if (!qword_1EBDE9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Intent.TransportAppIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9456F0()
{
  result = qword_1EBDE9AF8;
  if (!qword_1EBDE9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9AF8);
  }

  return result;
}

unint64_t sub_1BF945748()
{
  result = qword_1EBDE9B00;
  if (!qword_1EBDE9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9B00);
  }

  return result;
}

unint64_t sub_1BF9457A0()
{
  result = qword_1EBDE9B08;
  if (!qword_1EBDE9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9B08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{
  *(v2 - 72) = a1;
  *(v2 - 96) = v1;
  return v2 - 128;
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_58_3(void *a1, uint64_t a2, uint64_t a3, void *a4)
{

  return Context.setParam(for:key:value:)(a1, a2, a3, a4, v5, v4);
}

uint64_t static AsyncAwaitUtils.run<A, B>(elements:timeoutBehaviour:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 24) = a1;
  *(v6 + 64) = *a2;
  *(v6 + 80) = *(a2 + 16);
  return OUTLINED_FUNCTION_1_18(sub_1BF9458F4, 0);
}

uint64_t sub_1BF9458F4()
{
  OUTLINED_FUNCTION_45();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_87_0();
  sub_1BF9B4E08();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = *(v0 + 32);
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v6;
  *(v7 + 40) = v4;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  *(v7 + 64) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 96) = v9;
  *v9 = v10;
  v9[1] = sub_1BF945A0C;
  OUTLINED_FUNCTION_99_0();

  return MEMORY[0x1EEE6DD58](v11);
}

uint64_t sub_1BF945A0C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF945B28()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_77();

  return v0();
}

uint64_t Sequence.asyncMap<A>(_:)()
{
  OUTLINED_FUNCTION_65();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[9] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_53_5();
  v1[10] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_87_0();
  v8 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_72(v8);
  v1[13] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_2_0();
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_53_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10_11(AssociatedTypeWitness);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_63_1();
  v12 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BF945D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  *(v10 + 16) = sub_1BF9B4938();
  v11 = OUTLINED_FUNCTION_36();
  v12(v11);
  OUTLINED_FUNCTION_68_2();
  sub_1BF9B4C68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_19_11();
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_57_5();
    v17 = v16(v15);
    OUTLINED_FUNCTION_107_0(v17, v18, v19, v20, v21, v22, v23, v24);

    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_56_4();
  }

  else
  {
    OUTLINED_FUNCTION_78_2();
    v25();
    OUTLINED_FUNCTION_4_17();
    a9 = v26;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v10 + 152) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_27_4(v27);
    OUTLINED_FUNCTION_56_4();
  }

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_1BF945EE4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF945FE4()
{
  OUTLINED_FUNCTION_45();
  sub_1BF9B4E08();
  sub_1BF9B4DC8();
  v1 = OUTLINED_FUNCTION_36();
  v2(v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_19_11();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_57_5();
    v7 = v6(v5);
    OUTLINED_FUNCTION_107_0(v7, v8, v9, v10, v11, v12, v13, v14);

    v20 = OUTLINED_FUNCTION_21_10();
  }

  else
  {
    OUTLINED_FUNCTION_78_2();
    v16();
    OUTLINED_FUNCTION_4_17();
    v22 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 152) = v18;
    *v18 = v19;
    v20 = OUTLINED_FUNCTION_27_4(v18);
    v15 = v22;
  }

  return v15(v20);
}

uint64_t sub_1BF946198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v12 = v10[17];
  v11 = v10[18];
  v13 = v10[16];
  (*(v10[11] + 8))(v10[12], v10[10]);
  (*(v12 + 8))(v11, v13);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_56_4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1BF94625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23[-1] - v11;
  v23[5] = a4;
  v23[6] = a5;
  sub_1BF9502F0(a3, &v23[-1] - v11, &qword_1EBDE8E28, &qword_1BF9BD200);
  v13 = sub_1BF9B4EB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF8DFBF0(v12, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BF9B4E28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BF9B4B18();
      sub_1BF94EC08(v19 + 32, v23);

      v20 = v23[0];
      sub_1BF8DFBF0(a3, &qword_1EBDE8E28, &qword_1BF9BD200);

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

  sub_1BF8DFBF0(a3, &qword_1EBDE8E28, &qword_1BF9BD200);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BF9464C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v13;
  v8[16] = v14;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v8[17] = swift_task_alloc();
  v8[18] = sub_1BF9B4E08();
  v8[19] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  v9 = sub_1BF9B4F28();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v10 = *(v13 - 8);
  v8[23] = v10;
  v8[24] = *(v10 + 64);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF946670, 0, 0);
}

uint64_t sub_1BF946670()
{
  v0[2] = sub_1BF9B4D78();
  OUTLINED_FUNCTION_88();
  v1 = sub_1BF9B4D18();
  v32 = v1;
  OUTLINED_FUNCTION_88();
  if (v1 != sub_1BF9B4DD8())
  {
    v24 = v0[24];
    v25 = (v0[23] + 16);
    v26 = v0[23];
    do
    {
      OUTLINED_FUNCTION_88();
      v5 = sub_1BF9B4D98();
      sub_1BF9B4D38();
      if (v5)
      {
        v6 = v26;
        (*(v26 + 16))(v0[26], v0[9] + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v1, v0[15]);
      }

      else
      {
        v4 = sub_1BF9B52C8();
        v6 = v26;
        if (v24 != 8)
        {
          __break(1u);
          return MEMORY[0x1EEE6DAD8](v4);
        }

        v20 = v4;
        v21 = v0[26];
        v22 = v0[15];
        v0[3] = v20;
        (*v25)(v21, (v0 + 3), v22);
        swift_unknownObjectRelease();
      }

      v27 = v0[25];
      v30 = v0[14];
      v31 = v0[17];
      v29 = v0[13];
      v8 = v0[11];
      v7 = v0[12];
      v9 = v0[10];
      v28 = *(v0 + 15);
      v10 = v0[15];
      sub_1BF9B4DE8();
      sub_1BF9B4EB8();
      OUTLINED_FUNCTION_37_0();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
      v15 = *(v6 + 32);
      v16 = OUTLINED_FUNCTION_80_1();
      v15(v16);
      v17 = (*(v6 + 80) + 88) & ~*(v6 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = v28;
      *(v18 + 48) = v9;
      *(v18 + 56) = v8;
      *(v18 + 64) = v7;
      *(v18 + 72) = v29;
      *(v18 + 80) = v30;
      (v15)(v18 + v17, v27, v10);
      sub_1BF8BCED4(v9, v8, v7);
      v19 = sub_1BF9B4F38();

      sub_1BF9477C0(v31, &unk_1BF9C2710, v18, v19);
      sub_1BF8DFBF0(v31, &qword_1EBDE8E28, &qword_1BF9BD200);
      v1 = v32;
    }

    while (v32 != sub_1BF9B4DD8());
  }

  v0[27] = swift_checkMetadataState();
  sub_1BF9B4F08();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[28] = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_31_9(v2);
  OUTLINED_FUNCTION_44_5();

  return MEMORY[0x1EEE6DAD8](v4);
}

uint64_t sub_1BF9469C0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF946ABC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = v0[4];
  if (v1)
  {
    v0[6] = v1;
    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    sub_1BF9B4DB8();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[28] = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_31_9(v2);
    OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_114();

    return MEMORY[0x1EEE6DAD8](v4);
  }

  else
  {
    v6 = v0[7];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v6 = v0[2];

    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_114();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_1BF946BFC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  (*(v0[21] + 8))(v0[22], v0[20]);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BF946C9C()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_70_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v1[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_40_1();

  return sub_1BF9464C0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF946D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v13;
  v8[12] = v14;
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[4] = a1;
  v9 = *(v13 - 8);
  v8[13] = v9;
  v8[14] = *(v9 + 64);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF946E20, 0, 0);
}

uint64_t sub_1BF946E20()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 104);
    v15 = *(v0 + 64);
    v16 = *(v0 + 88);
    v4 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 88);
    (*(v3 + 16))(v2, *(v0 + 80), v6);
    v7 = (*(v3 + 80) + 48) & ~*(v3 + 80);
    v8 = swift_allocObject();
    *(v0 + 128) = v8;
    *(v8 + 16) = v16;
    *(v8 + 32) = v15;
    (*(v3 + 32))(v8 + v7, v2, v6);
    sub_1BF8BCED4(v5, v1, v4);

    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    sub_1BF9B4E08();
    OUTLINED_FUNCTION_72_2();
    *v9 = v10;
    v9[1] = sub_1BF9470A0;
    v11.n128_u64[0] = v5;

    return MEMORY[0x1EEE40F70](v0 + 16, &unk_1BF9C2720, v8, v11);
  }

  else
  {
    v17 = (*(v0 + 64) + **(v0 + 64));
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    *v12 = v0;
    v12[1] = sub_1BF9471A0;
    v13 = *(v0 + 80);

    return v17(v13);
  }
}

uint64_t sub_1BF9470A0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF9471A0()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_41_4();

    return v9();
  }

  else
  {
    *(v5 + 160) = v3;
    v11 = OUTLINED_FUNCTION_47_4();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1BF9472C8()
{
  OUTLINED_FUNCTION_7();
  sub_1BF8BFFE0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  **(v0 + 32) = *(v0 + 16);

  OUTLINED_FUNCTION_11_1();

  return v1();
}

uint64_t sub_1BF947338()
{
  OUTLINED_FUNCTION_7();
  **(v0 + 32) = *(v0 + 160);

  OUTLINED_FUNCTION_11_1();

  return v1();
}

uint64_t sub_1BF94739C()
{
  OUTLINED_FUNCTION_45();
  v30 = v0;

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v1 = *(v0 + 144);
  v2 = sub_1BF9B47C8();
  __swift_project_value_buffer(v2, qword_1EDBF5570);
  v3 = v1;
  v4 = sub_1BF9B47A8();
  v5 = sub_1BF9B5048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = OUTLINED_FUNCTION_109();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
    v10 = sub_1BF9B4B08();
    v12 = sub_1BF8DE810(v10, v11, &v29);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_75_2();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_87();
  }

  v18 = *(v0 + 80);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);

  v20(v18);

  OUTLINED_FUNCTION_51_4();
  sub_1BF8BFFE0(v21, v22, v23);
  OUTLINED_FUNCTION_51_4();
  sub_1BF8BFFE0(v24, v25, v26);
  **(v0 + 32) = v19;

  OUTLINED_FUNCTION_11_1();

  return v27();
}

uint64_t sub_1BF947578(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1BF947674;

  return v8(a4);
}

uint64_t sub_1BF947674()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_41_4();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_47_4();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1BF947794()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_11_1();
  return v1();
}

uint64_t sub_1BF9477C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  sub_1BF9502F0(a1, v18 - v9, &qword_1EBDE8E28, &qword_1BF9BD200);
  v11 = sub_1BF9B4EB8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1BF8DFBF0(v10, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_1BF9B4E28();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v5;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t static AsyncAwaitUtils.runStableOrder<A, B>(elements:timeoutBehaviour:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 56) = a1;
  *(v6 + 96) = *a2;
  *(v6 + 112) = *(a2 + 16);
  return OUTLINED_FUNCTION_1_18(sub_1BF9479C4, 0);
}

uint64_t sub_1BF9479C4()
{
  OUTLINED_FUNCTION_41_1();
  v1 = *(v0 + 112);
  v13 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v0 + 24) = *(v0 + 56);
  OUTLINED_FUNCTION_86_1();
  v4 = sub_1BF9B4E08();
  OUTLINED_FUNCTION_2_1();
  WitnessTable = swift_getWitnessTable();
  v12 = *(v0 + 64);
  MEMORY[0x1BFB5DFA0](v4, WitnessTable);
  v6 = *(v0 + 16);
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1BF9B4E08();
  OUTLINED_FUNCTION_99_0();
  swift_getTupleTypeMetadata2();
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v6;
  *(v7 + 40) = v13;
  *(v7 + 56) = v1;
  *(v7 + 64) = v12;
  OUTLINED_FUNCTION_87_0();
  *(v0 + 144) = sub_1BF9B4E08();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 152) = v8;
  *v8 = v9;
  v8[1] = sub_1BF947B54;
  OUTLINED_FUNCTION_99_0();

  return MEMORY[0x1EEE6DBF8](v10);
}

uint64_t sub_1BF947B54()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1BF947C70()
{
  OUTLINED_FUNCTION_83_0();
  v2 = v0[10];
  v1 = v0[11];
  v0[5] = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_37_4();
  swift_getWitnessTable();
  v4 = sub_1BF9B4CA8();

  v0[6] = v4;
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  swift_getWitnessTable();
  sub_1BF9B4CB8();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_61_3();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1BF947DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v14;
  v8[20] = v15;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v8[21] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[22] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v8[23] = v10;
  v8[24] = *(v10 + 64);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  sub_1BF9B4E08();
  v8[27] = swift_getTupleTypeMetadata2();
  v11 = sub_1BF9B4E88();
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  sub_1BF9B50F8();
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF947FC0, 0, 0);
}

uint64_t sub_1BF947FC0()
{
  v2 = v0[23];
  v1 = v0[24];
  v30 = v0[22];
  v3 = v0[19];
  v4 = v0[13];
  v0[32] = swift_checkMetadataState();
  v5 = sub_1BF9B4D78();
  v0[10] = v4;
  v0[9] = v5;
  sub_1BF9B4E08();

  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_4();
  sub_1BF9B5438();
  sub_1BF9B5408();
  v29 = v3 - 8;
  v28 = v1 + 7;
  OUTLINED_FUNCTION_51_4();
  sub_1BF9B5428();
  for (i = v2; ; (*(i + 8))(v34, v12))
  {
    v7 = v0[31];
    v8 = v0[22];
    sub_1BF9B5418();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      break;
    }

    v9 = v0[31];
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[22];
    v33 = v0[21];
    v35 = v0[17];
    v36 = v0[18];
    v13 = v0[15];
    v32 = v0[16];
    v14 = v0[14];
    v15 = *(v30 + 48);
    v31 = *(v0 + 19);
    *v10 = *v9;
    v34 = v10;
    (*(*v29 + 32))(v10 + v15, &v9[v15], v31);
    sub_1BF9B4EB8();
    OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    (*(i + 16))(v11, v10, v12);
    v20 = (*(i + 80) + 72) & ~*(i + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v31;
    *(v21 + 48) = v14;
    *(v21 + 56) = v13;
    *(v21 + 64) = v32;
    (*(i + 32))(v21 + v20, v11, v12);
    v22 = (v21 + ((v28 + v20) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v35;
    v22[1] = v36;
    sub_1BF8BCED4(v14, v13, v32);
    v23 = sub_1BF9B4E98();

    sub_1BF94922C(v33, &unk_1BF9C26E0, v21, v23);
    sub_1BF8DFBF0(v33, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  sub_1BF9B4E68();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[33] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_32_7(v24);
  OUTLINED_FUNCTION_44_5();

  return MEMORY[0x1EEE6D8A8](v26);
}

uint64_t sub_1BF948320()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF948404()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[6];
  if (v1)
  {
    v0[7] = v0[5];
    v0[8] = v1;
    sub_1BF9B4E08();
    sub_1BF9B4DC8();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[33] = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_32_7(v2);
    OUTLINED_FUNCTION_44_5();

    return MEMORY[0x1EEE6D8A8](v4);
  }

  else
  {
    v5 = v0[11];
    (*(v0[29] + 8))(v0[30], v0[28]);
    *v5 = v0[9];

    OUTLINED_FUNCTION_77();

    return v6();
  }
}

uint64_t sub_1BF94854C()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_70_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v1[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_40_1();

  return sub_1BF947DBC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF9485FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v14;
  v8[13] = v15;
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[14] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v8[15] = v10;
  v8[16] = *(v10 + 64);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF9486F4, 0, 0);
}

uint64_t sub_1BF9486F4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v7 = *(v0 + 72);
    v29 = *(v0 + 88);
    v30 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = *(v5 + 16);
    *(v0 + 144) = v9;
    *(v0 + 152) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v7, v4);
    v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v0 + 160) = v12;
    *(v12 + 16) = v27;
    *(v12 + 24) = v6;
    (*(v5 + 32))(v12 + v10, v3, v4);
    v13 = (v12 + v11);
    *v13 = v28;
    v13[1] = v29;
    sub_1BF8BCED4(v8, v1, v30);

    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    sub_1BF9B4E08();
    OUTLINED_FUNCTION_99_0();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_72_2();
    *v14 = v15;
    v14[1] = sub_1BF9489A0;
    v16.n128_u64[0] = v8;

    return MEMORY[0x1EEE40F70](v0 + 16, &unk_1BF9C2700, v12, v16);
  }

  else
  {
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);
    v19 = *(v0 + 72);
    v20 = OUTLINED_FUNCTION_94_0();
    v21(v20);
    v22 = *v17;
    *(v0 + 200) = *(v18 + 48);
    OUTLINED_FUNCTION_20_11(v22);
    v31 = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 184) = v24;
    *v24 = v25;
    v24[1] = sub_1BF948AA0;

    return v31(v19 + v18);
  }
}

uint64_t sub_1BF9489A0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF948AA0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = v3;

  v4 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF948B8C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 200);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  *(*(v0 + 40) + 8) = *(v0 + 192);
  (*(*(v3 - 8) + 8))(v2 + v1);

  OUTLINED_FUNCTION_77();

  return v4();
}

uint64_t sub_1BF948C28()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[5];
  sub_1BF8BFFE0(v0[6], v0[7], v0[8]);
  v2 = v0[3];
  *v1 = v0[2];
  v1[1] = v2;

  OUTLINED_FUNCTION_77();

  return v3();
}

void sub_1BF948C94()
{
  OUTLINED_FUNCTION_83_0();
  v31 = v0;

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v1 = *(v0 + 176);
  v2 = sub_1BF9B47C8();
  __swift_project_value_buffer(v2, qword_1EDBF5570);
  v3 = v1;
  v4 = sub_1BF9B47A8();
  v5 = sub_1BF9B5048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = OUTLINED_FUNCTION_109();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    *(v0 + 32) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
    v10 = sub_1BF9B4B08();
    v12 = sub_1BF8DE810(v10, v11, &v30);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_75_2();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_87();
  }

  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
  v20 = *(v0 + 96);
  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  v24 = *(v0 + 48);
  v23 = *(v0 + 56);
  v25 = *(v0 + 40);
  (*(v0 + 144))(v18, v21, v19);
  v29 = *(v19 + 48);
  *v25 = *v18;
  v26 = *(v19 + 48);

  v23(v21 + v26);

  sub_1BF8BFFE0(v24, v23, v22);
  sub_1BF8BFFE0(v24, v23, v22);
  v25[1] = v22;
  (*(*(v20 - 8) + 8))(&v18[v29], v20);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_61_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BF948ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[7] = TupleTypeMetadata2;
  v5[8] = *(TupleTypeMetadata2 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF948FB8, 0, 0);
}

uint64_t sub_1BF948FB8()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_94_0();
  v4(v3);
  v5 = *v1;
  *(v0 + 96) = *(v2 + 48);
  OUTLINED_FUNCTION_20_11(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v6;
  *v6 = v7;
  v6[1] = sub_1BF9490A4;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_114();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BF9490A4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF949190()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  *(*(v0 + 16) + 8) = *(v0 + 88);
  (*(*(v3 - 8) + 8))(v2 + v1);

  OUTLINED_FUNCTION_11_1();

  return v4();
}

uint64_t sub_1BF94922C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v21 - v11;
  sub_1BF9502F0(a1, v21 - v11, &qword_1EBDE8E28, &qword_1BF9BD200);
  v13 = sub_1BF9B4EB8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1BF8DFBF0(v12, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1BF9B4E28();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v5;
  v18 = swift_allocObject();
  v18[2] = *(a4 + 16);
  v18[3] = a2;
  v18[4] = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();
}

uint64_t TimeoutBehaviour.init(timeout:timeoutFallbackCallback:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

uint64_t _sSq18SiriSuggestionsKitE8asyncMapyqd_0_Sgqd_0_xYaqd__YKXEYaqd__YKs5ErrorRd__Ri_d_0_r0_lF()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v1[8] = v0;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v2;
  v1[2] = v8;
  v1[3] = v9;
  v1[10] = *(v5 - 8);
  v1[11] = OUTLINED_FUNCTION_63_1();
  v1[12] = *(v3 - 8);
  v1[13] = OUTLINED_FUNCTION_63_1();
  v1[14] = *(v3 + 16);
  OUTLINED_FUNCTION_2_0();
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_63_1();
  v11 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF9495A8()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = v0[13];
  v2 = v0[14];
  (*(v0[12] + 16))(v1, v0[8], v0[5]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    v4 = OUTLINED_FUNCTION_57_5();
    v5(v4);
    OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v3);

    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_114();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_78_2();
    v18();
    OUTLINED_FUNCTION_4_17();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[17] = v19;
    *v19 = v20;
    v19[1] = sub_1BF949748;
    OUTLINED_FUNCTION_114();

    return v24(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t sub_1BF949748()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF949844()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_57_5();
  v4(v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v1);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_114();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BF9498EC()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = OUTLINED_FUNCTION_57_5();
  v6(v5);
  (*(v2 + 32))(v3, v1, v4);

  OUTLINED_FUNCTION_77();

  return v7();
}

uint64_t Sequence.asyncCompactMap<A>(_:)()
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  OUTLINED_FUNCTION_86_1();
  sub_1BF9B50F8();
  OUTLINED_FUNCTION_72_2();
  v0[7] = v5;
  *v4 = v6;
  v4[1] = sub_1BF949A74;
  OUTLINED_FUNCTION_56_4();

  return Sequence.asyncMap<A>(_:)();
}

uint64_t sub_1BF949A74()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41_4();

    return v9();
  }

  else
  {
    *(v5 + 72) = v3;
    v11 = OUTLINED_FUNCTION_47_4();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1BF949B98()
{
  OUTLINED_FUNCTION_41_1();
  v1 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 72);
  v2 = swift_task_alloc();
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  OUTLINED_FUNCTION_53_5();
  sub_1BF9B4E08();
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  sub_1BF9B4C88();
  OUTLINED_FUNCTION_3_14();

  v4 = OUTLINED_FUNCTION_5();

  return v5(v4);
}

uint64_t Sequence.asyncFlatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_1_18(sub_1BF949D40, 0);
}

uint64_t sub_1BF949D40()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  sub_1BF9B4E08();
  OUTLINED_FUNCTION_72_2();
  *(v0 + 88) = v6;
  *v5 = v7;
  v5[1] = sub_1BF949E34;

  return Sequence.asyncMap<A>(_:)();
}

uint64_t sub_1BF949E34()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF949F48()
{
  OUTLINED_FUNCTION_41_1();
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  OUTLINED_FUNCTION_53_5();
  sub_1BF9B4E08();
  OUTLINED_FUNCTION_37_4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BF9B4CB8();
  OUTLINED_FUNCTION_3_14();

  v3 = OUTLINED_FUNCTION_5();

  return v4(v3);
}

uint64_t sub_1BF94A050()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_77();

  return v0();
}

uint64_t sub_1BF94A0AC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1BF94A1A4;

  return v7(a2);
}

uint64_t sub_1BF94A1A4()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  OUTLINED_FUNCTION_41_4();

  return v9();
}

uint64_t sub_1BF94A294()
{
  OUTLINED_FUNCTION_45();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_0(v6);
  *v7 = v8;
  v7[1] = sub_1BF8BC644;

  return sub_1BF94A0AC(v4, v2, v5);
}

uint64_t Sequence.asyncFilter(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v2[6] = v3;
  v2[7] = v1;
  v2[4] = v4;
  v2[5] = v5;
  v2[3] = v6;
  v2[8] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v2[9] = v7;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  OUTLINED_FUNCTION_87_0();
  v8 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_72(v8);
  v2[12] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_2_0();
  v2[13] = v9;
  v2[14] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_59_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10_11(AssociatedTypeWitness);
  v2[16] = v11;
  v2[17] = OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BF94A538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  *(v10 + 16) = sub_1BF9B4938();
  v11 = OUTLINED_FUNCTION_36();
  v12(v11);
  OUTLINED_FUNCTION_68_2();
  sub_1BF9B4C68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_19_11();
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_57_5();
    v17 = v16(v15);
    OUTLINED_FUNCTION_107_0(v17, v18, v19, v20, v21, v22, v23, v24);

    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_56_4();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_78_2();
    v34();
    OUTLINED_FUNCTION_23_11();
    v45 = v35;
    v36 = swift_task_alloc();
    *(v10 + 144) = v36;
    *v36 = v10;
    OUTLINED_FUNCTION_26_9(v36);
    OUTLINED_FUNCTION_56_4();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, v45, a10);
  }
}

uint64_t sub_1BF94A6E0()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 160) = v3 & 1;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF94A7F8()
{
  OUTLINED_FUNCTION_45();
  if (*(v0 + 160))
  {
    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
    OUTLINED_FUNCTION_87_0();
    sub_1BF9B4E08();
    sub_1BF9B4DC8();
  }

  (*(*(v0 + 72) + 8))(*(v0 + 88), *(v0 + 64));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_57_5();
    v5 = v4(v3);
    OUTLINED_FUNCTION_107_0(v5, v6, v7, v8, v9, v10, v11, v12);

    v13 = OUTLINED_FUNCTION_21_10();

    return v14(v13);
  }

  else
  {
    OUTLINED_FUNCTION_78_2();
    v16();
    OUTLINED_FUNCTION_23_11();
    v20 = v17;
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_26_9(v18);

    return v20(v19);
  }
}

uint64_t sub_1BF94A9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  v12 = v10[16];
  v11 = v10[17];
  v13 = v10[15];
  (*(v10[9] + 8))(v10[11], v10[8]);
  (*(v12 + 8))(v11, v13);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_56_4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1BF94AA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BF9B4518();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v11 = *(type metadata accessor for SingleAccessProcessor.ProcessedTask(0, a3, v9, v10) + 28);
  v14 = type metadata accessor for SingleAccessProcessor.LoadingTask(0, a3, v12, v13);
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v11, a2, v14);
}

uint64_t sub_1BF94AB58@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_101_0();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_92_0(v6, *(v5 + 80), v7, v8);
  OUTLINED_FUNCTION_13();
  return (*(v9 + 16))(a1, v1 + v4);
}

uint64_t sub_1BF94ABF0(uint64_t a1)
{
  OUTLINED_FUNCTION_101_0();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_92_0(v6, *(v5 + 80), v7, v8);
  OUTLINED_FUNCTION_13();
  (*(v9 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1BF94AC90(uint64_t a1))(void)
{
  OUTLINED_FUNCTION_20_6();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SingleAccessProcessor.__allocating_init(processorName:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_88();
  SingleAccessProcessor.init(processorName:)(v1, v2);
  return v0;
}

uint64_t *SingleAccessProcessor.init(processorName:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_20_6();
  type metadata accessor for SingleAccessProcessor.ProcessedTask(0, *(v5 + 80), v6, v7);
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_20_6();
  v13 = (v2 + *(v12 + 104));
  *v13 = a1;
  v13[1] = a2;
  return v2;
}

uint64_t sub_1BF94ADF4()
{
  OUTLINED_FUNCTION_65();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  OUTLINED_FUNCTION_20_6();
  v1[11] = v6;
  v7 = *v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9B10, &qword_1BF9C2450);
  v1[12] = v8;
  OUTLINED_FUNCTION_72(v8);
  v1[13] = OUTLINED_FUNCTION_63_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9998, &qword_1BF9C07C0);
  OUTLINED_FUNCTION_72(v9);
  v1[14] = OUTLINED_FUNCTION_108_0();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  OUTLINED_FUNCTION_72(v10);
  v1[17] = OUTLINED_FUNCTION_63_1();
  v11 = *(v7 + 80);
  v1[18] = v11;
  v12 = OUTLINED_FUNCTION_59_5();
  v16 = type metadata accessor for SingleAccessProcessor.LoadingTask(v12, v13, v14, v15);
  v1[19] = v16;
  OUTLINED_FUNCTION_10_11(v16);
  v1[20] = v17;
  v1[21] = OUTLINED_FUNCTION_108_0();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_2_0();
  v1[24] = v18;
  v1[25] = OUTLINED_FUNCTION_108_0();
  v1[26] = swift_task_alloc();
  v21 = type metadata accessor for SingleAccessProcessor.ProcessedTask(255, v11, v19, v20);
  v1[27] = v21;
  OUTLINED_FUNCTION_59_5();
  v22 = sub_1BF9B50F8();
  v1[28] = v22;
  OUTLINED_FUNCTION_10_11(v22);
  v1[29] = v23;
  v1[30] = OUTLINED_FUNCTION_108_0();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = *(v21 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v24 = sub_1BF9B4518();
  v1[38] = v24;
  OUTLINED_FUNCTION_10_11(v24);
  v1[39] = v25;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF94B144, v0, 0);
}

uint64_t sub_1BF94B144()
{
  v104 = v0;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v1 = v0[39];
  v2 = sub_1BF9B47C8();
  v0[42] = __swift_project_value_buffer(v2, qword_1EDBF5570);
  v0[43] = *(v1 + 16);
  v0[44] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_51_4();
  v102 = v3;
  v3();

  v4 = sub_1BF9B47A8();
  v5 = sub_1BF9B5038();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  v9 = v0[38];
  v8 = v0[39];
  if (v6)
  {
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *v11 = 136315394;
    OUTLINED_FUNCTION_9_11();
    sub_1BF94EE98(v12, 255, v13, MEMORY[0x1E69695E0]);
    v14 = sub_1BF9B5668();
    v16 = v15;
    log = v4;
    v19 = *(v8 + 8);
    v18 = v8 + 8;
    v17 = v19;
    v19(v7, v9);
    v20 = sub_1BF8DE810(v14, v16, &v103);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1BF8DE810(*(v10 + *(*v10 + 104)), *(v10 + *(*v10 + 104) + 8), &v103);
    _os_log_impl(&dword_1BF8B8000, log, v5, "single access processor called for %s in %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    v21 = *(v8 + 8);
    v18 = v8 + 8;
    v17 = v21;
    v21(v7, v9);
  }

  v0[45] = v17;
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_19_11();
  if (v22)
  {
    v23 = v0[34];
    v24 = v0[28];
    v25 = v0[29];
LABEL_11:
    (*(v25 + 8))(v23, v24);
    goto LABEL_15;
  }

  v18 = v0[7];
  (*(v0[35] + 32))(v0[37], v0[34], v0[27]);
  OUTLINED_FUNCTION_9_11();
  sub_1BF94EE98(v26, 255, v27, MEMORY[0x1E69695C8]);
  OUTLINED_FUNCTION_80_1();
  v28 = sub_1BF9B4A88();
  if (v28)
  {
    v23 = v0[37];
    v25 = v0[35];
    v24 = v0[27];
    goto LABEL_11;
  }

  v29 = sub_1BF9B47A8();
  v30 = sub_1BF9B5038();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1BF8B8000, v29, v30, "single access processor needs updating because the generation ids do not match", v31, 2u);
    OUTLINED_FUNCTION_39_6();
  }

  v18 = v0[27];

  sub_1BF94CABC();
  v32 = OUTLINED_FUNCTION_80_1();
  v33(v32);
LABEL_15:
  v34 = v0[33];
  OUTLINED_FUNCTION_88_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v18);
  v36 = v0[29];
  if (EnumTagSinglePayload)
  {
    v37 = *(v36 + 8);
    v38 = OUTLINED_FUNCTION_42_2();
    v37(v38);
  }

  else
  {
    v18 = v0[23];
    v39 = OUTLINED_FUNCTION_65_3();
    v40(v39);
    v37 = *(v36 + 8);
    v41 = OUTLINED_FUNCTION_42_2();
    v37(v41);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = *(v0[24] + 32);
      v42(v0[26], v0[23], v0[18]);
      v43 = sub_1BF9B47A8();
      v44 = sub_1BF9B5038();
      if (os_log_type_enabled(v43, v44))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_75_2();
        _os_log_impl(v45, v46, v47, v48, v49, 2u);
        OUTLINED_FUNCTION_87();
      }

      v50 = v0[26];
      v51 = v0[18];
      v52 = v0[6];

      v42(v52, v50, v51);
      v53 = OUTLINED_FUNCTION_68_2();
      sub_1BF94C6FC(v53, v54);
      v55 = OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_55_4(v55, v56, v57, v58, v59, v60, v61, v62, v98);

      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_104_0();

      __asm { BRAA            X1, X16 }
    }

    (*(v0[20] + 8))(v0[23], v0[19]);
  }

  v0[46] = v37;
  v65 = v0[32];
  OUTLINED_FUNCTION_88_0();
  if (__swift_getEnumTagSinglePayload(v65, 1, v18))
  {
    v66 = OUTLINED_FUNCTION_42_2();
    v37(v66);
LABEL_28:
    v72 = v0[40];
    v73 = v0[31];
    v74 = v0[21];
    v75 = v0[18];
    v99 = v0[38];
    v76 = v0[17];
    v77 = v0[9];
    v101 = v0[27];
    v78 = v0[7];
    v79 = v0[8];
    sub_1BF9B4EB8();
    OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    v84 = swift_allocObject();
    v84[2] = 0;
    v84[3] = 0;
    v84[4] = v75;
    v84[5] = v79;
    v84[6] = v77;

    v85 = OUTLINED_FUNCTION_46_2();
    v88 = sub_1BF94625C(v85, v86, v76, v87, v84, v75);
    v0[50] = v88;
    (v102)(v72, v78, v99);
    *v74 = v88;
    swift_storeEnumTagMultiPayload();
    sub_1BF94AA8C(v72, v74, v75, v73);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v101);

    sub_1BF94ABF0(v73);
    v89 = swift_task_alloc();
    v0[51] = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
    OUTLINED_FUNCTION_72_2();
    *v89 = v90;
    v89[1] = sub_1BF94BC4C;
    goto LABEL_29;
  }

  v67 = OUTLINED_FUNCTION_65_3();
  v68(v67);
  v69 = OUTLINED_FUNCTION_42_2();
  v37(v69);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v71 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[20] + 8))(v71, v0[19]);
    goto LABEL_28;
  }

  v0[47] = *v71;
  v92 = sub_1BF9B47A8();
  v93 = sub_1BF9B5038();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_1BF8B8000, v92, v93, "single access processor has an inprogress task for generationId. Awaiting for results to return.", v94, 2u);
    OUTLINED_FUNCTION_39_6();
  }

  v95 = swift_task_alloc();
  v0[48] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_72_2();
  *v95 = v96;
  v95[1] = sub_1BF94B9E4;
LABEL_29:
  OUTLINED_FUNCTION_104_0();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1BF94B9E4()
{
  OUTLINED_FUNCTION_65();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 392) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1BF94C348;
  }

  else
  {
    v6 = sub_1BF94BB04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BF94BB04()
{

  v0 = OUTLINED_FUNCTION_43();
  sub_1BF94C6FC(v0, v1);
  OUTLINED_FUNCTION_13_8();

  OUTLINED_FUNCTION_11_1();

  return v2();
}

uint64_t sub_1BF94BC4C()
{
  OUTLINED_FUNCTION_65();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 416) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1BF94C57C;
  }

  else
  {
    v6 = sub_1BF94BD6C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1BF94BD6C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 128);
  (*(v0 + 344))(v4, *(v0 + 56), v1);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v1);
  sub_1BF94AB58(v2);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v6 = *(v0 + 368);
  if (EnumTagSinglePayload)
  {
    (v6)(*(v0 + 240), *(v0 + 224));
    v7 = 1;
  }

  else
  {
    v68 = *(v0 + 344);
    v8 = *(v0 + 304);
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = *(v0 + 216);
    v12 = *(v0 + 120);
    v13 = OUTLINED_FUNCTION_36();
    v14(v13);
    v15 = OUTLINED_FUNCTION_80_1();
    v6(v15);
    v68(v12, v9, v8);
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v16 = *(v0 + 304);
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  __swift_storeEnumTagSinglePayload(v18, v7, 1, v16);
  v21 = *(v20 + 48);
  sub_1BF9502F0(v17, v19, &qword_1EBDE9998, &qword_1BF9C07C0);
  sub_1BF9502F0(v18, v19 + v21, &qword_1EBDE9998, &qword_1BF9C07C0);
  v22 = __swift_getEnumTagSinglePayload(v19, 1, v16);
  v23 = *(v0 + 304);
  if (v22 == 1)
  {
    sub_1BF8DFBF0(*(v0 + 120), &qword_1EBDE9998, &qword_1BF9C07C0);
    v24 = OUTLINED_FUNCTION_80_1();
    sub_1BF8DFBF0(v24, v25, &qword_1BF9C07C0);
    if (__swift_getEnumTagSinglePayload(v19 + v21, 1, v23) == 1)
    {
      sub_1BF8DFBF0(*(v0 + 104), &qword_1EBDE9998, &qword_1BF9C07C0);
LABEL_14:
      v47 = *(v0 + 216);
      v48 = sub_1BF94AC90(v0 + 16);
      v50 = v49;
      if (!__swift_getEnumTagSinglePayload(v49, 1, v47))
      {
        v52 = *(v0 + 192);
        v51 = *(v0 + 200);
        v53 = *(v0 + 144);
        v54 = *(*(v0 + 216) + 28);
        (*(*(v0 + 160) + 8))(v50 + v54, *(v0 + 152));
        (*(v52 + 16))(v50 + v54, v51, v53);
        swift_storeEnumTagMultiPayload();
      }

      (v48)(v0 + 16, 0);

      goto LABEL_17;
    }
  }

  else
  {
    sub_1BF9502F0(*(v0 + 104), *(v0 + 112), &qword_1EBDE9998, &qword_1BF9C07C0);
    v26 = __swift_getEnumTagSinglePayload(v19 + v21, 1, v23);
    v27 = *(v0 + 360);
    if (v26 != 1)
    {
      v38 = *(v0 + 320);
      v39 = *(v0 + 304);
      v40 = *(v0 + 120);
      v41 = *(v0 + 112);
      v69 = *(v0 + 104);
      (*(*(v0 + 312) + 32))(v38, v19 + v21, v39);
      OUTLINED_FUNCTION_9_11();
      sub_1BF94EE98(v42, 255, v43, MEMORY[0x1E69695C8]);
      v44 = sub_1BF9B4A88();
      v27(v38, v39);
      sub_1BF8DFBF0(v40, &qword_1EBDE9998, &qword_1BF9C07C0);
      v45 = OUTLINED_FUNCTION_68_2();
      sub_1BF8DFBF0(v45, v46, &qword_1BF9C07C0);
      v27(v41, v39);
      sub_1BF8DFBF0(v69, &qword_1EBDE9998, &qword_1BF9C07C0);
      if (v44)
      {
        goto LABEL_14;
      }

LABEL_10:
      v31 = sub_1BF9B47A8();
      v32 = sub_1BF9B5048();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = OUTLINED_FUNCTION_109();
        v34 = swift_slowAlloc();
        v70 = v34;
        *v33 = 136315138;
        v35 = sub_1BF9B58D8();
        v37 = sub_1BF8DE810(v35, v36, &v70);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_1BF8B8000, v31, v32, "%s: Detected race condition that means a previous long running request might have accidentally overwriten the value of a subsequent request", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_39_6();
      }

LABEL_17:
      (*(*(v0 + 192) + 32))(*(v0 + 48), *(v0 + 200), *(v0 + 144));
      v55 = OUTLINED_FUNCTION_43();
      sub_1BF94C6FC(v55, v56);
      v57 = OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_55_4(v57, v58, v59, v60, v61, v62, v63, v64, v67);

      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_104_0();

      __asm { BRAA            X1, X16 }
    }

    v28 = *(v0 + 304);
    v29 = *(v0 + 128);
    v30 = *(v0 + 112);
    sub_1BF8DFBF0(*(v0 + 120), &qword_1EBDE9998, &qword_1BF9C07C0);
    sub_1BF8DFBF0(v29, &qword_1EBDE9998, &qword_1BF9C07C0);
    v27(v30, v28);
  }

  sub_1BF8DFBF0(*(v0 + 104), &qword_1EBDE9B10, &qword_1BF9C2450);
  goto LABEL_10;
}

uint64_t sub_1BF94C348()
{
  v1 = v0[49];
  v2 = v1;
  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5048();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[49];
    v6 = OUTLINED_FUNCTION_109();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BF8B8000, v3, v4, "Caught exception when using SingleAccessProcessor. %@", v6, 0xCu);
    sub_1BF8DFBF0(v7, &qword_1EBDE9468, &unk_1BF9C2470);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_39_6();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_79_1();
  v10 = v0[10];
  v11 = v0[7];

  sub_1BF94C6FC(v11, v10);

  OUTLINED_FUNCTION_77();

  return v12();
}

uint64_t sub_1BF94C57C()
{
  OUTLINED_FUNCTION_79_1();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  sub_1BF94C6FC(v2, v1);

  OUTLINED_FUNCTION_77();

  return v3();
}

void sub_1BF94C6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF9B4518();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v8 = sub_1BF9B47C8();
  __swift_project_value_buffer(v8, qword_1EDBF5570);
  (*(v5 + 16))(v7, a1, v4);

  v9 = sub_1BF9B47A8();
  v10 = sub_1BF9B5038();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    sub_1BF94EE98(qword_1EBDE9B20, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = sub_1BF9B5668();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1BF8DE810(v13, v15, &v18);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1BF8DE810(*(a2 + *(*a2 + 104)), *(a2 + *(*a2 + 104) + 8), &v18);
    _os_log_impl(&dword_1BF8B8000, v9, v10, "single access processor finished for %s in %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v12, -1, -1);
    MEMORY[0x1BFB5F320](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BF94C9C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1BF8BC564;

  return v8(a1);
}

uint64_t sub_1BF94CABC()
{
  OUTLINED_FUNCTION_20_6();
  v3 = type metadata accessor for SingleAccessProcessor.ProcessedTask(255, *(v0 + 80), v1, v2);
  OUTLINED_FUNCTION_59_5();
  v4 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_72(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  return sub_1BF94ABF0(v7);
}

uint64_t sub_1BF94CB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_20_6();
  v5[7] = v6;
  return OUTLINED_FUNCTION_1_18(sub_1BF94CBA8, v4);
}

uint64_t sub_1BF94CBA8()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = *(v1 + 80);
  v4[3] = v3;
  v4[4] = v2;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[9] = v5;
  *v5 = v6;
  v5[1] = sub_1BF94CC94;

  return sub_1BF94ADF4();
}

uint64_t sub_1BF94CC94()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1BF94CDB4, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_77();

    return v8();
  }
}

uint64_t sub_1BF94CDB4()
{
  OUTLINED_FUNCTION_7();

  return swift_unexpectedError();
}

uint64_t sub_1BF94CE1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF94CF14;

  return v6(a1);
}

uint64_t sub_1BF94CF14()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_11_1();

  return v3();
}

uint64_t SingleAccessProcessor.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  OUTLINED_FUNCTION_92_0(a1, *(*v4 + 80), a3, a4);
  OUTLINED_FUNCTION_13();
  (*(v6 + 8))(v4 + v5);
  OUTLINED_FUNCTION_20_6();

  swift_defaultActor_destroy();
  return v4;
}

uint64_t SingleAccessProcessor.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SingleAccessProcessor.deinit(a1, a2, a3, a4);

  return MEMORY[0x1EEE6DEF0](v4);
}

uint64_t sub_1BF94D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_1_18(sub_1BF94D0E4, v6);
}

uint64_t sub_1BF94D0E4()
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_38_5();
  sub_1BF94EE98(v1, v2, v3, &protocol conformance descriptor for SequentialProcessor);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_73_1(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_1BF94D1D8;
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DDE0](v7);
}

uint64_t sub_1BF94D1D8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t sub_1BF94D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v34 = a2;
  v35 = a3;
  v10 = sub_1BF9B4E58();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  OUTLINED_FUNCTION_72(v16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v32 = &v31 - v18;
  sub_1BF9B4EB8();
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  (*(v12 + 16))(v15, v33, v10);
  v23 = (*(v12 + 80) + 96) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_71_2(v24);
  *(v25 + 10) = v26;
  *(v25 + 11) = a4;
  (*(v12 + 32))(&v25[v23], v15, v10);

  sub_1BF8C731C(a5, a6);

  v27 = OUTLINED_FUNCTION_46_2();
  return sub_1BF939C48(v27, v28, v32, v29, v24);
}

uint64_t sub_1BF94D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v13;
  *(v8 + 72) = v14;
  *(v8 + 48) = v12;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 80) = *(v14 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v8 + 104) = v9;
  *v9 = v8;
  v9[1] = sub_1BF94D5DC;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BF94D5DC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF94D6C0()
{
  OUTLINED_FUNCTION_65();
  if (*(v0 + 16))
  {

    v1 = OUTLINED_FUNCTION_43();

    return MEMORY[0x1EEE6DFA0](v1, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_0_17();
    v8 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 128) = v4;
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_33_5(v4);

    return v8(v6);
  }
}

uint64_t sub_1BF94D7D8()
{
  OUTLINED_FUNCTION_7();
  if (v0[14] == v0[4])
  {
    sub_1BF8C732C(v0[2]);
    OUTLINED_FUNCTION_0_17();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[16] = v1;
    *v1 = v2;
    OUTLINED_FUNCTION_33_5(v1);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[15] = v3;
    *v3 = v4;
    v3[1] = sub_1BF94D928;
  }

  OUTLINED_FUNCTION_85_1();

  return v5();
}

uint64_t sub_1BF94D928()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF94DA0C()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  sub_1BF8C732C(*(v1 + 16));
  v4 = OUTLINED_FUNCTION_50_4();
  v5(v4);
  OUTLINED_FUNCTION_53_5();
  sub_1BF9B4E58();
  OUTLINED_FUNCTION_96_0();
  sub_1BF9B4E48();
  (*(v3 + 8))(v0, v2);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BF94DAC4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF94DBA8()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_50_4();
  v4(v3);
  OUTLINED_FUNCTION_53_5();
  sub_1BF9B4E58();
  OUTLINED_FUNCTION_96_0();
  sub_1BF9B4E48();
  (*(v2 + 8))(v0, v1);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BF94DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_1_18(sub_1BF94DC80, v6);
}

uint64_t sub_1BF94DC80()
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_38_5();
  sub_1BF94EE98(v1, v2, v3, &protocol conformance descriptor for SequentialProcessor);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_73_1(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_1BF94DD74;
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1BF94DD74()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 64);

    return MEMORY[0x1EEE6DFA0](sub_1BF8E9798, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_77();

    return v8();
  }
}

uint64_t sub_1BF94DE94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 120);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    *(a2 + 120) = v9;

    v19 = a8(v18, v9, a3, a4, a5, a6, v17, a7);

    *(a2 + 112) = v19;
  }

  return result;
}

uint64_t sub_1BF94DF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a2;
  v37 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  v10 = sub_1BF9B4E58();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  OUTLINED_FUNCTION_72(v16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v33 - v18;
  sub_1BF9B4EB8();
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = v10;
  (*(v12 + 16))(v15, a7, v10);
  v24 = (*(v12 + 80) + 96) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = OUTLINED_FUNCTION_71_2(v25);
  v27 = v35;
  *(v26 + 10) = v28;
  *(v26 + 11) = v27;
  (*(v12 + 32))(&v26[v24], v15, v23);

  sub_1BF8C731C(a5, a6);

  v29 = OUTLINED_FUNCTION_46_2();
  return sub_1BF939C48(v29, v30, v34, v31, v25);
}

uint64_t sub_1BF94E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  *(v8 + 56) = v12;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 88) = *(v14 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v8 + 128) = v9;
  *v9 = v8;
  v9[1] = sub_1BF94E290;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BF94E290()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF94E374()
{
  OUTLINED_FUNCTION_65();
  if (*(v0 + 24))
  {

    v1 = OUTLINED_FUNCTION_43();

    return MEMORY[0x1EEE6DFA0](v1, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_0_17();
    v8 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 160) = v4;
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_34_6(v4);

    return v8(v6);
  }
}

uint64_t sub_1BF94E48C()
{
  OUTLINED_FUNCTION_7();
  if (v0[17] == v0[5])
  {
    sub_1BF8C732C(v0[3]);
    OUTLINED_FUNCTION_0_17();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[20] = v1;
    *v1 = v2;
    OUTLINED_FUNCTION_34_6(v1);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[18] = v3;
    *v3 = v4;
    v3[1] = sub_1BF94E5DC;
  }

  OUTLINED_FUNCTION_85_1();

  return v5();
}

uint64_t sub_1BF94E5DC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF94E6D8()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  sub_1BF8C732C(*(v0 + 24));
  v1 = OUTLINED_FUNCTION_97();
  v2(v1);
  v3 = OUTLINED_FUNCTION_82_1();
  v4(v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_86_1();
  sub_1BF9B4E58();
  sub_1BF9B4E48();
  v5 = OUTLINED_FUNCTION_36();
  v7 = v6(v5);
  OUTLINED_FUNCTION_106_0(v7, v8, v9, v10, v11, v12, v13, v14);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1BF94E7C8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF94E8C4()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_97();
  v1(v0);
  v2 = OUTLINED_FUNCTION_82_1();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_86_1();
  sub_1BF9B4E58();
  sub_1BF9B4E48();
  v4 = OUTLINED_FUNCTION_36();
  v6 = v5(v4);
  OUTLINED_FUNCTION_106_0(v6, v7, v8, v9, v10, v11, v12, v13);

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_114();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BF94E9B0()
{
  OUTLINED_FUNCTION_65();
  sub_1BF8C732C(v0[3]);
  v0[2] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_59_5();
  sub_1BF9B4E58();
  OUTLINED_FUNCTION_96_0();
  v1 = sub_1BF9B4E38();
  OUTLINED_FUNCTION_106_0(v1, v2, v3, v4, v5, v6, v7, v8);

  OUTLINED_FUNCTION_77();

  return v9();
}

uint64_t sub_1BF94EA6C()
{
  OUTLINED_FUNCTION_65();
  *(v0 + 16) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_59_5();
  sub_1BF9B4E58();
  OUTLINED_FUNCTION_96_0();
  v1 = sub_1BF9B4E38();
  OUTLINED_FUNCTION_106_0(v1, v2, v3, v4, v5, v6, v7, v8);

  OUTLINED_FUNCTION_77();

  return v9();
}

uint64_t SequentialProcessor.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1BF94EB54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_0(v4);
  *v5 = v6;
  v5[1] = sub_1BF8BC644;
  v7 = OUTLINED_FUNCTION_58_4();

  return sub_1BF94C9C4(v7, v1, v2, v3);
}

uint64_t sub_1BF94EC08@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
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

uint64_t sub_1BF94ECC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF95084C;

  return v6(a1);
}

uint64_t sub_1BF94EDBC(uint64_t (*a1)(void))
{
  a1();

  return sub_1BF9B58D8();
}

uint64_t sub_1BF94EDF8()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_61_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_0(v1);
  *v2 = v3;
  v2[1] = sub_1BF8BC644;
  v4 = OUTLINED_FUNCTION_58_4();

  return sub_1BF94CE1C(v4, v0);
}

uint64_t sub_1BF94EE98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AsyncAwaitUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF94F008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF94F044(uint64_t a1, int a2)
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

uint64_t sub_1BF94F084(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF94F0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SingleAccessProcessor.ProcessedTask(255, *(a1 + 80), a3, a4);
  result = sub_1BF9B50F8();
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

uint64_t dispatch thunk of SingleAccessProcessor.runThrowing(forGenerationId:processor:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_20_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_8(v1);

  return v4(v3);
}

uint64_t dispatch thunk of SingleAccessProcessor.run(forGenerationId:processor:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_20_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_8(v1);

  return v4(v3);
}

uint64_t dispatch thunk of Processor.process(_:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_43_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_8(v1);

  return v4(v3);
}

uint64_t dispatch thunk of SequentialProcessor.run<A>(_:onOutdated:)()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_48_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_45_5(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_48_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_45_5(v1);

  return v4(v3);
}

uint64_t sub_1BF94F74C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  result = sub_1BF9B4ED8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF94F7EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
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

  return (v5 | v10) + 255;
}

void sub_1BF94F910(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
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

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
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

uint64_t sub_1BF94FAD4(uint64_t a1)
{
  result = sub_1BF9B4518();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for SingleAccessProcessor.LoadingTask(319, *(a1 + 16), v3, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF94FB5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BF9B4518();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(*(v6 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_27;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v7 < 0xFE)
      {
        v21 = *(((a1 + v12) & ~v11) + v9);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v6);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1BF94FD8C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BF9B4518();
  v9 = *(*(v8 - 8) + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(*(v8 - 8) + 84);
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(*(v8 - 8) + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  v17 = 8 * v16;
  if (a3 <= v12)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v12 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 < 0xFE)
          {
            v24 = (&a1[v14] & ~v13);
            if (a2 > 0xFE)
            {
              if (v15 <= 3)
              {
                v25 = ~(-1 << (8 * v15));
              }

              else
              {
                v25 = -1;
              }

              if (v11 != -1)
              {
                v26 = v25 & (a2 - 255);
                if (v15 <= 3)
                {
                  v27 = v11 + 1;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v15);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }

            else
            {
              v24[v11] = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v8);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v12 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1BF9500C4(uint64_t a1)
{
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  v2 = sub_1BF9B4E58();
  OUTLINED_FUNCTION_72(v2);
  OUTLINED_FUNCTION_84_0();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_61_3();

  return sub_1BF94E15C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BF9501E4(uint64_t a1)
{
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_86_1();
  v2 = sub_1BF9B4E58();
  OUTLINED_FUNCTION_72(v2);
  OUTLINED_FUNCTION_84_0();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_61_3();

  return sub_1BF94D4C0(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BF9502F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1BF95034C(uint64_t a1)
{
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_83_0();
  v4 = OUTLINED_FUNCTION_89_0(v2, MEMORY[0x1E69E6530], v3, "offset element ");
  OUTLINED_FUNCTION_10_11(v4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BF8BC564;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_61_3();

  return sub_1BF9485FC(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BF950490(uint64_t a1)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_0(v1);
  *v2 = v3;
  v2[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_114();

  return v8(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BF95053C()
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_10_11(TupleTypeMetadata2);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1BF8BC564;
  OUTLINED_FUNCTION_56_4();

  return sub_1BF948ED8(v3, v4, v5, v6, v7);
}

uint64_t sub_1BF95066C()
{
  OUTLINED_FUNCTION_41_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v1[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_40_1();

  return sub_1BF946D4C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF950774()
{
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_61_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v1[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_56_4();

  return sub_1BF947578(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1)
{

  return MEMORY[0x1EEE69DA8](v1, a1);
}

void *OUTLINED_FUNCTION_71_2(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v4;
  result[5] = v3;
  result[6] = v2;
  result[7] = v1;
  v6 = *(v5 - 104);
  result[8] = *(v5 - 96);
  result[9] = v6;
  return result;
}

__n128 OUTLINED_FUNCTION_73_1(__n128 *a1)
{
  *(v2 + 72) = a1;
  result = *(v2 + 24);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v1;
  a1[2] = result;
  a1[3].n128_u64[0] = v5;
  a1[3].n128_u64[1] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return sub_1BF94AB58(v0);
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SingleAccessProcessor.ProcessedTask(255, a2, a3, a4);

  return sub_1BF9B50F8();
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_1BF950B70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9090B8;

  return NoOpGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

uint64_t sub_1BF950DF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BF9B47C8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1BF9B47B8();
}

uint64_t sub_1BF950E8C()
{
  sub_1BF9547E8();
  result = sub_1BF9B50D8();
  qword_1EDBF5670 = result;
  return result;
}

id static Logger.log.getter()
{
  if (qword_1EDBF57E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBF5670;

  return v1;
}

uint64_t static Logger.makeSignpostID(log:)(void *a1)
{
  v1 = a1;

  return sub_1BF9B4788();
}

uint64_t static Logger.begin(_:_:log:telemetry:)()
{
  OUTLINED_FUNCTION_18_10();
  sub_1BF9B5078();
  OUTLINED_FUNCTION_31_10();
  return OUTLINED_FUNCTION_29_5(v0, &dword_1BF8B8000);
}

uint64_t static Logger.end(_:_:log:telemetry:)()
{
  OUTLINED_FUNCTION_18_10();
  sub_1BF9B5068();
  OUTLINED_FUNCTION_31_10();
  return OUTLINED_FUNCTION_29_5(v0, &dword_1BF8B8000);
}

uint64_t static Logger.withSignpost<A>(name:log:completion:)(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v21 = a3;
  v20[0] = a1;
  v20[1] = a2;
  sub_1BF9B4798();
  OUTLINED_FUNCTION_2_5();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF9B50C8();
  if ((v13 & 1) == 0)
  {
    return a5(v13, v14);
  }

  v15 = a4;
  sub_1BF9B4788();
  sub_1BF9B5078();
  OUTLINED_FUNCTION_25_8();
  v17 = OUTLINED_FUNCTION_38_6(v16, &dword_1BF8B8000);
  (a5)(v17);
  sub_1BF9B5068();
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_38_6(v18, &dword_1BF8B8000);
  return (*(v9 + 8))(v12, v5);
}

uint64_t sub_1BF9512EC(uint64_t a1, uint64_t a2)
{
  sub_1BF8EE390(a1, &v20, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!v21)
  {
    sub_1BF8EE3F8(&v20, &qword_1EBDE9208, &unk_1BF9C2A50);
    return 7104878;
  }

  sub_1BF8C192C(&v20, v22);
  sub_1BF8C187C(v22, &v20);
  *&v20 = sub_1BF9B4B08();
  *(&v20 + 1) = v3;
  sub_1BF904C28();
  v4 = sub_1BF9B5188();
  v6 = v5;

  *&v20 = v4;
  *(&v20 + 1) = v6;
  v7 = sub_1BF9B5188();
  v9 = v8;

  result = sub_1BF9B4B58();
  if (result <= a2)
  {
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v7;
  }

  if (a2 + 0x4000000000000000 >= 0)
  {
    v11 = 2 * a2 / 3;

    v12 = sub_1BF9A9210(v11, v7, v9);
    v13 = MEMORY[0x1BFB5DE30](v12);
    v15 = v14;

    *&v20 = v13;
    *(&v20 + 1) = v15;
    MEMORY[0x1BFB5DE90](3026478, 0xE300000000000000);
    v16 = sub_1BF951538(a2 - v11 - 3, v7, v9);
    v17 = MEMORY[0x1BFB5DE30](v16);
    v19 = v18;

    MEMORY[0x1BFB5DE90](v17, v19);

    v7 = v20;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF951538(unint64_t result, uint64_t a2, unint64_t a3)
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

    result = sub_1BF9B4B78();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_1BF9B4C58();

      return v5;
    }
  }

  __break(1u);
  return result;
}

void Logger.toTable<A>(columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v15 = v7;
  v9 = sub_1BF9B4E08();
  OUTLINED_FUNCTION_11_14();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1BF9B5008();
  if ((v11 & 1) == 0)
  {
    v14[7] = v0;
    v15 = v8;
    MEMORY[0x1EEE9AC00](v11);
    v14[2] = v2;
    v14[3] = v6;
    v14[4] = v4;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AF0, &qword_1BF9C27E0);
    sub_1BF9094A0(sub_1BF9519B4, v14, v9, v12, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);
    Logger.toTable<A>(columnNames:elements:maxColumnWidth:rows:)();
  }

  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9519B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

void sub_1BF9519F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a1 + 16);

  if (v9)
  {
    v11 = sub_1BF986FC4(a1);
    v12 = *(a4 + 16);
    v78 = a4;
    if (swift_isUniquelyReferenced_nonNull_native() && v12 < *(a4 + 24) >> 1)
    {
      v68 = a4;
    }

    else
    {
      sub_1BF8DCD08();
      v68 = v13;
      v78 = v13;
    }

    v10 = sub_1BF9543E8(0, 0, 1, v11);
  }

  else
  {
    v68 = a4;
  }

  v77 = 0;
  MEMORY[0x1EEE9AC00](v10);
  v66[2] = &v77;
  v66[3] = v5;
  v66[4] = a3;
  v14 = sub_1BF92433C(sub_1BF954894, v66, v68);
  v15 = v77;
  if (v77 < 0)
  {
    goto LABEL_59;
  }

  v16 = v14;
  v17 = MEMORY[0x1E69E7CC0];
  if (v77)
  {
    v17 = sub_1BF9B4D88();
    *(v17 + 16) = v15;
    bzero((v17 + 32), 8 * v15);
  }

  v71 = *(v16 + 16);
  if (v71)
  {
    v69 = v15;
    v70 = v16;
    v18 = 0;
    v72 = v16 + 32;
    v19 = v17 + 32;
    while (2)
    {
      if (v18 >= *(v16 + 16))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v20 = *(v72 + 8 * v18++);
      v21 = *(v20 + 16);

      v22 = 0;
      v23 = v20 + 40;
      while (v21 != v22)
      {
        if (v22 >= *(v20 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:

          goto LABEL_41;
        }

        if (v22 >= *(v17 + 16))
        {
          goto LABEL_50;
        }

        v24 = *(v19 + 8 * v22);

        v25 = sub_1BF9B4B58();

        if (v22 >= *(v17 + 16))
        {
          goto LABEL_51;
        }

        if (v25 <= v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25;
        }

        *(v19 + 8 * v22) = v26;
        v23 += 16;
        ++v22;
      }

      v16 = v70;
      if (v18 != v71)
      {
        continue;
      }

      break;
    }

    v27 = *(v70 + 16);
    v28 = v69;
    if (v27)
    {
      v76 = MEMORY[0x1E69E7CC0];
      sub_1BF8D01C0(0, v27, 0);
      v29 = 0;
      v21 = v76;
      v30 = v28 - 1;
      v67 = v27;
      v73 = v17;
      while (!__OFADD__(v29, 1))
      {
        v69 = v29 + 1;
        v71 = v21;
        v31 = *(v72 + 8 * v29);
        v74 = 0;
        v75 = 0xE000000000000000;
        v32 = *(v31 + 16);

        v33 = 0;
        v34 = (v31 + 40);
        while (v32 != v33)
        {
          if (v33 >= *(v31 + 16))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v36 = *(v34 - 1);
          v35 = *v34;

          MEMORY[0x1BFB5DE90](v36, v35);
          if (v33 < v30)
          {
            if (v33 >= *(v17 + 16))
            {
              goto LABEL_54;
            }

            v37 = v19;
            v38 = *(v19 + 8 * v33);
            v39 = sub_1BF9B4B58();

            if (__OFSUB__(v38, v39))
            {
              goto LABEL_55;
            }

            if (__OFADD__(v38 - v39, 2))
            {
              goto LABEL_56;
            }

            v40 = sub_1BF9B4C28();
            MEMORY[0x1BFB5DE90](v40);
            v19 = v37;
            v17 = v73;
          }

          v34 += 2;
          ++v33;
        }

        v41 = v74;
        v42 = v75;
        v21 = v71;
        v76 = v71;
        v44 = *(v71 + 16);
        v43 = *(v71 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1BF8D01C0(v43 > 1, v44 + 1, 1);
          v21 = v76;
        }

        *(v21 + 16) = v44 + 1;
        v45 = v21 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        v29 = v69;
        if (v69 == v67)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_58;
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v46 = *(v68 + 16);
  if (!v46)
  {
    goto LABEL_60;
  }

  v47 = 0;
  v48 = 0;
  v49 = v68 + 40;
  v50 = v46 - 1;
  do
  {
    if (v50 == v48)
    {
      goto LABEL_48;
    }

    v51 = *(*v49 + 16);
    v52 = *(*(v49 - 8) + 16);
    ++v48;
    v47 += 16;
    v49 += 8;
  }

  while (v51 == v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1BF9C27D0;
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD000000000000028, 0x80000001BF9CCD10);
  v76 = v48 - 1;
  v54 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v54);

  MEMORY[0x1BFB5DE90](0x20646E6120, 0xE500000000000000);
  v76 = v48;
  v55 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v55);

  MEMORY[0x1BFB5DE90](0xD000000000000026, 0x80000001BF9CCD40);
  v56 = v75;
  *(v53 + 32) = v74;
  *(v53 + 40) = v56;
  v76 = v48 - 1;
  v74 = sub_1BF9B5668();
  v75 = v57;
  MEMORY[0x1BFB5DE90](8250, 0xE200000000000000);
  if (v48 > *(v21 + 16))
  {
    goto LABEL_61;
  }

  v58 = v21 + v47;
  v59 = *(v21 + v47 + 16);
  v60 = *(v21 + v47 + 24);

  MEMORY[0x1BFB5DE90](v59, v60);

  v61 = v75;
  *(v53 + 48) = v74;
  *(v53 + 56) = v61;
  v76 = v48;
  v74 = sub_1BF9B5668();
  v75 = v62;
  MEMORY[0x1BFB5DE90](8250, 0xE200000000000000);
  if (v48 < *(v21 + 16))
  {
    v63 = *(v58 + 32);
    v64 = *(v58 + 40);

    MEMORY[0x1BFB5DE90](v63, v64);

    v65 = v75;
    *(v53 + 64) = v74;
    *(v53 + 72) = v65;
LABEL_48:

    return;
  }

LABEL_62:
  __break(1u);
}

void Logger.toTable<A>(columnNames:elements:maxColumnWidth:rows:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v6 + 16);

  if (v8)
  {
    v10 = sub_1BF986FC4(v7);
    v11 = *(v3 + 16);
    v76 = v3;
    if (swift_isUniquelyReferenced_nonNull_native() && v11 < *(v3 + 24) >> 1)
    {
      v66 = v3;
    }

    else
    {
      sub_1BF8DCD08();
      v66 = v12;
      v76 = v12;
    }

    v9 = sub_1BF9543E8(0, 0, 1, v10);
  }

  else
  {
    v66 = v3;
  }

  v75 = 0;
  MEMORY[0x1EEE9AC00](v9);
  v64[2] = &v75;
  v64[3] = v1;
  v64[4] = v5;
  v13 = sub_1BF92433C(sub_1BF954520, v64, v66);
  v14 = v75;
  if (v75 < 0)
  {
    goto LABEL_59;
  }

  v15 = v13;
  v16 = MEMORY[0x1E69E7CC0];
  if (v75)
  {
    v16 = sub_1BF9B4D88();
    *(v16 + 16) = v14;
    bzero((v16 + 32), 8 * v14);
  }

  v69 = *(v15 + 16);
  if (v69)
  {
    v67 = v14;
    v68 = v15;
    v17 = 0;
    v70 = v15 + 32;
    v18 = v16 + 32;
    while (2)
    {
      if (v17 >= *(v15 + 16))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v19 = *(v70 + 8 * v17++);
      v20 = *(v19 + 16);

      v21 = 0;
      v22 = v19 + 40;
      while (v20 != v21)
      {
        if (v21 >= *(v19 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:

          goto LABEL_41;
        }

        if (v21 >= *(v16 + 16))
        {
          goto LABEL_50;
        }

        v23 = *(v18 + 8 * v21);

        v24 = sub_1BF9B4B58();

        if (v21 >= *(v16 + 16))
        {
          goto LABEL_51;
        }

        if (v24 <= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        *(v18 + 8 * v21) = v25;
        v22 += 16;
        ++v21;
      }

      v15 = v68;
      if (v17 != v69)
      {
        continue;
      }

      break;
    }

    v26 = *(v68 + 16);
    v27 = v67;
    if (v26)
    {
      v74 = MEMORY[0x1E69E7CC0];
      sub_1BF8D01C0(0, v26, 0);
      v28 = 0;
      v20 = v74;
      v29 = v27 - 1;
      v65 = v26;
      v71 = v16;
      while (!__OFADD__(v28, 1))
      {
        v67 = v28 + 1;
        v69 = v20;
        v30 = *(v70 + 8 * v28);
        v72 = 0;
        v73 = 0xE000000000000000;
        v31 = *(v30 + 16);

        v32 = 0;
        v33 = (v30 + 40);
        while (v31 != v32)
        {
          if (v32 >= *(v30 + 16))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v35 = *(v33 - 1);
          v34 = *v33;

          MEMORY[0x1BFB5DE90](v35, v34);
          if (v32 < v29)
          {
            if (v32 >= *(v16 + 16))
            {
              goto LABEL_54;
            }

            v36 = v18;
            v37 = *(v18 + 8 * v32);
            v38 = sub_1BF9B4B58();

            if (__OFSUB__(v37, v38))
            {
              goto LABEL_55;
            }

            if (__OFADD__(v37 - v38, 2))
            {
              goto LABEL_56;
            }

            v39 = sub_1BF9B4C28();
            MEMORY[0x1BFB5DE90](v39);
            v18 = v36;
            v16 = v71;
          }

          v33 += 2;
          ++v32;
        }

        v40 = v72;
        v41 = v73;
        v20 = v69;
        v74 = v69;
        v43 = *(v69 + 16);
        v42 = *(v69 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1BF8D01C0(v42 > 1, v43 + 1, 1);
          v20 = v74;
        }

        *(v20 + 16) = v43 + 1;
        v44 = v20 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v28 = v67;
        if (v67 == v65)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_58;
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v45 = *(v66 + 16);
  if (!v45)
  {
    goto LABEL_60;
  }

  v46 = 0;
  v47 = 0;
  v48 = v66 + 40;
  v49 = v45 - 1;
  do
  {
    if (v49 == v47)
    {
      goto LABEL_48;
    }

    v50 = *(*v48 + 16);
    v51 = *(*(v48 - 8) + 16);
    ++v47;
    v46 += 16;
    v48 += 8;
  }

  while (v50 == v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BF9C27D0;
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD000000000000028, 0x80000001BF9CCD10);
  v74 = v47 - 1;
  OUTLINED_FUNCTION_24();
  v53 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v53);

  MEMORY[0x1BFB5DE90](0x20646E6120, 0xE500000000000000);
  v74 = v47;
  OUTLINED_FUNCTION_24();
  v54 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v54);

  MEMORY[0x1BFB5DE90](0xD000000000000026, 0x80000001BF9CCD40);
  v55 = v73;
  *(v52 + 32) = v72;
  *(v52 + 40) = v55;
  v74 = v47 - 1;
  OUTLINED_FUNCTION_24();
  v56 = sub_1BF9B5668();
  OUTLINED_FUNCTION_44_6(v56, v57);
  if (v47 > *(v20 + 16))
  {
    goto LABEL_61;
  }

  v58 = OUTLINED_FUNCTION_24();
  MEMORY[0x1BFB5DE90](v58);

  v59 = v73;
  *(v52 + 48) = v72;
  *(v52 + 56) = v59;
  v74 = v47;
  v60 = sub_1BF9B5668();
  OUTLINED_FUNCTION_44_6(v60, v61);
  if (v47 < *(v20 + 16))
  {

    v62 = OUTLINED_FUNCTION_24();
    MEMORY[0x1BFB5DE90](v62);

    v63 = v73;
    *(v52 + 64) = v72;
    *(v52 + 72) = v63;
LABEL_48:

    OUTLINED_FUNCTION_64();
    return;
  }

LABEL_62:
  __break(1u);
}

uint64_t sub_1BF952628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (*(*a1 + 16) > *a2)
  {
    v7 = *(*a1 + 16);
  }

  *a2 = v7;
  v9[2] = a3;
  v9[3] = a4;
  result = sub_1BF924688(sub_1BF9547A8, v9, v6);
  *a5 = result;
  return result;
}

uint64_t Logger.getDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, unint64_t a2)
{
  Logger.toTable<A>(columnNames:elements:maxColumnWidth:transform:)();
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {

    v5 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1BFB5DE90](v5);
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  OUTLINED_FUNCTION_13_9();
  v7 = sub_1BF9B4A78();
  v9 = v8;

  MEMORY[0x1BFB5DE90](v7, v9);

  return v6;
}

void Logger.getDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_35_6();
  v37 = v36;
  v39 = v38;

  swift_getTupleTypeMetadata2();
  sub_1BF9B49D8();
  OUTLINED_FUNCTION_10_12();
  swift_getWitnessTable();
  sub_1BF9B4E18();
  Logger.toTable<A>(columnNames:elements:maxColumnWidth:transform:)();

  v40 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {

    v41 = OUTLINED_FUNCTION_15_15();
    MEMORY[0x1BFB5DE90](v41);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  OUTLINED_FUNCTION_15_15();
  v42 = sub_1BF9B4A78();
  v44 = v43;

  MEMORY[0x1BFB5DE90](v42, v44);

  OUTLINED_FUNCTION_36_7();
}

void sub_1BF952A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void))
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_19_12(v21, v22, v23, v24, v25, v26, v27, v28);
  sub_1BF9B47C8();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v29);
  v31 = OUTLINED_FUNCTION_12_12(v30, v47);
  v32(v31);

  v33 = sub_1BF9B47A8();
  v34 = a21();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_109();
    v48 = OUTLINED_FUNCTION_35_4();
    v49 = v48;
    *v35 = 136315138;
    v36 = OUTLINED_FUNCTION_20_12();
    v37 = v34;
    v39 = Logger.getDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)(v36, v38);
    v41 = v40;
    v42 = OUTLINED_FUNCTION_14_9();
    v43(v42);
    v44 = sub_1BF8DE810(v39, v41, &v49);

    *(v35 + 4) = v44;
    _os_log_impl(&dword_1BF8B8000, v33, v37, "%s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    v45 = OUTLINED_FUNCTION_14_9();
    v46(v45);
  }

  OUTLINED_FUNCTION_64();
}

uint64_t Logger.toAsyncTable<A>(columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = OUTLINED_FUNCTION_4_0();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BF952E64()
{
  *(v0 + 16) = *(v0 + 40);
  sub_1BF9B4E08();
  OUTLINED_FUNCTION_11_14();
  swift_getWitnessTable();
  if (sub_1BF9B5008())
  {
    v1 = *(v0 + 8);

    return v1(&unk_1F3EF5F00);
  }

  else
  {
    v3 = *(v0 + 72);
    *(v0 + 24) = *(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    v5 = *(v0 + 56);
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AF0, &qword_1BF9C27E0);
    swift_getWitnessTable();
    *v6 = v0;
    v6[1] = sub_1BF953004;

    return Sequence.asyncMap<A>(_:)();
  }
}

void sub_1BF953004(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    *(v5 + 104) = a1;

    MEMORY[0x1EEE6DFA0](sub_1BF95313C, 0, 0);
  }
}

uint64_t sub_1BF95313C()
{
  OUTLINED_FUNCTION_7();
  Logger.toTable<A>(columnNames:elements:maxColumnWidth:rows:)();

  v0 = OUTLINED_FUNCTION_5();

  return v1(v0);
}

uint64_t sub_1BF9531B0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1BF9532A8;

  return v7(a2);
}

uint64_t sub_1BF9532A8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t Logger.getAsyncDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_45();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v0[5] = v13;
  v0[6] = v14;
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = sub_1BF953488;

  return Logger.toAsyncTable<A>(columnNames:elements:maxColumnWidth:transform:)(v12, v10, v8, v6, v4, v2);
}

uint64_t sub_1BF953488()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF953568()
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_33_6();
  if (v3)
  {
    v19 = v2;
    v20 = v1;

    v4 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1BFB5DE90](v4);
    v6 = v19;
    v5 = v20;
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  *(v0 + 32) = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  OUTLINED_FUNCTION_15_15();
  v7 = sub_1BF9B4A78();
  v9 = v8;

  MEMORY[0x1BFB5DE90](v7, v9);

  OUTLINED_FUNCTION_100();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, v6, v5);
}

uint64_t Logger.getAsyncDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v15;
  v9[16] = v8;
  v9[13] = a8;
  v9[14] = v14;
  v9[11] = a6;
  v9[12] = a7;
  v9[9] = a4;
  v9[10] = a5;
  v9[7] = a2;
  v9[8] = a3;
  v9[6] = a1;
  v10 = OUTLINED_FUNCTION_4_0();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF9536AC()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 72);

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1BF9B49D8();
  OUTLINED_FUNCTION_10_12();
  swift_getWitnessTable();
  v11 = *(v0 + 88);
  v5 = sub_1BF9B4E18();
  *(v0 + 136) = v5;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v1;
  *(v6 + 40) = v11;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1BF953820;
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  return Logger.toAsyncTable<A>(columnNames:elements:maxColumnWidth:transform:)(v9, v5, v8, &unk_1BF9C2818, v6, TupleTypeMetadata2);
}

uint64_t sub_1BF953820()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF953938()
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_33_6();
  if (v3)
  {
    v19 = v2;
    v20 = v1;

    v4 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1BFB5DE90](v4);
    v6 = v19;
    v5 = v20;
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  *(v0 + 40) = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  OUTLINED_FUNCTION_15_15();
  v7 = sub_1BF9B4A78();
  v9 = v8;

  MEMORY[0x1BFB5DE90](v7, v9);

  OUTLINED_FUNCTION_100();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, v6, v5);
}

uint64_t sub_1BF953A38(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1BF8EFA40;

  return v11(a1, a1 + v8);
}

uint64_t Logger.asyncDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_1_19();
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32_8(v2);
  *v3 = v4;
  v3[1] = sub_1BF953C20;
  OUTLINED_FUNCTION_0_18();

  return Logger.getAsyncDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)();
}

uint64_t sub_1BF953C20()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  OUTLINED_FUNCTION_5_14(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v8 + 56) = v7;

  v9 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t Logger.asyncDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_19();
  *(v9 + 40) = v8;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32_8(v10);
  *v11 = v12;
  v11[1] = sub_1BF953DBC;
  v13 = OUTLINED_FUNCTION_0_18();

  return Logger.getAsyncDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(v13, v14, v15, v16, v17, v18, a7, a8);
}

uint64_t sub_1BF953DBC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  OUTLINED_FUNCTION_5_14(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v8 + 56) = v7;

  v9 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF953E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();

  v10 = sub_1BF9B47A8();
  v11 = sub_1BF9B5038();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_109();
    a10 = OUTLINED_FUNCTION_35_4();
    v13 = OUTLINED_FUNCTION_43_6(4.8149e-34, a10);

    *(v12 + 4) = v13;
    OUTLINED_FUNCTION_42_7(&dword_1BF8B8000, v14, v15, "%s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  OUTLINED_FUNCTION_100();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t Logger.asyncInfoTable<A>(title:columnNames:elements:maxColumnWidth:transform:)()
{
  OUTLINED_FUNCTION_1_19();
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32_8(v2);
  *v3 = v4;
  v3[1] = sub_1BF954064;
  OUTLINED_FUNCTION_0_18();

  return Logger.getAsyncDebugTable<A>(title:columnNames:elements:maxColumnWidth:transform:)();
}

uint64_t sub_1BF954064()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  OUTLINED_FUNCTION_5_14(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v8 + 56) = v7;

  v9 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t Logger.asyncInfoTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_19();
  *(v9 + 40) = v8;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32_8(v10);
  *v11 = v12;
  v11[1] = sub_1BF954200;
  v13 = OUTLINED_FUNCTION_0_18();

  return Logger.getAsyncDebugTable<A, B>(title:columnNames:elements:maxColumnWidth:transform:)(v13, v14, v15, v16, v17, v18, a7, a8);
}

uint64_t sub_1BF954200()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_19();
  *v2 = v1;
  OUTLINED_FUNCTION_5_14(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v8 + 56) = v7;

  v9 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF9542DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();

  v10 = sub_1BF9B47A8();
  v11 = sub_1BF9B5028();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_109();
    a10 = OUTLINED_FUNCTION_35_4();
    v13 = OUTLINED_FUNCTION_43_6(4.8149e-34, a10);

    *(v12 + 4) = v13;
    OUTLINED_FUNCTION_42_7(&dword_1BF8B8000, v14, v15, "%s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  OUTLINED_FUNCTION_100();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1BF9543E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = *v4;
  v11 = *v4 + 32;
  v12 = v11 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8AF0, &qword_1BF9C27E0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v10 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BF958C60((v11 + 8 * a2), v15 - a2, (v12 + 8 * a3));
  v16 = *(v10 + 16);
  v13 = __OFADD__(v16, v14);
  v17 = v16 + v14;
  if (v13)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v10 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    v18 = v10 + 8 * v9;
    *(v18 + 32) = a4;
    if (v18 + 40 < (v12 + 8 * a3))
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF954554(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF8F0EF8;

  return sub_1BF9531B0(a1, a2, v6);
}

uint64_t sub_1BF954618()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1BF8EFA40;

  return sub_1BF953A38(v3, v6, v7, v4, v5);
}

_BYTE *sub_1BF9546FC(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF9547A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF9512EC(a1, *(v2 + 24));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1BF9547E8()
{
  result = qword_1EDBF5668;
  if (!qword_1EDBF5668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBF5668);
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

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6E7F8](a1, a2, v2, v5, v4, v3, v6);
}

uint64_t OUTLINED_FUNCTION_38_6(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 - 96);
  v7 = *(v4 - 88);
  v8 = *(v4 - 68);

  return MEMORY[0x1EEE6E7F8](a1, a2, v2, v6, v7, v8, v3);
}

void OUTLINED_FUNCTION_44_6(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;

  JUMPOUT(0x1BFB5DE90);
}

uint64_t DialogParameterTransformer.__allocating_init(delegate:dialogProvider:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BF8C2C9C(a1, v4 + 16);
  sub_1BF8C2C9C(a2, v4 + 56);
  return v4;
}

uint64_t DialogParameterTransformer.init(delegate:dialogProvider:)(__int128 *a1, __int128 *a2)
{
  sub_1BF8C2C9C(a1, v2 + 16);
  sub_1BF8C2C9C(a2, v2 + 56);
  return v2;
}

uint64_t DialogParameterTransformer.globals.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

_OWORD *DialogParameterTransformer.getParameters()()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 16))(v2, v3);

  v5 = sub_1BF954BB4(v4, v1);

  return v5;
}

uint64_t DialogParameterTransformer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t DialogParameterTransformer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

_OWORD *sub_1BF954BB4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9770, &qword_1BF9C2940);
  result = sub_1BF9B5458();
  v4 = result;
  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v28 = result + 4;
  v26 = a1;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(a1 + 56);
      v16 = (*(a1 + 48) + 16 * v14);
      v17 = v16[1];
      v37 = *v16;
      sub_1BF8C187C(v15 + 32 * v14, v36);
      sub_1BF8C187C(v36, v32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CB8, &qword_1BF9C2948);
      if (swift_dynamicCast())
      {
        sub_1BF8C2C9C(v30, v33);
        v19 = v34;
        v18 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v20 = *(v18 + 8);
        v21 = v18;
        a1 = v26;
        v20(v30, a2 + 56, v19, v21);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {
        v31 = 0;
        memset(v30, 0, sizeof(v30));
        sub_1BF954E90(v30);
        sub_1BF8C187C(v36, v30);
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (v4[6] + 16 * v14);
      *v22 = v37;
      v22[1] = v17;
      result = sub_1BF8C192C(v30, (v4[7] + 32 * v14));
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      v9 = v29;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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

        return v4;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF954E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CC0, &qword_1BF9C2950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF954EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v32 = MEMORY[0x1E69E7CC0];
    v30 = *(a1 + 16);
    sub_1BF8D06E8(0, v1, 0);
    v3 = sub_1BF95FA38();
    v5 = v30;
    v4 = a1;
    v7 = v6;
    v8 = 0;
    v9 = a1 + 64;
    v10 = v6;
    v29 = v6;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v4 + 32))
    {
      v11 = v3 >> 6;
      if ((*(v9 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v4 + 36) != v7)
      {
        goto LABEL_23;
      }

      v12 = *(v4 + 48) + 24 * v3;
      v13 = *v12;
      v14 = *(*(v4 + 56) + 8 * v3);
      v15 = *(v12 + 8);
      v17 = *(v32 + 16);
      v16 = *(v32 + 24);
      if (v17 >= v16 >> 1)
      {
        v28 = v2;
        v27 = v15;
        sub_1BF8D06E8(v16 > 1, v17 + 1, 1);
        v15 = v27;
        v2 = v28;
        v10 = v29;
        v9 = a1 + 64;
        v5 = v30;
        v4 = a1;
      }

      *(v32 + 16) = v17 + 1;
      v18 = v32 + 32 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      *(v18 + 56) = v14;
      v19 = 1 << *(v4 + 32);
      if (v3 >= v19)
      {
        goto LABEL_24;
      }

      v20 = *(v9 + 8 * v11);
      if ((v20 & (1 << v3)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v4 + 36) != v7)
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v3 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v3 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (a1 + 72 + 8 * v11);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_1BF90E758(v3, v7, v2 & 1);
            v10 = v29;
            v9 = a1 + 64;
            v5 = v30;
            v4 = a1;
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_1BF90E758(v3, v7, v2 & 1);
        v10 = v29;
        v9 = a1 + 64;
        v5 = v30;
        v4 = a1;
      }

LABEL_19:
      v2 = 0;
      ++v8;
      v3 = v19;
      v7 = v10;
      if (v8 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1BF955170(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1BF9B5478();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t static UserDefaultsProviders.getSuggestionsUserDefaultsProvider()()
{
  if (qword_1EDBF5838 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BF955274()
{
  type metadata accessor for UserDefaultsDomainProvider();
  v0 = swift_allocObject();
  v0[2] = 0xD00000000000001ELL;
  v0[3] = 0x80000001BF9CCA90;
  v0[4] = 15;
  type metadata accessor for SuggestionsUserDefaultsProvider();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EDBF56F8 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for UserDefaultsProviders(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF955548()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF9555A4()
{
  v2 = v0;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v3 = OUTLINED_FUNCTION_25_9();
  v4 = OUTLINED_FUNCTION_52_4();
  v6 = [v4 v5];

  if (v6)
  {
    v7 = sub_1BF9B4968();

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v8 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v8, qword_1EDBF5570);

    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5038();

    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_109();
      v11 = OUTLINED_FUNCTION_39_0();
      v28 = v11;
      *v2 = 136315138;
      v12 = sub_1BF9B4978();
      v14 = sub_1BF8DE810(v12, v13, &v28);

      *(v2 + 4) = v14;
      OUTLINED_FUNCTION_108_1(&dword_1BF8B8000, v15, v16, "getAllUserDefaults - %s");
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_31_11();
    }

    return v7;
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v18 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v18, qword_1EDBF5570);

    v19 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      v28 = OUTLINED_FUNCTION_39_0();
      *v2 = 136315138;
      v20 = OUTLINED_FUNCTION_36();
      *(v2 + 4) = sub_1BF8DE810(v20, v21, v22);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }

    return sub_1BF9B4988();
  }
}

void sub_1BF955838()
{
  v2 = v0;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v3 = OUTLINED_FUNCTION_25_9();
  v4 = OUTLINED_FUNCTION_52_4();
  v6 = [v4 v5];

  if (!v6)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v29 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v29, qword_1EDBF5570);

    v30 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      *&v53 = OUTLINED_FUNCTION_39_0();
      *v2 = 136315138;
      v31 = OUTLINED_FUNCTION_36();
      *(v2 + 4) = sub_1BF8DE810(v31, v32, v33);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }

    sub_1BF95DD24();
    OUTLINED_FUNCTION_110_0();

    sub_1BF9B4988();
    return;
  }

  OUTLINED_FUNCTION_82_2(v7, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);

  OUTLINED_FUNCTION_81_1(16, 0x80000001BF9CCFE0, &v53);

  if (!v54[1])
  {
    sub_1BF8DFBF0(&v53, &qword_1EBDE9208, &unk_1BF9C2A50);
LABEL_25:
    if (qword_1EDBF5568 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CF8, &unk_1BF9C2AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v9 = 1 << *(v49 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v49 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_11:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (*(v49 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    sub_1BF8C187C(*(v49 + 56) + 32 * v16, v54);
    *&v53 = v18;
    *(&v53 + 1) = v19;

    v20 = OUTLINED_FUNCTION_37_6();
    sub_1BF955CC4(v20, v21, v22, v23);
    sub_1BF8DFBF0(&v53, &unk_1EBDE9600, &qword_1BF9C9160);
    if (v49 != 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8DE104();
        v48 = v27;
      }

      v24 = *(v48 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v48 + 24) >> 1)
      {
        sub_1BF8DE104();
        v25 = v24 + 1;
        v48 = v28;
      }

      *(v48 + 16) = v25;
      v26 = v48 + 32 * v24;
      *(v26 + 32) = v49;
      *(v26 + 40) = v50;
      *(v26 + 48) = v51;
      *(v26 + 56) = v52;
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      sub_1BF955170(v48, &qword_1EBDE9D00, &qword_1BF9C2AB0, sub_1BF95B210);
      goto LABEL_30;
    }

    v11 = *(v49 + 64 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
LABEL_26:
  v40 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v40, qword_1EDBF5570);
  v41 = sub_1BF9B47A8();
  v42 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_55_5(v42))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v43, v44, v45, v46, v47, 2u);
    OUTLINED_FUNCTION_54();
  }

  sub_1BF95DD24();
  sub_1BF9B4988();
LABEL_30:
  OUTLINED_FUNCTION_110_0();
}

void sub_1BF955CC4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_1BF955FE0(&v26);
  if (v27)
  {
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF9B47C8();
    __swift_project_value_buffer(v8, qword_1EDBF5570);

    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5048();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v26 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1BF8DE810(a1, a2, &v26);
    _os_log_impl(&dword_1BF8B8000, v9, v10, "Invalid OS version '%s'", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFB5F320](v12, -1, -1);
    v13 = v11;
  }

  else
  {
    v23 = v26;
    sub_1BF8C187C(a3, &v26);
    if (swift_dynamicCast())
    {
      v14 = v24[0];
      *a4 = 0;
      *(a4 + 8) = v23;
      *(a4 + 24) = v14;
      return;
    }

    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v15 = sub_1BF9B47C8();
    __swift_project_value_buffer(v15, qword_1EDBF5570);
    sub_1BF8C187C(a3, &v26);
    v9 = sub_1BF9B47A8();
    v16 = sub_1BF9B5048();
    if (!os_log_type_enabled(v9, v16))
    {

      __swift_destroy_boxed_opaque_existential_1(&v26);
      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    sub_1BF8C187C(&v26, v24);
    v19 = sub_1BF9B4B08();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v22 = sub_1BF8DE810(v19, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1BF8B8000, v9, v16, "Invalid timestamp '%s'", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFB5F320](v18, -1, -1);
    v13 = v17;
  }

  MEMORY[0x1BFB5F320](v13, -1, -1);
LABEL_13:

LABEL_14:
  *a4 = 6;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
}

uint64_t sub_1BF955FE0@<X0>(uint64_t a1@<X8>)
{
  sub_1BF904C28();
  v2 = sub_1BF9B51A8();

  if (v2[2] != 2 || !((v2[5] ^ v2[4]) >> 14))
  {
    goto LABEL_7;
  }

  v4 = v2[6];
  v3 = v2[7];
  v5 = OUTLINED_FUNCTION_37_6();
  v7 = sub_1BF95DD78(v5, v6, v4, v3, 10);
  if ((v8 & 0x100) != 0)
  {

    v10 = OUTLINED_FUNCTION_37_6();
    v9 = sub_1BF95D2D4(v10, v11, v4, v3, 10);
    v13 = v12;

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_7;
    }

    v9 = v7;
  }

  if (v2[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = v2[8];
  v16 = v2[9];

  if (!((v16 ^ v15) >> 14))
  {
LABEL_7:

    goto LABEL_8;
  }

  v17 = OUTLINED_FUNCTION_88_1();
  v22 = sub_1BF95DD78(v17, v18, v19, v20, v21);
  if ((v23 & 0x100) != 0)
  {
    v24 = OUTLINED_FUNCTION_88_1();
    v22 = sub_1BF95D2D4(v24, v25, v26, v27, v28);
  }

  v29 = v22;
  v30 = v23;

  if ((v30 & 1) == 0)
  {
    *a1 = v9;
    *(a1 + 8) = v29;
    *(a1 + 16) = 0;
    return result;
  }

LABEL_8:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

void sub_1BF956158(unint64_t a1)
{
  v1 = a1;
  sub_1BF954EF8(a1);
  v3 = v2;
  if (qword_1EDBF5568 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v4 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v4, qword_1EDBF5570);
    v5 = sub_1BF9B47A8();
    v6 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_95(v6))
    {
      v7 = OUTLINED_FUNCTION_109();
      v8 = OUTLINED_FUNCTION_35_4();
      *&v52 = v8;
      *v7 = 136315138;

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CD0, &qword_1BF9C2A68);
      v10 = MEMORY[0x1BFB5E030](v3, v9);
      v12 = v11;
      v13 = v3;

      v14 = sub_1BF8DE810(v10, v12, &v52);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_1BF8B8000, v5, v6, "Persisting %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    else
    {
      v13 = v3;
    }

    v15 = *(v1 + 16);

    if (v15 < 0x10)
    {
      v25 = v13;
      goto LABEL_23;
    }

    v16 = v13;
    v1 = v13[2];
    v17 = MEMORY[0x1E69E7CC0];
    if (v1)
    {
      *&v52 = MEMORY[0x1E69E7CC0];

      sub_1BF8D06E8(0, v1, 0);
      v3 = 0;
      v17 = v52;
      v18 = v13 + 7;
      while (v3 < v16[2])
      {
        v19 = *(v18 - 24);
        v20 = *(v18 - 1);
        v21 = *v18;
        *&v52 = v17;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          v50 = v20;
          sub_1BF8D06E8(v22 > 1, v23 + 1, 1);
          v20 = v50;
          v17 = v52;
        }

        *(v17 + 16) = v23 + 1;
        v24 = v17 + 32 * v23;
        *(v24 + 32) = v19;
        v3 = (v3 + 1);
        *(v24 + 40) = v20;
        *(v24 + 56) = v21;
        v18 += 4;
        if (v1 == v3)
        {

          goto LABEL_14;
        }
      }

      goto LABEL_32;
    }

LABEL_14:
    *&v52 = v17;

    sub_1BF95A6C0(&v52);

    v26 = sub_1BF956718(0, 15, v52);
    v1 = v27;
    v29 = v28;
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      goto LABEL_15;
    }

    sub_1BF9B5708();
    swift_unknownObjectRetain_n();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      swift_unknownObjectRelease();
      v33 = MEMORY[0x1E69E7CC0];
    }

    v34 = *(v33 + 16);

    if (__OFSUB__(v31 >> 1, v29))
    {
      __break(1u);
LABEL_35:
      swift_unknownObjectRelease_n();
LABEL_15:
      sub_1BF959104(v26, v1, v29, v31);
      v25 = v32;

      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    if (v34 != (v31 >> 1) - v29)
    {
      goto LABEL_35;
    }

    v25 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v25)
    {
      swift_unknownObjectRelease();
      v25 = MEMORY[0x1E69E7CC0];
    }

LABEL_23:
    v35 = *(v25 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (!v35)
    {
      break;
    }

    *&v51[0] = MEMORY[0x1E69E7CC0];

    sub_1BF8D06C8(0, v35, 0);
    v37 = 0;
    v36 = *&v51[0];
    v3 = (v25 + 56);
    while (v37 < *(v25 + 16))
    {
      v38 = *(v3 - 1);
      v39 = *v3;
      v54 = *(v3 - 2);
      *&v52 = sub_1BF9B5668();
      *(&v52 + 1) = v40;
      MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
      v54 = v38;
      v41 = sub_1BF9B5668();
      MEMORY[0x1BFB5DE90](v41);

      v42 = v52;
      *&v51[0] = v36;
      v1 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v1 >= v43 >> 1)
      {
        sub_1BF8D06C8(v43 > 1, v1 + 1, 1);
        v36 = *&v51[0];
      }

      ++v37;
      *(v36 + 16) = v1 + 1;
      v44 = v36 + 24 * v1;
      *(v44 + 32) = v42;
      *(v44 + 48) = v39;
      v3 += 4;
      if (v35 == v37)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

LABEL_30:
  v45 = sub_1BF955170(v36, &qword_1EBDE9CD8, &unk_1BF9C2A80, sub_1BF95B3D4);
  v46 = sub_1BF9555A4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CC8, &qword_1BF9C2A60);
  *&v52 = v45;
  OUTLINED_FUNCTION_113_0(&v52, v51);
  v54 = v46;
  sub_1BF9363E4(v51, 0xD000000000000010, 0x80000001BF9CCFE0);
  v47 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v48 = sub_1BF9B4958();

  v49 = sub_1BF9B4A98();
  [v47 setPersistentDomain:v48 forName:v49];
}

unint64_t sub_1BF956718(unint64_t result, uint64_t a2, uint64_t a3)
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

void sub_1BF956784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v24;
  a22 = v25;
  v26 = v22;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v27 = OUTLINED_FUNCTION_25_9();
  v28 = OUTLINED_FUNCTION_52_4();
  v30 = [v28 v29];

  if (v30)
  {
    v33 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2(v31, MEMORY[0x1E69E6158], v32, MEMORY[0x1E69E6168]);

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(32, v34, v35);

    if (a14)
    {
      if (OUTLINED_FUNCTION_56_5(&a10, v36, v37, MEMORY[0x1E69E63B0], v38, v39))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v51 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v51, qword_1EDBF5570);
    v52 = sub_1BF9B47A8();
    v53 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v53))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v33 + 4) = sub_1BF8DE810(0xD000000000000020, v54, v55);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v40 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v40, qword_1EDBF5570);

    v41 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_62_5();
      *(v26 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v42, v43, v44, v45);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

void sub_1BF9569B0(double a1)
{
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v2 = sub_1BF9B47C8();
  __swift_project_value_buffer(v2, qword_1EDBF5570);
  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_95(v4))
  {
    v5 = OUTLINED_FUNCTION_109();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    OUTLINED_FUNCTION_73_2(&dword_1BF8B8000, v6, v4, "setting new bookmark value as %f");
    OUTLINED_FUNCTION_87();
  }

  sub_1BF9555A4();
  v21 = MEMORY[0x1E69E63B0];
  v20[0] = a1;
  OUTLINED_FUNCTION_113_0(v20, v19);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v7, 0xD000000000000020, 0x80000001BF9CCFB0);
  v8 = sub_1BF9B47A8();
  v9 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_95(v9))
  {
    v10 = OUTLINED_FUNCTION_109();
    *&v20[0] = OUTLINED_FUNCTION_35_4();
    *v10 = 136315138;

    sub_1BF9B4978();

    v11 = OUTLINED_FUNCTION_72_3();
    v14 = sub_1BF8DE810(v11, v12, v13);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_73_2(&dword_1BF8B8000, v15, v9, "attempting to save allValues - %s");
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_87();
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];

  v17 = sub_1BF9B4958();

  v18 = sub_1BF9B4A98();
  [v16 setPersistentDomain:v17 forName:v18];
}

void sub_1BF956C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_111_0();
  a24 = v27;
  a25 = v28;
  v29 = v25;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v30 = OUTLINED_FUNCTION_25_9();
  v31 = OUTLINED_FUNCTION_52_4();
  v33 = [v31 v32];

  if (v33)
  {
    v36 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2(v34, MEMORY[0x1E69E6158], v35, MEMORY[0x1E69E6168]);

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(20, v37, v38);

    if (a17)
    {
      if (OUTLINED_FUNCTION_56_5(&a13, v39, v40, MEMORY[0x1E69E6370], v41, v42))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a14, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v54 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v54, qword_1EDBF5570);
    v55 = sub_1BF9B47A8();
    v56 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v56))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v36 + 4) = sub_1BF8DE810(0xD000000000000014, v57, v58);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v43 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v43, qword_1EDBF5570);

    v44 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_62_5();
      *(v29 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v45, v46, v47, v48);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

void sub_1BF956E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_111_0();
  a24 = v27;
  a25 = v28;
  v29 = v25;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v30 = OUTLINED_FUNCTION_25_9();
  v31 = OUTLINED_FUNCTION_52_4();
  v33 = [v31 v32];

  if (!v33)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v38 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v38, qword_1EDBF5570);

    v39 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (!OUTLINED_FUNCTION_75_3())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_62_5();
    *(v29 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v40, v41, v42, v43);
    OUTLINED_FUNCTION_20_13();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    OUTLINED_FUNCTION_14_10();
    goto LABEL_14;
  }

  v34 = sub_1BF9B4968();

  v35 = OUTLINED_FUNCTION_88();
  sub_1BF925088(v35, v36, v34, v37);

  if (a17)
  {
    if (swift_dynamicCast())
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1BF8DFBF0(&a14, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v49 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v49, qword_1EDBF5570);
  v39 = sub_1BF9B47A8();
  v50 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_95(v50))
  {
    v51 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_62_5();
    *v51 = 136315138;
    v52 = OUTLINED_FUNCTION_88();
    *(v51 + 4) = sub_1BF8DE810(v52, v53, v54);
    OUTLINED_FUNCTION_73_2(&dword_1BF8B8000, v55, v50, "'%s' is not set or cannot be converted to BOOL value. Returning false by default");
    OUTLINED_FUNCTION_14_10();
LABEL_14:
    OUTLINED_FUNCTION_87();
  }

LABEL_15:

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

void sub_1BF9570A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v24;
  a22 = v25;
  v26 = v22;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v27 = OUTLINED_FUNCTION_25_9();
  v28 = OUTLINED_FUNCTION_52_4();
  v30 = [v28 v29];

  if (v30)
  {
    v33 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2(v31, MEMORY[0x1E69E6158], v32, MEMORY[0x1E69E6168]);

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(25, v34, v35);

    if (a14)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CC8, &qword_1BF9C2A60);
      if (OUTLINED_FUNCTION_56_5(&a10, v37, v38, v36, v39, v40))
      {
LABEL_18:
        OUTLINED_FUNCTION_105_1();
        return;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v53 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v53, qword_1EDBF5570);
    v54 = sub_1BF9B47A8();
    v55 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v55))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v33 + 4) = sub_1BF8DE810(0xD000000000000019, v56, v57);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }

    sub_1BF9B4988();
    goto LABEL_18;
  }

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v41 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v41, qword_1EDBF5570);

  v42 = sub_1BF9B47A8();
  sub_1BF9B5038();
  OUTLINED_FUNCTION_76_3();
  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_62_5();
    *(v26 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v43, v44, v45, v46);
    OUTLINED_FUNCTION_20_13();
    _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_31_11();
  }

  OUTLINED_FUNCTION_105_1();

  sub_1BF9B4988();
}

void sub_1BF957344(uint64_t a1)
{
  sub_1BF9555A4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CC8, &qword_1BF9C2A60);
  *&v7 = a1;
  OUTLINED_FUNCTION_113_0(&v7, v6);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v2, 0xD000000000000019, 0x80000001BF9CCF70);
  v3 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v4 = sub_1BF9B4958();

  v5 = sub_1BF9B4A98();
  OUTLINED_FUNCTION_92_1(v5, sel_setPersistentDomain_forName_);
}

void sub_1BF95743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v24;
  a22 = v25;
  v26 = v22;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v27 = OUTLINED_FUNCTION_25_9();
  v28 = OUTLINED_FUNCTION_52_4();
  v30 = [v28 v29];

  if (v30)
  {
    v33 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2(v31, MEMORY[0x1E69E6158], v32, MEMORY[0x1E69E6168]);

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(19, v34, v35);

    if (a14)
    {
      if (OUTLINED_FUNCTION_56_5(&a9, v36, v37, MEMORY[0x1E69E6158], v38, v39))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v51 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v51, qword_1EDBF5570);
    v52 = sub_1BF9B47A8();
    v53 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v53))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v33 + 4) = sub_1BF8DE810(0xD000000000000013, v54, v55);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v40 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v40, qword_1EDBF5570);

    v41 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_62_5();
      *(v26 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v42, v43, v44, v45);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

void sub_1BF95766C(uint64_t a1, uint64_t a2)
{
  sub_1BF9555A4();
  v10 = MEMORY[0x1E69E6158];
  *&v9 = a1;
  *(&v9 + 1) = a2;
  OUTLINED_FUNCTION_113_0(&v9, v8);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v4, 0xD000000000000013, 0x80000001BF9CCEF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v6 = sub_1BF9B4958();

  v7 = sub_1BF9B4A98();
  OUTLINED_FUNCTION_92_1(v7, sel_setPersistentDomain_forName_);
}

void sub_1BF957760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_111_0();
  a24 = v26;
  a25 = v27;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v28 = OUTLINED_FUNCTION_25_9();
  v29 = OUTLINED_FUNCTION_52_4();
  v31 = [v29 v30];

  if (v31)
  {
    v34 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2(v32, MEMORY[0x1E69E6158], v33, MEMORY[0x1E69E6168]);

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(30, v35, v36);

    if (a17)
    {
      if (OUTLINED_FUNCTION_56_5(&a13, v37, v38, MEMORY[0x1E69E6370], v39, v40))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a14, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v53 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v53, qword_1EDBF5570);
    v54 = sub_1BF9B47A8();
    v55 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v55))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v34 + 4) = sub_1BF8DE810(0xD00000000000001ELL, v56, v57);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v41 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v41, qword_1EDBF5570);

    v42 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      v43 = swift_slowAlloc();
      swift_slowAlloc();
      OUTLINED_FUNCTION_62_5();
      *(v43 + 4) = OUTLINED_FUNCTION_29_6(4.8151e-34, v44, v45, v46, v47);
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_1BF8DE810(0xD00000000000001ELL, 0x80000001BF9CCF50, &a14);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_31_11();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

uint64_t sub_1BF957B74@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v29 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_22_0();
  v6 = sub_1BF9B4A98();
  v7 = [v5 persistentDomainForName_];

  if (v7)
  {
    v8 = MEMORY[0x1E69E7CA0];
    v9 = sub_1BF9B4968();

    sub_1BF925088(0xD000000000000012, 0x80000001BF9CCF10, v9, v29);

    if (v30)
    {
      v10 = sub_1BF9B44C8();
      v11 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v4, v11 ^ 1u, 1, v10);
      if (__swift_getEnumTagSinglePayload(v4, 1, v10) != 1)
      {
        return (*(*(v10 - 8) + 32))(a1, v4, v10);
      }
    }

    else
    {
      sub_1BF8DFBF0(v29, &qword_1EBDE9208, &unk_1BF9C2A50);
      v22 = sub_1BF9B44C8();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v22);
    }

    sub_1BF8DFBF0(v4, &qword_1EBDE9A50, &unk_1BF9C1478);
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v23 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v23, qword_1EDBF5570);
    v24 = sub_1BF9B47A8();
    v25 = sub_1BF9B5048();
    if (OUTLINED_FUNCTION_95(v25))
    {
      OUTLINED_FUNCTION_109();
      v26 = OUTLINED_FUNCTION_39_0();
      v29[0] = v26;
      *v8 = 136315138;
      *(v8 + 4) = sub_1BF8DE810(0xD000000000000013, 0x80000001BF9CCEF0, v29);
      OUTLINED_FUNCTION_108_1(&dword_1BF8B8000, v27, v28, "UserDefaults lastAppInstallDate.get: Value for '%s' is not set or cannot be converted to Date value. Returning Date(timeIntervalSinceReferenceDate: 0)");
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_31_11();
    }

    return sub_1BF9B4468();
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v13 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v13, qword_1EDBF5570);

    v14 = sub_1BF9B47A8();
    v15 = sub_1BF9B5038();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_109();
      v17 = OUTLINED_FUNCTION_35_4();
      v29[0] = v17;
      *v16 = 136315138;
      v18 = OUTLINED_FUNCTION_22_0();
      *(v16 + 4) = sub_1BF8DE810(v18, v19, v20);
      OUTLINED_FUNCTION_73_2(&dword_1BF8B8000, v21, v15, "UserDefaults lastAppInstallDate.get: No user defaults for '%s'.) Returning Date(timeIntervalSinceReferenceDate: 0)");
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    return sub_1BF9B4468();
  }
}

uint64_t sub_1BF957F54(uint64_t a1)
{
  sub_1BF9555A4();
  v2 = sub_1BF9B44C8();
  v15 = v2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v14);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v2);
  OUTLINED_FUNCTION_113_0(v14, v13);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v4, 0xD000000000000012, 0x80000001BF9CCF10);
  v5 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v6 = sub_1BF9B4958();

  v7 = sub_1BF9B4A98();
  v8 = OUTLINED_FUNCTION_52_4();
  [v8 v9];

  v10 = OUTLINED_FUNCTION_36();
  return v11(v10);
}

void sub_1BF9582F0(uint64_t a1)
{
  sub_1BF9555A4();
  v8 = MEMORY[0x1E69E6530];
  *&v7 = a1;
  OUTLINED_FUNCTION_113_0(&v7, v6);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v2, 0xD000000000000013, 0x80000001BF9CCED0);
  v3 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v4 = sub_1BF9B4958();

  v5 = sub_1BF9B4A98();
  OUTLINED_FUNCTION_92_1(v5, sel_setPersistentDomain_forName_);
}

uint64_t sub_1BF9583DC()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF95861C(uint64_t a1)
{
  v2 = sub_1BF9B44C8();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v2);
  sub_1BF957F54(v7);
  v8 = OUTLINED_FUNCTION_36();
  return v9(v8);
}

uint64_t sub_1BF958744()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t (*sub_1BF9587A8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = *(v1 + 16);
  sub_1BF955838();
  *a1 = v3;
  return sub_1BF9587F4;
}

uint64_t sub_1BF9588FC(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void sub_1BF9589C0(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_88();
    sub_1BF95766C(v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_88();
    sub_1BF95766C(v4, v5);
  }
}

void (*sub_1BF958A3C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1BF9B44C8();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  sub_1BF957B74(v7);
  return sub_1BF958B14;
}

void sub_1BF958B14(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = OUTLINED_FUNCTION_22_0();
    v8(v7);
    sub_1BF95861C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1BF95861C(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

char *sub_1BF958C3C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958C60(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958C80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958CA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958CC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

void sub_1BF958D00()
{
  OUTLINED_FUNCTION_98_0();
  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010), OUTLINED_FUNCTION_13(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      v5 = OUTLINED_FUNCTION_22_6();

      MEMORY[0x1EEE6BCF8](v5);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010);
    v6 = OUTLINED_FUNCTION_22_6();

    MEMORY[0x1EEE6BD00](v6);
  }
}

void sub_1BF958DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_98_0();
  if (v8 && (a4(0), OUTLINED_FUNCTION_13(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_22_6();

      MEMORY[0x1EEE6BCF8](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_22_6();

    MEMORY[0x1EEE6BD00](v11);
  }
}

char *sub_1BF958EB4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958EDC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958F04(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958F2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958F54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[272 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

void *sub_1BF958F7C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BC0, &qword_1BF9B86D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1BF959014(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void *sub_1BF95904C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF963C50(*(a1 + 16), 0);
  v4 = sub_1BF9641F4(&v6, v3 + 4, v1, a1);

  OUTLINED_FUNCTION_37_6();
  sub_1BF90D2E8();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1BF959104(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8980, &unk_1BF9C2A70);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 32);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 32 * a3), 32 * v5);
      return;
    }

    goto LABEL_10;
  }
}

void sub_1BF9591E0()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
    v7 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_10_0(v7);
    OUTLINED_FUNCTION_48_4(v8 / 16);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF9592B0()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_41_5();
  if (v2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B08, &unk_1BF9B8620);
    v9 = OUTLINED_FUNCTION_109_0(v8);
    OUTLINED_FUNCTION_50_5(v9);
    v9[2] = v3;
    v9[3] = 2 * (v10 / v4);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF9593B0()
{
  OUTLINED_FUNCTION_31_1();
  if (v6)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CB0, &unk_1BF9C2890);
    v9 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_10_0(v9);
    OUTLINED_FUNCTION_48_4(v10 / 32);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_37_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF9594B8()
{
  OUTLINED_FUNCTION_59_6();
  if (v6)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_77_3();
  if (v5)
  {
    OUTLINED_FUNCTION_94_1(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v15);
    OUTLINED_FUNCTION_60_3();
    v15[2] = v4;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[v4 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_72_3();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_72_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF9595A0()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_41_5();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8378, &qword_1BF9B85B0);
    v7 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v7);
    OUTLINED_FUNCTION_60_3();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v7 != v0 || &v10[2 * v3] <= v9)
    {
      memmove(v9, v10, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 2 * v3);
  }
}

void sub_1BF9596D0()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DE8, &qword_1BF9C2BD0);
    v8 = OUTLINED_FUNCTION_40_2(v7);
    OUTLINED_FUNCTION_1_3(v8);
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    OUTLINED_FUNCTION_66_3();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_84_1();
      v12 = OUTLINED_FUNCTION_37_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DF0, &qword_1BF9C2BD8);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF9597B4()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    OUTLINED_FUNCTION_94_1(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v2;
    v13[3] = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void sub_1BF959874()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_28_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_41_5();
  if (v2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
    v9 = OUTLINED_FUNCTION_109_0(v8);
    OUTLINED_FUNCTION_50_5(v9);
    v9[2] = v3;
    v9[3] = 2 * (v10 / v4);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 24 * v3);
  }
}

void sub_1BF959950()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DD0, &qword_1BF9C2BB0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_1BF959A20()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DD8, &qword_1BF9C2BB8);
    v8 = OUTLINED_FUNCTION_40_2(v7);
    OUTLINED_FUNCTION_1_3(v8);
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    OUTLINED_FUNCTION_66_3();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_84_1();
      v12 = OUTLINED_FUNCTION_37_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DE0, &unk_1BF9C2BC0);
    OUTLINED_FUNCTION_28_9();
  }
}

char *sub_1BF959AF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B30, &unk_1BF9B8650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_1BF959C28()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B10, &qword_1BF9C2B20);
    v8 = OUTLINED_FUNCTION_29_0(v7);
    OUTLINED_FUNCTION_1_3(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || &v10[56 * v2] <= v9)
    {
      memmove(v9, v10, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF959CFC()
{
  OUTLINED_FUNCTION_31_1();
  if (v6)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DC0, &qword_1BF9C2BA0);
    v4 = 72;
    v10 = OUTLINED_FUNCTION_29_0(v9);
    OUTLINED_FUNCTION_1_3(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    if (v3 != v0 || v5 + 72 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_37_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DC8, &qword_1BF9C2BA8);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF959DDC()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CE0, &qword_1BF9C2A90);
    v8 = OUTLINED_FUNCTION_40_2(v7);
    OUTLINED_FUNCTION_1_3(v8);
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    OUTLINED_FUNCTION_66_3();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_84_1();
      v12 = OUTLINED_FUNCTION_37_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CE8, &qword_1BF9C2A98);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF959EAC()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_41_5();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8980, &unk_1BF9C2A70);
    v7 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v7);
    OUTLINED_FUNCTION_60_3();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v3] <= v9)
    {
      memmove(v9, v10, 32 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 32 * v3);
  }
}

void sub_1BF959F78()
{
  OUTLINED_FUNCTION_31_1();
  if (v6)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DA0, &unk_1BF9C2B80);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_10_0(v9);
    OUTLINED_FUNCTION_48_4(v10 / 128);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    if (v3 != v0 || v5 + (v2 << 7) <= v4)
    {
      v12 = OUTLINED_FUNCTION_37_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DA8, &unk_1BF9C2CB0);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF95A064()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D28, &qword_1BF9C2AE8);
    v8 = OUTLINED_FUNCTION_40_2(v7);
    OUTLINED_FUNCTION_1_3(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || v10 + 24 * v2 <= v9)
    {
      OUTLINED_FUNCTION_84_1();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF95A130()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_41_5();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D68, &unk_1BF9C2B40);
    v7 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v7);
    OUTLINED_FUNCTION_60_3();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1BF95A1FC()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D78, &qword_1BF9C2B50);
    v8 = OUTLINED_FUNCTION_40_2(v7);
    OUTLINED_FUNCTION_1_3(v8);
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    OUTLINED_FUNCTION_66_3();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_84_1();
      v12 = OUTLINED_FUNCTION_37_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D80, &unk_1BF9C2B58);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF95A314()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8998, &unk_1BF9B84A0);
    v8 = OUTLINED_FUNCTION_29_0(v7);
    OUTLINED_FUNCTION_1_3(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || &v10[120 * v2] <= v9)
    {
      memmove(v9, v10, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF95A40C()
{
  OUTLINED_FUNCTION_59_6();
  if (v6)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_77_3();
  if (v5)
  {
    OUTLINED_FUNCTION_94_1(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_50_5(v15);
    v15[2] = v4;
    v15[3] = 2 * (v16 / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v4 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_72_3();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_72_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF95A508()
{
  OUTLINED_FUNCTION_31_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_28_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D48, &qword_1BF9C2B08);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_10_0(v7);
    OUTLINED_FUNCTION_48_4(v8 / 64);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF95A5E0()
{
  OUTLINED_FUNCTION_31_1();
  if (v6)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D38, &qword_1BF9C2AF8);
    v4 = 40;
    v10 = OUTLINED_FUNCTION_29_0(v9);
    OUTLINED_FUNCTION_1_3(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_37_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D40, &qword_1BF9C2B00);
    OUTLINED_FUNCTION_28_9();
  }
}

uint64_t sub_1BF95A6C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF95DCFC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF95A72C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF95A72C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF9B5658();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CD0, &qword_1BF9C2A68);
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF95A8A8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF95A830(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF95A830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 24);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 8) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 - 16);
        *v9 = *(v9 - 32);
        *(v9 + 16) = v12;
        *(v9 - 24) = v11;
        *(v9 - 8) = v7;
        *(v9 - 32) = v10;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF95A8A8(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 24);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 24);
        v14 = (v11 + 88);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = *(v24 + 3);
                v28 = *(v24 + 8);
                v29 = *(v25 - 1);
                *v24 = *(v25 - 3);
                *(v24 + 1) = v29;
                *(v25 - 24) = v26;
                *(v25 - 1) = v28;
                *v25 = v27;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 24);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 8) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 8);
                v38 = *(v35 - 16);
                *v35 = *(v35 - 32);
                *(v35 + 16) = v38;
                *(v35 - 24) = v37;
                *(v35 - 8) = v33;
                *(v35 - 32) = v36;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8DCF6C();
        v8 = v83;
      }

      v40 = v8[2];
      v41 = v40 + 1;
      if (v40 >= v8[3] >> 1)
      {
        sub_1BF8DCF6C();
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v9;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1BF95AED0((*a3 + 32 * *v76), (*a3 + 32 * *v78), (*a3 + 32 * v79), v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1BF95ADA4(&v90, *a1, a3);
LABEL_89:
}