uint64_t sub_216D051C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  sub_21700EA34();
  *(v3 + 56) = sub_21700EA24();
  v5 = sub_21700E9B4();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return MEMORY[0x2822009F8](sub_216D05260, v5, v4);
}

uint64_t sub_216D05260()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_525(Strong);

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_853(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_254_0(v2);

    return sub_216E582CC();
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_216D0533C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_28();
  *v3 = v1;
  *v3 = *v2;

  OUTLINED_FUNCTION_119_0();
  if (v0)
  {

    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = sub_216930FC0;
  }

  else
  {

    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = sub_21692F6C8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216D0546C()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_1112();
  v3 = v2;
  OUTLINED_FUNCTION_941();
  OUTLINED_FUNCTION_143();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v0;
  *(v5 + 40) = v3 & 1;

  v6 = OUTLINED_FUNCTION_104_0();
  sub_21677A404(v6, v7);
  v8 = OUTLINED_FUNCTION_116();
  sub_216CA9EA0(v8, v9);

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216D05520(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  sub_21700EA34();
  *(v4 + 64) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 72) = v6;
  *(v4 + 80) = v5;

  return MEMORY[0x2822009F8](sub_216D055C0, v6, v5);
}

uint64_t sub_216D055C0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_524(Strong);

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_1145(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_255_1(v2);

    return sub_216E587F0();
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_216D0569C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_28();
  *v3 = v1;
  *v3 = *v2;

  OUTLINED_FUNCTION_119_0();
  if (v0)
  {
  }

  v4 = *(v1 + 72);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_216930FC4, v4, v5);
}

uint64_t sub_216D057CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  sub_21700EA34();
  *(v4 + 64) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 72) = v6;
  *(v4 + 80) = v5;

  return MEMORY[0x2822009F8](sub_216D0586C, v6, v5);
}

uint64_t sub_216D0586C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_524(Strong);

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_1145(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_255_1(v2);

    return sub_216E587F0();
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_216D05948()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_28();
  *v3 = v1;
  *v3 = *v2;

  OUTLINED_FUNCTION_119_0();
  if (v0)
  {

    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    v6 = sub_216930FC4;
  }

  else
  {

    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    v6 = sub_21692FB0C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216D05A78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  v3[5] = swift_task_alloc();
  v4 = *(type metadata accessor for Page(0) - 8);
  v3[6] = v4;
  v3[7] = *(v4 + 64);
  v3[8] = swift_task_alloc();
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_216D05BAC, v6, v5);
}

uint64_t sub_216D05BAC()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_431();
  OUTLINED_FUNCTION_143();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_959(v1);
  OUTLINED_FUNCTION_42_31();
  v2 = OUTLINED_FUNCTION_115();
  sub_216DDA0A0(v2, v3);
  OUTLINED_FUNCTION_710();
  v4 = OUTLINED_FUNCTION_1177();
  OUTLINED_FUNCTION_1124(v4);
  OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_1176(v5);
  OUTLINED_FUNCTION_1192();
  OUTLINED_FUNCTION_963(v6);
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_842(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78, &qword_21705EE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v8;
  v0[1] = sub_216D05CCC;
  OUTLINED_FUNCTION_430();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D05CCC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_216DDA280;
  }

  else
  {
    v8 = sub_216D05E08;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D05E08()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_1191();
  OUTLINED_FUNCTION_954(v1);
  v2 = sub_217006A94();
  if (OUTLINED_FUNCTION_306(v2) == 1)
  {
    sub_2166997CC(*(v0 + 40), &qword_27CAB6BE8, &unk_2170142F0);
    v3 = OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_141_4(&qword_27CAC8CC8);
    OUTLINED_FUNCTION_485();
    swift_allocError();
    OUTLINED_FUNCTION_41_25();
    OUTLINED_FUNCTION_1157();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_779();
    v6();

    OUTLINED_FUNCTION_23();
  }

  return v5();
}

uint64_t sub_216D05F18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  v3[5] = swift_task_alloc();
  v4 = *(type metadata accessor for JSReplayPage(0) - 8);
  v3[6] = v4;
  v3[7] = *(v4 + 64);
  v3[8] = swift_task_alloc();
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_216D0604C, v6, v5);
}

uint64_t sub_216D0604C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_431();
  OUTLINED_FUNCTION_143();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_959(v1);
  OUTLINED_FUNCTION_41_30();
  v2 = OUTLINED_FUNCTION_115();
  sub_216DDA0A0(v2, v3);
  OUTLINED_FUNCTION_710();
  v4 = OUTLINED_FUNCTION_1177();
  OUTLINED_FUNCTION_1124(v4);
  OUTLINED_FUNCTION_70_12();
  OUTLINED_FUNCTION_1176(v5);
  OUTLINED_FUNCTION_1192();
  OUTLINED_FUNCTION_963(v6);
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_842(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78, &qword_21705EE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v8;
  v0[1] = sub_216D0616C;
  OUTLINED_FUNCTION_430();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D0616C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_216DDA280;
  }

  else
  {
    v8 = sub_216D062A8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D062A8()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_1191();
  OUTLINED_FUNCTION_954(v1);
  v2 = sub_217006A94();
  if (OUTLINED_FUNCTION_306(v2) == 1)
  {
    sub_2166997CC(*(v0 + 40), &qword_27CAB6BE8, &unk_2170142F0);
    v3 = OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_141_4(&qword_27CAC94C8);
    OUTLINED_FUNCTION_485();
    swift_allocError();
    OUTLINED_FUNCTION_41_25();
    OUTLINED_FUNCTION_1157();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_779();
    v6();

    OUTLINED_FUNCTION_23();
  }

  return v5();
}

uint64_t sub_216D063B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  v3[5] = swift_task_alloc();
  v4 = *(type metadata accessor for ReplayModel(0) - 8);
  v3[6] = v4;
  v3[7] = *(v4 + 64);
  v3[8] = swift_task_alloc();
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_216D064EC, v6, v5);
}

uint64_t sub_216D064EC()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_431();
  OUTLINED_FUNCTION_143();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_959(v1);
  OUTLINED_FUNCTION_10_89();
  v2 = OUTLINED_FUNCTION_115();
  sub_216DDA0A0(v2, v3);
  OUTLINED_FUNCTION_710();
  v4 = OUTLINED_FUNCTION_1177();
  OUTLINED_FUNCTION_1124(v4);
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_1176(v5);
  OUTLINED_FUNCTION_1192();
  OUTLINED_FUNCTION_963(v6);
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_842(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78, &qword_21705EE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v8;
  v0[1] = sub_216D0660C;
  OUTLINED_FUNCTION_430();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D0660C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_216DDA280;
  }

  else
  {
    v8 = sub_216D06748;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D06748()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_1191();
  OUTLINED_FUNCTION_954(v1);
  v2 = sub_217006A94();
  if (OUTLINED_FUNCTION_306(v2) == 1)
  {
    sub_2166997CC(*(v0 + 40), &qword_27CAB6BE8, &unk_2170142F0);
    v3 = OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_141_4(&qword_27CAC9200);
    OUTLINED_FUNCTION_485();
    swift_allocError();
    OUTLINED_FUNCTION_41_25();
    OUTLINED_FUNCTION_1157();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_779();
    v6();

    OUTLINED_FUNCTION_23();
  }

  return v5();
}

uint64_t sub_216D06858(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  v3[5] = swift_task_alloc();
  v4 = *(type metadata accessor for JSSearchPage(0) - 8);
  v3[6] = v4;
  v3[7] = *(v4 + 64);
  v3[8] = swift_task_alloc();
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_216D0698C, v6, v5);
}

uint64_t sub_216D0698C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_431();
  OUTLINED_FUNCTION_143();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_959(v1);
  OUTLINED_FUNCTION_40_29();
  v2 = OUTLINED_FUNCTION_115();
  sub_216DDA0A0(v2, v3);
  OUTLINED_FUNCTION_710();
  v4 = OUTLINED_FUNCTION_1177();
  OUTLINED_FUNCTION_1124(v4);
  OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_1176(v5);
  OUTLINED_FUNCTION_1192();
  OUTLINED_FUNCTION_963(v6);
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_842(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78, &qword_21705EE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v8;
  v0[1] = sub_216D06AAC;
  OUTLINED_FUNCTION_430();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D06AAC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_216DDA280;
  }

  else
  {
    v8 = sub_216D06BE8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D06BE8()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_1191();
  OUTLINED_FUNCTION_954(v1);
  v2 = sub_217006A94();
  if (OUTLINED_FUNCTION_306(v2) == 1)
  {
    sub_2166997CC(*(v0 + 40), &qword_27CAB6BE8, &unk_2170142F0);
    v3 = OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_141_4(&qword_27CAC8F10);
    OUTLINED_FUNCTION_485();
    swift_allocError();
    OUTLINED_FUNCTION_41_25();
    OUTLINED_FUNCTION_1157();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_779();
    v6();

    OUTLINED_FUNCTION_23();
  }

  return v5();
}

uint64_t sub_216D06CF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  v3[5] = swift_task_alloc();
  v4 = *(type metadata accessor for JSSearchResultsPage(0) - 8);
  v3[6] = v4;
  v3[7] = *(v4 + 64);
  v3[8] = swift_task_alloc();
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_216D06E2C, v6, v5);
}

uint64_t sub_216D06E2C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_431();
  OUTLINED_FUNCTION_143();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_959(v1);
  OUTLINED_FUNCTION_39_30();
  v2 = OUTLINED_FUNCTION_115();
  sub_216DDA0A0(v2, v3);
  OUTLINED_FUNCTION_710();
  v4 = OUTLINED_FUNCTION_1177();
  OUTLINED_FUNCTION_1124(v4);
  OUTLINED_FUNCTION_167_1();
  OUTLINED_FUNCTION_1176(v5);
  OUTLINED_FUNCTION_1192();
  OUTLINED_FUNCTION_963(v6);
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_842(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78, &qword_21705EE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_586();
  *v0 = v8;
  v0[1] = sub_216D06F4C;
  OUTLINED_FUNCTION_430();
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x282200430](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D06F4C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_216D07198;
  }

  else
  {
    v8 = sub_216D07088;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D07088()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_1191();
  OUTLINED_FUNCTION_954(v1);
  v2 = sub_217006A94();
  if (OUTLINED_FUNCTION_306(v2) == 1)
  {
    sub_2166997CC(*(v0 + 40), &qword_27CAB6BE8, &unk_2170142F0);
    v3 = OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_141_4(&qword_27CAC96F0);
    OUTLINED_FUNCTION_485();
    swift_allocError();
    OUTLINED_FUNCTION_41_25();
    OUTLINED_FUNCTION_1157();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_779();
    v6();

    OUTLINED_FUNCTION_23();
  }

  return v5();
}

uint64_t sub_216D07198()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_1157();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D07200(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_21700EA34();
  v2[7] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_216D07298, v4, v3);
}

uint64_t sub_216D07298()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_785(Strong))
  {
    OUTLINED_FUNCTION_38_0(&unk_21705EE58);
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_853(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_312(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_238_0();

    return v8(v7);
  }
}

uint64_t sub_216D07368()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216DDA3FC;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216DDA3B0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D0746C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_21700EA34();
  v2[7] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_216D07504, v4, v3);
}

uint64_t sub_216D07504()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_785(Strong))
  {
    OUTLINED_FUNCTION_38_0(&unk_21705FDB8);
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_853(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_312(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_238_0();

    return v8(v7);
  }
}

uint64_t sub_216D075D4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_21700EA34();
  v2[7] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_216D0766C, v4, v3);
}

uint64_t sub_216D0766C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_785(Strong))
  {
    OUTLINED_FUNCTION_38_0(&unk_21705F8C8);
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_853(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_312(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_238_0();

    return v8(v7);
  }
}

uint64_t sub_216D0773C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_21700EA34();
  v2[7] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_216D077D4, v4, v3);
}

uint64_t sub_216D077D4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_785(Strong))
  {
    OUTLINED_FUNCTION_38_0(&unk_21705F3B0);
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_853(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_312(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_238_0();

    return v8(v7);
  }
}

uint64_t sub_216D078A4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_21700EA34();
  v2[7] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_216D0793C, v4, v3);
}

uint64_t sub_216D0793C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_240_1();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_785(Strong))
  {
    OUTLINED_FUNCTION_38_0(&unk_217060190);
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_853(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_312(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_238_0();

    return v8(v7);
  }
}

uint64_t sub_216D07A0C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216D07B6C;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_216D07B10;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D07B10()
{
  OUTLINED_FUNCTION_33();

  v0 = OUTLINED_FUNCTION_238_0();

  return v1(v0);
}

uint64_t sub_216D07B6C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216D07BD4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_1084();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8448, &unk_21705EE10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9918, &qword_217060500);
  v6 = sub_21700E244();
  OUTLINED_FUNCTION_181();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v1;
  v7[4] = v6;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450, &qword_21705EE30);
  OUTLINED_FUNCTION_1016(v8);
  v9 = OUTLINED_FUNCTION_97();
  v10(v9);
  sub_21700EA74();
  v11 = OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_181();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_1082(v15);
  v16 = OUTLINED_FUNCTION_9_46();
  sub_21677E214(v16, v17, v0, v18, v19);
  OUTLINED_FUNCTION_26();
}

void sub_216D07D80()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_1084();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8448, &unk_21705EE10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8, &unk_21705F010);
  v6 = sub_21700E244();
  OUTLINED_FUNCTION_181();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v1;
  v7[4] = v6;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450, &qword_21705EE30);
  OUTLINED_FUNCTION_1016(v8);
  v9 = OUTLINED_FUNCTION_97();
  v10(v9);
  sub_21700EA74();
  v11 = OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_181();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_1082(v15);
  v16 = OUTLINED_FUNCTION_9_46();
  sub_21677E228(v16, v17, v0, v18, v19);
  OUTLINED_FUNCTION_26();
}

void sub_216D07F2C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_1084();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8448, &unk_21705EE10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1900, &qword_21703F5E8);
  v6 = sub_21700E244();
  OUTLINED_FUNCTION_181();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v1;
  v7[4] = v6;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450, &qword_21705EE30);
  OUTLINED_FUNCTION_1016(v8);
  v9 = OUTLINED_FUNCTION_97();
  v10(v9);
  sub_21700EA74();
  v11 = OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_181();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_1082(v15);
  v16 = OUTLINED_FUNCTION_9_46();
  sub_21677E4D0(v16, v17, v0, v18, v19);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216D080D8()
{
  v1[2] = v0;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_216D04C58, v3, v2);
}

uint64_t sub_216D08170(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_216D08208, v4, v3);
}

uint64_t sub_216D08208()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1116();
  v0 = sub_216ACA7B8();
  OUTLINED_FUNCTION_652(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75_11(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_389(v2);

  return sub_216E58D24();
}

uint64_t sub_216D08298()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216DDA400;
  }

  else
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216DDA428;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D0839C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_216D08434, v4, v3);
}

uint64_t sub_216D08434()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1116();
  sub_216782FBC();
  OUTLINED_FUNCTION_652(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75_11(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_389(v2);

  return sub_216E58D24();
}

uint64_t sub_216D084C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_216D0855C, v4, v3);
}

