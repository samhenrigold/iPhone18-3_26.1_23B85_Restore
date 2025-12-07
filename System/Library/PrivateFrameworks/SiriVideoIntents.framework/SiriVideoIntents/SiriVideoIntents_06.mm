uint64_t sub_269718A64(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v2[11] = swift_task_alloc();
  v3 = sub_269851EF4();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_269852474();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = sub_2698538A4();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v6 = sub_269853874();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v7 = sub_2698548D4();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v8 = sub_269853F44();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v9 = sub_2698538B4();
  v2[39] = v9;
  v2[40] = *(v9 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269718E4C);
}

void sub_269719D6C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v6 = [v2 mediaSearch];
  if (!v6)
  {
    sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_83_0();
    v6 = sub_269854ED4();
  }

  v7 = a2(a1);
  v8 = OUTLINED_FUNCTION_54();
  [v4 setValue:v7 forKey:v8];
}

void sub_269719E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);

  OUTLINED_FUNCTION_83_0();
  v4 = sub_269854ED4();
  v5 = OUTLINED_FUNCTION_54();
  [v3 setValue:v4 forKey:{v5, 0, 0, 0, 0, 0, 0}];
}

BOOL sub_269719F24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v5 = *(v0 + 304);
  if (v5 != 1)
  {
    v6 = sub_269853854();
    OUTLINED_FUNCTION_4_3();
    v7 = OUTLINED_FUNCTION_22_3();
    v8(v7);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
    v9 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyPlayWrapperFlow_input;
    swift_beginAccess();
    sub_269702838(v4, v9 + v0);
    swift_endAccess();
  }

  return v5 != 1;
}

uint64_t sub_26971A030()
{
  OUTLINED_FUNCTION_2_7();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DB8, &unk_269860580);
  v1[16] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[17] = v4;
  v1[18] = OUTLINED_FUNCTION_4_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DC0, &unk_26985CF00);
  v1[19] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_37_0();
  v1[22] = swift_task_alloc();
  v7 = sub_2698548D4();
  v1[23] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_4_7();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v9);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269853854();
  v1[27] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[28] = v11;
  v1[29] = OUTLINED_FUNCTION_4_7();
  v12 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_26971A888()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 282) = v3;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26971AF2C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26971B010()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  OUTLINED_FUNCTION_12_15();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26971B0B8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26971B19C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  sub_269717660(v0[32], v0[33]);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_12_15();

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26971B258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26971B27C);
}

void sub_26971B27C()
{
  OUTLINED_FUNCTION_8_5();
  sub_269854404();

  *(v0 + 40) = sub_2698543E4();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_26971B348;

  JUMPOUT(0x269853784);
}

uint64_t sub_26971B348()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_7_7();

    return v8();
  }
}

uint64_t sub_26971B468(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ThirdPartyPlayWrapperFlow(0);
  sub_26971C9F4(&qword_280323DB0, type metadata accessor for ThirdPartyPlayWrapperFlow);
  return sub_269852B54();
}

uint64_t sub_26971B4F8(uint64_t a1)
{
  v3 = *(v1 + 296);
  v4 = *(v1 + 304);
  *(v1 + 296) = xmmword_26985C790;
  *(v1 + 312) = 0;
  sub_269717660(v3, v4);
  type metadata accessor for ThirdPartyAppResolutionFlow(0);
  sub_26970F30C();
  sub_26970F9C8(a1);
  sub_26971C9F4(&qword_280323CB8, type metadata accessor for ThirdPartyAppResolutionFlow);
  sub_269852B44();

  OUTLINED_FUNCTION_12_11();
  sub_269853134();
}

uint64_t sub_26971B608(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v5 = (a2 + 296);
    v6 = *(a2 + 296);
    v7 = *(a2 + 304);
    v8 = xmmword_26985C7A0;
LABEL_5:
    *v5 = v8;
    *(a2 + 312) = 0;
    v9 = v7;

    return sub_269717660(v6, v9);
  }

  if (v4 == 1)
  {
    v5 = (a2 + 296);
    v6 = *(a2 + 296);
    v7 = *(a2 + 304);
    v8 = xmmword_26985CBA0;
    goto LABEL_5;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 296);
  v13 = *(a2 + 304);
  *(a2 + 296) = *a1;
  *(a2 + 304) = v4;
  *(a2 + 312) = v11 & 0xFF01;

  v6 = v12;
  v9 = v13;

  return sub_269717660(v6, v9);
}

uint64_t sub_26971B6C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v12 = __swift_project_value_buffer(v8, qword_281571B38);
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2698548B4();
  v14 = sub_269854F44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_27_2();
    v21 = v4;
    v16 = v15;
    v17 = OUTLINED_FUNCTION_9_3();
    v22 = a1;
    v23 = v17;
    v18 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_26974F520(a2, a3, &v23);
    _os_log_impl(&dword_269684000, v13, v14, "Executing AppIntents flow with bundleId: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_10();
    v4 = v21;
    OUTLINED_FUNCTION_10();
  }

  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_26979B2A8(a2, a3);
  OUTLINED_FUNCTION_65();
  sub_269852A14();
  sub_269853154();
}

uint64_t sub_26971B8E4()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 128) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 16) = v6;
  v7 = sub_2698538B4();
  *(v1 + 56) = v7;
  OUTLINED_FUNCTION_5_12(v7);
  *(v1 + 64) = v8;
  *(v1 + 72) = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698548D4();
  *(v1 + 80) = v9;
  OUTLINED_FUNCTION_5_12(v9);
  *(v1 + 88) = v10;
  *(v1 + 96) = OUTLINED_FUNCTION_4_7();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_26971B9E0(uint64_t a1)
{
  v16 = v1;
  if (qword_280322700 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  OUTLINED_FUNCTION_29_2(a1, qword_281571B38);
  v2 = OUTLINED_FUNCTION_12_11();
  v3(v2);

  v4 = sub_2698548B4();
  v5 = sub_269854F44();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[4];
    v6 = v1[5];
    v8 = OUTLINED_FUNCTION_27_2();
    v9 = OUTLINED_FUNCTION_9_3();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_26974F520(v7, v6, &v15);
    _os_log_impl(&dword_269684000, v4, v5, "Executing RCHFlow with bundleId: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v10 = OUTLINED_FUNCTION_22_3();
  v11(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DA8, &qword_26985CED8);
  v1[13] = swift_allocObject();
  sub_269853844();
  v12 = swift_task_alloc();
  v1[14] = v12;
  *v12 = v1;
  v12[1] = sub_26971BBF8;
  v13 = v1[9];

  return sub_269718A64(v13, 0);
}

uint64_t sub_26971BBF8()
{
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_13();
  *v5 = v4;
  *(v7 + 120) = v6;

  if (v0)
  {
  }

  v8 = OUTLINED_FUNCTION_22_3();
  v9(v8);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_26971BD84()
{
  if (*(v0 + 128))
  {
    sub_2697A2040();
  }

  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 56), *(*(v0 + 48) + 80));
  v2 = v1;
  OUTLINED_FUNCTION_47_1();
  sub_26979AFB8();

  sub_269853154();

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_26971BE74()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_38_3();
  return OUTLINED_FUNCTION_70(v0, v1, v2, 25, v3, v4, v5, v6, 157, 0);
}

uint64_t sub_26971BEDC()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v4 = sub_2698538F4();
  v1[16] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[17] = v5;
  v1[18] = *(v6 + 64);
  v1[19] = OUTLINED_FUNCTION_37_0();
  v1[20] = swift_task_alloc();
  v7 = sub_2698532A4();
  v1[21] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[22] = v8;
  v1[23] = OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26971C00C()
{
  v1 = v0[14];
  __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
  sub_269852C74();

  OUTLINED_FUNCTION_5_20();
  sub_269852C64();
  sub_269852BC4();

  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[24] = v2;
  *v2 = v3;
  v2[1] = sub_26971C144;
  v4 = v0[23];

  return sub_2696B98F4(v4, (v1 + 17));
}

uint64_t sub_26971C144()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26971C248()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v14 = *(v0 + 176);
  v15 = *(v0 + 168);
  v13 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v6 + 136), *(v6 + 160));
  sub_269852CA4();
  v7 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_269853114();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  sub_2696A73F8(v6 + 256, v0 + 56);
  (*(v3 + 16))(v13, v2, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v13, v4);
  v10 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v10);
  *(v0 + 96) = sub_269852764();
  sub_269853144();
  (*(v3 + 8))(v2, v4);
  (*(v14 + 8))(v1, v15);

  OUTLINED_FUNCTION_7_7();

  return v11();
}

uint64_t sub_26971C4C0()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_38_3();
  return OUTLINED_FUNCTION_70(v0, v1, v2, 46, v3, v4, v5, v6, 187, 0);
}

uint64_t sub_26971C528(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26971C548);
}

uint64_t sub_26971C548()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_2698538F4();
  v4 = MEMORY[0x277D5C1D8];
  v1[3] = v3;
  v1[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  OUTLINED_FUNCTION_7_7();

  return v6();
}

void *sub_26971C5F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_2696D1E70((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  sub_269717660(v0[37], v0[38]);
  sub_26969B0C0(OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyPlayWrapperFlow_input + v0, &qword_280323AF8, &unk_26985C1D0);
  return v0;
}

uint64_t sub_26971C674()
{
  sub_26971C5F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ThirdPartyPlayWrapperFlow(uint64_t a1)
{
  result = qword_280323D98;
  if (!qword_280323D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26971C720(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents25ThirdPartyPlayWrapperFlowC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26971C844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_26971A030();
}

uint64_t sub_26971C8E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ThirdPartyPlayWrapperFlow(0);

  return sub_269852B84();
}

uint64_t sub_26971C91C()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v4 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2696DA938;

  return sub_26971C528(v3, v0 + v6);
}

uint64_t sub_26971C9F4(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26971CA38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26971CA7C()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2696DAF80;

  return sub_26971B258(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_21_7()
{
}

void OUTLINED_FUNCTION_24_7()
{
  v2 = *(v0 + 304);

  sub_269719D6C(v2, sub_2697A4CA8);
}

uint64_t OUTLINED_FUNCTION_26_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_31_4(unint64_t *a1)
{

  return sub_26971CA38(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_2(unint64_t *a1)
{

  return sub_26971CA38(a1, v1, v2);
}

void OUTLINED_FUNCTION_33_2()
{
}

BOOL OUTLINED_FUNCTION_39_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_44_2()
{
  v1 = *(v0 + 120);
  *(v0 + 256) = *(v1 + 296);
  *(v0 + 264) = *(v1 + 304);
  *(v0 + 280) = *(v1 + 312);
}

void OUTLINED_FUNCTION_49_2()
{
}

void OUTLINED_FUNCTION_50_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_269854A64();
}

uint64_t OUTLINED_FUNCTION_57_0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));

  return sub_269852C74();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return sub_269853064();
}

void OUTLINED_FUNCTION_60_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_type_t a16, os_log_t log)
{

  _os_log_impl(a1, log, a16, a4, v17, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_69_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269851A84();
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_269855354();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_26971B6C0(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1)
{

  return sub_269854544();
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1)
{

  return sub_269852BC4();
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269852C64();
}

id OUTLINED_FUNCTION_90_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_91_0()
{
}

void OUTLINED_FUNCTION_92(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_93_0()
{
}

uint64_t OUTLINED_FUNCTION_94_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_95_0(uint64_t a1)
{

  return sub_269853524();
}

BOOL OUTLINED_FUNCTION_96_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return sub_2696C1F3C(v1, v0);
}

void *sub_26971D2CC()
{
  sub_269852C84();
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  sub_2698538C4();
  v35 = &type metadata for LSApplicationRecordProvider;
  v36 = &xmmword_287A41430;
  v38 = &type metadata for AppIntentsMetadataProvider;
  v39 = &off_287A413C0;
  v37 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  sub_269852BB4();
  v2 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v2);
  v3 = sub_269853254();
  sub_269853524();
  v31[3] = v0;
  v31[4] = &off_287A3DBA0;
  v30[4] = &xmmword_287A41430;
  v31[0] = v1;
  v30[3] = &type metadata for LSApplicationRecordProvider;
  v29[3] = &type metadata for FeatureFlagServiceImpl;
  v29[4] = &off_287A41BD8;
  v28[3] = &type metadata for RunningBoardForegroundAppProvider;
  v28[4] = &off_287A41CC0;
  v27[3] = &type metadata for ThirdPartyIntentSupportProvider;
  v27[4] = &off_287A47040;
  v27[0] = swift_allocObject();
  sub_2696B6ED8(v34, v27[0] + 16);
  v25 = v2;
  v26 = MEMORY[0x277D5BD58];
  *&v24 = v3;
  v4 = type metadata accessor for NoResultsFlow(0);
  v5 = OUTLINED_FUNCTION_68_0(v4);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v31, v0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = (v8 - v7);
  (*(v10 + 16))(v8 - v7);
  __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for LSApplicationRecordProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v29, &type metadata for FeatureFlagServiceImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v28, &type metadata for RunningBoardForegroundAppProvider);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v27, &type metadata for ThirdPartyIntentSupportProvider);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = (v13 - v12);
  (*(v15 + 16))(v13 - v12);
  v16 = *v9;
  v5[10] = v0;
  v5[11] = &off_287A3DBA0;
  v5[7] = v16;
  v5[21] = &type metadata for LSApplicationRecordProvider;
  v5[22] = &xmmword_287A41430;
  v5[26] = &type metadata for FeatureFlagServiceImpl;
  v5[27] = &off_287A41BD8;
  v5[31] = &type metadata for RunningBoardForegroundAppProvider;
  v5[32] = &off_287A41CC0;
  v5[36] = &type metadata for ThirdPartyIntentSupportProvider;
  v5[37] = &off_287A47040;
  v17 = swift_allocObject();
  v5[33] = v17;
  memcpy((v17 + 16), v14, 0x50uLL);
  sub_269853854();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_26968E5D4(v41, (v5 + 2));
  sub_2696A73F8(v40, (v5 + 12));
  type metadata accessor for LocUtil();
  OUTLINED_FUNCTION_25_3();
  v22 = swift_allocObject();
  sub_26968E5D4(v40, v22 + 16);
  v5[17] = v22;
  sub_26968E5D4(&v33, (v5 + 48));
  sub_26968E5D4(&v24, (v5 + 38));
  sub_26968E5D4(&v32, (v5 + 43));
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  sub_2696B6F40(v34);
  return v5;
}

uint64_t sub_26971D6C4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_22_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_8_9(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = sub_269853854();
  OUTLINED_FUNCTION_4_3();
  (*(v10 + 16))(v8, a1, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC16SiriVideoIntents13NoResultsFlow_input;
  swift_beginAccess();
  sub_269720B24(v8, v1 + v11, &qword_280323AF8, &unk_26985C1D0);
  swift_endAccess();
  return 1;
}

uint64_t sub_26971D7D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NoResultsFlow(0);
  sub_269720A1C(&qword_280323E00, type metadata accessor for NoResultsFlow, &unk_26985CFF8);
  return sub_269852B54();
}

uint64_t sub_26971D860()
{
  OUTLINED_FUNCTION_2_7();
  v1[40] = v2;
  v1[41] = v0;
  v3 = type metadata accessor for VideoDataModels.ButtonModel(0);
  OUTLINED_FUNCTION_8_9(v3);
  v1[42] = OUTLINED_FUNCTION_4_7();
  v4 = sub_269852624();
  v1[43] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[44] = v5;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v6 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v6);
  v1[47] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853634();
  v1[48] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[49] = v8;
  v1[50] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698548D4();
  v1[51] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[52] = v10;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_26971DA34()
{
  sub_2697340D4();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[52];
  v4 = __swift_project_value_buffer(v2, qword_28033D910);
  v0[55] = v4;
  v5 = *(v3 + 16);
  v0[56] = v5;
  v0[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2698548B4();
  v7 = sub_269854F04();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "Generating NoResults experience", v8, 2u);
    OUTLINED_FUNCTION_10();
  }

  v9 = v0[52];
  v10 = v0[41];

  v0[58] = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_22_3();
  v12(v11);
  __swift_project_boxed_opaque_existential_1((v10 + 56), *(v10 + 80));
  v13 = swift_task_alloc();
  v0[59] = v13;
  *v13 = v0;
  v13[1] = sub_26971DC24;

  return sub_26977F2C4(0xD000000000000015, 0x800000026987DB70);
}

uint64_t sub_26971DC24()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  *(v2 + 480) = v3;
  *(v2 + 488) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26971DD5C()
{
  sub_269852E64();
  sub_2698535C4();
  v1 = sub_26971EE40();
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_26971F4C4();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  __swift_project_boxed_opaque_existential_1((v0[41] + 144), *(v0[41] + 168));
  sub_2697ADE90(v7, v8, (v0 + 17));
  if (v0[20])
  {
    v9 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    v10 = OUTLINED_FUNCTION_11_16();
    v12 = v11(v10, v9);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    sub_269830784(v12, v14);
    v16 = v15;

    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_269857710;
      v0[22] = v3;
      v0[23] = v4;
      v0[24] = v7;
      v0[25] = v8;
      v0[26] = MEMORY[0x277D84F90];
      if (qword_280322438 != -1)
      {
        swift_once();
      }

      v17 = v0[61];
      sub_2697209C8();
      v18 = sub_269851AB4();
      if (v17)
      {

        v20 = sub_269854A04();
LABEL_20:
        v51 = v0[60];
        v36 = v0[45];
        v37 = v0[46];
        v38 = v0[43];
        v39 = v0[44];
        v40 = v0[41];
        v41 = v0[42];
        sub_2697D1CC0(v20);

        v42 = sub_269852664();
        v43 = MEMORY[0x277D63778];
        *(v52 + 56) = v42;
        *(v52 + 64) = v43;
        __swift_allocate_boxed_opaque_existential_1((v52 + 32));
        sub_269852654();

        sub_269852634();
        (*(v39 + 16))(v36, v37, v38);
        VideoDataModels.ButtonModel.init(label:actionProperty:)();
        sub_2698535E4();
        __swift_project_boxed_opaque_existential_1((v40 + 304), *(v40 + 328));
        v0[30] = type metadata accessor for VideoDataModels(0);
        v0[31] = sub_269720A1C(&qword_280323A28, type metadata accessor for VideoDataModels, &protocol conformance descriptor for VideoDataModels);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
        sub_269720A64(v41, boxed_opaque_existential_1);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
        v45 = swift_allocObject();
        v0[62] = v45;
        *(v45 + 16) = xmmword_2698590C0;
        *(v45 + 32) = v51;
        v46 = v51;
        v47 = swift_task_alloc();
        v0[63] = v47;
        *v47 = v0;
        v47[1] = sub_26971E658;
        OUTLINED_FUNCTION_112();

        return MEMORY[0x2821BB478](v48);
      }

      v27 = v18;
      v28 = v19;

      v29 = objc_opt_self();
      v30 = sub_269851C84();
      v0[38] = 0;
      v31 = [v29 JSONObjectWithData:v30 options:0 error:v0 + 38];

      v32 = v0[38];
      if (v31)
      {
        v33 = v32;
        sub_269855154();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
        if (swift_dynamicCast())
        {
          sub_2696C1F3C(v27, v28);
          v20 = v0[39];
          goto LABEL_20;
        }
      }

      else
      {
        v34 = v32;
        v35 = sub_269851BD4();

        swift_willThrow();
      }

      v20 = sub_269854A04();
      sub_2696C1F3C(v27, v28);
      goto LABEL_20;
    }

LABEL_11:

    goto LABEL_12;
  }

  sub_26969B0C0((v0 + 17), &unk_2803263B0, &unk_26985D0B0);
LABEL_12:
  v21 = v0[60];
  __swift_project_boxed_opaque_existential_1((v0[41] + 304), *(v0[41] + 328));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v22 = swift_allocObject();
  v0[64] = v22;
  *(v22 + 16) = xmmword_2698590C0;
  *(v22 + 32) = v21;
  v23 = v21;
  v24 = swift_task_alloc();
  v0[65] = v24;
  *v24 = v0;
  v24[1] = sub_26971E920;
  OUTLINED_FUNCTION_112();

  return MEMORY[0x2821BB488](v25);
}

uint64_t sub_26971E424()
{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 488);
  (*(v0 + 448))(*(v0 + 424), *(v0 + 440), *(v0 + 408));
  v2 = v1;
  v3 = sub_2698548B4();
  v4 = sub_269854F24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 488);
    v18 = *(v0 + 464);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136315138;
    *(v0 + 288) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v9 = sub_269854AE4();
    v11 = sub_26974F520(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_269684000, v3, v4, "Returning error output due to: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v12 = OUTLINED_FUNCTION_22_3();
    v18(v12);
  }

  else
  {
    v13 = *(v0 + 464);

    v14 = OUTLINED_FUNCTION_22_3();
    v13(v14);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 528) = v15;
  *v15 = v16;
  v15[1] = sub_26971EBB0;

  return sub_26971FE38();
}

uint64_t sub_26971E658()
{
  OUTLINED_FUNCTION_8_5();
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v1 = v4;

  __swift_destroy_boxed_opaque_existential_0((v4 + 216));
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_26971E79C()
{
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  sub_269720AC8(*(v0 + 336));
  (*(v4 + 8))(v2, v3);
  OUTLINED_FUNCTION_15_10();
  sub_2696A73F8(v0 + 16, v0 + 96);
  OUTLINED_FUNCTION_25_3();
  v5 = swift_allocObject();
  sub_26968E5D4((v0 + 96), v5 + 16);
  v6 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v6);
  *(v0 + 296) = OUTLINED_FUNCTION_6_20();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = OUTLINED_FUNCTION_22_3();
  v8(v7);
  OUTLINED_FUNCTION_18_11();

  OUTLINED_FUNCTION_28_2();

  return v9(0);
}

uint64_t sub_26971E920()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26971EA54(uint64_t a1)
{
  OUTLINED_FUNCTION_15_10();
  sub_2696A73F8(v1 + 16, v1 + 96);
  OUTLINED_FUNCTION_25_3();
  v3 = swift_allocObject();
  sub_26968E5D4((v1 + 96), v3 + 16);
  v4 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v4);
  *(v1 + 296) = OUTLINED_FUNCTION_6_20();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v5 = OUTLINED_FUNCTION_22_3();
  v6(v5);
  OUTLINED_FUNCTION_18_11();

  OUTLINED_FUNCTION_28_2();

  return v7(0);
}

uint64_t sub_26971EBB0()
{
  OUTLINED_FUNCTION_2_7();
  *(*v0 + 536) = v1;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_26971ECD4()
{
  v1 = *(v0 + 536);

  OUTLINED_FUNCTION_28_2();

  return v2(v1);
}

uint64_t sub_26971EDC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26971EDE4);
}

