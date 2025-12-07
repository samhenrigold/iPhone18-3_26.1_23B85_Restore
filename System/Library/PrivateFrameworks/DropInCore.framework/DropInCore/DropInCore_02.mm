void sub_249E1C36C()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v5);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_230();
  v7 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = v4;
  v17 = sub_249E7A698();
  v18 = sub_249E7AE28();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_70();
    v19 = swift_slowAlloc();
    v37 = v2;
    v20 = v19;
    v21 = OUTLINED_FUNCTION_6();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&dword_249DEE000, v17, v18, "Did Set Conversation %@", v20, 0xCu);
    sub_249E2A8CC(v21, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v23 = [v16 state];
  v24 = [v16 UUID];
  sub_249E7A608();

  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_22();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v38;
  (*(v9 + 16))(v38, v15, v7);
  v31 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v32 = (v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v29;
  (*(v9 + 32))(&v33[v31], v30, v7);
  *&v33[v32] = v23;
  v34 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v34, v35, v1, v36, v33);

  (*(v9 + 8))(v15, v7);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for TransactionType(0);
  v6[8] = swift_task_alloc();
  v7 = sub_249E7AC78();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1C760, 0, 0);
}

uint64_t sub_249E1C760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[12] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v14[11];
      OUTLINED_FUNCTION_70();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      v23 = sub_249E28F84(v21, v22);
      OUTLINED_FUNCTION_261(v23);
      v24 = OUTLINED_FUNCTION_33();
      v25(v24);
      v26 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v26, v27, v28);
      OUTLINED_FUNCTION_156();

      *(v20 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v29, v30, "Task Priority = %s [Did Set Converstion Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[13] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    OUTLINED_FUNCTION_297();
    OUTLINED_FUNCTION_28();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v35, v36, v37);
  }

  else
  {
    OUTLINED_FUNCTION_334();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1C914()
{
  OUTLINED_FUNCTION_11();
  sub_249E339F0(*(v0 + 64));
  OUTLINED_FUNCTION_18_0();
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1C97C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager;
  v0[14] = OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager;
  v0[15] = *(v1 + v2);
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E1C9EC()
{
  OUTLINED_FUNCTION_11();
  sub_249E27B08(*(v0 + 48), "Setting Conversation Identifier to %s", v5);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1CA64()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[7];
  v0[16] = *(v0[12] + v0[14]);

  v0[17] = sub_249E2DA64(v1);
  v2 = OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E1CAE0()
{
  OUTLINED_FUNCTION_11();
  sub_249E2615C(*(v0 + 136), 0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1CB48()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_334();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E1CBAC()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v4);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_142();
  v14 = v12 - v13;
  v50 = v15;
  MEMORY[0x28223BE20](v16);
  v51 = &v47 - v17;
  v18 = v3;
  v19 = sub_249E7A698();
  v20 = sub_249E7AE28();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_188();
    v48 = v7;
    v22 = v21;
    v23 = OUTLINED_FUNCTION_6();
    v49 = v8;
    v24 = v23;
    OUTLINED_FUNCTION_74();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v22 = 136315394;
    v25 = TUConversationState.description.getter([v18 state]);
    v27 = v14;
    v28 = v1;
    v29 = sub_249E3A958(v25, v26, &v52);

    *(v22 + 4) = v29;
    v1 = v28;
    v14 = v27;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v18;
    *v24 = v18;
    v30 = v18;
    _os_log_impl(&dword_249DEE000, v19, v20, "Did Update State to %s for Conversation %@", v22, 0x16u);
    sub_249E2A8CC(v24, &unk_27EF23C30, &qword_249E7DA20);
    v8 = v49;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_64();
    v7 = v48;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v31 = [v18 state];
  v32 = [v18 UUID];
  v33 = v51;
  sub_249E7A608();

  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_22();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_282(v38);
  swift_unknownObjectWeakInit();
  v39 = OUTLINED_FUNCTION_113();
  v40(v39);
  v41 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v42 = swift_allocObject();
  v43 = OUTLINED_FUNCTION_210(v42);
  *(v43 + 32) = v32;
  *(v43 + 40) = v31;
  (*(v10 + 32))(v43 + v41, v14, v8);
  v44 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v44, v45, v7, v46, v1);

  (*(v10 + 8))(v33, v8);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v6[8] = swift_task_alloc();
  v7 = sub_249E7AC78();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1CFFC, 0, 0);
}

uint64_t sub_249E1CFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[12] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v14[11];
      OUTLINED_FUNCTION_70();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      v23 = sub_249E28F84(v21, v22);
      OUTLINED_FUNCTION_261(v23);
      v24 = OUTLINED_FUNCTION_33();
      v25(v24);
      v26 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v26, v27, v28);
      OUTLINED_FUNCTION_156();

      *(v20 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v29, v30, "Task Priority = %s [Did Update State For Conversation Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[13] = sub_249E2DA64(v14[6]);
    v14[14] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_334();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1D19C()
{
  OUTLINED_FUNCTION_11();
  sub_249E2615C(*(v0 + 104), 0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1D204()
{
  OUTLINED_FUNCTION_23();
  if (*(v0 + 104) == 6)
  {
    v1 = sub_249E7A628();
    OUTLINED_FUNCTION_28_0();
    v2 = OUTLINED_FUNCTION_81();
    v3(v2);
    OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v1);
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_249E1D334;
    v8 = OUTLINED_FUNCTION_97(*(v0 + 64));

    return sub_249E1940C(v8);
  }

  else
  {

    OUTLINED_FUNCTION_334();

    OUTLINED_FUNCTION_9_0();

    return v10();
  }
}

uint64_t sub_249E1D334()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  sub_249E2A8CC(v2, &qword_27EF234B0, &qword_249E7D910);
  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_249E1D444()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v3);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  OUTLINED_FUNCTION_37(v6);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v47 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = v2;
  v49 = v0;
  v17 = sub_249E7A698();
  v18 = sub_249E7AE28();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_70();
    v19 = swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_6();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    OUTLINED_FUNCTION_339(&dword_249DEE000, v17, v18, "Did Start Conversation %@");
    sub_249E2A8CC(v20, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7A598();
  v22 = *(v11 + 16);
  v23 = v47;
  v22(v9, v15, v47);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v27 = v49 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  OUTLINED_FUNCTION_252(v49 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent, &v50);
  v28 = type metadata accessor for DropInSessionAnalyticEvent(0);
  sub_249E28EE8(v9, v27 + *(v28 + 24), &qword_27EF236C0, &unk_249E7F8F0);
  v29 = *(v28 + 28);
  OUTLINED_FUNCTION_213();
  sub_249E2A8CC(v30, v31, v32);
  v22((v27 + v29), v15, v23);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v23);
  swift_endAccess();
  v36 = v48;
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_22();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_185(v41);
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(OUTLINED_FUNCTION_218(v42) + 32) = v27;
  v43 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v43, v44, v36, v45, v46);

  (*(v11 + 8))(v15, v23);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_249E7AC78();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1D844, 0, 0);
}

uint64_t sub_249E1D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[9] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v14[8];
      OUTLINED_FUNCTION_70();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      v23 = sub_249E28F84(v21, v22);
      OUTLINED_FUNCTION_261(v23);
      v24 = OUTLINED_FUNCTION_33();
      v25(v24);
      v26 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v26, v27, v28);
      OUTLINED_FUNCTION_156();

      *(v20 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v29, v30, "Task Priority = %s [Did Start Converstion Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[10] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_stateManager);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1D9D4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_18();
  sub_249E2F110(v0, v1, v2);

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E1DA40()
{
  OUTLINED_FUNCTION_11();
  *(v0 + 88) = *(*(v0 + 72) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1DAAC()
{
  OUTLINED_FUNCTION_11();
  sub_249E2615C(4, 0);

  v0 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_249E1DB18()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E1DB78()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v80 = v3;
  v79 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v9);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v76 = type metadata accessor for DropInSessionAnalyticEvent(0);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v77 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  OUTLINED_FUNCTION_37(v16);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_84();
  v18 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_142();
  v81 = v22 - v23;
  v78 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v71 - v26;
  v28 = v8;
  v29 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    v30 = OUTLINED_FUNCTION_188();
    v73 = v18;
    v31 = v30;
    v32 = OUTLINED_FUNCTION_6();
    v74 = v2;
    v33 = v32;
    OUTLINED_FUNCTION_74();
    v34 = swift_slowAlloc();
    v75 = v12;
    v71 = v34;
    v82[0] = v34;
    *v31 = 138412546;
    *(v31 + 4) = v28;
    *v33 = v28;
    *(v31 + 12) = 2080;
    v35 = sub_249E6DA94(v6);
    v72 = v27;
    v36 = v35;
    v37 = v0;
    v38 = v20;
    v39 = v6;
    v41 = v40;
    v42 = v28;
    v43 = sub_249E3A958(v36, v41, v82);
    v6 = v39;
    v20 = v38;
    v0 = v37;

    *(v31 + 14) = v43;
    v27 = v72;
    OUTLINED_FUNCTION_202();
    _os_log_impl(v44, v45, v46, v47, v31, 0x16u);
    sub_249E2A8CC(v33, &unk_27EF23C30, &qword_249E7DA20);
    v2 = v74;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    __swift_destroy_boxed_opaque_existential_0(v71);
    v12 = v75;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v18 = v73;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v48 = [v28 UUID];
  sub_249E7A608();

  sub_249E7A598();
  sub_249E7A5B8();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = v2 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  OUTLINED_FUNCTION_252(v2 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent, v82);
  v54 = v76;
  sub_249E28EE8(v0, v53 + *(v76 + 32), &qword_27EF236C0, &unk_249E7F8F0);
  v55 = sub_249E6DA94(v6);
  v56 = (v53 + *(v54 + 40));
  *v56 = v55;
  v56[1] = v57;
  v58 = v53 + *(v54 + 36);
  *v58 = v79;
  *(v58 + 8) = v80 & 1;
  swift_endAccess();

  OUTLINED_FUNCTION_46_0();
  v59 = v77;
  sub_249E2AAB0(v53, v77);
  sub_249E28B3C(v59);
  OUTLINED_FUNCTION_21_0();
  sub_249E2AA5C(v59);
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  OUTLINED_FUNCTION_22();
  v64 = swift_allocObject();
  OUTLINED_FUNCTION_282(v64);
  swift_unknownObjectWeakInit();
  v65 = v81;
  (*(v20 + 16))(v81, v27, v18);
  v66 = (*(v20 + 80) + 41) & ~*(v20 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = v59;
  *(v67 + 40) = v6;
  (*(v20 + 32))(v67 + v66, v65, v18);
  v68 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v68, v69, v12, v70, v67);

  (*(v20 + 8))(v27, v18);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1E02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  *(v6 + 56) = swift_task_alloc();
  v7 = sub_249E7AC78();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1E128, 0, 0);
}

uint64_t sub_249E1E128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v14 + 88) = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v14 + 80);
      OUTLINED_FUNCTION_70();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      v23 = sub_249E28F84(v21, v22);
      OUTLINED_FUNCTION_261(v23);
      v24 = OUTLINED_FUNCTION_33();
      v25(v24);
      v26 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v26, v27, v28);
      OUTLINED_FUNCTION_156();

      *(v20 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v29, v30, "Task Priority = %s [Did End Converstion Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    *(v14 + 96) = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    *(v14 + 104) = sub_249E1E584(*(v14 + 120));
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_337();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1E2C8()
{
  OUTLINED_FUNCTION_11();
  sub_249E2615C(7, *(v0 + 104));

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1E330()
{
  OUTLINED_FUNCTION_23();
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_28_0();
  v2 = OUTLINED_FUNCTION_81();
  v3(v2);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v1);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_249E1E410;
  v8 = OUTLINED_FUNCTION_97(*(v0 + 56));

  return sub_249E1940C(v8);
}

uint64_t sub_249E1E410()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  sub_249E2A8CC(v2, &qword_27EF234B0, &qword_249E7D910);
  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E1E520()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_337();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E1E598()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v6);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  v9 = v64 - v8;
  v69 = type metadata accessor for DropInSessionAnalyticEvent(0);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v70 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v14 = OUTLINED_FUNCTION_34_0(v13);
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_142();
  v19 = v17 - v18;
  v71 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = v64 - v22;
  v72 = v5;
  v24 = v5;
  v25 = v3;
  v26 = v24;
  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();

  v29 = os_log_type_enabled(v27, v28);
  v68 = v26;
  if (v29)
  {
    OUTLINED_FUNCTION_188();
    v66 = v1;
    v30 = OUTLINED_FUNCTION_173();
    v65 = v16;
    v31 = v30;
    OUTLINED_FUNCTION_74();
    v32 = swift_slowAlloc();
    v67 = v9;
    v64[1] = v32;
    v74[0] = v32;
    *v1 = 138412546;
    *(v1 + 4) = v26;
    *v31 = v72;
    *(v1 + 12) = 2080;
    swift_getErrorValue();
    v33 = v73;
    v34 = v26;
    v35 = sub_249E7B3A8();
    sub_249E3A958(v35, v36, v74);
    OUTLINED_FUNCTION_157();

    *(v1 + 14) = v33;
    _os_log_impl(&dword_249DEE000, v27, v28, "Did Fail Conversation %@, Error = %s", v1, 0x16u);
    sub_249E2A8CC(v31, &unk_27EF23C30, &qword_249E7DA20);
    v16 = v65;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_336();
    v9 = v67;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v1 = v66;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  if (v72)
  {
    v37 = [v68 UUID];
    sub_249E7A608();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = sub_249E7A628();
  __swift_storeEnumTagSinglePayload(v23, v38, 1, v39);
  swift_getErrorValue();
  v40 = sub_249DF3DA4(v74[4], v74[5]);
  v42 = v41;
  v43 = v1 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  swift_beginAccess();
  v44 = (v43 + *(v69 + 40));
  *v44 = v40;
  v44[1] = v42;

  OUTLINED_FUNCTION_46_0();
  v45 = v70;
  sub_249E2AAB0(v43, v70);
  sub_249E28B3C(v45);
  OUTLINED_FUNCTION_21_0();
  sub_249E2AA5C(v45);
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  OUTLINED_FUNCTION_22();
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_282(v50);
  swift_unknownObjectWeakInit();
  v51 = OUTLINED_FUNCTION_296();
  sub_249E2A75C(v51, v52, &qword_27EF234B0, &qword_249E7D910);
  v53 = *(v16 + 80);
  v54 = v3;
  v55 = (v53 + 40) & ~v53;
  v56 = (v71 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v57[4] = v45;
  sub_249E2A7A4(v19, v57 + v55, &qword_27EF234B0, &qword_249E7D910);
  *(v57 + v56) = v54;
  v58 = v54;
  v59 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v59, v60, v9, v61, v57);

  v62 = OUTLINED_FUNCTION_151();
  sub_249E2A8CC(v62, v63, &qword_249E7D910);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_249E7AC78();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1EAE4, 0, 0);
}

uint64_t sub_249E1EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[11] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v14[10];
      OUTLINED_FUNCTION_70();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      v23 = sub_249E28F84(v21, v22);
      OUTLINED_FUNCTION_261(v23);
      v24 = OUTLINED_FUNCTION_33();
      v25(v24);
      v26 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v26, v27, v28);
      OUTLINED_FUNCTION_156();

      *(v20 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v29, v30, "Task Priority = %s [Did Fail Converstion Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[12] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1EC74()
{
  OUTLINED_FUNCTION_11();
  sub_249E27304(*(v0 + 48), *(v0 + 56));

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_249E1ED18;
  v2 = OUTLINED_FUNCTION_97(*(v0 + 48));

  return sub_249E1940C(v2);
}

uint64_t sub_249E1ED18()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E1EDFC()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E1EE5C(float a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCClient(0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v55 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v56 = &v49 - v13;
  v54 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v14 = sub_249E7A698();
  v15 = sub_249E7ADF8();
  if (OUTLINED_FUNCTION_201(v15))
  {
    OUTLINED_FUNCTION_70();
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    OUTLINED_FUNCTION_273(&dword_249DEE000, v14, v15, "Call center manager audio power update received. audioPower: %f");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = sub_249E3F064();
    swift_unknownObjectRelease();
    v19 = 0;
    v21 = v17 + 56;
    v20 = *(v17 + 56);
    v57 = v17;
    v22 = 1 << *(v17 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v20;
    v25 = (v22 + 63) >> 6;
    *&v18 = 136315138;
    v49 = v18;
    v53 = v6;
    v26 = v55;
    v50 = v4;
    v51 = v2;
    if ((v23 & v20) != 0)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v25)
      {

        return;
      }

      v24 = *(v21 + 8 * v27);
      ++v19;
      if (v24)
      {
        v19 = v27;
        do
        {
LABEL_11:
          v28 = v56;
          OUTLINED_FUNCTION_2_5();
          sub_249E2AAB0(v29, v28);
          OUTLINED_FUNCTION_13_2();
          sub_249E2A924(v28, v26);
          if (*(v26 + *(v4 + 24)))
          {
            OUTLINED_FUNCTION_2_5();
            v30 = OUTLINED_FUNCTION_302();
            sub_249E2AAB0(v30, v31);
            v32 = v10;
            v33 = sub_249E7A698();
            v34 = sub_249E7ADF8();
            if (os_log_type_enabled(v33, v34))
            {
              OUTLINED_FUNCTION_70();
              v35 = swift_slowAlloc();
              OUTLINED_FUNCTION_74();
              v52 = swift_slowAlloc();
              v59 = v52;
              *v35 = v49;
              v36 = v32;
              v37 = sub_249E6A23C();
              OUTLINED_FUNCTION_0_6();
              sub_249E2AA5C(v36);
              v38 = OUTLINED_FUNCTION_105();
              sub_249E3A958(v38, v39, v40);
              OUTLINED_FUNCTION_305();

              *(v35 + 4) = v37;
              OUTLINED_FUNCTION_339(&dword_249DEE000, v33, v34, "Notifying Client: %s", v49);
              OUTLINED_FUNCTION_53_0();
              v4 = v50;
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();

              v10 = v36;
            }

            else
            {

              OUTLINED_FUNCTION_0_6();
              sub_249E2AA5C(v32);
              v10 = v32;
            }

            v26 = v55;
            v41 = [*&v55[*(v4 + 20)] remoteObjectProxy];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
            if (OUTLINED_FUNCTION_7_0())
            {
              *&v42 = a1;
              [v58 didUpdateAudioPower_];
              swift_unknownObjectRelease();
            }

            else
            {
              v43 = sub_249E7A698();
              v44 = sub_249E7ADF8();
              if (OUTLINED_FUNCTION_201(v44))
              {
                v45 = OUTLINED_FUNCTION_9();
                *v45 = 0;
                _os_log_impl(&dword_249DEE000, v43, v44, "Received audio power update, but client proxy is nil. Skipping client.", v45, 2u);
                OUTLINED_FUNCTION_65();
                MEMORY[0x24C205870]();
              }

              v26 = v55;
            }
          }

          v24 &= v24 - 1;
          OUTLINED_FUNCTION_0_6();
          sub_249E2AA5C(v26);
        }

        while (v24);
      }
    }

    __break(1u);
  }

  else
  {
    v57 = sub_249E7A698();
    v46 = sub_249E7ADF8();
    if (os_log_type_enabled(v57, v46))
    {
      v47 = OUTLINED_FUNCTION_9();
      *v47 = 0;
      _os_log_impl(&dword_249DEE000, v57, v46, "Received audio power update, but client data source is nil. Returning early.", v47, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v48 = v57;
  }
}

uint64_t sub_249E1F358(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v5);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_230();
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_22();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_174(v11);
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_218(v12);
  *(v13 + 32) = v3;
  *(v13 + 40) = a2;
  v14 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v14, v15, v2, v16, v17);
}

uint64_t sub_249E1F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 112) = a5;
  *(v5 + 40) = a4;
  *(v5 + 48) = *(type metadata accessor for XPCClient(0) - 8);
  *(v5 + 56) = swift_task_alloc();
  v6 = sub_249E7AC78();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1F550, 0, 0);
}