uint64_t sub_216D0855C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1116();
  type metadata accessor for ReplayModel(0);
  type metadata accessor for ReplayYearModel(0);
  sub_216782FBC();
  OUTLINED_FUNCTION_652(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75_11(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_389(v2);

  return sub_216E58D24();
}

uint64_t sub_216D0860C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_216D086A4, v4, v3);
}

uint64_t sub_216D086A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1116();
  sub_216AED700();
  OUTLINED_FUNCTION_652(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75_11(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_389(v2);

  return sub_216E58D24();
}

uint64_t sub_216D08734(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_216D087CC, v4, v3);
}

uint64_t sub_216D087CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1116();
  sub_216EC6470();
  OUTLINED_FUNCTION_652(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75_11(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_389(v2);

  return sub_216E58D24();
}

uint64_t sub_216D0885C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216D08960;
  }

  else
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_216B8BFBC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216D08960()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D089E0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for TrackLockup(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08A1C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for BubbleLockup(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08A70()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for SquareLockup(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08AF4()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for SuperHeroLockup(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08B48()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AlbumTrackLockup(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08B84()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for HorizontalLockup(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08C08()
{
  v0 = OUTLINED_FUNCTION_446();
  v1(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08C60()
{
  v0 = OUTLINED_FUNCTION_446();
  v1(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08CA0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for PlaylistTrackLockup(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08CF4()
{
  v0 = OUTLINED_FUNCTION_446();
  v1(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08D4C()
{
  v0 = OUTLINED_FUNCTION_446();
  v1(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08DA4()
{
  v0 = OUTLINED_FUNCTION_446();
  v1(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08E2C()
{
  v0 = OUTLINED_FUNCTION_446();
  v1(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08E84()
{
  v0 = OUTLINED_FUNCTION_446();
  v1(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08EDC()
{
  v0 = OUTLINED_FUNCTION_446();
  v1(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08F34()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for SocialOnboardingSharedPlaylistLockup(v0);
  return OUTLINED_FUNCTION_1002();
}

uint64_t sub_216D08F70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for SectionChangeInstruction(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0909C, v9, v8);
}

uint64_t sub_216D092F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D095A4;
  }

  else
  {
    v8 = sub_216D0941C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D096A4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216DDA284;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D097CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for Page(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D098F8, v9, v8);
}

uint64_t sub_216D09B50()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D09E00;
  }

  else
  {
    v8 = sub_216D09C78;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D09F00()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0A028;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0A028()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_101_7();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D0A0A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B80, &qword_2170141F0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0A1E0, v9, v8);
}

uint64_t sub_216D0A438()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0A700;
  }

  else
  {
    v8 = sub_216D0A560;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0A800()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0A928;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0A928()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  v0 = OUTLINED_FUNCTION_768();
  sub_2166997CC(v0, &qword_27CAB6B80, &qword_2170141F0);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216D0A9B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for SectionChangeInstruction(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0AAE0, v9, v8);
}

uint64_t sub_216D0ACE8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0AF78;
  }

  else
  {
    v8 = sub_216D0AE10;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0B058(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for JSReplayPage(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0B184, v9, v8);
}

uint64_t sub_216D0B38C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0B61C;
  }

  else
  {
    v8 = sub_216D0B4B4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0B6FC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0B824;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0B824()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_38_36();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D0B8A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD8, &qword_2170142E0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0B9DC, v9, v8);
}

uint64_t sub_216D0BBE4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0BE8C;
  }

  else
  {
    v8 = sub_216D0BD0C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0BF6C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0C094;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0C094()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  v0 = OUTLINED_FUNCTION_768();
  sub_2166997CC(v0, &qword_27CAB6BD8, &qword_2170142E0);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216D0C120()
{
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_1156(v1, v2, v3, v4, v5);
  v0[13] = v6;
  OUTLINED_FUNCTION_2(v6);
  v0[14] = v7;
  v0[15] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for ReplaceReplayYearUpdate(0);
  OUTLINED_FUNCTION_36(v8);
  v0[16] = OUTLINED_FUNCTION_80();
  v9 = type metadata accessor for ReplayYearModel(0);
  OUTLINED_FUNCTION_36(v9);
  v0[17] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v0[18] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  v0[19] = v10;
  v0[20] = v11;
  v12 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_216D0C454()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 160);
  v7 = *(v1 + 152);
  if (v0)
  {
    v8 = sub_216D0C70C;
  }

  else
  {
    v8 = sub_216D0C57C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0C7F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 160);
  v7 = *(v1 + 152);
  if (v0)
  {
    v8 = sub_216D0C9B0;
  }

  else
  {
    v8 = sub_216D0C91C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0C91C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_804();
  sub_216DDA050();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216D0C9B0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_804();
  sub_216DDA050();
  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_170_1();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D0CA54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for ReplayModel(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0CB80, v9, v8);
}

uint64_t sub_216D0CD88()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0D018;
  }

  else
  {
    v8 = sub_216D0CEB0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0D0F8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0D220;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0D220()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_58_18();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D0D2A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for SectionChangeInstruction(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0D3CC, v9, v8);
}

uint64_t sub_216D0D5D4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0D864;
  }

  else
  {
    v8 = sub_216D0D6FC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0D944(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B88, &qword_2170141F8);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0DA7C, v9, v8);
}

uint64_t sub_216D0DC84()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0DF2C;
  }

  else
  {
    v8 = sub_216D0DDAC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0E00C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0E134;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0E134()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  v0 = OUTLINED_FUNCTION_768();
  sub_2166997CC(v0, &qword_27CAB6B88, &qword_2170141F8);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216D0E1C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for JSSearchPage(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0E2EC, v9, v8);
}

uint64_t sub_216D0E4F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0E784;
  }

  else
  {
    v8 = sub_216D0E61C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0E864()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0E98C;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0E98C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_100_12();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D0EA0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for SectionChangeInstruction(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0EB38, v9, v8);
}

uint64_t sub_216D0ED40()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0EFD0;
  }

  else
  {
    v8 = sub_216D0EE68;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0F0B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B90, &qword_217014200);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D0F1E8, v9, v8);
}

uint64_t sub_216D0F3F0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0F698;
  }

  else
  {
    v8 = sub_216D0F518;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0F778()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D0F8A0;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D0F8A0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  v0 = OUTLINED_FUNCTION_768();
  sub_2166997CC(v0, &qword_27CAB6B90, &qword_217014200);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216D0F92C()
{
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_1156(v1, v2, v3, v4, v5);
  v0[13] = v6;
  OUTLINED_FUNCTION_2(v6);
  v0[14] = v7;
  v0[15] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for ReplaceReplayPageUpdate(0);
  OUTLINED_FUNCTION_36(v8);
  v0[16] = OUTLINED_FUNCTION_80();
  v9 = type metadata accessor for JSReplayPage(0);
  OUTLINED_FUNCTION_36(v9);
  v0[17] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v0[18] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  v0[19] = v10;
  v0[20] = v11;
  v12 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_216D0FC60()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 160);
  v7 = *(v1 + 152);
  if (v0)
  {
    v8 = sub_216D0FF18;
  }

  else
  {
    v8 = sub_216D0FD88;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D10000()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 160);
  v7 = *(v1 + 152);
  if (v0)
  {
    v8 = sub_216D101BC;
  }

  else
  {
    v8 = sub_216D10128;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D10128()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_803();
  sub_216DDA050();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216D101BC()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_803();
  sub_216DDA050();
  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_38_36();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D10260(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for JSSearchResultsPage(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D1038C, v9, v8);
}

uint64_t sub_216D10594()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D10824;
  }

  else
  {
    v8 = sub_216D106BC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D10904()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D10A2C;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D10A2C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_99_11();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D10AAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for SectionChangeInstruction(0);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D10BD8, v9, v8);
}

uint64_t sub_216D10DE0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D11070;
  }

  else
  {
    v8 = sub_216D10F08;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D11150()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D11278;
  }

  else
  {
    v8 = sub_216DDA3E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D11278()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_9_90();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216D112F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 208) = a3;
  *(v6 + 64) = a1;
  v7 = sub_21700E9E4();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE0, &qword_2170142E8);
  *(v6 + 128) = swift_task_alloc();
  sub_21700EA34();
  *(v6 + 136) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_216D11430, v9, v8);
}

uint64_t sub_216D11638()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D118E0;
  }

  else
  {
    v8 = sub_216D11760;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D119C0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D11B74;
  }

  else
  {
    v8 = sub_216D11AE8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D11AE8()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216D11B74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_688();

  v0 = OUTLINED_FUNCTION_768();
  sub_2166997CC(v0, &qword_27CAB6BE0, &qword_2170142E8);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216D11C00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D11C9C, v5, v4);
}

uint64_t sub_216D11C9C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1136();
  OUTLINED_FUNCTION_38_0(&unk_21705EDE0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D11D28()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 56);
  v7 = *(v1 + 48);
  if (v0)
  {
    v8 = sub_21678275C;
  }

  else
  {
    v8 = sub_216B91640;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D11E50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D11EEC, v5, v4);
}

uint64_t sub_216D11EEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_851();
  OUTLINED_FUNCTION_38_0(&unk_21705EDE0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D11F78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D12014, v5, v4);
}

uint64_t sub_216D12014()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1136();
  OUTLINED_FUNCTION_38_0(&unk_21705FD90);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D120A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D1213C, v5, v4);
}

uint64_t sub_216D1213C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_851();
  OUTLINED_FUNCTION_38_0(&unk_21705FD90);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D121C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D12264, v5, v4);
}

uint64_t sub_216D12264()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1136();
  OUTLINED_FUNCTION_38_0(&unk_21705F8A0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D122F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_915(v1, v2);
  sub_21700EA34();
  v0[5] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  v0[6] = v3;
  v0[7] = v4;
  v5 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216D1236C()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for ReplaceReplayYearUpdate(0);
  OUTLINED_FUNCTION_1221();
  OUTLINED_FUNCTION_38_0(&unk_21705F8A0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D12404()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_915(v1, v2);
  sub_21700EA34();
  v0[5] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  v0[6] = v3;
  v0[7] = v4;
  v5 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216D12480()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for ReplaceReplayPageUpdate(0);
  OUTLINED_FUNCTION_1221();
  OUTLINED_FUNCTION_38_0(&unk_21705F8A0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D12518()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 56);
  v7 = *(v1 + 48);
  if (v0)
  {
    v8 = sub_21677D970;
  }

  else
  {
    v8 = sub_216B8D05C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D12640(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D126DC, v5, v4);
}

uint64_t sub_216D126DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_851();
  OUTLINED_FUNCTION_38_0(&unk_21705F388);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D12768(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D12804, v5, v4);
}

uint64_t sub_216D12804()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1136();
  OUTLINED_FUNCTION_38_0(&unk_21705F388);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D12890(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D1292C, v5, v4);
}

uint64_t sub_216D1292C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_851();
  OUTLINED_FUNCTION_38_0(&unk_21705F8A0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D129B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D12A54, v5, v4);
}

uint64_t sub_216D12A54()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1136();
  OUTLINED_FUNCTION_38_0(&unk_217060168);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

uint64_t sub_216D12AE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21700EA34();
  v3[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_216D12B7C, v5, v4);
}

uint64_t sub_216D12B7C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_851();
  OUTLINED_FUNCTION_38_0(&unk_217060168);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_231_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_126_2(v1);

  return v4(v3);
}

void sub_216D12C08()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v39 = v4;
  v38 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_1();
  v36 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v35 = v10 - v9;
  v11 = OUTLINED_FUNCTION_1248();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42_2();
  v15 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = (v18 - v17);
  OUTLINED_FUNCTION_764();
  sub_216DD9F00();
  OUTLINED_FUNCTION_832();
  if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
  {
    sub_2166997CC(v1, &qword_27CAC9490, &qword_21705FD08);
    v23 = 0;
  }

  else
  {
    v23 = *(v1 + 8);

    sub_216DDA050();
  }

  type metadata accessor for PageMappedItemsStore();
  OUTLINED_FUNCTION_143();
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
  *(v24 + 16) = sub_21700E384();
  v25 = type metadata accessor for JSReplayPage(0);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1087();
  *(v26 - 32) = v3;
  *(v26 - 24) = v23;
  *(v26 - 16) = v24;
  sub_216CC9FAC();
  v37 = v27;
  sub_216DD9F00();
  v28 = OUTLINED_FUNCTION_849();
  if (__swift_getEnumTagSinglePayload(v28, v29, v36) == 1)
  {

    sub_2166997CC(v0, &qword_27CAB6BF0, &unk_217015620);
    v30 = 0;
  }

  else
  {
    sub_216DDA0F4(v0, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD4A0, &unk_217060FA0);
    OUTLINED_FUNCTION_857();
    sub_216CCCA0C();
    v30 = v31;

    OUTLINED_FUNCTION_59_14();
    sub_216DDA050();
  }

  v32 = *(v15 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_9();
  (*(v33 + 16))(&v19[v32], v39);
  *v19 = v37;
  *(v19 + 1) = v24;
  *&v19[*(v15 + 28)] = v30;
  sub_216DDA0F4(v19, v38);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94B8, &qword_21705FD80);
  OUTLINED_FUNCTION_1081(v34);
  OUTLINED_FUNCTION_21_4();
}

void sub_216D12F94()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_9_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_1();
  v10 = type metadata accessor for MappedReplayModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_194();
  sub_216DD9F00();
  v12 = OUTLINED_FUNCTION_849();
  if (__swift_getEnumTagSinglePayload(v12, v13, v10) == 1)
  {
    sub_2166997CC(v1, &qword_27CABE090, &unk_217072520);
  }

  else
  {
    type metadata accessor for MappedReplayYearModel(0);

    OUTLINED_FUNCTION_69_14();
    sub_216DDA050();
  }

  type metadata accessor for ReplayModel(0);
  v14 = OUTLINED_FUNCTION_640();
  sub_21693DCB0(v14, v15, v16);

  v17 = v3[1];
  v18 = v3[2];
  *v0 = *v3;
  v0[1] = v17;
  v0[2] = v18;
  OUTLINED_FUNCTION_68_16();
  v19 = OUTLINED_FUNCTION_27_0();
  sub_216DDA0F4(v19, v20);
  *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91F0, &qword_21705F890) + 36)) = 1;
  sub_21700DF14();
  sub_21700DF14();
  OUTLINED_FUNCTION_21_4();
}