uint64_t sub_26971EDE4()
{
  OUTLINED_FUNCTION_2_7();
  sub_2696A73F8(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26971EE40()
{
  v1 = v0;
  sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v87 = v3;
  v88 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v86 = v5 - v4;
  sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v80 = v7;
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v79 = v9 - v8;
  v85 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v83 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v82 = v13 - v12;
  v14 = sub_269853854();
  OUTLINED_FUNCTION_8();
  v84 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v21 = OUTLINED_FUNCTION_8_9(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323E08, &unk_26985D090);
  v25 = OUTLINED_FUNCTION_8_9(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12();
  v28 = (v26 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v33 = OUTLINED_FUNCTION_8_9(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12();
  v36 = v34 - v35;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v77 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v77 - v41;
  sub_269852474();
  OUTLINED_FUNCTION_57();
  v89 = v43;
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  v47 = OBJC_IVAR____TtC16SiriVideoIntents13NoResultsFlow_input;
  swift_beginAccess();
  sub_2697208E8(v1 + v47, v23, &qword_280323AF8, &unk_26985C1D0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v14))
  {
    sub_26969B0C0(v23, &qword_280323AF8, &unk_26985C1D0);
    sub_2698538B4();
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  }

  else
  {
    v77 = v36;
    v78 = v40;
    v52 = v82;
    v53 = v83;
    v54 = v84;
    v55 = v85;
    (*(v84 + 16))(v19, v23, v14);
    sub_26969B0C0(v23, &qword_280323AF8, &unk_26985C1D0);
    sub_269853844();
    (*(v54 + 8))(v19, v14);
    v56 = sub_2698538B4();
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v56);
    sub_2697208E8(v31, v28, &qword_280323E08, &unk_26985D090);
    v57 = OUTLINED_FUNCTION_50_0();
    v59 = v58(v57);
    if (v59 == *MEMORY[0x277D5C140])
    {
      v60 = OUTLINED_FUNCTION_50_0();
      v61(v60);
      v62 = v52;
      (*(v53 + 32))(v52, v28, v55);
      v63 = v79;
      sub_269853864();
      v64 = v78;
      sub_2696D3C74();
      (*(v80 + 8))(v63, v81);
      (*(v53 + 8))(v62, v55);
      sub_269720B24(v64, v42, &qword_280323360, &unk_26985AB80);
    }

    else
    {
      if (v59 == *MEMORY[0x277D5C148])
      {
        v65 = OUTLINED_FUNCTION_50_0();
        v66(v65);
        v67 = *v28;
        sub_2696D6C54();
        if (v68)
        {
          v69 = v68;
          v70 = v77;
          sub_269854544();

          v71 = 0;
        }

        else
        {
          v71 = 1;
          v70 = v77;
        }

        v74 = v89;
        __swift_storeEnumTagSinglePayload(v70, v71, 1, v89);
        sub_269720B24(v70, v42, &qword_280323360, &unk_26985AB80);
        goto LABEL_10;
      }

      v72 = OUTLINED_FUNCTION_50_0();
      v73(v72);
    }
  }

  v74 = v89;
LABEL_10:
  sub_26969B0C0(v31, &qword_280323E08, &unk_26985D090);
  if (!__swift_getEnumTagSinglePayload(v42, 1, v74))
  {
    v75 = v86;
    sub_269852424();
    sub_269851FD4();
    (*(v87 + 8))(v75, v88);
  }

  sub_26969B0C0(v42, &qword_280323360, &unk_26985AB80);
  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_26971F4C4()
{
  v88 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12();
  v86[0] = v3 - v4;
  MEMORY[0x28223BE20](v5);
  v89 = v86 - v6;
  v7 = [objc_opt_self() enumeratorWithOptions_];
  v8 = sub_2697EFB8C();
  v86[1] = 0;

  v9 = 0;
  v10 = *(v8 + 16);
  v11 = v8 + 32;
  v12 = MEMORY[0x277D84F90];
  v13 = 40;
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    sub_2696A73F8(v11, &v94);
    v14 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    v15 = OUTLINED_FUNCTION_11_16();
    if (v16(v15, v14) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(&v94);
    }

    else
    {
      sub_26968E5D4(&v94, &v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_28_5(v12[2]);
        v12 = v100;
      }

      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_19_8(v18);
        v12 = v100;
      }

      v12[2] = v19 + 1;
      sub_26968E5D4(&v97, &v12[5 * v19 + 4]);
    }

    v11 += 40;
    ++v9;
  }

  v87 = v1;

  v20 = 0;
  v21 = v12[2];
  v92 = v12 + 4;
  v93 = v21;
  v22 = MEMORY[0x277D84F90];
  v90 = "spotlightMatches";
  while (v20 != v93)
  {
    if (v20 >= v12[2])
    {
      goto LABEL_66;
    }

    v9 = v20 + 1;
    sub_2696A73F8(&v92[5 * v20], &v97);
    v23 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    v24 = OUTLINED_FUNCTION_11_16();
    v26 = v25(v24, v23);
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      v30 = v22;
      v13 = v99;
      __swift_project_boxed_opaque_existential_1(&v97, v98);
      v31 = OUTLINED_FUNCTION_11_16();
      v33 = v32(v31, v13);
      if (*(v33 + 16))
      {
        sub_269855674();
        sub_269854B34();
        v34 = sub_2698556C4();
        v13 = ~(-1 << *(v33 + 32));
        while (1)
        {
          v35 = v34 & v13;
          if (((*(v33 + 56 + (((v34 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v34 & v13)) & 1) == 0)
          {
            break;
          }

          v36 = (*(v33 + 48) + 16 * v35);
          if (*v36 != 0xD000000000000016 || 0x800000026987B860 != v36[1])
          {
            v38 = sub_269855584();
            v34 = v35 + 1;
            if ((v38 & 1) == 0)
            {
              continue;
            }
          }

          v13 = v99;
          __swift_project_boxed_opaque_existential_1(&v97, v98);
          v39 = OUTLINED_FUNCTION_11_16();
          v41 = v40(v39, v13);
          v42 = sub_269807CB4(0xD000000000000014, v90 | 0x8000000000000000, v41);

          v22 = v30;
          if (!v42)
          {
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      v22 = v30;
LABEL_27:
      v95 = &type metadata for SiriVideoFeatureKeys;
      v96 = sub_2696A2978();
      LOBYTE(v94) = 3;
      v43 = sub_269853B34();
      __swift_destroy_boxed_opaque_existential_0(&v94);
      if ((v43 & 1) == 0)
      {

        goto LABEL_35;
      }

      __swift_project_boxed_opaque_existential_1(v91 + 33, v91[36]);
      v44 = sub_269832F24(v28, v29);

      if (!v44)
      {
        goto LABEL_35;
      }

LABEL_29:

      sub_26968E5D4(&v97, &v94);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v22;
      if ((v45 & 1) == 0)
      {
        OUTLINED_FUNCTION_28_5(v22[2]);
        v22 = v100;
      }

      v47 = v22[2];
      v46 = v22[3];
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_19_8(v46);
        v22 = v100;
      }

      v22[2] = v47 + 1;
      sub_26968E5D4(&v94, &v22[5 * v47 + 4]);
      v20 = v9;
    }

    else
    {
LABEL_35:
      __swift_destroy_boxed_opaque_existential_0(&v97);
      v20 = v9;
    }
  }

  v48 = v22[2];
  if (v48)
  {
    v49 = (v22 + 4);
    v12 = MEMORY[0x277D84F90];
    v13 = v87;
    do
    {
      sub_2696A73F8(v49, &v94);
      v50 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, v95);
      v51 = OUTLINED_FUNCTION_11_16();
      v53 = v52(v51, v50);
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_0(&v94);
      if (v55)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26977BCE4();
          v12 = v58;
        }

        v56 = v12[2];
        if (v56 >= v12[3] >> 1)
        {
          sub_26977BCE4();
          v12 = v59;
        }

        v12[2] = v56 + 1;
        v57 = &v12[2 * v56];
        v57[4] = v53;
        v57[5] = v55;
      }

      v49 += 40;
      --v48;
    }

    while (v48);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    v13 = v87;
  }

  v9 = v88;
  if (qword_2803226E0 != -1)
  {
LABEL_67:
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v60 = __swift_project_value_buffer(v9, qword_28033D910);
  v61 = v13;
  v62 = *(v13 + 16);
  v63 = v89;
  v62(v89, v60, v9);

  v64 = sub_2698548B4();
  v65 = sub_269854F44();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v93 = v62;
    v67 = v66;
    v68 = swift_slowAlloc();
    *&v94 = v68;
    *v67 = 136315138;
    v69 = MEMORY[0x26D645BC0](v12, MEMORY[0x277D837D0]);
    v71 = sub_26974F520(v69, v70, &v94);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_269684000, v64, v65, "Candidate apps for NoResults button: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    OUTLINED_FUNCTION_10();
    v62 = v93;
    OUTLINED_FUNCTION_10();

    v72 = *(v61 + 8);
    v72(v89, v9);
  }

  else
  {

    v72 = *(v61 + 8);
    v72(v63, v9);
  }

  v73 = v12[2];
  if (v73 == 1)
  {
LABEL_62:
    v76 = v12[4];

    return v76;
  }

  if (!v73)
  {
LABEL_63:

    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v91 + 28, v91[31]);
  sub_2697B62D0();
  if (!v75)
  {
LABEL_61:
    if (v12[2])
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v76 = v74;
  v77 = v75;
  *&v94 = v74;
  *(&v94 + 1) = v75;
  MEMORY[0x28223BE20](v74);
  v86[-2] = &v94;
  if (!sub_2698337D4())
  {

    goto LABEL_61;
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v78 = v88;
  v79 = __swift_project_value_buffer(v88, qword_281571B38);
  v80 = v86[0];
  v62(v86[0], v79, v78);

  v81 = sub_2698548B4();
  v82 = sub_269854F44();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v94 = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_26974F520(v76, v77, &v94);
    _os_log_impl(&dword_269684000, v81, v82, "Foreground app present in candidate list: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v72(v80, v78);
  return v76;
}

uint64_t sub_26971FE38()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v4 = sub_2698538F4();
  v1[16] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[17] = v5;
  v1[18] = *(v6 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = sub_2698532A4();
  v1[21] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[22] = v8;
  v9 = OUTLINED_FUNCTION_4_7();
  v1[23] = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v1[24] = v10;
  *v10 = v11;
  v10[1] = sub_26971FFB0;

  return MEMORY[0x2821BAED8](v9);
}

uint64_t sub_26971FFB0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

void sub_2697200B4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v17 = *(v0 + 176);
  v18 = *(v0 + 168);
  v16 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v6 + 96), *(v6 + 120));
  sub_269852CA4();
  sub_269853234();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_269853114();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  sub_2696A73F8(v6 + 344, v0 + 56);
  (*(v3 + 16))(v16, v2, v4);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v16, v4);
  v13 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v13);
  *(v0 + 96) = sub_269852764();
  sub_269853144();
  (*(v3 + 8))(v2, v4);
  (*(v17 + 8))(v1, v18);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_112();

  __asm { BRAA            X2, X16 }
}

void *sub_26972039C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2696D1E70((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  sub_26969B0C0(v0 + OBJC_IVAR____TtC16SiriVideoIntents13NoResultsFlow_input, &qword_280323AF8, &unk_26985C1D0);
  return v0;
}

uint64_t sub_26972042C()
{
  sub_26972039C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NoResultsFlow(uint64_t a1)
{
  result = qword_280323DF0;
  if (!qword_280323DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2697204D8(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2697205D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269708558;

  return sub_26971D860();
}

uint64_t sub_2697206BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2696DA938;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269720784(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NoResultsFlow(0);

  return sub_269852B84();
}

uint64_t sub_2697207C0(uint64_t a1)
{
  result = sub_269720A1C(&qword_280323E00, type metadata accessor for NoResultsFlow, &unk_26985CFF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269720818()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v4 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2696DA938;

  return sub_26971C528(v3, v0 + v6);
}

uint64_t sub_2697208E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3();
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return v4;
}

uint64_t sub_269720934()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2696DAF80;

  return sub_26971EDC4(v3, v0 + 16);
}

unint64_t sub_2697209C8()
{
  result = qword_280323E10;
  if (!qword_280323E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323E10);
  }

  return result;
}

uint64_t sub_269720A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269720A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.ButtonModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269720AC8(uint64_t a1)
{
  v2 = type metadata accessor for VideoDataModels.ButtonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269720B24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3();
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  v2 = *(v0 + 328) + 344;

  return sub_2696A73F8(v2, v0 + 56);
}

uint64_t OUTLINED_FUNCTION_18_11()
{
}

void *OUTLINED_FUNCTION_19_8@<X0>(unint64_t a1@<X8>)
{

  return sub_2698150B0((a1 > 1), v1, 1);
}

void *OUTLINED_FUNCTION_28_5@<X0>(uint64_t a1@<X8>)
{

  return sub_2698150B0(0, a1 + 1, 1);
}

void *sub_269720C4C()
{
  sub_269852C84();
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v2);

  v3 = sub_269853254();

  sub_269853524();
  sub_269852BB4();
  v20[3] = v0;
  v20[4] = &off_287A3DBA0;
  v20[0] = v1;
  v18 = v2;
  v19 = MEMORY[0x277D5BD58];
  *&v17 = v3;
  v4 = type metadata accessor for OpenOnRemoteDeviceFlow(0);
  v5 = OUTLINED_FUNCTION_68_0(v4);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = (v8 - v7);
  (*(v10 + 16))(v8 - v7);
  v11 = *v9;
  v5[10] = v0;
  v5[11] = &off_287A3DBA0;
  v5[7] = v11;
  v5[27] = 0;
  v5[28] = 0;
  v12 = OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_contentUrl;
  v13 = sub_269851C74();
  __swift_storeEnumTagSinglePayload(v5 + v12, 1, 1, v13);
  v14 = (v5 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v5 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName);
  *v15 = 0;
  v15[1] = 0;
  sub_26968E5D4(&v23, (v5 + 2));
  sub_26968E5D4(&v17, (v5 + 12));
  sub_26968E5D4(&v22, (v5 + 17));
  sub_26968E5D4(&v21, (v5 + 22));
  __swift_destroy_boxed_opaque_existential_0(v20);

  return v5;
}

uint64_t sub_269720E44(uint64_t a1)
{
  v99 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_24_3();
  v89 = v2;
  MEMORY[0x28223BE20](v3);
  v92 = &v89 - v4;
  v5 = sub_269851C74();
  OUTLINED_FUNCTION_8();
  v94 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v93 = v9 - v8;
  sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v97 = v11;
  v98 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = sub_2698538A4();
  OUTLINED_FUNCTION_8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v22 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_3();
  v96 = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v90 = &v89 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v89 - v30;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v32 = __swift_project_value_buffer(v22, qword_28033D910);
  v33 = *(v24 + 16);
  v100 = v32;
  v101 = v33;
  v102 = v24 + 16;
  (v33)(v31);
  v34 = sub_2698548B4();
  v35 = sub_269854F14();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_16_2();
    v95 = v21;
    *v36 = 0;
    _os_log_impl(&dword_269684000, v34, v35, "OpenOnRemoteDeviceFlow on called", v36, 2u);
    v21 = v95;
    OUTLINED_FUNCTION_10();
  }

  v37 = *(v24 + 8);
  v37(v31, v22);
  sub_269853844();
  v39 = v97;
  v38 = v98;
  if ((*(v97 + 88))(v14, v98) != *MEMORY[0x277D5C150])
  {
    (*(v39 + 8))(v14, v38);
LABEL_28:
    v58 = v96;
    v101(v96, v100, v22);
    v59 = sub_2698548B4();
    v60 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v60))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_26_8(&dword_269684000, v61, v62, "OpenOnRemoteDeviceFlow on, will not handle");
      OUTLINED_FUNCTION_10();
    }

    v37(v58, v22);
    return 0;
  }

  (*(v39 + 96))(v14, v38);
  (*(v17 + 32))(v21, v14, v15);
  if (sub_269853884() == 0xD000000000000027 && 0x800000026987A0D0 == v40)
  {
  }

  else
  {
    v42 = sub_269855584();

    if ((v42 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!sub_269853894())
  {
    v54 = OUTLINED_FUNCTION_14_8();
    v55(v54);
LABEL_24:
    v105 = 0u;
    v106 = 0u;
LABEL_26:
    v49 = &qword_280322F88;
    v50 = qword_26985AB90;
    v51 = &v105;
    goto LABEL_27;
  }

  sub_26981CFD4();

  if (!*(&v106 + 1))
  {
    v56 = OUTLINED_FUNCTION_14_8();
    v57(v56);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_23_9();
  if ((OUTLINED_FUNCTION_52() & 1) == 0)
  {
LABEL_22:
    v52 = OUTLINED_FUNCTION_14_8();
    v53(v52);
    goto LABEL_28;
  }

  v43 = v21;
  v45 = v103;
  v44 = v104;
  if (!sub_269853894())
  {
    (*(v17 + 8))(v43, v15);

    goto LABEL_24;
  }

  v95 = v43;
  sub_26981CFD4();

  if (!*(&v106 + 1))
  {
    v64 = OUTLINED_FUNCTION_13_11();
    v65(v64);

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_23_9();
  if ((OUTLINED_FUNCTION_52() & 1) == 0)
  {
    v66 = OUTLINED_FUNCTION_13_11();
    v67(v66);

    goto LABEL_28;
  }

  v46 = v92;
  sub_269851C64();

  if (__swift_getEnumTagSinglePayload(v46, 1, v5) == 1)
  {
    v47 = OUTLINED_FUNCTION_13_11();
    v48(v47);

    v49 = &qword_280323030;
    v50 = &qword_26985BAE0;
    v51 = v46;
LABEL_27:
    sub_269698048(v51, v49, v50);
    goto LABEL_28;
  }

  v68 = v46;
  v70 = v93;
  v69 = v94;
  (*(v94 + 32))(v93, v68, v5);
  v71 = v91;
  *(v91 + 216) = v45;
  *(v71 + 224) = v44;
  v72 = v71;

  v73 = v89;
  (*(v69 + 16))(v89, v70, v5);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v5);
  v74 = OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_contentUrl;
  swift_beginAccess();
  sub_269723A70(v73, v72 + v74);
  swift_endAccess();
  v75 = v95;
  if (!sub_269853894())
  {
    v105 = 0u;
    v106 = 0u;
    v76 = v90;
    goto LABEL_39;
  }

  sub_26981CFD4();

  v76 = v90;
  if (!*(&v106 + 1))
  {
LABEL_39:
    sub_269698048(&v105, &qword_280322F88, qword_26985AB90);
    v78 = 0;
    v79 = 0;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_23_9();
  v77 = OUTLINED_FUNCTION_52();
  v78 = v103;
  v79 = v104;
  if (!v77)
  {
    v78 = 0;
    v79 = 0;
  }

LABEL_40:
  v80 = (v72 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title);
  *v80 = v78;
  v80[1] = v79;

  if (sub_269853894())
  {
    sub_26981CFD4();

    if (*(&v106 + 1))
    {
      OUTLINED_FUNCTION_23_9();
      v81 = OUTLINED_FUNCTION_52();
      v82 = v103;
      v83 = v104;
      if (!v81)
      {
        v82 = 0;
        v83 = 0;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
  }

  sub_269698048(&v105, &qword_280322F88, qword_26985AB90);
  v82 = 0;
  v83 = 0;
LABEL_46:
  v84 = (v72 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName);
  *v84 = v82;
  v84[1] = v83;

  v101(v76, v100, v22);
  v85 = sub_2698548B4();
  v86 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v86))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_26_8(&dword_269684000, v87, v88, "OpenOnRemoteDeviceFlow on, will handle");
    OUTLINED_FUNCTION_10();

    v37(v76, v22);
    (*(v94 + 8))(v93, v5);
    (*(v17 + 8))(v95, v15);
  }

  else
  {

    v37(v76, v22);
    (*(v94 + 8))(v93, v5);
    (*(v17 + 8))(v75, v15);
  }

  return 1;
}

uint64_t sub_269721808(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OpenOnRemoteDeviceFlow(0);
  sub_269723898();
  return sub_269852B54();
}

uint64_t sub_269721868()
{
  OUTLINED_FUNCTION_2_7();
  v1[62] = v2;
  v1[63] = v0;
  v3 = sub_2698548D4();
  v1[64] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[65] = v4;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  sub_269852EB4();
  v1[72] = swift_task_alloc();
  v5 = sub_269853634();
  v1[73] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[74] = v6;
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v1[77] = swift_task_alloc();
  v7 = sub_269851C74();
  v1[78] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[79] = v8;
  v1[80] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_269721A6C()
{
  OUTLINED_FUNCTION_12_7();
  v1 = v0[63];
  v2 = *(v1 + 224);
  v0[81] = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v0[78];
  v4 = v0[77];
  v5 = OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_contentUrl;
  swift_beginAccess();
  sub_2697238F0(v1 + v5, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    sub_269698048(v0[77], &qword_280323030, &qword_26985BAE0);
LABEL_4:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(v0[64], qword_28033D910);
    v6 = OUTLINED_FUNCTION_2_8();
    v7(v6);
    v8 = sub_2698548B4();
    v9 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v9))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v10, v11, "OpenOnRemoteDeviceFlow execute, missing inputs");
      OUTLINED_FUNCTION_10();
    }

    v12 = v0[68];
    v13 = v0[65];
    v14 = v0[64];

    (*(v13 + 8))(v12, v14);
    return sub_269855354();
  }

  v16 = v0[63];
  (*(v0[79] + 32))(v0[80], v0[77], v0[78]);
  sub_26969329C(0, &qword_280323038, 0x277D479F0);

  v17 = sub_2696CD66C(1);
  v0[82] = v17;
  v18 = sub_269851C24();
  [v17 setPunchOutUri_];

  __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
  v19 = swift_task_alloc();
  v0[83] = v19;
  sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
  *v19 = v0;
  v19[1] = sub_269721D64;

  return MEMORY[0x2821BB680](v17);
}

uint64_t sub_269721D64()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *(v5 + 672) = v4;
  *(v5 + 680) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269721E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_12_7();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = *(v12 + 504);
    if (*(v14 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title + 8))
    {
      v15 = *(v14 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title);
      v16 = *(v14 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_title + 8);
    }

    else
    {
      v15 = 0;
      v16 = 0xE000000000000000;
    }

    if (*(v14 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName + 8))
    {
      v37 = *(v14 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName);
      v38 = *(v14 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_roomName + 8);
    }

    else
    {
      v37 = 0;
      v38 = 0xE000000000000000;
    }

    *(v12 + 88) = v15;
    *(v12 + 96) = v16;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0xE000000000000000;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0xE000000000000000;
    *(v12 + 136) = v37;
    *(v12 + 144) = v38;
    *(v12 + 152) = 0;
    memcpy((v12 + 16), (v12 + 88), 0x42uLL);

    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v12 + 688) = v39;
    *v39 = v40;
    v39[1] = sub_269722144;
    OUTLINED_FUNCTION_71();

    return sub_2696BE900();
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(*(v12 + 512), qword_28033D910);
    v17 = OUTLINED_FUNCTION_2_8();
    v18(v17);
    v19 = sub_2698548B4();
    v20 = sub_269854F24();
    v21 = OUTLINED_FUNCTION_19_4(v20);
    v22 = *(v12 + 552);
    v23 = *(v12 + 512);
    if (v21)
    {
      v13 = OUTLINED_FUNCTION_16_2();
      *v13 = 0;
      _os_log_impl(&dword_269684000, v19, v20, "OpenOnRemoteDeviceFlow execute, response is not SACommandSucceeded", v13, 2u);
      OUTLINED_FUNCTION_10();
    }

    v24 = OUTLINED_FUNCTION_22_3();
    v26 = v25(v24);
    OUTLINED_FUNCTION_15_11(v26);

    (*(v13 + 8))(v19, v22);
    OUTLINED_FUNCTION_0_26();
    v42 = v27;

    OUTLINED_FUNCTION_8_17();
    OUTLINED_FUNCTION_71();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, v42, a10, a11, a12);
  }
}

uint64_t sub_269722144()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  *(v1 + 696) = v3;
  *(v1 + 704) = v0;

  sub_2696C285C(v2 + 88);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_269722258()
{
  v1 = v0[87];
  v2 = v0[63];
  sub_269852E64();
  sub_2698535C4();
  __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v3 = swift_allocObject();
  v0[89] = v3;
  *(v3 + 16) = xmmword_2698590C0;
  *(v3 + 32) = v1;
  v4 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[90] = v5;
  *v5 = v6;
  v5[1] = sub_26972239C;

  return MEMORY[0x2821BB488](v0 + 40);
}

uint64_t sub_26972239C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697224A0()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(*(v0 + 512), qword_28033D910);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v4))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v5, v6, "OpenOnRemoteDeviceFlow execute, dialog success");
    OUTLINED_FUNCTION_10();
  }

  v7 = *(v0 + 672);
  v18 = *(v0 + 656);
  v19 = *(v0 + 696);
  v8 = *(v0 + 632);
  v22 = *(v0 + 624);
  v23 = *(v0 + 640);
  v9 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 608);
  v10 = *(v0 + 568);
  v11 = *(v0 + 520);
  v12 = *(v0 + 504);
  v13 = *(v0 + 512);

  (*(v11 + 8))(v10, v13);
  sub_2696A73F8(v12 + 136, v0 + 360);
  sub_2696A73F8(v0 + 320, v0 + 400);
  v14 = swift_allocObject();
  sub_26968E5D4((v0 + 400), v14 + 16);
  v15 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v15);
  *(v0 + 488) = sub_269852764();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v0 + 320));
  (*(v9 + 8))(v21, v20);
  (*(v8 + 8))(v23, v22);
  OUTLINED_FUNCTION_0_26();

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_269722740()
{
  v29 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = v0[88];
  v2 = v0[70];
  v3 = v0[65];
  v4 = v0[64];
  v5 = __swift_project_value_buffer(v4, qword_28033D910);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[88];
  v11 = v0[70];
  v12 = v0[65];
  v13 = v0[64];
  if (v9)
  {
    v27 = v0[70];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v0[60] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v17 = sub_269854AE4();
    v19 = sub_26974F520(v17, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_269684000, v7, v8, "OpenOnRemoteDeviceFlow execute, dialog error %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v21 = *(v12 + 8);
    v20 = v12 + 8;
    v22 = v21(v27, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v20 = v12 + 8;
    v22 = v23(v11, v13);
  }

  OUTLINED_FUNCTION_15_11(v22);

  (*(v8 + 8))(v7, v20);
  OUTLINED_FUNCTION_0_26();

  v24 = OUTLINED_FUNCTION_8_17();

  return v25(v24);
}

uint64_t sub_2697229C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_114();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_12_7();
  a18 = v20;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v23 = *(v20 + 680);
  v24 = *(v20 + 536);
  v25 = *(v20 + 520);
  v26 = *(v20 + 512);
  v27 = __swift_project_value_buffer(v26, qword_28033D910);
  *(v20 + 728) = v27;
  v28 = *(v25 + 16);
  *(v20 + 736) = v28;
  *(v20 + 744) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v24, v27, v26);
  v29 = v23;
  v30 = sub_2698548B4();
  v31 = sub_269854F24();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v20 + 680);
    v33 = *(v20 + 520);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a9 = v35;
    *v34 = 136315138;
    *(v20 + 472) = v32;
    v36 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v37 = sub_269854AE4();
    v39 = sub_26974F520(v37, v38, &a9);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_269684000, v30, v31, "OpenOnRemoteDeviceFlow execute, submitToRemote error %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v40 = *(v33 + 8);
  }

  else
  {
    v42 = *(v20 + 520);

    v40 = *(v42 + 8);
  }

  v41 = OUTLINED_FUNCTION_22_3();
  v40(v41);
  *(v20 + 752) = v40;
  *(v20 + 160) = 0;
  *(v20 + 164) = 1;
  *(v20 + 168) = 0u;
  *(v20 + 184) = 0u;
  v43 = swift_task_alloc();
  *(v20 + 760) = v43;
  *v43 = v20;
  v43[1] = sub_269722C24;
  OUTLINED_FUNCTION_71();

  return sub_2696C0FB4();
}