uint64_t sub_249E1F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14[11] = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_249E7A698();
    sub_249E7AE28();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v14[10];
      OUTLINED_FUNCTION_70();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_262(4.8149e-34);
      OUTLINED_FUNCTION_9_2();
      v23 = sub_249E28F84(v21, v22);
      OUTLINED_FUNCTION_261(v23);
      v24 = OUTLINED_FUNCTION_33();
      v25(v24);
      v26 = OUTLINED_FUNCTION_136();
      sub_249E3A958(v26, v27, v28);
      OUTLINED_FUNCTION_156();

      *(v20 + 4) = v19;
      OUTLINED_FUNCTION_92(&dword_249DEE000, v29, v30, "Task Priority = %s [Did Update Uplink Muted Status Task]");
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v14[12] = *(v16 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_337();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1F6E0()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 96) + qword_28130E738);
  *(v0 + 104) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E1F758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v17 = *(v14 + 88);
  if (!*(v14 + 104))
  {
LABEL_11:

    OUTLINED_FUNCTION_337();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_10:

    v17 = *(v14 + 104);
    goto LABEL_11;
  }

  a10 = *(v14 + 48);
  sub_249E3F064();
  OUTLINED_FUNCTION_157();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_58();
  v20 = v19 & v18;
  result = OUTLINED_FUNCTION_198();
  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_8:
      v24 = *(v14 + 104);
      v25 = *(v14 + 56);
      v26 = *(v14 + 112);
      OUTLINED_FUNCTION_2_5();
      sub_249E2AAB0(v27, v25);
      v28 = OUTLINED_FUNCTION_308();
      sub_249E1F8F4(v28, v29, v24, v26);
      v30 = *(v14 + 56);
      OUTLINED_FUNCTION_306();
      OUTLINED_FUNCTION_0_6();
      sub_249E2AA5C(v30);
      v22 = v23;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v16)
    {

      goto LABEL_10;
    }

    ++v22;
    if (*(v15 + 8 * v23))
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_249E1F8F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = [*(a1 + *(type metadata accessor for XPCClient(0) + 20)) remoteObjectProxy];
  sub_249E7AFF8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
  if (swift_dynamicCast())
  {
    [v10 session:a3 didUpdateUplinkMuteStatus:a4 & 1];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_249E7A698();
    v8 = sub_249E7ADF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_249DEE000, v7, v8, "Received uplinked muted status update, but client proxy is nil. Skipping client.", v9, 2u);
      MEMORY[0x24C205870](v9, -1, -1);
    }
  }
}

void sub_249E1FA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v32);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_249E7AC58();
  sub_249E7AC78();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  OUTLINED_FUNCTION_22();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v28 + 16))(&a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
  v41 = ((*(v28 + 80) + 40) & ~*(v28 + 80)) + v30;
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v40;
  OUTLINED_FUNCTION_206();
  v43();
  *(v42 + v41) = v23 & 1;
  v44 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v44, v45, v35, v46, v42);

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v7 = sub_249E7A5B8();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1FCD4, 0, 0);
}

uint64_t sub_249E1FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v22 + 80) = Strong;
  if (Strong)
  {
    (*(*(v22 + 64) + 16))(*(v22 + 72), *(v22 + 48), *(v22 + 56));
    v27 = sub_249E7A698();
    v28 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_224(v28))
    {
      v54 = *(v22 + 96);
      OUTLINED_FUNCTION_188();
      a11 = OUTLINED_FUNCTION_263();
      *v23 = 136315394;
      sub_249E28F84(&unk_27EF23778, MEMORY[0x277CC9578]);
      sub_249E7B2D8();
      v29 = OUTLINED_FUNCTION_183();
      v30(v29);
      v31 = OUTLINED_FUNCTION_296();
      sub_249E3A958(v31, v32, v33);
      OUTLINED_FUNCTION_156();

      OUTLINED_FUNCTION_232();
      if (v54)
      {
        v34 = 0x657669746341;
      }

      else
      {
        v34 = 0x676E6974696157;
      }

      if (v54)
      {
        v35 = 0xE600000000000000;
      }

      else
      {
        v35 = 0xE700000000000000;
      }

      v36 = sub_249E3A958(v34, v35, &a11);

      *(v23 + 14) = v36;
      OUTLINED_FUNCTION_196(&dword_249DEE000, v37, v38, "Call center manager did set timeout %s. mode: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      v48 = OUTLINED_FUNCTION_183();
      v49(v48);
    }

    *(v22 + 88) = *(Strong + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x2822009F8](v50, v51, v52);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E1FF24()
{
  OUTLINED_FUNCTION_11();
  sub_249E25AC0(*(v0 + 48), *(v0 + 96) & 1);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1FF94()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E20008()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_11_1(sub_249E20030, v1);
}

uint64_t sub_249E20030()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 24) + qword_28130E738);
  *(v0 + 32) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E200A8()
{
  OUTLINED_FUNCTION_23();
  if (v0[4])
  {
    v1 = sub_249E28F30();
    v0[5] = OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v1);
    *v2 = 28;
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_249E20194;
    v4 = OUTLINED_FUNCTION_241();

    return sub_249E0E5CC(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_112();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_249E20194()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E20294()
{
  OUTLINED_FUNCTION_11();

  v1 = OUTLINED_FUNCTION_112();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E202E4()
{
  OUTLINED_FUNCTION_11();
  sub_249E2530C();
  OUTLINED_FUNCTION_9_0();

  return v0();
}

unint64_t sub_249E2033C(uint64_t a1, uint64_t a2)
{
  sub_249E7B338();
  OUTLINED_FUNCTION_157();

  if (v2 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_249E2038C(char a1)
{
  result = 0x46746F4E656D6F68;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x746F4E72656E776FLL;
      break;
    case 3:
    case 6:
      OUTLINED_FUNCTION_317();
      result = v8 | 1;
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_317();
      result = v7 - 1;
      break;
    case 7:
    case 13:
    case 17:
    case 28:
      OUTLINED_FUNCTION_317();
      result = v11 - 2;
      break;
    case 9:
      OUTLINED_FUNCTION_317();
      result = v5 + 17;
      break;
    case 11:
      OUTLINED_FUNCTION_317();
      result = v4 | 4;
      break;
    case 12:
      result = 0x657469766E496F6ELL;
      break;
    case 14:
      result = 0x6576697463416F6ELL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x6F4E656369766564;
      break;
    case 19:
      OUTLINED_FUNCTION_317();
      result = v9 + 10;
      break;
    case 20:
      result = 0x666C65536C696ELL;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0x4864696C61766E69;
      break;
    case 23:
      OUTLINED_FUNCTION_317();
      result = v10 + 16;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      OUTLINED_FUNCTION_317();
      result = v6 + 7;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    case 27:
      OUTLINED_FUNCTION_317();
      result = v3 + 2;
      break;
    case 29:
      result = 0x4E65657469766E69;
      break;
    case 30:
      result = 0x496E6F6973736573;
      break;
    case 31:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

unint64_t sub_249E20738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E2033C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_249E20768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E2038C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_249E207B8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = sub_249E7AAA8();
  *(inited + 40) = v3;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = sub_249E2038C(a1);
  *(inited + 56) = v4;
  return sub_249E7AA08();
}

uint64_t sub_249E20860(uint64_t a1)
{
  v2 = sub_249E2B2C4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_249E2089C(uint64_t a1)
{
  v2 = sub_249E2B2C4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_249E208D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  v7 = sub_249E7A628();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v6[19] = *(v8 + 64);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E209E0, 0, 0);
}

uint64_t sub_249E209E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_285();
  v26 = *(v24 + 160);
  v25 = *(v24 + 168);
  v27 = *(v24 + 144);
  v28 = *(v24 + 152);
  v29 = *(v24 + 136);
  v61 = *(v24 + 128);
  v30 = *(v24 + 112);
  v31 = *(v24 + 120);
  v60 = *(v24 + 104);
  v57 = *(v24 + 96);
  v59 = sub_249E7AC78();
  v32 = v25;
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_249E29D24(v30, v24 + 16);
  v37 = v27;
  v56 = v27 + 16;
  v58 = *(v27 + 16);
  v58(v26, v31, v29);
  v55 = (*(v27 + 80) + 80) & ~*(v27 + 80);
  v38 = (v28 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v60;
  sub_249DF0790((v24 + 16), (v39 + 5));
  v54 = *(v37 + 32);
  OUTLINED_FUNCTION_212();
  v40();
  *(v39 + v38) = v61;

  sub_249E42EFC(v32, &unk_249E7E058, v39);
  sub_249E2A8CC(v32, &unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v59);
  sub_249E29D24(v30, v24 + 56);
  v58(v26, v31, v29);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v60;
  sub_249DF0790((v24 + 56), (v44 + 40));
  v54(&v44[v55], v26, v29);
  *&v44[v38] = v61;

  sub_249E42EFC(v32, &unk_249E7E068, v44);
  sub_249E2A8CC(v32, &unk_27EF236B0, &qword_249E7DFD0);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_195();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, v29, v54, v55, v37 + 32, v56, v57, v58, v31, v59, v30, v60, v61, a22, a23, a24);
}

uint64_t sub_249E20C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_249E20C94, 0, 0);
}

uint64_t sub_249E20C94()
{
  OUTLINED_FUNCTION_23();
  v0[6] = sub_249E5647C(v0[5]);
  OUTLINED_FUNCTION_63(&qword_249E7E088);
  v5 = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_249E2B32C;
  v3 = OUTLINED_FUNCTION_97(v0[3]);

  return v5(v3);
}

uint64_t sub_249E20D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[48] = type metadata accessor for MessageContainer(0);
  v4[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E20DE0, 0, 0);
}

uint64_t sub_249E20DE0()
{
  OUTLINED_FUNCTION_11();
  v0[50] = *(v0[47] + 24);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_205(v1);

  return sub_249E437C8();
}

uint64_t sub_249E20E70()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = v3;

  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E20F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void *), void *a11, void *a12, void *a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_285();
  v25 = v24[52];
  if (!v25)
  {
    v31 = OUTLINED_FUNCTION_153();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    OUTLINED_FUNCTION_4_5();
    v36 = sub_249E2AB74(v34, v35, &qword_249E7E090);
    OUTLINED_FUNCTION_40(v33, v36);
    OUTLINED_FUNCTION_190(v37, 5);
    goto LABEL_43;
  }

  v26 = v24[44];
  v28 = v26[3];
  v27 = v26[4];
  __swift_project_boxed_opaque_existential_0(v26, v28);
  v24[27] = v28;
  v24[28] = *(v27 + 8);
  __swift_allocate_boxed_opaque_existential_0(v24 + 24);
  OUTLINED_FUNCTION_52_0();
  (*(v29 + 16))();
  v24[32] = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  v24[33] = &off_285D09CA0;
  v24[29] = v25;
  v30 = v25;
  sub_249E4AC08((v24 + 24), (v24 + 29));
  v38 = v24[46];
  __swift_destroy_boxed_opaque_existential_0(v24 + 29);
  __swift_destroy_boxed_opaque_existential_0(v24 + 24);
  a11 = v26;
  v39 = OUTLINED_FUNCTION_145();
  v41 = __swift_project_boxed_opaque_existential_0(v39, v40);
  v24[43] = v30;
  v42 = v30;
  v43 = v38;
  v44 = v42;
  v45 = sub_249E4E50C(v43);

  a17 = *(v45 + 2);
  if (!a17)
  {

    v48 = MEMORY[0x277D84F90];
LABEL_41:
    v24[53] = v48;
    v76 = a11[3];
    __swift_project_boxed_opaque_existential_0(v24[44], v76);
    OUTLINED_FUNCTION_20_0();
    v78 = v77(v76);
    if (!v41)
    {
      v87 = v78;
      v89 = v24[48];
      v88 = v24[49];
      sub_249E7A628();
      OUTLINED_FUNCTION_19_0();
      v90 = OUTLINED_FUNCTION_299();
      v91(v90);
      v92 = a11[3];
      v93 = OUTLINED_FUNCTION_241();
      __swift_project_boxed_opaque_existential_0(v93, v94);
      OUTLINED_FUNCTION_14_1();
      v96 = v95(v92);
      v98 = v97;
      v99 = (v88 + *(v89 + 20));
      *v99 = v96;
      v99[1] = v97;
      *(v88 + *(v89 + 24)) = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249E7DF30;
      *(inited + 32) = 6580589;
      *(inited + 40) = 0xE300000000000000;

      v101 = sub_249E7A5D8();
      v102 = MEMORY[0x277D837D0];
      *(inited + 48) = v101;
      *(inited + 56) = v103;
      *(inited + 72) = v102;
      *(inited + 80) = 6580592;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = v96;
      *(inited + 104) = v98;
      *(inited + 120) = v102;
      *(inited + 128) = 112;
      *(inited + 136) = 0xE100000000000000;
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
      *(inited + 144) = v87;
      OUTLINED_FUNCTION_151();
      v24[54] = sub_249E7AA08();
      v104 = swift_task_alloc();
      v24[55] = v104;
      *v104 = v24;
      v104[1] = sub_249E21648;
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_195();

      return sub_249E43C58(v105, v106, v107, v108);
    }

LABEL_43:

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_195();

    return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  v46 = 0;
  v47 = v24 + 39;
  v48 = MEMORY[0x277D84F90];
  a10 = v45;
  a16 = v45 + 32;
  v49 = &unk_27EF23730;
  a12 = v44;
  a13 = v24;
  while (1)
  {
    v50 = v49;
    sub_249E29D24(a16 + 40 * v46, (v24 + 34));
    __swift_project_boxed_opaque_existential_0(v24 + 34, v24[37]);
    OUTLINED_FUNCTION_187();
    v52 = v51();
    __swift_destroy_boxed_opaque_existential_0(v24 + 34);
    v53 = v52 >> 62 ? sub_249E7B068() : *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = v48 >> 62;
    result = v48 >> 62 ? sub_249E7B068() : *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a20 = v53;
    v56 = __OFADD__(result, v53);
    v57 = result + v53;
    if (v56)
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    a19 = v46;
    if (result)
    {
      if (!v54)
      {
        v58 = v48 & 0xFFFFFFFFFFFFFF8;
        v59 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v59 >= v57)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      sub_249E7B068();
      goto LABEL_17;
    }

    if (v54)
    {
      goto LABEL_16;
    }

LABEL_17:
    result = sub_249E7B158();
    v48 = result;
    v58 = result & 0xFFFFFFFFFFFFFF8;
    v59 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_18:
    v60 = *(v58 + 16);
    v61 = v59 - v60;
    v62 = v58 + 8 * v60;
    a18 = v58;
    if (v52 >> 62)
    {
      if (v52 < 0)
      {
        v41 = v52;
      }

      else
      {
        v41 = v52 & 0xFFFFFFFFFFFFFF8;
      }

      v63 = sub_249E7B068();
      if (v63)
      {
        v64 = v63;
        result = sub_249E7B068();
        if (v61 < result)
        {
          goto LABEL_52;
        }

        if (v64 < 1)
        {
          goto LABEL_54;
        }

        a14 = result;
        a15 = v48;
        v65 = v62 + 32;
        sub_249E2AB74(&qword_27EF23738, v50, &qword_249E7E098);
        for (i = 0; i != v64; ++i)
        {
          v67 = OUTLINED_FUNCTION_126();
          __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
          v69 = OUTLINED_FUNCTION_136();
          v71 = sub_249E51F0C(v69, v70, v52);
          v73 = *v72;
          (v71)(v47, 0);
          *(v65 + 8 * i) = v73;
          v49 = v50;
        }

        v44 = a12;
        v24 = a13;
        v41 = a14;
        v48 = a15;
        goto LABEL_31;
      }
    }

    else
    {
      v41 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        if (v61 < v41)
        {
          goto LABEL_53;
        }

        sub_249DF691C(0, &qword_27EF234D8, 0x277D44170);
        swift_arrayInitWithCopy();
        v49 = v50;
LABEL_31:

        if (v41 < a20)
        {
          goto LABEL_50;
        }

        if (v41 > 0)
        {
          v74 = *(a18 + 16);
          v56 = __OFADD__(v74, v41);
          v75 = v74 + v41;
          if (v56)
          {
            goto LABEL_51;
          }

          *(a18 + 16) = v75;
        }

        goto LABEL_36;
      }
    }

    v49 = v50;
    if (a20 > 0)
    {
      goto LABEL_50;
    }

LABEL_36:
    v46 = a19 + 1;
    if (a19 + 1 == a17)
    {

      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_249E21648()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E21764()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 392);

  OUTLINED_FUNCTION_1_4();
  sub_249E2AA5C(v1);

  OUTLINED_FUNCTION_31_0();

  return v2();
}