void sub_216D1313C()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  v29 = v5;
  v6 = OUTLINED_FUNCTION_22_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  v10 = type metadata accessor for MappedSearchPage(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = (v13 - v12);
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_23_5();
  sub_216DD9F00();
  v15 = OUTLINED_FUNCTION_104_5();
  if (__swift_getEnumTagSinglePayload(v15, v16, v10) == 1)
  {
    sub_2166997CC(v0, &qword_27CAC8ED8, &qword_21705F338);
    v17 = 0;
  }

  else
  {
    v17 = *(v0 + 24);

    sub_216DDA050();
  }

  type metadata accessor for PageMappedItemsStore();
  OUTLINED_FUNCTION_143();
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
  v19 = sub_21700E384();
  v20 = OUTLINED_FUNCTION_1213(v19);
  v21 = type metadata accessor for JSSearchPage(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1087();
  *(v22 - 32) = v2;
  *(v22 - 24) = v17;
  *(v22 - 16) = v18;
  sub_216CC9FAC();
  v24 = v23;

  v25 = *(v4 + *(v21 + 28));
  v26 = *(v10 + 32);
  sub_21700D194();
  OUTLINED_FUNCTION_9();
  (*(v27 + 16))(&v14[v26], v4);
  *v14 = 0;
  *(v14 + 1) = v24;
  *(v14 + 2) = v25;
  *(v14 + 3) = v18;
  sub_216DDA0F4(v14, v29);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EF0, &qword_21705F358);
  OUTLINED_FUNCTION_1081(v28);
  sub_21700DF14();
  OUTLINED_FUNCTION_21_4();
}

void sub_216D13390()
{
  OUTLINED_FUNCTION_22_3();
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_108();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41_1();
  v11 = type metadata accessor for MappedSearchResultsPage(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_8();
  sub_216DD9F00();
  v13 = OUTLINED_FUNCTION_104_5();
  if (__swift_getEnumTagSinglePayload(v13, v14, v11) == 1)
  {
    sub_2166997CC(v1, &qword_27CAC7EA0, &qword_21705B890);
    v15 = 0;
  }

  else
  {
    v15 = *(v1 + 8);

    OUTLINED_FUNCTION_802();
    sub_216DDA050();
  }

  type metadata accessor for PageMappedItemsStore();
  OUTLINED_FUNCTION_143();
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD498, &unk_21702A260);
  v17 = sub_21700E384();
  *(v16 + 16) = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1087();
  *(v18 - 32) = v23;
  *(v18 - 24) = v15;
  *(v18 - 16) = v16;
  sub_216CC9FAC();
  v20 = v19;
  type metadata accessor for JSSearchResultsPage(0);
  sub_216DD9F00();
  v21 = *(v4 + 16);
  sub_216EC58B8(v0 + *(v11 + 32));

  *v0 = v20;
  v0[1] = v16;
  *(v0 + *(v11 + 28)) = v21;
  OUTLINED_FUNCTION_801();
  sub_216DDA0F4(v0, v6);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96E0, &unk_217060130);
  OUTLINED_FUNCTION_1081(v22);
  OUTLINED_FUNCTION_21_4();
}

void sub_216D135B0()
{
  OUTLINED_FUNCTION_75_6();
  v4 = v3;
  OUTLINED_FUNCTION_733();
  OUTLINED_FUNCTION_1175(v5, v6, v7, v8, v9, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  *(v11 + 32) = 0;
  *(v0 + 16) = v4;
  *(v0 + 24) = v11;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_977();
  sub_216DD9B04();
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216D1362C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v53 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8, &unk_21705EB80);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = (&v46 - v5);
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - v7;
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v10 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E50, &qword_21705F180);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB8, &unk_21705EB08);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2166997CC(v17, &qword_27CAC8AB8, &unk_21705EB08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E58, &unk_21705F188);
    sub_2166D9530(&qword_27CAC8E60, &qword_27CAC8E58, &unk_21705F188, &unk_217047670);
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v17, v23);
    v26 = v54;
    sub_216DD9F00();
    v27 = v26;
    v28 = v23;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v41 = v47;
        sub_216DDA0F4(v14, v47);
        v42 = v57;
        sub_216DB5C7C(v41, v28, v49);
        sub_216DDA050();
        if (v42)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      case 2u:
        v40 = v57;
        sub_216DBFAE8(*v14, v51, v23);
        goto LABEL_8;
      case 3u:
        v40 = v57;
        sub_216DB7654(*v14, v23, v48);
        goto LABEL_8;
      case 4u:
        v40 = v57;
        sub_216DBC820(*v14, v23, v50);
LABEL_8:
        if (v40)
        {
          sub_216DDA050();
        }

        else
        {

LABEL_12:
          sub_216DD9B04();
LABEL_14:
          if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B80, &qword_2170141F0) + 36)) != 1)
          {
            sub_216CF4678();
          }

LABEL_16:
          result = sub_216DDA050();
        }

        break;
      case 5u:
        v43 = *(v55 + 32);
        v44 = v53;
        sub_216DDA0A0(v23, v53);
        v45 = v52;
        *(v44 + v52[9]) = 0;
        *(v44 + v45[10]) = v43;
        *(v44 + v45[11]) = 0;
        *(v44 + v45[12]) = 0;
        goto LABEL_14;
      default:
        sub_216DDA0F4(v14, v20);
        v29 = v55;
        v30 = sub_216CF2EB4(v20);
        MEMORY[0x28223BE20](v30);
        *(&v46 - 2) = v20;
        sub_216CE19C4(sub_216DD5A94, (&v46 - 4), v31, sub_2166BF3C8, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        v36 = v53;
        sub_216DDA0A0(v20, v53);
        v37 = sub_216DB2238();
        v38 = *(v29 + 32);
        v39 = v52;
        *(v36 + v52[9]) = v37;
        *(v36 + v39[10]) = v38;
        *(v36 + v39[11]) = 1;
        *(v36 + v39[12]) = 0;
        sub_216DDA050();
        goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_216D13CC8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v53 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0, &qword_21705FD20);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = (&v46 - v5);
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - v7;
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v10 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9658, &qword_217060008);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9488, &qword_21705FD00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for JSReplayPage(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2166997CC(v17, &qword_27CAC9488, &qword_21705FD00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9660, &qword_217060010);
    sub_2166D9530(&qword_27CAC9668, &qword_27CAC9660, &qword_217060010, &unk_217047670);
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v17, v23);
    v26 = v54;
    sub_216DD9F00();
    v27 = v26;
    v28 = v23;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v41 = v47;
        sub_216DDA0F4(v14, v47);
        v42 = v57;
        sub_216DB6184(v41, v28, v49);
        sub_216DDA050();
        if (v42)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      case 2u:
        v40 = v57;
        sub_216DBFFF4(*v14, v51, v23);
        goto LABEL_8;
      case 3u:
        v40 = v57;
        sub_216DB86A4(*v14, v23, v48);
        goto LABEL_8;
      case 4u:
        v40 = v57;
        sub_216DBD31C(*v14, v23, v50);
LABEL_8:
        if (v40)
        {
          sub_216DDA050();
        }

        else
        {

LABEL_12:
          sub_216DD9B04();
LABEL_14:
          if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD8, &qword_2170142E0) + 36)) != 1)
          {
            sub_216CF4744();
          }

LABEL_16:
          result = sub_216DDA050();
        }

        break;
      case 5u:
        v43 = *(v55 + 32);
        v44 = v53;
        sub_216DDA0A0(v23, v53);
        v45 = v52;
        *(v44 + v52[9]) = 0;
        *(v44 + v45[10]) = v43;
        *(v44 + v45[11]) = 0;
        *(v44 + v45[12]) = 0;
        goto LABEL_14;
      default:
        sub_216DDA0F4(v14, v20);
        v29 = v55;
        v30 = sub_216CF3098(v20);
        MEMORY[0x28223BE20](v30);
        *(&v46 - 2) = v20;
        sub_216CE19C4(sub_216DD89EC, (&v46 - 4), v31, sub_2166BF3C8, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        v36 = v53;
        sub_216DDA0A0(v20, v53);
        sub_216DB2860();
        v37 = *(v29 + 32);
        v38 = v52;
        *(v36 + v52[9]) = v39;
        *(v36 + v38[10]) = v37;
        *(v36 + v38[11]) = 1;
        *(v36 + v38[12]) = 0;
        sub_216DDA050();
        goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_216D14378@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v53 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8, &qword_21705F350);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - v5;
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - v7;
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v10 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9108, &qword_21705F6C8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED0, &qword_21705F330);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for JSSearchPage(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v46 - v22);
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2166997CC(v17, &qword_27CAC8ED0, &qword_21705F330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9110, &qword_21705F6D0);
    sub_2166D9530(&qword_27CAC9118, &qword_27CAC9110, &qword_21705F6D0, &unk_217047670);
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v17, v23);
    v26 = v54;
    sub_216DD9F00();
    v27 = v26;
    v28 = v23;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v41 = v47;
        sub_216DDA0F4(v14, v47);
        v42 = v57;
        sub_216DB668C(v41, v28, v49);
        sub_216DDA050();
        if (v42)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      case 2u:
        v40 = v57;
        sub_216DC0500(*v14, v51, v23);
        goto LABEL_8;
      case 3u:
        v40 = v57;
        sub_216DB96F4(*v14, v23, v48);
        goto LABEL_8;
      case 4u:
        v40 = v57;
        sub_216DBDE18(*v14, v23, v50);
LABEL_8:
        if (v40)
        {
          sub_216DDA050();
        }

        else
        {

LABEL_12:
          sub_216DD9B04();
LABEL_14:
          if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B88, &qword_2170141F8) + 36)) != 1)
          {
            sub_216CF48DC();
          }

LABEL_16:
          result = sub_216DDA050();
        }

        break;
      case 5u:
        v43 = *(v55 + 32);
        v44 = v53;
        sub_216DDA0A0(v23, v53);
        v45 = v52;
        *(v44 + v52[9]) = 0;
        *(v44 + v45[10]) = v43;
        *(v44 + v45[11]) = 0;
        *(v44 + v45[12]) = 0;
        goto LABEL_14;
      default:
        sub_216DDA0F4(v14, v20);
        v29 = v55;
        v30 = sub_216CF3468(v20);
        MEMORY[0x28223BE20](v30);
        *(&v46 - 2) = v20;
        sub_216CE19C4(sub_216DD72B4, (&v46 - 4), v31, sub_2166BF3C8, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        v36 = v53;
        sub_216DDA0A0(v20, v53);
        sub_216DB2860();
        v37 = *(v29 + 32);
        v38 = v52;
        *(v36 + v52[9]) = v39;
        *(v36 + v38[10]) = v37;
        *(v36 + v38[11]) = 1;
        *(v36 + v38[12]) = 0;
        sub_216DDA050();
        goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_216D14A28@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v53 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0, &unk_21702DAE0);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - v5;
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - v7;
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v10 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92F0, &qword_21705FA80);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for ReplayModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2166997CC(v17, &qword_27CABE0B8, &unk_21705F810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92F8, &qword_21705FA88);
    sub_2166D9530(&qword_27CAC9300, &qword_27CAC92F8, &qword_21705FA88, &unk_217047670);
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v17, v23);
    v26 = v54;
    sub_216DD9F00();
    v27 = v26;
    v28 = v23;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v41 = v47;
        sub_216DDA0F4(v14, v47);
        v42 = v57;
        sub_216DB6B94(v41, v28, v49);
        sub_216DDA050();
        if (v42)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      case 2u:
        v40 = v57;
        sub_216DC0A0C(*v14, v51, v23);
        goto LABEL_8;
      case 3u:
        v40 = v57;
        sub_216DBA73C(*v14, v23, v48);
        goto LABEL_8;
      case 4u:
        v40 = v57;
        sub_216DBE7A4(*v14, v23, v50);
LABEL_8:
        if (v40)
        {
          sub_216DDA050();
        }

        else
        {

LABEL_12:
          sub_216DD9B04();
LABEL_14:
          if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B90, &qword_217014200) + 36)) != 1)
          {
            sub_216CF4810();
          }

LABEL_16:
          result = sub_216DDA050();
        }

        break;
      case 5u:
        v43 = *(v55 + 32);
        v44 = v53;
        sub_216DDA0A0(v23, v53);
        v45 = v52;
        *(v44 + v52[9]) = 0;
        *(v44 + v45[10]) = v43;
        *(v44 + v45[11]) = 0;
        *(v44 + v45[12]) = 0;
        goto LABEL_14;
      default:
        sub_216DDA0F4(v14, v20);
        v29 = v55;
        v30 = sub_216CF327C(v20);
        MEMORY[0x28223BE20](v30);
        *(&v46 - 2) = v20;
        sub_216CE19C4(sub_216DD7F1C, (&v46 - 4), v31, sub_2166BF3C8, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        v36 = v53;
        sub_216DDA0A0(v20, v53);
        v37 = sub_216DB253C();
        v38 = *(v29 + 32);
        v39 = v52;
        *(v36 + v52[9]) = v37;
        *(v36 + v39[10]) = v38;
        *(v36 + v39[11]) = 1;
        *(v36 + v39[12]) = 0;
        sub_216DDA050();
        goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_216D150C4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v53 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8, &qword_217060128);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - v5;
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - v7;
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v10 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98D0, &qword_2170604A8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96C8, &unk_217060108);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = (&v46 - v22);
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2166997CC(v17, &qword_27CAC96C8, &unk_217060108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98D8, &qword_2170604B0);
    sub_2166D9530(&qword_27CAC98E0, &qword_27CAC98D8, &qword_2170604B0, &unk_217047670);
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v17, v23);
    v26 = v54;
    sub_216DD9F00();
    v27 = v26;
    v28 = v23;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v41 = v47;
        sub_216DDA0F4(v14, v47);
        v42 = v57;
        sub_216DB710C(v41, v28, v49);
        sub_216DDA050();
        if (v42)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      case 2u:
        v40 = v57;
        sub_216DC0F48(*v14, v51, v23);
        goto LABEL_8;
      case 3u:
        v40 = v57;
        sub_216DBB800(*v14, v23, v48);
        goto LABEL_8;
      case 4u:
        v40 = v57;
        sub_216DBF174(*v14, v23, v50);
LABEL_8:
        if (v40)
        {
          sub_216DDA050();
        }

        else
        {

LABEL_12:
          sub_216DD9B04();
LABEL_14:
          if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE0, &qword_2170142E8) + 36)) != 1)
          {
            sub_216CF49A8();
          }

LABEL_16:
          result = sub_216DDA050();
        }

        break;
      case 5u:
        v43 = *(v55 + 32);
        v44 = v53;
        sub_216DDA0A0(v23, v53);
        v45 = v52;
        *(v44 + v52[9]) = 0;
        *(v44 + v45[10]) = v43;
        *(v44 + v45[11]) = 0;
        *(v44 + v45[12]) = 0;
        goto LABEL_14;
      default:
        sub_216DDA0F4(v14, v20);
        v29 = v55;
        v30 = sub_216CF364C(v20);
        MEMORY[0x28223BE20](v30);
        *(&v46 - 2) = v20;
        sub_216CE19C4(sub_216DD9D1C, (&v46 - 4), v31, sub_2166BF3C8, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        v36 = v53;
        sub_216DDA0A0(v20, v53);
        v37 = sub_216DB2B10();
        v38 = *(v29 + 32);
        v39 = v52;
        *(v36 + v52[9]) = v37;
        *(v36 + v39[10]) = v38;
        *(v36 + v39[11]) = 1;
        *(v36 + v39[12]) = 0;
        sub_216DDA050();
        goto LABEL_14;
    }
  }

  return result;
}

