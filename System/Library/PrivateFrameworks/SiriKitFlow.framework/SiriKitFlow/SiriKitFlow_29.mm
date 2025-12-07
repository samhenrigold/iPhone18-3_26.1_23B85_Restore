uint64_t NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDBBA0();
}

uint64_t NeedsValueFlowStrategyAsync.actionForInputWrapper(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a3;
  *(v6 + 72) = *(a3 + 16);
  *(v6 + 80) = *(a3 + 24);
  *(v6 + 104) = *(a3 + 40);
  *(v6 + 96) = *(a3 + 48);
  return OUTLINED_FUNCTION_0_12(sub_1DCDFD674);
}

uint64_t sub_1DCDFD674()
{
  OUTLINED_FUNCTION_41();
  v14 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v10[0] = *(v0 + 56);
  v10[1] = v4;
  v11 = v3;
  v12 = v1;
  v13 = v2;
  (*(v5 + 24))(v6, v10, v7);
  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t dispatch thunk of NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14 = (*(v0 + 32) + **(v0 + 32));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCB4AE1C;

  return v14(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t sub_1DCDFDC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  *(v4 + 96) = *v3;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  return OUTLINED_FUNCTION_0_12(sub_1DCDFDC8C);
}

uint64_t sub_1DCDFDC8C()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for IntentPromptAnswer(v5, v6, v7, v8);
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_17();
  *v4 = v9;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v10);
}

uint64_t sub_1DCDFDDB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v25 = a1;
  v26 = a4;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentPromptAnswer(255, AssociatedTypeWitness, v8, v9);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v10 = sub_1DD0DE47C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - v13;
  v16 = *a3;
  v15 = a3[1];
  v17 = a3[3];
  v23 = a3[2];
  v24 = v15;
  v21 = a3[6];
  v22 = v17;
  (*(v11 + 16))(&v21 - v13, v25, v10);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v5;
  (*(v11 + 32))(v19 + v18, v14, v10);
  (*(v5 + 32))(v16, v24, v23, v22, v21, v26, sub_1DCE00ED4, v19, v6, v5);
}

uint64_t sub_1DCDFDFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentPromptAnswer(255, AssociatedTypeWitness, v6, v7);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v8);
}

uint64_t sub_1DCDFE0A4()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_29_21(v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDFE18C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - v9;
  v11 = *a3;
  v19 = a3[1];
  v20 = v11;
  v13 = a3[2];
  v12 = a3[3];
  v17 = a3[6];
  v18 = v12;
  (*(v7 + 16))(&v17 - v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  (*(*(v5 + 88) + 40))(v20, v19, v13, v18, v17, sub_1DCE00E54, v15, *(v5 + 80), *(v5 + 88));
}

uint64_t sub_1DCDFE388()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_29_21(v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDFE470()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDFE58C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - v9;
  v11 = *a3;
  v19 = a3[1];
  v20 = v11;
  v13 = a3[2];
  v12 = a3[3];
  v17 = a3[6];
  v18 = v12;
  (*(v7 + 16))(&v17 - v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  (*(*(v5 + 88) + 48))(v20, v19, v13, v18, v17, sub_1DCE00FBC, v15, *(v5 + 80), *(v5 + 88));
}

uint64_t sub_1DCDFE788()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_29_21(v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCDFE870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - v9;
  v11 = *a3;
  v19 = a3[1];
  v20 = v11;
  v13 = a3[2];
  v12 = a3[3];
  v17 = a3[6];
  v18 = v12;
  (*(v7 + 16))(&v17 - v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  (*(*(v5 + 88) + 56))(v20, v19, v13, v18, v17, sub_1DCE00FBC, v15, *(v5 + 80), *(v5 + 88));
}

uint64_t sub_1DCDFEA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *a4;
  *(v5 + 64) = *(a4 + 16);
  *(v5 + 96) = *(a4 + 24);
  return OUTLINED_FUNCTION_0_12(sub_1DCDFEA78);
}

uint64_t sub_1DCDFEA78()
{
  OUTLINED_FUNCTION_41();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  OUTLINED_FUNCTION_12_6(v1, *(v0 + 24), v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v11 = v12;
  v11[1] = sub_1DCB61FD4;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v13);
}

uint64_t sub_1DCDFEB84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v18 = a4;
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(*(*(v8 + 88) + 8) + 16))(a3, v18, v19, v20, sub_1DCE00FBC, v15, *(v8 + 80));
}

uint64_t sub_1DCDFED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a5;
  *(v6 + 72) = *(a5 + 16);
  *(v6 + 104) = *(a5 + 24);
  return OUTLINED_FUNCTION_0_12(sub_1DCDFED80);
}

uint64_t sub_1DCDFED80()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[1].n128_u64[1];
  v2 = swift_task_alloc();
  v0[5].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12_6(v2, v0[2], v3, v4, v5, v6, v7, v8, v9, v10, v11);
  *(v12 + 72) = v1;
  v13 = swift_task_alloc();
  v0[5].n128_u64[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v13 = v14;
  v13[1] = sub_1DCCA946C;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v15);
}

uint64_t sub_1DCDFEE9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a5;
  v23 = a6;
  v20 = a9;
  v21 = a4;
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  (*(*(*(v11 + 88) + 8) + 24))(a3, v21, v22, v23, v20, sub_1DCE00FBC, v18, *(v11 + 80), *(*(v11 + 88) + 8));
}

uint64_t sub_1DCDFF0A0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCDFF16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDFDC30(a1, a2, a3);
}

uint64_t sub_1DCDFF220(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDFE07C(a1, a2);
}

uint64_t sub_1DCDFF2CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDFE360(a1, a2);
}

uint64_t sub_1DCDFF378(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDFE760(a1, a2);
}

uint64_t sub_1DCDFF424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDFEA44(a1, a2, a3, a4);
}

uint64_t sub_1DCDFF4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCDFED48(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCDFF6E8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDFF72C);
}

uint64_t sub_1DCDFF888()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[14] = v0;

  OUTLINED_FUNCTION_92_6();

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v11();
  }
}

uint64_t sub_1DCDFF9BC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDFF9FC);
}

uint64_t sub_1DCDFFB30(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDFFB70);
}

uint64_t sub_1DCDFFCA4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[13] = v0;

  OUTLINED_FUNCTION_92_6();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDFFDB8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_28_21();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE00FC0;
  v2 = OUTLINED_FUNCTION_4_76(*(v0 + 72));

  return sub_1DCB90DA8(v2, v3, v4, v5, v6);
}

uint64_t sub_1DCDFFE4C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDFFE8C);
}

uint64_t sub_1DCDFFFC0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCE00000);
}

uint64_t sub_1DCE00000()
{
  OUTLINED_FUNCTION_16_34(*(**(v2 + 56) + 104));
  v7 = *(v6 + 16);

  v12 = (v7 + *v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v2 + 72) = v8;
  *v8 = v9;
  v8[1] = sub_1DCE00174;
  v10 = *(v2 + 48);

  return v12(v10, v0, v1, v3, v4, v5);
}

uint64_t sub_1DCE00174()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    *(v3 + 41) = 8965;
    v10 = v3 + 41;
    v11 = swift_task_alloc();
    *(v10 + 47) = v11;
    *v11 = v5;
    v11[1] = sub_1DCE002E4;
    v12 = OUTLINED_FUNCTION_4_76(*(v10 + 7));

    return sub_1DCB90DA8(v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1DCE002E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE003C8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCE0040C);
}

uint64_t sub_1DCE0040C()
{
  OUTLINED_FUNCTION_16_34(*(**(v2 + 96) + 104));
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v2 + 112) = v8;
  *v8 = v9;
  v8[1] = sub_1DCE00580;
  v10 = *(v2 + 80);
  v11 = *(v2 + 88);

  return v13(v10, v11, v0, v1, v3, v4, v5);
}

uint64_t sub_1DCE00580()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCE006A0()
{
  *(v0 + 41) = 6;
  swift_getErrorValue();
  v1 = sub_1DCEE0FD4(*(v0 + 56), *(v0 + 64));
  v3 = v2;
  *(v0 + 128) = v2;
  *(v0 + 42) = 90;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1DCE00798;
  v5 = *(v0 + 80);

  return sub_1DCB90DA8(v5, (v0 + 41), v1, v3, (v0 + 42));
}

uint64_t sub_1DCE00798()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE0089C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCDFF6E8(a1, a2);
}

uint64_t sub_1DCE00944(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCDFF9BC(a1);
}

uint64_t sub_1DCE009DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCDFFB30(a1);
}

uint64_t sub_1DCE00A74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCDFFE4C(a1);
}

uint64_t sub_1DCE00B0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCDFFFC0(a1);
}

uint64_t sub_1DCE00BA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE003C8(a1, a2);
}

uint64_t sub_1DCE00C4C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE00C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for RCHDelegateToNeedsValueFlowStrategyAdapter(0, *(a8 + 80), *(a8 + 88), a4);

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t objectdestroy_57Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCE00ED4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for IntentPromptAnswer(v5, v6, v7, v8);
  OUTLINED_FUNCTION_6_0();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v9 = *(sub_1DD0DE47C() - 8);
  v10 = v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1DCDFDFE0(a1, v10, v3, v4);
}

void NeverPlan.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19 - v6;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  v9 = __swift_project_value_buffer(v8, qword_1EDE57E00);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  OUTLINED_FUNCTION_1_81();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_1DCBCF738(v4);
  }

  else
  {
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v13 = 136315650;
      v14 = sub_1DD0DEC3C();
      v16 = sub_1DCB10E9C(v14, v15, &v20);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 13;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_1DCB10E9C(0xD000000000000070, 0x80000001DD11E4A0, &v20);
      OUTLINED_FUNCTION_16_3(&dword_1DCAFC000, v17, v18, "FatalError at %s:%lu - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v4, v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000070, 0x80000001DD11E4A0);
}

void static NeverPlan._buildEventPublisher(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19 - v6;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  v9 = __swift_project_value_buffer(v8, qword_1EDE57E00);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  OUTLINED_FUNCTION_1_81();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_1DCBCF738(v4);
  }

  else
  {
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v13 = 136315650;
      v14 = sub_1DD0DEC3C();
      v16 = sub_1DCB10E9C(v14, v15, &v20);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 20;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_1DCB10E9C(0xD000000000000077, 0x80000001DD11E590, &v20);
      OUTLINED_FUNCTION_16_3(&dword_1DCAFC000, v17, v18, "FatalError at %s:%lu - %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v4, v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000077, 0x80000001DD11E590);
}

unint64_t sub_1DCE01544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t sub_1DCE015B4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1DCE015F0(_BYTE *result, int a2, int a3)
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

uint64_t NLContextUpdate.pegasusConversationContext.setter()
{
  OUTLINED_FUNCTION_60();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_50();
  sub_1DD0DD70C();
  v5 = sub_1DD0DD72C();
  v8 = OUTLINED_FUNCTION_21_25(v1, v6, v7, v5);
  return sub_1DCE01748(v1, v0 + *(v8 + 128));
}

uint64_t sub_1DCE01748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void __swiftcall DisplayHint.init(idValue:displayValue:)(SiriKitFlow::DisplayHint *__return_ptr retstr, SiriKitFlow::SemanticValue_optional *idValue, SiriKitFlow::SemanticValue *displayValue)
{
  string = displayValue->string;
  nodeClass = idValue->value.nodeClass;
  v6 = OUTLINED_FUNCTION_0_68();
  sub_1DCB22A50(v6, v7, v8, v9, v10, v11);
  label = idValue->value.label;
  retstr->idValue.value.string = idValue->value.string;
  retstr->idValue.value.label = label;
  v13 = OUTLINED_FUNCTION_0_68();
  sub_1DCB22A50(v13, v14, v15, v16, v17, v18);
  retstr->idValue.value.nodeClass = nodeClass;
  retstr->displayValue.value.string = string;
  v19 = displayValue->nodeClass;
  retstr->displayValue.value.label = displayValue->label;
  retstr->displayValue.value.nodeClass = v19;
}

void __swiftcall SemanticValue.init()(SiriKitFlow::SemanticValue *__return_ptr retstr)
{
  retstr->label = 0u;
  retstr->nodeClass = 0u;
  retstr->string = 0u;
}

uint64_t MachineUtteranceBuilder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DCE01880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_131();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_20_0(v8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = OUTLINED_FUNCTION_3_79();
  v12 = OUTLINED_FUNCTION_2_68(v11);
  a5(v12);
  return OUTLINED_FUNCTION_11_46();
}

uint64_t sub_1DCE0190C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = OUTLINED_FUNCTION_3_79();
  v10 = OUTLINED_FUNCTION_2_68(v9);
  a3(v10);
  return OUTLINED_FUNCTION_11_46();
}

uint64_t sub_1DCE01994(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_131();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = OUTLINED_FUNCTION_3_79();
  v9 = OUTLINED_FUNCTION_2_68(v8);
  a2(v9);
  return OUTLINED_FUNCTION_11_46();
}

uint64_t NLContextUpdate.applicationContextObjects.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t NLContextUpdate.conversationStateAttachments.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t NLContextUpdate.dictationPromptAbortValues.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t NLContextUpdate.dictationPromptTargetDomain.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t NLContextUpdate.dictationPromptTargetNodes.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptAbortValues.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptAmbiguityId.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptResponseTargets.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptTargetDomain.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t NLContextUpdate.displayHints.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

void *NLContextUpdate.siriKitMetrics.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void *NLContextUpdate.systemDialogActOutput.getter()
{
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

uint64_t NLContextUpdate.weightedPromptAbortValues.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t NLContextUpdate.weightedPromptResponseTargets.setter(uint64_t a1)
{

  *(v1 + 160) = a1;
  return result;
}

uint64_t NLContextUpdate.weightedPromptResponseOptions.setter(uint64_t a1)
{

  *(v1 + 168) = a1;
  return result;
}

uint64_t NLContextUpdate.systemDialogActs.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t NLContextUpdate.nluSystemDialogActs.setter(uint64_t a1)
{

  *(v1 + 216) = a1;
  return result;
}

uint64_t NLContextUpdate.rrEntities.setter(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

uint64_t NLContextUpdate.newTasks.setter(uint64_t a1)
{

  *(v1 + 232) = a1;
  return result;
}

uint64_t NLContextUpdate.completedTasks.setter(uint64_t a1)
{

  *(v1 + 240) = a1;
  return result;
}

__n128 NLContextUpdate.undoDirectInvocation.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1DCBB5B64(v1[31], v1[32], v1[33]);
  result = v4;
  *(v1 + 31) = v4;
  v1[33] = v2;
  return result;
}

uint64_t NLContextUpdate.currentDomainName.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 272) = v2;
  *(v1 + 280) = v0;
  return result;
}

uint64_t NLContextUpdate.pegasusConversationContext.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_3_79();
  sub_1DCB59A1C(v0 + *(v5 + 128), v1);
  v6 = sub_1DD0DD72C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
  {
    sub_1DCB16D50(v1, &unk_1ECCA73E0, &unk_1DD0F8320);
  }

  else
  {
    MEMORY[0x1E12A5D70]();
    (*(*(v6 - 8) + 8))(v1, v6);
  }

  return OUTLINED_FUNCTION_131();
}