uint64_t sub_249E217D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_249E217F8, 0, 0);
}

uint64_t sub_249E217F8()
{
  OUTLINED_FUNCTION_23();
  v0[6] = sub_249E56440(v0[5]);
  OUTLINED_FUNCTION_63(qword_249E7E070);
  v5 = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_249E218AC;
  v3 = OUTLINED_FUNCTION_97(v0[3]);

  return v5(v3);
}

uint64_t sub_249E218AC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;

  if (v0)
  {
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_249E219A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  v4[44] = type metadata accessor for MessageContainer(0);
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E21A40, 0, 0);
}

uint64_t sub_249E21A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_221();
  a22 = v24;
  v27 = v24[40];
  v28 = *(v24[43] + 16);
  v29 = *(v28 + OBJC_IVAR____TtC10DropInCore10IDSManager_service);
  v30 = *(v27 + 24);
  v31 = *(v27 + 32);
  v32 = OUTLINED_FUNCTION_299();
  __swift_project_boxed_opaque_existential_0(v32, v33);
  v24[27] = v30;
  v24[28] = *(v31 + 8);
  __swift_allocate_boxed_opaque_existential_0(v24 + 24);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_248();
  v34();
  v35 = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  v24[29] = v29;
  v24[32] = v35;
  v24[33] = &off_285D09CA8;
  v36 = v29;
  sub_249E4AC08((v24 + 24), (v24 + 29));
  v87 = v28;
  v37 = v24[42];
  __swift_destroy_boxed_opaque_existential_0(v24 + 29);
  __swift_destroy_boxed_opaque_existential_0(v24 + 24);
  v38 = OUTLINED_FUNCTION_296();
  __swift_project_boxed_opaque_existential_0(v38, v39);
  v24[39] = v36;
  v40 = v36;
  v41 = sub_249E4E05C(v37);

  a12 = MEMORY[0x277D84F90];
  v42 = *(v41 + 2);
  if (v42)
  {
    v43 = v41 + 32;
    v44 = MEMORY[0x277D84F90];
    do
    {
      sub_249E29D24(v43, (v24 + 34));
      __swift_project_boxed_opaque_existential_0(v24 + 34, v24[37]);
      v45 = OUTLINED_FUNCTION_148();
      v47 = v46(v45);
      v48 = __swift_destroy_boxed_opaque_existential_0(v24 + 34);
      if (v47)
      {
        MEMORY[0x24C2047D0](v48);
        if (*((a12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_249E7AC08();
        }

        OUTLINED_FUNCTION_136();
        sub_249E7AC18();
        v44 = a12;
      }

      v43 += 40;
      --v42;
    }

    while (v42);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v49 = *(v27 + 24);
  __swift_project_boxed_opaque_existential_0(v24[40], v49);
  OUTLINED_FUNCTION_20_0();
  v86 = v50(v49);
  v52 = v24[44];
  v51 = v24[45];
  v53 = v24[40];
  sub_249E7A628();
  OUTLINED_FUNCTION_19_0();
  v54 = OUTLINED_FUNCTION_250();
  v55(v54);
  v56 = *(v27 + 24);
  __swift_project_boxed_opaque_existential_0(v53, v56);
  OUTLINED_FUNCTION_14_1();
  v58 = v57(v56);
  v60 = v59;
  v61 = (v51 + *(v52 + 20));
  *v61 = v58;
  v61[1] = v59;
  *(v51 + *(v52 + 24)) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DF30;
  *(inited + 32) = 6580589;
  *(inited + 40) = 0xE300000000000000;

  v63 = sub_249E7A5D8();
  v64 = MEMORY[0x277D837D0];
  *(inited + 48) = v63;
  *(inited + 56) = v65;
  *(inited + 72) = v64;
  *(inited + 80) = 6580592;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = v58;
  *(inited + 104) = v60;
  *(inited + 120) = v64;
  *(inited + 128) = 112;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  *(inited + 144) = v86;
  v66 = sub_249E7AA08();
  v76 = sub_249E571AC(v66, v51, v44);
  v78 = v77;

  v79 = sub_249E7A698();
  v80 = sub_249E7AE28();

  v81 = os_log_type_enabled(v79, v80);
  v82 = v24[45];
  if (v81)
  {
    OUTLINED_FUNCTION_70();
    v83 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v84 = swift_slowAlloc();
    a12 = v84;
    *v83 = 136315138;
    v85 = sub_249E3A958(v76, v78, &a12);

    *(v83 + 4) = v85;
    OUTLINED_FUNCTION_273(&dword_249DEE000, v79, v80, "Message Send Succeeded: %s");
    __swift_destroy_boxed_opaque_existential_0(v84);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_4();
  sub_249E2AA5C(v82);

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_122();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, v86, v24 + 2, v87, a12, a13, a14, a15, a16);
}

uint64_t sub_249E21FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return MEMORY[0x2822009F8](sub_249E21FCC, 0, 0);
}

uint64_t sub_249E21FCC(uint64_t a1)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_248();
  v2();
  OUTLINED_FUNCTION_63(&qword_249E7E320);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v1 + 104) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_40_0(v4);

  return v8(v6);
}

uint64_t sub_249E22090()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    OUTLINED_FUNCTION_9_0();

    return v10();
  }
}

uint64_t sub_249E221AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return MEMORY[0x2822009F8](sub_249E221D8, 0, 0);
}

uint64_t sub_249E221D8(uint64_t a1)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_248();
  v2();
  OUTLINED_FUNCTION_63(&qword_249E7E258);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v1 + 104) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_40_0(v4);

  return v8(v6);
}

uint64_t sub_249E2229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1144) = v6;
  *(v7 + 265) = a6;
  *(v7 + 1136) = a5;
  *(v7 + 1128) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 1112) = a2;
  *(v7 + 1104) = a1;
  *(v7 + 1152) = type metadata accessor for MessageContainer(0);
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E22360, 0, 0);
}

uint64_t sub_249E22360()
{
  OUTLINED_FUNCTION_11();
  v0[148] = *(v0[143] + 24);
  v1 = swift_task_alloc();
  v0[149] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_205(v1);

  return sub_249E437C8();
}

uint64_t sub_249E223F0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1200) = v3;

  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E224D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v17 = *(v15 + 1200);
  if (!v17)
  {
    v25 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_4_5();
    v29 = sub_249E2AB74(v27, v28, &qword_249E7E090);
    OUTLINED_FUNCTION_91(v29);
    OUTLINED_FUNCTION_190(v30, 5);
    goto LABEL_15;
  }

  v18 = *(v15 + 1112);
  v19 = OUTLINED_FUNCTION_83();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_206();
  v21();
  v22 = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  OUTLINED_FUNCTION_314(v22);
  *(v15 + 968) = &off_285D09CA0;
  *(v15 + 936) = v17;
  OUTLINED_FUNCTION_313();
  v23 = v17;
  OUTLINED_FUNCTION_222();
  if (v14)
  {

    v24 = OUTLINED_FUNCTION_121();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_15:
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
  }

  v31 = OUTLINED_FUNCTION_121();
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23800, &qword_249E7E260);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_215(inited, xmmword_249E7D7D0);
  v33 = OUTLINED_FUNCTION_310();
  v34 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_325(v34, v35, v36, v37, v38, v39, v40, v41);
  swift_setDeallocating();
  sub_249E27DAC(&qword_27EF23810, &qword_249E7E270);

  v42 = OUTLINED_FUNCTION_307();
  sub_249E3BB9C(v42, v43);

  if (!*(v15 + 1040))
  {
    sub_249E2A8CC(v15 + 1016, &qword_27EF23808, &qword_249E7E268);
LABEL_14:
    v52 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    OUTLINED_FUNCTION_4_5();
    v56 = sub_249E2AB74(v54, v55, &qword_249E7E090);
    OUTLINED_FUNCTION_91(v56);
    OUTLINED_FUNCTION_190(v57, 1);

    goto LABEL_15;
  }

  sub_249DF0790((v15 + 1016), v15 + 976);
  v44 = *(v15 + 1000);
  v45 = *(v15 + 1008);
  __swift_project_boxed_opaque_existential_0((v15 + 976), v44);
  OUTLINED_FUNCTION_79();
  v47 = v46();
  if (!sub_249E51FB4())
  {

    __swift_destroy_boxed_opaque_existential_0((v15 + 976));
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_326();
  if (v44)
  {
    v48 = MEMORY[0x24C204D50](0, v47);
  }

  else
  {
    v48 = *(v47 + 32);
  }

  OUTLINED_FUNCTION_324(v48);
  v49 = *(v18 + 24);
  __swift_project_boxed_opaque_existential_0(v44, v49);
  OUTLINED_FUNCTION_20_0();
  v51 = v50(v49);
  if (v44)
  {

    v24 = (v15 + 976);
    goto LABEL_4;
  }

  v67 = v51;
  OUTLINED_FUNCTION_88();
  v68 = *(v15 + 1112);
  sub_249E7A628();
  OUTLINED_FUNCTION_19_0();
  v69 = OUTLINED_FUNCTION_299();
  v70(v69);
  v71 = *(v18 + 24);
  __swift_project_boxed_opaque_existential_0(v68, v71);
  OUTLINED_FUNCTION_14_1();
  v73 = v72(v71);
  OUTLINED_FUNCTION_179(v73, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  v75 = swift_initStackObject();
  v76 = OUTLINED_FUNCTION_154(v75, xmmword_249E7DF30);
  v76[2].n128_u64[0] = v16;
  v76[2].n128_u64[1] = 0xE300000000000000;

  v77 = sub_249E7A5D8();
  OUTLINED_FUNCTION_152(v77, v78);
  v75[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  v75[9].n128_u64[0] = v67;
  OUTLINED_FUNCTION_250();
  *(v15 + 1232) = sub_249E7AA08();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v15 + 1240) = v79;
  *v79 = v80;
  OUTLINED_FUNCTION_124(v79);
  OUTLINED_FUNCTION_72();

  return sub_249E451F0();
}

uint64_t sub_249E2293C()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_150();
  v5 = OUTLINED_FUNCTION_54_0();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_44_0(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19, v20);
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_249E22A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_293();
  v16 = &unk_27EF237E0;
  OUTLINED_FUNCTION_134();
  v17 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_70();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_135(4.8149e-34);
    v15 = &unk_27EF237E0;
    OUTLINED_FUNCTION_133();
    v23 = OUTLINED_FUNCTION_109();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    v26 = OUTLINED_FUNCTION_333(v25);
    OUTLINED_FUNCTION_332(v26, v27, v28, v29);
    OUTLINED_FUNCTION_165();

    *(v16 + 4) = &unk_249E7E240;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_330(v35, v36, &unk_27EF237E0, &unk_249E7E240);
  sub_249E2A190(v14 + 360);
  OUTLINED_FUNCTION_331();
  if (v16)
  {
    v37 = *(v14 + 1224);
    v38 = *(v14 + 1176);

    sub_249E2A8CC(v14 + 272, &unk_27EF237E0, &unk_249E7E240);
    OUTLINED_FUNCTION_1_4();
    sub_249E2AA5C(v38);
    __swift_destroy_boxed_opaque_existential_0((v14 + 976));
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v39 = sub_249E7A698();
    v40 = sub_249E7AE28();
    v41 = OUTLINED_FUNCTION_127(v40);
    v42 = *(v14 + 1160);
    if (v41)
    {
      OUTLINED_FUNCTION_70();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_246();
      *v43 = 136315138;
      sub_249E55D58();
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C(v42);
      v44 = OUTLINED_FUNCTION_113();
      sub_249E3A958(v44, v45, v46);
      OUTLINED_FUNCTION_102();

      *(v43 + 4) = v42;
      OUTLINED_FUNCTION_52(&dword_249DEE000, v47, v48, "Received Container: %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C(v42);
    }

    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_245();
    sub_249E24ED0(v49, v50, v51, v52);
    v53 = *(v14 + 1224);
    v54 = *(v14 + 1168);
    sub_249E2A8CC(v14 + 272, &unk_27EF237E0, &unk_249E7E240);

    OUTLINED_FUNCTION_3_5();
    sub_249E2AA5C(v54);
    v64 = OUTLINED_FUNCTION_105();
    sub_249E2AA5C(v64);
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_72();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E22D90()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1176);

  OUTLINED_FUNCTION_1_4();
  sub_249E2AA5C(v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 976));
  OUTLINED_FUNCTION_322();

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E22E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1144) = v6;
  *(v7 + 265) = a6;
  *(v7 + 1136) = a5;
  *(v7 + 1128) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 1112) = a2;
  *(v7 + 1104) = a1;
  *(v7 + 1152) = type metadata accessor for MessageContainer(0);
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E22EE8, 0, 0);
}

uint64_t sub_249E22EE8()
{
  OUTLINED_FUNCTION_11();
  v0[148] = *(v0[143] + 24);
  v1 = swift_task_alloc();
  v0[149] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_205(v1);

  return sub_249E437C8();
}

uint64_t sub_249E22F78()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1200) = v3;

  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E23060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v17 = *(v15 + 1200);
  if (!v17)
  {
    v25 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_4_5();
    v29 = sub_249E2AB74(v27, v28, &qword_249E7E090);
    OUTLINED_FUNCTION_91(v29);
    OUTLINED_FUNCTION_190(v30, 5);
    goto LABEL_15;
  }

  v18 = *(v15 + 1112);
  v19 = OUTLINED_FUNCTION_83();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_206();
  v21();
  v22 = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  OUTLINED_FUNCTION_314(v22);
  *(v15 + 968) = &off_285D09CA0;
  *(v15 + 936) = v17;
  OUTLINED_FUNCTION_313();
  v23 = v17;
  OUTLINED_FUNCTION_222();
  if (v14)
  {

    v24 = OUTLINED_FUNCTION_121();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_15:
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
  }

  v31 = OUTLINED_FUNCTION_121();
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23800, &qword_249E7E260);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_215(inited, xmmword_249E7D7D0);
  v33 = OUTLINED_FUNCTION_310();
  v34 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_325(v34, v35, v36, v37, v38, v39, v40, v41);
  swift_setDeallocating();
  sub_249E27DAC(&qword_27EF23810, &qword_249E7E270);

  v42 = OUTLINED_FUNCTION_307();
  sub_249E3BB9C(v42, v43);

  if (!*(v15 + 1040))
  {
    sub_249E2A8CC(v15 + 1016, &qword_27EF23808, &qword_249E7E268);
LABEL_14:
    v52 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    OUTLINED_FUNCTION_4_5();
    v56 = sub_249E2AB74(v54, v55, &qword_249E7E090);
    OUTLINED_FUNCTION_91(v56);
    OUTLINED_FUNCTION_190(v57, 1);

    goto LABEL_15;
  }

  sub_249DF0790((v15 + 1016), v15 + 976);
  v44 = *(v15 + 1000);
  v45 = *(v15 + 1008);
  __swift_project_boxed_opaque_existential_0((v15 + 976), v44);
  OUTLINED_FUNCTION_79();
  v47 = v46();
  if (!sub_249E51FB4())
  {

    __swift_destroy_boxed_opaque_existential_0((v15 + 976));
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_326();
  if (v44)
  {
    v48 = MEMORY[0x24C204D50](0, v47);
  }

  else
  {
    v48 = *(v47 + 32);
  }

  OUTLINED_FUNCTION_324(v48);
  v49 = *(v18 + 24);
  __swift_project_boxed_opaque_existential_0(v44, v49);
  OUTLINED_FUNCTION_20_0();
  v51 = v50(v49);
  if (v44)
  {

    v24 = (v15 + 976);
    goto LABEL_4;
  }

  v67 = v51;
  OUTLINED_FUNCTION_88();
  v68 = *(v15 + 1112);
  sub_249E7A628();
  OUTLINED_FUNCTION_19_0();
  v69 = OUTLINED_FUNCTION_299();
  v70(v69);
  v71 = *(v18 + 24);
  __swift_project_boxed_opaque_existential_0(v68, v71);
  OUTLINED_FUNCTION_14_1();
  v73 = v72(v71);
  OUTLINED_FUNCTION_179(v73, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  v75 = swift_initStackObject();
  v76 = OUTLINED_FUNCTION_154(v75, xmmword_249E7DF30);
  v76[2].n128_u64[0] = v16;
  v76[2].n128_u64[1] = 0xE300000000000000;

  v77 = sub_249E7A5D8();
  OUTLINED_FUNCTION_152(v77, v78);
  v75[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  v75[9].n128_u64[0] = v67;
  OUTLINED_FUNCTION_250();
  *(v15 + 1232) = sub_249E7AA08();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v15 + 1240) = v79;
  *v79 = v80;
  OUTLINED_FUNCTION_124(v79);
  OUTLINED_FUNCTION_72();

  return sub_249E451F0();
}

uint64_t sub_249E234C4()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_150();
  v5 = OUTLINED_FUNCTION_54_0();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_44_0(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19, v20);
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_249E235F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_293();
  v16 = &unk_27EF237E0;
  OUTLINED_FUNCTION_134();
  v17 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_70();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_135(4.8149e-34);
    v15 = &unk_27EF237E0;
    OUTLINED_FUNCTION_133();
    v23 = OUTLINED_FUNCTION_109();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    v26 = OUTLINED_FUNCTION_333(v25);
    OUTLINED_FUNCTION_332(v26, v27, v28, v29);
    OUTLINED_FUNCTION_165();

    *(v16 + 4) = &unk_249E7E240;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_330(v35, v36, &unk_27EF237E0, &unk_249E7E240);
  sub_249E2A190(v14 + 360);
  OUTLINED_FUNCTION_331();
  if (v16)
  {
    v37 = *(v14 + 1224);
    v38 = *(v14 + 1176);

    sub_249E2A8CC(v14 + 272, &unk_27EF237E0, &unk_249E7E240);
    OUTLINED_FUNCTION_1_4();
    sub_249E2AA5C(v38);
    __swift_destroy_boxed_opaque_existential_0((v14 + 976));
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v39 = sub_249E7A698();
    v40 = sub_249E7AE28();
    v41 = OUTLINED_FUNCTION_127(v40);
    v42 = *(v14 + 1160);
    if (v41)
    {
      OUTLINED_FUNCTION_70();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_246();
      *v43 = 136315138;
      sub_249E55D58();
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C(v42);
      v44 = OUTLINED_FUNCTION_113();
      sub_249E3A958(v44, v45, v46);
      OUTLINED_FUNCTION_102();

      *(v43 + 4) = v42;
      OUTLINED_FUNCTION_52(&dword_249DEE000, v47, v48, "Received Container: %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C(v42);
    }

    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_245();
    sub_249E25004(v49, v50, v51, v52);
    v53 = *(v14 + 1224);
    v54 = *(v14 + 1168);
    sub_249E2A8CC(v14 + 272, &unk_27EF237E0, &unk_249E7E240);

    OUTLINED_FUNCTION_3_5();
    sub_249E2AA5C(v54);
    v64 = OUTLINED_FUNCTION_105();
    sub_249E2AA5C(v64);
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_72();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E23918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return MEMORY[0x2822009F8](sub_249E23944, 0, 0);
}

uint64_t sub_249E23944(uint64_t a1)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_248();
  v2();
  OUTLINED_FUNCTION_63(&qword_249E7E318);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v1 + 104) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_40_0(v4);

  return v8(v6);
}