uint64_t sub_269722C24(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    *(v5 + 768) = a1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_269722D40()
{
  v1 = v0[96];
  __swift_project_boxed_opaque_existential_1((v0[63] + 96), *(v0[63] + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v2 = swift_allocObject();
  v0[97] = v2;
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = v1;
  v3 = v1;
  sub_269852E64();
  sub_2698535C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[98] = v4;
  *v4 = v5;
  v4[1] = sub_269722E88;

  return MEMORY[0x2821BB488](v0 + 25);
}

uint64_t sub_269722E88()
{
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_22_3();
  v4(v3);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_269722FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_12_7();
  v13 = *(v12 + 768);
  v14 = *(v12 + 680);
  v15 = *(v12 + 656);
  sub_2696A73F8(*(v12 + 504) + 136, v12 + 240);
  sub_2696A73F8(v12 + 200, v12 + 280);
  v16 = swift_allocObject();
  sub_26968E5D4((v12 + 280), v16 + 16);
  v17 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v17);
  *(v12 + 464) = sub_269852764();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v12 + 200));
  v18 = OUTLINED_FUNCTION_22_3();
  v19(v18);
  OUTLINED_FUNCTION_0_26();
  v30 = v20;

  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_71();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_269723180()
{
  (*(v0 + 736))(*(v0 + 528), *(v0 + 728), *(v0 + 512));
  v1 = sub_2698548B4();
  v2 = sub_269854F24();
  if (OUTLINED_FUNCTION_19_4(v2))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v3, v4, "OpenOnRemoteDeviceFlow execute, error creating remote device unreachable dialog");
    OUTLINED_FUNCTION_10();
  }

  v5 = *(v0 + 752);
  v6 = *(v0 + 680);
  v7 = *(v0 + 656);
  v8 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 640);
  v9 = *(v0 + 528);
  v10 = *(v0 + 512);

  v5(v9, v10);
  sub_269853164();

  (*(v8 + 8))(v15, v14);
  OUTLINED_FUNCTION_0_26();

  v11 = OUTLINED_FUNCTION_8_17();

  return v12(v11);
}

uint64_t sub_26972331C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269723AE0);
}

uint64_t sub_269723380(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2697233A0);
}

uint64_t sub_2697233A0()
{
  OUTLINED_FUNCTION_2_7();
  sub_2696A73F8(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

void *sub_269723400()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2696D1E70((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents22OpenOnRemoteDeviceFlow_contentUrl, &qword_280323030, &qword_26985BAE0);

  return v0;
}

uint64_t sub_269723490()
{
  sub_269723400();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for OpenOnRemoteDeviceFlow(uint64_t a1)
{
  result = qword_280323E30;
  if (!qword_280323E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26972353C(uint64_t a1)
{
  sub_2697235EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2697235EC(uint64_t a1)
{
  if (!qword_280323E40)
  {
    sub_269851C74();
    v1 = sub_2698550A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280323E40);
    }
  }
}

uint64_t sub_269723684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696E1660;

  return sub_269721868();
}

uint64_t sub_26972376C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_269708804;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269723834(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OpenOnRemoteDeviceFlow(0);

  return sub_269852B84();
}

unint64_t sub_269723870(uint64_t a1)
{
  result = sub_269723898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269723898()
{
  result = qword_280323E48;
  if (!qword_280323E48)
  {
    type metadata accessor for OpenOnRemoteDeviceFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323E48);
  }

  return result;
}

uint64_t sub_2697238F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269723960()
{
  OUTLINED_FUNCTION_2_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_6(v1);

  return sub_26972331C(v3, v4);
}

uint64_t sub_2697239E8()
{
  OUTLINED_FUNCTION_2_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_6(v1);

  return sub_269723380(v3, v4);
}

uint64_t sub_269723A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1)
{

  return sub_269853164();
}

void OUTLINED_FUNCTION_26_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_269723BC0(uint64_t a1)
{
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_269723C5C;

  return sub_269723E48();
}

uint64_t sub_269723C5C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_269723D4C()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_269724C64(v1);
  sub_269852BC4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_269723DF4(uint64_t a1, uint64_t a2)
{
  sub_269724B58();

  return sub_269852B54();
}

uint64_t sub_269723E48()
{
  OUTLINED_FUNCTION_2_7();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_2698548D4();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = sub_2698532A4();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_269723F68()
{
  OUTLINED_FUNCTION_8_5();
  sub_269734158();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_287A3DBA0;
  v0[2] = v2;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_26972406C;
  v4 = v0[29];

  return sub_269788BF4(v4, 0xD000000000000017, 0x800000026987DD10);
}

uint64_t sub_26972406C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269724168()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  sub_269724D50((v0 + 2));
  (*(v4 + 32))(v1, v2, v3);
  sub_2698538C4();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_269852CA4();
  sub_269852F24();
  swift_allocObject();
  sub_269852F04();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v5 = sub_269852F14();

  v6 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  v0[33] = v6;
  if (v5 >> 62)
  {
    sub_26969329C(0, &qword_2803239B0, 0x277D47140);

    v7 = sub_269855364();
  }

  else
  {

    sub_269855594();
    sub_26969329C(0, &qword_2803239B0, 0x277D47140);
    v7 = v5;
  }

  sub_26976FAD4(v7, v6);
  sub_269852C84();
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v8 = swift_task_alloc();
  v0[34] = v8;
  v0[35] = sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
  *v8 = v0;
  v8[1] = sub_2697243A4;
  v9 = OUTLINED_FUNCTION_9_14();

  return MEMORY[0x2821BB6A0](v9);
}

uint64_t sub_2697243A4()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 288) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697244A8()
{
  sub_269724D50((v0 + 2));
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "Received failure result from DialogEngine", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v8 = v0[32];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];

  (*(v10 + 8))(v9, v11);
  sub_269853164();

  OUTLINED_FUNCTION_10_13();

  OUTLINED_FUNCTION_28_2();

  return v12(2);
}

uint64_t sub_269724634()
{
  OUTLINED_FUNCTION_8_5();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_26969329C(0, &qword_280323038, 0x277D479F0);
  v1 = sub_2696CD66C(1);
  v0[37] = v1;
  if (qword_2803226C8 != -1)
  {
    swift_once();
  }

  v2 = sub_269851C74();
  __swift_project_value_buffer(v2, qword_28033D8F0);
  v3 = sub_269851C24();
  [v1 setPunchOutUri_];

  sub_269852C84();
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_269724788;
  v5 = OUTLINED_FUNCTION_9_14();

  return MEMORY[0x2821BB6A0](v5);
}

uint64_t sub_269724788()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 312) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26972488C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 264);

  v2 = __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_8_18(v2);
  v3 = OUTLINED_FUNCTION_5_21();
  v4(v3);
  OUTLINED_FUNCTION_10_13();

  OUTLINED_FUNCTION_28_2();

  return v5(0);
}

uint64_t sub_269724928()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 288);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_8_18(v2);
  v3 = OUTLINED_FUNCTION_5_21();
  v4(v3);
  OUTLINED_FUNCTION_10_13();

  OUTLINED_FUNCTION_28_2();

  return v5(0);
}

uint64_t sub_2697249C8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_8_18(v3);
  v4 = OUTLINED_FUNCTION_5_21();
  v5(v4);
  OUTLINED_FUNCTION_10_13();

  OUTLINED_FUNCTION_28_2();

  return v6(0);
}

uint64_t sub_269724A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269708558;

  return sub_269723E48();
}

unint64_t sub_269724B30(uint64_t a1)
{
  result = sub_269724B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269724B58()
{
  result = qword_280323E50;
  if (!qword_280323E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323E50);
  }

  return result;
}

uint64_t sub_269724BB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708804;

  return sub_269723BC0(a1);
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1)
{

  return sub_269853164();
}

uint64_t OUTLINED_FUNCTION_10_13()
{
}

void sub_269724DFC()
{
  v0 = [objc_allocWithZone(type metadata accessor for PlayLiveServiceIntent()) init];
  sub_2696D3780();
  v1 = [v0 typeName];
  v2 = sub_269854A94();
  v4 = v3;

  qword_28033D688 = v2;
  unk_28033D690 = v4;
}

BOOL sub_269724E7C(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
    case 5:
      return a2 == 5;
    case 6:
      return a2 == 6;
    case 7:
      return a2 == 7;
    case 8:
      return a2 == 8;
    default:
      if (a2 - 3 < 6)
      {
        return 0;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          if (a2 != 1)
          {
            return 0;
          }
        }

        else if (a1 == 2)
        {
          if (a2 != 2)
          {
            return 0;
          }
        }

        else if (a2 < 3 || (sub_26973CD58(a1, a2) & 1) == 0)
        {
          return 0;
        }

        return 1;
      }

      return !a2;
  }
}

void sub_269724F70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v1 = OUTLINED_FUNCTION_8_9(v0);
  MEMORY[0x28223BE20](v1);
  v54 = &v46 - v2;
  v53 = sub_269853854();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_2698538C4();
  sub_269853524();
  v7 = type metadata accessor for BaseDialogProvider();
  v49 = swift_allocObject();
  v8 = sub_2698546A4();
  v55 = sub_269854684();
  v48 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v9 = sub_2696C7734();
  v52 = v9;
  v50 = sub_269854694();
  sub_269852C84();
  v77 = &type metadata for CoreAnalyticsService;
  v78 = &xmmword_287A41610;
  v80 = &type metadata for UTSNetworkProvider;
  v81 = &off_287A43DC0;
  *&v79 = swift_allocObject();
  sub_2697D24B0(&v76, (v79 + 16));
  v82 = &type metadata for CoreAnalyticsService;
  v83 = &xmmword_287A41610;
  v77 = &type metadata for UTSProvider;
  v78 = &off_287A43FA8;
  *&v76 = swift_allocObject();
  sub_269728D78(&v79, v76 + 16);
  v10 = type metadata accessor for LiveServiceResolver();
  v47 = v10;
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v76, &type metadata for UTSProvider);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  v11[5] = &type metadata for UTSProvider;
  v11[6] = &off_287A43FA8;
  v17 = swift_allocObject();
  v11[2] = v17;
  memcpy((v17 + 16), v15, 0x50uLL);
  __swift_destroy_boxed_opaque_existential_0(&v76);
  sub_269728DD4(&v79);
  v18 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v18);
  v19 = sub_269853254();
  v51 = v19;
  sub_269852BB4();
  v78 = &off_287A3DBA0;
  v77 = v7;
  v20 = v48;
  *&v76 = v49;
  v72[4] = MEMORY[0x277D61F10];
  v74 = &type metadata for VideoFlowFactoryImpl;
  v75 = &off_287A40968;
  v72[3] = v8;
  v72[0] = v55;
  v70 = v48;
  v71 = &off_287A3E7C8;
  v69[0] = v9;
  v68[3] = sub_269854674();
  v68[4] = MEMORY[0x277D61F08];
  v68[0] = v50;
  v61 = MEMORY[0x277D5BD58];
  v66 = &type metadata for FeatureFlagServiceImpl;
  v67 = &off_287A41BD8;
  v63 = v10;
  v64 = &off_287A42540;
  v62[0] = v11;
  v60 = v18;
  *&v59 = v19;
  v21 = type metadata accessor for PlayLiveServiceWrapperFlow(0);
  v22 = OUTLINED_FUNCTION_68_0(v21);
  __swift_mutable_project_boxed_opaque_existential_1(&v76, v7);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v25 = OUTLINED_FUNCTION_12_16(v24);
  v26(v25);
  __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
  __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v29 = OUTLINED_FUNCTION_11_17(v28);
  v30(v29);
  __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  v34 = (v33 - v32);
  (*(v35 + 16))(v33 - v32);
  v36 = *v8;
  v37 = *v10;
  v38 = *v34;
  v58[3] = v7;
  v58[4] = &off_287A3DBA0;
  v58[0] = v36;
  v57[3] = &type metadata for VideoFlowFactoryImpl;
  v57[4] = &off_287A40968;
  v56[3] = v20;
  v56[4] = &off_287A3E7C8;
  v56[0] = v37;
  v22[55] = &type metadata for FeatureFlagServiceImpl;
  v22[56] = &off_287A41BD8;
  v22[60] = v47;
  v22[61] = &off_287A42540;
  v22[57] = v38;
  v39 = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_input;
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v53);
  *(v22 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice) = 0;
  swift_beginAccess();
  v43 = v55;

  v44 = v22 + v39;
  v45 = v54;
  sub_269728E28(v54, v44);
  swift_endAccess();
  sub_2696A73F8(v86, (v22 + 2));
  sub_2696A73F8(v85, (v22 + 7));
  sub_2696A73F8(v58, (v22 + 12));
  sub_2696A73F8(v58, (v22 + 17));
  sub_2696A73F8(v57, (v22 + 22));
  sub_2696A73F8(v72, (v22 + 27));
  sub_2696A73F8(v56, (v22 + 32));
  v22[72] = 3;
  sub_2696A73F8(v68, (v22 + 37));
  sub_2696A73F8(v84, (v22 + 42));
  v22[50] = &type metadata for CoreAnalyticsService;
  v22[51] = &xmmword_287A41610;

  __swift_destroy_boxed_opaque_existential_0(v84);
  __swift_destroy_boxed_opaque_existential_0(v85);
  __swift_destroy_boxed_opaque_existential_0(v86);
  sub_269698048(v45, &qword_280323AF8, &unk_26985C1D0);
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v58);
  sub_26968E5D4(&v59, (v22 + 62));
  sub_26968E5D4(&v79, (v22 + 67));
  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v73);
  __swift_destroy_boxed_opaque_existential_0(&v76);
  OUTLINED_FUNCTION_21_0();
}

BOOL sub_2697256C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v5 = *(v0 + 576);
  if (v5 == 3)
  {
    v6 = sub_269853854();
    v7 = OUTLINED_FUNCTION_22_3();
    v8(v7);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
    v9 = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_input;
    swift_beginAccess();
    sub_269702838(v4, v0 + v9);
    swift_endAccess();
    v10 = *(v0 + 576);
    *(v0 + 576) = 4;
    sub_269728BA0(v10);
  }

  return v5 == 3;
}

uint64_t sub_2697257EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayLiveServiceWrapperFlow(0);
  sub_269728D30(&qword_280323E70, type metadata accessor for PlayLiveServiceWrapperFlow, &unk_26985D4D8);
  return sub_269852B54();
}

uint64_t sub_26972587C()
{
  OUTLINED_FUNCTION_2_7();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_2698548D4();
  v1[28] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[29] = v4;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v5 = sub_2698538B4();
  v1[37] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[38] = v6;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v7);
  v1[41] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269853854();
  v1[42] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[43] = v9;
  v1[44] = OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

void sub_269725A48()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 216);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_269698048(*(v0 + 328), &qword_280323AF8, &unk_26985C1D0);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v5 = (v0 + 240);
    v6 = *(v0 + 232);
    __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
    v7 = OUTLINED_FUNCTION_2_8();
    v8(v7);
    v9 = sub_2698548B4();
    v10 = sub_269854F24();
    if (!OUTLINED_FUNCTION_39_1(v10))
    {
      v12 = *v5;
      goto LABEL_13;
    }

    v11 = "PlayLiveServiceWrapperFlow.execute() Input is nil. Error executing request";
LABEL_6:
    v12 = *v5;
    v13 = OUTLINED_FUNCTION_16_2();
    *v13 = 0;
    _os_log_impl(&dword_269684000, v9, v6, v11, v13, 2u);
    OUTLINED_FUNCTION_10();
LABEL_13:
    v22 = v0 + 224;
    v21 = *(v0 + 224);
    v20 = *(v22 + 8);

    (*(v20 + 8))(v12, v21);
    sub_269855354();
    OUTLINED_FUNCTION_7_8();
    return;
  }

  v14 = *(v0 + 216);
  v15 = (*(*(v0 + 344) + 32))(*(v0 + 352), *(v0 + 328), *(v0 + 336));
  v16 = *(v14 + 576);
  switch(v16)
  {
    case 3uLL:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      v5 = (v0 + 256);
      v6 = *(v0 + 232);
      __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
      v17 = OUTLINED_FUNCTION_2_8();
      v18(v17);
      v9 = sub_2698548B4();
      v19 = sub_269854F24();
      if (OUTLINED_FUNCTION_39_1(v19))
      {
        v11 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
        goto LABEL_6;
      }

      v12 = *v5;
      goto LABEL_13;
    case 4uLL:
      __swift_project_boxed_opaque_existential_1((*(v0 + 216) + 536), *(*(v0 + 216) + 560));
      sub_269852C74();
      if (qword_280322468 != -1)
      {
        OUTLINED_FUNCTION_13_12(&qword_280322468);
      }

      v33 = *(v0 + 216);

      OUTLINED_FUNCTION_5_20();
      sub_269852C64();
      sub_269852BC4();

      __swift_project_boxed_opaque_existential_1((v33 + 16), *(v33 + 40));
      OUTLINED_FUNCTION_22_3();
      if (sub_269852D04())
      {
        sub_269727E2C();
LABEL_27:
        v34 = OUTLINED_FUNCTION_22_3();
        v35(v34);
LABEL_40:
        OUTLINED_FUNCTION_16_11();

        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_7_8();

        __asm { BRAA            X1, X16 }
      }

      v74 = *(v0 + 320);
      v75 = *(v0 + 296);
      v76 = *(v0 + 304);
      sub_269853844();
      v77 = (*(v76 + 88))(v74, v75);
      if (v77 != *MEMORY[0x277D5C128] && v77 != *MEMORY[0x277D5C140] && v77 != *MEMORY[0x277D5C148])
      {
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        v5 = (v0 + 288);
        v6 = *(v0 + 232);
        __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
        v85 = OUTLINED_FUNCTION_2_8();
        v86(v85);
        v9 = sub_2698548B4();
        v87 = sub_269854F24();
        if (!OUTLINED_FUNCTION_39_1(v87))
        {
          v12 = *v5;
          goto LABEL_13;
        }

        v11 = "Unexpected parse type in input";
        goto LABEL_6;
      }

      v80 = *(*(v0 + 304) + 8);
      (v80)(*(v0 + 320), *(v0 + 296));
      *(v0 + 160) = &type metadata for SiriVideoFeatureKeys;
      *(v0 + 168) = sub_2696A2978();
      *(v0 + 136) = 0;
      v81 = sub_269853B34();
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      if (v81)
      {
        v82 = *(v0 + 312);
        sub_269853844();
        v83 = sub_269793450(v82, (v33 + 16));
        v84 = OUTLINED_FUNCTION_22_3();
        v80(v84);
        if (v83)
        {
          sub_269727070(*(v0 + 352), *(v0 + 208));
          goto LABEL_27;
        }
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      *(v0 + 360) = v29;
      *v29 = v88;
      v31 = sub_2697264C8;
LABEL_20:
      v29[1] = v31;
      OUTLINED_FUNCTION_7_8();

      sub_269726778();
      return;
    case 5uLL:
      if (qword_2803226E0 != -1)
      {
        v15 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      v5 = (v0 + 248);
      v26 = *(v0 + 248);
      v6 = *(v0 + 224);
      v27 = *(v0 + 232);
      OUTLINED_FUNCTION_31_5(v15, qword_28033D910);
      (*(v27 + 16))(v26);
      v9 = sub_2698548B4();
      v28 = sub_269854F24();
      if (OUTLINED_FUNCTION_39_1(v28))
      {
        v11 = "Unexpected state in execute()";
        goto LABEL_6;
      }

      v12 = *v5;
      goto LABEL_13;
    case 6uLL:
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      *(v0 + 368) = v29;
      *v29 = v30;
      v31 = sub_269726694;
      goto LABEL_20;
    case 7uLL:
      v24 = *(v0 + 344);
      v23 = *(v0 + 352);
      v25 = *(v0 + 336);
      sub_269853164();
      (*(v24 + 8))(v23, v25);
      goto LABEL_40;
    case 8uLL:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      __swift_project_value_buffer(*(v0 + 224), qword_28033D910);
      v36 = OUTLINED_FUNCTION_2_8();
      v37(v36);
      v38 = sub_2698548B4();
      v39 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_4(v39))
      {
        *OUTLINED_FUNCTION_16_2() = 0;
        OUTLINED_FUNCTION_18_8();
        _os_log_impl(v40, v41, v42, v43, v44, 2u);
        OUTLINED_FUNCTION_10();
      }

      v45 = *(v0 + 264);
      v46 = *(v0 + 224);
      v47 = *(v0 + 232);
      v48 = *(v0 + 216);

      (*(v47 + 8))(v45, v46);
      sub_26979609C(v48 + 56, v48 + 136, v48 + 16);
      sub_269728BA0(8uLL);
      v49 = OUTLINED_FUNCTION_22_3();
      v50(v49);
      goto LABEL_40;
    default:
      sub_2697017E4(*(v14 + 576));
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      v51 = *(v0 + 280);
      v52 = *(v0 + 224);
      v53 = *(v0 + 232);
      v54 = __swift_project_value_buffer(v52, qword_28033D910);
      v90 = *(v53 + 16);
      v90(v51, v54, v52);
      v55 = sub_2698548B4();
      v56 = sub_269854F04();
      if (OUTLINED_FUNCTION_19_4(v56))
      {
        v57 = OUTLINED_FUNCTION_16_2();
        *v57 = 0;
        _os_log_impl(&dword_269684000, v55, v56, "PlayLiveServiceWrapperFlow.execute() in .unableToSelectExecutionDevice state", v57, 2u);
        OUTLINED_FUNCTION_10();
      }

      v59 = *(v0 + 272);
      v58 = *(v0 + 280);
      v60 = *(v0 + 224);
      v61 = *(v0 + 232);
      v62 = *(v0 + 216);

      v89 = *(v61 + 8);
      v89(v58, v60);
      v90(v59, v54, v60);
      v63 = sub_2698548B4();
      v64 = sub_269854F14();
      if (OUTLINED_FUNCTION_39_1(v64))
      {
        v65 = OUTLINED_FUNCTION_16_2();
        *v65 = 0;
        _os_log_impl(&dword_269684000, v63, v54, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v65, 2u);
        OUTLINED_FUNCTION_10();
      }

      v66 = *(v0 + 344);
      v91 = *(v0 + 352);
      v67 = *(v0 + 336);
      v68 = *(v0 + 272);
      v69 = *(v0 + 224);

      v89(v68, v69);
      sub_2696A73F8(v62 + 56, v0 + 16);
      sub_2696F3E90(v62 + 136, v0 + 56);
      sub_2696A73F8(v62 + 496, v0 + 96);
      v70 = swift_allocObject();
      *(v70 + 16) = v16;
      *(v70 + 24) = *(v0 + 56);
      *(v70 + 40) = *(v0 + 72);
      *(v70 + 56) = *(v0 + 88);
      sub_26968E5D4((v0 + 96), v70 + 64);
      v71 = sub_269852774();
      OUTLINED_FUNCTION_68_0(v71);
      sub_269728D1C(v16);
      *(v0 + 200) = sub_269852764();
      sub_269853144();
      sub_269728BA0(v16);
      (*(v66 + 8))(v91, v67);

      goto LABEL_40;
  }
}

uint64_t sub_2697264C8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697265AC()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  OUTLINED_FUNCTION_16_11();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_269726694()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_269726778()
{
  OUTLINED_FUNCTION_2_7();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_2698538B4();
  v1[30] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[31] = v5;
  v1[32] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698548D4();
  v1[33] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[34] = v7;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_269726880()
{
  v47 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = __swift_project_value_buffer(v2, qword_28033D910);
  *(v0 + 296) = v4;
  v5 = *(v3 + 16);
  *(v0 + 304) = v5;
  *(v0 + 312) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_2698548B4();
  LOBYTE(v2) = sub_269854F04();

  if (os_log_type_enabled(v6, v2))
  {
    v7 = *(v0 + 232);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46 = v9;
    *v8 = 136315138;
    v10 = *(v7 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice);
    if (v10)
    {
      v11 = [v10 description];
      v12 = sub_269854A94();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    v17 = *(v0 + 288);
    v18 = *(v0 + 264);
    v19 = *(v0 + 272);
    v20 = sub_26974F520(v12, v14, &v46);

    *(v8 + 4) = v20;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v19 + 8))(v17, v18);
  }

  else
  {

    v15 = OUTLINED_FUNCTION_22_3();
    v16(v15);
  }

  v26 = *(v0 + 232);
  v27 = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice;
  *(v0 + 320) = OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice;
  v28 = *(v26 + v27);
  sub_2696A73F8(v26 + 296, v0 + 16);
  sub_2696A73F8(v26 + 336, v0 + 56);
  sub_2696A73F8(v26 + 456, v0 + 96);
  v29 = *(v0 + 120);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v29);
  OUTLINED_FUNCTION_3_20();
  v32 = v31;
  v33 = OUTLINED_FUNCTION_4_7();
  (*(v32 + 16))(v33, v30, v29);
  v34 = *v33;
  v35 = type metadata accessor for LiveServiceResolver();
  *(v0 + 160) = v35;
  *(v0 + 168) = &off_287A42540;
  *(v0 + 136) = v34;
  *(v0 + 200) = &type metadata for AccountProvider;
  *(v0 + 208) = &off_287A41348;
  type metadata accessor for PlayLiveServiceFlowStrategy();
  v36 = swift_allocObject();
  *(v0 + 328) = v36;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v35);
  OUTLINED_FUNCTION_3_20();
  v39 = v38;
  v40 = OUTLINED_FUNCTION_4_7();
  (*(v39 + 16))(v40, v37, v35);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, *(v0 + 200));
  v41 = *v40;
  v36[15] = v35;
  v36[16] = &off_287A42540;
  v36[12] = v41;
  v36[20] = &type metadata for AccountProvider;
  v36[21] = &off_287A41348;
  v36[22] = v28;
  sub_26968E5D4((v0 + 56), (v36 + 2));
  sub_26968E5D4((v0 + 16), (v36 + 7));
  v42 = v28;
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  sub_269853844();
  v43 = swift_task_alloc();
  *(v0 + 336) = v43;
  *v43 = v0;
  v43[1] = sub_269726CE0;
  v44 = *(v0 + 256);

  return sub_269756E18(v44, 0);
}

