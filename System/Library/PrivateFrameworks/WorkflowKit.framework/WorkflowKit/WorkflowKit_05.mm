uint64_t sub_1CA2E1C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_112_0();
  sub_1CA2E1DD4(&qword_1EC443DE0, &qword_1CA982298, MEMORY[0x1E69E07F8], v12);
  (*(v14 + 8))(v11, v13);
  sub_1CA2E9314(v10, &unk_1EC443DE8, &unk_1CA9822A0);
  OUTLINED_FUNCTION_110();
  v15();
  OUTLINED_FUNCTION_99_1();

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_122();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1CA2E1CF8()
{
  OUTLINED_FUNCTION_14();
  sub_1CA2E9314(*(v0 + 88), &unk_1EC443DE8, &unk_1CA9822A0);
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_23();
  v2(v1);
  OUTLINED_FUNCTION_149_0();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2E1DD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1CA949B68();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1CA949C18();
  (*(v10 + 104))(v14, *a3, v8);
  v15 = sub_1CA949C08();
  sub_1CA2E3308(v15);
  v17 = v16;
  v18 = sub_1CA949C38();
  sub_1CA2E3308(v18);
  v20 = sub_1CA553E14(v19, v17);
  v21 = sub_1CA949C28();
  sub_1CA2E3308(v21);
  v23 = v22;
  if (*(v20 + 16) || *(v22 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E08, &qword_1CA9822B0);
    v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1CA981310;
    (*(v10 + 16))(v25 + v24, v14, v8);
    v26 = sub_1CA2E7968(v25);
    (*(v10 + 8))(v14, v8);
    *a4 = v20;
    a4[1] = v23;
    a4[2] = v26;
    v27 = MEMORY[0x1E69E0828];
  }

  else
  {
    (*(v10 + 8))(v14, v8);

    v27 = MEMORY[0x1E69E0820];
  }

  v28 = *v27;
  sub_1CA949B98();
  OUTLINED_FUNCTION_0_1();
  return (*(v29 + 104))(a4, v28);
}

void ToolKitSeedSnapshotDelta.impliedChangeset.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v52 = v2;
  sub_1CA949AB8();
  OUTLINED_FUNCTION_1_0();
  v49 = v4;
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v8 = sub_1CA949BE8();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  v15 = *(v1 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v20 = v19 - v18;
  sub_1CA949B68();
  OUTLINED_FUNCTION_1_0();
  v54 = v22;
  v55 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_19();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v53 = &v49 - v27;
  v51 = v1;
  sub_1CA949C18();
  OUTLINED_FUNCTION_122_0();
  if (swift_dynamicCast())
  {
    (*(v10 + 32))(v25, v14, v8);
    v28 = MEMORY[0x1E69E07F8];
  }

  else
  {
    v29 = v50;
    if (!swift_dynamicCast())
    {
      sub_1CA94D5F8();
      __break(1u);
      return;
    }

    (*(v49 + 32))(v25, v7, v29);
    v28 = MEMORY[0x1E69E07E8];
  }

  v31 = v54;
  v30 = v55;
  (*(v54 + 104))(v25, *v28, v55);
  (*(v16 + 8))(v20, v15);
  (*(v31 + 32))(v53, v25, v30);
  sub_1CA949C08();
  swift_getAssociatedTypeWitness();
  v32 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_105_0();
  v33 = sub_1CA94C218();

  v56 = v33;
  OUTLINED_FUNCTION_105_0();
  sub_1CA94C208();
  swift_getWitnessTable();
  v50 = OUTLINED_FUNCTION_120_0(&v56, v32);
  sub_1CA949C38();
  OUTLINED_FUNCTION_105_0();
  v34 = sub_1CA94C218();

  v56 = v34;
  v56 = OUTLINED_FUNCTION_120_0(&v56, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443DF8, &unk_1CA9875F0);
  sub_1CA25C3BC(&qword_1EC443E00, &qword_1EC443DF8, &unk_1CA9875F0, MEMORY[0x1E69E6508]);
  v35 = sub_1CA94C928();
  sub_1CA949C28();
  v36 = sub_1CA94C218();

  v56 = v36;
  v37 = OUTLINED_FUNCTION_120_0(&v56, v32);
  if ((sub_1CA94C938() & 1) != 0 && !*(v37 + 16))
  {
    (*(v54 + 8))(v53, v55);

    v47 = *MEMORY[0x1E69E0820];
    sub_1CA949B98();
    OUTLINED_FUNCTION_0_1();
    (*(v48 + 104))(v52, v47);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E08, &qword_1CA9822B0);
    v38 = v54;
    v39 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1CA981310;
    (*(v38 + 16))(v40 + v39, v53, v55);
    v41 = sub_1CA2E7968(v40);
    v42 = OUTLINED_FUNCTION_188();
    v43(v42);
    v44 = v52;
    *v52 = v35;
    v44[1] = v37;
    v44[2] = v41;
    v45 = *MEMORY[0x1E69E0828];
    sub_1CA949B98();
    OUTLINED_FUNCTION_0_1();
    (*(v46 + 104))(v44, v45);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA2E25F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2E9390;

  return static LaunchServicesChangesetProducer.waitForQuiescence()();
}

uint64_t sub_1CA2E2680()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2E9390;

  return LaunchServicesChangesetProducer.produceChangeset()();
}