uint64_t sub_249E23A04()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    OUTLINED_FUNCTION_9_0();

    return v10();
  }
}

uint64_t sub_249E23B20()
{
  OUTLINED_FUNCTION_11();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E23B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return MEMORY[0x2822009F8](sub_249E23BA8, 0, 0);
}

uint64_t sub_249E23BA8(uint64_t a1)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_248();
  v2();
  OUTLINED_FUNCTION_63(&qword_249E7E228);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v1 + 104) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_40_0(v4);

  return v8(v6);
}

uint64_t sub_249E23C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1144) = v6;
  *(v7 + 265) = a6;
  *(v7 + 1136) = a5;
  *(v7 + 1128) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 1112) = a2;
  *(v7 + 1104) = a1;
  *(v7 + 1152) = type metadata accessor for MessageContainer(0);
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E23D2C, 0, 0);
}

uint64_t sub_249E23D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_191(OBJC_IVAR____TtC10DropInCore10IDSManager_service);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_206();
  v19();
  v20 = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  OUTLINED_FUNCTION_314(v20);
  *(v15 + 968) = &off_285D09CA8;
  *(v15 + 936) = v17;
  OUTLINED_FUNCTION_313();
  v21 = v17;
  OUTLINED_FUNCTION_222();
  if (v14)
  {

    v22 = OUTLINED_FUNCTION_121();
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_11:
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
  }

  v23 = OUTLINED_FUNCTION_121();
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237D0, &qword_249E7E230);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_215(inited, xmmword_249E7D7D0);
  v25 = OUTLINED_FUNCTION_287();
  v32 = OUTLINED_FUNCTION_219(v25, v26, v27, v28, v29, v30, v31, &off_285D09CA8);
  swift_setDeallocating();
  sub_249E27DAC(&qword_27EF237F8, &qword_249E7E250);

  v33 = OUTLINED_FUNCTION_307();
  sub_249E3BB9C(v33, v34);

  if (!*(v15 + 1040))
  {
    sub_249E2A8CC(v15 + 1016, &qword_27EF237D8, &qword_249E7E238);
LABEL_10:
    v41 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
    OUTLINED_FUNCTION_4_5();
    v45 = sub_249E2AB74(v43, v44, &qword_249E7E090);
    OUTLINED_FUNCTION_91(v45);
    *v46 = 0;
    swift_willThrow();

    goto LABEL_11;
  }

  v35 = OUTLINED_FUNCTION_186();
  v37 = v36(v35);
  *(v15 + 1224) = v37;
  if (!v37)
  {
    __swift_destroy_boxed_opaque_existential_0((v15 + 976));
    goto LABEL_10;
  }

  v38 = *(v16 + 24);
  __swift_project_boxed_opaque_existential_0(*(v15 + 1112), v38);
  OUTLINED_FUNCTION_20_0();
  v40 = v39(v38);
  if (v32)
  {

    swift_unknownObjectRelease();
    v22 = (v15 + 976);
    goto LABEL_3;
  }

  v56 = v40;
  OUTLINED_FUNCTION_88();
  v57 = *(v15 + 1112);
  sub_249E7A628();
  OUTLINED_FUNCTION_19_0();
  v58 = OUTLINED_FUNCTION_242();
  v59(v58);
  v60 = *(v16 + 24);
  __swift_project_boxed_opaque_existential_0(v57, v60);
  OUTLINED_FUNCTION_14_1();
  v62 = v61(v60);
  OUTLINED_FUNCTION_181(v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  v64 = swift_initStackObject();
  v65 = OUTLINED_FUNCTION_154(v64, xmmword_249E7DF30);
  v65[2].n128_u64[0] = v18;
  v65[2].n128_u64[1] = 0xE300000000000000;

  v66 = sub_249E7A5D8();
  OUTLINED_FUNCTION_130(v66, v67);
  v64[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  v64[9].n128_u64[0] = v56;
  OUTLINED_FUNCTION_151();
  *(v15 + 1232) = sub_249E7AA08();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v15 + 1240) = v68;
  *v68 = v69;
  OUTLINED_FUNCTION_132(v68);
  OUTLINED_FUNCTION_72();

  return sub_249E5745C();
}

uint64_t sub_249E240E8()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_150();
  v5 = OUTLINED_FUNCTION_54_0();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_44_0(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19, v20);
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_249E24214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_293();
  v16 = &unk_27EF237E0;
  OUTLINED_FUNCTION_134();
  v17 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_70();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_135(4.8149e-34);
    v15 = &unk_27EF237E0;
    OUTLINED_FUNCTION_133();
    v23 = OUTLINED_FUNCTION_109();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    v26 = OUTLINED_FUNCTION_333(v25);
    OUTLINED_FUNCTION_332(v26, v27, v28, v29);
    OUTLINED_FUNCTION_165();

    *(v16 + 4) = &unk_249E7E240;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_330(v35, v36, &unk_27EF237E0, &unk_249E7E240);
  sub_249E2A190((v14 + 45));
  OUTLINED_FUNCTION_331();
  if (v16)
  {
    v37 = v14[150];
    OUTLINED_FUNCTION_1_4();
    sub_249E2AA5C(v38);

    swift_unknownObjectRelease();
    sub_249E2A8CC((v14 + 34), &unk_27EF237E0, &unk_249E7E240);
    __swift_destroy_boxed_opaque_existential_0(v14 + 122);
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v39 = sub_249E7A698();
    v40 = sub_249E7AE28();
    v41 = OUTLINED_FUNCTION_127(v40);
    v42 = v14[145];
    if (v41)
    {
      OUTLINED_FUNCTION_70();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_246();
      *v43 = 136315138;
      sub_249E55D58();
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C(v42);
      v44 = OUTLINED_FUNCTION_113();
      sub_249E3A958(v44, v45, v46);
      OUTLINED_FUNCTION_102();

      *(v43 + 4) = v42;
      OUTLINED_FUNCTION_52(&dword_249DEE000, v47, v48, "Received Container: %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C(v42);
    }

    OUTLINED_FUNCTION_125();
    v14[136] = &off_285D09CA8;
    v14[132] = v49;
    v50 = v49;
    v51 = OUTLINED_FUNCTION_244();
    sub_249E24ED0(v51, v52, v53, v54);
    OUTLINED_FUNCTION_291();

    swift_unknownObjectRelease();
    sub_249E2A8CC((v14 + 34), &unk_27EF237E0, &unk_249E7E240);
    OUTLINED_FUNCTION_3_5();
    sub_249E2AA5C(v39);
    v65 = OUTLINED_FUNCTION_105();
    sub_249E2AA5C(v65);
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_72();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E24550()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 1176);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_4();
  sub_249E2AA5C(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 976));
  OUTLINED_FUNCTION_322();

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E245E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1144) = v6;
  *(v7 + 265) = a6;
  *(v7 + 1136) = a5;
  *(v7 + 1128) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 1112) = a2;
  *(v7 + 1104) = a1;
  *(v7 + 1152) = type metadata accessor for MessageContainer(0);
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E246AC, 0, 0);
}

uint64_t sub_249E246AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_191(OBJC_IVAR____TtC10DropInCore10IDSManager_service);
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_206();
  v19();
  v20 = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  OUTLINED_FUNCTION_314(v20);
  *(v15 + 968) = &off_285D09CA8;
  *(v15 + 936) = v17;
  OUTLINED_FUNCTION_313();
  v21 = v17;
  OUTLINED_FUNCTION_222();
  if (v14)
  {

    v22 = OUTLINED_FUNCTION_121();
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_11:
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
  }

  v23 = OUTLINED_FUNCTION_121();
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237D0, &qword_249E7E230);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_215(inited, xmmword_249E7D7D0);
  v25 = OUTLINED_FUNCTION_287();
  v32 = OUTLINED_FUNCTION_219(v25, v26, v27, v28, v29, v30, v31, &off_285D09CA8);
  swift_setDeallocating();
  sub_249E27DAC(&qword_27EF237F8, &qword_249E7E250);

  v33 = OUTLINED_FUNCTION_307();
  sub_249E3BB9C(v33, v34);

  if (!*(v15 + 1040))
  {
    sub_249E2A8CC(v15 + 1016, &qword_27EF237D8, &qword_249E7E238);
LABEL_10:
    v41 = OUTLINED_FUNCTION_81();
    __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
    OUTLINED_FUNCTION_4_5();
    v45 = sub_249E2AB74(v43, v44, &qword_249E7E090);
    OUTLINED_FUNCTION_91(v45);
    *v46 = 0;
    swift_willThrow();

    goto LABEL_11;
  }

  v35 = OUTLINED_FUNCTION_186();
  v37 = v36(v35);
  *(v15 + 1224) = v37;
  if (!v37)
  {
    __swift_destroy_boxed_opaque_existential_0((v15 + 976));
    goto LABEL_10;
  }

  v38 = *(v16 + 24);
  __swift_project_boxed_opaque_existential_0(*(v15 + 1112), v38);
  OUTLINED_FUNCTION_20_0();
  v40 = v39(v38);
  if (v32)
  {

    swift_unknownObjectRelease();
    v22 = (v15 + 976);
    goto LABEL_3;
  }

  v56 = v40;
  OUTLINED_FUNCTION_88();
  v57 = *(v15 + 1112);
  sub_249E7A628();
  OUTLINED_FUNCTION_19_0();
  v58 = OUTLINED_FUNCTION_242();
  v59(v58);
  v60 = *(v16 + 24);
  __swift_project_boxed_opaque_existential_0(v57, v60);
  OUTLINED_FUNCTION_14_1();
  v62 = v61(v60);
  OUTLINED_FUNCTION_181(v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  v64 = swift_initStackObject();
  v65 = OUTLINED_FUNCTION_154(v64, xmmword_249E7DF30);
  v65[2].n128_u64[0] = v18;
  v65[2].n128_u64[1] = 0xE300000000000000;

  v66 = sub_249E7A5D8();
  OUTLINED_FUNCTION_130(v66, v67);
  v64[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  v64[9].n128_u64[0] = v56;
  OUTLINED_FUNCTION_151();
  *(v15 + 1232) = sub_249E7AA08();
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v15 + 1240) = v68;
  *v68 = v69;
  OUTLINED_FUNCTION_132(v68);
  OUTLINED_FUNCTION_72();

  return sub_249E5745C();
}

uint64_t sub_249E24A68()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_150();
  v5 = OUTLINED_FUNCTION_54_0();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_44_0(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19, v20);
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_249E24B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_293();
  v16 = &unk_27EF237E0;
  OUTLINED_FUNCTION_134();
  v17 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_70();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_135(4.8149e-34);
    v15 = &unk_27EF237E0;
    OUTLINED_FUNCTION_133();
    v23 = OUTLINED_FUNCTION_109();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    v26 = OUTLINED_FUNCTION_333(v25);
    OUTLINED_FUNCTION_332(v26, v27, v28, v29);
    OUTLINED_FUNCTION_165();

    *(v16 + 4) = &unk_249E7E240;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_330(v35, v36, &unk_27EF237E0, &unk_249E7E240);
  sub_249E2A190((v14 + 45));
  OUTLINED_FUNCTION_331();
  if (v16)
  {
    v37 = v14[150];
    OUTLINED_FUNCTION_1_4();
    sub_249E2AA5C(v38);

    swift_unknownObjectRelease();
    sub_249E2A8CC((v14 + 34), &unk_27EF237E0, &unk_249E7E240);
    __swift_destroy_boxed_opaque_existential_0(v14 + 122);
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v39 = sub_249E7A698();
    v40 = sub_249E7AE28();
    v41 = OUTLINED_FUNCTION_127(v40);
    v42 = v14[145];
    if (v41)
    {
      OUTLINED_FUNCTION_70();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      swift_slowAlloc();
      OUTLINED_FUNCTION_246();
      *v43 = 136315138;
      sub_249E55D58();
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C(v42);
      v44 = OUTLINED_FUNCTION_113();
      sub_249E3A958(v44, v45, v46);
      OUTLINED_FUNCTION_102();

      *(v43 + 4) = v42;
      OUTLINED_FUNCTION_52(&dword_249DEE000, v47, v48, "Received Container: %s");
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      OUTLINED_FUNCTION_1_4();
      sub_249E2AA5C(v42);
    }

    OUTLINED_FUNCTION_125();
    v14[136] = &off_285D09CA8;
    v14[132] = v49;
    v50 = v49;
    v51 = OUTLINED_FUNCTION_244();
    sub_249E25004(v51, v52, v53, v54);
    OUTLINED_FUNCTION_291();

    swift_unknownObjectRelease();
    sub_249E2A8CC((v14 + 34), &unk_27EF237E0, &unk_249E7E240);
    OUTLINED_FUNCTION_3_5();
    sub_249E2AA5C(v39);
    v65 = OUTLINED_FUNCTION_105();
    sub_249E2AA5C(v65);
    OUTLINED_FUNCTION_290();

    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_72();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

void *sub_249E24ED0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  started = type metadata accessor for StartDropInResponse(0);
  MEMORY[0x28223BE20](started - 8);
  v11 = &__src[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = sub_249DFCA5C(v12, v11);
  if (!v4)
  {
    sub_249E4C640(a1, a2, a3, __src);
    sub_249E2A924(v11, a4);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
    return memcpy((a4 + *(v14 + 36)), __src, 0x51uLL);
  }

  return result;
}

void *sub_249E25004@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DropInStateResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &__src[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = sub_249E17CF8(v12, v11);
  if (!v4)
  {
    sub_249E4C640(a1, a2, a3, __src);
    sub_249E2A924(v11, a4);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
    return memcpy((a4 + *(v14 + 36)), __src, 0x51uLL);
  }

  return result;
}

void sub_249E25138()
{
  v1 = v0;

  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = *(v1 + qword_28130E738);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236D8, &qword_249E7E018);
    v6 = sub_249E7AAC8();
    v8 = sub_249E3A958(v6, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_249DEE000, oslog, v2, "Did Set Session %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C205870](v4, -1, -1);
    MEMORY[0x24C205870](v3, -1, -1);
  }

  else
  {
  }
}

void sub_249E252B0(void *a1)
{
  v2 = *(v1 + qword_28130E738);
  *(v1 + qword_28130E738) = a1;
  v3 = a1;

  sub_249E25138();
}

void sub_249E2530C()
{
  v1 = v0;
  v2 = type metadata accessor for XPCClient(0);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236D0, &qword_249E7E010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_249E7A5B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_249E7A698();
  v17 = sub_249E7AE28();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_249DEE000, v16, v17, "Invalidating Session", v18, 2u);
    MEMORY[0x24C205870](v18, -1, -1);
  }

  sub_249E7A508();
  v19 = qword_28130DB90;
  swift_beginAccess();
  (*(v13 + 40))(v1 + v19, v15, v12);
  swift_endAccess();
  v20 = sub_249E7A628();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  v21 = qword_28130E758;
  swift_beginAccess();
  sub_249E28EE8(v11, v1 + v21, &qword_27EF234B0, &qword_249E7D910);
  swift_endAccess();
  v22 = type metadata accessor for Pseudonym(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v22);
  v23 = qword_28130E750;
  swift_beginAccess();
  sub_249E28EE8(v8, v1 + v23, &qword_27EF236D0, &qword_249E7E010);
  swift_endAccess();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  v24 = qword_28130E740;
  swift_beginAccess();
  sub_249E28EE8(v11, v1 + v24, &qword_27EF234B0, &qword_249E7D910);
  swift_endAccess();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  v25 = qword_28130E748;
  swift_beginAccess();
  sub_249E28EE8(v11, v1 + v25, &qword_27EF234B0, &qword_249E7D910);
  swift_endAccess();
  v26 = qword_28130E730;
  swift_beginAccess();
  *(v1 + v26) = MEMORY[0x277D84FA0];

  v27 = *(v1 + qword_28130E738);
  if (v27)
  {
    v28 = v27;
    sub_249E252B0(0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = sub_249E3F064();
      swift_unknownObjectRelease();
      v30 = 1 << *(v29 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v29 + 56);
      v33 = (v30 + 63) >> 6;

      v34 = 0;
      v35 = v38;
      if (v32)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v36 >= v33)
        {

          goto LABEL_17;
        }

        v32 = *(v29 + 56 + 8 * v36);
        ++v34;
        if (v32)
        {
          v34 = v36;
          do
          {
LABEL_12:
            sub_249E2AAB0(*(v29 + 48) + *(v39 + 72) * (__clz(__rbit64(v32)) | (v34 << 6)), v5);
            v37 = [*&v5[*(v35 + 20)] remoteObjectProxy];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
            if (swift_dynamicCast())
            {
              [v40 didRemoveSession_];
              swift_unknownObjectRelease();
            }

            v32 &= v32 - 1;
            sub_249E2AA5C(v5);
          }

          while (v32);
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
    }
  }
}

BOOL sub_249E258F8()
{
  v1 = sub_249E7A5B8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *(v0 + qword_28130E738);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 state];
    if (v10 == 2)
    {
      v12 = qword_28130DB90;
      swift_beginAccess();
      (*(v2 + 16))(v7, v0 + v12, v1);
      sub_249E7A568();
      v14 = v13;
      sub_249E7A598();
      sub_249E7A568();
      v16 = v15;

      v17 = *(v2 + 8);
      v17(v5, v1);
      v17(v7, v1);
      return v14 >= v16;
    }

    if (v10 == 3 || v10 == 4)
    {

      return 1;
    }
  }

  return 0;
}