void sub_216D15760()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_1112();
  v6 = v5;
  OUTLINED_FUNCTION_733();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v6;
  *(v9 + 40) = v2;
  *(v9 + 48) = 0;
  *(v1 + 16) = v0;
  *(v1 + 24) = v9;
  OUTLINED_FUNCTION_37_40();
  v10 = OUTLINED_FUNCTION_977();
  sub_216DDA0F4(v10, v11);
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216D157D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v47 = a1;
  v3 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = v39 - v6;
  v7 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC8, &unk_21705EB80);
  MEMORY[0x28223BE20](v9);
  v39[2] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39[1] = v39 - v12;
  MEMORY[0x28223BE20](v13);
  v39[0] = v39 - v14;
  MEMORY[0x28223BE20](v15);
  v16 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  MEMORY[0x28223BE20](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB8, &unk_21705EB08);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v39 - v20;
  v22 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v22);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2166997CC(v21, &qword_27CAC8AB8, &unk_21705EB08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E20, &qword_21705F0D8);
    sub_2166D9530(&qword_27CAC8E28, &qword_27CAC8E20, &qword_21705F0D8, &unk_2170410D0);
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v21, v24);
    v27 = v44;
    sub_216DDA0A0(v44, v18);
    v28 = v24;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_216DDA0F4(v18, v41);
        v31 = v45;
        goto LABEL_10;
      case 2u:
        sub_216DDA0F4(v18, v42);
        v31 = v45;
LABEL_10:
        v37 = v46;
        sub_216DB4AB8();
        v33 = v37;
        goto LABEL_11;
      case 3u:
        v31 = v45;
        v35 = *(v45 + 48);
        v36 = v43;
        sub_216DDA0A0(v28, v43);
        *(v36 + v9[9]) = 0;
        *(v36 + v9[10]) = v35;
        *(v36 + v9[11]) = 0;
        *(v36 + v9[12]) = 0;
        goto LABEL_13;
      case 4u:
        v31 = v45;
        v34 = v46;
        sub_216DB2E04(*(v45 + 16), *(v45 + 24), v28);
        if (!v34)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      default:
        v29 = v40;
        sub_216DDA0F4(v18, v40);
        v30 = v24;
        v31 = v45;
        v32 = v46;
        sub_216DB38B0(v29, v30, v39[0]);
        v33 = v32;
LABEL_11:
        sub_216DDA050();
        if (!v33)
        {
LABEL_12:
          sub_216DD9B04();
LABEL_13:
          v38 = *(v27 + *(type metadata accessor for SectionChangeInstruction(0) + 20));
          if (v38 >= 2)
          {
            sub_216CF5298(v38, *(v31 + 16), *(v31 + 24));
          }
        }

LABEL_15:
        result = sub_216DDA050();
        break;
    }
  }

  return result;
}

uint64_t sub_216D15DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v47 = a1;
  v3 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = v39 - v6;
  v7 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A0, &qword_21705FD20);
  MEMORY[0x28223BE20](v9);
  v39[2] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39[1] = v39 - v12;
  MEMORY[0x28223BE20](v13);
  v39[0] = v39 - v14;
  MEMORY[0x28223BE20](v15);
  v16 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  MEMORY[0x28223BE20](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9488, &qword_21705FD00);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v39 - v20;
  v22 = type metadata accessor for JSReplayPage(0);
  MEMORY[0x28223BE20](v22);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2166997CC(v21, &qword_27CAC9488, &qword_21705FD00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9630, &qword_21705FF80);
    sub_2166D9530(&qword_27CAC9638, &qword_27CAC9630, &qword_21705FF80, &unk_2170410D0);
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v21, v24);
    v27 = v44;
    sub_216DDA0A0(v44, v18);
    v28 = v24;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_216DDA0F4(v18, v41);
        v31 = v45;
        goto LABEL_10;
      case 2u:
        sub_216DDA0F4(v18, v42);
        v31 = v45;
LABEL_10:
        v37 = v46;
        sub_216DB4DEC();
        v33 = v37;
        goto LABEL_11;
      case 3u:
        v31 = v45;
        v35 = *(v45 + 48);
        v36 = v43;
        sub_216DDA0A0(v28, v43);
        *(v36 + v9[9]) = 0;
        *(v36 + v9[10]) = v35;
        *(v36 + v9[11]) = 0;
        *(v36 + v9[12]) = 0;
        goto LABEL_13;
      case 4u:
        v31 = v45;
        v34 = v46;
        sub_216DB3010(*(v45 + 16), *(v45 + 24), v28);
        if (!v34)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      default:
        v29 = v40;
        sub_216DDA0F4(v18, v40);
        v30 = v24;
        v31 = v45;
        v32 = v46;
        sub_216DB3C48(v29, v30, v39[0]);
        v33 = v32;
LABEL_11:
        sub_216DDA050();
        if (!v33)
        {
LABEL_12:
          sub_216DD9B04();
LABEL_13:
          v38 = *(v27 + *(type metadata accessor for SectionChangeInstruction(0) + 20));
          if (v38 >= 2)
          {
            sub_216CF56C0(v38, *(v31 + 16), *(v31 + 24));
          }
        }

LABEL_15:
        result = sub_216DDA050();
        break;
    }
  }

  return result;
}

uint64_t sub_216D16398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v47 = a1;
  v3 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = v39 - v6;
  v7 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE8, &qword_21705F350);
  MEMORY[0x28223BE20](v9);
  v39[2] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39[1] = v39 - v12;
  MEMORY[0x28223BE20](v13);
  v39[0] = v39 - v14;
  MEMORY[0x28223BE20](v15);
  v16 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  MEMORY[0x28223BE20](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED0, &qword_21705F330);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v39 - v20;
  v22 = type metadata accessor for JSSearchPage(0);
  MEMORY[0x28223BE20](v22);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2166997CC(v21, &qword_27CAC8ED0, &qword_21705F330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90E0, &qword_21705F650);
    sub_2166D9530(&qword_27CAC90E8, &qword_27CAC90E0, &qword_21705F650, &unk_2170410D0);
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v21, v24);
    v27 = v44;
    sub_216DDA0A0(v44, v18);
    v28 = v24;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_216DDA0F4(v18, v41);
        v31 = v45;
        goto LABEL_10;
      case 2u:
        sub_216DDA0F4(v18, v42);
        v31 = v45;
LABEL_10:
        v37 = v46;
        sub_216DB5114();
        v33 = v37;
        goto LABEL_11;
      case 3u:
        v31 = v45;
        v35 = *(v45 + 48);
        v36 = v43;
        sub_216DDA0A0(v28, v43);
        *(v36 + v9[9]) = 0;
        *(v36 + v9[10]) = v35;
        *(v36 + v9[11]) = 0;
        *(v36 + v9[12]) = 0;
        goto LABEL_13;
      case 4u:
        v31 = v45;
        v34 = v46;
        sub_216DB321C(*(v45 + 16), *(v45 + 24), v28);
        if (!v34)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      default:
        v29 = v40;
        sub_216DDA0F4(v18, v40);
        v30 = v24;
        v31 = v45;
        v32 = v46;
        sub_216DB3FDC(v29, v30, v39[0]);
        v33 = v32;
LABEL_11:
        sub_216DDA050();
        if (!v33)
        {
LABEL_12:
          sub_216DD9B04();
LABEL_13:
          v38 = *(v27 + *(type metadata accessor for SectionChangeInstruction(0) + 20));
          if (v38 >= 2)
          {
            sub_216CF5F1C(v38, *(v31 + 16), *(v31 + 24));
          }
        }

LABEL_15:
        result = sub_216DDA050();
        break;
    }
  }

  return result;
}

uint64_t sub_216D16978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v46 = a2;
  v49 = a1;
  v3 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = v41 - v6;
  v7 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0, &unk_21702DAE0);
  MEMORY[0x28223BE20](v9);
  v41[2] = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41[1] = v41 - v12;
  MEMORY[0x28223BE20](v13);
  v41[0] = v41 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  MEMORY[0x28223BE20](v18);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v41 - v22;
  v24 = type metadata accessor for ReplayModel(0);
  MEMORY[0x28223BE20](v24);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_2166997CC(v23, &qword_27CABE0B8, &unk_21705F810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92C8, &qword_21705F9F0);
    sub_2166D9530(&qword_27CAC92D0, &qword_27CAC92C8, &qword_21705F9F0, &unk_2170410D0);
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v23, v26);
    v29 = v46;
    sub_216DDA0A0(v46, v20);
    v30 = v26;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_216DDA0F4(v20, v43);
        v33 = v47;
        goto LABEL_10;
      case 2u:
        sub_216DDA0F4(v20, v44);
        v33 = v47;
LABEL_10:
        v39 = v48;
        sub_216DB543C();
        v35 = v39;
        goto LABEL_11;
      case 3u:
        v33 = v47;
        v37 = *(v47 + 48);
        v38 = v45;
        sub_216DDA0A0(v30, v45);
        *(v38 + v9[9]) = 0;
        *(v38 + v9[10]) = v37;
        *(v38 + v9[11]) = 0;
        *(v38 + v9[12]) = 0;
        goto LABEL_13;
      case 4u:
        v33 = v47;
        v36 = v48;
        sub_216DB3428(*(v47 + 16), *(v47 + 24), v30, v17);
        if (!v36)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      default:
        v31 = v42;
        sub_216DDA0F4(v20, v42);
        v32 = v26;
        v33 = v47;
        v34 = v48;
        sub_216DB4370(v31, v32, v41[0]);
        v35 = v34;
LABEL_11:
        sub_216DDA050();
        if (!v35)
        {
LABEL_12:
          sub_216DD9B04();
LABEL_13:
          v40 = *(v29 + *(type metadata accessor for SectionChangeInstruction(0) + 20));
          if (v40 >= 2)
          {
            sub_216CF5AE8(v40, *(v33 + 16), *(v33 + 24));
          }
        }

LABEL_15:
        result = sub_216DDA050();
        break;
    }
  }

  return result;
}

uint64_t sub_216D16F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v47 = a1;
  v3 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = v39 - v6;
  v7 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96D8, &qword_217060128);
  MEMORY[0x28223BE20](v9);
  v39[2] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39[1] = v39 - v12;
  MEMORY[0x28223BE20](v13);
  v39[0] = v39 - v14;
  MEMORY[0x28223BE20](v15);
  v16 = type metadata accessor for SectionChangeInstruction.Instruction(0);
  MEMORY[0x28223BE20](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96C8, &unk_217060108);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v39 - v20;
  v22 = type metadata accessor for JSSearchResultsPage(0);
  MEMORY[0x28223BE20](v22);
  v24 = (v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216DD9F00();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2166997CC(v21, &qword_27CAC96C8, &unk_217060108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98A8, &qword_217060430);
    sub_2166D9530(&qword_27CAC98B0, &qword_27CAC98A8, &qword_217060430, &unk_2170410D0);
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_216DDA0F4(v21, v24);
    v27 = v44;
    sub_216DDA0A0(v44, v18);
    v28 = v24;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_216DDA0F4(v18, v41);
        v31 = v45;
        goto LABEL_10;
      case 2u:
        sub_216DDA0F4(v18, v42);
        v31 = v45;
LABEL_10:
        v37 = v46;
        sub_216DB5894();
        v33 = v37;
        goto LABEL_11;
      case 3u:
        v31 = v45;
        v35 = *(v45 + 48);
        v36 = v43;
        sub_216DDA0A0(v28, v43);
        *(v36 + v9[9]) = 0;
        *(v36 + v9[10]) = v35;
        *(v36 + v9[11]) = 0;
        *(v36 + v9[12]) = 0;
        goto LABEL_13;
      case 4u:
        v31 = v45;
        v34 = v46;
        sub_216DB36B0(*(v45 + 16), *(v45 + 24), v28);
        if (!v34)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      default:
        v29 = v40;
        sub_216DDA0F4(v18, v40);
        v30 = v24;
        v31 = v45;
        v32 = v46;
        sub_216DB473C(v29, v30, v39[0]);
        v33 = v32;
LABEL_11:
        sub_216DDA050();
        if (!v33)
        {
LABEL_12:
          sub_216DD9B04();
LABEL_13:
          v38 = *(v27 + *(type metadata accessor for SectionChangeInstruction(0) + 20));
          if (v38 >= 2)
          {
            sub_216CF6350(v38, *(v31 + 16), *(v31 + 24));
          }
        }

LABEL_15:
        result = sub_216DDA050();
        break;
    }
  }

  return result;
}