void (*NLContextUpdate.pegasusConversationContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v3);
  a1[3] = __swift_coroFrameAllocStub(*(v4 + 64));
  *a1 = NLContextUpdate.pegasusConversationContext.getter();
  a1[1] = v5;
  return sub_1DCE02794;
}

void sub_1DCE02794(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_131();
    sub_1DCC91E6C(v5, v6);
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_2_50();
    sub_1DD0DD70C();
    v7 = sub_1DD0DD72C();
    v10 = OUTLINED_FUNCTION_21_25(v2, v8, v9, v7);
    sub_1DCE01748(v2, v3 + *(v10 + 128));
    sub_1DCB2C520(*a1, a1[1]);
  }

  else
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_2_50();
    sub_1DD0DD70C();
    v11 = sub_1DD0DD72C();
    v14 = OUTLINED_FUNCTION_21_25(v2, v12, v13, v11);
    sub_1DCE01748(v2, v3 + *(v14 + 128));
  }

  free(v2);
}

uint64_t NLContextUpdate.pommesContext.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_22_26() + 128);

  return sub_1DCE01748(v0, v2);
}

uint64_t NLContextUpdate.isClientOnly.setter(char a1)
{
  result = type metadata accessor for NLContextUpdate(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t NLContextUpdate.contextUpdateScope.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NLContextUpdate(0);
  *(v1 + *(result + 136)) = v2;
  return result;
}

uint64_t NLContextUpdate.restoreSessionForRequestId.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = (v1 + *(type metadata accessor for NLContextUpdate(0) + 140));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

__n128 DisplayHint.idValue.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1DCB22A50(*v1, v1[1], v1[2], v1[3], v1[4], v1[5]);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  v1[4] = v3;
  v1[5] = v4;
  return result;
}

__n128 DisplayHint.displayValue.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1DCB22A50(v1[6], v1[7], v1[8], v1[9], v1[10], v1[11]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v6;
  v1[10] = v3;
  v1[11] = v4;
  return result;
}

void __swiftcall DisplayHint.init()(SiriKitFlow::DisplayHint *__return_ptr retstr)
{
  retstr->idValue.value.string = xmmword_1DD0E3FF0;
  retstr->idValue.value.label = 0u;
  retstr->idValue.value.nodeClass = 0u;
  retstr->displayValue.value.string.value._countAndFlagsBits = 0;
  retstr->displayValue.value.string.value._object = 1;
  retstr->displayValue.value.label = 0u;
  retstr->displayValue.value.nodeClass = 0u;
}

uint64_t sub_1DCE02B44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C61566469 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5679616C70736964 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCE02C10(char a1)
{
  if (a1)
  {
    return 0x5679616C70736964;
  }

  else
  {
    return 0x65756C61566469;
  }
}

uint64_t sub_1DCE02C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE02B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE02C80(uint64_t a1)
{
  v2 = sub_1DCE03AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE02CBC(uint64_t a1)
{
  v2 = sub_1DCE03AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayHint.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA73F0, &qword_1DD0F8330);
  OUTLINED_FUNCTION_9();
  v20 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_1();
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v11 = v0[4];
  v10 = v0[5];
  v17 = v0[6];
  v18 = v0[3];
  v15 = v0[8];
  v16 = v0[7];
  v13 = v0[10];
  v14 = v0[9];
  v12 = v0[11];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCB2502C(v7, v8, v9, v18, v11, v10);
  sub_1DCE03AB4();
  sub_1DD0DF24C();
  sub_1DCE03B08();
  OUTLINED_FUNCTION_15_45();
  sub_1DD0DEFAC();
  OUTLINED_FUNCTION_26_22();
  if (!v10)
  {
    sub_1DCB2502C(v17, v16, v15, v14, v13, v12);
    OUTLINED_FUNCTION_15_45();
    sub_1DD0DEFAC();
    OUTLINED_FUNCTION_26_22();
  }

  (*(v20 + 8))(v1, v19);
  OUTLINED_FUNCTION_19_19();
}

void DisplayHint.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7408, &qword_1DD0F8338);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCE03AB4();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v41 = 0;
    v42 = 1;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = xmmword_1DD0E3FF0;
    v48 = 0u;
    v49 = 0u;
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    sub_1DCE03B5C();
    OUTLINED_FUNCTION_20_22(&type metadata for SemanticValue, v34);
    v30 = v4;
    v8 = v41;
    v7 = v42;
    v50 = v43;
    v33 = v44;
    v32 = v45;
    v31 = v46;
    v9 = OUTLINED_FUNCTION_0_68();
    sub_1DCB22A50(v9, v10, v11, v12, v13, v14);
    v35 = 1;
    OUTLINED_FUNCTION_20_22(&type metadata for SemanticValue, &v35);
    v15 = OUTLINED_FUNCTION_13_45();
    v16(v15);
    v18 = v36;
    v17 = v37;
    v29 = v36;
    v19 = *(&v38 + 1);
    v28 = v38;
    v20 = v39;
    v27 = v40;
    v21 = OUTLINED_FUNCTION_0_68();
    sub_1DCB22A50(v21, v22, v23, v24, v25, v26);
    v34[0] = v8;
    v34[1] = v7;
    v34[2] = v50;
    v34[3] = v33;
    v34[4] = v32;
    v34[5] = v31;
    v34[6] = v18;
    v34[7] = v17;
    v34[8] = v28;
    v34[9] = v19;
    v34[10] = v20;
    v34[11] = v27;
    memcpy(v30, v34, 0x60uLL);
    sub_1DCC089D8(v34, &v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v41 = v8;
    v42 = v7;
    v43 = v50;
    v44 = v33;
    v45 = v32;
    v46 = v31;
    *&v47 = v29;
    *(&v47 + 1) = v17;
    v48 = v28;
    *&v49 = v20;
    *(&v49 + 1) = v27;
  }

  sub_1DCC08A34(&v41);
  OUTLINED_FUNCTION_19_19();
}

uint64_t SemanticValue.string.setter()
{
  OUTLINED_FUNCTION_60();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SemanticValue.label.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SemanticValue.nodeClass.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall SemanticValue.init(string:label:)(SiriKitFlow::SemanticValue *__return_ptr retstr, Swift::String string, Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v5 = string._object;
  v6 = string._countAndFlagsBits;
  sub_1DD0DEC1C();

  sub_1DCB598EC(1);
  v8 = sub_1DD0DE99C();
  v10 = v9;

  sub_1DCB594B0(1uLL);
  sub_1DCB59970();

  sub_1DD0DE11C();

  MEMORY[0x1E12A6780](v8, v10);

  retstr->string.value._countAndFlagsBits = v6;
  retstr->string.value._object = v5;
  retstr->label.value._countAndFlagsBits = countAndFlagsBits;
  retstr->label.value._object = object;
  retstr->nodeClass.value._countAndFlagsBits = 0xD000000000000012;
  retstr->nodeClass.value._object = 0x80000001DD113920;
}

void __swiftcall SemanticValue.init(string:label:nodeClass:)(SiriKitFlow::SemanticValue *__return_ptr retstr, Swift::String string, Swift::String label, Swift::String nodeClass)
{
  retstr->string.value = string;
  retstr->label.value = label;
  retstr->nodeClass.value = nodeClass;
}

uint64_t sub_1DCE034E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73616C4365646F6ELL && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD0DF0AC();

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

uint64_t sub_1DCE035F4(char a1)
{
  if (!a1)
  {
    return 0x676E69727473;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x73616C4365646F6ELL;
}

uint64_t sub_1DCE03650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE034E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE03678(uint64_t a1)
{
  v2 = sub_1DCE03BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE036B4(uint64_t a1)
{
  v2 = sub_1DCE03BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SemanticValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7420, &qword_1DD0F8340);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_4_1();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DCE03BB0();
  sub_1DD0DF24C();
  sub_1DD0DEF8C();
  if (!v24)
  {
    sub_1DD0DEF8C();
    sub_1DD0DEF8C();
  }

  (*(v30 + 8))(v25, v28);
  OUTLINED_FUNCTION_19_19();
}

void SemanticValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7430, &unk_1DD0F8348);
  OUTLINED_FUNCTION_9();
  v33 = v32;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v49 - v36;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1DCE03BB0();
  sub_1DD0DF23C();
  if (!v24)
  {
    a14 = 0;
    v38 = OUTLINED_FUNCTION_19_29(&a14);
    v40 = v39;
    v52 = v38;
    a13 = 1;
    v41 = OUTLINED_FUNCTION_19_29(&a13);
    v43 = v42;
    v51 = v41;
    a12 = 2;
    v44 = OUTLINED_FUNCTION_19_29(&a12);
    v46 = v45;
    v47 = *(v33 + 8);
    v50 = v44;
    v47(v37, v31);
    v48 = v51;
    *v30 = v52;
    v30[1] = v40;
    v30[2] = v48;
    v30[3] = v43;
    v30[4] = v50;
    v30[5] = v46;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v28);

  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCE03AB4()
{
  result = qword_1ECCA73F8;
  if (!qword_1ECCA73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA73F8);
  }

  return result;
}

unint64_t sub_1DCE03B08()
{
  result = qword_1ECCA7400;
  if (!qword_1ECCA7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7400);
  }

  return result;
}

unint64_t sub_1DCE03B5C()
{
  result = qword_1ECCA7410;
  if (!qword_1ECCA7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7410);
  }

  return result;
}

unint64_t sub_1DCE03BB0()
{
  result = qword_1ECCA7428;
  if (!qword_1ECCA7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7428);
  }

  return result;
}

id static ConversationStateAttachmentUtils.makeAttachmentToClearSlotResolutionState<A>(intent:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7830]) init];
  v3 = [a1 backingStore];
  v4 = [v3 data];

  if (v4)
  {
    sub_1DD0DAF2C();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = [a1 typeName];
  v8 = v7;
  if (!v7)
  {
    sub_1DD0DDFBC();
    v8 = sub_1DD0DDF8C();
  }

  OUTLINED_FUNCTION_28_22(v7, sel_setTypeName_);

  if (v6 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_68();
    sub_1DCC91E80(v11, v12);
    sub_1DD0DAF0C();
    v13 = OUTLINED_FUNCTION_68();
    sub_1DCB2C520(v13, v14);
    v10 = sub_1DD0DDF8C();
  }

  OUTLINED_FUNCTION_28_22(v9, sel_setBase64EncodedIntent_);

  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  sub_1DD0DDE9C();
  v15 = sub_1DD0DDE4C();

  OUTLINED_FUNCTION_28_22(v16, sel_setSlotResolutionMap_);

  sub_1DCB10E5C(0, &qword_1EDE46250, 0x1E69C7838);
  v17 = sub_1DD0DE2DC();
  OUTLINED_FUNCTION_28_22(v17, sel_setStepResults_);
  v18 = OUTLINED_FUNCTION_68();
  sub_1DCB2C520(v18, v19);

  return v2;
}

SiriKitFlow::ContextUpdateScope_optional __swiftcall ContextUpdateScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContextUpdateScope.rawValue.getter()
{
  v1 = 0x72657355656D6F68;
  if (*v0 != 1)
  {
    v1 = 0x6C61626F6C67;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x55746E6572727563;
  }
}

uint64_t sub_1DCE03F2C@<X0>(uint64_t *a1@<X8>)
{
  result = ContextUpdateScope.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DCE03F58()
{
  result = qword_1ECCA7438;
  if (!qword_1ECCA7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7438);
  }

  return result;
}

uint64_t assignWithCopy for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  v6 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v6;
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  v7 = *(a1 + 128);
  v8 = *(a2 + 128);
  *(a1 + 128) = v8;
  v9 = v8;

  *(a1 + 136) = *(a2 + 136);
  v10 = *(a1 + 144);
  v11 = *(a2 + 144);
  *(a1 + 144) = v11;
  v12 = v11;

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  v13 = *(a2 + 256);
  if (*(a1 + 256))
  {
    if (v13)
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);

      *(a1 + 264) = *(a2 + 264);
    }

    else
    {
      sub_1DCBB8090(a1 + 248);
      v14 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v14;
    }
  }

  else if (v13)
  {
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    v15 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v15;
  }

  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);

  v16 = a3[32];
  v17 = sub_1DD0DD72C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v16, 1, v17);
  v19 = __swift_getEnumTagSinglePayload(a2 + v16, 1, v17);
  if (!EnumTagSinglePayload)
  {
    v20 = *(v17 - 8);
    if (!v19)
    {
      (*(v20 + 24))(a1 + v16, a2 + v16, v17);
      goto LABEL_14;
    }

    (*(v20 + 8))(a1 + v16, v17);
    goto LABEL_13;
  }

  if (v19)
  {
LABEL_13:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v16), (a2 + v16), *(*(v21 - 8) + 64));
    goto LABEL_14;
  }

  (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
  __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v17);
LABEL_14:
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + a3[34]) = *(a2 + a3[34]);
  v22 = a3[35];
  v23 = (a1 + v22);
  v24 = (a2 + v22);
  *v23 = *v24;
  v23[1] = v24[1];

  return a1;
}

uint64_t initializeWithTake for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v7 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v7;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  v8 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v8;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 272) = *(a2 + 272);
  v9 = a3[32];
  v10 = sub_1DD0DD72C();
  if (__swift_getEnumTagSinglePayload(a2 + v9, 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v9), (a2 + v9), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
    __swift_storeEnumTagSinglePayload(a1 + v9, 0, 1, v10);
  }

  v12 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + a3[35]) = *(a2 + a3[35]);
  return a1;
}

uint64_t assignWithTake for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  v7 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v7;

  *(a1 + 104) = *(a2 + 104);

  v8 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v8;

  v9 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  v10 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v11;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  if (*(a1 + 256))
  {
    v12 = *(a2 + 256);
    if (v12)
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = v12;

      *(a1 + 264) = *(a2 + 264);

      goto LABEL_6;
    }

    sub_1DCBB8090(a1 + 248);
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
LABEL_6:
  v13 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v13;

  v14 = a3[32];
  v15 = sub_1DD0DD72C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v14, 1, v15);
  v17 = __swift_getEnumTagSinglePayload(a2 + v14, 1, v15);
  if (!EnumTagSinglePayload)
  {
    v18 = *(v15 - 8);
    if (!v17)
    {
      (*(v18 + 40))(a1 + v14, a2 + v14, v15);
      goto LABEL_12;
    }

    (*(v18 + 8))(a1 + v14, v15);
    goto LABEL_11;
  }

  if (v17)
  {
LABEL_11:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v14), (a2 + v14), *(*(v19 - 8) + 64));
    goto LABEL_12;
  }

  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v15);
LABEL_12:
  v20 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[35];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v25 = *v23;
  v24 = v23[1];
  *v22 = v25;
  v22[1] = v24;

  return a1;
}

void sub_1DCE04B94(uint64_t a1)
{
  sub_1DCE04C94(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCE04C94(uint64_t a1)
{
  if (!qword_1EDE4D748)
  {
    sub_1DD0DD72C();
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE4D748);
    }
  }
}