void sub_249E25AC0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_249E7A5B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + qword_28130E738);
  if (v10)
  {
    v25 = v10;
    v11 = sub_249E7A538();
    v12 = &selRef_setSessionEndDate_;
    if ((a2 & 1) == 0)
    {
      v12 = &selRef_setSessionStartTimeoutDate_;
    }

    [v25 *v12];

    sub_249E25DE8();
    v13 = v25;
  }

  else
  {
    (*(v7 + 16))(v9, a1, v6);
    v14 = sub_249E7A698();
    v15 = sub_249E7AE08();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315394;
      sub_249E28F84(&unk_27EF23778, MEMORY[0x277CC9578]);
      v18 = sub_249E7B2D8();
      v20 = v19;
      (*(v7 + 8))(v9, v6);
      v21 = sub_249E3A958(v18, v20, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      if (a2)
      {
        v22 = 0x657669746341;
      }

      else
      {
        v22 = 0x676E6974696157;
      }

      if (a2)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      v24 = sub_249E3A958(v22, v23, &v26);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_249DEE000, v14, v15, "Session is nil. Failed to set session timeout to %s for mode: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C205870](v17, -1, -1);
      MEMORY[0x24C205870](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_249E25DE8()
{
  v1 = type metadata accessor for XPCClient(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_28130E738);
  if (v5)
  {
    v21[0] = v5;
    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v21[0];
      *(v8 + 4) = v21[0];
      *v9 = v5;
      v11 = v10;
      _os_log_impl(&dword_249DEE000, v6, v7, "Notify clients did update session %@", v8, 0xCu);
      sub_249E2A8CC(v9, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v9, -1, -1);
      MEMORY[0x24C205870](v8, -1, -1);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = sub_249E3F064();
      swift_unknownObjectRelease();
      v13 = 1 << *(v12 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v12 + 56);
      v16 = (v13 + 63) >> 6;

      v17 = 0;
      if (v15)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {

          return;
        }

        v15 = *(v12 + 56 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          do
          {
LABEL_12:
            sub_249E2AAB0(*(v12 + 48) + *(v2 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v4);
            v19 = [*&v4[*(v1 + 20)] remoteObjectProxy];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
            if (swift_dynamicCast())
            {
              [v21[1] didUpdateSession_];
              swift_unknownObjectRelease();
            }

            v15 &= v15 - 1;
            sub_249E2AA5C(v4);
          }

          while (v15);
        }
      }

      __break(1u);
    }

    else
    {
      v20 = v21[0];
    }
  }
}

BOOL sub_249E2615C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_249E7A698();
  v7 = sub_249E7AE28();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;
    v10 = sub_249E7AF18();
    v12 = sub_249E3A958(v10, v11, &v29);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_249E7AF58();
    v15 = sub_249E3A958(v13, v14, &v29);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_249DEE000, v6, v7, "Setting Session State to %s, reason: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C205870](v9, -1, -1);
    MEMORY[0x24C205870](v8, -1, -1);
  }

  v16 = *(v3 + qword_28130E738);
  if (v16)
  {
    v17 = v16;
    [v17 setState_];
    [v17 setStateReason_];
    sub_249E25DE8();
  }

  else
  {
    v18 = sub_249E7A698();
    v19 = sub_249E7AE08();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315394;
      v22 = sub_249E7AF18();
      v24 = sub_249E3A958(v22, v23, &v29);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_249E7AF58();
      v27 = sub_249E3A958(v25, v26, &v29);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_249DEE000, v18, v19, "Session is nil. Failed to set session state to %s with reason: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C205870](v21, -1, -1);
      MEMORY[0x24C205870](v20, -1, -1);
    }
  }

  return v16 != 0;
}

uint64_t sub_249E26418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src)
{
  v6[107] = v5;
  v6[106] = __src;
  v6[105] = a4;
  v6[104] = a3;
  v6[103] = a2;
  v6[102] = a1;
  memcpy(v6 + 2, __src, 0x51uLL);
  v7 = type metadata accessor for XPCClient(0);
  v6[108] = v7;
  v6[109] = *(v7 - 8);
  v6[110] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v6[111] = swift_task_alloc();
  v6[112] = swift_task_alloc();
  v8 = sub_249E7A628();
  v6[113] = v8;
  v6[114] = *(v8 - 8);
  v6[115] = swift_task_alloc();
  v6[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236D0, &qword_249E7E010);
  v6[117] = swift_task_alloc();
  v6[118] = type metadata accessor for Pseudonym(0);
  v6[119] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v6[120] = v9;
  v6[121] = *(v9 - 8);
  v6[122] = swift_task_alloc();
  v10 = sub_249E7A5B8();
  v6[123] = v10;
  v6[124] = *(v10 - 8);
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E266E0, v5, 0);
}

uint64_t sub_249E266E0()
{
  v76 = v0;
  v1 = sub_249E258F8();
  *(v0 + 97) = v1;
  if (v1)
  {
    v2 = sub_249E7A698();
    v3 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_120(v3))
    {
      v4 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v4);
      OUTLINED_FUNCTION_35();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    goto LABEL_30;
  }

  v10 = *(v0 + 816);
  v11 = sub_249E7A698();
  v12 = sub_249E7AE28();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 816);
  if (v13)
  {
    OUTLINED_FUNCTION_70();
    v15 = swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_6();
    *v15 = 138412290;
    *(v15 + 4) = v14;
    *v16 = v14;
    v17 = v14;
    _os_log_impl(&dword_249DEE000, v11, v12, "Setting Session to %@", v15, 0xCu);
    sub_249E2A8CC(v16, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v18 = *(v0 + 1000);
  v19 = *(v0 + 992);
  v70 = *(v0 + 984);
  v20 = *(v0 + 976);
  v21 = *(v0 + 968);
  v69 = *(v0 + 960);
  v72 = *(v0 + 936);
  v73 = *(v0 + 944);
  v22 = *(v0 + 856);
  v71 = *(v0 + 824);
  v23 = *(v0 + 816);
  sub_249E252B0(v14);
  sub_249E7A598();
  sub_249E7A768();
  OUTLINED_FUNCTION_49_0();
  sub_249E2AB74(v24, &unk_27EF23820, &unk_249E7E860);
  OUTLINED_FUNCTION_48_0();
  v26 = sub_249E2AB74(v25, &unk_27EF23820, &unk_249E7E860);
  OUTLINED_FUNCTION_47_0();
  sub_249E2AB74(v27, &unk_27EF23820, &unk_249E7E860);
  sub_249E7A6E8();
  (*(v21 + 8))(v20, v69);
  sub_249E7A528();
  (*(v19 + 8))(v18, v70);
  OUTLINED_FUNCTION_252(v22 + qword_28130DB90, v0 + 752);
  v28 = v19 + 40;
  OUTLINED_FUNCTION_187();
  v29();
  swift_endAccess();
  sub_249E2A75C(v71, v72, &qword_27EF236D0, &qword_249E7E010);
  v30 = OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_226(v30, v31, v73);
  if (v32)
  {
    sub_249E2A8CC(*(v0 + 936), &qword_27EF236D0, &qword_249E7E010);
  }

  else
  {
    v33 = *(v0 + 952);
    sub_249E2A924(*(v0 + 936), v33);
    sub_249E27858(v33);
    sub_249E2AA5C(v33);
  }

  v34 = *(v0 + 904);
  v35 = *(v0 + 896);
  sub_249E2A75C(*(v0 + 832), v35, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_226(v35, 1, v34);
  if (v32)
  {
    sub_249E2A8CC(*(v0 + 896), &qword_27EF234B0, &qword_249E7D910);
  }

  else
  {
    v36 = *(v0 + 928);
    v37 = OUTLINED_FUNCTION_240();
    v38(v37);
    sub_249E27B08(v36, "Setting Device Accessory Identifier to %s", v69);
    v39 = OUTLINED_FUNCTION_126();
    v40(v39);
  }

  v41 = *(v0 + 904);
  v42 = *(v0 + 888);
  sub_249E2A75C(*(v0 + 840), v42, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_226(v42, 1, v41);
  if (v32)
  {
    sub_249E2A8CC(*(v0 + 888), &qword_27EF234B0, &qword_249E7D910);
  }

  else
  {
    v43 = *(v0 + 920);
    v44 = OUTLINED_FUNCTION_240();
    v45(v44);
    sub_249E27B08(v43, "Setting Home Identifier to %s", v69);
    v46 = OUTLINED_FUNCTION_126();
    v47(v46);
  }

  if (*(*(v0 + 848) + 80) <= 0xFDu)
  {
    memcpy((v0 + 280), (v0 + 16), 0x51uLL);
    memcpy((v0 + 104), (v0 + 16), 0x51uLL);
    memcpy((v0 + 192), (v0 + 16), 0x51uLL);
    sub_249E2A248(v0 + 192, v0 + 368);
    v58 = sub_249E7A698();
    v59 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_201(v59))
    {
      OUTLINED_FUNCTION_70();
      v60 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v75 = swift_slowAlloc();
      *v60 = 136315138;
      memcpy((v0 + 632), (v0 + 104), 0x51uLL);
      v61 = sub_249E7AAC8();
      sub_249E3A958(v61, v62, &v75);
      OUTLINED_FUNCTION_165();

      *(v60 + 4) = v26;
      OUTLINED_FUNCTION_202();
      _os_log_impl(v63, v64, v65, v66, v60, 0xCu);
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {
      sub_249E2A8CC(*(v0 + 848), &qword_27EF23838, &qword_249E7E2C0);
    }

    OUTLINED_FUNCTION_252(*(v0 + 856) + qword_28130E730, v0 + 776);
    sub_249E2A248(v0 + 280, v0 + 544);
    sub_249E64190();
    swift_endAccess();
    sub_249E2A2A4(v0 + 456);
    v68 = swift_task_alloc();
    *(v0 + 1016) = v68;
    *v68 = v0;
    v68[1] = sub_249E26F24;

    return sub_249E4D97C();
  }

  else
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_30:
      v74 = *(v0 + 97);
      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_168();

      return v67((v74 & 1) == 0);
    }

    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_157();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_58();
    v50 = v49 & v48;
    result = OUTLINED_FUNCTION_198();
    v52 = 0;
    if (v50)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v53 >= v22)
      {

        goto LABEL_30;
      }

      v50 = *(v28 + 8 * v53);
      ++v52;
      if (v50)
      {
        v52 = v53;
        do
        {
LABEL_23:
          v54 = *(v0 + 880);
          OUTLINED_FUNCTION_2_5();
          sub_249E2AAB0(v55, v54);
          v56 = [*(v54 + *(v26 + 20)) remoteObjectProxy];
          sub_249E7AFF8();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
          if (OUTLINED_FUNCTION_7_0())
          {
            [*(v0 + 808) didAddSession_];
            swift_unknownObjectRelease();
          }

          v50 &= v50 - 1;
          OUTLINED_FUNCTION_0_6();
          result = sub_249E2AA5C(v57);
        }

        while (v50);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_249E26F24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  *(v6 + 1024) = v5;

  v7 = OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E2701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v18 = *(*(v14 + 856) + qword_28130E738);
  v19 = *(v14 + 1024);
  if (!v18)
  {

    goto LABEL_5;
  }

  v20 = v18;
  v21 = v19;
  v22 = [v20 participants];
  sub_249DF691C(0, &qword_27EF23840, 0x277D069E0);
  OUTLINED_FUNCTION_153();
  v23 = sub_249E7ABE8();

  a11 = v23;
  MEMORY[0x24C2047D0]();
  if (*((a11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_20;
  }

LABEL_3:
  v24 = *(v14 + 1024);
  OUTLINED_FUNCTION_249();
  sub_249E7AC18();
  OUTLINED_FUNCTION_153();
  v25 = sub_249E7ABD8();

  [v20 setParticipants_];

LABEL_5:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_157();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_58();
  v20 = v27 & v26;
  OUTLINED_FUNCTION_198();
  v28 = 0;
  while (v20)
  {
LABEL_11:
    v30 = *(v14 + 880);
    OUTLINED_FUNCTION_2_5();
    sub_249E2AAB0(v31, v30);
    [*(v30 + *(v15 + 20)) remoteObjectProxy];
    sub_249E7AFF8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
    if (OUTLINED_FUNCTION_7_0())
    {
      [*(v14 + 808) didAddSession_];
      swift_unknownObjectRelease();
    }

    v20 &= v20 - 1;
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C(v32);
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_20:
      sub_249E7AC08();
      goto LABEL_3;
    }

    if (v29 >= v17)
    {
      break;
    }

    v20 = *(v16 + 8 * v29);
    ++v28;
    if (v20)
    {
      v28 = v29;
      goto LABEL_11;
    }
  }

LABEL_16:
  HIDWORD(a10) = *(v14 + 97);
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_72();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

void sub_249E27304(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCClient(0);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = qword_28130DB88;
  sub_249E2A75C(a1, &v44 - v12, &qword_27EF234B0, &qword_249E7D910);
  v15 = a2;
  v46 = v14;
  v16 = sub_249E7A698();
  v17 = sub_249E7AE08();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v3;
    v19 = v18;
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v19 = 136315394;
    sub_249E2A75C(v13, v11, &qword_27EF234B0, &qword_249E7D910);
    v20 = sub_249E7AAC8();
    v22 = v21;
    sub_249E2A8CC(v13, &qword_27EF234B0, &qword_249E7D910);
    v23 = sub_249E3A958(v20, v22, v50);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v24 = sub_249E7B3A8();
    v26 = sub_249E3A958(v24, v25, v50);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_249DEE000, v16, v17, "Conversation Failed. Identifier = %s, Error = %s", v19, 0x16u);
    v27 = v44;
    swift_arrayDestroy();
    MEMORY[0x24C205870](v27, -1, -1);
    v28 = v19;
    v3 = v45;
    MEMORY[0x24C205870](v28, -1, -1);
  }

  else
  {

    sub_249E2A8CC(v13, &qword_27EF234B0, &qword_249E7D910);
  }

  v29 = *(v3 + qword_28130E738);
  v30 = v48;
  if (v29)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = a2;
      v31 = v29;
      v32 = sub_249E3F064();
      swift_unknownObjectRelease();
      v33 = 1 << *(v32 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v32 + 56);
      v36 = (v33 + 63) >> 6;

      v37 = 0;
      if (v35)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v38 >= v36)
        {

          goto LABEL_20;
        }

        v35 = *(v32 + 56 + 8 * v38);
        ++v37;
        if (v35)
        {
          v37 = v38;
          do
          {
LABEL_13:
            sub_249E2AAB0(*(v32 + 48) + *(v47 + 72) * (__clz(__rbit64(v35)) | (v37 << 6)), v30);
            v39 = [*(v30 + *(v6 + 20)) remoteObjectProxy];
            sub_249E7AFF8();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
            if (swift_dynamicCast())
            {
              v40 = v49;
              swift_unknownObjectRetain();
              v41 = sub_249E7A4C8();
              [v40 session:v31 didFailWithError:v41];

              v30 = v48;
              swift_unknownObjectRelease_n();
            }

            v35 &= v35 - 1;
            sub_249E2AA5C(v30);
          }

          while (v35);
        }
      }

      __break(1u);
    }
  }

  else
  {
    v31 = sub_249E7A698();
    v42 = sub_249E7AE08();
    if (os_log_type_enabled(v31, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_249DEE000, v31, v42, "Session is nil", v43, 2u);
      MEMORY[0x24C205870](v43, -1, -1);
    }

LABEL_20:
  }
}