void sub_216D17538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(uint64_t), uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t (*a35)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_22_3();
  v240 = v38;
  v260 = v39;
  v239 = v40;
  v242 = v41;
  v262 = v42;
  v263 = v36;
  v265 = v35;
  v266 = v43;
  v261 = v44;
  v45 = type metadata accessor for SearchResultsListSection(0);
  v46 = OUTLINED_FUNCTION_36(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47_1();
  v49 = OUTLINED_FUNCTION_8_0(v48);
  v244 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(v49);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47_1();
  v53 = OUTLINED_FUNCTION_8_0(v52);
  v54 = type metadata accessor for ContentDescriptor(v53);
  v55 = OUTLINED_FUNCTION_36(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_47_1();
  v58 = OUTLINED_FUNCTION_8_0(v57);
  v264 = type metadata accessor for SectionContent(v58);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1_0();
  v259 = v60;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_4();
  v258 = v62;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_4();
  v257 = v64;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_89_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  v256 = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v255 = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_4();
  v254 = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v253 = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  v252 = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_309(v77, v78, v79, v80, v81, v82, v83, v84, v236);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_6_4();
  v249 = v86;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_6_4();
  v248 = v88;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_6_4();
  v247 = v90;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_6_4();
  v251 = v92;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_6_4();
  v246 = v94;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v96);
  v98 = &v236 - v97;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_26_34();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v102);
  MEMORY[0x28223BE20](v103);
  v105 = &v236 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDF0, &unk_217031298);
  OUTLINED_FUNCTION_36(v106);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_78_1();
  v109 = *(v108 + 56);
  OUTLINED_FUNCTION_3_150();
  sub_216DDA0A0(v265, v37);
  *(v37 + v109) = v266;
  OUTLINED_FUNCTION_668();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v110 = OUTLINED_FUNCTION_119();
      sub_216DDA0A0(v110, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);
      if (v266 != 1)
      {
        goto LABEL_119;
      }

      OUTLINED_FUNCTION_165_0();
      v113 = v237;
      sub_216DDA0F4(&v105[v112], v237);
      v114 = OUTLINED_FUNCTION_651();
      v115 = v242(v114);
      if (v36)
      {
        goto LABEL_83;
      }

      goto LABEL_4;
    case 3u:
      v172 = OUTLINED_FUNCTION_52_3();
      sub_216DDA0A0(v172, v173);
      OUTLINED_FUNCTION_36_18();
      if (v174 != 3)
      {
        goto LABEL_120;
      }

      v175 = OUTLINED_FUNCTION_651();
      v239(v175);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 4u:
      OUTLINED_FUNCTION_36_18();
      if (v158 != 4)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 68;
      goto LABEL_116;
    case 6u:
      v192 = OUTLINED_FUNCTION_229();
      sub_216DDA0A0(v192, v193);
      OUTLINED_FUNCTION_36_18();
      if (v194 != 56)
      {
        goto LABEL_118;
      }

      sub_216DDA0F4(v35, v243);
      v195 = v244;
      v196 = sub_21700DF14();
      v197 = v263;
      v260(v196, v262);
      if (v197)
      {
        goto LABEL_83;
      }

      OUTLINED_FUNCTION_55_3();

      v233 = v236;
      sub_216DD9F00();
      v234 = OUTLINED_FUNCTION_105_6(v195[5]);
      sub_216788294(v234, v235);
      OUTLINED_FUNCTION_105_6(v195[6]);
      sub_216DD9F00();
      OUTLINED_FUNCTION_105_6(v195[7]);
      sub_216DD9F00();
      OUTLINED_FUNCTION_105_6(v195[9]);
      sub_216DD9F00();
      sub_216DDA050();
      *(v233 + v195[8]) = v98;
      sub_216DDA0F4(v233, v261);
      OUTLINED_FUNCTION_208_0();
      goto LABEL_127;
    case 7u:
      v198 = OUTLINED_FUNCTION_640();
      sub_216DDA0A0(v198, v199);
      OUTLINED_FUNCTION_36_18();
      if (v200 != 8)
      {
        goto LABEL_120;
      }

      v201 = OUTLINED_FUNCTION_651();
      v240(v201);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 8u:
      OUTLINED_FUNCTION_36_18();
      if (v161 != 9)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 73;
      goto LABEL_116;
    case 9u:
      OUTLINED_FUNCTION_36_18();
      if (v176 != 10)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 74;
      goto LABEL_116;
    case 0xAu:
      OUTLINED_FUNCTION_36_18();
      if (v177 != 11)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 75;
      goto LABEL_116;
    case 0xBu:
      v204 = OUTLINED_FUNCTION_588();
      sub_216DDA0A0(v204, v205);
      OUTLINED_FUNCTION_36_18();
      if (v206 != 12)
      {
        goto LABEL_120;
      }

      v207 = OUTLINED_FUNCTION_651();
      v208(v207);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0xDu:
      OUTLINED_FUNCTION_36_18();
      if (v203 != 14)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 78;
      goto LABEL_116;
    case 0xEu:
      OUTLINED_FUNCTION_36_18();
      if (v141 != 15)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 79;
      goto LABEL_116;
    case 0xFu:
      sub_216DDA0A0(v37, v98);
      OUTLINED_FUNCTION_22_31();
      if (v162 != 16)
      {
        goto LABEL_120;
      }

      v163 = OUTLINED_FUNCTION_651();
      v164(v163);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x10u:
      v150 = OUTLINED_FUNCTION_104_0();
      sub_216DDA0A0(v150, v151);
      OUTLINED_FUNCTION_36_18();
      if (v152 != 17)
      {
        goto LABEL_120;
      }

      v153 = OUTLINED_FUNCTION_651();
      v154(v153);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x11u:
      OUTLINED_FUNCTION_36_18();
      if (v136 != 18)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 82;
      goto LABEL_116;
    case 0x13u:
      sub_216DDA0A0(v37, v246);
      OUTLINED_FUNCTION_22_31();
      if (v181 != 20)
      {
        goto LABEL_120;
      }

      v182 = OUTLINED_FUNCTION_651();
      v183(v182);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x15u:
      OUTLINED_FUNCTION_3_150();
      v184 = v259;
      sub_216DDA0A0(v37, v259);
      OUTLINED_FUNCTION_36_18();
      if (v185 != 55)
      {
LABEL_118:
        sub_216DDA050();
        goto LABEL_121;
      }

      v186 = v241;
      sub_216DDA0F4(v184, v241);
      v187 = v245;
      sub_216DDA0A0(v186, v245);
      v188 = sub_21700DF14();
      v189 = v263;
      v190 = a35(v188, v262);
      if (v189)
      {
        sub_216DDA050();

        OUTLINED_FUNCTION_158();
      }

      else
      {
        v231 = v190;
        sub_216DDA050();

        *(v187 + 32) = v231;
        v232 = OUTLINED_FUNCTION_645();
        sub_216DDA0A0(v232, v261);
        OUTLINED_FUNCTION_208_0();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_109();
      }

      sub_216DDA050();
      goto LABEL_128;
    case 0x18u:
      OUTLINED_FUNCTION_36_18();
      if (v214 != 22)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 86;
      goto LABEL_116;
    case 0x1Au:
      v209 = v251;
      sub_216DDA0A0(v37, v251);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
      if (v266 == 24)
      {
        OUTLINED_FUNCTION_165_0();
        v211 = v209 + v210;
        v113 = v238;
        sub_216DDA0F4(v211, v238);
        v212 = OUTLINED_FUNCTION_651();
        v115 = a25(v212);
        if (v36)
        {
LABEL_83:
          sub_216DDA050();
LABEL_109:
        }

        else
        {
LABEL_4:
          v116 = v115;

          v117 = v261;
          *v261 = v116;
          OUTLINED_FUNCTION_165_0();
          sub_216DDA0F4(v113, v117 + v118);
          OUTLINED_FUNCTION_208_0();
LABEL_127:
          swift_storeEnumTagMultiPayload();
        }

LABEL_128:
        sub_216DDA050();
      }

      else
      {
LABEL_119:
        sub_216DDA050();
LABEL_120:

LABEL_121:
        sub_2169BB698();
        OUTLINED_FUNCTION_485();
        swift_allocError();
        *v230 = -127;
        swift_willThrow();
        sub_2166997CC(v37, &qword_27CABEDF0, &unk_217031298);
      }

      OUTLINED_FUNCTION_21_4();
      return;
    case 0x1Bu:
      OUTLINED_FUNCTION_36_18();
      if (v134 != 25)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 89;
      goto LABEL_116;
    case 0x1Cu:
      sub_216DDA0A0(v37, v247);
      OUTLINED_FUNCTION_22_31();
      if (v155 != 26)
      {
        goto LABEL_120;
      }

      v156 = OUTLINED_FUNCTION_651();
      v157(v156);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x1Eu:
      sub_216DDA0A0(v37, v248);
      OUTLINED_FUNCTION_22_31();
      if (v217 != 28)
      {
        goto LABEL_120;
      }

      v218 = OUTLINED_FUNCTION_651();
      v219(v218);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x1Fu:
      OUTLINED_FUNCTION_36_18();
      if (v135 != 61)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 125;
      goto LABEL_116;
    case 0x20u:
      sub_216DDA0A0(v37, v249);
      OUTLINED_FUNCTION_22_31();
      if (v147 != 30)
      {
        goto LABEL_120;
      }

      v148 = OUTLINED_FUNCTION_651();
      v149(v148);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x21u:
      sub_216DDA0A0(v37, v250);
      OUTLINED_FUNCTION_22_31();
      if (v138 != 31)
      {
        goto LABEL_120;
      }

      v139 = OUTLINED_FUNCTION_651();
      v140(v139);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x22u:
      sub_216DDA0A0(v37, v252);
      OUTLINED_FUNCTION_22_31();
      if (v165 != 32)
      {
        goto LABEL_120;
      }

      v166 = OUTLINED_FUNCTION_651();
      v167(v166);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x23u:
      OUTLINED_FUNCTION_36_18();
      if (v137 != 33)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 97;
      goto LABEL_116;
    case 0x24u:
      OUTLINED_FUNCTION_36_18();
      if (v227 != 34)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 98;
      goto LABEL_116;
    case 0x25u:
      OUTLINED_FUNCTION_3_150();
      sub_216DDA0A0(v37, v253);
      OUTLINED_FUNCTION_22_31();
      if (v220 != 35)
      {
        goto LABEL_120;
      }

      v221 = OUTLINED_FUNCTION_651();
      sub_216D30D24(v221, v222, a31, a32, v223, v224, v225, v226, v236, v237);
      if (v36)
      {
        goto LABEL_109;
      }

      goto LABEL_126;
    case 0x26u:
      OUTLINED_FUNCTION_36_18();
      if (v143 != 42)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 106;
      goto LABEL_116;
    case 0x27u:
      OUTLINED_FUNCTION_36_18();
      if (v159 != 43)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 107;
      goto LABEL_116;
    case 0x28u:
      OUTLINED_FUNCTION_36_18();
      if (v191 != 44)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 108;
      goto LABEL_116;
    case 0x29u:
      OUTLINED_FUNCTION_36_18();
      if (v160 != 45)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 109;
      goto LABEL_116;
    case 0x2Au:
      OUTLINED_FUNCTION_36_18();
      if (v229 != 46)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 110;
      goto LABEL_116;
    case 0x2Bu:
      OUTLINED_FUNCTION_36_18();
      if (v142 != 47)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 111;
      goto LABEL_116;
    case 0x2Cu:
      OUTLINED_FUNCTION_36_18();
      if (v213 != 38)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 102;
      goto LABEL_116;
    case 0x2Du:
      OUTLINED_FUNCTION_36_18();
      if (v228 != 41)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 105;
      goto LABEL_116;
    case 0x30u:
      sub_216DDA0A0(v37, v254);
      OUTLINED_FUNCTION_22_31();
      if (v130 != 39)
      {
        goto LABEL_120;
      }

      v131 = OUTLINED_FUNCTION_651();
      v132(v131);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x32u:
      OUTLINED_FUNCTION_36_18();
      if (v202 != 49)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 113;
      goto LABEL_116;
    case 0x34u:
      OUTLINED_FUNCTION_3_150();
      sub_216DDA0A0(v37, v255);
      OUTLINED_FUNCTION_22_31();
      if (v123 != 51)
      {
        goto LABEL_120;
      }

      v124 = OUTLINED_FUNCTION_651();
      sub_216D31D1C(v124, v125, a31, a32, v126, v127, v128, v129, v236, v237);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x35u:
      OUTLINED_FUNCTION_36_18();
      if (v122 != 53)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 117;
      goto LABEL_116;
    case 0x37u:
      sub_216DDA0A0(v37, v256);
      OUTLINED_FUNCTION_22_31();
      if (v144 != 54)
      {
        goto LABEL_120;
      }

      v145 = OUTLINED_FUNCTION_651();
      v146(v145);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x38u:
      OUTLINED_FUNCTION_3_150();
      OUTLINED_FUNCTION_566();
      sub_216DDA0A0(v168, v169);
      OUTLINED_FUNCTION_22_31();
      if (v170 != 55)
      {
        goto LABEL_120;
      }

      v171 = OUTLINED_FUNCTION_651();
      (a35)(v171);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x39u:
      sub_216DDA0A0(v37, v257);
      OUTLINED_FUNCTION_22_31();
      if (v215 != 56)
      {
        goto LABEL_120;
      }

      v216 = OUTLINED_FUNCTION_651();
      (v260)(v216);
      if (!v36)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x3Au:
      OUTLINED_FUNCTION_36_18();
      if (v119 != 57)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 121;
      goto LABEL_116;
    case 0x3Bu:
      OUTLINED_FUNCTION_36_18();
      if (v133 != 58)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      OUTLINED_FUNCTION_485();
      swift_allocError();
      v121 = 122;
LABEL_116:
      *v120 = v121;
      swift_willThrow();
      goto LABEL_128;
    case 0x3Du:
      sub_216DDA0A0(v37, v258);
      OUTLINED_FUNCTION_22_31();
      if (v178 != 60)
      {
        goto LABEL_120;
      }

      v179 = OUTLINED_FUNCTION_651();
      v180(v179);
      if (v36)
      {
        goto LABEL_109;
      }

LABEL_126:
      OUTLINED_FUNCTION_47();

      OUTLINED_FUNCTION_264();
      goto LABEL_127;
    default:
      goto LABEL_121;
  }
}

uint64_t sub_216D189A0@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t *a3@<X8>)
{
  v179 = a1;
  v183 = a2;
  v178 = a3;
  v3 = type metadata accessor for SearchResultsListSection(0);
  MEMORY[0x28223BE20](v3 - 8);
  v162 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v159 = &v156 - v6;
  v161 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(0);
  MEMORY[0x28223BE20](v161);
  v156 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v160 = &v156 - v9;
  v10 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v10 - 8);
  v158 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v157 = &v156 - v13;
  v181 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v181);
  v177 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v176 = (&v156 - v16);
  MEMORY[0x28223BE20](v17);
  v175 = (&v156 - v18);
  MEMORY[0x28223BE20](v19);
  v174 = (&v156 - v20);
  MEMORY[0x28223BE20](v21);
  v173 = (&v156 - v22);
  MEMORY[0x28223BE20](v23);
  v172 = (&v156 - v24);
  MEMORY[0x28223BE20](v25);
  v171 = (&v156 - v26);
  MEMORY[0x28223BE20](v27);
  v170 = (&v156 - v28);
  MEMORY[0x28223BE20](v29);
  v169 = (&v156 - v30);
  MEMORY[0x28223BE20](v31);
  v168 = (&v156 - v32);
  MEMORY[0x28223BE20](v33);
  v166 = (&v156 - v34);
  MEMORY[0x28223BE20](v35);
  v165 = (&v156 - v36);
  MEMORY[0x28223BE20](v37);
  v164 = (&v156 - v38);
  MEMORY[0x28223BE20](v39);
  v167 = (&v156 - v40);
  MEMORY[0x28223BE20](v41);
  v163 = (&v156 - v42);
  MEMORY[0x28223BE20](v43);
  v45 = (&v156 - v44);
  MEMORY[0x28223BE20](v46);
  v48 = (&v156 - v47);
  MEMORY[0x28223BE20](v49);
  v51 = (&v156 - v50);
  MEMORY[0x28223BE20](v52);
  v54 = (&v156 - v53);
  MEMORY[0x28223BE20](v55);
  v57 = &v156 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = (&v156 - v59);
  MEMORY[0x28223BE20](v61);
  v63 = (&v156 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDF0, &unk_217031298);
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v156 - v65;
  v68 = *(v67 + 56);
  sub_216DDA0A0(v182, &v156 - v65);
  v66[v68] = v183;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_216DDA0A0(v66, v63);
      v69 = *v63;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);
      if (v183 != 1)
      {
        goto LABEL_119;
      }

      v71 = v70;
      v72 = v63 + *(v70 + 48);
      v73 = v157;
      sub_216DDA0F4(v72, v157);
      v74 = v180;
      v75 = sub_216D3408C(v69, v179);
      if (v74)
      {
        goto LABEL_96;
      }

      goto LABEL_4;
    case 3u:
      sub_216DDA0A0(v66, v60);
      if (v183 != 3)
      {
        goto LABEL_120;
      }

      v113 = v180;
      v88 = sub_216D34A68(*v60, v179);
      if (!v113)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 4u:
      if (v183 != 4)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 68;
      goto LABEL_116;
    case 6u:
      sub_216DDA0A0(v66, v57);
      if (v183 != 56)
      {
        goto LABEL_118;
      }

      v126 = v160;
      sub_216DDA0F4(v57, v160);
      v127 = v161;
      v128 = sub_21700DF14();
      v129 = v180;
      v130 = sub_216D35444(v128, v179);
      if (!v129)
      {
        v153 = v130;

        v154 = v156;
        sub_216DD9F00();
        sub_216788294(v126 + *(v127 + 20), v154 + *(v127 + 20));
        sub_216DD9F00();
        sub_216DD9F00();
        sub_216DD9F00();
        sub_216DDA050();
        *(v154 + *(v127 + 32)) = v153;
        sub_216DDA0F4(v154, v178);
        goto LABEL_127;
      }

      sub_216DDA050();