uint64_t destroy for DisplayHint(uint64_t a1)
{
  if (*(a1 + 8) != 1)
  {
  }

  result = *(a1 + 56);
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for DisplayHint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 == 1)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    v6 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v6;
    v7 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v7;
  }

  v8 = *(a2 + 56);
  if (v8 == 1)
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v8;
    v10 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v10;
    v11 = *(a2 + 80);
    v12 = *(a2 + 88);
    *(a1 + 80) = v11;
    *(a1 + 88) = v12;
  }

  return a1;
}

uint64_t assignWithCopy for DisplayHint(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      v6 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v6;
      *a1 = v5;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 16) = a2[1];
      *(a1 + 32) = a2[2];
    }
  }

  else if (v4 == 1)
  {
    sub_1DCE05044(a1);
    v8 = a2[1];
    v7 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
  }

  else
  {
    *a1 = *a2;

    *(a1 + 16) = *(a2 + 2);
    *(a1 + 24) = *(a2 + 3);

    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 5);
  }

  v9 = *(a2 + 7);
  if (*(a1 + 56) == 1)
  {
    if (v9 == 1)
    {
      v10 = a2[3];
      v11 = a2[5];
      *(a1 + 64) = a2[4];
      *(a1 + 80) = v11;
      *(a1 + 48) = v10;
    }

    else
    {
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
    }
  }

  else if (v9 == 1)
  {
    sub_1DCE05044((a1 + 48));
    v13 = a2[4];
    v12 = a2[5];
    *(a1 + 48) = a2[3];
    *(a1 + 64) = v13;
    *(a1 + 80) = v12;
  }

  else
  {
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 56) = *(a2 + 7);

    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = *(a2 + 9);

    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
  }

  return a1;
}

uint64_t assignWithTake for DisplayHint(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4 == 1)
  {
    sub_1DCE05044(a1);
LABEL_4:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

LABEL_6:
  if (*(a1 + 56) != 1)
  {
    v8 = *(a2 + 56);
    if (v8 != 1)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v8;

      v10 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v10;

      v11 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v11;

      return a1;
    }

    sub_1DCE05044((a1 + 48));
  }

  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayHint(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 96))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayHint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *assignWithCopy for SemanticValue(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

void *assignWithTake for SemanticValue(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for ConversationStateAttachmentUtils(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DCE053F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DisplayHint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCE055B0()
{
  result = qword_1ECCA7440;
  if (!qword_1ECCA7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7440);
  }

  return result;
}

unint64_t sub_1DCE05608()
{
  result = qword_1ECCA7448;
  if (!qword_1ECCA7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7448);
  }

  return result;
}

unint64_t sub_1DCE05660()
{
  result = qword_1ECCA7450;
  if (!qword_1ECCA7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7450);
  }

  return result;
}

unint64_t sub_1DCE056B8()
{
  result = qword_1ECCA7458;
  if (!qword_1ECCA7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7458);
  }

  return result;
}

unint64_t sub_1DCE05710()
{
  result = qword_1ECCA7460;
  if (!qword_1ECCA7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7460);
  }

  return result;
}

unint64_t sub_1DCE05768()
{
  result = qword_1ECCA7468;
  if (!qword_1ECCA7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7468);
  }

  return result;
}

uint64_t sub_1DCE057C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DDFBC();
  v4 = v3;
  v5 = sub_1DD0DDFBC();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DCE05858(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6573726170;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = "continuationState";
  v6 = 0x6573726170;
  switch(v4)
  {
    case 1:
      v6 = 0x74616E7265746C61;
      v3 = 0xEC00000073657669;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_36_23();
      v3 = 0xEA00000000007265;
      break;
    case 3:
      v6 = 0xD000000000000011;
      v3 = 0x80000001DD110FC0;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x74616E7265746C61;
      v7 = 0xEC00000073657669;
      break;
    case 2:
      OUTLINED_FUNCTION_34_26();
      v7 = 0xEA00000000007265;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v6, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_1DCE05994()
{
  OUTLINED_FUNCTION_41_19();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = 0xD000000000000013;
      v0 = 0x80000001DD110FF0;
      break;
    case 2:
      v0 = 0x80000001DD111010;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v3 = 0x726F707075736E75;
      v0 = 0xEB00000000646574;
      break;
    default:
      break;
  }

  v5 = 0xE600000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000013;
      v5 = 0x80000001DD110FF0;
      break;
    case 2:
      v5 = 0x80000001DD111010;
      v2 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0x726F707075736E75;
      v5 = 0xEB00000000646574;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_80(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_1DCE05ADC(char a1)
{
  if (a1)
  {
    v1 = "GenericHandoffNotification";
  }

  else
  {
    v1 = "Confirm";
  }

  v2 = v1 | 0x8000000000000000;
  OUTLINED_FUNCTION_37_24();
  if (v9)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v3 == v5 && v2 == (v8 | 0x8000000000000000);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_80(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_1DCE05B70(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656D614E707061;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x69746E4562726576;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001DD110F80;
    }

    else
    {
      v5 = 0xEA00000000007974;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x656D614E707061;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_87_1();
    if (v7 == 1)
    {
      v2 = v8;
    }

    else
    {
      v2 = 0x69746E4562726576;
    }

    if (v7 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEA00000000007974;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80(v4, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1DCE05CC4(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE90000000000006ELL;
  }

  OUTLINED_FUNCTION_37_24();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1DCE05D58()
{
  OUTLINED_FUNCTION_41_19();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE700000000000000;
      v3 = 0x6D7269666E6F43;
      break;
    case 2:
      v0 = 0xE200000000000000;
      v3 = 28494;
      break;
    case 3:
      v0 = 0xE200000000000000;
      v3 = 19279;
      break;
    case 4:
      v0 = 0xE700000000000000;
      v3 = 0x7070416E65704FLL;
      break;
    case 5:
      v0 = 0xE300000000000000;
      v3 = 7562585;
      break;
    default:
      break;
  }

  v5 = 0xE600000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE700000000000000;
      v2 = 0x6D7269666E6F43;
      break;
    case 2:
      v5 = 0xE200000000000000;
      v2 = 28494;
      break;
    case 3:
      v5 = 0xE200000000000000;
      v2 = 19279;
      break;
    case 4:
      v5 = 0xE700000000000000;
      v2 = 0x7070416E65704FLL;
      break;
    case 5:
      v5 = 0xE300000000000000;
      v2 = 7562585;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_80(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_1DCE05EC0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DCE05F8C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB0000000064656CLL;
  v3 = 0x6C6174736E696E75;
  v4 = a1;
  v5 = 0x6C6174736E696E75;
  v6 = 0xEB0000000064656CLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6E6564646968;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x64656B636F6CLL;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x6C616D726F6ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6E6564646968;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x64656B636F6CLL;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x6C616D726F6ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_33(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1DCE060BC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000726573;
  v3 = 0x55746E6572727563;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x72657355656D6F68;
    }

    else
    {
      v5 = 0x6C61626F6C67;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000073;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x55746E6572727563;
    v6 = 0xEB00000000726573;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x72657355656D6F68;
    }

    else
    {
      v3 = 0x6C61626F6C67;
    }

    if (a2 == 1)
    {
      v2 = 0xE900000000000073;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_33(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1DCE061C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_1DCE0624C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x614E797469746E65;
  v4 = a1;
  v5 = "entityAttributeName";
  v6 = 0x614E797469746E65;
  v7 = 0xEA0000000000656DLL;
  v8 = "taskAttributeName";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000011;
      v7 = 0x80000001DD1107B0;
      break;
    case 2:
      v7 = 0xE400000000000000;
      v6 = 1651664246;
      break;
    case 3:
      v7 = 0x80000001DD1107D0;
      v6 = 0xD000000000000013;
      break;
    case 4:
      v6 = 0x63617073656D616ELL;
      v7 = 0xE900000000000065;
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_36_23();
      v7 = 0xEF65756C61567265;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000011;
      v2 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1651664246;
      break;
    case 3:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 4:
      v3 = 0x63617073656D616ELL;
      v2 = 0xE900000000000065;
      break;
    case 5:
      OUTLINED_FUNCTION_34_26();
      v2 = 0xEF65756C61567265;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_33(v6, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_1DCE063F4(char a1, uint64_t a2)
{
  v2 = 0x676F6C616964;
  if (a1)
  {
    OUTLINED_FUNCTION_16_36();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x676F6C616964;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_16_36();
    OUTLINED_FUNCTION_87_1();
    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v14;
    }

    if (v11 == 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_3_80(v8, a2, v2);
  }

  return v17 & 1;
}

uint64_t sub_1DCE064AC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v5 = 0x206D7269666E6F63;
      v3 = 0xEF746361746E6F63;
      break;
    case 3:
      v5 = 0x63207463656A6572;
      v3 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 3:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DCE06600(char a1)
{
  if (a1)
  {
    v1 = 0xEE006E6F69746175;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_37_24();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1DCE066B4(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_37_24();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1DCE06740(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x5445534E55;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x5445534E55;
  switch(v4)
  {
    case 1:
      v5 = 0x454C4C45434E4143;
      goto LABEL_4;
    case 2:
      v5 = 0x454D5249464E4F43;
LABEL_4:
      v3 = 0xE900000000000044;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x44455443454A4552;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x454C4C45434E4143;
      goto LABEL_9;
    case 2:
      v2 = 0x454D5249464E4F43;
LABEL_9:
      v6 = 0xE900000000000044;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x44455443454A4552;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80(v5, a2, v2);
  }

  return v8 & 1;
}

SiriKitFlow::NLContextUpdateSerializationOptions sub_1DCE06910@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = NLContextUpdateSerializationOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DCE06950@<X0>(uint64_t *a1@<X8>)
{
  result = NLContextUpdateSerializationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

char *NLContextUpdate.toAceContextUpdate(options:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1DCB2CC34(0xD00000000000001CLL, 0x80000001DD11E830);
  v3 = v1;
  return NLContextUpdate.doConvertToAceContextUpdate(options:)(&v3);
}

id NLContextUpdate.toServerContextUpdate()()
{
  sub_1DCB2CC34(0xD000000000000017, 0x80000001DD11E870);

  return NLContextUpdate.doConvertToServerContextUpdate()();
}

char *sub_1DCE06A14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA74D0, &qword_1DD0E1BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1DCE06CC8()
{
  result = qword_1ECCA7480;
  if (!qword_1ECCA7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7480);
  }

  return result;
}

void sub_1DCE06D1C(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DE2DC();

  [a2 setDisplayHintsAsJson_];
}

void sub_1DCE06D88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DAEFC();
  [a3 setPromptContextProto_];
}

void sub_1DCE06DE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DAEFC();
  [a3 setPegasusConversationContext_];
}

unint64_t sub_1DCE06E3C()
{
  result = qword_1ECCA7490;
  if (!qword_1ECCA7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7490);
  }

  return result;
}

unint64_t sub_1DCE06E94()
{
  result = qword_1ECCA7498;
  if (!qword_1ECCA7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7498);
  }

  return result;
}

unint64_t sub_1DCE06EEC()
{
  result = qword_1ECCA74A0;
  if (!qword_1ECCA74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA74A0);
  }

  return result;
}

unint64_t sub_1DCE06F44()
{
  result = qword_1ECCA74A8;
  if (!qword_1ECCA74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA74A8);
  }

  return result;
}

uint64_t sub_1DCE06FC8()
{
  OUTLINED_FUNCTION_42();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v7 = sub_1DD0DB6EC();
  v0[10] = v7;
  v0[11] = *(v7 - 8);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE07094()
{
  v25 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_1DCB10E9C(0x7265706C65484C4ELL, 0xE800000000000000, v24);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1DCB10E9C(0xD000000000000042, 0x80000001DD11E8C0, v24);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v5 = sub_1DCF7BA1C(*(v0 + 56), *(v0 + 72));
  *(v0 + 120) = v5;
  *(v0 + 128) = v6;
  *(v0 + 160) = v7;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  *(v0 + 24) = sub_1DD0DDE9C();
  *(swift_task_alloc() + 16) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA74E0, &qword_1DD0F8B48);
  sub_1DD0DE22C();

  v13 = *(v0 + 16);
  *(v0 + 136) = v13;
  if (*(v13 + 16))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 144) = v14;
    *v14 = v15;
    v14[1] = sub_1DCE07434;
    v16 = *(v0 + 104);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);

    return sub_1DCE07C94(v16, v17, v18, v9, v10, v11, v13);
  }

  else
  {
    sub_1DCE0A938();

    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v20))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v21, v22, "No events produce USO graphs. No SDA will be produced.");
      OUTLINED_FUNCTION_80();
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 32), 1, 1, *(v0 + 80));

    OUTLINED_FUNCTION_43();

    return v23();
  }
}

uint64_t sub_1DCE07434()
{
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  sub_1DCE0A938();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCE07598()
{
  OUTLINED_FUNCTION_125();
  v16 = v0;
  (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  if (v3)
  {
    v7 = OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_83();
    v15 = v8;
    *v7 = 136315138;
    sub_1DCE0A948();
    v9 = sub_1DD0DD6EC();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1DCB10E9C(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "Produced the following SystemDialogAct:\n\n%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  (*(v0[11] + 32))(v0[4], v0[13], v0[10]);
  __swift_storeEnumTagSinglePayload(v0[4], 0, 1, v0[10]);

  OUTLINED_FUNCTION_43();

  return v13();
}

uint64_t sub_1DCE0775C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DCE077C0(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 producer];
  v5 = [v4 name];
  v6 = sub_1DD0DDFBC();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = v3;
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v42 = v22;
    *v21 = 136315138;
    v23 = [v18 eventId];
    v24 = sub_1DD0DDFBC();
    v26 = v25;

    v27 = sub_1DCB10E9C(v24, v26, &v42);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "Event '%s' has no NL producer defined. No SystemDialogAct will be generated.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
LABEL_14:
    MEMORY[0x1E12A8390](v22, -1, -1);
    MEMORY[0x1E12A8390](v21, -1, -1);
LABEL_15:

    return;
  }

  v10 = [v4 name];
  sub_1DD0DDFBC();

  sub_1DCC18004();

  if (v43)
  {
    sub_1DCB18FF0(&v42, v45);
    sub_1DCB17CA0(v45, &v42);
    v11 = [v4 parameters];
    v12 = sub_1DD0DDE6C();

    v44 = v12;
    v13 = [v3 eventId];
    v14 = sub_1DD0DDFBC();
    v16 = v15;

    sub_1DCC17F4C(&v42, v41);
    sub_1DD06E2C0(v41, v14, v16);

    sub_1DCE0AAB4(&v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return;
  }

  sub_1DCB16DB0(&v42, &qword_1ECCA27A8, &qword_1DD0E68C8);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v28 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v28, qword_1EDE57E00);
  v29 = v3;
  v4 = v4;
  v19 = sub_1DD0DD8EC();
  v30 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v19, v30))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v42 = v22;
    *v21 = 136315394;
    v31 = [v29 eventId];
    v32 = sub_1DD0DDFBC();
    v45[6] = v2;
    v34 = v33;

    v35 = sub_1DCB10E9C(v32, v34, &v42);

    *(v21 + 4) = v35;
    *(v21 + 12) = 2080;
    v36 = [v4 name];
    v37 = sub_1DD0DDFBC();
    v39 = v38;

    v40 = sub_1DCB10E9C(v37, v39, &v42);

    *(v21 + 14) = v40;
    _os_log_impl(&dword_1DCAFC000, v19, v30, "Event '%s' defines an unknown NL producer for name '%s'. No SystemDialogAct will be generated.", v21, 0x16u);
    swift_arrayDestroy();
    goto LABEL_14;
  }
}