uint64_t sub_249E27858(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236D0, &qword_249E7E010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = type metadata accessor for Pseudonym(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E2AAB0(a1, v9);
  v10 = sub_249E7A698();
  v11 = sub_249E7AE28();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315138;
    v14 = sub_249E312EC();
    v22 = v2;
    v15 = v7;
    v16 = a1;
    v18 = v17;
    sub_249E2AA5C(v9);
    v19 = sub_249E3A958(v14, v18, v23);
    a1 = v16;
    v7 = v15;
    v2 = v22;

    *(v12 + 4) = v19;
    _os_log_impl(&dword_249DEE000, v10, v11, "Setting Device Pseudonym to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C205870](v13, -1, -1);
    MEMORY[0x24C205870](v12, -1, -1);
  }

  else
  {

    sub_249E2AA5C(v9);
  }

  sub_249E2AAB0(a1, v6);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v20 = qword_28130E750;
  swift_beginAccess();
  sub_249E28EE8(v6, v2 + v20, &qword_27EF236D0, &qword_249E7E010);
  return swift_endAccess();
}

void sub_249E27B08(uint64_t a1, const char *a2, ...)
{
  OUTLINED_FUNCTION_15_0();
  v4 = v3;
  v38 = v5;
  v6 = v2;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_37(v9);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v39 = *(v15 + 16);
  v40 = v8;
  v39(v18 - v17, v8, v13);
  v20 = sub_249E7A698();
  v21 = sub_249E7AE28();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_70();
    v22 = swift_slowAlloc();
    v36 = v12;
    v23 = v22;
    OUTLINED_FUNCTION_74();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v23 = 136315138;
    OUTLINED_FUNCTION_22_0();
    sub_249E28F84(v24, v25);
    v26 = sub_249E7B2D8();
    v37 = v4;
    (*(v15 + 8))(v19, v13);
    v27 = OUTLINED_FUNCTION_105();
    sub_249E3A958(v27, v28, v29);
    OUTLINED_FUNCTION_305();
    v4 = v37;

    *(v23 + 4) = v26;
    _os_log_impl(&dword_249DEE000, v20, v21, v38, v23, 0xCu);
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v12 = v36;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    (*(v15 + 8))(v19, v13);
  }

  v39(v12, v40, v13);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v13);
  v33 = *v4;
  OUTLINED_FUNCTION_252(v6 + *v4, &v41);
  sub_249E28EE8(v12, v6 + v33, &qword_27EF234B0, &qword_249E7D910);
  swift_endAccess();
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E27DAC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_249E27DFC(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_116();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  v2[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_253();

  return sub_249E1F434(v4, v5, v6, v7, v8);
}

uint64_t sub_249E27E98(unint64_t a1)
{
  v3 = sub_249E51FB4();
  v4 = sub_249E51FB4();
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_249E3B424(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_249E27FE8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_249E27F44(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_249E27F90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_249E7B068();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_249E27FE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_249E7B068();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_249E51FB4();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_249E2AB74(&qword_27EF23770, &qword_27EF23768, &qword_249E7E160);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23768, &qword_249E7E160);
          v9 = sub_249E51F0C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_249E28180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v5 = sub_249E7A628();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[5] = type metadata accessor for DropInSessionFailureEvent(0);
  v3[6] = sub_249E28F84(&unk_27EF23700, type metadata accessor for DropInSessionFailureEvent);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3 + 2);
  sub_249E2AAB0(a1, boxed_opaque_existential_0);

  return MEMORY[0x2822009F8](sub_249E282B0, 0, 0);
}

uint64_t sub_249E28520()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E28620()
{
  OUTLINED_FUNCTION_11();
  (*(v0[20] + 8))(v0[21], v0[19]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E2869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v5 = sub_249E7A628();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[5] = type metadata accessor for DropInStateEvent(0);
  v3[6] = sub_249E28F84(&qword_27EF23878, type metadata accessor for DropInStateEvent);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3 + 2);
  sub_249E2AAB0(a1, boxed_opaque_existential_0);

  return MEMORY[0x2822009F8](sub_249E287CC, 0, 0);
}

uint64_t sub_249E28A3C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E28B3C(uint64_t a1)
{
  v18 = type metadata accessor for DropInSessionAnalyticEvent(0);
  v19 = &off_285D09888;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_249E2AAB0(a1, boxed_opaque_existential_0);
  if (qword_27EF22FE0 != -1)
  {
    swift_once();
  }

  v3 = sub_249E7A6B8();
  __swift_project_value_buffer(v3, qword_27EF23B70);
  sub_249E29D24(v17, v16);
  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_249E3A958(0xD00000000000002FLL, 0x8000000249E82550, &v15);
    *(v6 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_249E42508();
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    v8 = sub_249E7A9E8();
    v10 = v9;

    __swift_destroy_boxed_opaque_existential_0(v16);
    v11 = sub_249E3A958(v8, v10, &v15);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_249DEE000, v4, v5, "Sending analytic event named: %s with info: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C205870](v7, -1, -1);
    MEMORY[0x24C205870](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  v12 = sub_249E7AA88();
  __swift_project_boxed_opaque_existential_0(v17, v18);
  sub_249E42508();
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  v13 = sub_249E7A9C8();

  AnalyticsSendEvent();

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_249E28E18()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_37(v0);
  OUTLINED_FUNCTION_116();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  v2[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E1E02C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_249E28EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_194(a1, a2, a3, a4);
  OUTLINED_FUNCTION_19_0();
  v5 = OUTLINED_FUNCTION_83();
  v6(v5);
  return v4;
}

unint64_t sub_249E28F30()
{
  result = qword_27EF236E8;
  if (!qword_27EF236E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF236E8);
  }

  return result;
}

uint64_t sub_249E28F84(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_286();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E28FC8(uint64_t a1)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_283();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  v2[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_271();

  return sub_249E208D8(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_249E2906C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_16_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  v2[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E20C70(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_28Tm()
{
  sub_249E7A628();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_160();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  v1 = OUTLINED_FUNCTION_68();
  v2(v1);

  v3 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_249E2921C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_16_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  v2[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E217D4(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_249E29304(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1BD24(v4, v5, v6, v7, v8);
}

uint64_t sub_249E29390(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1BD24(v4, v5, v6, v7, v8);
}

uint64_t sub_249E2941C(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1B9A0(v4, v5, v6, v7, v8);
}

uint64_t sub_249E294A8(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1B54C(v4, v5, v6, v7, v8);
}

uint64_t sub_249E29534(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1B384(v4, v5, v6, v7, v8);
}

uint64_t sub_249E295C0(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1AFD8(v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_43Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_158();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249E29690(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1A994(v4, v5, v6, v7, v8);
}

uint64_t sub_249E29748(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1A564(v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_81Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_158();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_249E29818(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_3(v2);
  OUTLINED_FUNCTION_253();

  return sub_249E1A124(v4, v5, v6, v7, v8);
}

uint64_t sub_249E298A4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_16_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_104(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_239(v2);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_31();

  return sub_249E1EA20(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_249E299A4(uint64_t a1)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_103();
  v1 = sub_249E7A5B8();
  OUTLINED_FUNCTION_34_0(v1);
  OUTLINED_FUNCTION_116();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_6_3(v3);
  OUTLINED_FUNCTION_271();

  return sub_249E1FC10(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_249E29A88()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_16_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_239(v2);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E1C670(v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_81();

  return MEMORY[0x2821FE8E8](v0, v1, 7);
}

uint64_t sub_249E29BB0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v3[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_79();

  return sub_249E1D784(v5, v6, v7, v1);
}

uint64_t sub_249E29C54()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_37(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  v2[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E1CF00(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_249E29D24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_249E29D88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_249E29DEC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_249E29E04()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_29_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_104(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_27_0(v2);
  OUTLINED_FUNCTION_31();

  return sub_249E221AC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_120Tm()
{
  sub_249E7A628();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_160();

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v2 = OUTLINED_FUNCTION_68();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + v1));
  v4 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_249E29FA8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_29_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_104(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_27_0(v2);
  OUTLINED_FUNCTION_31();

  return sub_249E23B7C(v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_249E2A094()
{
  result = qword_27EF237B8;
  if (!qword_27EF237B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF237B8);
  }

  return result;
}

uint64_t sub_249E2A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_178();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_3(v9);
  *v10 = v11;
  v10[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_34();

  return sub_249E09BD4(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_249E2A1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInSessionAnalyticEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E2A2F8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_29_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_104(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_27_0(v2);
  OUTLINED_FUNCTION_31();

  return sub_249E21FA0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_249E2A3CC()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_29_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_104(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_27_0(v2);
  OUTLINED_FUNCTION_31();

  return sub_249E23918(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_128Tm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_34_0(v2);
  v4 = *(v3 + 80);
  v5 = sub_249E7A628();
  if (!OUTLINED_FUNCTION_320(v5))
  {
    (*(*(v0 - 8) + 8))(v1 + ((v4 + 16) & ~v4), v0);
  }

  OUTLINED_FUNCTION_311();

  v6 = OUTLINED_FUNCTION_309();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_249E2A59C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_34_0(v3);
  v4 = OUTLINED_FUNCTION_241();

  return a3(v4);
}

uint64_t objectdestroy_133Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_249E2A6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_178();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_3(v9);
  *v10 = v11;
  v10[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_34();

  return sub_249E093B8(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_249E2A75C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_194(a1, a2, a3, a4);
  OUTLINED_FUNCTION_19_0();
  v5 = OUTLINED_FUNCTION_83();
  v6(v5);
  return v4;
}

uint64_t sub_249E2A7A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_194(a1, a2, a3, a4);
  OUTLINED_FUNCTION_19_0();
  v5 = OUTLINED_FUNCTION_83();
  v6(v5);
  return v4;
}

uint64_t block_copy_helper_191(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E2A8CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_249E2A924(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_1();
  v4(v3);
  OUTLINED_FUNCTION_19_0();
  v5 = OUTLINED_FUNCTION_83();
  v6(v5);
  return a2;
}

uint64_t sub_249E2A978(uint64_t a1)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v1 = OUTLINED_FUNCTION_103();
  v2 = type metadata accessor for DropInStateManager.Context(v1);
  OUTLINED_FUNCTION_34_0(v2);
  OUTLINED_FUNCTION_116();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_6_3(v4);
  OUTLINED_FUNCTION_271();

  return sub_249E16274(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_249E2AA5C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_103();
  v3(v2);
  OUTLINED_FUNCTION_28_0();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_249E2AAB0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_1();
  v4(v3);
  OUTLINED_FUNCTION_19_0();
  v5 = OUTLINED_FUNCTION_83();
  v6(v5);
  return a2;
}

unint64_t sub_249E2AB04()
{
  result = qword_28130D138;
  if (!qword_28130D138)
  {
    sub_249DF691C(255, &unk_28130D128, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D138);
  }

  return result;
}

uint64_t sub_249E2AB74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_286();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E2ABB8(uint64_t a1)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v1 = OUTLINED_FUNCTION_103();
  v2 = type metadata accessor for DropInStateManager.Context(v1);
  OUTLINED_FUNCTION_37(v2);
  OUTLINED_FUNCTION_116();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_271();

  return sub_249E17440(v6, v7, v8, v9, v10);
}

uint64_t sub_249E2AC80()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_16_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_239(v2);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E15008(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_249E2AD60()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_16_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_239(v2);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E147F0(v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_226Tm()
{
  sub_249E7A628();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_160();
  swift_unknownObjectRelease();

  v2 = OUTLINED_FUNCTION_68();
  v3(v2);

  v4 = OUTLINED_FUNCTION_176();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_249E2AF00()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_103();
  v0 = sub_249E7A628();
  OUTLINED_FUNCTION_34_0(v0);
  OUTLINED_FUNCTION_16_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_239(v2);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_31();

  return sub_249E1357C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_249E2AFE0()
{
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_204(v1);

  return sub_249E177F0(v3, v4, v5, v6);
}

uint64_t sub_249E2B074()
{
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_204(v1);

  return sub_249E18AF8(v3, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for DropInManager.DropInManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DropInManager.DropInManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E2B270()
{
  result = qword_27EF238B0;
  if (!qword_27EF238B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF238B0);
  }

  return result;
}

unint64_t sub_249E2B2C4()
{
  result = qword_27EF238B8;
  if (!qword_27EF238B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF238B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return sub_249E2AA5C(v0);
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);

  return sub_249E2AAB0(v2, v3);
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  *(v12 + 352) = v14;
  *(v12 + 360) = a10;
  *(v12 + 376) = a9;
  *(v12 + 392) = a12;
  *(v12 + 408) = a11;
  *(v12 + 424) = v13;
}

uint64_t OUTLINED_FUNCTION_45_0()
{
}

void OUTLINED_FUNCTION_53_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_54_0()
{
  *(v0 + 1256) = v1;
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  *(v0 + 24) = sub_249E13DA8;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return sub_249E2AA5C(v0);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return sub_249E2AA5C(v0);
}

void OUTLINED_FUNCTION_64()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x24C205870);
}

void *OUTLINED_FUNCTION_73()
{
  v0[34] = v0[157];

  return memcpy(v0 + 35, v0 + 45, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_92(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_107(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_114(uint64_t a1)
{
  *(v2 - 96) = *(v1 + 360);
  *(v2 - 88) = *(v1 + 304);

  return sub_249E7A618();
}

void OUTLINED_FUNCTION_118(uint64_t a1@<X8>)
{
  v1[12] = sub_249E1937C;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_119()
{
}

BOOL OUTLINED_FUNCTION_120(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_127(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_128()
{
  *(v1 + 96) = v0;
}

uint64_t OUTLINED_FUNCTION_129()
{
  *(v1 + 96) = v0;
}

uint64_t OUTLINED_FUNCTION_130(uint64_t result, uint64_t a2)
{
  v5[6] = result;
  v5[7] = a2;
  v5[9] = v2;
  v5[10] = v6 + 3;
  v5[11] = 0xE300000000000000;
  v5[12] = v3;
  v5[13] = v4;
  v5[15] = v2;
  v5[16] = 112;
  v5[17] = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_249E2A75C(v0 + 272, v0 + 672, v1, v2);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return sub_249E2A75C(v1 + 272, v1 + 432, v0, v2);
}

void *OUTLINED_FUNCTION_135(float a1)
{
  *v1 = a1;

  return memcpy((v2 + 592), (v2 + 272), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_249E2AA5C(v0);
}

uint64_t OUTLINED_FUNCTION_144(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_146()
{
  result = *(v0[146] + *(v0[144] + 24));
  v0[135] = v0[151];
  return result;
}

uint64_t OUTLINED_FUNCTION_149()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_152(uint64_t result, uint64_t a2)
{
  v5[6] = result;
  v5[7] = a2;
  v5[9] = v3;
  v5[10] = v7 + 3;
  v5[11] = v6;
  v5[12] = v2;
  v5[13] = v4;
  v5[15] = v3;
  v5[16] = 112;
  v5[17] = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_155()
{
}

uint64_t OUTLINED_FUNCTION_162()
{
}

uint64_t OUTLINED_FUNCTION_170@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 96) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_173()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_174(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_179(uint64_t result, uint64_t a2)
{
  v5 = (v2 + *(v4 + 20));
  *v5 = result;
  v5[1] = a2;
  *(v2 + *(v4 + 24)) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1)
{
  *(v1 + 416) = a1;
  *(a1 + 16) = *(v3 - 88);
  sub_249DF0790((v1 + 192), a1 + 24);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_181(uint64_t result, uint64_t a2)
{
  v5 = (v2 + *(v4 + 20));
  *v5 = result;
  v5[1] = a2;
  *(v2 + *(v4 + 24)) = v3;
  return result;
}

__n128 *OUTLINED_FUNCTION_184(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x74726F70706152;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_186()
{
  sub_249DF0790((v0 + 1016), v0 + 976);
  __swift_project_boxed_opaque_existential_0((v0 + 976), *(v0 + 1000));
  return v1;
}

uint64_t OUTLINED_FUNCTION_188()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_189()
{
}

uint64_t OUTLINED_FUNCTION_190@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t *OUTLINED_FUNCTION_191@<X0>(uint64_t a1@<X8>)
{
  v2[149] = a1;
  v2[150] = *(v1 + a1);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v2[115] = v4;
  v2[116] = *(v5 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v2 + 112);
}

uint64_t OUTLINED_FUNCTION_192()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_193()
{
}

uint64_t OUTLINED_FUNCTION_194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_196(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_197()
{
}

uint64_t OUTLINED_FUNCTION_198()
{
}

void OUTLINED_FUNCTION_200(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

BOOL OUTLINED_FUNCTION_201(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_203(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  v24 = v22 + v20;
  *v24 = a18;
  *(v24 + 8) = a20 & 1;

  return sub_249E29D24(a17, v21 + 232);
}

uint64_t OUTLINED_FUNCTION_207()
{

  return swift_arrayDestroy();
}

void *OUTLINED_FUNCTION_208()
{

  return memcpy((v0 + 824), v1, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_210(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_211()
{

  return sub_249E7A628();
}

uint64_t OUTLINED_FUNCTION_215(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_249E29D24(v2, &a1[2]);
}

uint64_t OUTLINED_FUNCTION_218(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t (*OUTLINED_FUNCTION_219(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{

  return sub_249E4E05C(v8);
}

uint64_t OUTLINED_FUNCTION_222()
{

  return sub_249E4AC08(v0 + 896, v0 + 936);
}

uint64_t *OUTLINED_FUNCTION_223()
{
  v1 = *(v0 + 88);
  v4 = *(v1 + 3);
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  *(v0 + 40) = v4;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 16));
}

BOOL OUTLINED_FUNCTION_224(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 424) = a1;
  *(a1 + 16) = *(v12 - 88);
  sub_249DF0790((v11 + 232), a1 + 24);
  return a1 + a11;
}

id OUTLINED_FUNCTION_233(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v4;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v3;
  *a1 = v4;
  a1[1] = v3;

  return v4;
}

uint64_t OUTLINED_FUNCTION_234()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_238()
{
  result = *(v0 + 80) + 1;
  *(v0 + 80) = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_251()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v0[5] = v2;
  v0[6] = v3;

  return __swift_allocate_boxed_opaque_existential_0(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_252(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_256()
{

  return sub_249E7B068();
}

uint64_t OUTLINED_FUNCTION_257()
{
}

uint64_t OUTLINED_FUNCTION_258(uint64_t a1)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_259()
{
}

uint64_t OUTLINED_FUNCTION_260()
{
  **(v0 + 56) = *(v0 + 104);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_261(uint64_t a1)
{

  return sub_249E7B2D8();
}

uint64_t OUTLINED_FUNCTION_262(float a1)
{
  *v1 = a1;

  return sub_249E7ACC8();
}

uint64_t OUTLINED_FUNCTION_263()
{

  return swift_slowAlloc();
}

uint64_t *OUTLINED_FUNCTION_264()
{
  v1[115] = v0;
  v1[116] = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v1 + 112);
}

uint64_t OUTLINED_FUNCTION_265()
{
}

uint64_t OUTLINED_FUNCTION_266(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_267()
{

  return sub_249E2A8CC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_268(uint64_t a1)
{

  return sub_249E2A7A4(v2, a1 + v1, v4, v3);
}

uint64_t OUTLINED_FUNCTION_269(uint64_t a1)
{
  *(v1 + 432) = a1;
  v6 = *(v4 - 96);

  return sub_249E2A8CC(v6, v3, v2);
}

uint64_t OUTLINED_FUNCTION_270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return sub_249E2A75C(v21, a20, a3, v20);
}

BOOL OUTLINED_FUNCTION_272()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_273(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

BOOL OUTLINED_FUNCTION_274()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_278(uint64_t result)
{
  *(result + 64) = 5456969;
  *(result + 72) = 0xE300000000000000;
  return result;
}

id OUTLINED_FUNCTION_287()
{
  __swift_project_boxed_opaque_existential_0(v3, *(v1 + 24));
  *(v0 + 1096) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_290()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 1056));

  return __swift_destroy_boxed_opaque_existential_0((v0 + 976));
}

void *OUTLINED_FUNCTION_295(void *result)
{
  *(v3 + 176) = result;
  result[2] = v4;
  result[3] = v1;
  result[4] = v2;
  result[5] = v5;
  return result;
}

id OUTLINED_FUNCTION_310()
{
  __swift_project_boxed_opaque_existential_0(v3, *(v0 + 24));
  *(v1 + 1096) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_314(uint64_t result)
{
  *(v1 + 1208) = result;
  *(v1 + 960) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_319()
{

  return sub_249E3F064();
}

uint64_t OUTLINED_FUNCTION_320(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_321(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_322()
{
}

uint64_t OUTLINED_FUNCTION_323(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_324(uint64_t a1)
{
  *(v1 + 1224) = a1;
}

uint64_t (*OUTLINED_FUNCTION_325(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{

  return sub_249E4E50C(a1);
}

uint64_t OUTLINED_FUNCTION_326()
{

  return sub_249E51FD8();
}

id OUTLINED_FUNCTION_328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_329(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_249E2A75C(v4 + 272, v4 + 512, a3, a4);
}

uint64_t OUTLINED_FUNCTION_331()
{

  return sub_249E55A40(v1, v0);
}

uint64_t OUTLINED_FUNCTION_332(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_249E3A958(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_333(uint64_t a1)
{

  return sub_249E7AAC8();
}

uint64_t OUTLINED_FUNCTION_334()
{
}

uint64_t OUTLINED_FUNCTION_337()
{
}

uint64_t OUTLINED_FUNCTION_338(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_339(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_249E2D0E8()
{
  OUTLINED_FUNCTION_11();
  v0[2] = v1;
  v2 = sub_249E7A5B8();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E2D1A4, 0, 0);
}

uint64_t sub_249E2D1A4(uint64_t a1)
{
  sub_249E7A598();
  if (sub_249E7A548())
  {
    sub_249E7A518();
    v3 = v2;
    v4 = swift_task_alloc();
    v1[6] = v4;
    *v4 = v1;
    v4[1] = sub_249E2D2C0;

    return sub_249E2D4A8(v3);
  }

  else
  {
    (*(v1[4] + 8))(v1[5], v1[3]);

    OUTLINED_FUNCTION_31_0();

    return v6();
  }
}

uint64_t sub_249E2D2C0()
{
  OUTLINED_FUNCTION_11();
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_249E2D438;
  }

  else
  {
    v2 = sub_249E2D3D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_249E2D3D0()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_2_6();
  v1(v0);

  OUTLINED_FUNCTION_31_0();

  return v2();
}

uint64_t sub_249E2D438()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_2_6();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_249E2D4C8()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 16);
  if (v2 > 0.0)
  {
    v3 = v2 * 1000000000.0;
    if (*&v3 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v3 > -1.0)
    {
      if (v3 < 1.84467441e19)
      {
        v4 = v3;
        v5 = swift_task_alloc();
        *(v0 + 24) = v5;
        *v5 = v0;
        v5[1] = sub_249E2D5D8;
        v1 = v4;

        return MEMORY[0x282200480](v1);
      }

LABEL_13:
      __break(1u);
      return MEMORY[0x282200480](v1);
    }

    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_31_0();

  return v6();
}

uint64_t sub_249E2D5D8()
{
  OUTLINED_FUNCTION_11();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_249E2D6DC()
{
  v1 = [v0 type];
  if (!v1)
  {
LABEL_12:
    v3 = [v0 value];
    if (!v3)
    {
      sub_249E7AAA8();
      v3 = sub_249E7AA88();
    }

    v2 = IDSCopyBestGuessIDForID();

    if (!v2)
    {
      __break(1u);
      return 0;
    }

    return v2;
  }

  if (v1 == 1)
  {
LABEL_8:
    v0 = [v0 value];
    if (!v0)
    {
      sub_249E7AAA8();
      v0 = sub_249E7AA88();
    }

    v2 = IDSCopyIDForPhoneNumber();

    if (v2)
    {
      return v2;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v1 != 2)
  {
    return 0;
  }

  v0 = [v0 value];
  if (!v0)
  {
    sub_249E7AAA8();
    v0 = sub_249E7AA88();
  }

  v2 = MEMORY[0x24C2050C0](v0);

  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  return v2;
}

uint64_t sub_249E2D838()
{
  v1 = [v0 provider];
  v2 = [v1 identifier];

  v3 = sub_249E7AAA8();
  v5 = v4;

  if (v3 == sub_249E7A8A8() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_249E7B318();
  }

  return v8 & 1;
}

void sub_249E2D8F4(uint64_t a1, uint64_t a2)
{
  sub_249E2DBE0();
  v5 = v4;
  v6 = sub_249E51FB4();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      goto LABEL_16;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C204D50](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 initiator];
    v11 = [v10 value];

    v12 = sub_249E7AAA8();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {

LABEL_16:

      return;
    }

    v16 = sub_249E7B318();

    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_249E2DA64(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_249E7E650[a1];
  }

  if (qword_27EF22F98 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_27EF22F98);
  }

  v3 = sub_249E7A6B8();
  __swift_project_value_buffer(v3, qword_27EF29170);
  v4 = sub_249E7A698();
  v5 = sub_249E7AE08();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_4();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_249DEE000, v4, v5, "Unsupported TUConversation State %ld", v6, 0xCu);
    OUTLINED_FUNCTION_1();
  }

  return 2;
}

uint64_t sub_249E2DB48()
{
  v1 = [v0 value];
  sub_249E7AAA8();

  sub_249E7AAE8();

  LOBYTE(v1) = sub_249E7AB68();

  return v1 & 1;
}

void sub_249E2DBE0()
{
  v1 = [v0 activeConversations];
  sub_249DF691C(0, &qword_27EF238C0, 0x277D6EE60);
  sub_249E2E860(&qword_27EF238C8, &qword_27EF238C0, 0x277D6EE60);
  v2 = sub_249E7AD58();

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_249E7B058();
    sub_249E7AD88();
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v5 = 0;
    v3 = v2 + 56;
    OUTLINED_FUNCTION_2_7();
    v6 = v7 & v8;
  }

  v9 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_249E08728(v2);
      return;
    }

    while (1)
    {
      if (sub_249E2D838())
      {
        sub_249E7B1A8();
        sub_249E7B1D8();
        sub_249E7B1E8();
        sub_249E7B1B8();
      }

      else
      {
      }

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_249E7B088())
      {
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_249E2DE24(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 remoteMembers];
  sub_249DF691C(0, &qword_27EF238D0, 0x277D6EEA0);
  sub_249E2E860(&qword_27EF238D8, &qword_27EF238D0, 0x277D6EEA0);
  v5 = sub_249E7AD58();

  if (qword_27EF22F98 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    OUTLINED_FUNCTION_0_7(&qword_27EF22F98);
LABEL_2:
    v6 = sub_249E7A6B8();
    __swift_project_value_buffer(v6, qword_27EF29170);

    v7 = sub_249E7A698();
    v8 = sub_249E7AE28();
    v9 = v5 & 0xC000000000000001;
    if (os_log_type_enabled(v7, v8))
    {
      v10 = OUTLINED_FUNCTION_4();
      *v10 = 134349056;
      v11 = v9 ? sub_249E7B068() : *(v5 + 16);
      *(v10 + 4) = v11;

      _os_log_impl(&dword_249DEE000, v7, v8, "Kicking remote members %{public}ld", v10, 0xCu);
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }

    if (v9)
    {
      swift_unknownObjectRetain();
      sub_249E7B058();
      sub_249E7AD88();
      v5 = v36;
      v12 = v37;
      v13 = v38;
      v9 = v39;
      v14 = v40;
    }

    else
    {
      v12 = v5 + 56;
      v13 = ~(-1 << *(v5 + 32));
      OUTLINED_FUNCTION_2_7();
      v14 = v15 & v16;
    }

    v17 = (v13 + 64) >> 6;
    v32 = v12;
    v33 = v5;
    if (v5 < 0)
    {
      break;
    }

LABEL_12:
    v18 = v9;
    v19 = v14;
    v20 = v9;
    if (v14)
    {
LABEL_16:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v5 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (v22)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_24;
      }

      v19 = *(v12 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  while (sub_249E7B088())
  {
    swift_dynamicCast();
    v22 = v35;
    v20 = v9;
    v21 = v14;
    if (!v35)
    {
      break;
    }

LABEL_20:
    v34 = v21;
    v23 = v22;
    v24 = sub_249E7A698();
    v25 = sub_249E7AE28();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_4();
      v27 = v3;
      v28 = v2;
      v29 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v29 = v22;
      v30 = v23;
      _os_log_impl(&dword_249DEE000, v24, v25, "Kicking %@", v26, 0xCu);
      sub_249DF4A68(v29);
      v2 = v28;
      v3 = v27;
      v12 = v32;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    [v2 kickMember:v23 conversation:v3];
    v9 = v20;
    v14 = v34;
    v5 = v33;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_24:
  sub_249E08728(v5);
}

void *sub_249E2E1F4(uint64_t a1)
{
  v2 = [v1 activeConversationForCall_];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 provider];
    v5 = [v4 identifier];

    v6 = sub_249E7AAA8();
    v8 = v7;

    if (v6 == sub_249E7A8A8() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_249E7B318();

      if ((v11 & 1) == 0)
      {

        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_249E2E2EC()
{
  v1 = v0;
  if (qword_27EF22F98 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_0_7(&qword_27EF22F98);
  }

  v2 = sub_249E7A6B8();
  __swift_project_value_buffer(v2, qword_27EF29170);
  v3 = v1;
  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_4();
    *v6 = 134217984;
    v7 = [v3 currentAudioAndVideoCalls];
    sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
    sub_249E7ABE8();

    v8 = sub_249E51FB4();

    *(v6 + 4) = v8;

    _os_log_impl(&dword_249DEE000, v4, v5, "%ld Current Audio and Video Calls", v6, 0xCu);
    OUTLINED_FUNCTION_1();
  }

  else
  {

    v4 = v3;
  }

  v9 = [v3 currentAudioAndVideoCalls];
  sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
  v1 = sub_249E7ABE8();

  v10 = sub_249E51FB4();
  v11 = 0;
  v12 = v1 & 0xC000000000000001;
  v13 = v1 & 0xFFFFFFFFFFFFFF8;
  v25 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v10 != v11)
  {
    if (v12)
    {
      v14 = MEMORY[0x24C204D50](v11, v1);
    }

    else
    {
      if (v11 >= *(v13 + 16))
      {
        goto LABEL_19;
      }

      v14 = *(v1 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v15 = v14;
    v16 = sub_249E7A698();
    v17 = sub_249E7AE28();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = v1;
      v20 = v10;
      v21 = v12;
      v22 = swift_slowAlloc();
      *v18 = 134218242;
      *(v18 + 4) = v11 + 1;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v22 = v15;
      v23 = v15;
      _os_log_impl(&dword_249DEE000, v16, v17, "Call %ld: %@", v18, 0x16u);
      sub_249DF4A68(v22);
      v12 = v21;
      v10 = v20;
      v1 = v19;
      OUTLINED_FUNCTION_1();
      v13 = v25;
      OUTLINED_FUNCTION_1();
      v15 = v16;
      v16 = v23;
    }

    ++v11;
  }
}

void sub_249E2E5EC()
{
  v1 = [v0 currentAudioAndVideoCalls];
  sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
  v2 = sub_249E7ABE8();

  v3 = sub_249E51FB4();
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {
LABEL_10:

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C204D50](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = [v6 isActive];

    v4 = v5 + 1;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t TUConversationState.description.getter(uint64_t a1)
{
  v1 = 0x676E6974696157;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v1 = 0x6E69726170657250;
      break;
    case 2:
      v2 = 1852403530;
      goto LABEL_5;
    case 3:
      v1 = 0x64656E696F4ALL;
      break;
    case 4:
      v2 = 1986094412;
LABEL_5:
      v1 = v2 | 0x676E6900000000;
      break;
    default:
      v1 = 0x6E776F6E6B6E55;
      break;
  }

  v3 = sub_249E7B2D8();
  MEMORY[0x24C204750](v3);

  MEMORY[0x24C204750](41, 0xE100000000000000);

  MEMORY[0x24C204750](10272, 0xE200000000000000);

  return v1;
}

uint64_t sub_249E2E860(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_249DF691C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return swift_once();
}

uint64_t type metadata accessor for DropInStateResponse(uint64_t a1)
{
  result = qword_27EF238E0;
  if (!qword_27EF238E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249E2E958(uint64_t a1)
{
  sub_249E7A628();
  if (v1 <= 0x3F)
  {
    type metadata accessor for State(319);
    if (v2 <= 0x3F)
    {
      sub_249E7A5B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_249E2E9FC(uint64_t a1, uint64_t a2)
{
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DropInStateResponse(0);
  if ((sub_249E7A5F8() & 1) == 0 || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  return sub_249E7A578();
}

uint64_t sub_249E2EAC8(uint64_t a1)
{
  result = sub_249E2EBFC(&qword_27EF238F0, &unk_249E7E6C4);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249E2EB0C(uint64_t a1)
{
  result = sub_249E2EBFC(&qword_27EF238F8, &unk_249E7E6FC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E2EB50(uint64_t a1)
{
  result = sub_249E2EBFC(&qword_27EF238F8, &unk_249E7E6FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E2EB94(uint64_t a1)
{
  *(a1 + 8) = sub_249E2EBFC(&qword_27EF23900, &unk_249E7E740);
  result = sub_249E2EBFC(&qword_27EF23908, &unk_249E7E718);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E2EBFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DropInStateResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E2EC40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DropInStateManager.Context(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v7 = sub_249E7A698();
  v8 = sub_249E7AE28();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
    swift_beginAccess();
    sub_249E30560(v2 + v11, v6);
    v12 = sub_249E30088();
    v14 = v13;
    sub_249E30628(v6);
    v15 = sub_249E3A958(v12, v14, v27);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_249DEE000, v7, v8, "Updated Context to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C205870](v10, -1, -1);
    MEMORY[0x24C205870](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = 0x65746E6F43646C6FLL;
  *(inited + 40) = 0xEA00000000007478;
  *(inited + 72) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  sub_249E30560(a1, boxed_opaque_existential_0);
  v18 = sub_249E7AA08();
  v19 = [objc_opt_self() defaultCenter];
  if (qword_28130D218 != -1)
  {
    swift_once();
  }

  v20 = qword_28130E6F0;
  v21 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
  swift_beginAccess();
  sub_249E30560(v2 + v21, v6);
  v22 = sub_249E7B358();
  sub_249E56C58(v18);
  v24 = v23;

  sub_249E30684(v20, v22, v24, v19);

  return swift_unknownObjectRelease();
}

uint64_t sub_249E2EF44(uint64_t a1)
{
  v3 = type metadata accessor for DropInStateManager.Context(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
  swift_beginAccess();
  sub_249E30560(v1 + v7, v6);
  swift_beginAccess();
  sub_249E305C4(a1, v1 + v7);
  swift_endAccess();
  sub_249E2EC40(v6);
  sub_249E30628(a1);
  return sub_249E30628(v6);
}

uint64_t sub_249E2F018()
{
  v1 = type metadata accessor for DropInStateManager.Context(0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v4 = v3 - v2;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask) = 0;
  sub_249E7A6A8();
  sub_249E7A508();
  *v4 = xmmword_249E7E7A0;
  *(v4 + 16) = 0xE000000000000000;
  sub_249E30720(v4, v0 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_context);
  return v0;
}

void sub_249E2F110(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DropInStateManager.Context(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = (v10 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  OUTLINED_FUNCTION_3();
  v46 = v13;
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v14;
  sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v49 = v16;
  v50 = v15;
  v17 = MEMORY[0x28223BE20](v15);
  v44 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = &v41 - v19;
  v20 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_logger;

  v21 = sub_249E7A698();
  v22 = sub_249E7AE28();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51[0] = v20;
    *v23 = 136315394;
    v24 = sub_249E7ADB8();
    v42 = v4;
    v43 = a1;
    v26 = v11;
    v27 = v8;
    v28 = sub_249E3A958(v24, v25, v51);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    if (a3)
    {
      v29 = a2;
    }

    else
    {
      v29 = 0;
    }

    if (a3)
    {
      v30 = a3;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = sub_249E3A958(v29, v30, v51);
    v8 = v27;
    v11 = v26;

    *(v23 + 14) = v31;
    v4 = v42;
    a1 = v43;
    _os_log_impl(&dword_249DEE000, v21, v22, "Updating State to %s, reason = %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C205870](v20, -1, -1);
    MEMORY[0x24C205870](v23, -1, -1);
  }

  switch(a1)
  {
    case 3:
      OUTLINED_FUNCTION_2_8();
      break;
    case 2:
      OUTLINED_FUNCTION_2_8();
      v36 = *(v4 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask);
      if (*v20 != 3)
      {
        if (v36)
        {

          sub_249E7AC98();
        }

        v32 = a3;
        if (!a3)
        {
          a2 = v20[1];
          v32 = v20[2];
        }

        v38 = v45;
        sub_249E7A758();
        sub_249E30310(&qword_28130D320, MEMORY[0x277D06990]);
        sub_249E30310(&unk_28130D310, MEMORY[0x277D06998]);
        sub_249E30310(&unk_28130D300, MEMORY[0x277D069A0]);
        v39 = v47;
        sub_249E7A6E8();
        (*(v46 + 8))(v38, v39);
        v40 = v44;
        sub_249E7A5A8();
        v33 = v48;
        sub_249E7A528();
        v35 = v49;
        v34 = v50;
        (*(v49 + 8))(v40, v50);
        sub_249E2F81C();
        goto LABEL_28;
      }

      if (!v36)
      {
        sub_249E2F694();
        return;
      }

      break;
    case 1:
      if (*(v4 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask))
      {

        sub_249E7AC98();
      }

      if (a3)
      {
        v32 = a3;
      }

      else
      {
        a2 = 0;
        v32 = 0xE000000000000000;
      }

      v33 = v48;
      sub_249E7A508();
      v35 = v49;
      v34 = v50;
      goto LABEL_28;
    default:
      return;
  }

  a2 = v20[1];
  v32 = v20[2];
  v33 = v48;
  v35 = v49;
  v37 = v20 + *(v8 + 24);
  v34 = v50;
  (*(v49 + 16))(v48, v37, v50);

LABEL_28:
  (*(v35 + 16))(v11 + *(v8 + 24), v33, v34);
  *v11 = a1;
  v11[1] = a2;
  v11[2] = v32;
  sub_249E2EF44(v11);
  (*(v35 + 8))(v33, v34);
}

uint64_t sub_249E2F694()
{
  v1 = v0;
  v2 = type metadata accessor for DropInStateManager.Context(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_249E7A698();
  v6 = sub_249E7AE28();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_249DEE000, v5, v6, "Availability Expired", v7, 2u);
    MEMORY[0x24C205870](v7, -1, -1);
  }

  v8 = v1 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
  swift_beginAccess();
  v9 = *(v2 + 24);
  v10 = sub_249E7A5B8();
  (*(*(v10 - 8) + 16))(&v4[v9], v8 + v9, v10);
  *v4 = xmmword_249E7E7B0;
  *(v4 + 2) = 0x8000000249E82670;
  return sub_249E2EF44(v4);
}

uint64_t sub_249E2F81C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  sub_249E7A758();
  sub_249E30310(&qword_28130D320, MEMORY[0x277D06990]);
  sub_249E30310(&unk_28130D310, MEMORY[0x277D06998]);
  sub_249E30310(&unk_28130D300, MEMORY[0x277D069A0]);
  sub_249E7A6E8();
  (*(v6 + 8))(v8, v5);
  v9 = v14[1];
  v10 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  v11 = sub_249E30360(&qword_27EF23910, type metadata accessor for DropInStateManager, &unk_249E7E838);
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v11;
  v12[4] = v9;
  v12[5] = v1;
  swift_retain_n();
  *(v1 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask) = sub_249E5ED90(0, 0, v4, &unk_249E7E878, v12);
}

uint64_t sub_249E2FA98()
{
  sub_249E30628(v0 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_context);

  v1 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_logger;
  v2 = sub_249E7A6B8();
  (*(*(v2 - 8) + 8))(&v1[v0], v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E2FB20()
{
  sub_249E2FA98();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249E2FB74(uint64_t a1)
{
  result = type metadata accessor for DropInStateManager.Context(319);
  if (v2 <= 0x3F)
  {
    result = sub_249E7A6B8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_249E2FC74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249E2FCD4(uint64_t a1)
{
  type metadata accessor for State(319);
  if (v1 <= 0x3F)
  {
    sub_249E7A5B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_249E2FD60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  return MEMORY[0x2822009F8](sub_249E2FD84, a5, 0);
}

uint64_t sub_249E2FD84()
{
  v1 = sub_249E62184(*(v0 + 40));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_249E2FE24;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_249E2FE24()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_249E30784;
  }

  else
  {
    v4 = sub_249E2FF5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_249E2FF5C()
{
  if ((sub_249E7ACB8() & 1) == 0)
  {
    v1 = sub_249E7A698();
    v2 = sub_249E7AE28();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_249DEE000, v1, v2, "Drop In Availability Expired", v3, 2u);
      MEMORY[0x24C205870](v3, -1, -1);
    }

    v4 = *(v0 + 48);

    *(v4 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask) = 0;

    v5 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
    swift_beginAccess();
    if (*(v4 + v5) != 3)
    {
      sub_249E2F694();
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_249E30088()
{
  v1 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  sub_249E7B128();
  MEMORY[0x24C204750](0x3D2065746174535BLL, 0xE900000000000020);
  v8 = sub_249E7ADB8();
  MEMORY[0x24C204750](v8);

  MEMORY[0x24C204750](0x6E6F73616552202CLL, 0xEB00000000203D20);
  MEMORY[0x24C204750](*(v0 + 8), *(v0 + 16));
  MEMORY[0x24C204750](0xD000000000000014, 0x8000000249E82650);
  type metadata accessor for DropInStateManager.Context(0);
  sub_249E30360(&unk_27EF23778, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v9 = sub_249E7B2D8();
  MEMORY[0x24C204750](v9);

  MEMORY[0x24C204750](0x697078457369202CLL, 0xEE00203D20646572);
  sub_249E7A568();
  v11 = v10;
  sub_249E7A598();
  sub_249E7A568();
  v13 = v12;
  (*(v3 + 8))(v7, v1);
  if (v11 >= v13)
  {
    v14 = 0x65736C6166;
  }

  else
  {
    v14 = 1702195828;
  }

  if (v11 >= v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v14, v15);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_249E302D8()
{
  result = sub_249E7AA88();
  qword_28130E6F0 = result;
  return result;
}

uint64_t sub_249E30310(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF23820, &unk_249E7E860);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E30360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249E303A8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249E3046C;

  return sub_249E2FD60(v6, a1, v4, v5, v7);
}

uint64_t sub_249E3046C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_249E30560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInStateManager.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E305C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInStateManager.Context(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E30628(uint64_t a1)
{
  v2 = type metadata accessor for DropInStateManager.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_249E30684(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_249E7A9C8();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_249E30720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInStateManager.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_beginAccess();
}

uint64_t sub_249E307AC()
{

  v1 = OBJC_IVAR____TtC10DropInCore16PseudonymManager_logger;
  v2 = sub_249E7A6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E3082C()
{
  sub_249E307AC();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PseudonymManager(uint64_t a1)
{
  result = qword_27EF23920;
  if (!qword_27EF23920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E308AC(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E30974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = 0x6469656D6F68;
  *(inited + 40) = 0xE600000000000000;
  v1 = sub_249E7A5D8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  return sub_249E7AA08();
}

uint64_t sub_249E30A38(uint64_t a1)
{
  result = sub_249E30B0C(&qword_27EF23930, &unk_249E7E940);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for DropInStateRequest(uint64_t a1)
{
  result = qword_28130E3F0;
  if (!qword_28130E3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E30AC8(uint64_t a1)
{
  result = sub_249E30B0C(&qword_27EF23938, &unk_249E7E978);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E30B0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DropInStateRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E30B50(uint64_t a1)
{
  result = sub_249E30B0C(&qword_27EF23938, &unk_249E7E978);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E30BBC(uint64_t a1)
{
  result = sub_249E7A628();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249E30C28()
{
  v1 = 7104878;
  sub_249E7B128();
  MEMORY[0x24C204750](0x44497265646E6553, 0xEB00000000203D20);
  MEMORY[0x24C204750](*v0, v0[1]);
  MEMORY[0x24C204750](0x203D20494353202CLL, 0xE800000000000000);
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x24C204750](v2, v3);

  MEMORY[0x24C204750](0xD000000000000010, 0x8000000249E82760);
  if (v0[5])
  {
    v4 = v0[4];
    v5 = v0[5];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x24C204750](v4, v5);

  MEMORY[0x24C204750](0xD000000000000016, 0x8000000249E82780);
  if (v0[7])
  {
    v1 = v0[6];
    v6 = v0[7];
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x24C204750](v1, v6);

  return 0;
}

uint64_t sub_249E30DC4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_249E7B318() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[4] == a2[4] && v8 == v9;
    if (!v10 && (sub_249E7B318() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = a2[7];
  if (v11)
  {
    if (v12)
    {
      v13 = a1[6] == a2[6] && v11 == v12;
      if (v13 || (sub_249E7B318() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_249E30EBC(uint64_t a1)
{
  sub_249E7AB18();
  if (v1[3])
  {
    sub_249E7B428();
    sub_249E7AB18();
  }

  else
  {
    sub_249E7B428();
  }

  if (v1[5])
  {
    sub_249E7B428();
    sub_249E7AB18();
  }

  else
  {
    sub_249E7B428();
  }

  if (!v1[7])
  {
    return sub_249E7B428();
  }

  sub_249E7B428();

  return sub_249E7AB18();
}

uint64_t sub_249E30F98()
{
  sub_249E7B408();
  sub_249E30EBC(v1);
  return sub_249E7B438();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_249E30FFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_249E3103C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_249E310A0()
{
  result = qword_27EF23940;
  if (!qword_27EF23940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23940);
  }

  return result;
}

uint64_t sub_249E310F4(uint64_t a1)
{
  sub_249E7B408();
  sub_249E30EBC(v2);
  return sub_249E7B438();
}

uint64_t type metadata accessor for Pseudonym(uint64_t a1)
{
  result = qword_28130D4A8;
  if (!qword_28130D4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E311A4(uint64_t a1)
{
  result = sub_249DF691C(319, &unk_28130D140, 0x277D6EEE8);
  if (v2 <= 0x3F)
  {
    result = sub_249E7A5B8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E31250(void *a1, void *a2)
{
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  if (sub_249E7AF78() & 1) != 0 && (v4 = type metadata accessor for Pseudonym(0), (sub_249E7A578()))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_249E312EC()
{
  v1 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  sub_249E7B128();

  v8 = [*v0 description];
  v9 = sub_249E7AAA8();
  v11 = v10;

  MEMORY[0x24C204750](v9, v11);

  MEMORY[0x24C204750](0x617269707845202CLL, 0xEF203D206E6F6974);
  type metadata accessor for Pseudonym(0);
  OUTLINED_FUNCTION_1_5();
  sub_249E32D94(v12, v13, MEMORY[0x277CC95B8]);
  v14 = sub_249E7B2D8();
  MEMORY[0x24C204750](v14);

  MEMORY[0x24C204750](0x697078457369202CLL, 0xEE00203D20646572);
  sub_249E7A568();
  v16 = v15;
  sub_249E7A598();
  sub_249E7A568();
  v18 = v17;
  (*(v3 + 8))(v7, v1);
  if (v16 >= v18)
  {
    v19 = 0x65736C6166;
  }

  else
  {
    v19 = 1702195828;
  }

  if (v16 >= v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v19, v20);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return 0x20656C646E61485BLL;
}

unint64_t sub_249E31534(uint64_t a1, uint64_t a2)
{
  v2 = sub_249E7B268();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_249E31580(char a1)
{
  if (a1)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 0x656C646E6168;
  }
}

unint64_t sub_249E31614@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E31534(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_249E31644@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E31580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_249E31678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249E31534(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249E316B8(uint64_t a1)
{
  v2 = sub_249E32B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249E316F4(uint64_t a1)
{
  v2 = sub_249E32B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249E31730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v29 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23960, &qword_249E7ED68);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  v30 = type metadata accessor for Pseudonym(0);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v13 = (v12 - v11);
  v31 = a1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_249E32B84();
  sub_249E7B448();
  if (v2)
  {
    v14 = 0;
    v15 = v13;
    v16 = v4;
    v19 = v30;
  }

  else
  {
    LOBYTE(v32) = 1;
    OUTLINED_FUNCTION_1_5();
    sub_249E32D94(v17, v18, MEMORY[0x277CC95A0]);
    sub_249E7B298();
    v16 = v4;
    v19 = v30;
    v15 = v13;
    (*(v29 + 32))(v13 + *(v30 + 20), v9, v16);
    sub_249E32BD8();
    sub_249E7B298();
    *(v13 + *(v30 + 24)) = 1;
    sub_249E32C2C();
    sub_249E7B298();
    sub_249DF691C(0, &qword_27EF23528, 0x277CCAAC8);
    sub_249DF691C(0, &unk_28130D140, 0x277D6EEE8);
    v23 = sub_249E7AE38();
    v24 = v23;
    if (v23)
    {
      v25 = OUTLINED_FUNCTION_4_6();
      v26(v25);
      sub_249DFE8F8(v32, v33);
      *v13 = v24;
      sub_249E32CD4(v13, a2);
      __swift_destroy_boxed_opaque_existential_0(v31);
      return sub_249E32D38(v13);
    }

    sub_249E32C80();
    swift_allocError();
    swift_willThrow();
    sub_249DFE8F8(v32, v33);
    v27 = OUTLINED_FUNCTION_4_6();
    v22(v27, v21);
    v14 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v31);
  if (v14)
  {
    return (*(v29 + 8))(v15 + *(v19 + 20), v16);
  }

  return result;
}

uint64_t sub_249E31B94(void *a1)
{
  v3 = v1;
  v30[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23990, &qword_249E7ED70);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-1] - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_249E32B84();
  sub_249E7B458();
  v11 = type metadata accessor for Pseudonym(0);
  LOBYTE(v30[0]) = 1;
  sub_249E7A5B8();
  OUTLINED_FUNCTION_1_5();
  sub_249E32D94(v12, v13, MEMORY[0x277CC9580]);
  sub_249E7B2C8();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  LOBYTE(v30[0]) = *(v3 + *(v11 + 24));
  HIBYTE(v29) = 2;
  v14 = sub_249E32DDC();
  OUTLINED_FUNCTION_7_4(v14, v15, v16, &type metadata for Pseudonym.ExpirationType, v14);
  v18 = objc_opt_self();
  v19 = *v3;
  v30[0] = 0;
  v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v30];
  v21 = v30[0];
  if (!v20)
  {
    v28 = v21;
    sub_249E7A4D8();

    swift_willThrow();
    return (*(v7 + 8))(v10, v5);
  }

  v22 = sub_249E7A4F8();
  v24 = v23;

  v30[0] = v22;
  v30[1] = v24;
  HIBYTE(v29) = 0;
  v25 = sub_249E32E30();
  OUTLINED_FUNCTION_7_4(v25, v26, v27, MEMORY[0x277CC9318], v25);
  (*(v7 + 8))(v10, v5);
  return sub_249DFE8F8(v22, v24);
}

BOOL sub_249E31E24(uint64_t a1, uint64_t a2)
{
  v2 = sub_249E7B268();

  return v2 != 0;
}

BOOL sub_249E31EC8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E31E24(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_249E31EFC@<X0>(void *a1@<X8>)
{
  result = sub_249E31E6C();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

uint64_t sub_249E31F30(char a1)
{
  if (a1)
  {
    return 0x72656E6567657250;
  }

  else
  {
    return 0x6C616D726F4ELL;
  }
}

uint64_t sub_249E31F7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_249E7B318() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E6567657270 && a2 == 0xEC00000064657461)
  {

    return 1;
  }

  else
  {
    v7 = sub_249E7B318();

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

uint64_t sub_249E3204C(char a1)
{
  if (a1)
  {
    return 0x72656E6567657270;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_249E3209C(void *a1, int a2)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239E8, &qword_249E7ED98);
  OUTLINED_FUNCTION_3();
  v22 = v4;
  v23 = v3;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239F0, &qword_249E7EDA0);
  OUTLINED_FUNCTION_3();
  v9 = v8;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239F8, &qword_249E7EDA8);
  OUTLINED_FUNCTION_3();
  v15 = v14;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_249E32E84();
  sub_249E7B458();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_249E32F9C();
    sub_249E7B2B8();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_249E32FF0();
    sub_249E7B2B8();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_249E32350(char a1)
{
  sub_249E7B408();
  MEMORY[0x24C205020](a1 & 1);
  return sub_249E7B438();
}

uint64_t sub_249E32398(unint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239B0, &qword_249E7ED78);
  OUTLINED_FUNCTION_3();
  v39 = v2;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239B8, &qword_249E7ED80);
  OUTLINED_FUNCTION_3();
  v38 = v7;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239C0, &qword_249E7ED88);
  OUTLINED_FUNCTION_3();
  v40 = v12;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  __swift_project_boxed_opaque_existential_0(a1, *(a1 + 24));
  sub_249E32E84();
  v16 = v42;
  sub_249E7B448();
  if (v16)
  {
    goto LABEL_8;
  }

  v36 = v6;
  v37 = v10;
  v42 = a1;
  v17 = v41;
  v18 = sub_249E7B2A8();
  result = sub_249E32ED8(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v27 = sub_249E7B178();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239D0, &qword_249E7ED90);
    *v29 = &type metadata for Pseudonym.ExpirationType;
    sub_249E7B288();
    sub_249E7B168();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v11);
    a1 = v42;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return a1;
  }

  v35 = 0;
  if (v21 < (v22 >> 1))
  {
    a1 = *(v20 + v21);
    sub_249E32F20(v21 + 1, v22 >> 1, result, v20, v21, v22);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (a1)
      {
        LODWORD(v38) = a1;
        v44 = 1;
        sub_249E32F9C();
        OUTLINED_FUNCTION_6_4(&type metadata for Pseudonym.ExpirationType.PregeneratedCodingKeys, &v44);
        swift_unknownObjectRelease();
        (*(v39 + 8))(v5, v17);
        v31 = OUTLINED_FUNCTION_2_9();
        v32(v31);
        a1 = v38;
      }

      else
      {
        v43 = 0;
        sub_249E32FF0();
        v30 = v37;
        OUTLINED_FUNCTION_6_4(&type metadata for Pseudonym.ExpirationType.NormalCodingKeys, &v43);
        swift_unknownObjectRelease();
        (*(v38 + 8))(v30, v36);
        v33 = OUTLINED_FUNCTION_2_9();
        v34(v33);
      }

      __swift_destroy_boxed_opaque_existential_0(v42);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E32824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249E31F7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249E3286C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_249E32044();
  *a1 = result;
  return result;
}

uint64_t sub_249E32894(uint64_t a1)
{
  v2 = sub_249E32E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249E328D0(uint64_t a1)
{
  v2 = sub_249E32E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249E3292C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_249E32088();
  *a1 = result & 1;
  return result;
}

uint64_t sub_249E32958(uint64_t a1)
{
  v2 = sub_249E32FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249E32994(uint64_t a1)
{
  v2 = sub_249E32FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249E329D0(uint64_t a1)
{
  v2 = sub_249E32F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249E32A0C(uint64_t a1)
{
  v2 = sub_249E32F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249E32A48@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E32398(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_249E32AA0()
{
  result = qword_27EF23948;
  if (!qword_27EF23948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23948);
  }

  return result;
}

unint64_t sub_249E32B84()
{
  result = qword_27EF23968;
  if (!qword_27EF23968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23968);
  }

  return result;
}

unint64_t sub_249E32BD8()
{
  result = qword_27EF23978;
  if (!qword_27EF23978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23978);
  }

  return result;
}

unint64_t sub_249E32C2C()
{
  result = qword_27EF23980;
  if (!qword_27EF23980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23980);
  }

  return result;
}

unint64_t sub_249E32C80()
{
  result = qword_27EF23988;
  if (!qword_27EF23988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23988);
  }

  return result;
}

uint64_t sub_249E32CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Pseudonym(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E32D38(uint64_t a1)
{
  v2 = type metadata accessor for Pseudonym(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249E32D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_249E32DDC()
{
  result = qword_27EF239A0;
  if (!qword_27EF239A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239A0);
  }

  return result;
}

unint64_t sub_249E32E30()
{
  result = qword_27EF239A8;
  if (!qword_27EF239A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239A8);
  }

  return result;
}

unint64_t sub_249E32E84()
{
  result = qword_27EF239C8;
  if (!qword_27EF239C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239C8);
  }

  return result;
}

uint64_t sub_249E32ED8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_249E32F20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_249E32F9C()
{
  result = qword_27EF239D8;
  if (!qword_27EF239D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239D8);
  }

  return result;
}

unint64_t sub_249E32FF0()
{
  result = qword_27EF239E0;
  if (!qword_27EF239E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239E0);
  }

  return result;
}