uint64_t sub_269726CE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *v6 = *v2;
  v5[43] = v1;

  v7 = v4[32];
  v8 = v4[31];
  v9 = v4[30];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_269726F40;
  }

  else
  {
    v5[44] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_269726E60;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_269726E60()
{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[29];
  __swift_project_boxed_opaque_existential_1((v3 + 176), *(v3 + 200));
  v4 = *(v3 + v2);
  sub_26979A9BC();

  sub_269853154();

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_269726F40()
{
  v1 = v0[38];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[33];

  v1(v3, v2, v4);
  v5 = sub_2698548B4();
  v6 = sub_269854F24();
  if (OUTLINED_FUNCTION_19_4(v6))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_10();
  }

  v12 = v0[43];
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[33];

  (*(v14 + 8))(v13, v15);
  sub_269853164();

  OUTLINED_FUNCTION_7_7();

  return v16();
}

void sub_269727070(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v116 = a1;
  v117 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  MEMORY[0x28223BE20](v5);
  v121 = (v105 - v6);
  v122 = sub_269853854();
  OUTLINED_FUNCTION_3_20();
  v119 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v120 = v10 - v9;
  v11 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  if (qword_2803226E0 != -1)
  {
    v15 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_31_5(v15, qword_28033D910);
  (*(v13 + 16))(v18);
  v19 = sub_2698548B4();
  v20 = sub_269854F44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_16_2();
    *v21 = 0;
    _os_log_impl(&dword_269684000, v19, v20, "Target device resolution is required, pushing device resolution flow", v21, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v13 + 8))(v18, v11);
  v22 = *(v3 + 576);
  *(v3 + 576) = 5;
  sub_269728BA0(v22);
  sub_2696A73F8(v3 + 16, v166);
  sub_2696A73F8(v3 + 256, v164);
  sub_2696A73F8(v3 + 216, v163);
  sub_2696A73F8(v3 + 376, v162);
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v23 = sub_2697B9550();
  __swift_mutable_project_boxed_opaque_existential_1(v164, v165);
  OUTLINED_FUNCTION_8_19();
  v115 = v24;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v27 = OUTLINED_FUNCTION_10_14(v26);
  v28(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v162, v162[3]);
  v29.isa = v19->isa;
  v30 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v161 = &off_287A3E7C8;
  v160 = v30;
  v159[0] = v29.isa;
  v157 = &type metadata for CoreAnalyticsService;
  v158 = &xmmword_287A41610;
  v118 = type metadata accessor for PlayVideoDeviceResolutionStrategy();
  v31 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v159, v30);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  v34 = OUTLINED_FUNCTION_10_14(v33);
  v35(v34);
  __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
  v36.isa = v19->isa;
  v31[10] = v30;
  v31[11] = &off_287A3E7C8;
  v108 = v30;
  v31[7] = v36.isa;
  v154 = &type metadata for CoreAnalyticsService;
  v155 = &xmmword_287A41610;
  v31[24] = 3;
  sub_26968E5D4(v166, (v31 + 2));
  sub_26968E5D4(v163, (v31 + 12));
  v31[22] = v23;
  v31[23] = &off_287A41E38;
  sub_26968E5D4(&v153, (v31 + 17));
  __swift_destroy_boxed_opaque_existential_0(v156);
  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(v162);
  __swift_destroy_boxed_opaque_existential_0(v164);
  v37 = v120;
  v38 = (v119 + 16);
  v39 = *(v119 + 16);
  v39(v120, v116, v122);
  sub_2696A73F8(v3 + 16, v166);
  sub_2696A73F8(v3 + 96, v164);
  sub_2696A73F8(v3 + 56, v163);
  sub_2696A73F8(v3 + 216, v162);
  sub_2696A73F8(v3 + 256, v159);
  sub_2696A73F8(v3 + 376, v156);
  sub_2696A73F8(v3 + 416, &v153);
  sub_2696A73F8(v3 + 496, v152);
  __swift_mutable_project_boxed_opaque_existential_1(v164, v165);
  OUTLINED_FUNCTION_8_19();
  v116 = v40;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_1();
  v43 = OUTLINED_FUNCTION_22_7(v42);
  v44(v43);
  __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
  OUTLINED_FUNCTION_8_19();
  v115 = v45;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_1();
  v48 = OUTLINED_FUNCTION_12_16(v47);
  v49(v48);
  __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
  __swift_mutable_project_boxed_opaque_existential_1(&v153, v154);
  v50 = *v23;
  v51 = xmmword_287A41610;
  v151[4] = &off_287A3F338;
  v151[3] = v118;
  v151[0] = v31;
  v106 = type metadata accessor for BaseDialogProvider();
  v150[4] = &off_287A3DBA0;
  v150[3] = v106;
  v150[0] = v50;
  v149[4] = &off_287A3E7C8;
  v149[3] = v30;
  v149[0] = v51;
  v148[3] = &type metadata for CoreAnalyticsService;
  v148[4] = &xmmword_287A41610;
  v147[3] = &type metadata for FeatureFlagServiceImpl;
  v147[4] = &off_287A41BD8;
  sub_2696A73F8(v151, v145);
  v52 = v121;
  v53 = v122;
  v39(v121, v37, v122);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
  sub_2696A73F8(v166, v144);
  sub_2696A73F8(v150, v143);
  sub_2696A73F8(v163, v142);
  sub_2696A73F8(v162, v141);
  sub_2696A73F8(v149, v139);
  sub_2696A73F8(v148, v138);
  sub_2696A73F8(v147, v137);
  sub_2696A73F8(v152, v136);
  v54 = v146;
  __swift_mutable_project_boxed_opaque_existential_1(v145, v146);
  OUTLINED_FUNCTION_8_19();
  v114 = v55;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3_1();
  v58 = OUTLINED_FUNCTION_22_7(v57);
  v59(v58);
  __swift_mutable_project_boxed_opaque_existential_1(v143, v143[3]);
  OUTLINED_FUNCTION_8_19();
  v113 = v60;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_3_1();
  v63 = OUTLINED_FUNCTION_10_14(v62);
  v64(v63);
  v65 = v140;
  __swift_mutable_project_boxed_opaque_existential_1(v139, v140);
  OUTLINED_FUNCTION_8_19();
  v111 = v66;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_3_1();
  v69 = OUTLINED_FUNCTION_11_17(v68);
  v70(v69);
  __swift_mutable_project_boxed_opaque_existential_1(v138, v138[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v137, v137[3]);
  v71 = *v52;
  v72 = *v54;
  v73 = *v38;
  v74 = v118;
  v135[3] = v118;
  v135[4] = &off_287A3F338;
  v135[0] = v71;
  v75 = v106;
  v133 = v106;
  v134 = &off_287A3DBA0;
  v132[0] = v72;
  v110 = v3;
  v76 = v108;
  v130 = v108;
  v131 = &off_287A3E7C8;
  v129[0] = v73;
  v127 = &type metadata for CoreAnalyticsService;
  v128 = &xmmword_287A41610;
  v124 = &type metadata for FeatureFlagServiceImpl;
  v125 = &off_287A41BD8;
  v112 = type metadata accessor for ExecutionDeviceResolutionFlow(0);
  v77 = OUTLINED_FUNCTION_68_0(v112);
  __swift_mutable_project_boxed_opaque_existential_1(v135, v74);
  OUTLINED_FUNCTION_8_19();
  v109 = v78;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3_1();
  v81 = OUTLINED_FUNCTION_11_17(v80);
  v82(v81);
  __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
  OUTLINED_FUNCTION_8_19();
  v107 = v83;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_3_1();
  v86 = OUTLINED_FUNCTION_12_16(v85);
  v87(v86);
  __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
  OUTLINED_FUNCTION_8_19();
  v105[1] = v88;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_3_1();
  v92 = (v91 - v90);
  (*(v93 + 16))(v91 - v90);
  __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
  __swift_mutable_project_boxed_opaque_existential_1(v123, v124);
  v94 = *v38;
  v95 = *v65;
  v96 = *v92;
  v77[5] = v74;
  v77[6] = &off_287A3F338;
  v77[2] = v94;
  v77[15] = v75;
  v77[16] = &off_287A3DBA0;
  v77[12] = v95;
  v77[30] = v76;
  v77[31] = &off_287A3E7C8;
  v77[27] = v96;
  v77[35] = &type metadata for CoreAnalyticsService;
  v77[36] = &xmmword_287A41610;
  v77[40] = &type metadata for FeatureFlagServiceImpl;
  v77[41] = &off_287A41BD8;

  __swift_destroy_boxed_opaque_existential_0(v152);
  __swift_destroy_boxed_opaque_existential_0(v162);
  __swift_destroy_boxed_opaque_existential_0(v163);
  __swift_destroy_boxed_opaque_existential_0(v166);
  v97 = v122;
  (*(v119 + 8))(v120, v122);
  __swift_destroy_boxed_opaque_existential_0(v147);
  __swift_destroy_boxed_opaque_existential_0(v148);
  __swift_destroy_boxed_opaque_existential_0(v149);
  __swift_destroy_boxed_opaque_existential_0(v150);
  __swift_destroy_boxed_opaque_existential_0(v151);
  v98 = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input;
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v97);
  swift_beginAccess();
  sub_269702838(v121, v77 + v98);
  swift_endAccess();
  sub_26968E5D4(v144, (v77 + 7));
  sub_26968E5D4(v142, (v77 + 17));
  sub_26968E5D4(v141, (v77 + 22));
  v102 = v77 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
  *v102 = 0;
  v102[8] = 3;
  sub_26968E5D4(v136, (v77 + 42));
  __swift_destroy_boxed_opaque_existential_0(v123);
  __swift_destroy_boxed_opaque_existential_0(v126);
  __swift_destroy_boxed_opaque_existential_0(v129);
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v135);
  __swift_destroy_boxed_opaque_existential_0(v137);
  __swift_destroy_boxed_opaque_existential_0(v138);
  __swift_destroy_boxed_opaque_existential_0(v139);
  __swift_destroy_boxed_opaque_existential_0(v143);
  __swift_destroy_boxed_opaque_existential_0(v145);
  __swift_destroy_boxed_opaque_existential_0(&v153);
  __swift_destroy_boxed_opaque_existential_0(v156);
  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(v164);
  *&v166[0] = v77;
  v103 = swift_allocObject();
  v104 = v110;
  *(v103 + 16) = sub_269728C64;
  *(v103 + 24) = v104;
  sub_269728D30(&qword_280323B20, type metadata accessor for ExecutionDeviceResolutionFlow, &unk_26985C150);

  sub_269853124();

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269727E2C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 536), *(v0 + 560));
  sub_269852C74();
  if (qword_280322468 != -1)
  {
    OUTLINED_FUNCTION_13_12(&qword_280322468);
  }

  LOBYTE(v3[0]) = 0;
  OUTLINED_FUNCTION_5_20();
  sub_269852C64();
  sub_269852BC4();

  sub_2696A73F8(v0 + 56, v3);
  v1 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v1);

  v3[0] = sub_269852764();
  sub_269853144();
}

uint64_t sub_269727F7C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v2[9] = swift_task_alloc();
  v3 = sub_2698532A4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269728074);
}

uint64_t sub_269728074()
{
  OUTLINED_FUNCTION_2_7();
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[13] = v2;
  *v2 = v3;
  v2[1] = sub_269728118;
  v4 = v0[12];

  return sub_2696B98F4(v4, v1 + 16);
}

uint64_t sub_269728118()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *(v4 + 112) = v0;

  if (v0)
  {
    v5 = sub_269728394;
  }

  else
  {
    v5 = sub_26972821C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26972821C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  sub_269852CA4();
  sub_269853234();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v11 = MEMORY[0x277D5C1D8];
  v5[3] = v10;
  v5[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_269853114();
  sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_269698048(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_7_7();

  return v12();
}

uint64_t sub_269728394()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

void sub_2697283FC(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  if (!a2)
  {
    v16 = qword_2803226E0;
    v17 = a1;
    v18 = v17;
    if (v16 != -1)
    {
      v17 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_31_5(v17, qword_28033D910);
    (*(v8 + 16))(v15);
    v19 = v18;
    v20 = sub_2698548B4();
    v21 = sub_269854F14();
    sub_269728BB4(a1, 0);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = a1;
      v24 = v19;
      _os_log_impl(&dword_269684000, v20, v21, "ExecutionDeviceResolutionFlow selected device: %@", v22, 0xCu);
      sub_269698048(v23, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v8 + 8))(v15, v6);
    v25 = *(v3 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice);
    *(v3 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_executionDevice) = a1;

    v26 = *(v3 + 576);
    v27 = 6;
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    if (!a1)
    {
      *(v3 + 576) = 7;
      goto LABEL_17;
    }

    if (qword_2803226E0 != -1)
    {
      v13 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_31_5(v13, qword_28033D910);
    (*(v8 + 16))(v12);
    v28 = sub_2698548B4();
    v29 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v29))
    {
      v30 = OUTLINED_FUNCTION_16_2();
      *v30 = 0;
      _os_log_impl(&dword_269684000, v28, v29, "DeviceResolutionResult resulted in failure", v30, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v8 + 8))(v12, v6);
    v26 = *(v3 + 576);
    v27 = 8;
LABEL_15:
    *(v3 + 576) = v27;
    sub_269728BA0(v26);
    OUTLINED_FUNCTION_21_0();
    return;
  }

  *(v3 + 576) = a1;
  sub_2697017E4(a1);
LABEL_17:
  OUTLINED_FUNCTION_21_0();

  sub_269728BA0(v31);
}

void *sub_26972873C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_2696D1E70((v0 + 17));
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);
  sub_269728BA0(v0[72]);
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents26PlayLiveServiceWrapperFlow_input, &qword_280323AF8, &unk_26985C1D0);

  return v0;
}

uint64_t sub_2697287FC()
{
  sub_26972873C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PlayLiveServiceWrapperFlow(uint64_t a1)
{
  result = qword_280323E60;
  if (!qword_280323E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2697288A8(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents26PlayLiveServiceWrapperFlowC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269728990(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 8))
  {
    return (*a1 + 2147483639);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 5;
  if (v5 >= 7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697289F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

void *sub_269728A44(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFC)
  {
    v2 = -2147483645;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_269728AC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_26972587C();
}

uint64_t sub_269728B64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayLiveServiceWrapperFlow(0);

  return sub_269852B84();
}

unint64_t sub_269728BA0(unint64_t result)
{
  if (result - 3 >= 6)
  {
    return sub_269701818(result);
  }

  return result;
}

void sub_269728BB4(id a1, char a2)
{
  if (a2 == 1)
  {
    sub_269701818(a1);
  }

  else if (!a2)
  {
  }
}

uint64_t sub_269728BD0()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2696DA938;

  return sub_269727F7C(v3, v0);
}

uint64_t sub_269728C70(uint64_t a1)
{
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_2696DAF80;

  return sub_2697975C4();
}

unint64_t sub_269728D1C(unint64_t result)
{
  if (result - 3 >= 6)
  {
    return sub_2697017E4(result);
  }

  return result;
}

uint64_t sub_269728D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269728E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_12(uint64_t a1)
{

  return swift_once();
}

void sub_269728F58()
{
  v0 = [objc_allocWithZone(type metadata accessor for PlayVideoIntent()) init];
  sub_2696D3780();
  v1 = [v0 typeName];
  v2 = sub_269854A94();
  v4 = v3;

  qword_28033D6A0 = v2;
  *algn_28033D6A8 = v4;
}

BOOL sub_269728FD8(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
    case 5:
      return a2 == 5;
    case 6:
      return a2 == 6;
    case 7:
      return a2 == 7;
    case 8:
      return a2 == 8;
    default:
      if (a2 - 3 < 6)
      {
        return 0;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          if (a2 != 1)
          {
            return 0;
          }
        }

        else if (a1 == 2)
        {
          if (a2 != 2)
          {
            return 0;
          }
        }

        else if (a2 < 3 || (sub_26973CD58(a1, a2) & 1) == 0)
        {
          return 0;
        }

        return 1;
      }

      return !a2;
  }
}

void sub_2697290CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v0);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v37 - v2;
  v41 = &v37 - v2;
  v42 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v42);
  sub_2698538C4();
  sub_269853524();
  v4 = type metadata accessor for BaseDialogProvider();
  v5 = swift_allocObject();
  v6 = sub_2698546A4();
  v7 = sub_269854684();
  v40 = v7;
  v8 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v9 = sub_2696C7734();
  v39 = v9;
  v38 = sub_269854694();
  sub_269852C84();
  v67[3] = &type metadata for UTSProvider;
  v67[4] = &off_287A43FA8;
  v10 = swift_allocObject();
  v67[0] = v10;
  v65 = &type metadata for CoreAnalyticsService;
  v66 = &xmmword_287A41610;
  v10[5] = &type metadata for UTSNetworkProvider;
  v10[6] = &off_287A43DC0;
  v11 = swift_allocObject();
  v10[2] = v11;
  sub_2697D24B0(&v64, (v11 + 16));
  v10[10] = &type metadata for CoreAnalyticsService;
  v10[11] = &xmmword_287A41610;
  v12 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v12);
  v13 = sub_269853254();
  sub_269852BB4();
  v63[3] = v4;
  v63[4] = &off_287A3DBA0;
  v63[0] = v5;
  v59[4] = MEMORY[0x277D61F10];
  v61 = &type metadata for VideoFlowFactoryImpl;
  v62 = &off_287A40968;
  v59[3] = v6;
  v59[0] = v7;
  v57 = v8;
  v58 = &off_287A3E7C8;
  v56[0] = v9;
  v55[3] = sub_269854674();
  v55[4] = MEMORY[0x277D61F08];
  v55[0] = v38;
  v53 = &type metadata for ContentResolver;
  v54 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v52[0] = swift_allocObject();
  sub_2696B2824(v67, v52[0] + 16);
  v50 = &type metadata for FeatureFlagServiceImpl;
  v51 = &off_287A41BD8;
  v47 = v12;
  v48 = MEMORY[0x277D5BD58];
  *&v46 = v13;
  v14 = type metadata accessor for PlayVideoWrapperFlow(0);
  v15 = OUTLINED_FUNCTION_68_0(v14);
  __swift_mutable_project_boxed_opaque_existential_1(v63, v4);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = (v18 - v17);
  (*(v20 + 16))(v18 - v17);
  __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v23 = OUTLINED_FUNCTION_27_5(v22);
  v24(v23);
  __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v27 = OUTLINED_FUNCTION_11_17(v26);
  v28(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  v29 = *v19;
  v30 = *v5;
  v45[3] = v4;
  v45[4] = &off_287A3DBA0;
  v45[0] = v29;
  v44[3] = &type metadata for VideoFlowFactoryImpl;
  v44[4] = &off_287A40968;
  v43[3] = v8;
  v43[4] = &off_287A3E7C8;
  v43[0] = v30;
  v15[55] = &type metadata for ContentResolver;
  v15[56] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v31 = swift_allocObject();
  v15[52] = v31;
  v32 = unk_287A41620;
  *(v31 + 16) = xmmword_287A41610;
  *(v31 + 32) = v32;
  *(v31 + 48) = qword_287A41630;
  v15[60] = &type metadata for FeatureFlagServiceImpl;
  v15[61] = &off_287A41BD8;
  v33 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input + v15, 1, 1, v42);
  *(v15 + OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice) = 0;
  swift_beginAccess();
  v34 = v40;

  v35 = v33 + v15;
  v36 = v41;
  sub_269728E28(v41, v35);
  swift_endAccess();
  sub_26970EF58(v70, (v15 + 2));
  sub_26970EF58(v69, (v15 + 7));
  sub_26970EF58(v45, (v15 + 12));
  sub_26970EF58(v45, (v15 + 17));
  sub_26970EF58(v44, (v15 + 22));
  sub_26970EF58(v59, (v15 + 27));
  sub_26970EF58(v43, (v15 + 32));
  v15[72] = 3;
  sub_26970EF58(v55, (v15 + 37));
  sub_26970EF58(v68, (v15 + 42));
  v15[50] = &type metadata for CoreAnalyticsService;
  v15[51] = &xmmword_287A41610;

  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v70);
  sub_2696CB05C(v36, &qword_280323AF8, &unk_26985C1D0);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v45);
  sub_26968E5D4(&v46, (v15 + 62));
  sub_26968E5D4(&v64, (v15 + 67));
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v60);
  __swift_destroy_boxed_opaque_existential_0(v63);
  sub_2696B28D4(v67);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269729760(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v4);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-1] - v6;
  v16[3] = &type metadata for SiriVideoFeatureKeys;
  v16[4] = sub_2696A2978();
  LOBYTE(v16[0]) = 4;
  v8 = sub_269853B34();
  __swift_destroy_boxed_opaque_existential_0(v16);
  if ((v8 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    if (sub_269852CE4())
    {
      return 0;
    }
  }

  if (v2[72] != 3)
  {
    return 0;
  }

  v9 = sub_269853854();
  OUTLINED_FUNCTION_3_14();
  (*(v10 + 16))(v7, a1, v9);
  v11 = 1;
  OUTLINED_FUNCTION_29_5();
  v12 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input;
  swift_beginAccess();
  sub_269702838(v7, v12 + v2);
  swift_endAccess();
  v13 = v2[72];
  v2[72] = 4;
  sub_269728BA0(v13);
  return v11;
}

uint64_t sub_2697298D4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayVideoWrapperFlow(0);
  sub_26972CCD0(&qword_280323E90, type metadata accessor for PlayVideoWrapperFlow, &unk_26985D710);
  return sub_269852B54();
}

uint64_t sub_269729964()
{
  OUTLINED_FUNCTION_2_7();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_2698548D4();
  v1[23] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[24] = v4;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v5 = sub_2698538B4();
  v1[32] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[33] = v6;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v7);
  v1[36] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269853854();
  v1[37] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[38] = v9;
  v1[39] = OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