uint64_t sub_1DCE07C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 504) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_1DD0DB72C();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v9 = sub_1DD0DB5EC();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  v10 = sub_1DD0DB61C();
  *(v7 + 128) = v10;
  *(v7 + 136) = *(v10 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v11 = sub_1DD0DB66C();
  *(v7 + 160) = v11;
  *(v7 + 168) = *(v11 - 8);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v12 = sub_1DD0DB75C();
  *(v7 + 200) = v12;
  *(v7 + 208) = *(v12 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  v13 = sub_1DD0DB5BC();
  *(v7 + 232) = v13;
  *(v7 + 240) = *(v13 - 8);
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  v14 = sub_1DD0DB44C();
  *(v7 + 280) = v14;
  *(v7 + 288) = *(v14 - 8);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  v15 = sub_1DD0DB50C();
  *(v7 + 320) = v15;
  *(v7 + 328) = *(v15 - 8);
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE08074, 0, 0);
}

uint64_t sub_1DCE08074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = *(v22 + 504);
  sub_1DD0DB6DC();
  switch(v23 >> 6)
  {
    case 1u:
      v44 = *(v22 + 40);
      sub_1DD0DB71C();
      v45 = *(v44 + 16);
      *(v22 + 376) = v45;
      v46 = MEMORY[0x1E69E7CC0];
      *(v22 + 456) = MEMORY[0x1E69E7CC0];
      *(v22 + 464) = v46;
      *(v22 + 448) = 0;
      if (v45)
      {
        *(v22 + 472) = *(*(v22 + 40) + 40);

        v47 = swift_task_alloc();
        *(v22 + 480) = v47;
        *v47 = v22;
        OUTLINED_FUNCTION_10_50();
        goto LABEL_12;
      }

      v73 = MEMORY[0x1E69E7CC0];

      sub_1DD0DB47C();
      v74 = OUTLINED_FUNCTION_27_24();
      v75(v74);
      sub_1DD0DB68C();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v76 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v76, qword_1EDE57E00);
      v77 = sub_1DD0DD8EC();
      v78 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v78))
      {
        v79 = OUTLINED_FUNCTION_151();
        *v79 = 134217984;
        *(v79 + 4) = *(v73 + 16);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        OUTLINED_FUNCTION_92_0();
      }

      v85 = OUTLINED_FUNCTION_20();
      v86(v85);

      goto LABEL_27;
    case 2u:
      sub_1DD0DB60C();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v22 + 352) = v30;
      *v30 = v31;
      v30[1] = sub_1DCE085B8;
      goto LABEL_7;
    case 3u:
      v32 = *(v22 + 48);
      sub_1DD0DB4FC();
      if (!v32)
      {
        v54 = OUTLINED_FUNCTION_17_29();
        v55(v54);
        sub_1DD0DB6AC();
        v56 = OUTLINED_FUNCTION_20();
        v57(v56);
        goto LABEL_27;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v22 + 384) = v33;
      *v33 = v34;
      v33[1] = sub_1DCE086B4;
LABEL_7:
      OUTLINED_FUNCTION_142();

      result = sub_1DCE09C60(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      break;
    default:
      v24 = *(v22 + 40);
      sub_1DD0DB5DC();
      v25 = *(v24 + 16);
      *(v22 + 368) = v25;
      v26 = MEMORY[0x1E69E7CC0];
      *(v22 + 400) = 0;
      *(v22 + 408) = v26;
      if (v25)
      {
        *(v22 + 416) = *(*(v22 + 40) + 40);

        v27 = swift_task_alloc();
        *(v22 + 424) = v27;
        *v27 = v22;
        OUTLINED_FUNCTION_11_47();
LABEL_12:
        *(v28 + 8) = v29;
        OUTLINED_FUNCTION_5_69();
        OUTLINED_FUNCTION_142();

        result = sub_1DCE0A0A0(v48, v49, v50, v51, v52);
      }

      else
      {
        v58 = *(v22 + 112);
        v59 = *(v22 + 120);
        v60 = *(v22 + 96);
        v61 = *(v22 + 104);

        sub_1DD0DB47C();
        (*(v61 + 16))(v58, v59, v60);
        sub_1DD0DB6BC();
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v62 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v62, qword_1EDE57E00);
        v63 = MEMORY[0x1E69E7CC0];

        v64 = sub_1DD0DD8EC();
        v65 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_5(v65))
        {
          v66 = OUTLINED_FUNCTION_151();
          *v66 = 134217984;
          v67 = *(v63 + 16);

          *(v66 + 4) = v67;

          OUTLINED_FUNCTION_15_8();
          _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
          OUTLINED_FUNCTION_92_0();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        (*(*(v22 + 104) + 8))(*(v22 + 120), *(v22 + 96));
LABEL_27:
        OUTLINED_FUNCTION_1_82();

        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_142();

        result = v88(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      }

      break;
  }

  return result;
}

uint64_t sub_1DCE085B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE086B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE087B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = *(v22 + 504);
  sub_1DD0DB5AC();
  if (v23)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v24 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);
    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v26))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v27, v28, "Building UserWantedToProceed variant of SystemOffered");
      OUTLINED_FUNCTION_80();
    }

    v29 = (v22 + 224);
    v68 = *(v22 + 272);
    v30 = (v22 + 208);
    v31 = (v22 + 200);
    v66 = *(v22 + 312);
    v67 = *(v22 + 200);

    sub_1DD0DB74C();
    v32 = OUTLINED_FUNCTION_26_23();
    v33(v32);
    sub_1DD0DB73C();
    v34 = OUTLINED_FUNCTION_25_18();
    v35(v34);
    sub_1DD0DB58C();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v36 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v38))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v39, v40, "Building basic variant of SystemOffered");
      OUTLINED_FUNCTION_80();
    }

    v29 = (v22 + 192);
    v68 = *(v22 + 272);
    v30 = (v22 + 168);
    v31 = (v22 + 160);
    v66 = *(v22 + 312);
    v67 = *(v22 + 160);

    sub_1DD0DB65C();
    v41 = OUTLINED_FUNCTION_26_23();
    v42(v41);
    sub_1DD0DB64C();
    v43 = OUTLINED_FUNCTION_25_18();
    v44(v43);
    sub_1DD0DB57C();
  }

  v45 = *v31;
  v46 = *v30;
  v48 = *(v22 + 264);
  v47 = *(v22 + 272);
  v49 = *(v22 + 232);
  v50 = *(v22 + 240);
  (*(v46 + 8))(*v29, v45);
  (*(v50 + 16))(v48, v47, v49);
  sub_1DD0DB4EC();
  (*(v50 + 8))(v47, v49);
  v51 = OUTLINED_FUNCTION_20();
  v52(v51);
  v53 = OUTLINED_FUNCTION_17_29();
  v54(v53);
  sub_1DD0DB6AC();
  v55 = OUTLINED_FUNCTION_20();
  v56(v55);
  OUTLINED_FUNCTION_1_82();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, v66, v67, v68, a20, a21, a22);
}

uint64_t sub_1DCE08B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v24 = v22[18];
  v23 = v22[19];
  v25 = v22[16];
  v26 = v22[17];
  (*(v22[36] + 16))(v22[38], v22[37], v22[35]);
  sub_1DD0DB5FC();
  (*(v26 + 16))(v24, v23, v25);
  sub_1DD0DB6CC();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v27 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v27, qword_1EDE57E00);
  v28 = sub_1DD0DD8EC();
  v29 = sub_1DD0DE6DC();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v22[36];
  v31 = v22[37];
  v33 = v22[35];
  v34 = v22[19];
  v35 = v22[16];
  v36 = v22[17];
  if (v30)
  {
    v37 = OUTLINED_FUNCTION_50_0();
    *v37 = 0;
    _os_log_impl(&dword_1DCAFC000, v28, v29, "Built SystemPrompted.", v37, 2u);
    OUTLINED_FUNCTION_80();
  }

  (*(v32 + 8))(v31, v33);
  (*(v36 + 8))(v34, v35);
  OUTLINED_FUNCTION_1_82();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE08D4C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v2 + 432) = v6;
  *(v2 + 440) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE08E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v24 = v23[54];
  v25 = *(v24 + 16);
  v26 = *(v23[51] + 16);
  if (__OFADD__(v26, v25))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v23[51];
  if (!isUniquelyReferenced_nonNull_native || v26 + v25 > *(v22 + 24) >> 1)
  {
    sub_1DCE194BC();
    v22 = v28;
  }

  if (!*(v24 + 16))
  {

    if (!v25)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  if ((*(v22 + 24) >> 1) - *(v22 + 16) < v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  swift_arrayInitWithCopy();

  if (v25)
  {
    v30 = *(v22 + 16);
    v31 = __OFADD__(v30, v25);
    v32 = v30 + v25;
    if (v31)
    {
      __break(1u);
      return result;
    }

    *(v22 + 16) = v32;
  }

LABEL_11:
  v33 = v23[50] + 1;
  v23[50] = v33;
  v23[51] = v22;
  if (v33 == v23[46])
  {

    sub_1DD0DB47C();
    v34 = OUTLINED_FUNCTION_27_24();
    v35(v34);
    sub_1DD0DB6BC();
    if (qword_1EDE4F900 == -1)
    {
LABEL_13:
      v36 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);

      v37 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v38))
      {
        v39 = OUTLINED_FUNCTION_151();
        *v39 = 134217984;
        v40 = *(v22 + 16);

        *(v39 + 4) = v40;

        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
        OUTLINED_FUNCTION_92_0();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      (*(v23[13] + 8))(v23[15], v23[12]);
      OUTLINED_FUNCTION_1_82();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_142();

      return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    }

LABEL_25:
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    goto LABEL_13;
  }

  v23[52] = *(v23[5] + 16 * v33 + 40);

  v46 = swift_task_alloc();
  v23[53] = v46;
  *v46 = v23;
  OUTLINED_FUNCTION_11_47();
  *(v47 + 8) = v48;
  OUTLINED_FUNCTION_5_69();
  OUTLINED_FUNCTION_142();

  return sub_1DCE0A0A0(v49, v50, v51, v52, v53);
}

uint64_t sub_1DCE091D4()
{
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v7 + 488) = v6;
  *(v7 + 496) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE09304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = 0;
  v74 = *(v22[61] + 16);
  v25 = v22[57];
  v24 = v22[58];
  while (v74 != v23)
  {
    v26 = v22[38];
    v28 = v22[35];
    v27 = v22[36];
    v29 = v22[32];
    v30 = v22[30];
    a16 = v22[29];
    a17 = v22[31];
    v31 = v22[24];
    a18 = v25;
    a19 = v23;
    v33 = v22[21];
    v32 = v22[22];
    a15 = v22[20];
    v34 = v22[61] + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23;
    sub_1DD0DB65C();
    (*(v27 + 16))(v26, v34, v28);
    sub_1DD0DB64C();
    sub_1DD0DB5AC();
    (*(v33 + 16))(v31, v32, a15);
    v25 = a18;
    sub_1DD0DB57C();
    (*(v30 + 16))(a17, v29, a16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DCE196A4();
      v25 = v42;
    }

    v35 = *(v25 + 16);
    if (v35 >= *(v25 + 24) >> 1)
    {
      sub_1DCE196A4();
      v25 = v43;
    }

    v36 = v22[31];
    v38 = v22[29];
    v37 = v22[30];
    v40 = v22[21];
    v39 = v22[22];
    v41 = v22[20];
    (*(v37 + 8))(v22[32], v38);
    (*(v40 + 8))(v39, v41);
    *(v25 + 16) = v35 + 1;
    (*(v37 + 32))(v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, v36, v38);
    v23 = a19 + 1;
    v24 = v25;
  }

  v44 = v22[56] + 1;
  v22[57] = v25;
  v22[58] = v24;
  v22[56] = v44;
  if (v44 == v22[47])
  {
    v45 = v22[10];
    v46 = v22[11];
    v47 = v22[8];
    v48 = v22[9];

    sub_1DD0DB47C();
    (*(v48 + 16))(v45, v46, v47);
    sub_1DD0DB68C();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v49 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v49, qword_1EDE57E00);
    v50 = sub_1DD0DD8EC();
    v51 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v51))
    {
      v52 = OUTLINED_FUNCTION_151();
      *v52 = 134217984;
      *(v52 + 4) = *(v24 + 16);
      _os_log_impl(&dword_1DCAFC000, v50, v45, "Built SystemGaveOptions with %ld choices.", v52, 0xCu);
      OUTLINED_FUNCTION_92_0();
    }

    v53 = v22[11];
    v54 = v22[8];
    v55 = v22[9];

    (*(v55 + 8))(v53, v54);

    OUTLINED_FUNCTION_1_82();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_142();

    return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, v74, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v22[59] = *(v22[5] + 16 * v44 + 40);

    v65 = swift_task_alloc();
    v22[60] = v65;
    *v65 = v22;
    OUTLINED_FUNCTION_10_50();
    *(v66 + 8) = v67;
    OUTLINED_FUNCTION_5_69();
    OUTLINED_FUNCTION_142();

    return sub_1DCE0A0A0(v68, v69, v70, v71, v72);
  }
}

uint64_t sub_1DCE09744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = v22[2];
  (*(v22[41] + 8))(v22[43], v22[40]);
  sub_1DD0DB6EC();
  OUTLINED_FUNCTION_13_1();
  (*(v24 + 8))(v23);
  OUTLINED_FUNCTION_2_70();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE09888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = v22[2];
  (*(v22[17] + 8))(v22[19], v22[16]);
  sub_1DD0DB6EC();
  OUTLINED_FUNCTION_13_1();
  (*(v24 + 8))(v23);
  OUTLINED_FUNCTION_2_70();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE099CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = v22[2];
  (*(v22[13] + 8))(v22[15], v22[12]);
  sub_1DD0DB6EC();
  OUTLINED_FUNCTION_13_1();
  (*(v24 + 8))(v23);
  OUTLINED_FUNCTION_2_70();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE09B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = v22[2];
  (*(v22[9] + 8))(v22[11], v22[8]);
  sub_1DD0DB6EC();
  OUTLINED_FUNCTION_13_1();
  (*(v24 + 8))(v23);

  OUTLINED_FUNCTION_2_70();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE09C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22[3] = a4;
  v22[4] = a5;
  v22[2] = a1;
  v28 = swift_task_alloc();
  v22[5] = v28;
  *v28 = v22;
  v28[1] = sub_1DCE09D2C;

  return sub_1DCE0A0A0(a2, a3, a4, a5, a6);
}