uint64_t LinkChangesetProducer.produceChangeset()()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E10, &qword_1CA9822C0);
  v1[3] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[4] = v4;
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA949B98();
  v1[6] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E18, &qword_1CA9822C8);
  v1[9] = v7;
  OUTLINED_FUNCTION_18_0(v7);
  v1[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v0;
  v1[11] = v8;
  v1[12] = v9;
  v10 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA2E285C()
{
  OUTLINED_FUNCTION_59_0();
  sub_1CA94A6B8();
  sub_1CA2E92BC(v0[11], v0[10], &qword_1EC443E18, &qword_1CA9822C8);
  v1 = sub_1CA949AB8();
  OUTLINED_FUNCTION_159_0(v1);
  if (v2)
  {
    v3 = v0[10];
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[2];
    OUTLINED_FUNCTION_157_1(v0[11]);
    OUTLINED_FUNCTION_157_1(v3);
    (*(v5 + 104))(v6, *MEMORY[0x1E69E0818], v4);
    OUTLINED_FUNCTION_99_1();

    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_150();

    __asm { BRAA            X1, X16 }
  }

  v9 = swift_task_alloc();
  v0[14] = v9;
  sub_1CA2E7CAC(&qword_1EDB9F7F0, MEMORY[0x1E69E0738], MEMORY[0x1E69E0730]);
  *v9 = v0;
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_150();

  return MEMORY[0x1EEE50390]();
}

uint64_t sub_1CA2E2A50()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_39();
    (*(v7 + 8))();
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2E2B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_112_0();
  sub_1CA2E1DD4(&qword_1EC443E10, &qword_1CA9822C0, MEMORY[0x1E69E07E8], v12);
  (*(v14 + 8))(v11, v13);
  sub_1CA2E9314(v10, &qword_1EC443E18, &qword_1CA9822C8);
  OUTLINED_FUNCTION_110();
  v15();
  OUTLINED_FUNCTION_99_1();

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_122();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1CA2E2C58()
{
  OUTLINED_FUNCTION_14();
  sub_1CA2E9314(*(v0 + 88), &qword_1EC443E18, &qword_1CA9822C8);
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_23();
  v2(v1);
  OUTLINED_FUNCTION_149_0();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2E2D34()
{
  nullsub_1();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA2E2D94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2E9390;

  return LinkChangesetProducer.produceChangeset()();
}

uint64_t sub_1CA2E2E2C(uint64_t a1)
{
  result = MEMORY[0x1CCAA1770](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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
    sub_1CA94C218();
    sub_1CA368948(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_1CA2E2EEC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_5();
  sub_1CA2E7CAC(v10, v11, MEMORY[0x1E69DB0C8]);
  v12 = OUTLINED_FUNCTION_52_0();
  MEMORY[0x1CCAA1770](v12);
  v13 = *(v1 + 16);
  if (v13)
  {
    v14 = *(v4 + 16);
    OUTLINED_FUNCTION_68_0();
    v16 = v1 + v15;
    v17 = *(v4 + 72);
    do
    {
      v14(v8, v16, v2);
      OUTLINED_FUNCTION_187();
      sub_1CA368A90();
      v18 = OUTLINED_FUNCTION_188();
      v19(v18);
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA2E3068(uint64_t a1)
{
  sub_1CA25B410(a1);
  type metadata accessor for ActionOutput();
  sub_1CA2E7CAC(&unk_1EC444130, type metadata accessor for ActionOutput, &unk_1CA984298);
  v2 = OUTLINED_FUNCTION_52_0();
  v8 = MEMORY[0x1CCAA1770](v2);
  result = sub_1CA25B410(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return v8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCAA22D0](i, a1);
      v6 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1CA368E60(&v7, v6);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_1CA2E3190()
{
  OUTLINED_FUNCTION_142();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
  v3 = sub_1CA25C3BC(&qword_1EC4440C8, &qword_1EC4440C0, &qword_1CA983470, &unk_1CA986D18);
  v4 = 0;
  v14 = MEMORY[0x1CCAA1770](v1, v2, v3);
  OUTLINED_FUNCTION_82_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v4;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      memcpy(__dst, (*(v0 + 56) + 112 * (v11 | (v10 << 6))), sizeof(__dst));
      sub_1CA2E92BC(__dst, v13, &qword_1EC4440C0, &qword_1CA983470);
      sub_1CA369440(__src, __dst);
      memcpy(v13, __src, sizeof(v13));
      sub_1CA2E9314(v13, &qword_1EC4440C0, &qword_1CA983470);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(v0 + 64 + 8 * v10);
    ++v4;
    if (v7)
    {
      v4 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1CA2E3308(uint64_t a1)
{
  v2 = 0;
  v14 = MEMORY[0x1CCAA1770](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_82_0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    do
    {
      v8 = v2;
LABEL_7:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_1CA94C218();
      sub_1CA368948(v13, v11, v12);
    }

    while (v5);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1CA2E340C()
{
  OUTLINED_FUNCTION_142();
  v2 = sub_1CA2E9268();
  result = MEMORY[0x1CCAA1770](v1, &type metadata for SemanticSymbol, v2);
  v4 = 0;
  v12 = result;
  v5 = *(v0 + 16);
  for (i = (v0 + 56); ; i += 4)
  {
    if (v5 == v4)
    {

      return v12;
    }

    if (v4 >= *(v0 + 16))
    {
      break;
    }

    ++v4;
    v7 = *i;
    v9 = *(i - 3);
    v8 = *(i - 2);
    v10 = *(i - 4);
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA3696E4(v11, v9, v8, v10, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2E34F4()
{
  OUTLINED_FUNCTION_142();
  type metadata accessor for WFGlyphCharacter(0);
  sub_1CA2E7CAC(&qword_1EC444008, type metadata accessor for WFGlyphCharacter, &unk_1CA9810B8);
  v1 = OUTLINED_FUNCTION_52_0();
  v2 = MEMORY[0x1CCAA1770](v1);
  v8 = v2;
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1CA369928(v7, *(v0 + v4));
      v4 += 2;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t OSVersionChangesetProducer.produceChangeset()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA2E35D4()
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
  OUTLINED_FUNCTION_153_0();
  if (v0)
  {
    OUTLINED_FUNCTION_5();
    goto LABEL_15;
  }

  v4 = v1[2];
  v3 = v1[3];
  v5 = sub_1CA94A7E8();
  if (v3)
  {
    if (v4 == v5 && v3 == v6)
    {

LABEL_13:
      v9 = MEMORY[0x1E69E0820];
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_134();
    v8 = sub_1CA94D7F8();

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = MEMORY[0x1E69E0818];
LABEL_14:
  v10 = v1[4];
  v11 = *v9;
  sub_1CA949B98();
  OUTLINED_FUNCTION_0_1();
  (*(v12 + 104))(v10, v11);
  OUTLINED_FUNCTION_3_6();
LABEL_15:

  return v2();
}

uint64_t sub_1CA2E371C()
{
  sub_1CA94A7F8();
  sub_1CA2E7CAC(&unk_1EC441D30, MEMORY[0x1E69DAC08], MEMORY[0x1E69DAC00]);
  return sub_1CA94A7B8();
}

uint64_t sub_1CA2E37A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2E9390;

  return OSVersionChangesetProducer.produceChangeset()(a1);
}

uint64_t LocaleChangesetProducer.produceChangeset()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA2E3854()
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  OUTLINED_FUNCTION_153_0();
  if (v0)
  {
    OUTLINED_FUNCTION_5();
  }

  else
  {
    v3 = sub_1CA2E2E2C(*(v1 + 16));
    if (qword_1EC442CC8 != -1)
    {
      OUTLINED_FUNCTION_75_1(&qword_1EC442CC8);
    }

    v4 = *(v1 + 24);
    v5 = sub_1CA2E434C(v3, qword_1EC442CD0);

    sub_1CA949B98();
    OUTLINED_FUNCTION_0_1();
    v7 = MEMORY[0x1E69E0820];
    if ((v5 & 1) == 0)
    {
      v7 = MEMORY[0x1E69E0818];
    }

    (*(v6 + 104))(v4, *v7);
    OUTLINED_FUNCTION_3_6();
  }

  return v2();
}

uint64_t sub_1CA2E3980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA94A7A8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CA2E39B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2E9390;

  return LocaleChangesetProducer.produceChangeset()(a1);
}

uint64_t sub_1CA2E3A48()
{
  result = sub_1CA2E3A68();
  qword_1EC442CD0 = result;
  return result;
}

uint64_t sub_1CA2E3A68()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v75 = &v72 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v72 - v10;
  v12 = sub_1CA948D78();
  v82 = v12;
  v77 = *MEMORY[0x1E69E10E8];
  sub_1CA949C58();
  v13 = sub_1CA949F68();
  v14 = sub_1CA94CC08();
  v15 = os_log_type_enabled(v13, v14);
  v76 = v1;
  v74 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v80[0] = v17;
    *v16 = 136315138;
    v18 = sub_1CA94C218();
    v19 = MEMORY[0x1CCAA14D0](v18, MEMORY[0x1E69E6158]);
    v20 = v0;
    v22 = v21;

    v23 = sub_1CA26B54C(v19, v22, v80);
    v0 = v20;
    v1 = v76;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_1CA256000, v13, v14, "Preferred languages: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1CCAA4BF0](v17, -1, -1);
    MEMORY[0x1CCAA4BF0](v16, -1, -1);
  }

  v78 = *(v1 + 8);
  v78(v11, v0);
  v24 = [objc_opt_self() sharedPreferences];
  v25 = sub_1CA2E91F8(v24);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    sub_1CA949C58();
    sub_1CA94C218();
    v29 = sub_1CA949F68();
    v30 = sub_1CA94CC08();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v80[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1CA26B54C(v27, v28, v80);
      _os_log_impl(&dword_1CA256000, v29, v30, "Siri language: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1CCAA4BF0](v32, -1, -1);
      MEMORY[0x1CCAA4BF0](v31, -1, -1);
    }

    v33 = (v78)(v9, v0);
    v80[0] = v27;
    v80[1] = v28;
    MEMORY[0x1EEE9AC00](v33);
    *(&v72 - 2) = v80;
    sub_1CA94C218();
    v34 = sub_1CA2BFD14(sub_1CA2E9370, (&v72 - 4), v12);
    v72 = 0;

    if (v34)
    {
    }

    else
    {
      swift_beginAccess();
      sub_1CA69ADB0();
      v35 = *(v82 + 16);
      sub_1CA69AF5C(v35);
      v36 = v82;
      *(v82 + 16) = v35 + 1;
      v37 = v36 + 16 * v35;
      *(v37 + 32) = v27;
      *(v37 + 40) = v28;
      v82 = v36;
      swift_endAccess();
    }
  }

  else
  {
    v72 = 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = objc_opt_self();
  v73 = [v39 bundleForClass_];
  v40 = [v73 localizations];
  if (!v40)
  {
    sub_1CA94C658();
    v40 = sub_1CA94C648();
  }

  v41 = sub_1CA94C658();
  v42 = v75;
  sub_1CA949C58();
  sub_1CA94C218();
  v43 = sub_1CA949F68();
  v44 = sub_1CA94CC08();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = v0;
    v47 = swift_slowAlloc();
    v80[0] = v47;
    *v45 = 136315138;
    v48 = MEMORY[0x1CCAA14D0](v41, MEMORY[0x1E69E6158]);
    v50 = v49;

    v51 = sub_1CA26B54C(v48, v50, v80);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_1CA256000, v43, v44, "Foundation localizations: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v52 = v47;
    v0 = v46;
    MEMORY[0x1CCAA4BF0](v52, -1, -1);
    MEMORY[0x1CCAA4BF0](v45, -1, -1);

    v53 = v75;
    v54 = v46;
  }

  else
  {

    v53 = v42;
    v54 = v0;
  }

  v78(v53, v54);
  v81 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  while (*(v82 + 16))
  {
    sub_1CA94C218();
    v55 = sub_1CA94C648();

    v56 = [v39 preferredLocalizationsFromArray:v40 forPreferences:v55];

    v57 = sub_1CA94C658();
    sub_1CA342798(v57);
    swift_beginAccess();
    sub_1CA6A6BB0(0);
    swift_endAccess();
  }

  v58 = v74;
  sub_1CA949C58();
  v59 = sub_1CA949F68();
  v60 = sub_1CA94CC38();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v79[0] = v62;
    *v61 = 136315138;
    swift_beginAccess();
    sub_1CA94C218();
    v63 = v0;
    v64 = sub_1CA94C908();
    v66 = v65;

    v67 = sub_1CA26B54C(v64, v66, v79);

    *(v61 + 4) = v67;
    _os_log_impl(&dword_1CA256000, v59, v60, "ToolKitIndexingPolicy Preferred localizations: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1CCAA4BF0](v62, -1, -1);
    MEMORY[0x1CCAA4BF0](v61, -1, -1);

    v68 = v58;
    v69 = v63;
  }

  else
  {

    v68 = v58;
    v69 = v0;
  }

  v78(v68, v69);
  swift_beginAccess();
  v70 = v81;

  return v70;
}

uint64_t static ToolKitIndexingPolicy.preferredLocaleIds.getter()
{
  if (qword_1EC442CC8 != -1)
  {
    OUTLINED_FUNCTION_75_1(&qword_1EC442CC8);
  }

  return sub_1CA94C218();
}

uint64_t sub_1CA2E434C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;
  result = sub_1CA94C218();
  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C458();
        v17 = sub_1CA94D968();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_1CA94D7F8();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1CA2E450C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_1CA94D328();
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1CA94D328();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7 < v5)
  {
    return;
  }

  if (v4)
  {
    sub_1CA94C218();
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    OUTLINED_FUNCTION_52_0();
    sub_1CA94C948();
    v2 = v33;
    v8 = v34;
    v9 = v35;
    v10 = v36;
    v11 = v37;
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    v8 = v2 + 56;
    v9 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(v12 << v14);
    }

    else
    {
      v15 = v12;
    }

    v11 = v15 & *(v2 + 56);
    sub_1CA94C218();
    v10 = 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v29 = v8;
  v16 = (v9 + 64) >> 6;
  v30 = v2;
LABEL_15:
  while (v2 < 0)
  {
    if (!sub_1CA94D358())
    {
LABEL_34:
      sub_1CA2BC138(v2);
      return;
    }

    swift_dynamicCast();
    v21 = v11;
    v19 = v32;
    v31 = v21;
    if (!v6)
    {
LABEL_26:
      v28 = v6;
      if (*(a1 + 16))
      {
        sub_1CA94CFC8();
        OUTLINED_FUNCTION_60_0();
        v24 = ~v23;
        while (1)
        {
          v25 = v22 & v24;
          if (((*(a1 + 56 + (((v22 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v24)) & 1) == 0)
          {
            break;
          }

          v26 = *(*(a1 + 48) + 8 * v25);
          v27 = sub_1CA94CFD8();

          v22 = v25 + 1;
          if (v27)
          {

            v8 = v29;
            v2 = v30;
            v6 = v28;
            v11 = v31;
            goto LABEL_15;
          }
        }
      }

      v2 = v30;
LABEL_32:
      sub_1CA2BC138(v2);
      return;
    }

LABEL_22:
    v20 = sub_1CA94D368();

    v11 = v31;
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v17 = v11;
  if (v11)
  {
LABEL_21:
    v31 = (v17 - 1) & v17;
    v32 = *(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));
    v19 = v32;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v16)
    {
      goto LABEL_34;
    }

    v17 = *(v8 + 8 * v10);
    ++v18;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_1CA2E4808()
{
  OUTLINED_FUNCTION_37_0();
  v2 = *(v0 + 16);
  if (v2 < *(v1 + 16))
  {
LABEL_2:
    OUTLINED_FUNCTION_36();
    return;
  }

  v3 = v1;
  v4 = v0;
  v5 = 0;
  v6 = v1 + 56;
  v7 = 1 << *(v1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v1 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v0 + 56;
  if (v9)
  {
LABEL_7:
    v12 = v5;
LABEL_11:
    if (v2)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(*(v3 + 48) + ((v12 << 9) | (8 * v13)));
      v15 = sub_1CA94D908();
      v16 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v17 = v15 & v16;
        if (((*(v11 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        v15 = v17 + 1;
        if (*(*(v4 + 48) + 8 * v17) == v14)
        {
          v5 = v12;
          if (!v9)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_8:
  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_2;
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1CA2E4930()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_49_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_71_1(v2);

  return sub_1CA2DF6DC(v4, v5, v0);
}

void sub_1CA2E49E8()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_79_0(v2, v5, &qword_1EC4440F8, &qword_1CA982728);
  v8 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    OUTLINED_FUNCTION_6_9(v10);
    sub_1CA43F02C();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E4ABC()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444120, &unk_1CA982750);
      v7 = OUTLINED_FUNCTION_43_3(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA440438(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A60, &qword_1CA981B48);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

size_t sub_1CA2E4B78(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1CA2E7840(v9, a2, &qword_1EC444190, &qword_1CA9827A0, MEMORY[0x1E69E0830]);
  v11 = *(sub_1CA949B98() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1CA43F040(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1CA2E4C88()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &unk_1EC444158, &qword_1CA982788);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94AFF8();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F070(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E4D50()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC444040, &unk_1CA981B50);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94AC88();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F088(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E4E18()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &unk_1EC443AA0, &qword_1CA982780);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F0A0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E4EE0()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444140, &qword_1CA982770);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F004(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444148, &qword_1CA982778);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E4FA0()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A38, &qword_1CA981B20);
      v6 = OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_41_3(v6);
      OUTLINED_FUNCTION_21_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F0B8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A40, &qword_1CA981B28);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E5064()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443EF8, &qword_1CA982558);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_41_3(v6);
      OUTLINED_FUNCTION_21_5(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F0D8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E5130()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v3)
    {
      sub_1CA2B8BCC();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA440434(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v7 + 32), (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E51EC()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443EC8, &qword_1CA982528);
      v7 = OUTLINED_FUNCTION_80_0(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA440434(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443ED0, &qword_1CA982530);
    OUTLINED_FUNCTION_24_2(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E52A8()
{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1CA2E7840(*(v0 + 16), v4, &qword_1EC443EC0, &qword_1CA982520, MEMORY[0x1EEE78B18]);
  OUTLINED_FUNCTION_96_1();
  sub_1CA9491F8();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_44_3(v7);
    sub_1CA43F0F8(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_42_3();
  }
}

void sub_1CA2E536C()
{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1CA2E7840(*(v0 + 16), v4, &qword_1EC444118, &qword_1CA982748, MEMORY[0x1EEE78A40]);
  OUTLINED_FUNCTION_96_1();
  sub_1CA948FA8();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_44_3(v7);
    sub_1CA43F104(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_42_3();
  }
}

void sub_1CA2E5430()
{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1CA2E7840(*(v0 + 16), v4, &qword_1EC444110, &qword_1CA982740, MEMORY[0x1EEE78A20]);
  OUTLINED_FUNCTION_96_1();
  sub_1CA948F58();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_44_3(v7);
    sub_1CA43F110(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_42_3();
  }
}

void sub_1CA2E54F4()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443EB8, &qword_1CA982518);
  OUTLINED_FUNCTION_36_0();
  sub_1CA949998();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F11C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E55BC()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
      v7 = OUTLINED_FUNCTION_43_3(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA440440(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444080, &unk_1CA984380);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E5678()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
      v7 = OUTLINED_FUNCTION_43_3(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA440440(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443948, &unk_1CA981A40);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E5784()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F30, &unk_1CA981AA0);
      v7 = OUTLINED_FUNCTION_43_3(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA440440(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C0, &qword_1CA981A50);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E5840()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_79_0(v2, v5, &qword_1EC444108, &qword_1CA982738);
  v8 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    OUTLINED_FUNCTION_6_9(v10);
    sub_1CA43F134();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E593C()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443A30, &unk_1CA982710);
  v8 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for Library.Replica(v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_9(v9);
    sub_1CA43F148(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E5A04()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443EB0, &qword_1CA982510);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F160(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E5B24()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E88, &qword_1CA9824E8);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F178(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E90, &qword_1CA9824F0);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E5C14()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443FB0, &qword_1CA982600);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94B6B8();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F1A0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E5CDC()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443A08, &unk_1CA981B00);
  v8 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for DrawerAction(v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_9(v9);
    sub_1CA43F1B8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E5DA4()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443EA8, &qword_1CA982508);
  v8 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for UnavailableAction(v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_9(v9);
    sub_1CA43F1D0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E5E9C()
{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1CA2E7840(*(v0 + 16), v4, &unk_1EC443E50, &unk_1CA9824C0, MEMORY[0x1EEE78908]);
  OUTLINED_FUNCTION_96_1();
  sub_1CA948D28();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_44_3(v7);
    sub_1CA43F22C(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_42_3();
  }
}

void sub_1CA2E5F60()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_79_0(v2, v5, &qword_1EC443E80, &qword_1CA9824E0);
  v8 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    OUTLINED_FUNCTION_6_9(v10);
    sub_1CA43F238();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E6034()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443E98, &qword_1CA9824F8);
  v8 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for DrawerSearchIndexItem(v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_9(v9);
    sub_1CA43F24C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E612C()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC4440A0, &qword_1CA9826C8);
  v8 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for ActionDrawerActionSearchResult(v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_9(v9);
    sub_1CA43F28C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E621C()
{
  OUTLINED_FUNCTION_70_3();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_74_2();
    if (v4)
    {
      OUTLINED_FUNCTION_75_0(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_92();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_31_3();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_62_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_133_0();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E62D0()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_79_0(v2, v5, &unk_1EC443A10, &unk_1CA9826E0);
  v8 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    OUTLINED_FUNCTION_6_9(v10);
    sub_1CA43F2A4();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E642C()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444048, &unk_1CA982670);
      v7 = OUTLINED_FUNCTION_80_0(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA440434(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
    OUTLINED_FUNCTION_24_2(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E64E8()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439E0, &unk_1CA982680);
      v7 = OUTLINED_FUNCTION_80_0(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA440434(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
    OUTLINED_FUNCTION_24_2(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E65D4()
{
  OUTLINED_FUNCTION_17_2();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_29_3();
    if (v4)
    {
      OUTLINED_FUNCTION_75_0(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_41_3(v14);
      v14[2] = v3;
      v14[3] = 2 * (v15 / 32);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_28_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E6688()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B8, &unk_1CA981AB0);
      v7 = OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_41_3(v7);
      OUTLINED_FUNCTION_21_5(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F2B8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v7 + 32), (v0 + 32), 2 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E6744()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439C0, &unk_1CA982640);
      v7 = OUTLINED_FUNCTION_43_3(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA27B60C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444000, &unk_1CA981AC0);
    OUTLINED_FUNCTION_24_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E6800()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444010, &qword_1CA982650);
      v7 = OUTLINED_FUNCTION_80_0(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA440434(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444018, &qword_1CA982658);
    OUTLINED_FUNCTION_24_2(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E68BC()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443EF0, &qword_1CA982550);
  v8 = OUTLINED_FUNCTION_36_0();
  _s10ScopeStackV5EntryOMa(v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_9(v9);
    sub_1CA43F2D8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E6984()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = OUTLINED_FUNCTION_36_0();
  _s17ControlFlowBranchVMa(v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_9(v9);
    sub_1CA43F2F0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E6AAC()
{
  OUTLINED_FUNCTION_17_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_29_3();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_75_0(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_94_0(v13);
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_32_2(v15);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_28_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E6BAC()
{
  OUTLINED_FUNCTION_70_3();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_74_2();
    if (v4)
    {
      OUTLINED_FUNCTION_75_0(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_92();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_31_3();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_62_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FD8, &qword_1CA982620);
    OUTLINED_FUNCTION_133_0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E6CA8()
{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1CA2E7840(*(v0 + 16), v4, &unk_1EC443EE0, &unk_1CA982540, MEMORY[0x1EEE78BC0]);
  OUTLINED_FUNCTION_96_1();
  sub_1CA9492B8();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_44_3(v7);
    sub_1CA43F32C(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_42_3();
  }
}

void sub_1CA2E6DC4()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F98, &qword_1CA9825E8);
      v7 = OUTLINED_FUNCTION_80_0(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_8(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA440434(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
    OUTLINED_FUNCTION_24_2(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E6EA8()
{
  OUTLINED_FUNCTION_70_3();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_74_2();
    if (v4)
    {
      OUTLINED_FUNCTION_75_0(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * v15 - 64;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_62_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_133_0();
    memcpy(v17, v18, v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E6F64()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443F90, &qword_1CA9825E0);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94B258();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F350(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E705C()
{
  OUTLINED_FUNCTION_17_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_29_3();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_75_0(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_94_0(v13);
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_32_2(v15);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_28_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E7134()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443980, &qword_1CA981A78);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA278E60(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
    OUTLINED_FUNCTION_24_2(v9);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E7224()
{
  OUTLINED_FUNCTION_17_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_29_3();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_75_0(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_94_0(v13);
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_32_2(v15);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_28_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E72D4()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443998, &qword_1CA981A90);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94B5A8();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F368(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E73C4()
{
  OUTLINED_FUNCTION_70_3();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_74_2();
    if (v4)
    {
      OUTLINED_FUNCTION_75_0(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_92();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_8_4();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_62_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = OUTLINED_FUNCTION_133_0();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA2E7478()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443F20, &qword_1CA9834D0);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94A158();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F3B0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA2E7540()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &qword_1EC443F18, qword_1CA982590);
  OUTLINED_FUNCTION_36_0();
  sub_1CA94B538();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_9(v8);
    sub_1CA43F3C8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void *sub_1CA2E764C()
{
  OUTLINED_FUNCTION_109_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v3 = OUTLINED_FUNCTION_92();
  _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_31_3();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

const void *sub_1CA2E76EC()
{
  OUTLINED_FUNCTION_109_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_102_0(v1, v2, v3, v4);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_41_3(v5);
  OUTLINED_FUNCTION_93_1(v6 / 24);
  return v5;
}

const void *sub_1CA2E7764()
{
  OUTLINED_FUNCTION_109_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443980, &qword_1CA981A78);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_41_3(v1);
  OUTLINED_FUNCTION_93_1(v2 / 48);
  return v1;
}

void *sub_1CA2E77F0()
{
  OUTLINED_FUNCTION_109_0();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_102_0(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_92();
  _swift_stdlib_malloc_size(v6);
  OUTLINED_FUNCTION_8_4();
  v6[2] = v0;
  v6[3] = v7;
  return v6;
}

size_t sub_1CA2E7840(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_102_0(a1, a2, a3, a4);
  v7 = OUTLINED_FUNCTION_96_1();
  v8 = a5(v7);
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      OUTLINED_FUNCTION_93_1((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1CA2E7920()
{
  result = qword_1EC443DD8;
  if (!qword_1EC443DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443DD8);
  }

  return result;
}

uint64_t sub_1CA2E7968(uint64_t a1)
{
  v2 = sub_1CA949B68();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444178, &qword_1CA982798);
  result = sub_1CA94D3E8();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_1CA2E7CAC(&unk_1EDB9F7E0, MEMORY[0x1E69E0800], MEMORY[0x1E69E0808]);
    v14 = sub_1CA94C288();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_1CA2E7CAC(&qword_1EC444188, MEMORY[0x1E69E0800], MEMORY[0x1E69E0810]);
      v21 = sub_1CA94C358();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CA2E7CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ToolKitIndexingPolicy.effectiveChangeset(transaction:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_49_0();
  v6 = (*(*v0 + 96) + **(*v0 + 96));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_71_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of ToolKitIndexingPolicy.effectiveChangeset(changesetProducers:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_49_0();
  v6 = (*(*v0 + 104) + **(*v0 + 104));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_71_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of static ChangesetProducer.waitForQuiescence()()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_35_2();
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA2E9390;

  return v6(v1, v0);
}

uint64_t dispatch thunk of ChangesetProducer.produceChangeset()()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_35_2();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4_4(v7);
  *v8 = v9;
  v8[1] = sub_1CA2E9390;

  return v11(v5, v3, v1);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_1CA2E8280()
{
  OUTLINED_FUNCTION_142();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708), v2 = OUTLINED_FUNCTION_57_1(), v3 = v2, (v4 = *(v0 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v0 + 16))
    {
      v7 = (v0 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_1CA94D918();
      sub_1CA94C218();
      sub_1CA94C458();
      sub_1CA94D968();
      OUTLINED_FUNCTION_30_1();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (sub_1CA94D7F8() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v22;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_1CA2E83F8()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_36_0();
  v4 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v7 = MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_108_0(v7, v8, v9, v10, v11, v12, v13, v14, v33);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444168, &qword_1CA982790), v15 = OUTLINED_FUNCTION_57_1(), *(v2 + 16)))
  {
    OUTLINED_FUNCTION_47_1();
    while (v16 < *(v2 + 16))
    {
      v17 = OUTLINED_FUNCTION_53_2(v16);
      (v2)(v17);
      OUTLINED_FUNCTION_16_5();
      v19 = sub_1CA2E7CAC(&qword_1EC441D00, v18, MEMORY[0x1E69DB0C8]);
      OUTLINED_FUNCTION_154_0(v19);
      OUTLINED_FUNCTION_60_0();
      while (1)
      {
        OUTLINED_FUNCTION_83_0();
        if (v21)
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_98_0();
        (v2)(v22);
        OUTLINED_FUNCTION_16_5();
        v24 = sub_1CA2E7CAC(&qword_1EC443AB0, v23, MEMORY[0x1E69DB0D0]);
        v25 = OUTLINED_FUNCTION_116_1(v24);
        v26 = *v0;
        v27 = OUTLINED_FUNCTION_188();
        v26(v27);
        if (v25)
        {
          (v26)(v34, v4);
          v15 = v3;
          goto LABEL_12;
        }

        v15 = v3;
      }

      v28 = OUTLINED_FUNCTION_78_0(v20);
      v29(v28);
      v30 = *(v15 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v32;
LABEL_12:
      OUTLINED_FUNCTION_111_0();
      if (v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA2E85F8()
{
  OUTLINED_FUNCTION_71_0();
  v2 = v1;
  v3 = sub_1CA25B410(v1);
  if (v3)
  {
    v0 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448A0, &unk_1CA992040);
    v4 = OUTLINED_FUNCTION_57_1();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1CA25B410(v2))
  {
    v5 = 0;
    v6 = v4 + 56;
    while (1)
    {
      v7 = OUTLINED_FUNCTION_33_3();
      sub_1CA275D70(v7, v8, v2);
      if (v0)
      {
        v9 = OUTLINED_FUNCTION_122_0();
        v10 = MEMORY[0x1CCAA22D0](v9);
      }

      else
      {
        v10 = *(v2 + 32 + 8 * v5);
      }

      v11 = v10;
      v12 = __OFADD__(v5++, 1);
      if (v12)
      {
        break;
      }

      v0 = v10;
      sub_1CA94CFC8();
      OUTLINED_FUNCTION_30_1();
      v15 = ~v14;
      while (1)
      {
        v16 = v13 & v15;
        v17 = (v13 & v15) >> 6;
        v18 = *(v6 + 8 * v17);
        v19 = 1 << (v13 & v15);
        if ((v19 & v18) == 0)
        {
          break;
        }

        type metadata accessor for WFUserVisibleString();
        v20 = *(*(v4 + 48) + 8 * v16);
        v0 = sub_1CA94CFD8();

        if (v0)
        {

          goto LABEL_17;
        }

        v13 = v16 + 1;
      }

      *(v6 + 8 * v17) = v19 | v18;
      *(*(v4 + 48) + 8 * v16) = v11;
      v21 = *(v4 + 16);
      v12 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v12)
      {
        goto LABEL_21;
      }

      *(v4 + 16) = v22;
LABEL_17:
      OUTLINED_FUNCTION_136_1();
      if (v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_73();
  }
}

void sub_1CA2E8760(uint64_t a1)
{
  if (sub_1CA25B410(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448E0, &unk_1CA982760);
    v1 = sub_1CA94D3E8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v29 = sub_1CA25B410(a1);
  if (!v29)
  {
    goto LABEL_54;
  }

  v2 = 0;
  v33 = v1 + 56;
  v31 = v1;
  while (2)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1CCAA22D0](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v3 = *(a1 + 32 + 8 * v2);
    }

    v4 = __OFADD__(v2++, 1);
    if (v4)
    {
      __break(1u);
      goto LABEL_56;
    }

    sub_1CA94D918();
    v5 = *(v3 + 24);
    switch(*(v3 + 40))
    {
      case 1:
        MEMORY[0x1CCAA2780](1);
        sub_1CA94CFE8();
        break;
      case 2:
        v7 = 2;
        goto LABEL_16;
      case 3:
        v7 = 3;
LABEL_16:
        MEMORY[0x1CCAA2780](v7);
        sub_1CA94CFE8();
        v6 = v5;
        goto LABEL_17;
      case 4:
        v6 = 4;
LABEL_17:
        MEMORY[0x1CCAA2780](v6);
        break;
      default:
        MEMORY[0x1CCAA2780](0);
        sub_1CA94CFE8();
        sub_1CA94C458();
        break;
    }

    sub_1CA94D968();
    OUTLINED_FUNCTION_60_0();
    v9 = ~v8;
    v11 = v10 & ~v8;
    v12 = v11 >> 6;
    v13 = v33;
    v14 = *(v33 + 8 * (v11 >> 6));
    v15 = 1 << v11;
    if (((1 << v11) & v14) == 0)
    {
      goto LABEL_46;
    }

    v30 = v2;
    v32 = v9;
LABEL_21:
    v16 = *(*(v1 + 48) + 8 * v11);
    v17 = *(v16 + 24);
    v18 = *(v16 + 32);
    v19 = *(v3 + 24);
    v20 = *(v3 + 32);
    v21 = *(v3 + 40);
    switch(*(v16 + 40))
    {
      case 1:
        if (v21 != 1)
        {
          goto LABEL_44;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        v23 = sub_1CA94CFD8();
        goto LABEL_43;
      case 2:
        if (v21 != 2)
        {
          goto LABEL_44;
        }

        goto LABEL_38;
      case 3:
        if (v21 != 3)
        {
          goto LABEL_44;
        }

LABEL_38:
        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        if ((sub_1CA94CFD8() & 1) == 0 || v17 != v19)
        {
          goto LABEL_40;
        }

        v1 = v31;
        goto LABEL_50;
      case 4:
        if (v21 != 4 || (v19 | *(v3 + 16) | v20) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_48;
      default:
        if (*(v3 + 40))
        {
          goto LABEL_44;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        if ((sub_1CA94CFD8() & 1) == 0)
        {
LABEL_40:

          v1 = v31;
          v9 = v32;
          v13 = v33;
          goto LABEL_44;
        }

        v22 = v17 == v19 && v18 == v20;
        v1 = v31;
        if (v22)
        {

LABEL_48:

LABEL_50:
          v2 = v30;
LABEL_51:
          if (v2 == v29)
          {
LABEL_54:

            return;
          }

          continue;
        }

        v23 = sub_1CA94D7F8();
LABEL_43:
        v25 = v23;

        v9 = v32;
        v13 = v33;
        if (v25)
        {
          goto LABEL_48;
        }

LABEL_44:
        v11 = (v11 + 1) & v9;
        v12 = v11 >> 6;
        v14 = *(v13 + 8 * (v11 >> 6));
        v15 = 1 << v11;
        if ((v14 & (1 << v11)) != 0)
        {
          goto LABEL_21;
        }

        v2 = v30;
LABEL_46:
        *(v13 + 8 * v12) = v14 | v15;
        *(*(v1 + 48) + 8 * v11) = v3;
        v26 = *(v1 + 16);
        v4 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (!v4)
        {
          *(v1 + 16) = v27;
          goto LABEL_51;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return;
    }
  }
}

void sub_1CA2E8B78(uint64_t a1)
{
  v3 = a1;
  v4 = sub_1CA25B410(a1);
  if (v4)
  {
    v2 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443E60, &qword_1CA9824D0);
    v5 = OUTLINED_FUNCTION_57_1();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1CA25B410(v3))
  {
    v6 = 0;
    v7 = v5 + 56;
    OUTLINED_FUNCTION_46_2();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_33_3();
      sub_1CA275D70(v8, v9, v3);
      if (v2)
      {
        v10 = OUTLINED_FUNCTION_187();
        v11 = MEMORY[0x1CCAA22D0](v10);
      }

      else
      {
        v11 = *(v26 + 8 * v6);
      }

      v12 = __OFADD__(v6++, 1);
      if (v12)
      {
        break;
      }

      v28 = v11;
      v13 = sub_1CA949FB8();
      OUTLINED_FUNCTION_55_2();
      sub_1CA2E7CAC(&unk_1EC4448B0, v14, MEMORY[0x1E695BF18]);
      v2 = &v28;
      sub_1CA94C288();
      OUTLINED_FUNCTION_30_1();
      v17 = ~v16;
      while (1)
      {
        v18 = v15 & v17;
        v19 = (v15 & v17) >> 6;
        v20 = *(v7 + 8 * v19);
        v21 = v1 << (v15 & v17);
        if ((v21 & v20) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_55_2();
        sub_1CA2E7CAC(&unk_1EC443E70, v22, MEMORY[0x1E695BF20]);
        v2 = v13;
        if (sub_1CA94C358())
        {

          goto LABEL_17;
        }

        v15 = v18 + 1;
      }

      *(v7 + 8 * v19) = v21 | v20;
      *(*(v5 + 48) + 8 * v18) = v11;
      v23 = *(v5 + 16);
      v12 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v12)
      {
        goto LABEL_21;
      }

      *(v5 + 16) = v24;
LABEL_17:
      OUTLINED_FUNCTION_136_1();
      v3 = v27;
      if (v25)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

void sub_1CA2E8D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_71_0();
  v13 = v12;
  v14 = sub_1CA25B410(v12);
  if (v14)
  {
    v10 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E40, &unk_1CA9824A8);
    v15 = OUTLINED_FUNCTION_57_1();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1CA25B410(v13))
  {
    v16 = 0;
    OUTLINED_FUNCTION_46_2();
    while (1)
    {
      v17 = OUTLINED_FUNCTION_33_3();
      sub_1CA275D70(v17, v18, v13);
      if (v10)
      {
        v19 = OUTLINED_FUNCTION_187();
        v20 = MEMORY[0x1CCAA22D0](v19);
      }

      else
      {
        v20 = *(a9 + 8 * v16);
      }

      v21 = v20;
      v22 = __OFADD__(v16++, 1);
      if (v22)
      {
        break;
      }

      v10 = v20;
      sub_1CA94CFC8();
      OUTLINED_FUNCTION_30_1();
      while (1)
      {
        OUTLINED_FUNCTION_114_0();
        if (v24)
        {
          break;
        }

        sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
        v25 = *(*(v15 + 48) + 8 * v11);
        v10 = sub_1CA94CFD8();

        if (v10)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_100_0(v23);
      if (v22)
      {
        goto LABEL_21;
      }

      *(v15 + 16) = v26;
LABEL_17:
      OUTLINED_FUNCTION_136_1();
      v13 = a10;
      if (v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_73();
  }
}

void sub_1CA2E8EA8()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_36_0();
  v4 = sub_1CA9494C8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v7 = MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_108_0(v7, v8, v9, v10, v11, v12, v13, v14, v33);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC448120, &qword_1CA9824A0), v15 = OUTLINED_FUNCTION_57_1(), *(v2 + 16)))
  {
    OUTLINED_FUNCTION_47_1();
    while (v16 < *(v2 + 16))
    {
      v17 = OUTLINED_FUNCTION_53_2(v16);
      (v2)(v17);
      OUTLINED_FUNCTION_54_0();
      v19 = sub_1CA2E7CAC(qword_1EC441DA0, v18, MEMORY[0x1E69A1170]);
      OUTLINED_FUNCTION_154_0(v19);
      OUTLINED_FUNCTION_60_0();
      while (1)
      {
        OUTLINED_FUNCTION_83_0();
        if (v21)
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_98_0();
        (v2)(v22);
        OUTLINED_FUNCTION_54_0();
        v24 = sub_1CA2E7CAC(&qword_1EC441D98, v23, MEMORY[0x1E69A1178]);
        v25 = OUTLINED_FUNCTION_116_1(v24);
        v26 = *v0;
        v27 = OUTLINED_FUNCTION_188();
        v26(v27);
        if (v25)
        {
          (v26)(v34, v4);
          v15 = v3;
          goto LABEL_12;
        }

        v15 = v3;
      }

      v28 = OUTLINED_FUNCTION_78_0(v20);
      v29(v28);
      v30 = *(v15 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v32;
LABEL_12:
      OUTLINED_FUNCTION_111_0();
      if (v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA2E90A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_71_0();
  v13 = v12;
  v14 = sub_1CA25B410(v12);
  if (v14)
  {
    v10 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC448110, &unk_1CA984360);
    v15 = OUTLINED_FUNCTION_57_1();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1CA25B410(v13))
  {
    v16 = 0;
    OUTLINED_FUNCTION_46_2();
    while (1)
    {
      v17 = OUTLINED_FUNCTION_33_3();
      sub_1CA275D70(v17, v18, v13);
      if (v10)
      {
        v19 = OUTLINED_FUNCTION_187();
        v20 = MEMORY[0x1CCAA22D0](v19);
      }

      else
      {
        v20 = *(a9 + 8 * v16);
      }

      v21 = v20;
      v22 = __OFADD__(v16++, 1);
      if (v22)
      {
        break;
      }

      v10 = v20;
      sub_1CA94CFC8();
      OUTLINED_FUNCTION_30_1();
      while (1)
      {
        OUTLINED_FUNCTION_114_0();
        if (v24)
        {
          break;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        v25 = *(*(v15 + 48) + 8 * v11);
        v10 = sub_1CA94CFD8();

        if (v10)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_100_0(v23);
      if (v22)
      {
        goto LABEL_21;
      }

      *(v15 + 16) = v26;
LABEL_17:
      OUTLINED_FUNCTION_136_1();
      v13 = a10;
      if (v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    OUTLINED_FUNCTION_73();
  }
}

uint64_t sub_1CA2E91F8(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

unint64_t sub_1CA2E9268()
{
  result = qword_1EC444030;
  if (!qword_1EC444030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444030);
  }

  return result;
}

uint64_t sub_1CA2E92BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

uint64_t sub_1CA2E9314(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_39();
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_47_1()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

size_t OUTLINED_FUNCTION_79_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1CA2705E0(v4, a2, a3, a4);
}

size_t OUTLINED_FUNCTION_87_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1CA2E7840(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1)
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_106_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return MEMORY[0x1EEE4ABF8]();
}

uint64_t OUTLINED_FUNCTION_118_0(uint64_t a1)
{

  return MEMORY[0x1EEE4AC00](v2, a1, v1);
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE697B8](a1, a2, v4, v3, v2);
}

void OUTLINED_FUNCTION_148_0()
{
}

uint64_t OUTLINED_FUNCTION_152_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_157_1(uint64_t a1)
{

  return sub_1CA2E9314(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_158_0()
{
}

id sub_1CA2E9698()
{
  v278 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA99F940;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("script|terminal|bash|zsh", 24);
  v6 = v5;
  v7 = sub_1CA94C438("script|terminal|bash|zsh", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v294 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v295 = v11;
  v12 = &v268 - v294;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v292 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v291 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v293 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v268 - v293;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v290 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v287 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v288 = xmmword_1CA9813C0;
  *(v23 + 16) = xmmword_1CA9813C0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("Item(s) to be passed either as stdin or as arguments to the script.", 67);
  v284 = v27;
  v285 = v26;
  v28 = sub_1CA94C438("Item(s) to be passed either as stdin or as arguments to the script.", 67);
  v30 = v29;
  v286 = &v268;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v268 - v294;
  sub_1CA948D98();
  v32 = v292;
  v33 = [v292 bundleURL];
  v289 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v268 - v293;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v285, v284, v28, v30, 0, 0, v31, v35);
  *(v23 + 64) = v290;
  *(v23 + 72) = @"DescriptionResult";
  v37 = @"DescriptionResult";
  v38 = sub_1CA94C438("The output from the script", 26);
  v284 = v39;
  v285 = v38;
  v40 = sub_1CA94C438("The output from the script", 26);
  v42 = v41;
  v286 = &v268;
  MEMORY[0x1EEE9AC00](v40);
  v43 = v294;
  sub_1CA948D98();
  v44 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = v293;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v285, v284, v40, v42, 0, 0, &v268 - v43, &v268 - v45);
  v47 = v290;
  *(v23 + 104) = v290;
  *(v23 + 112) = @"DescriptionSummary";
  v48 = @"DescriptionSummary";
  v49 = sub_1CA94C438("This action executes a UNIX shell script. The script will execute starting in your user’s home directory.", 107);
  v284 = v50;
  v285 = v49;
  v51 = sub_1CA94C438("This action executes a UNIX shell script. The script will execute starting in your user’s home directory.", 107);
  v53 = v52;
  v286 = &v268;
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948D98();
  v54 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v285, v284, v51, v53, 0, 0, &v268 - v43, &v268 - v45);
  *(v23 + 144) = v47;
  *(v23 + 120) = v56;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v57 = sub_1CA94C1E8();
  v58 = v287;
  v59 = sub_1CA6B3784(v57);
  v60 = v289;
  v289[20] = v59;
  v60[23] = v58;
  v60[24] = @"DisabledOnPlatforms";
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v60[28] = v61;
  v62 = v61;
  v283 = v61;
  v60[25] = &unk_1F49F2DD8;
  v63 = @"DisabledOnPlatforms";
  v60[29] = sub_1CA94C368();
  v64 = MEMORY[0x1E69E6370];
  *(v60 + 240) = 1;
  v60[33] = v64;
  v60[34] = @"Input";
  v65 = v64;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  v281 = xmmword_1CA981350;
  *(v66 + 16) = xmmword_1CA981350;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  *(v66 + 48) = 1;
  *(v66 + 72) = v65;
  strcpy((v66 + 80), "ParameterKey");
  *(v66 + 93) = 0;
  *(v66 + 94) = -5120;
  *(v66 + 96) = 0x7475706E49;
  *(v66 + 104) = 0xE500000000000000;
  *(v66 + 120) = MEMORY[0x1E69E6158];
  *(v66 + 128) = 0x6465726975716552;
  *(v66 + 136) = 0xE800000000000000;
  *(v66 + 144) = 0;
  *(v66 + 168) = v65;
  *(v66 + 176) = 0x7365707954;
  *(v66 + 216) = v62;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_1F49F2E08;
  v67 = @"Input";
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v287 = v69;
  v60[35] = v68;
  v60[38] = v69;
  v60[39] = @"InputPassthrough";
  *(v60 + 320) = 0;
  v60[43] = v65;
  v60[44] = @"Name";
  v70 = @"InputPassthrough";
  v71 = @"Name";
  v284 = sub_1CA94C438("Run Shell Script (Action Name)", 30);
  v73 = v72;
  v74 = sub_1CA94C438("Run Shell Script", 16);
  v76 = v75;
  v285 = &v268;
  MEMORY[0x1EEE9AC00](v74);
  v77 = v294;
  sub_1CA948D98();
  v78 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v268 - v293;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v284, v73, v74, v76, 0, 0, &v268 - v77, v79);
  v82 = v289;
  v83 = v290;
  v289[45] = v81;
  v82[48] = v83;
  v82[49] = @"Output";
  v84 = swift_allocObject();
  *(v84 + 16) = v288;
  *(v84 + 32) = 0x656C7069746C754DLL;
  *(v84 + 40) = 0xE800000000000000;
  *(v84 + 48) = 0;
  *(v84 + 72) = MEMORY[0x1E69E6370];
  *(v84 + 80) = 0x614E74757074754FLL;
  *(v84 + 88) = 0xEA0000000000656DLL;
  v85 = @"Output";
  v86 = sub_1CA94C438("Shell Script Result (Default Output Name)", 41);
  v285 = v87;
  v286 = v86;
  v88 = sub_1CA94C438("Shell Script Result", 19);
  v90 = v89;
  *&v288 = &v268;
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948D98();
  v91 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v268 - v293;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 96) = sub_1CA2F9F14(v286, v285, v88, v90, 0, 0, &v268 - v77, v92);
  *(v84 + 120) = v83;
  *(v84 + 128) = 0x7365707954;
  *(v84 + 168) = v283;
  *(v84 + 136) = 0xE500000000000000;
  *(v84 + 144) = &unk_1F49F2E38;
  v94 = MEMORY[0x1E69E6158];
  v95 = sub_1CA94C1E8();
  v96 = v289;
  v289[50] = v95;
  v282 = @"ParameterCollapsingBehavior";
  v96[53] = v287;
  v96[54] = @"ParameterCollapsingBehavior";
  v96[55] = 0x726576654ELL;
  v96[56] = 0xE500000000000000;
  v280 = @"Parameters";
  v96[58] = v94;
  v96[59] = @"Parameters";
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v288 = swift_allocObject();
  *(v288 + 16) = xmmword_1CA981560;
  v287 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA981450;
  v277 = @"AutocapitalizationType";
  *(v97 + 32) = @"AutocapitalizationType";
  *(v97 + 40) = 1701736270;
  *(v97 + 48) = 0xE400000000000000;
  *(v97 + 64) = v94;
  *(v97 + 72) = @"Class";
  *(v97 + 80) = 0xD000000000000014;
  *(v97 + 88) = 0x80000001CA99B500;
  *&v276 = @"DisableAutocorrection";
  *(v97 + 104) = v94;
  *(v97 + 112) = @"DisableAutocorrection";
  *(v97 + 120) = 1;
  v273 = @"DisableAutoPeriods";
  v98 = MEMORY[0x1E69E6370];
  *(v97 + 144) = MEMORY[0x1E69E6370];
  *(v97 + 152) = @"DisableAutoPeriods";
  *(v97 + 160) = 1;
  v272 = @"DisableSmartDashes";
  *(v97 + 184) = v98;
  *(v97 + 192) = @"DisableSmartDashes";
  *(v97 + 200) = 1;
  v271 = @"DisableSmartQuotes";
  *(v97 + 224) = v98;
  *(v97 + 232) = @"DisableSmartQuotes";
  *(v97 + 240) = 1;
  v270 = @"DisableTextReplacement";
  *(v97 + 264) = v98;
  *(v97 + 272) = @"DisableTextReplacement";
  *(v97 + 280) = 0;
  v269 = @"DoNotLocalizeValues";
  *(v97 + 304) = v98;
  *(v97 + 312) = @"DoNotLocalizeValues";
  *(v97 + 320) = 1;
  *(v97 + 344) = v98;
  *(v97 + 352) = @"Key";
  *(v97 + 360) = 0x747069726353;
  *(v97 + 368) = 0xE600000000000000;
  *(v97 + 384) = v94;
  *(v97 + 392) = @"MonospaceFont";
  *(v97 + 400) = 1;
  *(v97 + 424) = v98;
  *(v97 + 432) = @"Multiline";
  *(v97 + 440) = 1;
  *(v97 + 464) = v98;
  *(v97 + 472) = @"Placeholder";
  *(v97 + 504) = v94;
  *(v97 + 480) = 0xD000000000000012;
  *(v97 + 488) = 0x80000001CA99FAF0;
  _s3__C3KeyVMa_0(0);
  v285 = v99;
  v284 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v100 = @"Class";
  v101 = @"Key";
  v102 = v100;
  v103 = v101;
  v104 = @"Placeholder";
  v105 = v102;
  v279 = v103;
  v274 = v104;
  v106 = v282;
  v107 = v280;
  v108 = v277;
  v109 = v276;
  v110 = v273;
  v111 = v272;
  v112 = v271;
  v113 = v270;
  v114 = v269;
  v115 = @"MonospaceFont";
  v116 = @"Multiline";
  v117 = sub_1CA94C1E8();
  v118 = sub_1CA2F864C(v117);
  *(v288 + 32) = v118;
  v119 = swift_allocObject();
  v276 = xmmword_1CA981370;
  *(v119 + 16) = xmmword_1CA981370;
  *(v119 + 32) = v105;
  *(v119 + 40) = 0xD00000000000001DLL;
  *(v119 + 48) = 0x80000001CA99FB10;
  *(v119 + 64) = MEMORY[0x1E69E6158];
  *(v119 + 72) = @"Description";
  v120 = @"Description";
  v280 = v105;
  v282 = v120;
  v121 = sub_1CA94C438("The shell to use for interpreting and running the script. (Shell)", 65);
  v273 = v122;
  v123 = sub_1CA94C438("The shell to use for interpreting and running the script.", 57);
  v125 = v124;
  v277 = &v268;
  MEMORY[0x1EEE9AC00](v123);
  v126 = v294;
  sub_1CA948D98();
  v127 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v268 - v293;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 80) = sub_1CA2F9F14(v121, v273, v123, v125, 0, 0, &v268 - v126, v128);
  *(v119 + 104) = v290;
  *(v119 + 112) = @"DisallowedVariableTypes";
  *(v119 + 120) = &unk_1F49F2E78;
  v130 = v279;
  *(v119 + 144) = v283;
  *(v119 + 152) = v130;
  *(v119 + 160) = 0x6C6C656853;
  *(v119 + 168) = 0xE500000000000000;
  *(v119 + 184) = MEMORY[0x1E69E6158];
  *(v119 + 192) = @"Label";
  v131 = @"Label";
  v132 = @"DisallowedVariableTypes";
  v271 = v130;
  v272 = v131;
  v273 = v132;
  v133 = sub_1CA94C438("Shell (Shell)", 13);
  v135 = v134;
  v136 = sub_1CA94C438("Shell", 5);
  v138 = v137;
  v279 = &v268;
  MEMORY[0x1EEE9AC00](v136);
  v139 = &v268 - v126;
  sub_1CA948D98();
  v140 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v268 - v293;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v133, v135, v136, v138, 0, 0, v139, v141);
  *(v119 + 224) = v290;
  *(v119 + 200) = v143;
  v144 = sub_1CA94C1E8();
  v145 = sub_1CA2F864C(v144);
  *(v288 + 40) = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = v281;
  v277 = 0xD000000000000019;
  v147 = v280;
  *(v146 + 32) = v280;
  *(v146 + 40) = 0xD000000000000019;
  *(v146 + 48) = 0x80000001CA99B030;
  v148 = MEMORY[0x1E69E6158];
  v149 = v271;
  v150 = v272;
  *(v146 + 64) = MEMORY[0x1E69E6158];
  *(v146 + 72) = v149;
  *(v146 + 80) = 0x7475706E49;
  *(v146 + 88) = 0xE500000000000000;
  *(v146 + 104) = v148;
  *(v146 + 112) = v150;
  v279 = v147;
  v280 = v149;
  *&v281 = v150;
  v151 = sub_1CA94C438("Input (Input)", 13);
  v270 = v152;
  v271 = v151;
  v153 = sub_1CA94C438("Input", 5);
  v269 = v154;
  v272 = &v268;
  MEMORY[0x1EEE9AC00](v153);
  v155 = &v268 - v294;
  sub_1CA948D98();
  v156 = v292;
  v157 = [v292 bundleURL];
  v268 = &v268;
  MEMORY[0x1EEE9AC00](v157);
  v158 = v293;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v146 + 120) = sub_1CA2F9F14(v271, v270, v153, v269, 0, 0, v155, &v268 - v158);
  v160 = v290;
  v161 = v274;
  *(v146 + 144) = v290;
  *(v146 + 152) = v161;
  v162 = sub_1CA94C438("Input (Input)", 13);
  v271 = v163;
  v272 = v162;
  v164 = sub_1CA94C438("Input", 5);
  v270 = v165;
  v274 = &v268;
  MEMORY[0x1EEE9AC00](v164);
  v166 = &v268 - v294;
  sub_1CA948D98();
  v167 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v272, v271, v164, v270, 0, 0, v166, &v268 - v158);
  *(v146 + 184) = v160;
  *(v146 + 160) = v169;
  v170 = sub_1CA94C1E8();
  v171 = sub_1CA2F864C(v170);
  *(v288 + 48) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1CA981400;
  *(v172 + 32) = v279;
  *(v172 + 40) = 0xD000000000000016;
  *(v172 + 48) = 0x80000001CA99C4A0;
  v173 = MEMORY[0x1E69E6158];
  *(v172 + 64) = MEMORY[0x1E69E6158];
  *(v172 + 72) = @"DefaultValue";
  *(v172 + 80) = 0x6E69647473206F74;
  *(v172 + 88) = 0xE800000000000000;
  v174 = v282;
  *(v172 + 104) = v173;
  *(v172 + 112) = v174;
  v274 = @"DefaultValue";
  v175 = sub_1CA94C438("to stdin: The input will be converted to a file and directed to the stdin pipe of the script.\nas arguments: The input will be converted to a list of strings and passed as arguments to the script. (InputMode)", 207);
  v271 = v176;
  v177 = sub_1CA94C438("to stdin: The input will be converted to a file and directed to the stdin pipe of the script.\nas arguments: The input will be converted to a list of strings and passed as arguments to the script.", 195);
  v179 = v178;
  v272 = &v268;
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v268 - v294;
  sub_1CA948D98();
  v181 = v292;
  v182 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v268 - v293;
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 120) = sub_1CA2F9F14(v175, v271, v177, v179, 0, 0, v180, v183);
  v185 = v273;
  *(v172 + 144) = v290;
  *(v172 + 152) = v185;
  *(v172 + 160) = &unk_1F49F2EB8;
  *(v172 + 184) = v283;
  *(v172 + 192) = @"Items";
  v283 = swift_allocObject();
  *(v283 + 1) = xmmword_1CA981360;
  v186 = @"Items";
  v187 = sub_1CA94C438("to stdin (InputMode)", 20);
  v272 = v188;
  v273 = v187;
  v189 = sub_1CA94C438("to stdin", 8);
  v271 = v190;
  v275 = &v268;
  MEMORY[0x1EEE9AC00](v189);
  v191 = v294;
  sub_1CA948D98();
  v192 = [v181 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  v193 = v293;
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v195 = sub_1CA2F9F14(v273, v272, v189, v271, 0, 0, &v268 - v191, &v268 - v193);
  v283[4] = v195;
  v196 = sub_1CA94C438("as arguments (InputMode)", 24);
  v272 = v197;
  v273 = v196;
  v271 = sub_1CA94C438("as arguments", 12);
  v199 = v198;
  v275 = &v268;
  MEMORY[0x1EEE9AC00](v271);
  sub_1CA948D98();
  v200 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v200);
  sub_1CA948B68();

  v201 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v202 = sub_1CA2F9F14(v273, v272, v271, v199, 0, 0, &v268 - v191, &v268 - v193);
  v203 = v283;
  v283[5] = v202;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v172 + 200) = v203;
  v205 = v280;
  *(v172 + 224) = v204;
  *(v172 + 232) = v205;
  *(v172 + 240) = 0x646F4D7475706E49;
  *(v172 + 248) = 0xE900000000000065;
  v206 = v281;
  *(v172 + 264) = MEMORY[0x1E69E6158];
  *(v172 + 272) = v206;
  v275 = sub_1CA94C438("Pass Input (InputMode)", 22);
  v208 = v207;
  v209 = sub_1CA94C438("Pass Input", 10);
  v211 = v210;
  v283 = &v268;
  MEMORY[0x1EEE9AC00](v209);
  v212 = &v268 - v294;
  sub_1CA948D98();
  v213 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = &v268 - v293;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v275, v208, v209, v211, 0, 0, v212, v214);
  *(v172 + 304) = v290;
  *(v172 + 280) = v216;
  v217 = sub_1CA94C1E8();
  v218 = sub_1CA2F864C(v217);
  *(v288 + 56) = v218;
  v219 = swift_allocObject();
  *(v219 + 16) = v276;
  *(v219 + 32) = v279;
  *(v219 + 40) = 0xD000000000000011;
  *(v219 + 48) = 0x80000001CA99E620;
  v220 = v274;
  *(v219 + 64) = MEMORY[0x1E69E6158];
  *(v219 + 72) = v220;
  *(v219 + 80) = 0;
  v221 = v282;
  *(v219 + 104) = MEMORY[0x1E69E6370];
  *(v219 + 112) = v221;
  v222 = sub_1CA94C438("When enabled, Shortcuts will ask for an administrator’s password and run the script as the root user. This is similar to using sudo on the command line. (RunAsRoot)", 166);
  v282 = v223;
  v283 = v222;
  v224 = sub_1CA94C438("When enabled, Shortcuts will ask for an administrator’s password and run the script as the root user. This is similar to using sudo on the command line.", 154);
  v279 = v225;
  v286 = &v268;
  MEMORY[0x1EEE9AC00](v224);
  v226 = &v268 - v294;
  sub_1CA948D98();
  v227 = v292;
  v228 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  v229 = v293;
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v219 + 120) = sub_1CA2F9F14(v283, v282, v224, v279, 0, 0, v226, &v268 - v229);
  v231 = v280;
  *(v219 + 144) = v290;
  *(v219 + 152) = v231;
  *(v219 + 160) = 0x6F6F5273416E7552;
  *(v219 + 168) = 0xE900000000000074;
  v232 = v281;
  *(v219 + 184) = MEMORY[0x1E69E6158];
  *(v219 + 192) = v232;
  v233 = sub_1CA94C438("Run as Administrator (RunAsRoot)", 32);
  v282 = v234;
  v283 = v233;
  v235 = sub_1CA94C438("Run as Administrator", 20);
  *&v281 = v236;
  v286 = &v268;
  MEMORY[0x1EEE9AC00](v235);
  v237 = &v268 - v294;
  sub_1CA948D98();
  v238 = [v227 bundleURL];
  MEMORY[0x1EEE9AC00](v238);
  sub_1CA948B68();

  v239 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v240 = sub_1CA2F9F14(v283, v282, v235, v281, 0, 0, v237, &v268 - v229);
  *(v219 + 224) = v290;
  *(v219 + 200) = v240;
  v241 = sub_1CA94C1E8();
  v242 = sub_1CA2F864C(v241);
  v243 = v288;
  *(v288 + 64) = v242;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v245 = v289;
  v289[60] = v243;
  v245[63] = v244;
  v245[64] = @"ParameterSummary";
  v246 = @"ParameterSummary";
  v247 = sub_1CA94C438("Run Shell Script (Parameter Summary)", 36);
  v249 = v248;
  v250 = sub_1CA94C438("Run Shell Script", 16);
  v252 = v251;
  MEMORY[0x1EEE9AC00](v250);
  v253 = &v268 - v294;
  sub_1CA948D98();
  v254 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v254);
  v255 = &v268 - v293;
  sub_1CA948B68();

  v256 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v257 = sub_1CA2F9F14(v247, v249, v250, v252, 0, 0, v253, v255);
  v258 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v259 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v260 = v289;
  v289[68] = v259;
  v260[65] = v258;
  v260[69] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_1CA97EDF0;
  v296 = 2;
  v297 = 0;
  v262 = type metadata accessor for WFDeviceIdiomResource();
  v263 = objc_allocWithZone(v262);
  v264 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v296);
  *(v261 + 32) = v265;
  *(v261 + 88) = MEMORY[0x1E69E6158];
  v266 = v277;
  *(v261 + 56) = v262;
  *(v261 + 64) = v266;
  *(v261 + 72) = 0x80000001CA994500;
  v260[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v260[70] = v261;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2EB618()
{
  v169 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9A0000;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v178 = inited;
  v176 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v177 = sub_1CA94C438("Creates a new list on the specified board in your Trello account.", 65);
  v181 = v9;
  v10 = sub_1CA94C438("Creates a new list on the specified board in your Trello account.", 65);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v183 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v184 = v14;
  v15 = &v160 - v183;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v180 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v179 = v19;
  v182 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v160 - v182;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v177, v181, v10, v12, 0, 0, v15, v20);
  v181 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v181;
  *(v6 + 40) = v22;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v23 = sub_1CA94C1E8();
  v24 = v176;
  v25 = sub_1CA6B3784(v23);
  v26 = v178;
  v178[15] = v25;
  v26[18] = v24;
  v26[19] = @"Name";
  v27 = @"Name";
  v28 = sub_1CA94C438("Create Trello List (Action Name)", 32);
  v30 = v29;
  v31 = sub_1CA94C438("Create Trello List", 18);
  v33 = v32;
  v177 = &v160;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v160 - v183;
  sub_1CA948D98();
  v35 = [v16 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v160 - v182;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26[20] = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v26[23] = v181;
  v26[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA9813C0;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 0;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x614E74757074754FLL;
  *(v38 + 88) = 0xEA0000000000656DLL;
  v40 = @"Output";
  v41 = sub_1CA94C438("Trello List (Default Output Name)", 33);
  v176 = v42;
  v43 = sub_1CA94C438("Trello List", 11);
  v45 = v44;
  v177 = &v160;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v160 - v183;
  sub_1CA948D98();
  v47 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v160 - v182;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v38 + 96) = sub_1CA2F9F14(v41, v176, v43, v45, 0, 0, v46, v48);
  *(v38 + 120) = v181;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 136) = 0xE500000000000000;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 168) = v168;
  *(v38 + 144) = &unk_1F49F2F78;
  v50 = MEMORY[0x1E69E6158];
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[25] = v51;
  v26[28] = v52;
  v26[29] = @"Parameters";
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v177 = swift_allocObject();
  *(v177 + 1) = xmmword_1CA981470;
  v176 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v53 = swift_initStackObject();
  v166 = xmmword_1CA981370;
  *(v53 + 16) = xmmword_1CA981370;
  *(v53 + 32) = @"Class";
  *(v53 + 40) = 0xD000000000000014;
  *(v53 + 48) = 0x80000001CA99B500;
  *(v53 + 64) = v50;
  *(v53 + 72) = @"Key";
  strcpy((v53 + 80), "WFTrelloName");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 104) = v50;
  *(v53 + 112) = @"Label";
  v54 = @"Class";
  v55 = @"Key";
  v56 = @"Label";
  v57 = v54;
  v58 = v55;
  v59 = v56;
  v170 = v57;
  v174 = v58;
  v175 = v59;
  v60 = @"Parameters";
  v172 = sub_1CA94C438("Name (WFTrelloName)", 19);
  v165 = v61;
  v62 = sub_1CA94C438("Name", 4);
  v164 = v63;
  v173 = &v160;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v160 - v183;
  sub_1CA948D98();
  v65 = v180;
  v66 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v182;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 120) = sub_1CA2F9F14(v172, v165, v62, v164, 0, 0, v64, &v160 - v67);
  *(v53 + 144) = v181;
  *(v53 + 152) = @"Placeholder";
  v165 = @"Placeholder";
  v172 = sub_1CA94C438("List (WFTrelloName)", 19);
  v164 = v69;
  v70 = sub_1CA94C438("List", 4);
  v163 = v71;
  v173 = &v160;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v160 - v183;
  sub_1CA948D98();
  v73 = [v65 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 160) = sub_1CA2F9F14(v172, v164, v70, v163, 0, 0, v72, &v160 - v67);
  *(v53 + 184) = v181;
  *(v53 + 192) = @"TextAlignment";
  v75 = MEMORY[0x1E69E6158];
  *(v53 + 224) = MEMORY[0x1E69E6158];
  *(v53 + 200) = 0x7468676952;
  *(v53 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v173 = v76;
  v172 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v77 = @"TextAlignment";
  v78 = sub_1CA94C1E8();
  v79 = sub_1CA2F864C(v78);
  v177[4] = v79;
  v80 = swift_initStackObject();
  *(v80 + 16) = xmmword_1CA981350;
  *(v80 + 32) = v170;
  *(v80 + 40) = 0xD00000000000001CLL;
  *(v80 + 48) = 0x80000001CA9A0130;
  v81 = v174;
  *(v80 + 64) = v75;
  *(v80 + 72) = v81;
  strcpy((v80 + 80), "WFTrelloBoard");
  *(v80 + 94) = -4864;
  v82 = v175;
  *(v80 + 104) = v75;
  *(v80 + 112) = v82;
  v83 = sub_1CA94C438("Board (WFTrelloBoard)", 21);
  v162 = v84;
  v163 = v83;
  v85 = sub_1CA94C438("Board", 5);
  v161 = v86;
  v164 = &v160;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v183;
  sub_1CA948D98();
  v88 = v180;
  v89 = [v180 bundleURL];
  v160 = &v160;
  MEMORY[0x1EEE9AC00](v89);
  v90 = v182;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v80 + 120) = sub_1CA2F9F14(v163, v162, v85, v161, 0, 0, &v160 - v87, &v160 - v90);
  v92 = v181;
  v93 = v165;
  *(v80 + 144) = v181;
  *(v80 + 152) = v93;
  v94 = sub_1CA94C438("Board (WFTrelloBoard)", 21);
  v163 = v95;
  v164 = v94;
  v96 = sub_1CA94C438("Board", 5);
  v98 = v97;
  v165 = &v160;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v160 - v87;
  sub_1CA948D98();
  v100 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v164, v163, v96, v98, 0, 0, v99, &v160 - v90);
  *(v80 + 184) = v92;
  *(v80 + 160) = v102;
  v103 = sub_1CA94C1E8();
  v104 = sub_1CA2F864C(v103);
  v177[5] = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = v166;
  *(v105 + 32) = v170;
  *(v105 + 40) = 0xD000000000000016;
  *(v105 + 48) = 0x80000001CA99C4A0;
  v106 = MEMORY[0x1E69E6158];
  *(v105 + 64) = MEMORY[0x1E69E6158];
  *(v105 + 72) = @"DefaultValue";
  *(v105 + 80) = 7368532;
  *(v105 + 88) = 0xE300000000000000;
  *(v105 + 104) = v106;
  *(v105 + 112) = @"Items";
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1CA981360;
  v107 = @"DefaultValue";
  v108 = @"Items";
  v167 = sub_1CA94C438("Top (WFTrelloPosition)", 22);
  *&v166 = v109;
  v110 = sub_1CA94C438("Top", 3);
  v165 = v111;
  v170 = &v160;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v183;
  sub_1CA948D98();
  v113 = [v180 bundleURL];
  v164 = &v160;
  MEMORY[0x1EEE9AC00](v113);
  v114 = v182;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v167, v166, v110, v165, 0, 0, &v160 - v112, &v160 - v114);
  *(v171 + 32) = v116;
  v167 = sub_1CA94C438("Bottom (WFTrelloPosition)", 25);
  *&v166 = v117;
  v165 = sub_1CA94C438("Bottom", 6);
  v119 = v118;
  v170 = &v160;
  MEMORY[0x1EEE9AC00](v165);
  sub_1CA948D98();
  v120 = v180;
  v121 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v167, v166, v165, v119, 0, 0, &v160 - v112, &v160 - v114);
  v124 = v171;
  *(v171 + 40) = v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v105 + 120) = v124;
  v126 = v174;
  *(v105 + 144) = v125;
  *(v105 + 152) = v126;
  *(v105 + 160) = 0xD000000000000010;
  *(v105 + 168) = 0x80000001CA9A01C0;
  v127 = v175;
  *(v105 + 184) = MEMORY[0x1E69E6158];
  *(v105 + 192) = v127;
  v174 = sub_1CA94C438("Position (WFTrelloPosition)", 27);
  v129 = v128;
  v130 = sub_1CA94C438("Position", 8);
  v132 = v131;
  v175 = &v160;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v160 - v183;
  sub_1CA948D98();
  v134 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v160 - v182;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v174, v129, v130, v132, 0, 0, v133, v135);
  *(v105 + 224) = v181;
  *(v105 + 200) = v137;
  v138 = sub_1CA94C1E8();
  v139 = sub_1CA2F864C(v138);
  v140 = v177;
  v177[6] = v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v142 = v178;
  v178[30] = v140;
  v142[33] = v141;
  v142[34] = @"ParameterSummary";
  v143 = @"ParameterSummary";
  v144 = sub_1CA94C438("Create the list ${WFTrelloName} in ${WFTrelloBoard} (Parameter Summary)", 71);
  v146 = v145;
  v147 = sub_1CA94C438("Create the list ${WFTrelloName} in ${WFTrelloBoard}", 51);
  v149 = v148;
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v160 - v183;
  sub_1CA948D98();
  v151 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v160 - v182;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v144, v146, v147, v149, 0, 0, v150, v152);
  v155 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v156 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v157 = v178;
  v178[35] = v155;
  v157[38] = v156;
  v157[39] = @"RequiredResources";
  v157[43] = v168;
  v157[40] = &unk_1F49F2FA8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v158 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2ECA1C()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v6 = MEMORY[0x1E69E6370];
  *(inited + 104) = v5;
  *(inited + 112) = @"Discoverable";
  *(inited + 144) = v6;
  *(inited + 120) = 0;
  v7 = @"Discoverable";
  v8 = sub_1CA94C368();
  *(inited + 184) = v1;
  *(inited + 152) = v8;
  *(inited + 160) = 0xD00000000000005DLL;
  *(inited + 168) = 0x80000001CA9A02A0;
  v9 = sub_1CA94C368();
  *(inited + 224) = v1;
  *(inited + 192) = v9;
  *(inited + 200) = 0xD000000000000013;
  *(inited + 208) = 0x80000001CA9A0300;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

unint64_t sub_1CA2ECC0C()
{
  result = qword_1EC4419A0;
  if (!qword_1EC4419A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4419A0);
  }

  return result;
}

unint64_t sub_1CA2ECC50()
{
  result = qword_1EDB9FB10;
  if (!qword_1EDB9FB10)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9FB10);
  }

  return result;
}

uint64_t sub_1CA2ECD28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  result = a2();
  if (v9)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_25_4();
  if (v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    sub_1CA2F10F8(v10, a4);
    v12 = 0;
  }

  v13 = a3(0);

  return __swift_storeEnumTagSinglePayload(a4, v12, 1, v13);
}

uint64_t sub_1CA2ECDF0(uint64_t a1)
{
  sub_1CA69B1F8(a1);
  v2 = sub_1CA2F13A4(a1, MEMORY[0x1E69E6DE0]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_3();
  v10 = sub_1CA2F1510(v5, v6, v7, v2, v4, v8, v9);
  v11 = OUTLINED_FUNCTION_70();
  sub_1CA2974B8(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_2_10();
  if (v10)
  {
    sub_1CA2974B8(v14, v15, v16);
    return 0;
  }

  else
  {
    sub_1CA4FD0C8(v14, v15, v16, a1);
    v17 = v18;
    v19 = OUTLINED_FUNCTION_2_10();
    sub_1CA2974B8(v19, v20, v21);
  }

  return v17;
}

uint64_t sub_1CA2ECF24(uint64_t a1)
{
  result = sub_1CA4FCA34(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_25_4();
  if (v5 == v7)
  {
    return 0;
  }

  else
  {
    return sub_1CA4FD234(v5, v6, 0, a1);
  }
}

uint64_t sub_1CA2ECF9C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_1CA2ED098(uint64_t a1, void (*a2)(void), unint64_t *a3, void *a4)
{
  a2();
  v7 = sub_1CA2F13A4(a1, MEMORY[0x1E69E69B0]);
  v9 = v8;
  v10 = OUTLINED_FUNCTION_3_3();
  v15 = sub_1CA2F1510(v10, v11, v12, v7, v9, v13, v14);
  v16 = OUTLINED_FUNCTION_162();
  sub_1CA2974B8(v16, v17, v18);
  v19 = OUTLINED_FUNCTION_2_10();
  if (v15)
  {
    sub_1CA2974B8(v19, v20, v21);
    return 0;
  }

  else
  {
    sub_1CA2F11B0(v19, v20, v21, a1, a3, a4);
    v22 = v23;
    v24 = OUTLINED_FUNCTION_2_10();
    sub_1CA2974B8(v24, v25, v26);
  }

  return v22;
}

unint64_t sub_1CA2ED190(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_7_9();
      sub_1CA94D408();
      MEMORY[0x1CCAA1300](0xD00000000000003FLL, 0x80000001CA9A0460);
      sub_1CA94ADC8();
      sub_1CA2F104C();
      goto LABEL_12;
    case 2:
      OUTLINED_FUNCTION_7_9();
      sub_1CA94D408();

      OUTLINED_FUNCTION_22_4();
      v7 = v6 | 6;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_7_9();
      sub_1CA94D408();

      OUTLINED_FUNCTION_22_4();
LABEL_10:
      v10 = v7;
      v8 = OUTLINED_FUNCTION_20_0();
      MEMORY[0x1CCAA1300](v8);
      return v10;
    case 4:
      v4 = 0xD00000000000004CLL;
      if (!(a1 ^ 1 | a2))
      {
        v4 = 0xD000000000000042;
      }

      if (a1 | a2)
      {
        return v4;
      }

      else
      {
        return 0xD000000000000032;
      }

    default:
      OUTLINED_FUNCTION_7_9();
      sub_1CA94D408();
      MEMORY[0x1CCAA1300](0xD00000000000001DLL, 0x80000001CA9A04A0);
      sub_1CA94ADC8();
      sub_1CA2F104C();
      v3 = sub_1CA94C908();
      MEMORY[0x1CCAA1300](v3);

      MEMORY[0x1CCAA1300](0xD00000000000001ELL, 0x80000001CA9A04C0);
LABEL_12:
      v9 = sub_1CA94C908();
      MEMORY[0x1CCAA1300](v9);

      return v10;
  }
}

unint64_t sub_1CA2ED3C8(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1CA2ED190(a1, a2, a3);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_134();
    return sub_1CA2ED3C8(v6, v7, a3);
  }

  return result;
}

uint64_t sub_1CA2ED428(uint64_t a1, uint64_t a2, char a3)
{
  result = 200;
  switch(a3)
  {
    case 1:
      result = 300;
      break;
    case 2:
      result = 500;
      break;
    case 3:
      result = 600;
      break;
    case 4:
      result = 300 * a1 + 100;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA2ED47C(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v5;
  v6 = OUTLINED_FUNCTION_134();
  v8 = sub_1CA2ED3C8(v6, v7, a3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  return sub_1CA94C1E8();
}

uint64_t WFContentCollection.TypedValueResolutionContext.init(expectedType:displayRepresentationConfig:containerProvider:typeProvider:temporaryFileDirectoryURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1CA94AD08();
  OUTLINED_FUNCTION_52();
  (*(v12 + 32))(a6, a1);
  v13 = type metadata accessor for WFContentCollection.TypedValueResolutionContext(0);
  v14 = v13[5];
  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  (*(v15 + 32))(a6 + v14, a2);
  sub_1CA27F268(a3, a6 + v13[6]);
  sub_1CA27F268(a4, a6 + v13[7]);
  v16 = a6 + v13[8];

  return sub_1CA2ED774(a5, v16);
}

uint64_t type metadata accessor for WFContentCollection.TypedValueResolutionContext(uint64_t a1)
{
  result = qword_1EC441968;
  if (!qword_1EC441968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA2ED774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2ED7E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1CA94AC88();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v3[14] = swift_task_alloc();
  v5 = sub_1CA949F78();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v3[22] = swift_task_alloc();
  v6 = sub_1CA94ADC8();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2EDA58, 0, 0);
}

void sub_1CA2EDA58()
{
  v151 = v0;
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  v4 = *(v2 + 20);
  v5 = *MEMORY[0x1E69DB488];
  sub_1CA94B668();
  OUTLINED_FUNCTION_52();
  (*(v6 + 104))(v3 + v4, v5);
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  *(v3 + *(v2 + 28)) = [objc_opt_self() defaultContext];
  static WFContentItem.toolkitTypeIdentifier(context:)(v3, v1);
  sub_1CA2F146C(v3, type metadata accessor for WFContentItem.ToolKitTypeResolutionContext);
  v7 = v0[4];
  v8 = sub_1CA948D28();
  v0[27] = v8;
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v0[28] = v9;
  v0[29] = *(v11 + 64);
  v12 = swift_task_alloc();
  v0[30] = v12;
  sub_1CA948D18();
  v0[31] = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v13 = swift_task_alloc();
  v14 = *(v10 + 16);
  v0[32] = v14;
  v0[33] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v13, v12, v8);
  v15 = v7;
  v16 = sub_1CA949F68();
  v17 = sub_1CA94CC38();

  if (os_log_type_enabled(v16, v17))
  {
    v142 = v17;
    log = v16;
    v18 = v0[4];
    v19 = OUTLINED_FUNCTION_30_2();
    v149 = OUTLINED_FUNCTION_29_4();
    *v19 = 136315394;
    sub_1CA2F14C4();
    sub_1CA94D798();
    v146 = (v10 + 8);
    (*(v10 + 8))(v13, v8);
    v20 = OUTLINED_FUNCTION_3_3();
    v23 = sub_1CA26B54C(v20, v21, v22);

    *(v19 + 4) = v23;
    buf = v19;
    *(v19 + 12) = 2080;
    v24 = [v18 items];
    v25 = sub_1CA94C658();

    v26 = sub_1CA25B410(v25);
    if (v26)
    {
      v31 = v26;
      v150[0] = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v26 & ~(v26 >> 63), 0, v27, v28, v29, v30);
      if (v31 < 0)
      {
LABEL_30:
        __break(1u);
        return;
      }

      v32 = 0;
      v33 = v150[0];
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x1CCAA22D0](v32, v25);
        }

        else
        {
          v34 = *(v25 + 8 * v32 + 32);
        }

        v35 = v34;
        v36 = [v35 debugDescription];
        v37 = sub_1CA94C3A8();
        v39 = v38;

        v150[0] = v33;
        v45 = *(v33 + 16);
        v44 = *(v33 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1CA271524(v44 > 1, v45 + 1, 1, v40, v41, v42, v43);
          v33 = v150[0];
        }

        ++v32;
        *(v33 + 16) = v45 + 1;
        v46 = v33 + 16 * v45;
        *(v46 + 32) = v37;
        *(v46 + 40) = v39;
      }

      while (v31 != v32);
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }

    v53 = v0[20];
    v55 = v0[15];
    v54 = v0[16];
    v56 = MEMORY[0x1CCAA14D0](v33, MEMORY[0x1E69E6158]);
    v58 = v57;

    v59 = sub_1CA26B54C(v56, v58, &v149);

    *(buf + 14) = v59;
    _os_log_impl(&dword_1CA256000, log, v142, "[%s] Resolving content collection: %s", buf, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v60 = *(v54 + 8);
    v50 = v54 + 8;
    v60(v53, v55);
    v48 = v146;
  }

  else
  {
    v47 = v0[16];

    v49 = *(v10 + 8);
    v48 = (v10 + 8);
    v49(v13, v8);
    v50 = v47 + 8;
    v51 = OUTLINED_FUNCTION_3_3();
    v52(v51);
  }

  v0[34] = v50;
  v0[35] = v48;
  v62 = v0[13];
  v61 = v0[14];
  v63 = v0[12];
  v64 = v0[3];
  v147 = v0[4];

  v65 = sub_1CA94AD08();
  OUTLINED_FUNCTION_52();
  v67 = *(v66 + 16);
  v67(v63, v64, v65);
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
  sub_1CA94B658();
  sub_1CA27080C(v63, &unk_1EC445A40, &unk_1CA983150);
  v68 = type metadata accessor for WFContentCollection.TypedValueResolutionContext(0);
  v69 = v68[5];
  v70 = v62[5];
  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  (*(v71 + 16))(v61 + v70, v64 + v69);
  v72 = v62[6];
  v67(v61 + v72, v64, v65);
  __swift_storeEnumTagSinglePayload(v61 + v72, 0, 1, v65);
  sub_1CA2C9578(v64 + v68[6], v61 + v62[7]);
  sub_1CA2C9578(v64 + v68[7], v61 + v62[8]);
  sub_1CA2F13FC(v64 + v68[8], v61 + v62[9]);
  v73 = [v147 items];
  v74 = sub_1CA94C658();
  v0[36] = v74;

  v75 = sub_1CA25B410(v74);
  v76 = MEMORY[0x1E69E7CC0];
  v0[38] = MEMORY[0x1E69E7CC0];
  v0[39] = v76;
  v0[37] = v75;
  v77 = v0[36];
  if (!v75)
  {
    v81 = v0[32];
    v82 = v0[30];
    v83 = v0[27];

    sub_1CA949C58();
    v84 = swift_task_alloc();
    v81(v84, v82, v83);
    v85 = sub_1CA949F68();
    v86 = sub_1CA94CC38();
    v87 = os_log_type_enabled(v85, v86);
    v145 = v0[30];
    v89 = v0[27];
    v88 = v0[28];
    v90 = v0[26];
    v91 = v0[24];
    v148 = v0[23];
    v138 = v0[16];
    v139 = v0[15];
    bufa = v0[17];
    v143 = v0[14];
    if (v87)
    {
      v131 = v0[5];
      v92 = OUTLINED_FUNCTION_30_2();
      v150[0] = OUTLINED_FUNCTION_29_4();
      *v92 = 136315394;
      sub_1CA2F14C4();
      HIDWORD(v132) = v86;
      v134 = v89;
      v93 = sub_1CA94D798();
      v94 = v84;
      v96 = v95;
      v97 = *(v88 + 8);
      v97(v94, v89);
      v98 = v97;
      v99 = sub_1CA26B54C(v93, v96, v150);

      *(v92 + 4) = v99;
      *(v92 + 12) = 2080;
      v100 = sub_1CA94C218();
      v101 = MEMORY[0x1CCAA14D0](v100, v131);
      v103 = v102;

      v104 = sub_1CA26B54C(v101, v103, v150);

      *(v92 + 14) = v104;
      _os_log_impl(&dword_1CA256000, v85, BYTE4(v132), "[%s] Resolved content collection into: %s", v92, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v113 = OUTLINED_FUNCTION_19_3(v105, v106, v107, v108, v109, v110, v111, v112, v131, v132, v134, v90, v138, v139, bufa);
      v114(v113);
      OUTLINED_FUNCTION_0_11();
      sub_1CA2F146C(v143, v115);
      v98(v145, v135);
      (*(v91 + 8))(v137, v148);
    }

    else
    {

      v116 = *(v88 + 8);
      v117 = v116(v84, v89);
      v125 = OUTLINED_FUNCTION_19_3(v117, v118, v119, v120, v121, v122, v123, v124, v130, v132, v133, v136, v138, v139, bufa);
      v126(v125);
      OUTLINED_FUNCTION_0_11();
      sub_1CA2F146C(v143, v127);
      v116(v145, v89);
      (*(v91 + 8))(v90, v148);
    }

    OUTLINED_FUNCTION_27_0();

    __asm { BRAA            X2, X16 }
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    v78 = MEMORY[0x1CCAA22D0](0);
    goto LABEL_19;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v78 = *(v77 + 32);
LABEL_19:
  v0[40] = v78;
  v0[41] = 1;
  v79 = swift_task_alloc();
  v0[42] = v79;
  *v79 = v0;
  OUTLINED_FUNCTION_4_7(v79);
  OUTLINED_FUNCTION_27_0();

  WFContentItem.resolve(with:)();
}

uint64_t sub_1CA2EE55C()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v2 + 344) = v0;

  if (v0)
  {

    v6 = sub_1CA2EF164;
  }

  else
  {
    v6 = sub_1CA2EE66C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

id sub_1CA2EE66C()
{
  v167 = v3;
  v154 = *(v3 + 320);
  OUTLINED_FUNCTION_14_6();
  v4 = *(v3 + 80);
  v160 = *(v3 + 88);
  v6 = *(v3 + 40);
  v5 = *(v3 + 48);
  sub_1CA949C58();
  v163 = swift_task_alloc();
  v0(v163, v1, v2);
  v7 = *(v5 + 16);
  v7(v4, v160, v6);
  v8 = v154;
  v9 = sub_1CA949F68();
  v10 = sub_1CA94CC38();

  v157 = v7;
  if (os_log_type_enabled(v9, v10))
  {
    v130 = *(v3 + 280);
    v131 = *(v3 + 320);
    v12 = *(v3 + 216);
    v11 = *(v3 + 224);
    v150 = *(v3 + 152);
    v145 = *(v3 + 128);
    v147 = *(v3 + 120);
    v133 = *(v3 + 72);
    v134 = *(v3 + 80);
    loga = v9;
    v13 = *(v3 + 40);
    v14 = *(v3 + 48);
    v15 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v166 = v140;
    *v15 = 136315650;
    sub_1CA2F14C4();
    LODWORD(v137) = v10;
    v16 = sub_1CA94D798();
    v18 = v17;
    v155 = *(v11 + 8);
    v155(v163, v12);
    sub_1CA26B54C(v16, v18, &v166);
    OUTLINED_FUNCTION_28_3();
    *(v15 + 4) = v163;
    *(v15 + 12) = 2080;
    v19 = [v131 debugDescription];
    v20 = sub_1CA94C3A8();
    v22 = v21;

    v23 = sub_1CA26B54C(v20, v22, &v166);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    v24 = OUTLINED_FUNCTION_3_3();
    (v7)(v24);
    v25 = sub_1CA94C408();
    v27 = v26;
    v28 = *(v14 + 8);
    v28(v134, v13);
    v29 = OUTLINED_FUNCTION_23_4();
    sub_1CA26B54C(v29, v27, v30);
    OUTLINED_FUNCTION_28_3();
    *(v15 + 24) = v25;
    _os_log_impl(&dword_1CA256000, loga, v137, "[%s] Resolved %s into %s", v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v31 = *(v145 + 8);
    v31(v150, v147);
  }

  else
  {
    v32 = *(v3 + 216);
    v33 = *(v3 + 224);
    v151 = *(v3 + 152);
    v35 = *(v3 + 120);
    v34 = *(v3 + 128);
    v36 = *(v3 + 48);

    v37 = *(v36 + 8);
    v38 = OUTLINED_FUNCTION_162();
    v37(v38);
    v28 = v37;
    v155 = *(v33 + 8);
    v155(v163, v32);
    v31 = *(v34 + 8);
    v31(v151, v35);
  }

  v39 = *(v3 + 192);
  v40 = *(v3 + 200);
  v41 = *(v3 + 184);

  sub_1CA94AC28();
  OUTLINED_FUNCTION_21_6();
  sub_1CA2B5928();
  v43 = v42;
  v45 = *(v39 + 8);
  v44 = (v39 + 8);
  v45(v40, v41);
  v46 = &unk_1CA982000;
  if (v43 & 1) != 0 || (sub_1CA2B5928(), (v47))
  {
    v157(*(v3 + 64), *(v3 + 88), *(v3 + 40));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v3 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CA2E4D50();
      v49 = v127;
    }

    v50 = *(v49 + 16);
    if (v50 >= *(v49 + 24) >> 1)
    {
      sub_1CA2E4D50();
      v49 = v128;
    }

    v51 = *(v3 + 64);
    v52 = *(v3 + 40);
    v53 = *(v3 + 48);

    v54 = OUTLINED_FUNCTION_21_6();
    (v28)(v54);
    *(v49 + 16) = v50 + 1;
    result = (*(v53 + 32))(v49 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v50, v51, v52);
    v56 = v49;
  }

  else
  {
    v152 = v31;
    OUTLINED_FUNCTION_14_6();
    sub_1CA949C58();
    v164 = swift_task_alloc();
    v44(v164, v43, v40);
    v57 = OUTLINED_FUNCTION_9_5();
    (v157)(v57);
    v58 = sub_1CA949F68();
    v148 = sub_1CA94CC38();
    v59 = os_log_type_enabled(v58, v148);
    v60 = *(v3 + 320);
    v61 = *(v3 + 216);
    v161 = *(v3 + 144);
    v158 = *(v3 + 120);
    v62 = *(v3 + 88);
    v63 = *(v3 + 56);
    v64 = *(v3 + 40);
    if (v59)
    {
      v134 = *(v3 + 48) + 8;
      v65 = OUTLINED_FUNCTION_30_2();
      v137 = OUTLINED_FUNCTION_29_4();
      v166 = v137;
      v133 = v64;
      v46 = &unk_1CA982000;
      *v65 = 136315394;
      sub_1CA2F14C4();
      v140 = v60;
      sub_1CA94D798();
      logb = v62;
      v67 = v66;
      v155(v164, v61);
      v68 = OUTLINED_FUNCTION_23_4();
      v70 = sub_1CA26B54C(v68, v67, v69);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      sub_1CA94AC38();
      v72 = v71;
      v28(v63, v133);
      v73 = OUTLINED_FUNCTION_23_4();
      v75 = sub_1CA26B54C(v73, v72, v74);

      *(v65 + 14) = v75;
      _os_log_impl(&dword_1CA256000, v58, v148, "[%s] Dropping %s as it doesn't match any of the expected types", v65, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v152(v161, v158);
      v28(logb, v133);
    }

    else
    {

      v28(v63, v64);
      v155(v164, v61);
      v152(v161, v158);
      v28(v62, v64);
      v46 = &unk_1CA982000;
    }

    v49 = *(v3 + 304);
    v56 = *(v3 + 312);
  }

  v76 = *(v3 + 328);
  *(v3 + 304) = v49;
  *(v3 + 312) = v56;
  v77 = *(v3 + 288);
  if (v76 == *(v3 + 296))
  {
    v162 = v56;
    v78 = *(v3 + 256);
    v79 = *(v3 + 240);
    v80 = *(v3 + 216);

    sub_1CA949C58();
    v165 = swift_task_alloc();
    v78(v165, v79, v80);
    v81 = sub_1CA949F68();
    v82 = sub_1CA94CC38();
    v83 = os_log_type_enabled(v81, v82);
    v159 = *(v3 + 240);
    v85 = *(v3 + 216);
    v84 = *(v3 + 224);
    v86 = *(v3 + 208);
    v87 = *(v3 + 184);
    v146 = *(v3 + 128);
    v149 = *(v3 + 136);
    v156 = (*(v3 + 192) + 8);
    log = *(v3 + 120);
    v153 = *(v3 + 112);
    if (v83)
    {
      v132 = *(v3 + 40);
      LODWORD(v133) = v82;
      v88 = v46;
      v89 = OUTLINED_FUNCTION_30_2();
      v166 = OUTLINED_FUNCTION_29_4();
      *v89 = v88[73];
      sub_1CA2F14C4();
      v90 = sub_1CA94D798();
      v138 = v87;
      v92 = v91;
      v135 = *(v84 + 8);
      v135(v165, v85);
      sub_1CA26B54C(v90, v92, &v166);
      OUTLINED_FUNCTION_28_3();
      *(v89 + 4) = v165;
      *(v89 + 12) = 2080;
      v93 = sub_1CA94C218();
      v94 = MEMORY[0x1CCAA14D0](v93, v132);
      v96 = v95;

      v97 = OUTLINED_FUNCTION_23_4();
      sub_1CA26B54C(v97, v96, v98);
      OUTLINED_FUNCTION_28_3();
      *(v89 + 14) = v94;
      _os_log_impl(&dword_1CA256000, v81, v133, "[%s] Resolved content collection into: %s", v89, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v107 = OUTLINED_FUNCTION_20_4(v99, v100, v101, v102, v103, v104, v105, v106, v129, v130, v132, v133, v135, v138, v86, log, v146, v149);
      v108(v107);
      OUTLINED_FUNCTION_0_11();
      sub_1CA2F146C(v153, v109);
      v136(v159, v85);
      (*v156)(v141, v139);
    }

    else
    {

      v111 = *(v84 + 8);
      v112 = v111(v165, v85);
      v120 = OUTLINED_FUNCTION_20_4(v112, v113, v114, v115, v116, v117, v118, v119, v129, v130, v131, v133, v134, v137, v140, log, v146, v149);
      v121(v120);
      OUTLINED_FUNCTION_0_11();
      sub_1CA2F146C(v153, v122);
      v111(v159, v85);
      v123 = OUTLINED_FUNCTION_70();
      v125(v123, v124);
    }

    v126 = *(v3 + 8);

    return v126(v162);
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1CCAA22D0](v76);
  }

  else
  {
    if (v76 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      __break(1u);
      return result;
    }

    result = *(v77 + 8 * v76 + 32);
  }

  *(v3 + 320) = result;
  *(v3 + 328) = v76 + 1;
  if (__OFADD__(v76, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v110 = swift_task_alloc();
  *(v3 + 336) = v110;
  *v110 = v3;
  OUTLINED_FUNCTION_4_7(v110);

  return WFContentItem.resolve(with:)();
}

uint64_t sub_1CA2EF164()
{
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_0_11();
  sub_1CA2F146C(v1, v2);
  v3 = OUTLINED_FUNCTION_20_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_70();
  v6(v5);

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t WFContentCollection.resolve(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  v1[15] = OUTLINED_FUNCTION_13_5();
  v1[16] = swift_task_alloc();
  v4 = sub_1CA94AC88();
  v1[17] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_13_5();
  v1[20] = swift_task_alloc();
  v6 = sub_1CA94ADC8();
  v1[21] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[22] = v7;
  v1[23] = swift_task_alloc();
  v8 = sub_1CA94AD08();
  v1[24] = v8;
  OUTLINED_FUNCTION_12(v8);
  v1[25] = v9;
  v1[26] = OUTLINED_FUNCTION_13_5();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v10 = sub_1CA949EE8();
  v1[29] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[30] = v11;
  v1[31] = OUTLINED_FUNCTION_13_5();
  v1[32] = swift_task_alloc();
  v12 = sub_1CA949F08();
  v1[33] = v12;
  OUTLINED_FUNCTION_12(v12);
  v1[34] = v13;
  v1[35] = OUTLINED_FUNCTION_13_5();
  v1[36] = swift_task_alloc();
  v14 = sub_1CA949B18();
  v1[37] = v14;
  OUTLINED_FUNCTION_12(v14);
  v1[38] = v15;
  v1[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2EF594, 0, 0);
}

uint64_t sub_1CA2EF594()
{
  v27 = v0;
  v1 = swift_allocObject();
  *(v1 + 16) = 32;
  v2 = swift_allocObject();
  *(v2 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4441A0, &off_1CA9827D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  *(inited + 32) = sub_1CA2F0CCC;
  *(inited + 40) = v1;
  *(inited + 48) = sub_1CA2F1550;
  *(inited + 56) = v2;
  *(inited + 64) = sub_1CA2F0C74;
  *(inited + 72) = 0;
  sub_1CA949AD8();
  sub_1CA949EF8();
  sub_1CA949EC8();
  v4 = sub_1CA949EF8();
  v5 = sub_1CA94CE18();
  if (sub_1CA94D078())
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = 0;
    v25 = 0;
    v26 = v7;
    *v6 = 258;
    v24 = v6 + 2;
    while (v8 != 48)
    {
      v9 = *(inited + v8 + 32);

      v9(&v24, &v25, &v26);

      v8 += 16;
    }

    v10 = sub_1CA949ED8();
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v4, v5, v10, "resolveContentCollection", "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {
  }

  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[33];
  v14 = v0[34];
  v15 = v0[32];
  v17 = v0[29];
  v16 = v0[30];
  (*(v16 + 16))(v0[31], v15, v17);
  sub_1CA949F48();
  swift_allocObject();
  sub_1CA949F38();
  (*(v14 + 16))(v12, v11, v13);
  sub_1CA949B28();
  (*(v16 + 8))(v15, v17);
  v18 = OUTLINED_FUNCTION_20_0();
  v19(v18);
  v20 = sub_1CA94ACE8();
  v0[40] = v20;
  v21 = swift_task_alloc();
  v0[41] = v21;
  *v21 = v0;
  v21[1] = sub_1CA2EF8F8;
  v22 = v0[13];

  return sub_1CA2ED7E4(v20, v22);
}

uint64_t sub_1CA2EF8F8()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v4;
  *(v2 + 344) = v0;

  if (v0)
  {
    v5 = sub_1CA2F02C8;
  }

  else
  {

    v5 = sub_1CA2EFA0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA2EFA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v96 = v18[42];
  v97 = sub_1CA94ACE8();
  v19 = *(v96 + 16);
  if (v19)
  {
    v20 = v18[42];
    v21 = v18[22];
    v22 = v18[18];
    v101 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8CEC(0, v19, 0);
    v23 = *(v22 + 16);
    v22 += 16;
    v24 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v98 = *(v22 + 56);
    v99 = v23;
    v25 = v18;
    do
    {
      v26 = OUTLINED_FUNCTION_9_5();
      v99(v26);
      sub_1CA94AC28();
      v27 = OUTLINED_FUNCTION_162();
      v28(v27);
      v30 = *(v101 + 16);
      v29 = *(v101 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1CA2B8CEC(v29 > 1, v30 + 1, 1);
      }

      v31 = v18[23];
      v32 = v18[21];
      *(v101 + 16) = v30 + 1;
      (*(v21 + 32))(v101 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v30, v31, v32);
      v24 += v98;
      --v19;
    }

    while (v19);
  }

  else
  {
    v25 = v18;
  }

  v33 = v25[28];
  v35 = v25[24];
  v34 = v25[25];
  v36 = v25[13];
  sub_1CA2E2EEC();
  v37 = v25;
  v39 = v38;
  v40 = *(v34 + 16);
  v40(v33, v36, v35);
  v41 = OUTLINED_FUNCTION_21_6();
  v43 = v42(v41);
  if (v43 == *MEMORY[0x1E69DAF30])
  {
    goto LABEL_9;
  }

  if (v43 == *MEMORY[0x1E69DAF18])
  {
    v52 = v37[27];
    v53 = v37[24];
    (*(v37[25] + 96))(v37[28], v53);
    v54 = swift_projectBox();
    v40(v52, v54, v53);
    if (!*(v96 + 16))
    {
      v90 = [v37[14] items];
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      v91 = sub_1CA94C658();

      v92 = sub_1CA25B410(v91);

      if (v92)
      {

        sub_1CA2F0CD4();
        swift_allocError();
        *v93 = v97;
        *(v93 + 8) = v39;
        *(v93 + 16) = 0;
        swift_willThrow();
        v94 = OUTLINED_FUNCTION_162();
        v95(v94);

        goto LABEL_12;
      }
    }

    v55 = v37[27];
    v57 = v37[24];
    v56 = v37[25];
    v58 = v37[18];
    v100 = v37[12];

    sub_1CA94A888();
    v59 = swift_allocBox();
    v60 = OUTLINED_FUNCTION_9_5();
    (v40)(v60);
    sub_1CA94A848();
    (*(v56 + 8))(v55, v57);
    *v100 = v59;
    (*(v58 + 104))();

    goto LABEL_17;
  }

  if (v43 == *MEMORY[0x1E69DAF48])
  {
    v70 = v37[42];
    v71 = v37[17];
    v72 = v37[15];

    v73 = OUTLINED_FUNCTION_70();
    v74(v73);
    OUTLINED_FUNCTION_6_10();
    sub_1CA2ECF9C(v70, v75, v72);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v71);
    v77 = v37[17];
    v78 = v37[18];
    v79 = v37[15];
    v80 = v37[12];
    if (EnumTagSinglePayload == 1)
    {
      v81 = sub_1CA94AC18();
      v82 = swift_allocBox();
      (*(*(v81 - 8) + 104))(v83, *MEMORY[0x1E69DADD8], v81);
      *v80 = v82;
      (*(v78 + 104))(v80, *MEMORY[0x1E69DAE70], v77);
      if (__swift_getEnumTagSinglePayload(v79, 1, v77) != 1)
      {
        sub_1CA27080C(v37[15], &qword_1EC444C60, &qword_1CA9827D0);
      }
    }

    else
    {
      (*(v78 + 32))(v37[12], v37[15], v37[17]);
    }

    goto LABEL_17;
  }

  v84 = v43 == *MEMORY[0x1E69DAF38] || v43 == *MEMORY[0x1E69DAF20];
  if (v84 || v43 == *MEMORY[0x1E69DAF28])
  {
LABEL_9:
    v44 = v37[42];
    v46 = v37[16];
    v45 = v37[17];
    (*(v37[25] + 8))(v37[28], v37[24]);
    OUTLINED_FUNCTION_6_10();
    sub_1CA2ECF9C(v44, v47, v46);

    if (__swift_getEnumTagSinglePayload(v46, 1, v45) == 1)
    {
      sub_1CA27080C(v37[16], &qword_1EC444C60, &qword_1CA9827D0);
      sub_1CA2F0CD4();
      swift_allocError();
      *v48 = v97;
      *(v48 + 8) = v39;
      *(v48 + 16) = 0;
LABEL_11:
      swift_willThrow();
LABEL_12:
      sub_1CA2F0408();
      v49 = OUTLINED_FUNCTION_20_0();
      v50(v49);

      v51 = v37[1];
LABEL_18:

      return v51();
    }

    v62 = v37[18];
    v61 = v37[19];
    v63 = v37[17];
    v64 = v37[12];

    v65 = *(v62 + 32);
    v66 = OUTLINED_FUNCTION_21_6();
    v65(v66);
    (v65)(v64, v61, v63);
LABEL_17:
    sub_1CA2F0408();
    v67 = OUTLINED_FUNCTION_20_0();
    v68(v67);

    OUTLINED_FUNCTION_5();
    goto LABEL_18;
  }

  if (v43 == *MEMORY[0x1E69DAF40])
  {
    v86 = v37[28];
    v88 = v37[24];
    v87 = v37[25];

    (*(v87 + 8))(v86, v88);
    sub_1CA2F0CD4();
    swift_allocError();
    *v89 = 0xD000000000000031;
    *(v89 + 8) = 0x80000001CA9A0340;
    *(v89 + 16) = 2;
    goto LABEL_11;
  }

  return sub_1CA94D7E8();
}

uint64_t sub_1CA2F02C8()
{

  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  sub_1CA2F0408();
  (*(v1 + 8))(v2, v3);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA2F0408()
{
  v26 = sub_1CA949F18();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1CA949EE8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA949F08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA949AC8();
  v27 = sub_1CA949AF8();
  v10 = v9;
  sub_1CA949B08();
  v11 = sub_1CA949EF8();
  sub_1CA949F28();
  v25 = sub_1CA94CE08();
  result = sub_1CA94D078();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }

  v21 = v11;
  v22 = v6;
  v23 = v2;
  v24 = v1;
  if ((v10 & 1) == 0)
  {
    v14 = v28;
    v13 = v29;
    v15 = v27;
    if (v27)
    {
      v16 = v26;
LABEL_9:

      sub_1CA949F58();

      v17 = (*(v13 + 88))(v14, v16);
      v11 = v21;
      if (v17 == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v14, v16);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1CA949ED8();
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v11, v25, v20, v15, v18, v19, 2u);
      MEMORY[0x1CCAA4BF0](v19, -1, -1);
      v2 = v23;
      v1 = v24;
      v6 = v22;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  v14 = v28;
  v13 = v29;
  if (HIDWORD(v27))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    v16 = v26;
    if (v27 >> 16 <= 0x10)
    {
      v15 = &v30;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CA2F077C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2F0828;

  return WFContentCollection.resolve(with:)();
}

uint64_t sub_1CA2F0828()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2F0910(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  v7 = sub_1CA2F10A4(&unk_1EC4441C8, &protocol conformance descriptor for WFContentCollection);
  *v5 = v2;
  v5[1] = sub_1CA2F1548;

  return MEMORY[0x1EEE4B290](a1, a2, v6, v7);
}

uint64_t sub_1CA2F0A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CA94AA48();
  OUTLINED_FUNCTION_52();
  v5 = *(v4 + 104);
  if ((a1 - 1) > 7)
  {
    v6 = MEMORY[0x1E69DACE0];
  }

  else
  {
    v6 = qword_1E8372AF0[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7);
}

uint64_t sub_1CA2F0A90()
{
  v1 = sub_1CA94AA48();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  (*(v3 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  v6 = OUTLINED_FUNCTION_3_3();
  v8 = v7(v6);
  v9 = 0;
  if (v8 != *MEMORY[0x1E69DACE0])
  {
    if (v8 == *MEMORY[0x1E69DACF0])
    {
      return 1;
    }

    else if (v8 == *MEMORY[0x1E69DACD8])
    {
      return 2;
    }

    else if (v8 == *MEMORY[0x1E69DACF8])
    {
      return 3;
    }

    else if (v8 == *MEMORY[0x1E69DACB8])
    {
      return 4;
    }

    else if (v8 == *MEMORY[0x1E69DACC8])
    {
      return 5;
    }

    else if (v8 == *MEMORY[0x1E69DACD0])
    {
      return 6;
    }

    else if (v8 == *MEMORY[0x1E69DACC0])
    {
      return 7;
    }

    else if (v8 == *MEMORY[0x1E69DACE8])
    {
      return 8;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_3_3();
      v11(v10);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_1CA2F0C74(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  sub_1CA949AE8();
  v5 = sub_1CA94D438();
  v7 = sub_1CA26B54C(v5, v6, a3);

  v9 = *a1;
  *v9 = v7;
  *a1 = v9 + 1;
  return result;
}

unint64_t sub_1CA2F0CD4()
{
  result = qword_1EC4441A8;
  if (!qword_1EC4441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4441A8);
  }

  return result;
}

void sub_1CA2F0D84(uint64_t a1)
{
  sub_1CA94AD08();
  if (v1 <= 0x3F)
  {
    sub_1CA94B728();
    if (v2 <= 0x3F)
    {
      sub_1CA2F0E70(319, &qword_1EC442210, &protocol descriptor for ContainerDefinitionProvider);
      if (v3 <= 0x3F)
      {
        sub_1CA2F0E70(319, &qword_1EC4424D8, &protocol descriptor for TypeDefinitionProvider);
        if (v4 <= 0x3F)
        {
          sub_1CA2F0EC4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1CA2F0E70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1CA2F0EC4(uint64_t a1)
{
  if (!qword_1EC4441B8)
  {
    sub_1CA948BA8();
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC4441B8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit44ContentCollectionToTypedValueResolutionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CA2F0F4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_1CA2F0F8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1CA2F0FD0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1CA2F0FF8()
{
  result = qword_1EC4441C0;
  if (!qword_1EC4441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4441C0);
  }

  return result;
}

unint64_t sub_1CA2F104C()
{
  result = qword_1EC441D00;
  if (!qword_1EC441D00)
  {
    sub_1CA94ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441D00);
  }

  return result;
}

uint64_t sub_1CA2F10A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, &qword_1EC441960, 0x1E6996D40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CA2F10F8(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || (OUTLINED_FUNCTION_25_4(), v8 <= v7))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v5 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v5 + 36) != v4)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v5 + 48);
  v6(0);
  OUTLINED_FUNCTION_52();
  v12 = *(v11 + 16);
  v13 = v9 + *(v11 + 72) * a1;

  v12(a2, v13, v10);
}

void sub_1CA2F11B0(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v7 = a5;
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v11 = OUTLINED_FUNCTION_134();
      MEMORY[0x1CCAA21A0](v11);
      sub_1CA25B3D0(0, v7, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1CA25B3D0(0, a5, a6);
    OUTLINED_FUNCTION_134();
    if (sub_1CA94D308() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_134();
      sub_1CA94D318();
      swift_dynamicCast();
      v7 = v19;
      v12 = sub_1CA94CFC8();
      v13 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v10 = v12 & v13;
        if (((*(a4 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v14 = *(*(a4 + 48) + 8 * v10);
        v15 = sub_1CA94CFD8();

        if (v15)
        {
          goto LABEL_15;
        }

        v12 = v10 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || (OUTLINED_FUNCTION_25_4(), v16 <= v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_1CA2F13A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return 1 << *(a1 + 32);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return a2(a1);
}

uint64_t sub_1CA2F13FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2F146C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1CA2F14C4()
{
  result = qword_1EC442D08;
  if (!qword_1EC442D08)
  {
    sub_1CA948D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442D08);
  }

  return result;
}

uint64_t sub_1CA2F1510(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    if (a6)
    {
      return a7(result, a2, a4, a5);
    }
  }

  else if ((a6 & 1) == 0)
  {
    if (a2 == a5)
    {
      return result == a4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CA2F1590()
{
  v117 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("find|search|detect|scan|e-mail|emails|photos", 44);
  v6 = v5;
  v7 = sub_1CA94C438("find|search|detect|scan|e-mail|emails|photos", 44);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v122 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v11;
  v12 = v111 - v122;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v120 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v111 - v124;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v119 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v119;
  *(inited + 80) = v18;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000012;
  *(inited + 128) = 0x80000001CA9933B0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Get Images from Input (Description Summary)", 43);
  v115 = v23;
  v24 = sub_1CA94C438("Gets images from the result of the previous action.\n\nFor example, this action can get the album art of a song, or all the images on a web page.", 143);
  v26 = v25;
  v116 = v111;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v111 - v122;
  sub_1CA948D98();
  v28 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = v111 - v124;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v115, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v119;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v118;
  *(inited + 160) = sub_1CA6B3784(v32);
  *(inited + 184) = v33;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x69662E6F746F6870;
  *(inited + 248) = 0xEA00000000006C6CLL;
  *(inited + 264) = v34;
  *(inited + 272) = @"Input";
  v35 = v34;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v118 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v116;
  *(v36 + 192) = &unk_1F49F3028;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v115 = v42;
  *(inited + 280) = v41;
  *(inited + 304) = v42;
  *(inited + 312) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438("Get Images from Input (Action Name)", 35);
  v112 = v45;
  v46 = sub_1CA94C438("Get Images from Input", 21);
  v48 = v47;
  v113 = v111;
  MEMORY[0x1EEE9AC00](v46);
  v49 = v111 - v122;
  sub_1CA948D98();
  v50 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v111 - v124;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v44, v112, v46, v48, 0, 0, v49, v51);
  v53 = v119;
  *(inited + 344) = v119;
  *(inited + 352) = @"Output";
  v54 = swift_allocObject();
  *(v54 + 16) = v118;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = 1;
  *(v54 + 120) = MEMORY[0x1E69E6370];
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Images (Default Output Name)", 28);
  v112 = v57;
  v113 = v56;
  v58 = sub_1CA94C438("Images", 6);
  v60 = v59;
  v114 = v111;
  MEMORY[0x1EEE9AC00](v58);
  v61 = v111 - v122;
  sub_1CA948D98();
  v62 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = v111 - v124;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v113, v112, v58, v60, 0, 0, v61, v63);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 216) = v116;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 192) = &unk_1F49F3058;
  v65 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v115;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v116 = swift_allocObject();
  *(v116 + 1) = xmmword_1CA9813B0;
  v115 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = v118;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x80000001CA99B030;
  *(v66 + 64) = v65;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0x7475706E494657;
  *(v66 + 88) = 0xE700000000000000;
  *(v66 + 104) = v65;
  *(v66 + 112) = @"Label";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438("Input (WFInput)", 15);
  v113 = v72;
  v114 = v71;
  v73 = sub_1CA94C438("Input", 5);
  v112 = v74;
  *&v118 = v111;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v122;
  sub_1CA948D98();
  v76 = v121;
  v77 = [v121 bundleURL];
  v111[1] = v111;
  MEMORY[0x1EEE9AC00](v77);
  v78 = v111 - v124;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 120) = sub_1CA2F9F14(v114, v113, v73, v112, 0, 0, v111 - v75, v78);
  v80 = v119;
  *(v66 + 144) = v119;
  *(v66 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438("Input (WFInput)", 15);
  v113 = v83;
  v114 = v82;
  v112 = sub_1CA94C438("Input", 5);
  v85 = v84;
  *&v118 = v111;
  MEMORY[0x1EEE9AC00](v112);
  v86 = v111 - v75;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v111 - v124;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v114, v113, v112, v85, 0, 0, v86, v88);
  *(v66 + 184) = v80;
  *(v66 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  v93 = v116;
  v116[4] = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v93;
  *(inited + 424) = v94;
  *(inited + 432) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438("Get images from ${WFInput} (Parameter Summary)", 46);
  v98 = v97;
  v99 = sub_1CA94C438("Get images from ${WFInput}", 26);
  v101 = v100;
  v119 = v111;
  MEMORY[0x1EEE9AC00](v99);
  v102 = v111 - v122;
  sub_1CA948D98();
  v103 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v111 - v124;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v108 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v107;
  *(inited + 464) = v108;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v109 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F24E8()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A0770;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("text|pdf|ocr|string|scan", 24);
  v6 = v5;
  v7 = sub_1CA94C438("text|pdf|ocr|string|scan", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = v11;
  v127 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v113 - v127;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v126 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v113 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v121 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Optimize File Size of PDF (Description Summary)", 47);
  v118 = v24;
  v25 = sub_1CA94C438("Optimizes the file size of the provided PDF file by compressing its images.\n\nIf the images contained in the PDF are already compressed, this action might not have a measurable effect on file size.", 196);
  v27 = v26;
  v119 = &v113;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v113 - v127;
  sub_1CA948D98();
  v29 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v113 - v123;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v118, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v122;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v121;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000022;
  *(inited + 208) = 0x80000001CA9A08B0;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  v36 = v35;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v117 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v121;
  *(v37 + 192) = &unk_1F49F3088;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v119 = v44;
  *(inited + 280) = v43;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Optimize File Size of PDF (Action Name)", 39);
  v115 = v47;
  v48 = sub_1CA94C438("Optimize File Size of PDF", 25);
  v50 = v49;
  v116 = &v113;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v113 - v127;
  sub_1CA948D98();
  v52 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v113 - v123;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v115, v48, v50, 0, 0, v51, v53);
  v55 = v122;
  *(inited + 344) = v122;
  *(inited + 352) = @"Output";
  v56 = swift_allocObject();
  *(v56 + 16) = v117;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438("Optimized PDF (Default Output Name)", 35);
  v116 = v59;
  *&v117 = v58;
  v60 = sub_1CA94C438("Optimized PDF", 13);
  v62 = v61;
  v118 = &v113;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v113 - v127;
  sub_1CA948D98();
  v64 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v113 - v123;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v117, v116, v60, v62, 0, 0, v63, v65);
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  v67 = v121;
  *(v56 + 216) = v121;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F49F30B8;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v119;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA981370;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000015;
  *(v69 + 48) = 0x80000001CA99B1E0;
  *(v69 + 64) = v68;
  *(v69 + 72) = @"FilePickerSupportedTypes";
  *(v69 + 80) = &unk_1F49F30E8;
  *(v69 + 104) = v67;
  *(v69 + 112) = @"Key";
  *(v69 + 120) = 0x7475706E494657;
  *(v69 + 128) = 0xE700000000000000;
  *(v69 + 144) = v68;
  *(v69 + 152) = @"Label";
  v70 = @"Parameters";
  v71 = @"Class";
  v72 = @"FilePickerSupportedTypes";
  v73 = @"Key";
  v74 = @"Label";
  v75 = sub_1CA94C438("PDF (WFInput)", 13);
  v115 = v76;
  v116 = v75;
  v77 = sub_1CA94C438("PDF", 3);
  v114 = v78;
  *&v117 = &v113;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v113 - v127;
  sub_1CA948D98();
  v80 = v124;
  v81 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v123;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 160) = sub_1CA2F9F14(v116, v115, v77, v114, 0, 0, v79, &v113 - v82);
  *(v69 + 184) = v122;
  *(v69 + 192) = @"Placeholder";
  v84 = @"Placeholder";
  v85 = sub_1CA94C438("Document (WFInput)", 18);
  v115 = v86;
  v116 = v85;
  v87 = sub_1CA94C438("Document", 8);
  v114 = v88;
  *&v117 = &v113;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v113 - v127;
  sub_1CA948D98();
  v90 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v116, v115, v87, v114, 0, 0, v89, &v113 - v82);
  *(v69 + 224) = v122;
  *(v69 + 200) = v92;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v93 = sub_1CA94C1E8();
  v94 = sub_1CA2F864C(v93);
  v95 = v119;
  v119[4] = v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v95;
  *(inited + 424) = v96;
  *(inited + 432) = @"ParameterSummary";
  v97 = @"ParameterSummary";
  v98 = sub_1CA94C438("Optimize file size of ${WFInput} (Parameter Summary)", 52);
  v100 = v99;
  v101 = sub_1CA94C438("Optimize file size of ${WFInput}", 32);
  v103 = v102;
  v122 = &v113;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v113 - v127;
  sub_1CA948D98();
  v105 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v113 - v123;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v98, v100, v101, v103, 0, 0, v104, v106);
  v109 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v110 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v109;
  *(inited + 464) = v110;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 504) = v121;
  *(inited + 480) = &unk_1F49F3118;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v111 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F343C()
{
  v138 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9A0A40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v142 = sub_1CA94C438("record|playback|automation|event", 32);
  v5 = v4;
  v6 = sub_1CA94C438("record|playback|automation|event", 32);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v144 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v145 = v10;
  v11 = v127 - v144;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v141 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v143 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v146 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v127 - v146;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v142, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v142 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v140 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Records and plays back mouse and keyboard events.", 49);
  v137 = v24;
  v25 = sub_1CA94C438("Records and plays back mouse and keyboard events.", 49);
  v27 = v26;
  v139 = v127;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v127 - v144;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v127 - v146;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v137, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v142;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v140;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"Discoverable";
  v35 = MEMORY[0x1E69E6370];
  *(inited + 160) = 0;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000023;
  *(inited + 248) = 0x80000001CA9A0AD0;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"Discoverable";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Name";
  v41 = sub_1CA94C438("Watch Me Do (Action Name)", 25);
  v43 = v42;
  v44 = sub_1CA94C438("Watch Me Do", 11);
  v46 = v45;
  v140 = v127;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v127 - v144;
  sub_1CA948D98();
  v48 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v127 - v146;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v142;
  *(inited + 312) = @"Parameters";
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v140 = swift_allocObject();
  *(v140 + 1) = xmmword_1CA981360;
  v139 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981370;
  *(v51 + 32) = @"AllowsMultipleValues";
  *(v51 + 40) = 1;
  *(v51 + 64) = MEMORY[0x1E69E6370];
  *(v51 + 72) = @"Class";
  *(v51 + 80) = 0xD00000000000001BLL;
  *(v51 + 88) = 0x80000001CA9A0B30;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 104) = MEMORY[0x1E69E6158];
  *(v51 + 112) = @"Key";
  *(v51 + 120) = 0x7645726573554657;
  *(v51 + 128) = 0xEB00000000746E65;
  *(v51 + 144) = v52;
  *(v51 + 152) = @"Label";
  v53 = @"Class";
  v54 = @"Key";
  v55 = @"Label";
  v130 = v53;
  v134 = v54;
  v135 = v55;
  v56 = @"Parameters";
  v57 = @"AllowsMultipleValues";
  v131 = sub_1CA94C438("User Event (WFUserEvent)", 24);
  v129 = v58;
  v59 = sub_1CA94C438("User Event", 10);
  v128 = v60;
  v132 = v127;
  MEMORY[0x1EEE9AC00](v59);
  v136 = inited;
  v61 = v144;
  sub_1CA948D98();
  v62 = v141;
  v63 = [v141 bundleURL];
  v127[1] = v127;
  MEMORY[0x1EEE9AC00](v63);
  v64 = v146;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 160) = sub_1CA2F9F14(v131, v129, v59, v128, 0, 0, v127 - v61, v127 - v64);
  *(v51 + 184) = v142;
  *(v51 + 192) = @"Placeholder";
  v66 = @"Placeholder";
  v131 = sub_1CA94C438("User Event (WFUserEvent)", 24);
  v129 = v67;
  v68 = sub_1CA94C438("User Event", 10);
  v128 = v69;
  v132 = v127;
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948D98();
  v70 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v131, v129, v68, v128, 0, 0, v127 - v61, v127 - v64);
  *(v51 + 224) = v142;
  *(v51 + 200) = v72;
  _s3__C3KeyVMa_0(0);
  v132 = v73;
  v131 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v74 = sub_1CA94C1E8();
  v75 = sub_1CA2F864C(v74);
  v140[4] = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1CA981400;
  *(v76 + 32) = v130;
  *(v76 + 40) = 0xD000000000000011;
  *(v76 + 48) = 0x80000001CA9A0B80;
  *(v76 + 64) = MEMORY[0x1E69E6158];
  *(v76 + 72) = @"DefaultValue";
  v77 = MEMORY[0x1E69E6530];
  *(v76 + 80) = 1;
  *(v76 + 104) = v77;
  *(v76 + 112) = @"Description";
  v78 = @"DefaultValue";
  v79 = @"Description";
  v80 = sub_1CA94C438("Allows you to choose the playback speed of the action. (WFPlaybackSpeed)", 72);
  v129 = v81;
  v130 = v80;
  v82 = sub_1CA94C438("Allows you to choose the playback speed of the action.", 54);
  v128 = v83;
  v133 = v127;
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948D98();
  v84 = v141;
  v85 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = v127 - v146;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v130, v129, v82, v128, 0, 0, v127 - v61, v86);
  v88 = v142;
  v89 = v134;
  *(v76 + 144) = v142;
  *(v76 + 152) = v89;
  *(v76 + 160) = 0x616279616C504657;
  *(v76 + 168) = 0xEF64656570536B63;
  v90 = v135;
  *(v76 + 184) = MEMORY[0x1E69E6158];
  *(v76 + 192) = v90;
  v91 = sub_1CA94C438("Playback Speed (WFPlaybackSpeed)", 32);
  v133 = v92;
  v134 = v91;
  v93 = sub_1CA94C438("Playback Speed", 14);
  v95 = v94;
  v135 = v127;
  MEMORY[0x1EEE9AC00](v93);
  v96 = v127 - v144;
  sub_1CA948D98();
  v97 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v127 - v146;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 200) = sub_1CA2F9F14(v134, v133, v93, v95, 0, 0, v96, v98);
  *(v76 + 224) = v88;
  *(v76 + 232) = @"MaximumValue";
  *(v76 + 240) = 1;
  v100 = MEMORY[0x1E69E6530];
  *(v76 + 264) = MEMORY[0x1E69E6530];
  *(v76 + 272) = @"MinimumValue";
  *(v76 + 304) = v100;
  *(v76 + 280) = -1;
  v101 = @"MaximumValue";
  v102 = @"MinimumValue";
  v103 = sub_1CA94C1E8();
  v104 = sub_1CA2F864C(v103);
  v105 = v140;
  v140[5] = v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v107 = v136;
  v136[40] = v105;
  v107[43] = v106;
  v107[44] = @"ParameterSummary";
  v108 = @"ParameterSummary";
  v109 = sub_1CA94C438("${WFUserEvent} (Parameter Summary)", 34);
  v111 = v110;
  v112 = sub_1CA94C438("${WFUserEvent}", 14);
  v114 = v113;
  v142 = v127;
  MEMORY[0x1EEE9AC00](v112);
  v115 = v127 - v144;
  sub_1CA948D98();
  v116 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = v127 - v146;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, v117);
  v120 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v121 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v107[45] = v120;
  v107[48] = v121;
  v107[49] = @"RequiredResources";
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1CA9813B0;
  v147 = 2;
  v148 = 0;
  v123 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v124 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v147);
  *(v122 + 32) = v125;
  v107[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v107[50] = v122;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2F43C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA27BB44();
  *a1 = result;
  return result;
}

uint64_t sub_1CA2F4418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444270, &qword_1CA982C90);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1CA2F4560(v4);
}

uint64_t sub_1CA2F44EC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4441D8, &qword_1CA982AC8);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA2F4560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444270, &qword_1CA982C90);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4441D8, &qword_1CA982AC8);
  sub_1CA94A088();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t AppAssociatedShortcutsLoader.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AppAssociatedShortcutsDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  AppAssociatedShortcutsDataSource.init()();
  return v0;
}

uint64_t sub_1CA2F4708(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_result) == result)
  {
    return sub_1CA273AD8(0xD000000000000018, 0x80000001CA9A0CA0);
  }

  return result;
}

uint64_t sub_1CA2F47AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA2F47C0()
{
  OUTLINED_FUNCTION_6();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1CA25B3D0(0, &qword_1EC4441F0, off_1E836F510);
  sub_1CA2F487C(v2, *(*(v1 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_loader) + 16));
  OUTLINED_FUNCTION_2_4();

  return v3();
}

id sub_1CA2F487C(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v4 = [swift_getObjCClassFromMetadata() workflowWithReference:a1 database:a2 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1CA2F495C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA2F4970()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2F4A00;
  v2 = *(v0 + 16);

  return sub_1CA2F4FEC(v2);
}

uint64_t sub_1CA2F4A00()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v3 = *v2;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  OUTLINED_FUNCTION_2_4();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t AppAssociatedShortcutsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource__collections;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4441D8, &qword_1CA982AC8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppAssociatedShortcutsDataSource.__deallocating_deinit()
{
  AppAssociatedShortcutsDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA2F4BE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2F6BEC;

  return sub_1CA2F495C(v2);
}

uint64_t sub_1CA2F4C7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2F6BEC;

  return sub_1CA2F47AC(v2);
}

uint64_t sub_1CA2F4D10@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppAssociatedShortcutsDataSource(0);
  result = sub_1CA949FE8();
  *a2 = result;
  return result;
}

void sub_1CA2F4D5C()
{
  v1 = [*(v0 + 16) sortedVisibleAppAssociatedWorkflows];
  if ([v1 fetchError])
  {
    swift_willThrow();
  }

  else
  {
    sub_1CA26E9BC(v1);
  }
}

uint64_t sub_1CA2F4DE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA2F4E00()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + 16);
  v2 = sub_1CA94C368();
  v3 = [v1 sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier_];

  if ([v3 fetchError])
  {
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A90, &qword_1CA981B78);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1CA981310;
    sub_1CA94C218();
    v7 = [v3 descriptors];
    sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
    OUTLINED_FUNCTION_5_3();
    v8 = sub_1CA94C658();

    if (qword_1EDB9F960 != -1)
    {
      OUTLINED_FUNCTION_1_11();
      swift_once();
    }

    v9 = sub_1CA2786EC(v0[2], v0[3]);
    if (v10)
    {
      v11 = v9;
      v13 = v0[2];
      v12 = v0[3];
    }

    else
    {
      v12 = sub_1CA94C218();
      v13 = v0[2];
      v11 = v13;
      v10 = v12;
    }

    *(v6 + 32) = v11;
    *(v6 + 40) = v10;
    *(v6 + 48) = v13;
    *(v6 + 56) = v12;
    *(v6 + 64) = 0;
    *(v6 + 72) = v8;

    OUTLINED_FUNCTION_2_4();

    return v14(v6);
  }
}

void sub_1CA2F5000()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v3;
  v4 = [v1 name];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

  v7 = [v6 serializedRepresentation];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *(inited + 72) = swift_getObjectType();
  *(inited + 48) = v7;
  sub_1CA94C1E8();
  v8 = [objc_opt_self() sharedRegistry];
  v9 = sub_1CA94C368();
  sub_1CA2F5264();
  v11 = v10;

  v12 = sub_1CA2F6338(v9, v11, v8);

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_2_4();

    v13();
  }

  else
  {

    v14 = sub_1CA94C3A8();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1CA298568(v14, v16, 5, 0);
    swift_willThrow();
    v18 = *(v0 + 8);

    v18();
  }
}

void sub_1CA2F5264()
{
  OUTLINED_FUNCTION_142();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444290, &qword_1CA982CB0);
    OUTLINED_FUNCTION_5_3();
    v2 = sub_1CA94D688();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_7_10();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  sub_1CA94C218();
  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_18_6();
    v13 = *v11;
    v12 = v11[1];
    sub_1CA25B374(v15 + 32 * v14, v36);
    *&v35 = v13;
    *(&v35 + 1) = v12;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;
    sub_1CA94C218();
    swift_dynamicCast();
    sub_1CA2C0A20(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1CA2C0A20(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1CA2C0A20(v32, v33);
    v16 = sub_1CA94D378() & ~(-1 << *(v2 + 32));
    if (((-1 << v16) & ~*(v8 + 8 * (v16 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_5_2();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (*(v8 + 8 * v17) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_2_11();
    *(v8 + v21) |= v22;
    OUTLINED_FUNCTION_14_7();
    *v23 = v25;
    v23[1] = v26;
    OUTLINED_FUNCTION_13_6();
    sub_1CA2C0A20(v33, v24);
    OUTLINED_FUNCTION_12_6();
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1CA2F54CC(uint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  v2 = MEMORY[0x1EEE9AC00](v49);
  v48 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v44 - v4;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442A0, &unk_1CA982CC0);
    OUTLINED_FUNCTION_5_3();
    v5 = sub_1CA94D688();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v6 = v50 + 64;
  OUTLINED_FUNCTION_19_4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v44 = v5 + 8;

  result = sub_1CA94C218();
  v13 = 0;
  v46 = v5;
  for (i = v6; v9; v6 = i)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v50 + 56);
    v18 = (*(v50 + 48) + 16 * v16);
    v20 = *v18;
    v51 = v18[1];
    v19 = v51;
    v21 = sub_1CA94AC88();
    OUTLINED_FUNCTION_1_0();
    v23 = v22;
    v25 = v17 + *(v24 + 72) * v16;
    v26 = v49;
    v27 = v47;
    (*(v22 + 16))(&v47[*(v49 + 48)], v25, v21);
    *v27 = v20;
    v27[1] = v19;
    v28 = v27;
    v29 = v48;
    sub_1CA2F6B10(v28, v48);
    v30 = *(v26 + 48);
    v31 = *v29;
    v32 = v29[1];
    v53 = v21;
    v54 = MEMORY[0x1E69DAE80];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
    (*(v23 + 32))(boxed_opaque_existential_1, v29 + v30, v21);
    sub_1CA27F268(&v52, v56);
    v34 = v31;
    sub_1CA27F268(v56, v57);
    sub_1CA27F268(v57, &v55);
    sub_1CA94C218();
    v35 = v31;
    v5 = v46;
    result = sub_1CA271BF8(v35, v32);
    v36 = result;
    if (v37)
    {
      v38 = (v5[6] + 16 * result);
      *v38 = v34;
      v38[1] = v32;

      v39 = (v5[7] + 40 * v36);
      __swift_destroy_boxed_opaque_existential_0(v39);
      result = sub_1CA27F268(&v55, v39);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_18;
      }

      *(v44 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v40 = (v5[6] + 16 * result);
      *v40 = v34;
      v40[1] = v32;
      result = sub_1CA27F268(&v55, v5[7] + 40 * result);
      v41 = v5[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_19;
      }

      v5[2] = v43;
    }

    v13 = v14;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v14);
    ++v13;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1CA2F5880()
{
  OUTLINED_FUNCTION_142();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444290, &qword_1CA982CB0);
    OUTLINED_FUNCTION_5_3();
    v2 = sub_1CA94D688();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_7_10();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  sub_1CA94C218();
  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_18_6();
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;
    sub_1CA94C218();
    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1CA2C0A20(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1CA2C0A20(v29, v30);
    v13 = sub_1CA94D378() & ~(-1 << *(v2 + 32));
    if (((-1 << v13) & ~*(v8 + 8 * (v13 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_5_2();
      while (++v14 != v16 || (v15 & 1) == 0)
      {
        v17 = v14 == v16;
        if (v14 == v16)
        {
          v14 = 0;
        }

        v15 |= v17;
        if (*(v8 + 8 * v14) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_2_11();
    *(v8 + v18) |= v19;
    OUTLINED_FUNCTION_14_7();
    *v20 = v22;
    v20[1] = v23;
    OUTLINED_FUNCTION_13_6();
    sub_1CA2C0A20(v30, v21);
    OUTLINED_FUNCTION_12_6();
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1CA2F5AEC()
{
  OUTLINED_FUNCTION_142();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444290, &qword_1CA982CB0);
    OUTLINED_FUNCTION_5_3();
    v2 = sub_1CA94D688();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_7_10();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  sub_1CA94C218();
  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_18_6();
    v13 = *v11;
    v12 = v11[1];
    sub_1CA2F6AB4(v15 + 40 * v14, v42);
    v40 = v13;
    v41 = v12;
    v37 = v42[0];
    v38 = v42[1];
    v39 = v43;
    v27 = v13;
    v28 = v12;
    sub_1CA94C218();
    swift_dynamicCast();
    v25[0] = v37;
    v25[1] = v38;
    v26 = v39;
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1CA2C0A20(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_1CA2C0A20(v36, v25);
    v16 = sub_1CA94D378() & ~(-1 << *(v2 + 32));
    if (((-1 << v16) & ~*(v8 + 8 * (v16 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_5_2();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (*(v8 + 8 * v17) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_2_11();
    *(v8 + v21) |= v22;
    OUTLINED_FUNCTION_14_7();
    *v23 = v29;
    v23[1] = v30;
    OUTLINED_FUNCTION_13_6();
    sub_1CA2C0A20(v25, v24);
    OUTLINED_FUNCTION_12_6();
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1CA2F5D8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_142();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444278, qword_1CA982C98);
    OUTLINED_FUNCTION_5_3();
    v5 = sub_1CA94D688();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_19_4();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  result = sub_1CA94C218();
  v12 = 0;
  while (v8)
  {
    v13 = v12;
LABEL_10:
    v8 &= v8 - 1;
    OUTLINED_FUNCTION_18_6();
    v16 = *v14;
    v15 = v14[1];
    sub_1CA94C218();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    swift_dynamicCast();
    sub_1CA2C0A20(&v27, v29);
    sub_1CA2C0A20(v29, v30);
    sub_1CA2C0A20(v30, &v28);
    result = sub_1CA271BF8(v16, v15);
    v17 = result;
    if (v18)
    {
      v19 = (v5[6] + 16 * result);
      *v19 = v16;
      v19[1] = v15;

      v20 = (v5[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v20);
      result = sub_1CA2C0A20(&v28, v20);
      v12 = v13;
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_17;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v5[6] + 16 * result);
      *v21 = v16;
      v21[1] = v15;
      result = sub_1CA2C0A20(&v28, (v5[7] + 32 * result));
      v22 = v5[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v5[2] = v24;
      v12 = v13;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v5;
    }

    v8 = *(v3 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t AppAssociatedShortcutsLoader.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1CA2F6034(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2F60C8;

  return sub_1CA2F4FEC(v2);
}

uint64_t sub_1CA2F60C8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v3 = *v2;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  OUTLINED_FUNCTION_2_4();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

id sub_1CA2F61C8(SEL *a1)
{
  v3 = [v1 icon];
  v4 = [v3 *a1];

  return v4;
}

uint64_t sub_1CA2F6244()
{
  v1 = [v0 name];
  v2 = sub_1CA94C3A8();

  return v2;
}

uint64_t sub_1CA2F62E4@<X0>(uint64_t *a2@<X8>)
{
  sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
  result = sub_1CA94D428();
  *a2 = result;
  return result;
}