void sub_269729B30()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 176);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input;
  swift_beginAccess();
  sub_26970897C(&v4[v3], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2696CB05C(*(v0 + 288), &qword_280323AF8, &unk_26985C1D0);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_17_8();
    v5 = (v4 + 200);
    v6 = *(v5 - 1);
    __swift_project_value_buffer(*(v5 - 2), qword_28033D910);
    v7 = OUTLINED_FUNCTION_2_8();
    v8(v7);
    v9 = sub_2698548B4();
    v10 = sub_269854F24();
    if (OUTLINED_FUNCTION_39_1(v10))
    {
      v11 = "LaunchAppWrapperFlow.execute Input is nil. Error executing request";
LABEL_6:
      v12 = *v5;
      v13 = OUTLINED_FUNCTION_16_2();
      *v13 = 0;
      _os_log_impl(&dword_269684000, v9, v6, v11, v13, 2u);
      OUTLINED_FUNCTION_10();
    }

    else
    {
      v12 = *v5;
    }
  }

  else
  {
    v14 = *(v0 + 176);
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 288), *(v0 + 296));
    v15 = *(v14 + 576);
    switch(v15)
    {
      case 3uLL:
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        OUTLINED_FUNCTION_17_8();
        v5 = (v4 + 216);
        v6 = *(v5 - 3);
        __swift_project_value_buffer(*(v5 - 4), qword_28033D910);
        v16 = OUTLINED_FUNCTION_2_8();
        v17(v16);
        v9 = sub_2698548B4();
        v18 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v18))
        {
          v11 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
          goto LABEL_6;
        }

        v12 = *v5;
        break;
      case 4uLL:
        v32 = __swift_project_boxed_opaque_existential_1((*(v0 + 176) + 536), *(*(v0 + 176) + 560));
        sub_269852C74();
        if (qword_280322470 != -1)
        {
          swift_once();
        }

        v33 = *(v0 + 280);
        v35 = *(v0 + 256);
        v34 = *(v0 + 264);

        sub_269852C64();
        sub_269852BC4();

        sub_269853844();
        v36 = (*(v34 + 88))(v33, v35);
        if (v36 == *MEMORY[0x277D5C128] || v36 == *MEMORY[0x277D5C140] || v36 == *MEMORY[0x277D5C148])
        {
          v39 = *(v0 + 272);
          v40 = *(v0 + 176);
          v41 = *(*(v0 + 264) + 8);
          (v41)(*(v0 + 280), *(v0 + 256));
          sub_269853844();
          v42 = sub_269793450(v39, (v40 + 16));
          v43 = OUTLINED_FUNCTION_22_3();
          v41(v43);
          if (v42)
          {
            sub_26972B180(*(v0 + 312), *(v0 + 168));
            v44 = OUTLINED_FUNCTION_22_3();
            v45(v44);
LABEL_47:
            OUTLINED_FUNCTION_11_18();

            OUTLINED_FUNCTION_7_7();
            OUTLINED_FUNCTION_7_8();

            __asm { BRAA            X1, X16 }
          }

          v29 = swift_task_alloc();
          *(v0 + 320) = v29;
          *v29 = v0;
          v30 = sub_26972A578;
LABEL_20:
          v29[1] = v30;
          OUTLINED_FUNCTION_7_8();

          sub_26972A828();
          return;
        }

        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        OUTLINED_FUNCTION_17_8();
        v5 = v32 + 31;
        v6 = *(v5 - 7);
        __swift_project_value_buffer(*(v5 - 8), qword_28033D910);
        v84 = OUTLINED_FUNCTION_2_8();
        v85(v84);
        v9 = sub_2698548B4();
        v86 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v86))
        {
          v11 = "Unexpected parse type in input";
          goto LABEL_6;
        }

        v12 = *v5;
        break;
      case 5uLL:
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        v5 = (v0 + 208);
        v25 = *(v0 + 208);
        v6 = *(v0 + 184);
        v26 = *(v0 + 192);
        v27 = __swift_project_value_buffer(v6, qword_28033D910);
        (*(v26 + 16))(v25, v27, v6);
        v9 = sub_2698548B4();
        v28 = sub_269854F24();
        if (OUTLINED_FUNCTION_39_1(v28))
        {
          v11 = "Unexpected state in execute()";
          goto LABEL_6;
        }

        v12 = *v5;
        break;
      case 6uLL:
        v29 = swift_task_alloc();
        *(v0 + 328) = v29;
        *v29 = v0;
        v30 = sub_26972A744;
        goto LABEL_20;
      case 7uLL:
        v23 = *(v0 + 304);
        v22 = *(v0 + 312);
        v24 = *(v0 + 296);
        sub_269853164();
        (*(v23 + 8))(v22, v24);
        goto LABEL_47;
      case 8uLL:
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        __swift_project_value_buffer(*(v0 + 184), qword_28033D910);
        v46 = OUTLINED_FUNCTION_2_8();
        v47(v46);
        v48 = sub_2698548B4();
        v49 = sub_269854F24();
        if (os_log_type_enabled(v48, v49))
        {
          *OUTLINED_FUNCTION_16_2() = 0;
          OUTLINED_FUNCTION_18_8();
          _os_log_impl(v50, v51, v52, v53, v54, 2u);
          OUTLINED_FUNCTION_10();
        }

        v55 = *(v0 + 224);
        v56 = *(v0 + 184);
        v57 = *(v0 + 192);
        v58 = *(v0 + 176);

        (*(v57 + 8))(v55, v56);
        sub_26979609C(v58 + 56, v58 + 136, v58 + 16);
        sub_269728BA0(8uLL);
        v59 = OUTLINED_FUNCTION_22_3();
        v60(v59);
        goto LABEL_47;
      default:
        sub_2697017E4(*(v14 + 576));
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        v61 = *(v0 + 240);
        v62 = *(v0 + 184);
        v63 = *(v0 + 192);
        v64 = __swift_project_value_buffer(v62, qword_28033D910);
        v88 = *(v63 + 16);
        v88(v61, v64, v62);
        v65 = sub_2698548B4();
        v66 = sub_269854F04();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = OUTLINED_FUNCTION_16_2();
          *v67 = 0;
          _os_log_impl(&dword_269684000, v65, v66, "PlayVideoWrapperFlow.execute() in .unableToSelectExecutionDevice state", v67, 2u);
          OUTLINED_FUNCTION_10();
        }

        v69 = *(v0 + 232);
        v68 = *(v0 + 240);
        v70 = *(v0 + 184);
        v71 = *(v0 + 192);
        v72 = *(v0 + 176);

        v87 = *(v71 + 8);
        v87(v68, v70);
        v88(v69, v64, v70);
        v73 = sub_2698548B4();
        v74 = sub_269854F14();
        if (OUTLINED_FUNCTION_39_1(v74))
        {
          v75 = OUTLINED_FUNCTION_16_2();
          *v75 = 0;
          _os_log_impl(&dword_269684000, v73, v64, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v75, 2u);
          OUTLINED_FUNCTION_10();
        }

        v76 = *(v0 + 304);
        v89 = *(v0 + 312);
        v77 = *(v0 + 296);
        v78 = *(v0 + 232);
        v79 = *(v0 + 184);

        v87(v78, v79);
        sub_26970EF58(v72 + 56, v0 + 16);
        sub_2696F3E90(v72 + 136, v0 + 56);
        sub_26970EF58(v72 + 496, v0 + 96);
        v80 = swift_allocObject();
        *(v80 + 16) = v15;
        *(v80 + 24) = *(v0 + 56);
        *(v80 + 40) = *(v0 + 72);
        *(v80 + 56) = *(v0 + 88);
        sub_26968E5D4((v0 + 96), v80 + 64);
        v81 = sub_269852774();
        OUTLINED_FUNCTION_68_0(v81);
        sub_269728D1C(v15);
        *(v0 + 160) = sub_269852764();
        sub_269853144();
        sub_269728BA0(v15);
        (*(v76 + 8))(v89, v77);

        goto LABEL_47;
    }
  }

  v21 = v0 + 184;
  v20 = *(v0 + 184);
  v19 = *(v21 + 8);

  (*(v19 + 8))(v12, v20);
  sub_269855354();
  OUTLINED_FUNCTION_7_8();
}

uint64_t sub_26972A578()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26972A65C()
{
  (*(v0[38] + 8))(v0[39], v0[37]);
  OUTLINED_FUNCTION_11_18();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26972A744()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26972A828()
{
  OUTLINED_FUNCTION_2_7();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = sub_2698538B4();
  v1[40] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[41] = v5;
  v1[42] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698548D4();
  v1[43] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[44] = v7;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26972A930()
{
  v52 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = __swift_project_value_buffer(v2, qword_28033D910);
  *(v0 + 376) = v4;
  v5 = *(v3 + 16);
  *(v0 + 384) = v5;
  *(v0 + 392) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_2698548B4();
  LOBYTE(v2) = sub_269854F04();

  if (os_log_type_enabled(v6, v2))
  {
    v7 = *(v0 + 312);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51 = v9;
    *v8 = 136315138;
    v10 = *(v7 + OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice);
    if (v10)
    {
      v11 = [v10 description];
      v12 = sub_269854A94();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    v17 = *(v0 + 368);
    v18 = *(v0 + 344);
    v19 = *(v0 + 352);
    v20 = sub_26974F520(v12, v14, &v51);

    *(v8 + 4) = v20;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v19 + 8))(v17, v18);
  }

  else
  {

    v15 = OUTLINED_FUNCTION_22_3();
    v16(v15);
  }

  v26 = *(v0 + 312);
  sub_26970EF58(v26 + 16, v0 + 16);
  v27 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice;
  *(v0 + 400) = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice;
  v50 = *(v26 + v27);
  sub_26970EF58(v26 + 296, v0 + 56);
  sub_26970EF58(v26 + 336, v0 + 96);
  sub_26970EF58(v26 + 416, v0 + 136);
  v28 = *(v0 + 160);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v28);
  OUTLINED_FUNCTION_3_20();
  v31 = v30;
  v32 = OUTLINED_FUNCTION_4_7();
  (*(v31 + 16))(v32, v29, v28);
  *(v0 + 200) = &type metadata for ContentResolver;
  *(v0 + 208) = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v33 = swift_allocObject();
  *(v0 + 176) = v33;
  v34 = *(v32 + 32);
  v35 = *(v32 + 16);
  *(v33 + 16) = *v32;
  *(v33 + 32) = v35;
  *(v33 + 48) = v34;
  *(v0 + 240) = &type metadata for AccountProvider;
  *(v0 + 248) = &off_287A41348;
  type metadata accessor for PlayVideoFlowStrategy();
  v36 = swift_allocObject();
  *(v0 + 408) = v36;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, &type metadata for ContentResolver);
  OUTLINED_FUNCTION_3_20();
  v39 = v38;
  v40 = OUTLINED_FUNCTION_4_7();
  (*(v39 + 16))(v40, v37, &type metadata for ContentResolver);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, &type metadata for AccountProvider);
  *(v0 + 280) = &type metadata for ContentResolver;
  *(v0 + 288) = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v41 = swift_allocObject();
  *(v0 + 256) = v41;
  v42 = *(v40 + 32);
  v43 = *(v40 + 16);
  *(v41 + 16) = *v40;
  *(v41 + 32) = v43;
  *(v41 + 48) = v42;
  v36[31] = &type metadata for AccountProvider;
  v36[32] = &off_287A41348;
  sub_26968E5D4((v0 + 16), (v36 + 3));
  v36[2] = v50;
  sub_26970EF58(v0 + 96, (v36 + 8));
  sub_26968E5D4((v0 + 56), (v36 + 13));
  sub_26968E5D4((v0 + 96), (v36 + 18));
  sub_26968E5D4((v0 + 256), (v36 + 23));
  v44 = v50;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  sub_269853844();
  v45 = swift_task_alloc();
  *(v0 + 416) = v45;
  *v45 = v0;
  v45[1] = sub_26972ADE8;
  OUTLINED_FUNCTION_7_8();

  return sub_269762324(v46, v47);
}

uint64_t sub_26972ADE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *v6 = *v2;
  v5[53] = v1;

  v7 = v4[42];
  v8 = v4[41];
  v9 = v4[40];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_26972B048;
  }

  else
  {
    v5[54] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_26972AF68;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_26972AF68()
{
  v1 = v0[54];
  v2 = v0[50];
  v3 = v0[39];
  __swift_project_boxed_opaque_existential_1((v3 + 176), *(v3 + 200));
  v4 = *(v3 + v2);
  sub_26979A778();

  sub_269853154();

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_26972B048()
{
  v1 = v0[48];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[43];

  v1(v3, v2, v4);
  v5 = sub_2698548B4();
  v6 = sub_269854F24();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_10();
  }

  v12 = v0[53];
  v14 = v0[44];
  v13 = v0[45];
  v15 = v0[43];

  (*(v14 + 8))(v13, v15);
  sub_269853164();

  OUTLINED_FUNCTION_7_7();

  return v16();
}

void sub_26972B180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a1;
  v112 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v4);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v116 = (v100 - v6);
  v117 = sub_269853854();
  OUTLINED_FUNCTION_3_20();
  v114 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v115 = v10 - v9;
  v11 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v18 = __swift_project_value_buffer(v11, qword_28033D910);
  (*(v13 + 16))(v17, v18, v11);
  v19 = sub_2698548B4();
  v20 = sub_269854F44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_16_2();
    *v21 = 0;
    _os_log_impl(&dword_269684000, v19, v20, "Target device resolution is required, pushing device resolution flow", v21, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v13 + 8))(v17, v11);
  v22 = *(v3 + 576);
  *(v3 + 576) = 5;
  sub_269728BA0(v22);
  sub_26970EF58(v3 + 16, v161);
  sub_26970EF58(v3 + 256, v159);
  sub_26970EF58(v3 + 216, v158);
  sub_26970EF58(v3 + 376, v157);
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v23 = sub_2697B9550();
  __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
  OUTLINED_FUNCTION_8_19();
  v110 = v24;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v27 = OUTLINED_FUNCTION_10_14(v26);
  v28(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v157, v157[3]);
  v29.isa = v19->isa;
  v30 = type metadata accessor for DeviceSelectionDonationProvider(0);
  v156 = &off_287A3E7C8;
  v155 = v30;
  v154[0] = v29.isa;
  v152 = &type metadata for CoreAnalyticsService;
  v153 = &xmmword_287A41610;
  v113 = type metadata accessor for PlayVideoDeviceResolutionStrategy();
  v31 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v154, v30);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  v34 = OUTLINED_FUNCTION_10_14(v33);
  v35(v34);
  __swift_mutable_project_boxed_opaque_existential_1(v151, v152);
  v36.isa = v19->isa;
  v31[10] = v30;
  v31[11] = &off_287A3E7C8;
  v103 = v30;
  v31[7] = v36.isa;
  v149 = &type metadata for CoreAnalyticsService;
  v150 = &xmmword_287A41610;
  v31[24] = 3;
  sub_26968E5D4(v161, (v31 + 2));
  sub_26968E5D4(v158, (v31 + 12));
  v31[22] = v23;
  v31[23] = &off_287A41E38;
  sub_26968E5D4(&v148, (v31 + 17));
  __swift_destroy_boxed_opaque_existential_0(v151);
  __swift_destroy_boxed_opaque_existential_0(v154);
  __swift_destroy_boxed_opaque_existential_0(v157);
  __swift_destroy_boxed_opaque_existential_0(v159);
  v37 = v115;
  v38 = (v114 + 16);
  v39 = *(v114 + 16);
  v39(v115, v111, v117);
  sub_26970EF58(v3 + 16, v161);
  sub_26970EF58(v3 + 96, v159);
  sub_26970EF58(v3 + 56, v158);
  sub_26970EF58(v3 + 216, v157);
  sub_26970EF58(v3 + 256, v154);
  sub_26970EF58(v3 + 376, v151);
  sub_26970EF58(v3 + 456, &v148);
  sub_26970EF58(v3 + 496, v147);
  __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
  OUTLINED_FUNCTION_8_19();
  v111 = v40;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_1();
  v43 = OUTLINED_FUNCTION_22_7(v42);
  v44(v43);
  __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  OUTLINED_FUNCTION_8_19();
  v110 = v45;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_1();
  v48 = OUTLINED_FUNCTION_12_16(v47);
  v49(v48);
  __swift_mutable_project_boxed_opaque_existential_1(v151, v152);
  __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  v50 = *v23;
  v51 = xmmword_287A41610;
  v146[4] = &off_287A3F338;
  v146[3] = v113;
  v146[0] = v31;
  v101 = type metadata accessor for BaseDialogProvider();
  v145[4] = &off_287A3DBA0;
  v145[3] = v101;
  v145[0] = v50;
  v144[4] = &off_287A3E7C8;
  v144[3] = v30;
  v144[0] = v51;
  v143[3] = &type metadata for CoreAnalyticsService;
  v143[4] = &xmmword_287A41610;
  v142[3] = &type metadata for FeatureFlagServiceImpl;
  v142[4] = &off_287A41BD8;
  sub_26970EF58(v146, v140);
  v52 = v116;
  v39(v116, v37, v117);
  OUTLINED_FUNCTION_29_5();
  sub_26970EF58(v161, v139);
  sub_26970EF58(v145, v138);
  sub_26970EF58(v158, v137);
  sub_26970EF58(v157, v136);
  sub_26970EF58(v144, v134);
  sub_26970EF58(v143, v133);
  sub_26970EF58(v142, v132);
  sub_26970EF58(v147, v131);
  v53 = v141;
  __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
  OUTLINED_FUNCTION_8_19();
  v109 = v54;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3_1();
  v57 = OUTLINED_FUNCTION_22_7(v56);
  v58(v57);
  __swift_mutable_project_boxed_opaque_existential_1(v138, v138[3]);
  OUTLINED_FUNCTION_8_19();
  v108 = v59;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_1();
  v62 = OUTLINED_FUNCTION_10_14(v61);
  v63(v62);
  v64 = v135;
  __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
  OUTLINED_FUNCTION_8_19();
  v106 = v65;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_3_1();
  v68 = OUTLINED_FUNCTION_11_17(v67);
  v69(v68);
  __swift_mutable_project_boxed_opaque_existential_1(v133, v133[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v132, v132[3]);
  v70 = *v52;
  v71 = *v53;
  v72 = *v38;
  v73 = v113;
  v130[3] = v113;
  v130[4] = &off_287A3F338;
  v130[0] = v70;
  v74 = v101;
  v128 = v101;
  v129 = &off_287A3DBA0;
  v127[0] = v71;
  v105 = v3;
  v75 = v103;
  v125 = v103;
  v126 = &off_287A3E7C8;
  v124[0] = v72;
  v122 = &type metadata for CoreAnalyticsService;
  v123 = &xmmword_287A41610;
  v119 = &type metadata for FeatureFlagServiceImpl;
  v120 = &off_287A41BD8;
  v107 = type metadata accessor for ExecutionDeviceResolutionFlow(0);
  v76 = OUTLINED_FUNCTION_68_0(v107);
  __swift_mutable_project_boxed_opaque_existential_1(v130, v73);
  OUTLINED_FUNCTION_8_19();
  v104 = v77;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_3_1();
  v80 = OUTLINED_FUNCTION_11_17(v79);
  v81(v80);
  __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
  OUTLINED_FUNCTION_8_19();
  v102 = v82;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_3_1();
  v85 = OUTLINED_FUNCTION_12_16(v84);
  v86(v85);
  __swift_mutable_project_boxed_opaque_existential_1(v124, v125);
  OUTLINED_FUNCTION_8_19();
  v100[1] = v87;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_3_1();
  v90 = OUTLINED_FUNCTION_27_5(v89);
  v91(v90);
  __swift_mutable_project_boxed_opaque_existential_1(v121, v122);
  __swift_mutable_project_boxed_opaque_existential_1(v118, v119);
  v92 = *v38;
  v93 = *v64;
  v94 = *v39;
  v76[5] = v73;
  v76[6] = &off_287A3F338;
  v76[2] = v92;
  v76[15] = v74;
  v76[16] = &off_287A3DBA0;
  v76[12] = v93;
  v76[30] = v75;
  v76[31] = &off_287A3E7C8;
  v76[27] = v94;
  v76[35] = &type metadata for CoreAnalyticsService;
  v76[36] = &xmmword_287A41610;
  v76[40] = &type metadata for FeatureFlagServiceImpl;
  v76[41] = &off_287A41BD8;

  __swift_destroy_boxed_opaque_existential_0(v147);
  __swift_destroy_boxed_opaque_existential_0(v157);
  __swift_destroy_boxed_opaque_existential_0(v158);
  __swift_destroy_boxed_opaque_existential_0(v161);
  v95 = v117;
  (*(v114 + 8))(v115, v117);
  __swift_destroy_boxed_opaque_existential_0(v142);
  __swift_destroy_boxed_opaque_existential_0(v143);
  __swift_destroy_boxed_opaque_existential_0(v144);
  __swift_destroy_boxed_opaque_existential_0(v145);
  __swift_destroy_boxed_opaque_existential_0(v146);
  v96 = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input;
  __swift_storeEnumTagSinglePayload(v76 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input, 1, 1, v95);
  swift_beginAccess();
  sub_269702838(v116, v76 + v96);
  swift_endAccess();
  sub_26968E5D4(v139, (v76 + 7));
  sub_26968E5D4(v137, (v76 + 17));
  sub_26968E5D4(v136, (v76 + 22));
  v97 = v76 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
  *v97 = 0;
  v97[8] = 3;
  sub_26968E5D4(v131, (v76 + 42));
  __swift_destroy_boxed_opaque_existential_0(v118);
  __swift_destroy_boxed_opaque_existential_0(v121);
  __swift_destroy_boxed_opaque_existential_0(v124);
  __swift_destroy_boxed_opaque_existential_0(v127);
  __swift_destroy_boxed_opaque_existential_0(v130);
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v133);
  __swift_destroy_boxed_opaque_existential_0(v134);
  __swift_destroy_boxed_opaque_existential_0(v138);
  __swift_destroy_boxed_opaque_existential_0(v140);
  __swift_destroy_boxed_opaque_existential_0(&v148);
  __swift_destroy_boxed_opaque_existential_0(v151);
  __swift_destroy_boxed_opaque_existential_0(v154);
  __swift_destroy_boxed_opaque_existential_0(v159);
  *&v161[0] = v76;
  v98 = swift_allocObject();
  v99 = v105;
  *(v98 + 16) = sub_26972CC1C;
  *(v98 + 24) = v99;
  sub_26972CCD0(&qword_280323B20, type metadata accessor for ExecutionDeviceResolutionFlow, &unk_26985C150);

  sub_269853124();

  OUTLINED_FUNCTION_21_0();
}

void sub_26972BF28(void *a1, char a2)
{
  v108 = a1;
  v3 = sub_2698538B4();
  OUTLINED_FUNCTION_3_20();
  v105 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_269853854();
  OUTLINED_FUNCTION_3_20();
  v104 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v15);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v98 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v19);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v98 - v21;
  v103 = sub_2698525E4();
  OUTLINED_FUNCTION_3_20();
  v101 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v100 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v98 - v28;
  MEMORY[0x28223BE20](v27);
  v102 = &v98 - v30;
  sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v106 = v32;
  v107 = v31;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v36);
  v39 = &v98 - v38;
  if (!a2)
  {
    v45 = qword_2803226E0;
    v46 = v108;
    v47 = v108;
    if (v45 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v48 = v107;
    v49 = __swift_project_value_buffer(v107, qword_28033D910);
    v50 = v106;
    (*(v106 + 16))(v39, v49, v48);
    v51 = v47;
    v52 = sub_2698548B4();
    v53 = sub_269854F14();
    sub_269728BB4(v46, 0);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v46;
      v56 = v51;
      _os_log_impl(&dword_269684000, v52, v53, "ExecutionDeviceResolutionFlow selected device: %@", v54, 0xCu);
      sub_2696CB05C(v55, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v50 + 8))(v39, v48);
    v57 = v109;
    v58 = *(v109 + OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice);
    *(v109 + OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_executionDevice) = v46;

    v59 = v57[72];
    v57[72] = 6;
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    v99 = v37;
    v40 = OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input;
    v41 = v109;
    swift_beginAccess();
    sub_26970897C(v40 + v41, v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, v9))
    {
      v42 = &qword_280323AF8;
      v43 = &unk_26985C1D0;
      v44 = v18;
    }

    else
    {
      v67 = v104;
      (*(v104 + 16))(v14, v18, v9);
      sub_2696CB05C(v18, &qword_280323AF8, &unk_26985C1D0);
      sub_269853844();
      (*(v67 + 8))(v14, v9);
      sub_2696CB644(v22);
      (*(v105 + 8))(v8, v3);
      v68 = sub_269852474();
      if (__swift_getEnumTagSinglePayload(v22, 1, v68) != 1)
      {
        sub_269852414();
        OUTLINED_FUNCTION_3_14();
        v73 = OUTLINED_FUNCTION_22_3();
        v74(v73);
        v76 = v101;
        v75 = v102;
        v77 = v103;
        (*(v101 + 32))(v102, v29, v103);
        sub_2696D5CEC();
        v69 = v108;
        if (v78)
        {
          v79 = v41[5];
          v80 = v41[6];
          __swift_project_boxed_opaque_existential_1(v41 + 2, v79);
          if (sub_2696CB5D4(v79, v80))
          {
            if (qword_280322700 != -1)
            {
              swift_once();
            }

            v81 = v107;
            v82 = __swift_project_value_buffer(v107, qword_281571B38);
            v83 = v106;
            v84 = v99;
            (*(v106 + 16))(v99, v82, v81);
            v85 = v100;
            (*(v76 + 16))(v100, v75, v77);
            v86 = sub_2698548B4();
            v87 = v75;
            v88 = sub_269854F04();
            if (os_log_type_enabled(v86, v88))
            {
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v110 = v90;
              *v89 = 136315138;
              v91 = sub_2696D5F00();
              v92 = v85;
              v94 = v93;
              v95 = *(v76 + 8);
              v95(v92, v103);
              v96 = sub_26974F520(v91, v94, &v110);

              *(v89 + 4) = v96;
              _os_log_impl(&dword_269684000, v86, v88, "PlayVideoWrapperFlow.processDeviceResolutionResult found no devices, but it's possible the user was referring to the local TV app with targetDevice description: %s", v89, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v90);
              OUTLINED_FUNCTION_10();
              OUTLINED_FUNCTION_10();

              (*(v83 + 8))(v99, v107);
              v95(v102, v103);
            }

            else
            {

              v97 = *(v76 + 8);
              v97(v85, v77);
              (*(v83 + 8))(v84, v81);
              v97(v87, v77);
            }

            v59 = v41[72];
            v41[72] = 6;
            goto LABEL_20;
          }
        }

        (*(v76 + 8))(v75, v77);
LABEL_19:
        v70 = v41[72];
        v41[72] = v69;
        sub_2697017E4(v69);
        v59 = v70;
LABEL_20:
        sub_269728BA0(v59);
        OUTLINED_FUNCTION_21_0();
        return;
      }

      v42 = &qword_280323360;
      v43 = &unk_26985AB80;
      v44 = v22;
    }

    sub_2696CB05C(v44, v42, v43);
    v69 = v108;
    goto LABEL_19;
  }

  v60 = v109;
  v62 = v106;
  v61 = v107;
  if (v108)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v63 = __swift_project_value_buffer(v61, qword_28033D910);
    (*(v62 + 16))(v35, v63, v61);
    v64 = sub_2698548B4();
    v65 = sub_269854F24();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = OUTLINED_FUNCTION_16_2();
      *v66 = 0;
      _os_log_impl(&dword_269684000, v64, v65, "DeviceResolutionResult resulted in failure", v66, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v62 + 8))(v35, v61);
    v59 = v60[72];
    v60[72] = 8;
    goto LABEL_20;
  }

  v109[72] = 7;
  OUTLINED_FUNCTION_21_0();

  sub_269728BA0(v71);
}

void *sub_26972C894()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_2696D1E70((v0 + 17));
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);
  sub_269728BA0(v0[72]);
  sub_2696CB05C(OBJC_IVAR____TtC16SiriVideoIntents20PlayVideoWrapperFlow_input + v0, &qword_280323AF8, &unk_26985C1D0);

  return v0;
}