uint64_t sub_1DCE09D2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_1DCE09E4C()
{
  OUTLINED_FUNCTION_125();
  v29 = v0;
  v1 = v0[6];
  if (*(v1 + 16) == 1)
  {
    v2 = v0[2];
    v3 = sub_1DD0DB44C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_32_19();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);

  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6EC();
  v9 = OUTLINED_FUNCTION_5(v8);
  v10 = v0[6];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_83();
    v28 = v12;
    *v11 = 134218242;
    *(v11 + 4) = *(v1 + 16);

    *(v11 + 12) = 2080;
    v13 = sub_1DD0DB44C();
    v14 = MEMORY[0x1E12A6960](v10, v13);
    v16 = sub_1DCB10E9C(v14, v15, &v28);

    *(v11 + 14) = v16;
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v22 = v0[6];
  v24 = v0[3];
  v23 = v0[4];
  sub_1DCE0A9A0();
  swift_allocError();
  *v25 = v24;
  v25[1] = v23;
  v25[2] = v22;
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_32_19();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_1DCE0A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_1DD0DB44C();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  v5[23] = swift_task_alloc();
  type metadata accessor for NLProducerResult(0);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE0A1C4, 0, 0);
}

void sub_1DCE0A1C4()
{
  OUTLINED_FUNCTION_125();
  v16 = v0;
  sub_1DCC17CDC(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  if (*(v0 + 88))
  {
    v1 = *(v0 + 96);
    *(v0 + 32) = *(v0 + 80);
    *(v0 + 48) = v1;
    *(v0 + 16) = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 200) = v2;
    *v2 = v3;
    v2[1] = sub_1DCE0A47C;
    OUTLINED_FUNCTION_32_19();

    __asm { BRAA            X8, X16 }
  }

  sub_1DCB16DB0(v0 + 64, &qword_1ECCA74F8, &unk_1DD10DCC0);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v6 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);

  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = OUTLINED_FUNCTION_151();
    v12 = OUTLINED_FUNCTION_83();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1DCB10E9C(v10, v9, &v15);
    _os_log_impl(&dword_1DCAFC000, v7, v8, "Cannot find graph producing items for %s. Event will be skipped", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_32_19();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1DCE0A47C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE0A564()
{
  OUTLINED_FUNCTION_125();
  v22 = v0;
  sub_1DCE0A9F4(v0[24], v0[23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v4 = v0[24];
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    v8 = *(v6 + 32);
    v8(v5, v0[23], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7500, &unk_1DD0F8B70);
    v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DD0E07C0;
    v8(v3 + v9, v5, v7);
    sub_1DCE0AA58(v4);
    sub_1DCE0AAB4(v0 + 2);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v2 = v0[23];
    sub_1DCE0AA58(v0[24]);
    sub_1DCE0AAB4(v0 + 2);
    v3 = *v2;
LABEL_5:

    v10 = v0[1];

    return v10(v3);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v12 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);

  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = v0[16];
    v15 = v0[17];
    v17 = OUTLINED_FUNCTION_151();
    v18 = OUTLINED_FUNCTION_83();
    v21 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1DCB10E9C(v16, v15, &v21);
    _os_log_impl(&dword_1DCAFC000, v13, v14, "Unable to produce NL representation for event '%s'", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v19 = v0[24];
  swift_willThrow();
  sub_1DCE0AA58(v19);
  sub_1DCE0AAB4(v0 + 2);

  OUTLINED_FUNCTION_29();

  return v20();
}

uint64_t sub_1DCE0A81C(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000037, 0x80000001DD11E910);
  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](0x4368706172672027, 0xEE003D3D746E756FLL);
  v4 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v4);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1DCE0A948()
{
  result = qword_1ECCA74E8;
  if (!qword_1ECCA74E8)
  {
    sub_1DD0DB6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA74E8);
  }

  return result;
}

unint64_t sub_1DCE0A9A0()
{
  result = qword_1ECCA74F0;
  if (!qword_1ECCA74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA74F0);
  }

  return result;
}

uint64_t sub_1DCE0A9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCE0AA58(uint64_t a1)
{
  v2 = type metadata accessor for NLProducerResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for NLHelper.UsoGraphProducingItems(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t initializeWithCopy for NLHelper.UsoGraphProducingItems(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void *assignWithCopy for NLHelper.UsoGraphProducingItems(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for NLHelper.UsoGraphProducingItems(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for NLHelper.UsoGraphProducingItems(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for NLHelper.UsoGraphProducingItems(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1DCE0ACCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for NLContextUpdate(0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE0ADD4, 0, 0);
}

uint64_t sub_1DCE0ADD4()
{
  v1 = *(v0 + 120);
  if (*(v1 + 16))
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    if (!sub_1DD0DEB3C())
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = *(v0 + 112);
    *(v8 + 32) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    goto LABEL_8;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_4:
  if (sub_1DCB08B14(*(*(v0 + 120) + 24)))
  {
    goto LABEL_7;
  }

  v3 = *(v0 + 160);
  v4 = *(v0 + 120);
  v5 = type metadata accessor for OutputElementContainer(0);
  sub_1DCB09910(v4 + *(v5 + 32), v3, &qword_1ECCA1820, &qword_1DD0E0F88);
  v6 = type metadata accessor for ResponseComponents(0);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v3, 1, v6);
  sub_1DCB0E9D8(v3, &qword_1ECCA1820, &qword_1DD0E0F88);
  if (v4 != 1)
  {
    goto LABEL_7;
  }

  sub_1DCB09910(*(v0 + 120) + *(v5 + 36), v0 + 16, &qword_1ECCA1830, &unk_1DD0E0F90);
  v7 = *(v0 + 24);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1830, &unk_1DD0E0F90);
  if (v7)
  {
    goto LABEL_7;
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = type metadata accessor for OutputGenerationManifest(0);
  sub_1DCB09910(v13 + *(v14 + 48), v11, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1DCB0E9D8(*(v0 + 136), &unk_1ECCA3270, &qword_1DD0E0F70);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "No presentation elements and no NL Context updates. No Output will be produced", v18, 2u);
      MEMORY[0x1E12A8390](v18, -1, -1);
    }

    v19 = *(v0 + 112);

    *(v19 + 32) = 0;
    *v19 = 0u;
    *(v19 + 16) = 0u;
  }

  else
  {
    sub_1DCD467D4(*(v0 + 136), *(v0 + 152));
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v20 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v20, qword_1EDE57E00);
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DCAFC000, v21, v22, "Sending NLContextUpdate with no user output", v23, 2u);
      MEMORY[0x1E12A8390](v23, -1, -1);
    }

    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 112);

    v27 = type metadata accessor for AceOutput(0);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    v26[3] = v27;
    v26[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
    v29 = v27[7];
    sub_1DCB46478(v24, boxed_opaque_existential_1Tm + v29);
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1Tm + v29, 0, 1, v25);
    v30 = v27[9];
    v31 = sub_1DD0DD10C();
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1Tm + v30, 1, 1, v31);
    v32 = v27[8];
    v33 = *MEMORY[0x1E69D0678];
    sub_1DD0DD15C();
    OUTLINED_FUNCTION_2();
    (*(v34 + 104))(boxed_opaque_existential_1Tm + v32, v33);
    boxed_opaque_existential_1Tm[15] = 0;
    *(boxed_opaque_existential_1Tm + 13) = 0u;
    *(boxed_opaque_existential_1Tm + 11) = 0u;
    sub_1DCB6C5E8(v0 + 72, (boxed_opaque_existential_1Tm + 11));
    *(boxed_opaque_existential_1Tm + v27[10]) = 0;
    *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
    *(boxed_opaque_existential_1Tm + 1) = 0u;
    *(boxed_opaque_existential_1Tm + 3) = 0u;
    *(boxed_opaque_existential_1Tm + 5) = 0u;
    *(boxed_opaque_existential_1Tm + 7) = 0u;
    boxed_opaque_existential_1Tm[9] = 0;
    *(boxed_opaque_existential_1Tm + 80) = 3;
    sub_1DCB41F98(v24);
  }

LABEL_8:

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DCE0B274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return sub_1DCE0ACCC(a1, a2, a3);
}

uint64_t static NLProducerResult.usoGraph(graph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DB44C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  OUTLINED_FUNCTION_0_69();

  return swift_storeEnumTagMultiPayload();
}

id static NLProducerResult.error(error:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_0_69();
  swift_storeEnumTagMultiPayload();

  return a1;
}

double static NLProducerResult.usoGraphOptions(options:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_0_69();
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t static NLProducerResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7508, &qword_1DD0F8C80);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v13 - v7;
  v9 = *(v6 + 56);
  sub_1DCE0A9F4(a1, &v13 - v7);
  sub_1DCE0A9F4(a2, &v8[v9]);
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (v11 == 1)
      {
LABEL_4:
        sub_1DCE0B5BC(&v8[v9]);
        sub_1DCE0B5BC(v8);
        return 1;
      }
    }

    else if (v11 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!v11)
  {
    goto LABEL_4;
  }

  sub_1DCE0B554(v8);
  return 0;
}