LABEL_109:

      return sub_216DDA050();
    case 7u:
      sub_216DDA0A0(v66, v54);
      if (v183 != 8)
      {
        goto LABEL_120;
      }

      v131 = v180;
      v88 = sub_216D35E20(*v54, v179);
      if (!v131)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 8u:
      if (v183 != 9)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 73;
      goto LABEL_116;
    case 9u:
      if (v183 != 10)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 74;
      goto LABEL_116;
    case 0xAu:
      if (v183 != 11)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 75;
      goto LABEL_116;
    case 0xBu:
      sub_216DDA0A0(v66, v51);
      if (v183 != 12)
      {
        goto LABEL_120;
      }

      v132 = v180;
      v88 = sub_216D367FC(*v51, v179);
      if (!v132)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0xDu:
      if (v183 != 14)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 78;
      goto LABEL_116;
    case 0xEu:
      if (v183 != 15)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 79;
      goto LABEL_116;
    case 0xFu:
      sub_216DDA0A0(v66, v48);
      if (v183 != 16)
      {
        goto LABEL_120;
      }

      v106 = v180;
      v88 = sub_216D371D8(*v48, v179);
      if (!v106)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x10u:
      sub_216DDA0A0(v66, v45);
      v101 = *v45;
      if (v183 != 17)
      {
        goto LABEL_120;
      }

      v102 = v180;
      v88 = sub_216D37B74(v101, v179);
      if (!v102)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x11u:
      if (v183 != 18)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 82;
      goto LABEL_116;
    case 0x13u:
      v117 = v163;
      sub_216DDA0A0(v66, v163);
      v118 = *v117;
      if (v183 != 20)
      {
        goto LABEL_120;
      }

      v119 = v180;
      v88 = sub_216D38550(v118, v179);
      if (!v119)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x15u:
      v120 = v177;
      sub_216DDA0A0(v66, v177);
      if (v183 != 55)
      {
LABEL_118:
        sub_216DDA050();
        goto LABEL_121;
      }

      v121 = v159;
      sub_216DDA0F4(v120, v159);
      v122 = v162;
      sub_216DDA0A0(v121, v162);
      v123 = sub_21700DF14();
      v124 = v180;
      v125 = sub_216D3DD8C(v123, v179);
      if (v124)
      {
        sub_216DDA050();
      }

      else
      {
        v152 = v125;
        sub_216DDA050();

        *(v122 + 32) = v152;
        sub_216DDA0A0(v122, v178);
        swift_storeEnumTagMultiPayload();
      }

      sub_216DDA050();
      return sub_216DDA050();
    case 0x18u:
      if (v183 != 22)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 86;
      goto LABEL_116;
    case 0x1Au:
      v133 = v167;
      sub_216DDA0A0(v66, v167);
      v134 = *v133;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
      if (v183 == 24)
      {
        v71 = v135;
        v73 = v158;
        sub_216DDA0F4(v133 + *(v135 + 48), v158);
        v136 = v180;
        v75 = sub_216D38F2C(v134, v179);
        if (v136)
        {
LABEL_96:
          sub_216DDA050();
        }

        else
        {
LABEL_4:
          v76 = v75;

          v77 = *(v71 + 48);
          v78 = v178;
          *v178 = v76;
          sub_216DDA0F4(v73, v78 + v77);
LABEL_127:
          swift_storeEnumTagMultiPayload();
        }

        return sub_216DDA050();
      }

      else
      {
LABEL_119:
        sub_216DDA050();
LABEL_120:

LABEL_121:
        sub_2169BB698();
        swift_allocError();
        *v150 = -127;
        swift_willThrow();
        return sub_2166997CC(v66, &qword_27CABEDF0, &unk_217031298);
      }

    case 0x1Bu:
      if (v183 != 25)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 89;
      goto LABEL_116;
    case 0x1Cu:
      v103 = v164;
      sub_216DDA0A0(v66, v164);
      v104 = *v103;
      if (v183 != 26)
      {
        goto LABEL_120;
      }

      v105 = v180;
      v88 = sub_216D39908(v104, v179);
      if (!v105)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x1Eu:
      v140 = v165;
      sub_216DDA0A0(v66, v165);
      v141 = *v140;
      if (v183 != 28)
      {
        goto LABEL_120;
      }

      v142 = v180;
      v88 = sub_216D3A2E4(v141, v179);
      if (!v142)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x1Fu:
      if (v183 != 61)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 125;
      goto LABEL_116;
    case 0x20u:
      v98 = v166;
      sub_216DDA0A0(v66, v166);
      v99 = *v98;
      if (v183 != 30)
      {
        goto LABEL_120;
      }

      v100 = v180;
      v88 = sub_216D3ACC0(v99, v179);
      if (!v100)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x21u:
      v92 = v168;
      sub_216DDA0A0(v66, v168);
      v93 = *v92;
      if (v183 != 31)
      {
        goto LABEL_120;
      }

      v94 = v180;
      v88 = sub_216D3B65C(v93, v179);
      if (!v94)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x22u:
      v107 = v169;
      sub_216DDA0A0(v66, v169);
      v108 = *v107;
      if (v183 != 32)
      {
        goto LABEL_120;
      }

      v109 = v180;
      v88 = sub_216D3C038(v108, v179);
      if (!v109)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x23u:
      if (v183 != 33)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 97;
      goto LABEL_116;
    case 0x24u:
      if (v183 != 34)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 98;
      goto LABEL_116;
    case 0x25u:
      v143 = v170;
      sub_216DDA0A0(v66, v170);
      v148 = *v143;
      if (v183 != 35)
      {
        goto LABEL_120;
      }

      v149 = v180;
      sub_216D47ACC(v148, v179, &unk_27CAC9138, &unk_21705F6F0, v144, v145, v146, v147, v156, v157);
      if (v149)
      {
        goto LABEL_109;
      }

      goto LABEL_126;
    case 0x26u:
      if (v183 != 42)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 106;
      goto LABEL_116;
    case 0x27u:
      if (v183 != 43)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 107;
      goto LABEL_116;
    case 0x28u:
      if (v183 != 44)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 108;
      goto LABEL_116;
    case 0x29u:
      if (v183 != 45)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 109;
      goto LABEL_116;
    case 0x2Au:
      if (v183 != 46)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 110;
      goto LABEL_116;
    case 0x2Bu:
      if (v183 != 47)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 111;
      goto LABEL_116;
    case 0x2Cu:
      if (v183 != 38)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 102;
      goto LABEL_116;
    case 0x2Du:
      if (v183 != 41)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 105;
      goto LABEL_116;
    case 0x30u:
      v89 = v171;
      sub_216DDA0A0(v66, v171);
      v90 = *v89;
      if (v183 != 39)
      {
        goto LABEL_120;
      }

      v91 = v180;
      v88 = sub_216D3CA14(v90, v179);
      if (!v91)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x32u:
      if (v183 != 49)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 113;
      goto LABEL_116;
    case 0x34u:
      v81 = v172;
      sub_216DDA0A0(v66, v172);
      v86 = *v81;
      if (v183 != 51)
      {
        goto LABEL_120;
      }

      v87 = v180;
      sub_216D48AC4(v86, v179, &unk_27CAC9138, &unk_21705F6F0, v82, v83, v84, v85, v156, v157);
      if (!v87)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x35u:
      if (v183 != 53)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 117;
      goto LABEL_116;
    case 0x37u:
      v95 = v173;
      sub_216DDA0A0(v66, v173);
      v96 = *v95;
      if (v183 != 54)
      {
        goto LABEL_120;
      }

      v97 = v180;
      v88 = sub_216D3D3F0(v96, v179);
      if (!v97)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x38u:
      v110 = v174;
      sub_216DDA0A0(v66, v174);
      v111 = *v110;
      if (v183 != 55)
      {
        goto LABEL_120;
      }

      v112 = v180;
      v88 = sub_216D3DD8C(v111, v179);
      if (!v112)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x39u:
      v137 = v175;
      sub_216DDA0A0(v66, v175);
      v138 = *v137;
      if (v183 != 56)
      {
        goto LABEL_120;
      }

      v139 = v180;
      v88 = sub_216D35444(v138, v179);
      if (!v139)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x3Au:
      if (v183 != 57)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 121;
      goto LABEL_116;
    case 0x3Bu:
      if (v183 != 58)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 122;
LABEL_116:
      *v79 = v80;
      swift_willThrow();
      return sub_216DDA050();
    case 0x3Du:
      v114 = v176;
      sub_216DDA0A0(v66, v176);
      v115 = *v114;
      if (v183 != 60)
      {
        goto LABEL_120;
      }

      v116 = v180;
      v88 = sub_216D3E768(v115, v179);
      if (v116)
      {
        goto LABEL_109;
      }

LABEL_126:
      v155 = v88;

      *v178 = v155;
      goto LABEL_127;
    default:
      goto LABEL_121;
  }
}

uint64_t sub_216D1A20C@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t *a3@<X8>)
{
  v179 = a1;
  v183 = a2;
  v178 = a3;
  v3 = type metadata accessor for SearchResultsListSection(0);
  MEMORY[0x28223BE20](v3 - 8);
  v162 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v159 = &v156 - v6;
  v161 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(0);
  MEMORY[0x28223BE20](v161);
  v156 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v160 = &v156 - v9;
  v10 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v10 - 8);
  v158 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v157 = &v156 - v13;
  v181 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v181);
  v177 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v176 = (&v156 - v16);
  MEMORY[0x28223BE20](v17);
  v175 = (&v156 - v18);
  MEMORY[0x28223BE20](v19);
  v174 = (&v156 - v20);
  MEMORY[0x28223BE20](v21);
  v173 = (&v156 - v22);
  MEMORY[0x28223BE20](v23);
  v172 = (&v156 - v24);
  MEMORY[0x28223BE20](v25);
  v171 = (&v156 - v26);
  MEMORY[0x28223BE20](v27);
  v170 = (&v156 - v28);
  MEMORY[0x28223BE20](v29);
  v169 = (&v156 - v30);
  MEMORY[0x28223BE20](v31);
  v168 = (&v156 - v32);
  MEMORY[0x28223BE20](v33);
  v166 = (&v156 - v34);
  MEMORY[0x28223BE20](v35);
  v165 = (&v156 - v36);
  MEMORY[0x28223BE20](v37);
  v164 = (&v156 - v38);
  MEMORY[0x28223BE20](v39);
  v167 = (&v156 - v40);
  MEMORY[0x28223BE20](v41);
  v163 = (&v156 - v42);
  MEMORY[0x28223BE20](v43);
  v45 = (&v156 - v44);
  MEMORY[0x28223BE20](v46);
  v48 = (&v156 - v47);
  MEMORY[0x28223BE20](v49);
  v51 = (&v156 - v50);
  MEMORY[0x28223BE20](v52);
  v54 = (&v156 - v53);
  MEMORY[0x28223BE20](v55);
  v57 = &v156 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = (&v156 - v59);
  MEMORY[0x28223BE20](v61);
  v63 = (&v156 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDF0, &unk_217031298);
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v156 - v65;
  v68 = *(v67 + 56);
  sub_216DDA0A0(v182, &v156 - v65);
  v66[v68] = v183;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_216DDA0A0(v66, v63);
      v69 = *v63;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);
      if (v183 != 1)
      {
        goto LABEL_119;
      }

      v71 = v70;
      v72 = v63 + *(v70 + 48);
      v73 = v157;
      sub_216DDA0F4(v72, v157);
      v74 = v180;
      v75 = sub_216D3F144(v69, v179);
      if (v74)
      {
        goto LABEL_96;
      }

      goto LABEL_4;
    case 3u:
      sub_216DDA0A0(v66, v60);
      if (v183 != 3)
      {
        goto LABEL_120;
      }

      v113 = v180;
      v88 = sub_216D3FB20(*v60, v179);
      if (!v113)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 4u:
      if (v183 != 4)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 68;
      goto LABEL_116;
    case 6u:
      sub_216DDA0A0(v66, v57);
      if (v183 != 56)
      {
        goto LABEL_118;
      }

      v126 = v160;
      sub_216DDA0F4(v57, v160);
      v127 = v161;
      v128 = sub_21700DF14();
      v129 = v180;
      v130 = sub_216D404FC(v128, v179);
      if (!v129)
      {
        v153 = v130;

        v154 = v156;
        sub_216DD9F00();
        sub_216788294(v126 + *(v127 + 20), v154 + *(v127 + 20));
        sub_216DD9F00();
        sub_216DD9F00();
        sub_216DD9F00();
        sub_216DDA050();
        *(v154 + *(v127 + 32)) = v153;
        sub_216DDA0F4(v154, v178);
        goto LABEL_127;
      }

      sub_216DDA050();