uint64_t sub_26972C954()
{
  sub_26972C894();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PlayVideoWrapperFlow(uint64_t a1)
{
  result = qword_280323E80;
  if (!qword_280323E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26972CA00(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents04PlayB11WrapperFlowC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26972CB44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_269729964();
}

uint64_t sub_26972CBE0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayVideoWrapperFlow(0);

  return sub_269852B84();
}

uint64_t sub_26972CC20(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2696DA938;

  return sub_2697975C4();
}

uint64_t sub_26972CCD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_29_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void *sub_26972CD80(uint64_t a1)
{
  sub_269853524();
  v1 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v1);
  v2 = sub_269853254();
  sub_2698538C4();
  type metadata accessor for LocUtil();
  v3 = swift_allocObject();
  sub_26968E5D4(v40, v3 + 16);
  sub_2698538C4();
  v4 = type metadata accessor for BaseDialogProvider();
  v5 = swift_allocObject();
  v6 = sub_2698546A4();
  v7 = sub_269854684();
  v8 = type metadata accessor for GlobalsImpl();
  inited = swift_initStaticObject();
  sub_269852BB4();
  v37 = v1;
  v38 = MEMORY[0x277D5BD58];
  *&v36 = v2;
  v35[3] = v4;
  v35[4] = &off_287A3DBA0;
  v35[0] = v5;
  v33 = v6;
  v34 = MEMORY[0x277D61F10];
  *&v32 = v7;
  v31[3] = v8;
  v31[4] = &off_287A41CD0;
  v31[0] = inited;
  v30[3] = &type metadata for LSApplicationRecordProvider;
  v30[4] = &xmmword_287A41430;
  v10 = type metadata accessor for SearchVideoFlow(0);
  v11 = OUTLINED_FUNCTION_68_0(v10);
  __swift_mutable_project_boxed_opaque_existential_1(v35, v4);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v8);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for LSApplicationRecordProvider);
  v22 = *v15;
  v23 = *v20;
  v11[21] = v4;
  v11[22] = &off_287A3DBA0;
  v11[18] = v22;
  v11[31] = v8;
  v11[32] = &off_287A41CD0;
  v11[28] = v23;
  v24 = v11 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_appProvider;
  *(v24 + 3) = &type metadata for LSApplicationRecordProvider;
  *(v24 + 4) = &xmmword_287A41430;
  sub_269853854();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_26968E5D4(v41, (v11 + 2));
  sub_26968E5D4(&v36, (v11 + 7));
  v11[12] = v3;
  sub_26968E5D4(v40, (v11 + 13));
  sub_26968E5D4(&v32, (v11 + 23));
  sub_26968E5D4(&v39, v11 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_eventSender);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v11;
}

uint64_t sub_26972D0B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v15 = __swift_project_value_buffer(v8, qword_28033D910);
  (*(v10 + 16))(v14, v15, v8);
  v16 = sub_2698548B4();
  v17 = sub_269854F14();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_269684000, v16, v17, "SearchVideoFlow.on() called", v18, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v10 + 8))(v14, v8);
  v19 = sub_269853854();
  OUTLINED_FUNCTION_4_3();
  (*(v20 + 16))(v7, a1, v19);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  v24 = OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_input;
  swift_beginAccess();
  sub_269720B24(v7, v2 + v24, &qword_280323AF8, &unk_26985C1D0);
  swift_endAccess();
  return 1;
}

uint64_t sub_26972D304()
{
  type metadata accessor for SearchVideoFlow(0);
  sub_2697339D4(&qword_280323EB0, type metadata accessor for SearchVideoFlow, &unk_26985D830);
  OUTLINED_FUNCTION_2_6();
  return sub_269852B54();
}

uint64_t sub_26972D390()
{
  OUTLINED_FUNCTION_2_7();
  v1[41] = v2;
  v1[42] = v0;
  v3 = type metadata accessor for VideoDataModels(0);
  v1[43] = v3;
  OUTLINED_FUNCTION_8_9(v3);
  v1[44] = OUTLINED_FUNCTION_4_7();
  v4 = sub_269851F64();
  v1[45] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[46] = v5;
  v1[47] = OUTLINED_FUNCTION_4_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v1[48] = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v1[49] = OUTLINED_FUNCTION_37_0();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323EC0, &unk_26985D910);
  OUTLINED_FUNCTION_8_9(v7);
  v1[52] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269852104();
  v1[53] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[54] = v9;
  v1[55] = OUTLINED_FUNCTION_4_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239D8, &unk_26985BAD0);
  v1[56] = v10;
  OUTLINED_FUNCTION_8_9(v10);
  v1[57] = OUTLINED_FUNCTION_37_0();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v11 = type metadata accessor for VideoDataModels.VideoResult(0);
  OUTLINED_FUNCTION_5_12(v11);
  v1[62] = v12;
  v1[63] = OUTLINED_FUNCTION_4_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v1[64] = v13;
  OUTLINED_FUNCTION_8_9(v13);
  v1[65] = OUTLINED_FUNCTION_37_0();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v14 = sub_269853234();
  v1[70] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[71] = v15;
  v1[72] = OUTLINED_FUNCTION_4_7();
  v16 = sub_269852084();
  v1[73] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[74] = v17;
  v1[75] = OUTLINED_FUNCTION_37_0();
  v1[76] = swift_task_alloc();
  v18 = sub_269851F04();
  v1[77] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[78] = v19;
  v1[79] = OUTLINED_FUNCTION_37_0();
  v1[80] = swift_task_alloc();
  v20 = sub_2698523C4();
  v1[81] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v1[82] = v21;
  v1[83] = OUTLINED_FUNCTION_4_7();
  v22 = sub_269852474();
  v1[84] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[85] = v23;
  v1[86] = OUTLINED_FUNCTION_4_7();
  v24 = sub_2698548D4();
  v1[87] = v24;
  OUTLINED_FUNCTION_5_12(v24);
  v1[88] = v25;
  v1[89] = OUTLINED_FUNCTION_37_0();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v26 = sub_269851EF4();
  v1[92] = v26;
  OUTLINED_FUNCTION_5_12(v26);
  v1[93] = v27;
  v1[94] = OUTLINED_FUNCTION_4_7();
  v28 = sub_269853874();
  v1[95] = v28;
  OUTLINED_FUNCTION_5_12(v28);
  v1[96] = v29;
  v1[97] = OUTLINED_FUNCTION_4_7();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v30);
  v1[98] = OUTLINED_FUNCTION_37_0();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v31 = sub_269853854();
  v1[101] = v31;
  OUTLINED_FUNCTION_5_12(v31);
  v1[102] = v32;
  v1[103] = OUTLINED_FUNCTION_4_7();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v33);
  v1[104] = OUTLINED_FUNCTION_4_7();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_8_9(v34);
  v1[105] = OUTLINED_FUNCTION_37_0();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v35);
}

uint64_t sub_26972D9B0()
{
  v245 = v0;
  v1 = v0;
  v2 = v0[104];
  v3 = v0[101];
  v4 = v0[42];
  sub_269734044();
  v5 = OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_input;
  OUTLINED_FUNCTION_0_15();
  swift_beginAccess();
  sub_2697208E8(v4 + v5, v2, &qword_280323AF8, &unk_26985C1D0);
  v6 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v6, v7, v3))
  {
    sub_26969B0C0(v1[104], &qword_280323AF8, &unk_26985C1D0);
    v8 = 1;
  }

  else
  {
    v9 = v1[104];
    v10 = OUTLINED_FUNCTION_2_6();
    v11(v10);
    sub_26969B0C0(v9, &qword_280323AF8, &unk_26985C1D0);
    sub_269853844();
    v12 = OUTLINED_FUNCTION_34_0();
    v13(v12);
    v8 = 0;
  }

  v14 = v1[107];
  v15 = v1[106];
  v16 = sub_2698538B4();
  __swift_storeEnumTagSinglePayload(v14, v8, 1, v16);
  v17 = OUTLINED_FUNCTION_34_0();
  sub_2697208E8(v17, v18, v19, v20);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  sub_2697208E8(v1[106], v1[105], &qword_280323E08, &unk_26985D090);
  v32 = OUTLINED_FUNCTION_50_0();
  v34 = v33(v32);
  v242 = v1;
  if (v34 == *MEMORY[0x277D5C140])
  {
    v35 = v1[105];
    v36 = v1[97];
    v37 = v1[96];
    v38 = v242[95];
    v39 = v242[94];
    v40 = v242[93];
    v41 = v242[92];
    v42 = OUTLINED_FUNCTION_50_0();
    v43(v42);
    (*(v37 + 32))(v36, v35, v38);
    sub_269853864();
    sub_2696D3C74();
    (*(v40 + 8))(v39, v41);
    v44 = OUTLINED_FUNCTION_44_0();
    v45(v44);
    v1 = v242;
  }

  else
  {
    v8 = v1[105];
    if (v34 != *MEMORY[0x277D5C148])
    {
      v52 = OUTLINED_FUNCTION_50_0();
      v53(v52);
LABEL_5:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      OUTLINED_FUNCTION_65_0();
      __swift_project_value_buffer(v8, qword_28033D910);
      v21 = OUTLINED_FUNCTION_21_8();
      v22(v21);
      v23 = sub_2698548B4();
      v24 = sub_269854F14();
      if (os_log_type_enabled(v23, v24))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_31_0(&dword_269684000, v25, v26, "Received unexpected parse. Returning error");
        OUTLINED_FUNCTION_10();
      }

      v27 = OUTLINED_FUNCTION_22_3();
      v28(v27);
      swift_task_alloc();
      OUTLINED_FUNCTION_48_2();
      v1[108] = v29;
      *v29 = v30;
      v31 = sub_26972EE2C;
LABEL_35:
      v29[1] = v31;
      OUTLINED_FUNCTION_25_4();

      return sub_26973085C();
    }

    v46 = OUTLINED_FUNCTION_50_0();
    v47(v46);
    v48 = *v8;
    sub_2696D6C54();
    if (v49)
    {
      v50 = v49;
      sub_269854544();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v54 = v1[99];
    v55 = v1[84];

    __swift_storeEnumTagSinglePayload(v54, v51, 1, v55);
    v56 = OUTLINED_FUNCTION_31_3();
    sub_269733ADC(v56, v57, v58, v59);
  }

  v60 = v1[98];
  v61 = v1[84];
  sub_26969B0C0(v1[106], &qword_280323E08, &unk_26985D090);
  v62 = OUTLINED_FUNCTION_7_16();
  sub_2697208E8(v62, v63, v64, v65);
  v66 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v66, v67, v61) == 1)
  {
    sub_26969B0C0(v1[98], &qword_280323360, &unk_26985AB80);
LABEL_30:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_65_0();
    __swift_project_value_buffer(v60, qword_28033D910);
    v91 = OUTLINED_FUNCTION_21_8();
    v92(v91);
    v93 = sub_2698548B4();
    v94 = sub_269854F14();
    if (os_log_type_enabled(v93, v94))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v95, v96, "Received unexpected video verb. Returning error");
      OUTLINED_FUNCTION_10();
    }

    v97 = OUTLINED_FUNCTION_22_3();
    v98(v97);
    swift_task_alloc();
    OUTLINED_FUNCTION_48_2();
    v1[121] = v29;
    *v29 = v99;
    v31 = sub_2697305B0;
    goto LABEL_35;
  }

  v68 = v1[83];
  v69 = v1[82];
  v70 = v1[81];
  v60 = v1[80];
  v71 = v1[79];
  v72 = v1[78];
  v73 = v1[77];
  (*(v1[85] + 32))(v1[86], v1[98], v1[84]);
  sub_269852424();
  sub_2698523A4();
  (*(v69 + 8))(v68, v70);
  (*(v72 + 104))(v71, *MEMORY[0x277D39208], v73);
  sub_2697339D4(&qword_280323EC8, MEMORY[0x277D39210], MEMORY[0x277D39228]);
  OUTLINED_FUNCTION_102();
  sub_269854C44();
  OUTLINED_FUNCTION_102();
  sub_269854C44();
  v74 = *(v72 + 8);
  v75 = OUTLINED_FUNCTION_31_3();
  v74(v75);
  v76 = OUTLINED_FUNCTION_22_3();
  v74(v76);
  if (v1[38] != v1[39])
  {
    (*(v1[85] + 8))(v1[86], v1[84]);
    goto LABEL_30;
  }

  v77 = sub_269852464();
  v78 = MEMORY[0x277D84F90];
  v244 = MEMORY[0x277D84F90];
  v79 = *(v77 + 16);
  if (v79)
  {
    v80 = v1[74];
    type metadata accessor for Content();
    v83 = *(v80 + 16);
    v81 = v80 + 16;
    v82 = v83;
    v84 = v77 + ((*(v81 + 64) + 32) & ~*(v81 + 64));
    v239 = *(v81 + 56);
    v85 = MEMORY[0x277D84F90];
    do
    {
      v86 = v1[76];
      v87 = v1[75];
      v88 = v1[73];
      v82(v86, v84, v88);
      v82(v87, v86, v88);
      v89 = sub_2696CF2E8(v87);
      v90 = (*(v81 - 8))(v86, v88);
      if (v89)
      {
        MEMORY[0x26D645B90](v90);
        if (*((v244 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v244 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
        v85 = v244;
      }

      v84 += v239;
      --v79;
      v1 = v242;
    }

    while (v79);

    v78 = MEMORY[0x277D84F90];
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  v1[109] = v85;
  v102 = v1[86];
  sub_2698359E4();
  sub_2696D4FC8();
  v1[110] = v103;
  if (sub_26975004C() == 1 && sub_26975004C())
  {
    OUTLINED_FUNCTION_70_0();
    sub_269750050();
    if (!v102)
    {
      v104 = *(v85 + 32);
LABEL_43:
      v1[111] = v104;

      swift_task_alloc();
      OUTLINED_FUNCTION_48_2();
      v1[112] = v105;
      *v105 = v106;
      v105[1] = sub_26972F0D4;
      OUTLINED_FUNCTION_25_4();

      return sub_26973146C();
    }

LABEL_74:
    v104 = MEMORY[0x26D646120](0, v85);
    goto LABEL_43;
  }

  v108 = sub_26975004C();
  v1[113] = v108;
  if (v108)
  {
    if (v108 < 1)
    {
      __break(1u);
      goto LABEL_74;
    }

    v1[115] = v78;
    v1[114] = 0;
    v109 = v1[109];
    if ((v109 & 0xC000000000000001) != 0)
    {
      v110 = MEMORY[0x26D646120](0);
    }

    else
    {
      v110 = *(v109 + 32);
    }

    v1[116] = v110;
    swift_task_alloc();
    OUTLINED_FUNCTION_48_2();
    v1[117] = v119;
    *v119 = v120;
    OUTLINED_FUNCTION_13_13(v119);
    OUTLINED_FUNCTION_25_4();

    return sub_269732188();
  }

  else
  {
    v112 = v1[52];
    v111 = v1[53];

    v113 = type metadata accessor for VideoDataModels.PersonModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v113);
    sub_2696D58DC();
    if (__swift_getEnumTagSinglePayload(v112, 1, v111) == 1)
    {
      sub_26969B0C0(v1[52], &qword_280323EC0, &unk_26985D910);
      v117 = "videoFilteredSearchResultList";
      v118 = 0xD00000000000001CLL;
    }

    else
    {
      (*(v1[54] + 32))(v1[55], v1[52], v1[53]);
      v122 = sub_269852624();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v122);
      sub_2698520D4();

      OUTLINED_FUNCTION_39_0();
      if (v126)
      {
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
        v128 = OUTLINED_FUNCTION_57_1(v127);
        v129 = OUTLINED_FUNCTION_61(v128, xmmword_269857710);
        v130 = MEMORY[0x277D63778];
        v128[3].n128_u64[1] = v129;
        v128[4].n128_u64[0] = v130;
        __swift_allocate_boxed_opaque_existential_1(&v128[2]);
        v131 = sub_2698520D4();
        OUTLINED_FUNCTION_33_3(v131, v132);
        OUTLINED_FUNCTION_3_14();
        v133 = OUTLINED_FUNCTION_41_2();
        v134(v133);
        sub_269852634();
        v135 = OUTLINED_FUNCTION_50_0();
        sub_26969B0C0(v135, v136, &unk_26985D8B0);
        OUTLINED_FUNCTION_24_4();
        __swift_storeEnumTagSinglePayload(v137, v138, v139, v122);
        v140 = OUTLINED_FUNCTION_2_6();
        sub_269733ADC(v140, v141, &qword_2803239E0, &unk_26985D8B0);
      }

      v229 = v1[67];
      v230 = v1[68];
      v223 = v1[66];
      v226 = v1[65];
      v142 = v1[60];
      v235 = v1[61];
      v237 = v1[54];
      v240 = v1[53];
      v143 = v1[50];
      v222 = v122;
      v221 = v1[49];
      v145 = v1[46];
      v144 = v1[47];
      v146 = v1[45];
      v232 = v1[55];
      v147 = sub_269851F24();
      v224 = v148;
      v225 = v147;
      v149 = sub_269851FD4();
      v227 = v150;
      v228 = v149;
      sub_2698520F4();
      sub_269851F24();
      (*(v145 + 8))(v144, v146);
      sub_269851C64();

      v151 = OUTLINED_FUNCTION_44_0();
      v153 = v152;
      v155 = v154;
      sub_2697208E8(v151, v156, v152, v154);
      sub_269851C74();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
      sub_2697208E8(v143, v221, &qword_280323030, &qword_26985BAE0);
      sub_269852674();
      sub_26969B0C0(v143, &qword_280323030, &qword_26985BAE0);
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v161, v162, v163, v222);
      sub_2697208E8(v223, v226, v153, v155);
      sub_269852674();
      sub_26969B0C0(v223, v153, v155);
      v242[26] = v225;
      v242[27] = v224;
      sub_269852674();
      v242[28] = v228;
      v242[29] = v227;
      sub_269852674();
      v164 = OUTLINED_FUNCTION_49_3();
      sub_2697208E8(v164, v165, &qword_280323030, &qword_26985BAE0);
      sub_2697208E8(v143, v221, &qword_280323030, &qword_26985BAE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
      sub_2698526A4();
      sub_26969B0C0(v143, &qword_280323030, &qword_26985BAE0);
      sub_2697208E8(v229, v223, &qword_2803239E0, &unk_26985D8B0);
      sub_2697208E8(v223, v226, &qword_2803239E0, &unk_26985D8B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
      sub_2698526A4();
      sub_26969B0C0(v223, &qword_2803239E0, &unk_26985D8B0);
      sub_26969B0C0(v229, &qword_2803239E0, &unk_26985D8B0);
      v166 = OUTLINED_FUNCTION_49_3();
      sub_26969B0C0(v166, v167, &qword_26985BAE0);
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v168, v169, v170, v113);
      sub_269720B24(v142, v235, &qword_2803239D8, &unk_26985BAD0);
      v1 = v242;
      sub_26969B0C0(v230, &qword_2803239E0, &unk_26985D8B0);
      (*(v237 + 8))(v232, v240);
      v117 = "videoGenericSearchResultList";
      v118 = 0xD00000000000001FLL;
    }

    v171 = v117 | 0x8000000000000000;
    v172 = &qword_2803239D8;
    sub_2697208E8(v1[61], v1[59], &qword_2803239D8, &unk_26985BAD0);
    v173 = OUTLINED_FUNCTION_27_6();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v173, v174, v113);
    v176 = OUTLINED_FUNCTION_7_16();
    sub_26969B0C0(v176, v177, &unk_26985BAD0);
    if (EnumTagSinglePayload == 1 && (sub_269852454(), v172 = v178, , OUTLINED_FUNCTION_39_0(), v179))
    {

      v180 = sub_269852454();
      v182 = v181;
      v171 = 0x800000026987AEA0;
      v118 = 0xD00000000000001DLL;
    }

    else
    {
      v180 = 0;
      v182 = 0;
    }

    v1[119] = v171;
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_65_0();
    __swift_project_value_buffer(v172, qword_28033D910);
    v183 = OUTLINED_FUNCTION_21_8();
    v184(v183);

    v185 = MEMORY[0x277D84F90];

    v186 = sub_2698548B4();
    v187 = sub_269854F14();

    v241 = v171;

    v243 = v118;
    v238 = v180;
    v236 = v182;
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      *v188 = 134218754;
      *(v188 + 4) = *(v185 + 16);
      *(v188 + 12) = 2080;
      swift_beginAccess();
      v189 = OUTLINED_FUNCTION_27_6();
      v191 = 0;
      v192 = 0;
      if (!__swift_getEnumTagSinglePayload(v189, v190, v113))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
        sub_269852694();
        v191 = v1[24];
        v192 = v1[25];
      }

      v193 = v1[88];
      v231 = v1[87];
      v233 = v1[90];
      swift_endAccess();
      v1[20] = v191;
      v1[21] = v192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      v194 = sub_269854AE4();
      v196 = sub_26974F520(v194, v195, &v244);

      *(v188 + 14) = v196;
      *(v188 + 22) = 2080;
      v1[22] = v180;
      v1[23] = v182;

      v197 = sub_269854AE4();
      v199 = sub_26974F520(v197, v198, &v244);

      *(v188 + 24) = v199;
      *(v188 + 32) = 2080;
      *(v188 + 34) = sub_26974F520(v243, v241, &v244);

      _os_log_impl(&dword_269684000, v186, v187, "SearchVideoFlow using ResultsListModel with %ld results, person=%s, header=%s, and responseViewID=%s", v188, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v193 + 8))(v233, v231);
    }

    else
    {
      OUTLINED_FUNCTION_65_0();

      v200 = OUTLINED_FUNCTION_7_16();
      v201(v200);
    }

    v202 = v1[60];
    v203 = v1[44];
    v234 = v1[43];
    OUTLINED_FUNCTION_0_15();
    swift_beginAccess();
    v204 = OUTLINED_FUNCTION_25_2();
    sub_2697208E8(v204, v205, &qword_2803239D8, &unk_26985BAD0);
    type metadata accessor for VideoDataModels.ResultsListModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v206, v207, v208, v113);
    OUTLINED_FUNCTION_75_0();
    sub_269852674();
    v209 = OUTLINED_FUNCTION_51_2();
    sub_26969B0C0(v209, v210, &unk_26985BAD0);
    v1[17] = 0;
    v1[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    sub_269852674();
    v1[40] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
    sub_269852674();
    v211 = OUTLINED_FUNCTION_102();
    sub_2697208E8(v211, v212, &qword_2803239D8, &unk_26985BAD0);
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_2698526A4();
    v213 = OUTLINED_FUNCTION_51_2();
    sub_26969B0C0(v213, v214, &unk_26985BAD0);
    v1[18] = v238;
    v1[19] = v236;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    sub_2698526A4();
    sub_26969B0C0(v202, &qword_2803239D8, &unk_26985BAD0);
    swift_storeEnumTagMultiPayload();
    v1[5] = v234;
    OUTLINED_FUNCTION_16_12();
    v1[6] = sub_2697339D4(v215, v216, &protocol conformance descriptor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
    sub_269733A1C(v203, boxed_opaque_existential_1);
    swift_task_alloc();
    OUTLINED_FUNCTION_48_2();
    v1[120] = v218;
    *v218 = v219;
    OUTLINED_FUNCTION_14_9(v218);
    OUTLINED_FUNCTION_25_4();

    return sub_269730E7C();
  }
}

uint64_t sub_26972EE2C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *(v1 + 248) = v3;
  *(v1 + 240) = v0;
  OUTLINED_FUNCTION_66_0();
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26972EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  sub_26969B0C0(*(v42 + 856), &qword_280323E08, &unk_26985D090);
  v43 = OUTLINED_FUNCTION_7_16();
  sub_26969B0C0(v43, v44, &unk_26985D090);
  OUTLINED_FUNCTION_0_27();
  HIDWORD(a38) = *(v42 + 248);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_32_3();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_26972F0D4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *(v1 + 264) = v3;
  *(v1 + 256) = v0;
  OUTLINED_FUNCTION_66_0();
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26972F1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v43 = *(v42 + 888);
  v44 = *(v42 + 856);
  v45 = *(v42 + 800);
  v46 = *(v42 + 576);
  v47 = *(v42 + 568);
  v48 = *(v42 + 560);

  (*(v47 + 8))(v46, v48);
  v49 = OUTLINED_FUNCTION_34_0();
  v50(v49);
  sub_26969B0C0(v45, &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v44, &qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_0_27();
  HIDWORD(a38) = *(v42 + 264);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_32_3();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_26972F3D8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 944) = v4;
  *v4 = v3;
  v4[1] = sub_26972F54C;

  return sub_269732A38();
}