uint64_t sub_1DCE0B554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7508, &qword_1DD0F8C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCE0B5BC(uint64_t a1)
{
  v2 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of NLRepresentationProducing.makeNLRepresentation(responseId:eventId:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DCB193FC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *initializeBufferWithCopyOfBuffer for NLProducerResult(char *a1, char **a2)
{
  if ((*(*(type metadata accessor for NLProducerResult.ProducerResultBase(0) - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = *a2;
    v6 = v5;
    *a1 = v5;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for NLProducerResult(void **a1)
{
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v5 = *a1;

      break;
    case 1:

      break;
    case 0:
      v3 = sub_1DD0DB44C();
      v4 = *(*(v3 - 8) + 8);

      v4(a1, v3);
      break;
  }
}

void **initializeWithCopy for NLProducerResult(void **a1, void **a2)
{
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = *a2;
    v6 = v5;
    *a1 = v5;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for NLProducerResult(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_1DCE0B5BC(a1);
    type metadata accessor for NLProducerResult.ProducerResultBase(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v5 = *a2;
      v6 = v5;
      *a1 = v5;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
    }

    else
    {
      v7 = sub_1DD0DB44C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for NLProducerResult(void *a1, const void *a2)
{
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v5);
  }

  else
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for NLProducerResult(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCE0B5BC(a1);
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v5 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v5);
}

uint64_t sub_1DCE0BD68(uint64_t a1)
{
  result = type metadata accessor for NLProducerResult.ProducerResultBase(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1DCE0BDF4(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v6 = *a2;
    v7 = v6;
    *a1 = v6;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v8 = sub_1DD0DB44C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void sub_1DCE0BF18(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v6 = *a1;

      break;
    case 1:

      break;
    case 0:
      v4 = sub_1DD0DB44C();
      v5 = *(*(v4 - 8) + 8);

      v5(a1, v4);
      break;
  }
}

void **sub_1DCE0BFE0(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v6 = *a2;
    v7 = v6;
    *a1 = v6;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v8 = sub_1DD0DB44C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_1DCE0C0B8(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCE0B5BC(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v6 = *a2;
      v7 = v6;
      *a1 = v6;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
    }

    else
    {
      v8 = sub_1DD0DB44C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_1DCE0C1A0(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_1DD0DB44C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1DCE0C26C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCE0B5BC(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_1DD0DB44C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1DCE0C348(uint64_t a1)
{
  result = sub_1DD0DB44C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t NLRouterParse.nlRoutingDecision.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DD0DD12C();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

double NLRouterParse.input.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NLRouterParse(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t NLRouterParse.usoParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLRouterParse(0) + 24);

  return sub_1DCE0C4D4(v3, a1);
}

uint64_t sub_1DCE0C4D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *NLRouterParse.pommesResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRouterParse(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t NLRouterParse.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_4_1();
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD11E980);
  sub_1DD0DD12C();
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0x203A7475706E6920, 0xE800000000000000);
  v4 = type metadata accessor for NLRouterParse(0);

  v5 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v5);

  MEMORY[0x1E12A6780](0x737261506F737520, 0xEB00000000203A65);
  sub_1DCE0C4D4(v0 + *(v4 + 24), v1);
  v6 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v6);

  MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD11E9A0);
  v7 = *(v0 + *(v4 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7530, &qword_1DD0F8D30);
  v8 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v8);

  return 0;
}

uint64_t NLRouterParse.init(nlRoutingDecision:input:usoParse:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  sub_1DD0DD12C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 32))(a4, a1);
  v10 = type metadata accessor for NLRouterParse(0);
  v11 = (a4 + v10[5]);
  *v11 = v7;
  v11[1] = v8;
  result = sub_1DCE0C7F8(a3, a4 + v10[6]);
  *(a4 + v10[7]) = 0;
  return result;
}

uint64_t sub_1DCE0C7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NLRouterParse.init(nlRoutingDecision:input:usoParse:pommesResponse:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  sub_1DD0DD12C();
  OUTLINED_FUNCTION_2();
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for NLRouterParse(0);
  v13 = (a5 + v12[5]);
  *v13 = v9;
  v13[1] = v10;
  result = sub_1DCE0C7F8(a3, a5 + v12[6]);
  *(a5 + v12[7]) = a4;
  return result;
}

uint64_t NLRouterParse.InputCandidate.debugDescription.getter()
{
  MEMORY[0x1E12A6780](*v0, v0[1]);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0x2874786574;
}

uint64_t static NLRouterParse.InputCandidate.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC();
  }
}

uint64_t sub_1DCE0C994(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCE0CA1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCE0CABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE0C994(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCE0CAE8(uint64_t a1)
{
  v2 = sub_1DCE0CDE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE0CB24(uint64_t a1)
{
  v2 = sub_1DCE0CDE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCE0CB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE0CA1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCE0CB90(uint64_t a1)
{
  v2 = sub_1DCE0CE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE0CBCC(uint64_t a1)
{
  v2 = sub_1DCE0CE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NLRouterParse.InputCandidate.encode(to:)(void *a1)
{
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7538, &qword_1DD0F8D38);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7540, &qword_1DD0F8D40);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v16 - v10;
  v12 = *v1;
  v16[1] = v1[1];
  v16[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE0CDE4();
  sub_1DD0DF24C();
  sub_1DCE0CE38();
  sub_1DD0DEF7C();
  sub_1DD0DEFBC();
  v13 = OUTLINED_FUNCTION_12_44();
  v14(v13);
  return (*(v7 + 8))(v11, v5);
}

unint64_t sub_1DCE0CDE4()
{
  result = qword_1ECCA7548;
  if (!qword_1ECCA7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7548);
  }

  return result;
}

unint64_t sub_1DCE0CE38()
{
  result = qword_1ECCA7550;
  if (!qword_1ECCA7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7550);
  }

  return result;
}

void NLRouterParse.InputCandidate.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7558, &qword_1DD0F8D48);
  OUTLINED_FUNCTION_9();
  v40 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7560, &qword_1DD0F8D50);
  OUTLINED_FUNCTION_9();
  v41 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v38 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE0CDE4();
  sub_1DD0DF23C();
  if (v2)
  {
    goto LABEL_8;
  }

  v38[2] = v9;
  v39 = a1;
  v38[1] = v4;
  v16 = v42;
  v17 = sub_1DD0DEF5C();
  sub_1DCB547F8(v17, 0);
  v22 = v10;
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v27 = sub_1DD0DECAC();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v29 = &type metadata for NLRouterParse.InputCandidate;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v41 + 8))(v15, v22);
    a1 = v39;
LABEL_8:
    v37 = a1;
    goto LABEL_9;
  }

  if (v20 < (v21 >> 1))
  {
    sub_1DCB54800(v20 + 1, v21 >> 1, v18, v19, v20, v21);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      sub_1DCE0CE38();
      sub_1DD0DEEBC();
      v30 = sub_1DD0DEF0C();
      v32 = v31;
      swift_unknownObjectRelease();
      v33 = OUTLINED_FUNCTION_15_47();
      v34(v33);
      v35 = OUTLINED_FUNCTION_12_44();
      v36(v35);
      *v16 = v30;
      v16[1] = v32;
      v37 = v39;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      return;
    }

    v22 = v10;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DCE0D268(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD11EA10 == a2;
  if (v3 || (OUTLINED_FUNCTION_7_8(0xD000000000000011, 0x80000001DD11EA10) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_7_8(0x7475706E69, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65737261506F7375 && a2 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_7_8(0x65737261506F7375, 0xE800000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_11_48();
        if (a1 == v8 && a2 == v9)
        {

          return 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_7_8(v8, v9);

          if (v11)
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
}

uint64_t sub_1DCE0D380(char a1)
{
  result = 0x7475706E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x65737261506F7375;
      break;
    case 3:
      result = OUTLINED_FUNCTION_11_48();
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DCE0D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE0D268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE0D46C(uint64_t a1)
{
  v2 = sub_1DCE0E070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE0D4A8(uint64_t a1)
{
  v2 = sub_1DCE0E070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NLRouterParse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v51 - v5;
  v7 = sub_1DD0DD12C();
  OUTLINED_FUNCTION_9();
  v55 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7568, &qword_1DD0F8D58);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v54 = type metadata accessor for NLRouterParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  v56 = v19 - v18;
  v20 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1DCE0E070();
  v21 = v57;
  sub_1DD0DF23C();
  if (v21)
  {
    v22 = 0;
    v23 = v7;
    goto LABEL_4;
  }

  v57 = v6;
  LOBYTE(v59) = 0;
  OUTLINED_FUNCTION_3_81();
  sub_1DCE0E268(v24, v25, MEMORY[0x1E69D0318]);
  sub_1DD0DEF4C();
  v27 = *(v55 + 32);
  v28 = v56;
  v52 = v7;
  v27(v56, v13);
  v61 = 1;
  sub_1DCE0E0C4();
  OUTLINED_FUNCTION_6_52();
  sub_1DD0DEF4C();
  v29 = v60;
  v30 = v54;
  v31 = (v28 + *(v54 + 20));
  *v31 = v59;
  v31[1] = v29;
  type metadata accessor for USOParse(0);
  LOBYTE(v59) = 2;
  OUTLINED_FUNCTION_4_78();
  sub_1DCE0E268(v32, v33, &protocol conformance descriptor for USOParse);
  v34 = v57;
  sub_1DD0DEEFC();
  sub_1DCE0C7F8(v34, v28 + *(v30 + 24));
  v61 = 3;
  sub_1DCB5414C();
  OUTLINED_FUNCTION_6_52();
  sub_1DD0DEEFC();
  v23 = v52;
  if (v60 >> 60 == 15)
  {
    v37 = OUTLINED_FUNCTION_2_71();
    v38(v37);
    v39 = 0;
LABEL_9:
    v40 = v53;
    v41 = v56;
    *(v56 + *(v54 + 28)) = v39;
    sub_1DCE0E118(v41, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    return sub_1DCE0E2B0(v41, type metadata accessor for NLRouterParse);
  }

  sub_1DCE0E17C();
  OUTLINED_FUNCTION_26_6();
  sub_1DD0DD74C();
  v39 = sub_1DD0DE71C();
  if (v39)
  {
    v42 = OUTLINED_FUNCTION_2_71();
    v43(v42);
    v44 = OUTLINED_FUNCTION_13_46();
    sub_1DCB2C520(v44, v45);
    goto LABEL_9;
  }

  sub_1DCE0E1C0();
  swift_allocError();
  *v46 = 0xD000000000000045;
  *(v46 + 8) = 0x80000001DD11E9C0;
  v22 = 1;
  *(v46 + 16) = 1;
  swift_willThrow();
  v47 = OUTLINED_FUNCTION_13_46();
  sub_1DCB2C520(v47, v48);
  v49 = OUTLINED_FUNCTION_2_71();
  v50(v49);
LABEL_4:
  result = __swift_destroy_boxed_opaque_existential_1Tm(v58);
  if (v22)
  {
    v35 = v56;
    (*(v55 + 8))(v56, v23);
    v36 = v54;

    return sub_1DCB0E9D8(v35 + *(v36 + 24), &qword_1ECCA7E60, &unk_1DD0E8E20);
  }

  return result;
}

uint64_t NLRouterParse.encode(to:)(void *a1)
{
  v4 = v1;
  v30 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7588, &qword_1DD0F8D60);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE0E070();
  sub_1DD0DF24C();
  LOBYTE(v28) = 0;
  sub_1DD0DD12C();
  OUTLINED_FUNCTION_3_81();
  sub_1DCE0E268(v11, v12, MEMORY[0x1E69D0308]);
  OUTLINED_FUNCTION_14_44();
  sub_1DD0DEFFC();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  v13 = type metadata accessor for NLRouterParse(0);
  v14 = v4 + *(v13 + 20);
  v15 = *(v14 + 8);
  v28 = *v14;
  v29 = v15;
  sub_1DCE0E214();

  sub_1DD0DEFFC();

  LOBYTE(v28) = 2;
  type metadata accessor for USOParse(0);
  OUTLINED_FUNCTION_4_78();
  sub_1DCE0E268(v16, v17, &protocol conformance descriptor for USOParse);
  OUTLINED_FUNCTION_14_44();
  sub_1DD0DEFAC();
  v19 = *(v4 + *(v13 + 28));
  if (!v19)
  {
    return (*(v8 + 8))(v3, v6);
  }

  v20 = objc_opt_self();
  v28 = 0;
  v21 = v19;
  v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v28];
  v23 = v28;
  if (!v22)
  {
    v27 = v23;
    sub_1DD0DAE0C();

    swift_willThrow();
    return (*(v8 + 8))(v3, v6);
  }

  v24 = sub_1DD0DAF2C();
  v26 = v25;

  v28 = v24;
  v29 = v26;
  sub_1DCB51540();
  sub_1DD0DEFFC();
  (*(v8 + 8))(v3, v6);

  return sub_1DCB21A14(v24, v26);
}

uint64_t static NLRouterParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_26_6();
  type metadata accessor for USOParse(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75A0, &qword_1DD0F8D68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_4_1();
  if ((sub_1DD0DD11C() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for NLRouterParse(0);
  v19 = v18[5];
  v20 = *(v2 + v19);
  v21 = *(v2 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v24 = v18[6];
  v25 = *(v15 + 48);
  sub_1DCE0C4D4(v2 + v24, v3);
  sub_1DCE0C4D4(a2 + v24, v3 + v25);
  OUTLINED_FUNCTION_17_3(v3);
  if (!v23)
  {
    v26 = OUTLINED_FUNCTION_13_46();
    sub_1DCE0C4D4(v26, v27);
    OUTLINED_FUNCTION_17_3(v3 + v25);
    if (!v28)
    {
      sub_1DCC6D300(v3 + v25, v10);
      v30 = static USOParse.== infix(_:_:)(v14, v10);
      sub_1DCE0E2B0(v10, type metadata accessor for USOParse);
      sub_1DCE0E2B0(v14, type metadata accessor for USOParse);
      sub_1DCB0E9D8(v3, &qword_1ECCA7E60, &unk_1DD0E8E20);
      if (!v30)
      {
        return 0;
      }

      goto LABEL_19;
    }

    sub_1DCE0E2B0(v14, type metadata accessor for USOParse);
LABEL_15:
    sub_1DCB0E9D8(v3, &qword_1ECCA75A0, &qword_1DD0F8D68);
    return 0;
  }

  OUTLINED_FUNCTION_17_3(v3 + v25);
  if (!v23)
  {
    goto LABEL_15;
  }

  sub_1DCB0E9D8(v3, &qword_1ECCA7E60, &unk_1DD0E8E20);
LABEL_19:
  v31 = v18[7];
  v32 = *(v2 + v31);
  v33 = *(a2 + v31);
  if (v32)
  {
    if (v33)
    {
      sub_1DD0DD74C();
      v34 = v33;
      v35 = v32;
      v36 = sub_1DD0DE8EC();

      if (v36)
      {
        return 1;
      }
    }
  }

  else if (!v33)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1DCE0E070()
{
  result = qword_1ECCA7570;
  if (!qword_1ECCA7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7570);
  }

  return result;
}

unint64_t sub_1DCE0E0C4()
{
  result = qword_1ECCA7580;
  if (!qword_1ECCA7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7580);
  }

  return result;
}

uint64_t sub_1DCE0E118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterParse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCE0E17C()
{
  result = qword_1EDE461C0;
  if (!qword_1EDE461C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE461C0);
  }

  return result;
}

unint64_t sub_1DCE0E1C0()
{
  result = qword_1ECCA7CA0;
  if (!qword_1ECCA7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7CA0);
  }

  return result;
}

unint64_t sub_1DCE0E214()
{
  result = qword_1ECCA7598;
  if (!qword_1ECCA7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7598);
  }

  return result;
}

uint64_t sub_1DCE0E268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCE0E2B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for NLRouterParse(uint64_t *a1, uint64_t *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = a1 + v8;
  v13 = a2 + v8;
  v14 = type metadata accessor for USOParse(0);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v12, v13, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = sub_1DD0DB4BC();
    (*(*(v16 - 8) + 16))(v12, v13, v16);
    v17 = v14[5];
    v18 = sub_1DD0DB3EC();
    if (__swift_getEnumTagSinglePayload(&v13[v17], 1, v18))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
      memcpy(&v12[v17], &v13[v17], *(*(v19 - 8) + 64));
    }

    else
    {
      (*(*(v18 - 8) + 16))(&v12[v17], &v13[v17], v18);
      __swift_storeEnumTagSinglePayload(&v12[v17], 0, 1, v18);
    }

    v20 = v14[6];
    v21 = &v12[v20];
    v22 = &v13[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = v14[7];
    v25 = &v12[v24];
    v26 = &v13[v24];
    v25[4] = v26[4];
    *v25 = *v26;

    __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  }

  v27 = a3[7];
  v28 = *(a2 + v27);
  *(a1 + v27) = v28;
  v29 = v28;
  return a1;
}

void destroy for NLRouterParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD12C();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a1 + *(a2 + 24);
  v6 = type metadata accessor for USOParse(0);
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = sub_1DD0DB4BC();
    (*(*(v7 - 8) + 8))(v5, v7);
    v8 = *(v6 + 20);
    v9 = sub_1DD0DB3EC();
    if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v9))
    {
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
    }
  }

  v10 = *(a1 + *(a2 + 28));
}

uint64_t initializeWithCopy for NLRouterParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = type metadata accessor for USOParse(0);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v12, v13, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = sub_1DD0DB4BC();
    (*(*(v16 - 8) + 16))(v12, v13, v16);
    v17 = v14[5];
    v18 = sub_1DD0DB3EC();
    if (__swift_getEnumTagSinglePayload(&v13[v17], 1, v18))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
      memcpy(&v12[v17], &v13[v17], *(*(v19 - 8) + 64));
    }

    else
    {
      (*(*(v18 - 8) + 16))(&v12[v17], &v13[v17], v18);
      __swift_storeEnumTagSinglePayload(&v12[v17], 0, 1, v18);
    }

    v20 = v14[6];
    v21 = &v12[v20];
    v22 = &v13[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = v14[7];
    v25 = &v12[v24];
    v26 = &v13[v24];
    v25[4] = v26[4];
    *v25 = *v26;

    __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  }

  v27 = a3[7];
  v28 = *(a2 + v27);
  *(a1 + v27) = v28;
  v29 = v28;
  return a1;
}

uint64_t assignWithCopy for NLRouterParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];

  v10 = a3[6];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for USOParse(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v13);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (!EnumTagSinglePayload)
  {
    if (v15)
    {
      sub_1DCE0E2B0(v11, type metadata accessor for USOParse);
      goto LABEL_7;
    }

    v21 = sub_1DD0DB4BC();
    (*(*(v21 - 8) + 24))(v11, v12, v21);
    v22 = v13[5];
    v23 = sub_1DD0DB3EC();
    v24 = __swift_getEnumTagSinglePayload(&v11[v22], 1, v23);
    v25 = __swift_getEnumTagSinglePayload(&v12[v22], 1, v23);
    if (v24)
    {
      if (!v25)
      {
        (*(*(v23 - 8) + 16))(&v11[v22], &v12[v22], v23);
        __swift_storeEnumTagSinglePayload(&v11[v22], 0, 1, v23);
LABEL_16:
        v35 = v13[6];
        v36 = &v11[v35];
        v37 = &v12[v35];
        *v36 = *v37;
        *(v36 + 1) = *(v37 + 1);

        v38 = v13[7];
        v39 = &v11[v38];
        v40 = &v12[v38];
        v41 = *v40;
        v39[4] = v40[4];
        *v39 = v41;
        goto LABEL_17;
      }
    }

    else
    {
      v33 = *(v23 - 8);
      if (!v25)
      {
        (*(v33 + 24))(&v11[v22], &v12[v22], v23);
        goto LABEL_16;
      }

      (*(v33 + 8))(&v11[v22], v23);
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&v11[v22], &v12[v22], *(*(v34 - 8) + 64));
    goto LABEL_16;
  }

  if (v15)
  {
LABEL_7:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v11, v12, *(*(v20 - 8) + 64));
    goto LABEL_17;
  }

  v16 = sub_1DD0DB4BC();
  (*(*(v16 - 8) + 16))(v11, v12, v16);
  v17 = v13[5];
  v18 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(&v12[v17], 1, v18))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&v11[v17], &v12[v17], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(*(v18 - 8) + 16))(&v11[v17], &v12[v17], v18);
    __swift_storeEnumTagSinglePayload(&v11[v17], 0, 1, v18);
  }

  v26 = v13[6];
  v27 = &v11[v26];
  v28 = &v12[v26];
  *v27 = *v28;
  *(v27 + 1) = *(v28 + 1);
  v29 = v13[7];
  v30 = &v11[v29];
  v31 = &v12[v29];
  v32 = *v31;
  v30[4] = v31[4];
  *v30 = v32;

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
LABEL_17:
  v42 = a3[7];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  *(a1 + v42) = v44;
  v45 = v44;

  return a1;
}