LABEL_109:

      return sub_216DDA050();
    case 7u:
      sub_216DDA0A0(v66, v54);
      if (v183 != 8)
      {
        goto LABEL_120;
      }

      v131 = v180;
      v88 = sub_216D40ED8(*v54, v179);
      if (!v131)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 8u:
      if (v183 != 9)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 73;
      goto LABEL_116;
    case 9u:
      if (v183 != 10)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 74;
      goto LABEL_116;
    case 0xAu:
      if (v183 != 11)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 75;
      goto LABEL_116;
    case 0xBu:
      sub_216DDA0A0(v66, v51);
      if (v183 != 12)
      {
        goto LABEL_120;
      }

      v132 = v180;
      v88 = sub_216D418B4(*v51, v179);
      if (!v132)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0xDu:
      if (v183 != 14)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 78;
      goto LABEL_116;
    case 0xEu:
      if (v183 != 15)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 79;
      goto LABEL_116;
    case 0xFu:
      sub_216DDA0A0(v66, v48);
      if (v183 != 16)
      {
        goto LABEL_120;
      }

      v106 = v180;
      v88 = sub_216D42290(*v48, v179);
      if (!v106)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x10u:
      sub_216DDA0A0(v66, v45);
      v101 = *v45;
      if (v183 != 17)
      {
        goto LABEL_120;
      }

      v102 = v180;
      v88 = sub_216D42C2C(v101, v179);
      if (!v102)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x11u:
      if (v183 != 18)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 82;
      goto LABEL_116;
    case 0x13u:
      v117 = v163;
      sub_216DDA0A0(v66, v163);
      v118 = *v117;
      if (v183 != 20)
      {
        goto LABEL_120;
      }

      v119 = v180;
      v88 = sub_216D43608(v118, v179);
      if (!v119)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x15u:
      v120 = v177;
      sub_216DDA0A0(v66, v177);
      if (v183 != 55)
      {
LABEL_118:
        sub_216DDA050();
        goto LABEL_121;
      }

      v121 = v159;
      sub_216DDA0F4(v120, v159);
      v122 = v162;
      sub_216DDA0A0(v121, v162);
      v123 = sub_21700DF14();
      v124 = v180;
      v125 = sub_216D49A7C(v123, v179);
      if (v124)
      {
        sub_216DDA050();
      }

      else
      {
        v152 = v125;
        sub_216DDA050();

        *(v122 + 32) = v152;
        sub_216DDA0A0(v122, v178);
        swift_storeEnumTagMultiPayload();
      }

      sub_216DDA050();
      return sub_216DDA050();
    case 0x18u:
      if (v183 != 22)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 86;
      goto LABEL_116;
    case 0x1Au:
      v133 = v167;
      sub_216DDA0A0(v66, v167);
      v134 = *v133;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
      if (v183 == 24)
      {
        v71 = v135;
        v73 = v158;
        sub_216DDA0F4(v133 + *(v135 + 48), v158);
        v136 = v180;
        v75 = sub_216D43FE4(v134, v179);
        if (v136)
        {
LABEL_96:
          sub_216DDA050();
        }

        else
        {
LABEL_4:
          v76 = v75;

          v77 = *(v71 + 48);
          v78 = v178;
          *v178 = v76;
          sub_216DDA0F4(v73, v78 + v77);
LABEL_127:
          swift_storeEnumTagMultiPayload();
        }

        return sub_216DDA050();
      }

      else
      {
LABEL_119:
        sub_216DDA050();
LABEL_120:

LABEL_121:
        sub_2169BB698();
        swift_allocError();
        *v150 = -127;
        swift_willThrow();
        return sub_2166997CC(v66, &qword_27CABEDF0, &unk_217031298);
      }

    case 0x1Bu:
      if (v183 != 25)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 89;
      goto LABEL_116;
    case 0x1Cu:
      v103 = v164;
      sub_216DDA0A0(v66, v164);
      v104 = *v103;
      if (v183 != 26)
      {
        goto LABEL_120;
      }

      v105 = v180;
      v88 = sub_216D449C0(v104, v179);
      if (!v105)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x1Eu:
      v140 = v165;
      sub_216DDA0A0(v66, v165);
      v141 = *v140;
      if (v183 != 28)
      {
        goto LABEL_120;
      }

      v142 = v180;
      v88 = sub_216D4539C(v141, v179);
      if (!v142)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x1Fu:
      if (v183 != 61)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 125;
      goto LABEL_116;
    case 0x20u:
      v98 = v166;
      sub_216DDA0A0(v66, v166);
      v99 = *v98;
      if (v183 != 30)
      {
        goto LABEL_120;
      }

      v100 = v180;
      v88 = sub_216D45D78(v99, v179);
      if (!v100)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x21u:
      v92 = v168;
      sub_216DDA0A0(v66, v168);
      v93 = *v92;
      if (v183 != 31)
      {
        goto LABEL_120;
      }

      v94 = v180;
      v88 = sub_216D46714(v93, v179);
      if (!v94)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x22u:
      v107 = v169;
      sub_216DDA0A0(v66, v169);
      v108 = *v107;
      if (v183 != 32)
      {
        goto LABEL_120;
      }

      v109 = v180;
      v88 = sub_216D470F0(v108, v179);
      if (!v109)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x23u:
      if (v183 != 33)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 97;
      goto LABEL_116;
    case 0x24u:
      if (v183 != 34)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 98;
      goto LABEL_116;
    case 0x25u:
      v143 = v170;
      sub_216DDA0A0(v66, v170);
      v148 = *v143;
      if (v183 != 35)
      {
        goto LABEL_120;
      }

      v149 = v180;
      sub_216D47ACC(v148, v179, &unk_27CAC9320, &unk_21705FAA8, v144, v145, v146, v147, v156, v157);
      if (v149)
      {
        goto LABEL_109;
      }

      goto LABEL_126;
    case 0x26u:
      if (v183 != 42)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 106;
      goto LABEL_116;
    case 0x27u:
      if (v183 != 43)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 107;
      goto LABEL_116;
    case 0x28u:
      if (v183 != 44)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 108;
      goto LABEL_116;
    case 0x29u:
      if (v183 != 45)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 109;
      goto LABEL_116;
    case 0x2Au:
      if (v183 != 46)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 110;
      goto LABEL_116;
    case 0x2Bu:
      if (v183 != 47)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 111;
      goto LABEL_116;
    case 0x2Cu:
      if (v183 != 38)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 102;
      goto LABEL_116;
    case 0x2Du:
      if (v183 != 41)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 105;
      goto LABEL_116;
    case 0x30u:
      v89 = v171;
      sub_216DDA0A0(v66, v171);
      v90 = *v89;
      if (v183 != 39)
      {
        goto LABEL_120;
      }

      v91 = v180;
      v88 = sub_216D480E8(v90, v179);
      if (!v91)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x32u:
      if (v183 != 49)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 113;
      goto LABEL_116;
    case 0x34u:
      v81 = v172;
      sub_216DDA0A0(v66, v172);
      v86 = *v81;
      if (v183 != 51)
      {
        goto LABEL_120;
      }

      v87 = v180;
      sub_216D48AC4(v86, v179, &unk_27CAC9320, &unk_21705FAA8, v82, v83, v84, v85, v156, v157);
      if (!v87)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x35u:
      if (v183 != 53)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 117;
      goto LABEL_116;
    case 0x37u:
      v95 = v173;
      sub_216DDA0A0(v66, v173);
      v96 = *v95;
      if (v183 != 54)
      {
        goto LABEL_120;
      }

      v97 = v180;
      v88 = sub_216D490E0(v96, v179);
      if (!v97)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x38u:
      v110 = v174;
      sub_216DDA0A0(v66, v174);
      v111 = *v110;
      if (v183 != 55)
      {
        goto LABEL_120;
      }

      v112 = v180;
      v88 = sub_216D49A7C(v111, v179);
      if (!v112)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x39u:
      v137 = v175;
      sub_216DDA0A0(v66, v175);
      v138 = *v137;
      if (v183 != 56)
      {
        goto LABEL_120;
      }

      v139 = v180;
      v88 = sub_216D404FC(v138, v179);
      if (!v139)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x3Au:
      if (v183 != 57)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 121;
      goto LABEL_116;
    case 0x3Bu:
      if (v183 != 58)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 122;
LABEL_116:
      *v79 = v80;
      swift_willThrow();
      return sub_216DDA050();
    case 0x3Du:
      v114 = v176;
      sub_216DDA0A0(v66, v176);
      v115 = *v114;
      if (v183 != 60)
      {
        goto LABEL_120;
      }

      v116 = v180;
      v88 = sub_216D4A458(v115, v179);
      if (v116)
      {
        goto LABEL_109;
      }

LABEL_126:
      v155 = v88;

      *v178 = v155;
      goto LABEL_127;
    default:
      goto LABEL_121;
  }
}

uint64_t sub_216D1BA78@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t *a3@<X8>)
{
  v179 = a1;
  v183 = a2;
  v178 = a3;
  v3 = type metadata accessor for SearchResultsListSection(0);
  MEMORY[0x28223BE20](v3 - 8);
  v162 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v159 = &v156 - v6;
  v161 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(0);
  MEMORY[0x28223BE20](v161);
  v156 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v160 = &v156 - v9;
  v10 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v10 - 8);
  v158 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v157 = &v156 - v13;
  v181 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v181);
  v177 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v176 = (&v156 - v16);
  MEMORY[0x28223BE20](v17);
  v175 = (&v156 - v18);
  MEMORY[0x28223BE20](v19);
  v174 = (&v156 - v20);
  MEMORY[0x28223BE20](v21);
  v173 = (&v156 - v22);
  MEMORY[0x28223BE20](v23);
  v172 = (&v156 - v24);
  MEMORY[0x28223BE20](v25);
  v171 = (&v156 - v26);
  MEMORY[0x28223BE20](v27);
  v170 = (&v156 - v28);
  MEMORY[0x28223BE20](v29);
  v169 = (&v156 - v30);
  MEMORY[0x28223BE20](v31);
  v168 = (&v156 - v32);
  MEMORY[0x28223BE20](v33);
  v166 = (&v156 - v34);
  MEMORY[0x28223BE20](v35);
  v165 = (&v156 - v36);
  MEMORY[0x28223BE20](v37);
  v164 = (&v156 - v38);
  MEMORY[0x28223BE20](v39);
  v167 = (&v156 - v40);
  MEMORY[0x28223BE20](v41);
  v163 = (&v156 - v42);
  MEMORY[0x28223BE20](v43);
  v45 = (&v156 - v44);
  MEMORY[0x28223BE20](v46);
  v48 = (&v156 - v47);
  MEMORY[0x28223BE20](v49);
  v51 = (&v156 - v50);
  MEMORY[0x28223BE20](v52);
  v54 = (&v156 - v53);
  MEMORY[0x28223BE20](v55);
  v57 = &v156 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = (&v156 - v59);
  MEMORY[0x28223BE20](v61);
  v63 = (&v156 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDF0, &unk_217031298);
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v156 - v65;
  v68 = *(v67 + 56);
  sub_216DDA0A0(v182, &v156 - v65);
  v66[v68] = v183;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_216DDA0A0(v66, v63);
      v69 = *v63;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);
      if (v183 != 1)
      {
        goto LABEL_119;
      }

      v71 = v70;
      v72 = v63 + *(v70 + 48);
      v73 = v157;
      sub_216DDA0F4(v72, v157);
      v74 = v180;
      v75 = sub_216D4AE34(v69, v179);
      if (v74)
      {
        goto LABEL_96;
      }

      goto LABEL_4;
    case 3u:
      sub_216DDA0A0(v66, v60);
      if (v183 != 3)
      {
        goto LABEL_120;
      }

      v113 = v180;
      v88 = sub_216D4B810(*v60, v179);
      if (!v113)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 4u:
      if (v183 != 4)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 68;
      goto LABEL_116;
    case 6u:
      sub_216DDA0A0(v66, v57);
      if (v183 != 56)
      {
        goto LABEL_118;
      }

      v126 = v160;
      sub_216DDA0F4(v57, v160);
      v127 = v161;
      v128 = sub_21700DF14();
      v129 = v180;
      v130 = sub_216D4C1EC(v128, v179);
      if (!v129)
      {
        v153 = v130;

        v154 = v156;
        sub_216DD9F00();
        sub_216788294(v126 + *(v127 + 20), v154 + *(v127 + 20));
        sub_216DD9F00();
        sub_216DD9F00();
        sub_216DD9F00();
        sub_216DDA050();
        *(v154 + *(v127 + 32)) = v153;
        sub_216DDA0F4(v154, v178);
        goto LABEL_127;
      }

      sub_216DDA050();
LABEL_109:

      return sub_216DDA050();
    case 7u:
      sub_216DDA0A0(v66, v54);
      if (v183 != 8)
      {
        goto LABEL_120;
      }

      v131 = v180;
      v88 = sub_216D4CBC8(*v54, v179);
      if (!v131)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 8u:
      if (v183 != 9)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 73;
      goto LABEL_116;
    case 9u:
      if (v183 != 10)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 74;
      goto LABEL_116;
    case 0xAu:
      if (v183 != 11)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 75;
      goto LABEL_116;
    case 0xBu:
      sub_216DDA0A0(v66, v51);
      if (v183 != 12)
      {
        goto LABEL_120;
      }

      v132 = v180;
      v88 = sub_216D4D5A4(*v51, v179);
      if (!v132)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0xDu:
      if (v183 != 14)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 78;
      goto LABEL_116;
    case 0xEu:
      if (v183 != 15)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 79;
      goto LABEL_116;
    case 0xFu:
      sub_216DDA0A0(v66, v48);
      if (v183 != 16)
      {
        goto LABEL_120;
      }

      v106 = v180;
      v88 = sub_216D4DF80(*v48, v179);
      if (!v106)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x10u:
      sub_216DDA0A0(v66, v45);
      v101 = *v45;
      if (v183 != 17)
      {
        goto LABEL_120;
      }

      v102 = v180;
      v88 = sub_216D4E91C(v101, v179);
      if (!v102)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x11u:
      if (v183 != 18)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 82;
      goto LABEL_116;
    case 0x13u:
      v117 = v163;
      sub_216DDA0A0(v66, v163);
      v118 = *v117;
      if (v183 != 20)
      {
        goto LABEL_120;
      }

      v119 = v180;
      v88 = sub_216D4F2F8(v118, v179);
      if (!v119)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x15u:
      v120 = v177;
      sub_216DDA0A0(v66, v177);
      if (v183 != 55)
      {
LABEL_118:
        sub_216DDA050();
        goto LABEL_121;
      }

      v121 = v159;
      sub_216DDA0F4(v120, v159);
      v122 = v162;
      sub_216DDA0A0(v121, v162);
      v123 = sub_21700DF14();
      v124 = v180;
      v125 = sub_216D54B34(v123, v179);
      if (v124)
      {
        sub_216DDA050();
      }

      else
      {
        v152 = v125;
        sub_216DDA050();

        *(v122 + 32) = v152;
        sub_216DDA0A0(v122, v178);
        swift_storeEnumTagMultiPayload();
      }

      sub_216DDA050();
      return sub_216DDA050();
    case 0x18u:
      if (v183 != 22)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 86;
      goto LABEL_116;
    case 0x1Au:
      v133 = v167;
      sub_216DDA0A0(v66, v167);
      v134 = *v133;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
      if (v183 == 24)
      {
        v71 = v135;
        v73 = v158;
        sub_216DDA0F4(v133 + *(v135 + 48), v158);
        v136 = v180;
        v75 = sub_216D4FCD4(v134, v179);
        if (v136)
        {
LABEL_96:
          sub_216DDA050();
        }

        else
        {
LABEL_4:
          v76 = v75;

          v77 = *(v71 + 48);
          v78 = v178;
          *v178 = v76;
          sub_216DDA0F4(v73, v78 + v77);
LABEL_127:
          swift_storeEnumTagMultiPayload();
        }

        return sub_216DDA050();
      }

      else
      {
LABEL_119:
        sub_216DDA050();
LABEL_120:

LABEL_121:
        sub_2169BB698();
        swift_allocError();
        *v150 = -127;
        swift_willThrow();
        return sub_2166997CC(v66, &qword_27CABEDF0, &unk_217031298);
      }

    case 0x1Bu:
      if (v183 != 25)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 89;
      goto LABEL_116;
    case 0x1Cu:
      v103 = v164;
      sub_216DDA0A0(v66, v164);
      v104 = *v103;
      if (v183 != 26)
      {
        goto LABEL_120;
      }

      v105 = v180;
      v88 = sub_216D506B0(v104, v179);
      if (!v105)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x1Eu:
      v140 = v165;
      sub_216DDA0A0(v66, v165);
      v141 = *v140;
      if (v183 != 28)
      {
        goto LABEL_120;
      }

      v142 = v180;
      v88 = sub_216D5108C(v141, v179);
      if (!v142)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x1Fu:
      if (v183 != 61)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 125;
      goto LABEL_116;
    case 0x20u:
      v98 = v166;
      sub_216DDA0A0(v66, v166);
      v99 = *v98;
      if (v183 != 30)
      {
        goto LABEL_120;
      }

      v100 = v180;
      v88 = sub_216D51A68(v99, v179);
      if (!v100)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x21u:
      v92 = v168;
      sub_216DDA0A0(v66, v168);
      v93 = *v92;
      if (v183 != 31)
      {
        goto LABEL_120;
      }

      v94 = v180;
      v88 = sub_216D52404(v93, v179);
      if (!v94)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x22u:
      v107 = v169;
      sub_216DDA0A0(v66, v169);
      v108 = *v107;
      if (v183 != 32)
      {
        goto LABEL_120;
      }

      v109 = v180;
      v88 = sub_216D52DE0(v108, v179);
      if (!v109)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x23u:
      if (v183 != 33)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 97;
      goto LABEL_116;
    case 0x24u:
      if (v183 != 34)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 98;
      goto LABEL_116;
    case 0x25u:
      v143 = v170;
      sub_216DDA0A0(v66, v170);
      v148 = *v143;
      if (v183 != 35)
      {
        goto LABEL_120;
      }

      v149 = v180;
      sub_216D47ACC(v148, v179, &unk_27CAC9900, &unk_2170604D0, v144, v145, v146, v147, v156, v157);
      if (v149)
      {
        goto LABEL_109;
      }

      goto LABEL_126;
    case 0x26u:
      if (v183 != 42)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 106;
      goto LABEL_116;
    case 0x27u:
      if (v183 != 43)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 107;
      goto LABEL_116;
    case 0x28u:
      if (v183 != 44)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 108;
      goto LABEL_116;
    case 0x29u:
      if (v183 != 45)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 109;
      goto LABEL_116;
    case 0x2Au:
      if (v183 != 46)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 110;
      goto LABEL_116;
    case 0x2Bu:
      if (v183 != 47)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 111;
      goto LABEL_116;
    case 0x2Cu:
      if (v183 != 38)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 102;
      goto LABEL_116;
    case 0x2Du:
      if (v183 != 41)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 105;
      goto LABEL_116;
    case 0x30u:
      v89 = v171;
      sub_216DDA0A0(v66, v171);
      v90 = *v89;
      if (v183 != 39)
      {
        goto LABEL_120;
      }

      v91 = v180;
      v88 = sub_216D537BC(v90, v179);
      if (!v91)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x32u:
      if (v183 != 49)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 113;
      goto LABEL_116;
    case 0x34u:
      v81 = v172;
      sub_216DDA0A0(v66, v172);
      v86 = *v81;
      if (v183 != 51)
      {
        goto LABEL_120;
      }

      v87 = v180;
      sub_216D48AC4(v86, v179, &unk_27CAC9900, &unk_2170604D0, v82, v83, v84, v85, v156, v157);
      if (!v87)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x35u:
      if (v183 != 53)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 117;
      goto LABEL_116;
    case 0x37u:
      v95 = v173;
      sub_216DDA0A0(v66, v173);
      v96 = *v95;
      if (v183 != 54)
      {
        goto LABEL_120;
      }

      v97 = v180;
      v88 = sub_216D54198(v96, v179);
      if (!v97)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x38u:
      v110 = v174;
      sub_216DDA0A0(v66, v174);
      v111 = *v110;
      if (v183 != 55)
      {
        goto LABEL_120;
      }

      v112 = v180;
      v88 = sub_216D54B34(v111, v179);
      if (!v112)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x39u:
      v137 = v175;
      sub_216DDA0A0(v66, v175);
      v138 = *v137;
      if (v183 != 56)
      {
        goto LABEL_120;
      }

      v139 = v180;
      v88 = sub_216D4C1EC(v138, v179);
      if (!v139)
      {
        goto LABEL_126;
      }

      goto LABEL_109;
    case 0x3Au:
      if (v183 != 57)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 121;
      goto LABEL_116;
    case 0x3Bu:
      if (v183 != 58)
      {
        goto LABEL_121;
      }

      sub_2169BB698();
      swift_allocError();
      v80 = 122;