uint64_t sub_26972F54C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26972F630()
{
  v152 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 920);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26977C82C();
    v2 = v126;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_26977C82C();
    v2 = v127;
  }

  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 552);
  v8 = *(v0 + 496);
  v7 = *(v0 + 504);

  sub_26969B0C0(v6, &qword_2803239E0, &unk_26985D8B0);
  *(v2 + 16) = v3 + 1;
  sub_2696F3EEC(v7, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3);
  if (v4 + 1 == v5)
  {
    v10 = *(v0 + 416);
    v9 = *(v0 + 424);

    v11 = type metadata accessor for VideoDataModels.PersonModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    sub_2696D58DC();
    v149 = v11;
    v150 = v2;
    if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
    {
      sub_26969B0C0(*(v0 + 416), &qword_280323EC0, &unk_26985D910);
      v15 = "videoFilteredSearchResultList";
      v16 = 0xD00000000000001CLL;
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 416), *(v0 + 424));
      v20 = sub_269852624();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      sub_2698520D4();
      OUTLINED_FUNCTION_68_1();

      OUTLINED_FUNCTION_62_0();
      if (v24)
      {
        v25 = *(v0 + 544);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
        v27 = OUTLINED_FUNCTION_57_1(v26);
        v28 = OUTLINED_FUNCTION_61(v27, xmmword_269857710);
        v29 = MEMORY[0x277D63778];
        v27[3].n128_u64[1] = v28;
        v27[4].n128_u64[0] = v29;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27[2]);
        v31 = sub_2698520D4();
        OUTLINED_FUNCTION_33_3(v31, v32);
        OUTLINED_FUNCTION_3_14();
        (*(v33 + 104))(boxed_opaque_existential_1);
        sub_269852634();
        sub_26969B0C0(v25, &qword_2803239E0, &unk_26985D8B0);
        OUTLINED_FUNCTION_24_4();
        __swift_storeEnumTagSinglePayload(v34, v35, v36, v20);
        v37 = OUTLINED_FUNCTION_31_3();
        sub_269733ADC(v37, v38, &qword_2803239E0, &unk_26985D8B0);
      }

      v134 = *(v0 + 536);
      v135 = *(v0 + 544);
      v129 = *(v0 + 528);
      v147 = *(v0 + 520);
      v39 = *(v0 + 480);
      v136 = *(v0 + 440);
      v138 = *(v0 + 488);
      v141 = *(v0 + 432);
      v143 = *(v0 + 424);
      v40 = *(v0 + 400);
      v145 = *(v0 + 408);
      v128 = *(v0 + 392);
      v41 = *(v0 + 368);
      v42 = *(v0 + 376);
      v43 = *(v0 + 360);
      v44 = sub_269851F24();
      v130 = v45;
      v131 = v44;
      v46 = sub_269851FD4();
      v132 = v47;
      v133 = v46;
      sub_2698520F4();
      sub_269851F24();
      (*(v41 + 8))(v42, v43);
      sub_269851C64();

      v48 = OUTLINED_FUNCTION_44_0();
      v50 = v49;
      v52 = v51;
      sub_2697208E8(v48, v53, v49, v51);
      sub_269851C74();
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
      sub_2697208E8(v40, v128, &qword_280323030, &qword_26985BAE0);
      sub_269852674();
      sub_26969B0C0(v40, &qword_280323030, &qword_26985BAE0);
      OUTLINED_FUNCTION_57();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
      sub_2697208E8(v129, v147, v50, v52);
      sub_269852674();
      sub_26969B0C0(v129, v50, v52);
      *(v0 + 208) = v131;
      *(v0 + 216) = v130;
      sub_269852674();
      *(v0 + 224) = v133;
      *(v0 + 232) = v132;
      sub_269852674();
      sub_2697208E8(v145, v40, &qword_280323030, &qword_26985BAE0);
      sub_2697208E8(v40, v128, &qword_280323030, &qword_26985BAE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
      sub_2698526A4();
      v62 = v40;
      v11 = v149;
      sub_26969B0C0(v62, &qword_280323030, &qword_26985BAE0);
      sub_2697208E8(v134, v129, &qword_2803239E0, &unk_26985D8B0);
      sub_2697208E8(v129, v147, &qword_2803239E0, &unk_26985D8B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
      sub_2698526A4();
      v63 = OUTLINED_FUNCTION_51_2();
      sub_26969B0C0(v63, v64, &unk_26985D8B0);
      sub_26969B0C0(v134, &qword_2803239E0, &unk_26985D8B0);
      sub_26969B0C0(v145, &qword_280323030, &qword_26985BAE0);
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v149);
      sub_269720B24(v39, v138, &qword_2803239D8, &unk_26985BAD0);
      sub_26969B0C0(v135, &qword_2803239E0, &unk_26985D8B0);
      (*(v141 + 8))(v136, v143);
      v15 = "videoGenericSearchResultList";
      v16 = 0xD00000000000001FLL;
    }

    v68 = v15 | 0x8000000000000000;
    sub_2697208E8(*(v0 + 488), *(v0 + 472), &qword_2803239D8, &unk_26985BAD0);
    v69 = OUTLINED_FUNCTION_27_6();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, v70, v11);
    v72 = OUTLINED_FUNCTION_25_2();
    sub_26969B0C0(v72, v73, &unk_26985BAD0);
    if (EnumTagSinglePayload == 1 && (sub_269852454(), OUTLINED_FUNCTION_68_1(), , OUTLINED_FUNCTION_62_0(), v74))
    {

      v75 = sub_269852454();
      v77 = v76;
      v68 = 0x800000026987AEA0;
      v16 = 0xD00000000000001DLL;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    v146 = v75;
    v148 = v16;
    *(v0 + 952) = v68;
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v78 = *(v0 + 720);
    v79 = *(v0 + 704);
    v80 = *(v0 + 696);
    v81 = __swift_project_value_buffer(v80, qword_28033D910);
    (*(v79 + 16))(v78, v81, v80);

    v82 = v68;
    v83 = sub_2698548B4();
    v84 = sub_269854F14();

    v144 = v82;

    v142 = v77;
    if (os_log_type_enabled(v83, v84))
    {
      v85 = v2;
      v86 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *v86 = 134218754;
      *(v86 + 4) = *(v85 + 16);
      *(v86 + 12) = 2080;
      swift_beginAccess();
      v87 = OUTLINED_FUNCTION_27_6();
      v89 = 0;
      v90 = 0;
      if (!__swift_getEnumTagSinglePayload(v87, v88, v11))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
        sub_269852694();
        v89 = *(v0 + 192);
        v90 = *(v0 + 200);
      }

      v91 = *(v0 + 704);
      v137 = *(v0 + 696);
      v139 = *(v0 + 720);
      swift_endAccess();
      *(v0 + 160) = v89;
      *(v0 + 168) = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      v92 = sub_269854AE4();
      v94 = sub_26974F520(v92, v93, &v151);

      *(v86 + 14) = v94;
      *(v86 + 22) = 2080;
      *(v0 + 176) = v146;
      *(v0 + 184) = v77;

      v95 = sub_269854AE4();
      v97 = sub_26974F520(v95, v96, &v151);

      *(v86 + 24) = v97;
      *(v86 + 32) = 2080;
      *(v86 + 34) = sub_26974F520(v148, v144, &v151);

      _os_log_impl(&dword_269684000, v83, v84, "SearchVideoFlow using ResultsListModel with %ld results, person=%s, header=%s, and responseViewID=%s", v86, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v91 + 8))(v139, v137);
    }

    else
    {

      v98 = OUTLINED_FUNCTION_25_2();
      v99(v98);
    }

    v101 = *(v0 + 480);
    v100 = *(v0 + 488);
    v103 = *(v0 + 456);
    v102 = *(v0 + 464);
    v104 = *(v0 + 352);
    v140 = *(v0 + 344);
    OUTLINED_FUNCTION_0_15();
    swift_beginAccess();
    sub_2697208E8(v100, v101, &qword_2803239D8, &unk_26985BAD0);
    type metadata accessor for VideoDataModels.ResultsListModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v149);
    sub_2697208E8(v102, v103, &qword_2803239D8, &unk_26985BAD0);
    sub_269852674();
    v108 = OUTLINED_FUNCTION_51_2();
    sub_26969B0C0(v108, v109, &unk_26985BAD0);
    *(v0 + 136) = 0;
    *(v0 + 128) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    sub_269852674();
    *(v0 + 320) = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
    sub_269852674();
    v110 = OUTLINED_FUNCTION_44_0();
    sub_2697208E8(v110, v111, &qword_2803239D8, &unk_26985BAD0);
    sub_2697208E8(v102, v103, &qword_2803239D8, &unk_26985BAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_2698526A4();
    v112 = OUTLINED_FUNCTION_51_2();
    sub_26969B0C0(v112, v113, &unk_26985BAD0);
    *(v0 + 144) = v146;
    *(v0 + 152) = v142;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    sub_2698526A4();
    v114 = OUTLINED_FUNCTION_49_3();
    sub_26969B0C0(v114, v115, &unk_26985BAD0);
    swift_storeEnumTagMultiPayload();
    *(v0 + 40) = v140;
    OUTLINED_FUNCTION_16_12();
    *(v0 + 48) = sub_2697339D4(v116, v117, &protocol conformance descriptor for VideoDataModels);
    v118 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_269733A1C(v104, v118);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v0 + 960) = v119;
    *v119 = v120;
    OUTLINED_FUNCTION_14_9(v119);
    OUTLINED_FUNCTION_25_4();

    return sub_269730E7C();
  }

  else
  {
    v17 = *(v0 + 912) + 1;
    *(v0 + 920) = v2;
    *(v0 + 912) = v17;
    v18 = *(v0 + 872);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D646120]();
    }

    else
    {
      v19 = *(v18 + 8 * v17 + 32);
    }

    *(v0 + 928) = v19;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v0 + 936) = v123;
    *v123 = v124;
    OUTLINED_FUNCTION_13_13(v123);
    OUTLINED_FUNCTION_25_4();

    return sub_269732188();
  }
}

uint64_t sub_269730264()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  *(v2 + 280) = v4;
  *(v2 + 272) = v0;
  OUTLINED_FUNCTION_66_0();
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26973036C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v60 = *(v42 + 856);
  v43 = *(v42 + 800);
  v44 = *(v42 + 576);
  v45 = *(v42 + 568);
  v46 = *(v42 + 560);
  v47 = *(v42 + 488);
  v48 = *(v42 + 352);

  sub_269733A80(v48);
  (*(v45 + 8))(v44, v46);
  v49 = OUTLINED_FUNCTION_34_0();
  v50(v49);
  sub_26969B0C0(v43, &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v60, &qword_280323E08, &unk_26985D090);
  sub_26969B0C0(v47, &qword_2803239D8, &unk_26985BAD0);
  OUTLINED_FUNCTION_0_27();
  LODWORD(v60) = *(v42 + 280);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_32_3();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, v60, a39, a40, a41, a42);
}

uint64_t sub_2697305B0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *(v1 + 296) = v3;
  *(v1 + 288) = v0;
  OUTLINED_FUNCTION_66_0();
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269730694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v43 = *(v42 + 856);
  sub_26969B0C0(*(v42 + 800), &qword_280323360, &unk_26985AB80);
  sub_26969B0C0(v43, &qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_0_27();
  HIDWORD(a38) = *(v42 + 296);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_32_3();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_26973085C()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v4 = sub_2698538F4();
  v1[16] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[17] = v5;
  v1[18] = *(v6 + 64);
  v1[19] = OUTLINED_FUNCTION_37_0();
  v1[20] = swift_task_alloc();
  v7 = sub_2698532A4();
  v1[21] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[22] = v8;
  v9 = OUTLINED_FUNCTION_4_7();
  v1[23] = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v1[24] = v10;
  *v10 = v11;
  v10[1] = sub_2697309CC;

  return MEMORY[0x2821BAED8](v9);
}

uint64_t sub_2697309CC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_269730D34;
  }

  else
  {
    v4 = sub_269730AD4;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_269730AD4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v18 = *(v0 + 176);
  v19 = *(v0 + 168);
  v17 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v6 + 104), *(v6 + 128));
  sub_269852CA4();
  sub_269853234();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_269853114();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v5, &qword_280323010, &unk_26985B640);
  sub_26970EF58(v6 + 16, v0 + 56);
  (*(v3 + 16))(v17, v2, v4);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v17, v4);
  v13 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v13);
  v14 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_46_0(v14);
  sub_269853144();
  (*(v3 + 8))(v2, v4);
  (*(v18 + 8))(v1, v19);

  OUTLINED_FUNCTION_28_2();

  return v15(2);
}

uint64_t sub_269730DB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269730DD0);
}

uint64_t sub_269730DD0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 16);
  v2 = sub_2698538F4();
  v3 = MEMORY[0x277D5C1D8];
  v1[3] = v2;
  v1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_3_14();
  (*(v4 + 16))();
  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_269730E7C()
{
  OUTLINED_FUNCTION_2_7();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  v1[18] = v7;
  v8 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v8);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v9 = sub_269853634();
  v1[26] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[27] = v10;
  v1[28] = OUTLINED_FUNCTION_4_7();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_269730F4C(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 168);
  v4 = *(v1 + 152);
  v12 = *(v1 + 176);
  sub_269852E64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v12;
  sub_2698535C4();

  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v7 = OUTLINED_FUNCTION_35_0(v6);
  *(v1 + 232) = v7;
  *(v7 + 16) = xmmword_2698590C0;
  *(v7 + 32) = v4;
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 240) = v9;
  *v9 = v10;
  v9[1] = sub_2697310BC;

  return MEMORY[0x2821BB468](v1 + 16);
}

uint64_t sub_2697310BC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697311BC()
{
  sub_26970EF58(*(v0 + 192) + 16, v0 + 56);
  sub_26970EF58(v0 + 16, v0 + 96);
  v1 = swift_allocObject();
  sub_26968E5D4((v0 + 96), v1 + 16);
  v2 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v2);
  *(v0 + 136) = OUTLINED_FUNCTION_17_9();
  sub_269853144();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = OUTLINED_FUNCTION_34_0();
  v4(v3);

  OUTLINED_FUNCTION_28_2();

  return v5(0);
}

uint64_t sub_2697312F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;

  sub_2698535E4();
  v8 = sub_269853234();
  (*(*(v8 - 8) + 16))(v7, a4, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  return sub_269853604();
}

uint64_t sub_2697313F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269731410);
}

uint64_t sub_269731410()
{
  OUTLINED_FUNCTION_2_7();
  sub_26970EF58(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26973146C()
{
  OUTLINED_FUNCTION_2_7();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v6);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698538F4();
  v1[19] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[20] = v8;
  v1[21] = *(v9 + 64);
  v1[22] = OUTLINED_FUNCTION_37_0();
  v1[23] = swift_task_alloc();
  v10 = sub_269853464();
  v1[24] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[25] = v11;
  v1[26] = OUTLINED_FUNCTION_4_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323498, &qword_26985A8E0);
  OUTLINED_FUNCTION_8_9(v12);
  v1[27] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269853094();
  v1[28] = v13;
  OUTLINED_FUNCTION_8_9(v13);
  v1[29] = OUTLINED_FUNCTION_4_7();
  v14 = sub_2698532A4();
  v1[30] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[31] = v15;
  v1[32] = OUTLINED_FUNCTION_4_7();
  v16 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_269731640()
{
  __swift_project_boxed_opaque_existential_1((v0[17] + 104), *(v0[17] + 128));
  OUTLINED_FUNCTION_22_3();
  if (sub_269852CF4())
  {
    v1 = v0[14];
    sub_26969329C(0, &qword_280323EB8, 0x277D47B88);
    v2 = sub_2696CDACC(v1);
    v3 = v0[15];
    v4 = OUTLINED_FUNCTION_72(v2);
    sub_269854A94();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A0, &unk_26985D8D0);
    v5 = sub_269853324();
    OUTLINED_FUNCTION_5_12(v5);
    v6 = OUTLINED_FUNCTION_43_0();
    v7 = OUTLINED_FUNCTION_73(v6, xmmword_269857710);
    sub_269854A94();
    v95 = v8;

    v9 = [v3 dialog];
    sub_26969329C(0, &qword_2803233D8, 0x277D052B0);
    OUTLINED_FUNCTION_7_16();
    v10 = sub_269854CB4();

    if (sub_26975004C())
    {
      sub_269750050();
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D646120](0, v10);
      }

      else
      {
        v11 = *(v10 + 32);
      }

      v12 = v11;

      v13 = [v12 fullSpeak];

      sub_269854A94();
      OUTLINED_FUNCTION_68_1();
    }

    else
    {

      v10 = 0xE000000000000000;
    }

    v21 = v0[15];
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_0_15();
    sub_269853074();
    v22 = [v21 dialog];
    v23 = sub_269854CB4();

    if (sub_26975004C())
    {
      sub_269750050();
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D646120](0, v23);
      }

      else
      {
        v24 = *(v23 + 32);
      }

      v25 = v24;

      v23 = [v25 fullPrint];

      sub_269854A94();
      v27 = v26;
    }

    else
    {

      v27 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_24_4();
    v31 = __swift_storeEnumTagSinglePayload(v28, v29, v30, v10);
    OUTLINED_FUNCTION_36_3(v31, v32, v33, v34, v35, v36, v37, v38, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87, v88, v89, v90, v91, v93, v95);
    v39 = OUTLINED_FUNCTION_41_2();
    v40(v39);
    OUTLINED_FUNCTION_56_2();
    __swift_project_boxed_opaque_existential_1((v23 + 104), *(v23 + 128));
    OUTLINED_FUNCTION_102();
    sub_269852CA4();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v42 = OUTLINED_FUNCTION_35_0(v41);
    v43 = OUTLINED_FUNCTION_76_1(v42, xmmword_2698590C0);
    OUTLINED_FUNCTION_4_3();
    v44 = OUTLINED_FUNCTION_41_2();
    v45(v44);
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v43);
    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_22_8();

    sub_26969B0C0(v21 + 104, &qword_280323028, qword_26985AD20);
    sub_26969B0C0(v77, &qword_280323010, &unk_26985B640);
    v49 = sub_26970EF58(v23 + 16, (v0 + 7));
    v57 = OUTLINED_FUNCTION_23_10(v49, v50, v51, v52, v53, v54, v55, v56, v69, v71, v73, v75, v77, v79, v81, v83, v85);
    v58(v57);
    v59 = swift_allocObject();
    v60 = OUTLINED_FUNCTION_29_6(v59);
    v61(v60);
    v62 = sub_269852774();
    OUTLINED_FUNCTION_68_0(v62);
    v63 = OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_46_0(v63);
    sub_269853144();

    v64 = OUTLINED_FUNCTION_49_3();
    v65(v64);
    (*(v92 + 8))(v43, v94);

    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_71_1();

    __asm { BRAA            X2, X16 }
  }

  sub_26969329C(0, &qword_2803239B0, 0x277D47140);
  v14 = swift_task_alloc();
  v0[33] = v14;
  *v14 = v0;
  v14[1] = sub_269731BD8;
  OUTLINED_FUNCTION_71_1();

  return sub_2696CCC28(v15, v16, v17, v18);
}

uint64_t sub_269731BD8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

void sub_269731CC4()
{
  v1 = *(v0 + 120);
  v2 = OUTLINED_FUNCTION_72(*(v0 + 272));
  sub_269854A94();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A0, &unk_26985D8D0);
  v3 = sub_269853324();
  OUTLINED_FUNCTION_5_12(v3);
  v4 = OUTLINED_FUNCTION_43_0();
  v5 = OUTLINED_FUNCTION_73(v4, xmmword_269857710);
  sub_269854A94();
  v86 = v6;

  v7 = [v1 dialog];
  sub_26969329C(0, &qword_2803233D8, 0x277D052B0);
  OUTLINED_FUNCTION_7_16();
  v8 = sub_269854CB4();

  if (sub_26975004C())
  {
    sub_269750050();
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D646120](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v10 = v9;

    v11 = [v10 fullSpeak];

    sub_269854A94();
    OUTLINED_FUNCTION_68_1();
  }

  else
  {

    v8 = 0xE000000000000000;
  }

  v12 = *(v0 + 120);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_0_15();
  sub_269853074();
  v13 = [v12 dialog];
  v14 = sub_269854CB4();

  if (sub_26975004C())
  {
    OUTLINED_FUNCTION_70_0();
    sub_269750050();
    if (v13)
    {
      v15 = MEMORY[0x26D646120](0, v14);
    }

    else
    {
      v15 = *(v14 + 4);
    }

    v16 = v15;

    v14 = [v16 fullPrint];

    sub_269854A94();
    v18 = v17;
  }

  else
  {

    v18 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_24_4();
  v22 = __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
  OUTLINED_FUNCTION_36_3(v22, v23, v24, v25, v26, v27, v28, v29, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v78, v79, v80, v81, v82, v84, v86);
  v30 = OUTLINED_FUNCTION_41_2();
  v31(v30);
  OUTLINED_FUNCTION_56_2();
  __swift_project_boxed_opaque_existential_1(v14 + 13, *(v14 + 16));
  OUTLINED_FUNCTION_102();
  sub_269852CA4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v33 = OUTLINED_FUNCTION_35_0(v32);
  v34 = OUTLINED_FUNCTION_76_1(v33, xmmword_2698590C0);
  OUTLINED_FUNCTION_4_3();
  v35 = OUTLINED_FUNCTION_41_2();
  v36(v35);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_22_8();

  sub_26969B0C0(v12 + 104, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v68, &qword_280323010, &unk_26985B640);
  v40 = sub_26970EF58(v14 + 16, v0 + 56);
  v48 = OUTLINED_FUNCTION_23_10(v40, v41, v42, v43, v44, v45, v46, v47, v60, v62, v64, v66, v68, v70, v72, v74, v76);
  v49(v48);
  v50 = swift_allocObject();
  v51 = OUTLINED_FUNCTION_29_6(v50);
  v52(v51);
  v53 = sub_269852774();
  OUTLINED_FUNCTION_68_0(v53);
  v54 = OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_46_0(v54);
  sub_269853144();

  v55 = OUTLINED_FUNCTION_49_3();
  v56(v55);
  (*(v83 + 8))(v34, v85);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_71_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_269732168(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_269733B28);
}

uint64_t sub_269732188()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_269851C74();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_4_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_8_9(v6);
  v1[13] = OUTLINED_FUNCTION_37_0();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = sub_269851DA4();
  v1[16] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697322C0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 104), *(*(v0 + 72) + 128));
  OUTLINED_FUNCTION_22_3();
  if (sub_269852CF4())
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    sub_26969329C(0, &qword_280323EB8, 0x277D47B88);
    v3 = sub_2696CDACC(v2);
    v4 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v6 = OUTLINED_FUNCTION_35_0(v5);
    *(v6 + 16) = xmmword_2698590C0;
    *(v6 + 32) = v3;
    v7 = v3;
    sub_26976FAD4(v6, v4);
    v8 = v4;
    sub_269851D94();
    v9 = sub_269851D54();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_44_0();
    v13(v12);
    sub_2697336C8(v9, v11, v8);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
    v15 = OUTLINED_FUNCTION_57_1(v14);
    v16 = OUTLINED_FUNCTION_61(v15, xmmword_269857710);
    v17 = MEMORY[0x277D63778];
    v15[3].n128_u64[1] = v16;
    v15[4].n128_u64[0] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[2]);
    *boxed_opaque_existential_1 = v8;
    *(boxed_opaque_existential_1 + 8) = 1;
    OUTLINED_FUNCTION_3_14();
    (*(v19 + 104))();
    v20 = v8;
    sub_269852634();

    v21 = sub_269852624();
    v22 = v1;
  }

  else
  {
    v23 = sub_2696CD564(*(v0 + 64));
    if (v24)
    {
      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v26 = *(v0 + 64);
        v27 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
        sub_26977E46C(v26);
        if (v28)
        {
          v29 = sub_269854A64();
        }

        else
        {
          v29 = 0;
        }

        v55 = *(v0 + 120);
        v56 = *(v0 + 80);
        [v27 setTitle_];

        sub_269851C64();

        if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
        {
          v57 = 0;
        }

        else
        {
          v57 = sub_269851C24();
          v58 = OUTLINED_FUNCTION_34_0();
          v59(v58);
        }

        v60 = *(v0 + 56);
        [v27 setUrlValue_];

        [v27 setSource_];
        [v27 setType_];
        sub_26969329C(0, &qword_2803233A0, 0x277D47200);
        OUTLINED_FUNCTION_94();
        v61 = sub_269854EE4();
        v62 = [objc_allocWithZone(MEMORY[0x277D471F8]) init];
        [v62 setCardSnippet_];
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
        v64 = OUTLINED_FUNCTION_57_1(v63);
        v65 = OUTLINED_FUNCTION_61(v64, xmmword_269857710);
        v66 = MEMORY[0x277D63778];
        v64[3].n128_u64[1] = v65;
        v64[4].n128_u64[0] = v66;
        v67 = __swift_allocate_boxed_opaque_existential_1(&v64[2]);
        *v67 = v62;
        *(v67 + 8) = 1;
        OUTLINED_FUNCTION_3_14();
        (*(v68 + 104))();
        v69 = v62;
        sub_269852634();

        v21 = sub_269852624();
        v22 = v60;
        goto LABEL_24;
      }
    }

    v30 = [*(v0 + 64) detailsUrl];
    if (v30)
    {
      v31 = v30;
      sub_269851C44();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = *(v0 + 80);
    __swift_storeEnumTagSinglePayload(*(v0 + 104), v32, 1, v33);
    v34 = OUTLINED_FUNCTION_50_0();
    sub_269733ADC(v34, v35, v36, v37);
    v38 = OUTLINED_FUNCTION_27_6();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, v39, v33);
    v41 = *(v0 + 112);
    if (EnumTagSinglePayload)
    {
      sub_26969B0C0(*(v0 + 112), &qword_280323030, &qword_26985BAE0);
      sub_269852624();
      v22 = OUTLINED_FUNCTION_94();
      goto LABEL_25;
    }

    v43 = *(v0 + 72);
    (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
    sub_26969B0C0(v41, &qword_280323030, &qword_26985BAE0);
    sub_269851BF4();
    v44 = OUTLINED_FUNCTION_44_0();
    v45(v44);
    __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_appProvider), *(v43 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_appProvider + 24));
    sub_2697ADE90(0x6C7070612E6D6F63, 0xEC00000076742E65, v0 + 16);
    v46 = *(v0 + 56);
    if (*(v0 + 40))
    {
      sub_26969B0C0(v0 + 16, &unk_2803263B0, &unk_26985D0B0);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
      v48 = OUTLINED_FUNCTION_57_1(v47);
      v49 = OUTLINED_FUNCTION_61(v48, xmmword_269857710);
      v50 = MEMORY[0x277D63778];
      v48[3].n128_u64[1] = v49;
      v48[4].n128_u64[0] = v50;
      __swift_allocate_boxed_opaque_existential_1(&v48[2]);
      v51 = OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_33_3(v51, v52);
      OUTLINED_FUNCTION_3_14();
      v53 = OUTLINED_FUNCTION_41_2();
      v54(v53);
    }

    else
    {

      sub_26969B0C0(v0 + 16, &unk_2803263B0, &unk_26985D0B0);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
      v71 = OUTLINED_FUNCTION_57_1(v70);
      *(v71 + 16) = xmmword_269857710;
      sub_269854A04();
      v72 = sub_269852664();
      v73 = MEMORY[0x277D63778];
      *(v71 + 56) = v72;
      *(v71 + 64) = v73;
      __swift_allocate_boxed_opaque_existential_1((v71 + 32));
      sub_269852654();
    }

    sub_269852634();
    v21 = sub_269852624();
    v22 = v46;
  }