uint64_t initializeWithTake for NLRouterParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for USOParse(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v8, v9, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = sub_1DD0DB4BC();
    (*(*(v12 - 8) + 32))(v8, v9, v12);
    v13 = v10[5];
    v14 = sub_1DD0DB3EC();
    if (__swift_getEnumTagSinglePayload(&v9[v13], 1, v14))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
      memcpy(&v8[v13], &v9[v13], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 32))(&v8[v13], &v9[v13], v14);
      __swift_storeEnumTagSinglePayload(&v8[v13], 0, 1, v14);
    }

    *&v8[v10[6]] = *&v9[v10[6]];
    v16 = v10[7];
    v17 = &v8[v16];
    v18 = &v9[v16];
    v17[4] = v18[4];
    *v17 = *v18;
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for NLRouterParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  v12 = a3[6];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for USOParse(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v15);
  v17 = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (!EnumTagSinglePayload)
  {
    if (v17)
    {
      sub_1DCE0E2B0(v13, type metadata accessor for USOParse);
      goto LABEL_7;
    }

    v23 = sub_1DD0DB4BC();
    (*(*(v23 - 8) + 40))(v13, v14, v23);
    v24 = v15[5];
    v25 = sub_1DD0DB3EC();
    v26 = __swift_getEnumTagSinglePayload(&v13[v24], 1, v25);
    v27 = __swift_getEnumTagSinglePayload(&v14[v24], 1, v25);
    if (v26)
    {
      if (!v27)
      {
        (*(*(v25 - 8) + 32))(&v13[v24], &v14[v24], v25);
        __swift_storeEnumTagSinglePayload(&v13[v24], 0, 1, v25);
LABEL_16:
        v33 = v15[6];
        v34 = &v13[v33];
        v35 = &v14[v33];
        v37 = *v35;
        v36 = *(v35 + 1);
        *v34 = v37;
        *(v34 + 1) = v36;

        v38 = v15[7];
        v39 = &v13[v38];
        v40 = &v14[v38];
        *v39 = *v40;
        v39[4] = v40[4];
        goto LABEL_17;
      }
    }

    else
    {
      v31 = *(v25 - 8);
      if (!v27)
      {
        (*(v31 + 40))(&v13[v24], &v14[v24], v25);
        goto LABEL_16;
      }

      (*(v31 + 8))(&v13[v24], v25);
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&v13[v24], &v14[v24], *(*(v32 - 8) + 64));
    goto LABEL_16;
  }

  if (v17)
  {
LABEL_7:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v13, v14, *(*(v22 - 8) + 64));
    goto LABEL_17;
  }

  v18 = sub_1DD0DB4BC();
  (*(*(v18 - 8) + 32))(v13, v14, v18);
  v19 = v15[5];
  v20 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(&v14[v19], 1, v20))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&v13[v19], &v14[v19], *(*(v21 - 8) + 64));
  }

  else
  {
    (*(*(v20 - 8) + 32))(&v13[v19], &v14[v19], v20);
    __swift_storeEnumTagSinglePayload(&v13[v19], 0, 1, v20);
  }

  *&v13[v15[6]] = *&v14[v15[6]];
  v28 = v15[7];
  v29 = &v13[v28];
  v30 = &v14[v28];
  v29[4] = v30[4];
  *v29 = *v30;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
LABEL_17:
  v41 = a3[7];
  v42 = *(a1 + v41);
  *(a1 + v41) = *(a2 + v41);

  return a1;
}

void sub_1DCE0F398(uint64_t a1)
{
  sub_1DD0DD12C();
  if (v1 <= 0x3F)
  {
    sub_1DCE0F470(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_1DCE0F470(uint64_t a1)
{
  if (!qword_1EDE4D858[0])
  {
    type metadata accessor for USOParse(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, qword_1EDE4D858);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLRouterParse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCE0F5C4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCE0F674()
{
  result = qword_1ECCA75A8;
  if (!qword_1ECCA75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75A8);
  }

  return result;
}

unint64_t sub_1DCE0F6CC()
{
  result = qword_1ECCA75B0;
  if (!qword_1ECCA75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75B0);
  }

  return result;
}

unint64_t sub_1DCE0F724()
{
  result = qword_1ECCA75B8;
  if (!qword_1ECCA75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75B8);
  }

  return result;
}

unint64_t sub_1DCE0F77C()
{
  result = qword_1ECCA75C0;
  if (!qword_1ECCA75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75C0);
  }

  return result;
}

unint64_t sub_1DCE0F7D4()
{
  result = qword_1ECCA75C8;
  if (!qword_1ECCA75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75C8);
  }

  return result;
}

unint64_t sub_1DCE0F82C()
{
  result = qword_1ECCA75D0;
  if (!qword_1ECCA75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75D0);
  }

  return result;
}

unint64_t sub_1DCE0F884()
{
  result = qword_1ECCA75D8;
  if (!qword_1ECCA75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75D8);
  }

  return result;
}

unint64_t sub_1DCE0F8DC()
{
  result = qword_1ECCA75E0;
  if (!qword_1ECCA75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75E0);
  }

  return result;
}

unint64_t sub_1DCE0F934()
{
  result = qword_1ECCA75E8;
  if (!qword_1ECCA75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75E8);
  }

  return result;
}

void SiriEnvironment.nlRoutingDecision.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for NLRoutingDecisionProvider();
  a1[3] = OUTLINED_FUNCTION_0_70(&qword_1EDE47C00);
  sub_1DD0DCA7C();
}

void NLRoutingDecisionProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  NLRoutingDecisionProvider.init(storage:)(a1);
}

void NLRoutingDecisionProvider.init(storage:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_4_79();
  OUTLINED_FUNCTION_5_70(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F8, &qword_1DD0F9278);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void NLRoutingDecisionProvider.__allocating_init(genAIFallbackSuppressReason:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)(a1);
}

void sub_1DCE0FB9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v6 - v4;
  sub_1DCB706C8(a1, &v6 - v4);
  sub_1DCB70738(v5);
}

void sub_1DCE0FC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7600, &unk_1DD0F93E0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v7 - v4;
  (*(v6 + 16))(&v7 - v4, a1);
  sub_1DCE0FD5C(v5);
}

void sub_1DCE0FD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7600, &unk_1DD0F93E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v7 - v5;
  swift_beginAccess();
  (*(v3 + 16))(v6, a1, v2);
  sub_1DD0DCF8C();
}

void sub_1DCE0FEF4()
{
  type metadata accessor for NLRoutingDecisionProvider();

    ;
  }
}

void sub_1DCE0FF40()
{
  type metadata accessor for NLRoutingDecisionProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCE10098()
{

  return swift_deallocClassInstance();
}

uint64_t static NotificationTemplates.genericHandoffNotification()()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1DD0DB0FC();
  v0[17] = v1;
  v0[18] = *(v1 - 8);
  v0[19] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DCE101A8()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ECCA1320 != -1)
  {
    OUTLINED_FUNCTION_3_82(&qword_1ECCA1320);
  }

  sub_1DCB28B08(&xmmword_1ECCD2698, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    _s11SiriKitFlow11DeviceStatePAAE10siriLocale10Foundation0G0Vvg_0();
    if (qword_1EDE46628 != -1)
    {
      OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
    }

    v1 = *(v0 + 152);
    v2 = qword_1EDE46630;
    sub_1DCB4E718(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    sub_1DCE11290(v1, v2);
  }

  sub_1DCAFF9E8((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = sub_1DCDAE468();
  *(v0 + 160) = v3;
  v4 = OUTLINED_FUNCTION_9_1();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_1DCE10374;

  return v6(48, v3);
}

uint64_t sub_1DCE10374()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[22] = v1;

  if (!v1)
  {
    v5[23] = v0;
    v5[24] = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE104A4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];
  v3 = v0[23];
  v2 = v0[24];

  return v1(v2, v3);
}

uint64_t sub_1DCE10514()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

void static NotificationTemplates.genericHandoffNotification(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;
  sub_1DD0DCF8C();
}

double sub_1DCE10634()
{
  qword_1ECCD26B8 = 0;
  result = 0.0;
  xmmword_1ECCD2698 = 0u;
  unk_1ECCD26A8 = 0u;
  return result;
}

uint64_t sub_1DCE1064C()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1DCE106D8;

  return static NotificationTemplates.genericHandoffNotification()();
}

uint64_t sub_1DCE106D8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[5] = v1;

  if (!v1)
  {
    v5[6] = v0;
    v5[7] = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void static NotificationTemplates.generatePersonalDomainsActivityNotificationTitle(device:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v8);
  sub_1DCB28B08(a1, v11, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = v11[1];
  *(v9 + 32) = v11[0];
  *(v9 + 48) = v10;
  *(v9 + 64) = v12;
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE108DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCE10900, 0, 0);
}

uint64_t sub_1DCE10900()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = OUTLINED_FUNCTION_9_1();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DCE109C0;

  return v5(&unk_1DD0F94B0, v2);
}

uint64_t sub_1DCE109C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 72) = v8;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE10ACC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DCE10B64;

  return static NotificationTemplates.generatePersonalDomainsActivityNotificationTitle(device:)();
}

uint64_t sub_1DCE10B64()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t static NotificationTemplates.generatePersonalDomainsActivityNotificationTitle(device:)()
{
  OUTLINED_FUNCTION_42();
  v0[27] = v1;
  v2 = sub_1DD0DB0FC();
  v0[28] = v2;
  v0[29] = *(v2 - 8);
  v0[30] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCE10D60()
{
  v1 = *(v0 + 216);
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 40))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = OUTLINED_FUNCTION_15_9();
    v5 = v4(v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_1DCB28B08(*(v0 + 216), v0 + 176, &qword_1ECCA8AB0, &qword_1DD0E23E0);
    if (*(v0 + 200))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
      v6 = OUTLINED_FUNCTION_15_9();
      v7(v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      if (v9)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v10 = OUTLINED_FUNCTION_15_9();
        sub_1DCC5FCB4(v10, v11, 0xD000000000000017, v12);
      }

LABEL_9:
      if (qword_1ECCA1320 != -1)
      {
        OUTLINED_FUNCTION_3_82(&qword_1ECCA1320);
      }

      sub_1DCB28B08(&xmmword_1ECCD2698, v0 + 96, qword_1ECCA7608, &unk_1DD0F9448);
      if (*(v0 + 120))
      {
        sub_1DCAFF9E8((v0 + 96), v0 + 56);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        sub_1DCDAC354(v2);
      }

      _s11SiriKitFlow11DeviceStatePAAE10siriLocale10Foundation0G0Vvg_0();
      if (qword_1EDE46628 != -1)
      {
        OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
      }

      v14 = *(v0 + 240);
      v15 = qword_1EDE46630;
      sub_1DCB4E718(v0 + 136);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      sub_1DCE11290(v14, v15);
    }

    v13 = v0 + 176;
  }

  else
  {
    v13 = v0 + 16;
  }

  sub_1DCB16D50(v13, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  goto LABEL_9;
}

uint64_t sub_1DCE11088()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[33] = v1;

  if (!v1)
  {
    v5[34] = v0;
    v5[35] = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE111B8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v1 = v0[1];
  v3 = v0[34];
  v2 = v0[35];

  return v1(v2, v3);
}

uint64_t sub_1DCE11228()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCE11290(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_1DD0DB0FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v12[3] = v4;
  v12[4] = &protocol witness table for RefreshableDeviceState;
  v12[0] = a2;
  sub_1DCB17CA0(v12, v11);
  (*(v6 + 16))(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1DCAFF9E8(v11, v10 + 16);
  (*(v6 + 32))(v10 + v9, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for CATTemplateExecutor();
  swift_allocObject();
  sub_1DCC6FD14(sub_1DCE116DC, v10);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE11448()
{
  OUTLINED_FUNCTION_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_8_1();

  return sub_1DCE1064C();
}

uint64_t sub_1DCE114F0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_8_1();

  return sub_1DCE108DC(v6, v7, v8, v9, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for NotificationTemplates(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCE11648()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCE10ACC(v2, v3);
}

void sub_1DCE116DC()
{
  v1 = *(sub_1DD0DB0FC() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_1DCC71ACC((v0 + 16), v2);
}

__n128 Observe.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t static Observe._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v59 = sub_1DD0DDAEC();
  v58 = OUTLINED_FUNCTION_9_54();
  v4 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9();
  v60 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v48 - v8;
  OUTLINED_FUNCTION_15_2();
  v64 = v10;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_9();
  v62 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v48 - v15;
  v52 = type metadata accessor for _FlowPlanEvent(255, a2, v17, v18);
  OUTLINED_FUNCTION_8_56();
  v51 = swift_getWitnessTable();
  v19 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9();
  v56 = v20;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_72(v24, &v71);
  v49 = swift_getWitnessTable();
  v67 = v19;
  v68 = v24;
  v69 = v49;
  v70 = MEMORY[0x1E69E7288];
  v25 = sub_1DD0DDA6C();
  OUTLINED_FUNCTION_9();
  v61 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_1_84(v29);
  v53 = swift_getWitnessTable();
  v55 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9();
  v57 = v30;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_34_0();
  v50 = v33;
  type metadata accessor for InputBinding(0, a2, v34, v35);
  sub_1DCD96540();
  v65 = v66;
  OUTLINED_FUNCTION_10_51();
  sub_1DD0DEC1C();

  OUTLINED_FUNCTION_14_45();
  v67 = v36 & 0xFFFFFFFFFFFFLL | 0x3C65000000000000;
  v68 = 0xE800000000000000;
  v37 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v37);

  OUTLINED_FUNCTION_13_47();
  sub_1DCF0E65C(v67, v68, v59, v58);

  v38 = v63;
  sub_1DD0DDC8C();
  (*(v60 + 8))(v9, v4);
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = v38;
  v40 = v48[1];
  sub_1DD0DDC3C();

  (*(v62 + 8))(v16, v11);
  v41 = v48[0];
  sub_1DD0DDC9C();
  (*(v56 + 8))(v40, v19);
  OUTLINED_FUNCTION_10_51();
  sub_1DD0DEC1C();

  OUTLINED_FUNCTION_14_45();
  v67 = v42 & 0xFFFFFFFFFFFFLL | 0x3C65000000000000;
  v68 = 0xE800000000000000;
  v43 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v43);

  OUTLINED_FUNCTION_12_45();
  v44 = v50;
  sub_1DCF0E65C(v67, v68, v25, v53);

  (*(v61 + 8))(v41, v25);
  v45 = v55;
  swift_getWitnessTable();
  v46 = sub_1DD0DDBFC();
  (*(v57 + 8))(v44, v45);
  return v46;
}

uint64_t sub_1DCE11CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for _FlowPlanEvent(0, a2, v4, v5);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DCE11D7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

void ObserveResolvable.body.getter(uint64_t a1)
{
  sub_1DD0DE97C();

  nullsub_1();
}

void static ObserveResolvable._buildEventPublisher(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DD0DE97C();
  sub_1DD0DDB6C();
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_15_2();
  swift_getWitnessTable();
  sub_1DD0DDA8C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v10);
  type metadata accessor for _FlowPlanEvent(255, v5, v11, v12);
  OUTLINED_FUNCTION_8_56();
  swift_getWitnessTable();
  v13 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_72(v17, &v28);
  v27[2] = v13;
  v27[3] = v17;
  v27[4] = swift_getWitnessTable();
  v27[5] = MEMORY[0x1E69E7288];
  sub_1DD0DDA6C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_1_84(v20);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_31(WitnessTable);
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v24);
  v27[1] = *a1;
  type metadata accessor for Resolvable(0, a2, v25, v26);
  Resolvable.resolvedValuePublisher.getter(v27);
}

uint64_t sub_1DCE12404@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1DD0DE97C();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  type metadata accessor for _FlowPlanEvent(0, v5, v6, v7);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DCE124C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

__n128 Observe4.init(_:_:_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  result = *a1;
  v9 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 40) = v5;
  *(a5 + 48) = v6;
  *(a5 + 56) = v7;
  return result;
}