LABEL_116:
      *v79 = v80;
      swift_willThrow();
      return sub_216DDA050();
    case 0x3Du:
      v114 = v176;
      sub_216DDA0A0(v66, v176);
      v115 = *v114;
      if (v183 != 60)
      {
        goto LABEL_120;
      }

      v116 = v180;
      v88 = sub_216D55510(v115, v179);
      if (v116)
      {
        goto LABEL_109;
      }

LABEL_126:
      v155 = v88;

      *v178 = v155;
      goto LABEL_127;
    default:
      goto LABEL_121;
  }
}

uint64_t sub_216D1D2E4(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB68, &qword_21705F1C0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for AlbumTrackLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216938114(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938114(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);

            sub_2166997CC(v37, &qword_27CABEB68, &qword_21705F1C0);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216938114(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938114(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB80, &unk_217031010);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D1DCC0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB88, &qword_217031020);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for AppsWithAccessComponentModel(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2169380D4(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_2169380D4(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);

            sub_2166997CC(v37, &qword_27CABEB88, &qword_217031020);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2169380D4(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_2169380D4(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA0, &qword_217031038);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D1E69C(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDB0, &qword_217031250);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for TrackLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216938094(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938094(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);

            sub_2166997CC(v37, &qword_27CABEDB0, &qword_217031250);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216938094(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938094(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC8, &qword_217031268);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D1F078(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA8, &qword_217031040);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for BubbleLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216938054(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938054(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);

            sub_2166997CC(v37, &qword_27CABEBA8, &qword_217031040);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216938054(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938054(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC0, &unk_21705F1D0);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D1FA54(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC8, &qword_217031060);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for FlowcaseLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216938014(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216938014(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);

            sub_2166997CC(v37, &qword_27CABEBC8, &qword_217031060);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216938014(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216938014(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE0, &qword_217031078);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D20430(uint64_t a1, uint64_t a2)
{
  *&v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE8, &qword_217031080);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v71[-v4];
  v5 = type metadata accessor for HorizontalLockup(0);
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v84 = &v71[-v8];
  MEMORY[0x28223BE20](v9);
  v74 = &v71[-v10];
  MEMORY[0x28223BE20](v11);
  v79 = &v71[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v71[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v71[-v17];
  v76 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v37 = *(v72 + 16);
    if (v37)
    {
      v38 = v72 + 32;
      v39 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v72 = v21;
      v40 = v73;
      v41 = v76;
      while (1)
      {
        sub_216DD9F00();
        if (v83)
        {
          v78 = v39;
          v42 = v82[0];
          v80 = v82[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v43 = sub_216E68120(v81), (v44 & 1) != 0))
          {
            v45 = v43;

            v46 = *(v77 + 72);
            v47 = v74;
            sub_216DDA0A0(v20[7] + v46 * v45, v74);
            sub_216788110(v81);
            sub_216DDA0A0(v47, v75);
            v39 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937FD4(0, *(v39 + 16) + 1, 1, v39);
              v39 = v67;
            }

            v49 = *(v39 + 16);
            v48 = *(v39 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_216937FD4(v48 > 1, v49 + 1, 1, v39);
              v39 = v68;
            }

            sub_216DDA050();
            *(v39 + 16) = v49 + 1;
            sub_216DDA0F4(v75, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v49 * v46);
          }

          else
          {
            sub_216788110(v81);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v53 = sub_217007CA4();
            __swift_project_value_buffer(v53, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v54 = sub_217007C84();
            v55 = sub_21700ED84();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v81[0] = v57;
              *v56 = v72;
              v58 = sub_2166A85FC(v42, *(&v42 + 1), v81);

              *(v56 + 4) = v58;
              *(v56 + 12) = 2080;
              v59 = sub_21700E394();
              v61 = v60;
              swift_bridgeObjectRelease_n();
              v62 = sub_2166A85FC(v59, v61, v81);

              *(v56 + 14) = v62;
              _os_log_impl(&dword_216679000, v54, v55, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v56, 0x16u);
              swift_arrayDestroy();
              v63 = v57;
              v41 = v76;
              MEMORY[0x21CEA1440](v63, -1, -1);
              v64 = v56;
              v40 = v73;
              MEMORY[0x21CEA1440](v64, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v41 = v76;
            }

            v39 = v78;
          }
        }

        else
        {
          sub_2166A0F18(v82, v81);
          sub_216681AA4(v81, &v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);

            sub_2166997CC(v40, &qword_27CABEBE8, &qword_217031080);
            sub_2169BB698();
            swift_allocError();
            *v69 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            return v39;
          }

          __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
          v50 = v79;
          sub_216DDA0F4(v40, v79);
          sub_216DDA0A0(v50, v84);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937FD4(0, *(v39 + 16) + 1, 1, v39);
            v39 = v65;
          }

          v52 = *(v39 + 16);
          v51 = *(v39 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_216937FD4(v51 > 1, v52 + 1, 1, v39);
            v39 = v66;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          *(v39 + 16) = v52 + 1;
          sub_216DDA0F4(v84, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v52);
        }

        v38 += 48;
        if (!--v37)
        {
          goto LABEL_40;
        }
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_40:

    return v39;
  }

  v23 = a1 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v24 = *(v77 + 72);
  v78 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(v18, v82);
    v25 = v15;
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v20;
    v26 = sub_216E68120(v82);
    if (__OFADD__(v20[2], (v27 & 1) == 0))
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC00, &unk_21705F1E0);
    if (sub_21700F554())
    {
      v30 = sub_216E68120(v82);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_45;
      }

      v28 = v30;
    }

    v20 = v81[0];
    if (v29)
    {
      v32 = *(v81[0] + 56) + v28 * v24;
      v15 = v25;
      sub_2166CE10C(v25, v32);
      sub_216788110(v82);
      v18 = v78;
      sub_216DDA050();
    }

    else
    {
      *(v81[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      sub_216788294(v82, v20[6] + 40 * v28);
      v33 = v20[7] + v28 * v24;
      v15 = v25;
      sub_216DDA0F4(v25, v33);
      sub_216788110(v82);
      v18 = v78;
      sub_216DDA050();
      v34 = v20[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_44;
      }

      v20[2] = v36;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D20DCC(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC08, &qword_2170310A0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for HorizontalPosterLockup(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937F94(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937F94(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);

            sub_2166997CC(v37, &qword_27CABEC08, &qword_2170310A0);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937F94(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937F94(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC20, &unk_2170310B8);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216D217A8(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v68[-v4];
  v5 = type metadata accessor for LinkComponentModel(0);
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  MEMORY[0x28223BE20](v9);
  v71 = &v68[-v10];
  MEMORY[0x28223BE20](v11);
  v77 = &v68[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v68[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v68[-v17];
  v73 = v19;
  if (!a1)
  {
    v20 = sub_21700E384();
    goto LABEL_15;
  }

  v20 = sub_21700E384();
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_15:
    v34 = *(v69 + 16);
    if (v34)
    {
      v35 = v69 + 32;
      v36 = MEMORY[0x277D84F90];
      *&v21 = 136315394;
      v75 = v21;
      v37 = v70;
      v38 = v73;
      while (1)
      {
        sub_216DD9F00();
        if (v81)
        {
          v76 = v36;
          v39 = v80[0];
          v78 = v80[0];
          sub_21700DF14();
          sub_21700F364();
          if (v20[2] && (v40 = sub_216E68120(v79), (v41 & 1) != 0))
          {
            v42 = v40;

            v43 = *(v74 + 72);
            v44 = v71;
            sub_216DDA0A0(v20[7] + v43 * v42, v71);
            sub_216788110(v79);
            sub_216DDA0A0(v44, v72);
            v36 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_216937F54(0, *(v36 + 16) + 1, 1, v36);
              v36 = v64;
            }

            v46 = *(v36 + 16);
            v45 = *(v36 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_216937F54(v45 > 1, v46 + 1, 1, v36);
              v36 = v65;
            }

            sub_216DDA050();
            *(v36 + 16) = v46 + 1;
            sub_216DDA0F4(v72, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v46 * v43);
          }

          else
          {
            sub_216788110(v79);
            if (qword_27CAB5B70 != -1)
            {
              swift_once();
            }

            v50 = sub_217007CA4();
            __swift_project_value_buffer(v50, qword_27CABEB28);
            swift_bridgeObjectRetain_n();
            sub_21700DF14();
            v51 = sub_217007C84();
            v52 = sub_21700ED84();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v79[0] = v54;
              *v53 = v75;
              v55 = sub_2166A85FC(v39, *(&v39 + 1), v79);

              *(v53 + 4) = v55;
              *(v53 + 12) = 2080;
              v56 = sub_21700E394();
              v58 = v57;
              swift_bridgeObjectRelease_n();
              v59 = sub_2166A85FC(v56, v58, v79);

              *(v53 + 14) = v59;
              _os_log_impl(&dword_216679000, v51, v52, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v53, 0x16u);
              swift_arrayDestroy();
              v60 = v54;
              v38 = v73;
              MEMORY[0x21CEA1440](v60, -1, -1);
              v61 = v53;
              v37 = v70;
              MEMORY[0x21CEA1440](v61, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v38 = v73;
            }

            v36 = v76;
          }
        }

        else
        {
          sub_2166A0F18(v80, v79);
          sub_216681AA4(v79, &v78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);

            sub_2166997CC(v37, &qword_27CAB7A30, &qword_217017F30);
            sub_2169BB698();
            swift_allocError();
            *v66 = -127;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            return v36;
          }

          __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
          v47 = v77;
          sub_216DDA0F4(v37, v77);
          sub_216DDA0A0(v47, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216937F54(0, *(v36 + 16) + 1, 1, v36);
            v36 = v62;
          }

          v49 = *(v36 + 16);
          v48 = *(v36 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_216937F54(v48 > 1, v49 + 1, 1, v36);
            v36 = v63;
          }

          sub_216DDA050();
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          *(v36 + 16) = v49 + 1;
          sub_216DDA0F4(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v49);
        }

        v35 += 48;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_40:

    return v36;
  }

  v76 = *(v5 + 20);
  v23 = a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v24 = *(v74 + 72);
  *&v75 = v18;
  while (1)
  {
    sub_216DDA0A0(v23, v18);
    sub_216788294(&v18[v76], v80);
    sub_216DDA0A0(v18, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v20;
    v25 = sub_216E68120(v80);
    if (__OFADD__(v20[2], (v26 & 1) == 0))
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC38, &qword_2170310D8);
    if (sub_21700F554())
    {
      v29 = sub_216E68120(v80);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_45;
      }

      v27 = v29;
    }

    v20 = v79[0];
    if (v28)
    {
      sub_2166CE10C(v15, *(v79[0] + 56) + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
    }

    else
    {
      *(v79[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      sub_216788294(v80, v20[6] + 40 * v27);
      sub_216DDA0F4(v15, v20[7] + v27 * v24);
      sub_216788110(v80);
      v18 = v75;
      sub_216DDA050();
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v20[2] = v33;
    }

    v23 += v24;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_21700F824();
  __break(1u);
  return result;
}