LABEL_24:
  v42 = 0;
LABEL_25:
  __swift_storeEnumTagSinglePayload(v22, v42, 1, v21);

  OUTLINED_FUNCTION_7_7();

  return v74();
}

uint64_t sub_269732A38()
{
  OUTLINED_FUNCTION_2_7();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v1[39] = v5;
  OUTLINED_FUNCTION_8_9(v5);
  v1[40] = OUTLINED_FUNCTION_37_0();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v1[43] = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v1[44] = OUTLINED_FUNCTION_37_0();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269732B24()
{
  OUTLINED_FUNCTION_8_5();
  v1 = [*(v0 + 288) inTheaters];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 BOOLValue];

    if (v3)
    {
      sub_269830114();
      goto LABEL_6;
    }

    v1 = 0;
  }

  v4 = 0;
LABEL_6:
  *(v0 + 376) = v1;
  *(v0 + 384) = v4;
  v5 = *(v0 + 304);
  sub_2696F3E90(v5 + 144, v0 + 16);
  v6 = *(v5 + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 392) = v7;
  *v7 = v8;
  v7[1] = sub_269732C48;

  return sub_2696CE508(v0 + 16, v6);
}

uint64_t sub_269732C48()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 400) = v4;
  *(v2 + 408) = v5;

  sub_26969B0C0(v2 + 16, &qword_280323398, &unk_26985BAF0);
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269732D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_54_0();
  v44 = v42[50];
  v43 = v42[51];
  v104 = v42[48];
  v103 = v42[47];
  v45 = v42[45];
  v99 = v42[46];
  v112 = v42[44];
  v102 = v42[42];
  v91 = v42[41];
  v111 = v42[40];
  v46 = v42[36];
  v47 = sub_26977E470(v46);
  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  v93 = v50;
  v94 = v49;
  v51 = sub_26977E46C(v46);
  if (v52)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  v95 = v54;
  v96 = v53;
  if (v43)
  {
    v55 = v44;
  }

  else
  {
    v55 = 0;
  }

  if (v43)
  {
    v56 = v43;
  }

  else
  {
    v56 = 0xE000000000000000;
  }

  v100 = v56;
  v101 = v55;
  v57 = sub_269831FBC(v46);
  v107 = v58;
  v108 = v57;
  v59 = sub_269831FC8(v46);
  v109 = v60;
  v110 = v59;
  sub_2696CEF80();
  sub_269851C64();

  v61 = OUTLINED_FUNCTION_31_3();
  v63 = v62;
  sub_2697208E8(v61, v64, v62, v65);
  v66 = sub_2696CD570(v46);
  v105 = v67;
  v106 = v66;
  v42[8] = 0;
  v42[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v68 = type metadata accessor for VideoDataModels.VideoResult(0);
  v87 = v68[5];
  v42[10] = 0;
  v42[9] = 0;
  OUTLINED_FUNCTION_59_0((v42 + 9));
  v88 = v68[6];
  v42[12] = 0;
  v42[11] = 0;
  OUTLINED_FUNCTION_59_0((v42 + 11));
  v89 = v68[7];
  v42[14] = 0;
  v42[13] = 0;
  OUTLINED_FUNCTION_59_0((v42 + 13));
  v97 = v68[8];
  v42[16] = 0;
  v42[15] = 0;
  OUTLINED_FUNCTION_59_0((v42 + 15));
  v98 = v68[9];
  v42[18] = 0;
  v42[17] = 0;
  OUTLINED_FUNCTION_59_0((v42 + 17));
  v86 = v68[10];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  sub_2697208E8(v45, v112, &qword_280323030, &qword_26985BAE0);
  sub_269852674();
  sub_26969B0C0(v45, &qword_280323030, &qword_26985BAE0);
  v90 = v68[11];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  sub_2697208E8(v91, v111, v63, &unk_26985D8B0);
  sub_269852674();
  sub_26969B0C0(v91, v63, &unk_26985D8B0);
  v92 = v68[12];
  v42[20] = 0;
  v42[19] = 0;
  OUTLINED_FUNCTION_59_0((v42 + 19));
  v42[21] = v94;
  v42[22] = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  v42[23] = v96;
  v42[24] = v95;
  OUTLINED_FUNCTION_90((v42 + 23));
  v42[25] = v101;
  v42[26] = v100;
  OUTLINED_FUNCTION_90((v42 + 25));
  v42[27] = v103;
  v42[28] = v104;
  OUTLINED_FUNCTION_90((v42 + 27));
  sub_2697208E8(v99, v45, &qword_280323030, &qword_26985BAE0);
  sub_2697208E8(v45, v112, &qword_280323030, &qword_26985BAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_2698526A4();
  sub_26969B0C0(v45, &qword_280323030, &qword_26985BAE0);
  sub_2697208E8(v102, v91, &qword_2803239E0, &unk_26985D8B0);
  sub_2697208E8(v91, v111, &qword_2803239E0, &unk_26985D8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v91, &qword_2803239E0, &unk_26985D8B0);
  v42[29] = v108;
  v42[30] = v107;
  OUTLINED_FUNCTION_90((v42 + 29));
  v42[31] = v110;
  v42[32] = v109;
  OUTLINED_FUNCTION_90((v42 + 31));
  v42[33] = v106;
  v42[34] = v105;
  OUTLINED_FUNCTION_90((v42 + 33));
  sub_26969B0C0(v102, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v99, &qword_280323030, &qword_26985BAE0);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_32_3();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, v45, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, a39, a40, a41, a42);
}

void *sub_269733248()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  sub_2696D1E70((v0 + 18));
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  sub_26969B0C0(v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_input, &qword_280323AF8, &unk_26985C1D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_eventSender));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_appProvider));
  return v0;
}

uint64_t sub_2697332D8()
{
  sub_269733248();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SearchVideoFlow(uint64_t a1)
{
  result = qword_280323EA0;
  if (!qword_280323EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269733384(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269733484()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269708558;

  return sub_26972D390();
}

uint64_t sub_26973356C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2696DA938;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269733634(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchVideoFlow(0);

  return sub_269852B84();
}

uint64_t sub_269733670(uint64_t a1)
{
  result = sub_2697339D4(&qword_280323EB0, type metadata accessor for SearchVideoFlow, &unk_26985D830);
  *(a1 + 8) = result;
  return result;
}

void sub_2697336C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setAceId_];
}

uint64_t sub_26973372C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_69_1(v2);

  return sub_269732168(v4, v5);
}

uint64_t sub_2697337FC()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2696DA938;

  return sub_2697313F0(v3, v0 + 16);
}

uint64_t objectdestroyTm()
{
  sub_2698538F4();
  OUTLINED_FUNCTION_4_3();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269733910()
{
  OUTLINED_FUNCTION_8_5();
  v1 = sub_2698538F4();
  OUTLINED_FUNCTION_8_9(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_69_1(v2);

  return sub_269730DB0(v4, v5);
}

uint64_t sub_2697339D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269733A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269733A80(uint64_t a1)
{
  v2 = type metadata accessor for VideoDataModels(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269733ADC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3();
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_27()
{
  result = v0[107];
  v3 = v0[55];
  *(v1 - 152) = v0[57];
  *(v1 - 144) = v3;
  v4 = v0[51];
  *(v1 - 136) = v0[52];
  *(v1 - 128) = v4;
  v5 = v0[49];
  *(v1 - 120) = v0[50];
  *(v1 - 112) = v5;
  v6 = v0[44];
  *(v1 - 104) = v0[47];
  *(v1 - 96) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return sub_269853074();
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_269852764();
}

uint64_t OUTLINED_FUNCTION_22_8()
{

  return sub_2698530A4();
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821C9588](a1, a2, 0, 0xE000000000000000, 0, 0xE000000000000000);
}

double OUTLINED_FUNCTION_35_4()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *(v27 - 120);

  return MEMORY[0x2821BB3F0](v29, a25, v25, v26, 0);
}

uint64_t OUTLINED_FUNCTION_43_0()
{
  *(v2 - 112) = (*(v1 + 80) + 32) & ~*(v1 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_2()
{

  return sub_269853284();
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_59_0(uint64_t a1)
{

  return sub_269852674();
}

uint64_t OUTLINED_FUNCTION_61(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_269852664();
}

id OUTLINED_FUNCTION_72(uint64_t a1)
{
  *(v2 - 80) = a1;

  return [v1 catId];
}

id OUTLINED_FUNCTION_73(__n128 *a1, __n128 a2)
{
  *(v4 - 104) = a1;
  a1[1] = a2;

  return [v2 (v3 + 1764)];
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return sub_2697208E8(v1, v0, v3, v2);
}

uint64_t OUTLINED_FUNCTION_76_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = *(v2 - 80);

  return sub_269853234();
}

uint64_t sub_269734044()
{
  OUTLINED_FUNCTION_27_7((v0 + OBJC_IVAR____TtC16SiriVideoIntents15SearchVideoFlow_eventSender));
  OUTLINED_FUNCTION_1_19();
  sub_269852C64();
  OUTLINED_FUNCTION_14_10();
  sub_269852BC4();
}

uint64_t sub_2697340D4()
{
  OUTLINED_FUNCTION_27_7((v0 + 384));
  OUTLINED_FUNCTION_1_19();
  sub_269852C64();
  OUTLINED_FUNCTION_14_10();
  sub_269852BC4();
}

uint64_t sub_269734158()
{
  OUTLINED_FUNCTION_27_7(v0);
  OUTLINED_FUNCTION_1_19();
  sub_269852C64();
  OUTLINED_FUNCTION_14_10();
  sub_269852BC4();
}

uint64_t sub_2697341DC()
{
  __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
  sub_269852C74();
  sub_269852C64();
  sub_269852BC4();
}

void *sub_2697342A0(uint64_t a1)
{
  sub_269853524();
  v1 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v1);
  v2 = sub_269853254();
  v3 = type metadata accessor for BaseDialogProvider();
  v4 = swift_allocObject();
  sub_2698538C4();
  sub_2698538C4();
  type metadata accessor for LocUtil();
  v5 = swift_allocObject();
  sub_26968E5D4(v23, v5 + 16);
  sub_269852BB4();
  v21 = v1;
  v22 = MEMORY[0x277D5BD58];
  *&v20 = v2;
  v19[3] = v3;
  v19[4] = &off_287A3DBA0;
  v19[0] = v4;
  v6 = type metadata accessor for ServerNeedsDisambiguationFlow(0);
  v7 = OUTLINED_FUNCTION_68_0(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v19, v3);
  MEMORY[0x28223BE20](v8);
  v10 = (&v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v7[15] = v3;
  v7[16] = &off_287A3DBA0;
  v7[12] = v12;
  sub_269853854();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_26968E5D4(&v25, (v7 + 2));
  sub_26968E5D4(&v20, (v7 + 7));
  sub_26968E5D4(&v24, (v7 + 17));
  v7[22] = v5;
  sub_26968E5D4(v23, (v7 + 23));
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v7;
}

uint64_t sub_26973448C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v12 = __swift_project_value_buffer(v8, qword_28033D910);
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2698548B4();
  v14 = sub_269854F14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "ServerNeedsDisambiguationFlow.on() called", v15, 2u);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v16 = sub_269853854();
  OUTLINED_FUNCTION_4_3();
  (*(v17 + 16))(v7, a1, v16);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v16);
  v18 = OBJC_IVAR____TtC16SiriVideoIntents29ServerNeedsDisambiguationFlow_input;
  swift_beginAccess();
  sub_269702838(v7, v2 + v18);
  swift_endAccess();
  return 1;
}

uint64_t sub_2697346EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ServerNeedsDisambiguationFlow(0);
  sub_269738174(&qword_280323EF0, type metadata accessor for ServerNeedsDisambiguationFlow, &unk_26985D9E0);
  return sub_269852B54();
}

uint64_t sub_26973477C()
{
  OUTLINED_FUNCTION_2_7();
  v1[44] = v2;
  v1[45] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v1[46] = OUTLINED_FUNCTION_4_7();
  v4 = sub_2698532A4();
  v1[47] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[48] = v5;
  v1[49] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698538F4();
  v1[50] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[51] = v7;
  v1[52] = *(v8 + 64);
  v1[53] = OUTLINED_FUNCTION_37_0();
  v1[54] = swift_task_alloc();
  v9 = type metadata accessor for VideoDataModels.VideoResult(0);
  OUTLINED_FUNCTION_5_12(v9);
  v1[55] = v10;
  v1[56] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v11);
  v1[57] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269853634();
  v1[58] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[59] = v13;
  v1[60] = OUTLINED_FUNCTION_4_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239D8, &unk_26985BAD0);
  v1[61] = v14;
  OUTLINED_FUNCTION_8_9(v14);
  v1[62] = OUTLINED_FUNCTION_37_0();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v15 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  v1[65] = v15;
  OUTLINED_FUNCTION_8_9(v15);
  v1[66] = OUTLINED_FUNCTION_4_7();
  v16 = sub_269853234();
  v1[67] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[68] = v17;
  v1[69] = OUTLINED_FUNCTION_4_7();
  v18 = sub_269852084();
  v1[70] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[71] = v19;
  v1[72] = OUTLINED_FUNCTION_37_0();
  v1[73] = swift_task_alloc();
  v20 = sub_269851F04();
  v1[74] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v1[75] = v21;
  v1[76] = OUTLINED_FUNCTION_37_0();
  v1[77] = swift_task_alloc();
  v22 = sub_2698523C4();
  v1[78] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[79] = v23;
  v1[80] = OUTLINED_FUNCTION_4_7();
  v24 = sub_269852474();
  v1[81] = v24;
  OUTLINED_FUNCTION_5_12(v24);
  v1[82] = v25;
  v1[83] = OUTLINED_FUNCTION_4_7();
  v26 = sub_2698548D4();
  v1[84] = v26;
  OUTLINED_FUNCTION_5_12(v26);
  v1[85] = v27;
  v1[86] = OUTLINED_FUNCTION_37_0();
  v1[87] = swift_task_alloc();
  v28 = sub_269851EF4();
  v1[88] = v28;
  OUTLINED_FUNCTION_5_12(v28);
  v1[89] = v29;
  v1[90] = OUTLINED_FUNCTION_4_7();
  v30 = sub_269853874();
  v1[91] = v30;
  OUTLINED_FUNCTION_5_12(v30);
  v1[92] = v31;
  v1[93] = OUTLINED_FUNCTION_4_7();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v32);
  v1[94] = OUTLINED_FUNCTION_37_0();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v33 = sub_269853854();
  v1[97] = v33;
  OUTLINED_FUNCTION_5_12(v33);
  v1[98] = v34;
  v1[99] = OUTLINED_FUNCTION_4_7();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v35);
  v1[100] = OUTLINED_FUNCTION_4_7();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323E08, &unk_26985D090);
  OUTLINED_FUNCTION_8_9(v36);
  v1[101] = OUTLINED_FUNCTION_37_0();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v37);
}

uint64_t sub_269734D50()
{
  v1 = v0[100];
  v2 = v0[97];
  v3 = v0[45];
  sub_2697341DC();
  v4 = OBJC_IVAR____TtC16SiriVideoIntents29ServerNeedsDisambiguationFlow_input;
  swift_beginAccess();
  sub_2697208E8(v3 + v4, v1, &qword_280323AF8, &unk_26985C1D0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_26969B0C0(v0[100], &qword_280323AF8, &unk_26985C1D0);
    v5 = 1;
  }

  else
  {
    v6 = v0[100];
    v7 = v0[99];
    v8 = v0[98];
    v9 = v0[97];
    (*(v8 + 16))(v7, v6, v9);
    sub_26969B0C0(v6, &qword_280323AF8, &unk_26985C1D0);
    sub_269853844();
    (*(v8 + 8))(v7, v9);
    v5 = 0;
  }

  v10 = v0[103];
  v11 = v0[102];
  v12 = sub_2698538B4();
  __swift_storeEnumTagSinglePayload(v10, v5, 1, v12);
  sub_2697208E8(v10, v11, &qword_280323E08, &unk_26985D090);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    goto LABEL_5;
  }

  sub_2697208E8(v0[102], v0[101], &qword_280323E08, &unk_26985D090);
  v25 = OUTLINED_FUNCTION_50_0();
  v27 = v26(v25);
  v128 = v0;
  if (v27 == *MEMORY[0x277D5C140])
  {
    v28 = v0[101];
    v29 = v0[93];
    v30 = v0[92];
    v31 = v0[91];
    v32 = v0[90];
    v33 = v0[89];
    v34 = v0[88];
    v35 = OUTLINED_FUNCTION_50_0();
    v36(v35);
    (*(v30 + 32))(v29, v28, v31);
    sub_269853864();
    sub_2696D3C74();
    (*(v33 + 8))(v32, v34);
    v0 = v128;
    (*(v30 + 8))(v29, v31);
  }

  else
  {
    v37 = v0[101];
    if (v27 != *MEMORY[0x277D5C148])
    {
      v44 = OUTLINED_FUNCTION_50_0();
      v45(v44);
LABEL_5:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      __swift_project_value_buffer(v0[84], qword_28033D910);
      v13 = OUTLINED_FUNCTION_2_8();
      v14(v13);
      v15 = sub_2698548B4();
      v16 = sub_269854F14();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        OUTLINED_FUNCTION_31_0(&dword_269684000, v18, v19, "Received unexpected parse. Returning error");
        MEMORY[0x26D647170](v17, -1, -1);
      }

      v20 = OUTLINED_FUNCTION_22_3();
      v21(v20);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[104] = v22;
      *v22 = v23;
      v24 = sub_269735AF0;
LABEL_35:
      v22[1] = v24;
LABEL_36:
      OUTLINED_FUNCTION_84();

      return sub_2697375DC();
    }

    v38 = OUTLINED_FUNCTION_50_0();
    v39(v38);
    v40 = *v37;
    sub_2696D6C54();
    if (v41)
    {
      v42 = v41;
      sub_269854544();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v46 = v0[96];
    v47 = v0[95];
    v48 = v0[81];

    __swift_storeEnumTagSinglePayload(v47, v43, 1, v48);
    sub_269733ADC(v47, v46, &qword_280323360, &unk_26985AB80);
  }

  v49 = v0[96];
  v50 = v0[94];
  v51 = v0[81];
  sub_26969B0C0(v0[102], &qword_280323E08, &unk_26985D090);
  sub_2697208E8(v49, v50, &qword_280323360, &unk_26985AB80);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    sub_26969B0C0(v0[94], &qword_280323360, &unk_26985AB80);
LABEL_30:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(v0[84], qword_28033D910);
    v74 = OUTLINED_FUNCTION_2_8();
    v75(v74);
    v76 = sub_2698548B4();
    v77 = sub_269854F14();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v79, v80, "Received unexpected video verb. Returning error");
      MEMORY[0x26D647170](v78, -1, -1);
    }

    v81 = OUTLINED_FUNCTION_22_3();
    v82(v81);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[111] = v22;
    *v22 = v83;
    v24 = sub_2697368F4;
    goto LABEL_35;
  }

  v52 = v0[80];
  v53 = v0[79];
  v54 = v0[78];
  v55 = v0[76];
  v56 = v0[75];
  v57 = v0[74];
  (*(v0[82] + 32))(v0[83], v0[94], v0[81]);
  sub_269852424();
  sub_2698523A4();
  (*(v53 + 8))(v52, v54);
  (*(v56 + 104))(v55, *MEMORY[0x277D391F8], v57);
  sub_269738174(&qword_280323EC8, MEMORY[0x277D39210], MEMORY[0x277D39228]);
  sub_269854C44();
  sub_269854C44();
  v58 = *(v56 + 8);
  v58(v55, v57);
  v59 = OUTLINED_FUNCTION_22_3();
  (v58)(v59);
  if (v0[39] != v0[40])
  {
    (*(v0[82] + 8))(v0[83], v0[81]);
    goto LABEL_30;
  }

  v60 = sub_269852464();
  v61 = MEMORY[0x277D84F90];
  v129 = MEMORY[0x277D84F90];
  v62 = *(v60 + 16);
  if (v62)
  {
    v63 = v128[71];
    type metadata accessor for Content();
    v66 = *(v63 + 16);
    v64 = v63 + 16;
    v65 = v66;
    v67 = v60 + ((*(v64 + 64) + 32) & ~*(v64 + 64));
    v126 = *(v64 + 56);
    v68 = MEMORY[0x277D84F90];
    do
    {
      v69 = v128[73];
      v70 = v128[72];
      v71 = v128[70];
      v65(v69, v67, v71);
      v65(v70, v69, v71);
      v72 = sub_2696CF2E8(v70);
      v73 = (*(v64 - 8))(v69, v71);
      if (v72)
      {
        MEMORY[0x26D645B90](v73);
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
        v68 = v129;
      }

      v67 += v126;
      --v62;
    }

    while (v62);

    v61 = MEMORY[0x277D84F90];
  }

  else
  {

    v68 = MEMORY[0x277D84F90];
  }

  sub_2698359E4();
  v86 = sub_26975004C();
  if (v86 <= 1)
  {
    if (!sub_26975004C())
    {

      v123 = swift_task_alloc();
      v128[110] = v123;
      *v123 = v128;
      v123[1] = sub_26973663C;
      goto LABEL_36;
    }

    sub_269750050();
    if ((v68 & 0xC000000000000001) != 0)
    {
      v95 = MEMORY[0x26D646120](0, v68);
    }

    else
    {
      v95 = *(v68 + 32);
    }

    v128[107] = v95;

    v96 = swift_task_alloc();
    v128[108] = v96;
    *v96 = v128;
    v96[1] = sub_269736108;
    OUTLINED_FUNCTION_84();

    return sub_269737388(v97);
  }

  else
  {
    v87 = v86;
    v88 = v128[55];
    sub_26981525C(0, v86, 0);
    for (i = 0; i != v87; ++i)
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v90 = MEMORY[0x26D646120](i, v68);
      }

      else
      {
        v90 = *(v68 + 8 * i + 32);
      }

      v91 = v90;
      sub_269736C7C(v90);

      v93 = *(v61 + 16);
      v92 = *(v61 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_26981525C(v92 > 1, v93 + 1, 1);
      }

      v94 = v128[56];
      *(v61 + 16) = v93 + 1;
      sub_2696F3EEC(v94, v61 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v93);
    }

    v99 = v128[66];
    v100 = v128[63];
    v125 = v128[69];
    v124 = v128[64];
    v127 = v128[45];

    v101 = type metadata accessor for VideoDataModels.PersonModel(0);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v101);
    OUTLINED_FUNCTION_57();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v101);
    OUTLINED_FUNCTION_38_4();
    sub_269852674();
    OUTLINED_FUNCTION_14_10();
    sub_26969B0C0(v108, v109, v110);
    v128[35] = 0;
    v128[36] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    sub_269852674();
    v128[42] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
    sub_269852674();
    sub_2697208E8(v124, v100, &qword_2803239D8, &unk_26985BAD0);
    OUTLINED_FUNCTION_38_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    sub_2698526A4();
    OUTLINED_FUNCTION_14_10();
    sub_26969B0C0(v111, v112, v113);
    v128[37] = 0;
    v128[38] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    sub_2698526A4();
    OUTLINED_FUNCTION_14_10();
    sub_26969B0C0(v114, v115, v116);
    sub_269852E64();
    *(swift_task_alloc() + 16) = v125;
    sub_2698535C4();

    __swift_project_boxed_opaque_existential_1((v127 + 56), *(v127 + 80));
    v128[20] = type metadata accessor for VideoDataModels(0);
    v128[21] = sub_269738174(&qword_280323A28, type metadata accessor for VideoDataModels, &protocol conformance descriptor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v128 + 17);
    sub_2697381BC(v99, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v118 = swift_allocObject();
    v128[105] = v118;
    *(v118 + 16) = xmmword_2698590C0;
    sub_2696D4FC8();
    *(v118 + 32) = v119;
    v120 = swift_task_alloc();
    v128[106] = v120;
    *v120 = v128;
    v120[1] = sub_269735D5C;
    OUTLINED_FUNCTION_84();

    return MEMORY[0x2821BB468](v121);
  }
}