void Observe4.body.getter(void *a1)
{
  v2[0] = a1[2];
  v2[1] = sub_1DD0DE97C();
  v2[2] = sub_1DD0DE97C();
  v2[3] = sub_1DD0DE97C();
  OUTLINED_FUNCTION_17_30(0, v1, v2);
  nullsub_1();
}

void static Observe4._buildEventPublisher(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v63[4] = a8;
  v63[3] = a7;
  v69[1] = a6;
  v64[1] = a5;
  v63[0] = a4;
  v69[0] = a3;
  v66 = a9;
  v67 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_22_28();
  v65 = sub_1DD0DDB6C();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_31(WitnessTable);
  v11 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_34_0();
  v64[0] = v14;
  v15 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_22_28();
  v63[2] = sub_1DD0DDB6C();
  v63[1] = swift_getWitnessTable();
  v16 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v19);
  v54 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_22_28();
  sub_1DD0DDB6C();
  swift_getWitnessTable();
  v60 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v22);
  OUTLINED_FUNCTION_22_28();
  sub_1DD0DDAEC();
  v23 = OUTLINED_FUNCTION_9_54();
  OUTLINED_FUNCTION_27_10(v23, v63);
  sub_1DD0DDA8C();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_34_0();
  v68 = v26;
  v28 = v27;
  v59 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v71 = v28;
  v72 = v60;
  v73 = v16;
  v74 = v11;
  v75 = v59;
  v76 = v58;
  v77 = v57;
  v78 = v56;
  v29 = sub_1DD0DDA2C();
  OUTLINED_FUNCTION_18_34(v29, &v68);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v32);
  v71 = a2;
  v72 = v54;
  v73 = v15;
  v74 = v67;
  v62 = OUTLINED_FUNCTION_17_30(255, v33, &v71);
  type metadata accessor for _FlowPlanEvent(255, v62, v34, v35);
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_10(v36, v69);
  v37 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_72(v41, v64);
  v55 = swift_getWitnessTable();
  v71 = v37;
  v72 = v41;
  v73 = v55;
  v74 = MEMORY[0x1E69E7288];
  v42 = sub_1DD0DDA6C();
  OUTLINED_FUNCTION_18_34(v42, &v65);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_1_84(v45);
  v46 = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_10(v46, &v66);
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v49);
  type metadata accessor for InputBinding(0, a2, v50, v51);
  sub_1DCD96540();
  v70 = v71;
  sub_1DD0DDC8C();

  v71 = a1[5];
  type metadata accessor for Resolvable(0, v69[0], v52, v53);
  Resolvable.resolvedValuePublisher.getter(&v70);
}

uint64_t sub_1DCE12F54@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  (*(*(TupleTypeMetadata - 8) + 16))(a6, a1, TupleTypeMetadata);
  type metadata accessor for _FlowPlanEvent(0, TupleTypeMetadata, v9, v10);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCE130A8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE13128(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE13200(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCE1323C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DCE13370(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_1DCE133B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  sub_1DD0DCF8C();
}

void sub_1DCE13440(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE134BC(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t sub_1DCE13520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DCE13560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OfferBehaviorFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DCE135FC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 128);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_53(AssociatedTypeWitness, v6, v7, v8);
  OUTLINED_FUNCTION_2();
  return (*(v9 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCE136C0(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 128);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_53(AssociatedTypeWitness, v6, v7, v8);
  OUTLINED_FUNCTION_2();
  (*(v9 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1DCE1378C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1DCE137F4(a1, a2, a3, a4);
  return v8;
}

char *sub_1DCE137F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  *(v4 + 2) = 0xD000000000000029;
  *(v4 + 3) = 0x80000001DD113770;
  (*(*(*(v8 + 80) - 8) + 32))(&v4[*(v8 + 112)], a1, *(v8 + 80));
  *(v4 + 4) = a3;
  *(v4 + 5) = a4;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a2, &v4[*(v9 + 120)]);
  OUTLINED_FUNCTION_66();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_53(AssociatedTypeWitness, v11, v12, v13);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t OfferBehaviorFlowFrame.__allocating_init(childFlowFrame:offerResponseProvider:renderer:)(uint64_t a1, void *a2, void *a3)
{
  v8 = *(v3 + 80);
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_5_3();
  (*(v10 + 16))(v4, a1, v8);
  sub_1DCB17CA0(a3, v17);
  sub_1DCB17CA0(a2, v16);
  v13 = swift_allocObject();
  sub_1DCAFF9E8(v16, v13 + 16);
  v14 = sub_1DCE1378C(v4, v17, sub_1DCC9E1E0, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  (*(v10 + 8))(a1, v8);
  return v14;
}

uint64_t OfferBehaviorFlowFrame.__allocating_init(childFlowFrame:offerResponse:renderer:)(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(v3 + 80);
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_5_3();
  (*(v10 + 16))(v4, a1, v8);
  sub_1DCB17CA0(a3, v15);
  v13 = sub_1DCE1378C(v4, v15, sub_1DCC9E268, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v10 + 8))(a1, v8);
  return v13;
}

uint64_t sub_1DCE13B88(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v31 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_6_53(AssociatedTypeWitness, v9, v10, v11);
  OUTLINED_FUNCTION_0_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_10_2();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v30 - v22;
  sub_1DCE135FC(&v30 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v14 + 8))(v23, v12);
  if (EnumCaseMultiPayload == 2 && (v25 = *(a2 + *(type metadata accessor for SiriKitFlowFrameInput(0) + 20))) != 0)
  {
    *v19 = v25;
    swift_storeEnumTagMultiPayload();
    sub_1DCE136C0(v19);
    v26 = MEMORY[0x1E699F740];
  }

  else
  {
    v26 = MEMORY[0x1E699F738];
  }

  v27 = *v26;
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v28 + 104))(v7, v27);
  swift_storeEnumTagMultiPayload();
  v31(v7);
  return sub_1DCB0E9D8(v7, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCE13DF4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  OUTLINED_FUNCTION_10_2();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v50 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13, v14);
  v51 = &v50 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = _s11SiriKitFlow5StateOMa_0(0, AssociatedTypeWitness, v17, v18);
  OUTLINED_FUNCTION_0_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_10_2();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v50 - v29;
  sub_1DCE135FC(&v50 - v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v36 = swift_allocObject();
      v36[2] = v53;
      v36[3] = v54;
      v36[4] = v3;
      sub_1DD0DCF8C();
    }

    type metadata accessor for SiriKitFlowFrameInput(0);
    v32 = v51;
    sub_1DD0DB32C();
    swift_storeEnumTagMultiPayload();
    v53(v32);
    sub_1DCB0E9D8(v32, &qword_1ECCA9BF0, &qword_1DD0EA250);
    return (*(v21 + 8))(v30, v19);
  }

  else
  {
    switch(*v30)
    {
      case 1:
        v34 = v26;
        v35 = 2;
        break;
      case 2:
        OUTLINED_FUNCTION_66();
        type metadata accessor for SiriKitFlowFrameInput(0);
        sub_1DD0DCF8C();
      case 3:
        v34 = v26;
        v35 = 1;
        break;
      default:
        v38 = v8;
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v39 = sub_1DD0DD8FC();
        v40 = __swift_project_value_buffer(v39, qword_1EDE57E00);
        v41 = *(v39 - 8);
        (*(v41 + 16))(v12, v40, v39);
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v39);
        sub_1DCBCF6C8(v12, v8);
        if (__swift_getEnumTagSinglePayload(v8, 1, v39) == 1)
        {
          sub_1DCB0E9D8(v8, &unk_1ECCA7470, &qword_1DD0E16E0);
        }

        else
        {
          v42 = sub_1DD0DD8EC();
          v43 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *v44 = 136315650;
            v45 = sub_1DD0DEC3C();
            v47 = sub_1DCB10E9C(v45, v46, &v55);

            *(v44 + 4) = v47;
            *(v44 + 12) = 2048;
            *(v44 + 14) = 182;
            *(v44 + 22) = 2080;
            *(v44 + 24) = sub_1DCB10E9C(0xD00000000000003CLL, 0x80000001DD11EAF0, &v55);
            OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v48, v49, "FatalError at %s:%lu - %s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_80();
          }

          (*(v41 + 8))(v38, v39);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003CLL, 0x80000001DD11EAF0);
    }

    __swift_storeEnumTagSinglePayload(v34, v35, 2, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    sub_1DCE136C0(v26);
    type metadata accessor for SiriKitFlowFrameInput(0);
    v37 = v51;
    sub_1DD0DB32C();
    swift_storeEnumTagMultiPayload();
    v53(v37);
    return sub_1DCB0E9D8(v37, &qword_1ECCA9BF0, &qword_1DD0EA250);
  }
}

uint64_t sub_1DCE14454(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  MEMORY[0x1EEE9AC00](v10, v10);
  v12 = (&v16 - v11);
  if ((a2 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((a5 + *(*a5 + 120)), *(a5 + *(*a5 + 120) + 24));
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    sub_1DD0DCF8C();
  }

  *v12 = a1;
  swift_storeEnumTagMultiPayload();
  v13 = a1;
  a3(v12);
  return sub_1DCB0E9D8(v12, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCE145EC(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v12 - v8);
  if (a2)
  {
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    v10 = a1;
  }

  else
  {
    type metadata accessor for SiriKitFlowFrameInput(0);
    sub_1DD0DB30C();
    swift_storeEnumTagMultiPayload();
  }

  a3(v9);
  return sub_1DCB0E9D8(v9, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCE146F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = _s11SiriKitFlow5StateOMa_0(0, AssociatedTypeWitness, v5, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v12 - v9, a2, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v10, 0, 2, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return sub_1DCE136C0(v10);
}

uint64_t sub_1DCE1481C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  OUTLINED_FUNCTION_10_2();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = _s11SiriKitFlow5StateOMa_0(0, AssociatedTypeWitness, v12, v13);
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v36 - v19;
  sub_1DCE135FC(&v36 - v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v16 + 8))(v20, v14);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v25 = sub_1DD0DD8FC();
    v26 = __swift_project_value_buffer(v25, qword_1EDE57E00);
    v27 = *(v25 - 8);
    (*(v27 + 16))(v10, v26, v25);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v25);
    sub_1DCBCF6C8(v10, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v25) == 1)
    {
      sub_1DCB0E9D8(v6, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v30 = 136315650;
        v31 = sub_1DD0DEC3C();
        v33 = sub_1DCB10E9C(v31, v32, &v37);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2048;
        *(v30 + 14) = 188;
        *(v30 + 22) = 2080;
        *(v30 + 24) = sub_1DCB10E9C(0xD000000000000041, 0x80000001DD11EBC0, &v37);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v34, v35, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v27 + 8))(v6, v25);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000041, 0x80000001DD11EBC0);
  }

  type metadata accessor for OfferBehaviorFlowFrameResult(0, AssociatedTypeWitness, v21, v22);
  OUTLINED_FUNCTION_2();
  return (*(v23 + 32))(a1, v20);
}

char *OfferBehaviorFlowFrame.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 112)], *(v1 + 80));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v3 + 120)]);
  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_53(AssociatedTypeWitness, v7, v8, v9);
  OUTLINED_FUNCTION_2();
  (*(v10 + 8))(&v0[v5]);
  return v0;
}

uint64_t OfferBehaviorFlowFrame.__deallocating_deinit()
{
  OfferBehaviorFlowFrame.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCE14DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE14EE8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *sub_1DCE14F64(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v7 + 2) >> v9;
      v13 = 1;
      if (v12 >= 0xFF)
      {
        v13 = 2;
      }

      if (!v12)
      {
        v13 = 0;
      }

      if (v12 <= 0xFFFE)
      {
        v11 = v13;
      }

      else
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (*(v6 + 80) > 7u || v10 > 0x18 || (*(v6 + 80) & 0x100000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (__swift_getEnumTagSinglePayload(a2, 2, v5))
  {
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v18 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v18 > 0xFFFE)
        {
          v16 = 4;
        }

        else
        {
          v19 = 1;
          if (v18 >= 0xFF)
          {
            v19 = 2;
          }

          if (v18)
          {
            v16 = v19;
          }

          else
          {
            v16 = 0;
          }
        }
      }

      else
      {
        v16 = 1;
      }

      v8 += v16;
    }

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }
}

uint64_t sub_1DCE1515C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __swift_getEnumTagSinglePayload(a1, 2, v3);
  if (!result)
  {
    v5 = *(*(v3 - 8) + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_1DCE151D8(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 2, v5);
  v7 = *(v5 - 8);
  if (EnumTagSinglePayload)
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8 <= 1)
    {
      if (v9 <= 3)
      {
        v12 = (~(-1 << (8 * v9)) - v8 + 2) >> (8 * v9);
        if (v12 > 0xFFFE)
        {
          v10 = 4;
        }

        else
        {
          v13 = 1;
          if (v12 >= 0xFF)
          {
            v13 = 2;
          }

          if (v12)
          {
            v10 = v13;
          }

          else
          {
            v10 = 0;
          }
        }
      }

      else
      {
        v10 = 1;
      }

      v9 += v10;
    }

    return memcpy(a1, a2, v9);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }
}

void *sub_1DCE15308(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 2, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 2, v5);
  v8 = *(v5 - 8);
  if (!EnumTagSinglePayload)
  {
    if (v7)
    {
      v11 = v8 + 8;
      (*(v8 + 8))(a1, v5);
      v9 = *(v11 + 76);
      v10 = *(v11 + 56);
      goto LABEL_6;
    }

    (*(v8 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v7)
  {
    (*(v8 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
LABEL_6:
  if (v9 <= 1)
  {
    if (v10 <= 3)
    {
      v13 = (~(-1 << (8 * v10)) - v9 + 2) >> (8 * v10);
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
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

    v10 += v12;
  }

  return memcpy(a1, a2, v10);
}

void *sub_1DCE154A0(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 2, v5);
  v7 = *(v5 - 8);
  if (EnumTagSinglePayload)
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8 <= 1)
    {
      if (v9 <= 3)
      {
        v12 = (~(-1 << (8 * v9)) - v8 + 2) >> (8 * v9);
        if (v12 > 0xFFFE)
        {
          v10 = 4;
        }

        else
        {
          v13 = 1;
          if (v12 >= 0xFF)
          {
            v13 = 2;
          }

          if (v12)
          {
            v10 = v13;
          }

          else
          {
            v10 = 0;
          }
        }
      }

      else
      {
        v10 = 1;
      }

      v9 += v10;
    }

    return memcpy(a1, a2, v9);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }
}

void *sub_1DCE155D0(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 2, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 2, v5);
  v8 = *(v5 - 8);
  if (!EnumTagSinglePayload)
  {
    if (v7)
    {
      v11 = v8 + 8;
      (*(v8 + 8))(a1, v5);
      v9 = *(v11 + 76);
      v10 = *(v11 + 56);
      goto LABEL_6;
    }

    (*(v8 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v7)
  {
    (*(v8 + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
LABEL_6:
  if (v9 <= 1)
  {
    if (v10 <= 3)
    {
      v13 = (~(-1 << (8 * v10)) - v9 + 2) >> (8 * v10);
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
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

    v10 += v12;
  }

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCE15768(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 3)
        {
          return EnumTagSinglePayload - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
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

  return v6 + (v7 | v15) + 1;
}

void sub_1DCE15934(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}