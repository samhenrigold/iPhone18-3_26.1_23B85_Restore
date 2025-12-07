uint64_t sub_1C7295E2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 704) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7295F28()
{
  v39 = v0;
  v2 = v0[88];
  v3 = v0[68];
  v4 = v0[64];
  sub_1C6FD7FC8(v3, &qword_1EC2173A0, &qword_1C75699C8);
  OUTLINED_FUNCTION_22_45();
  sub_1C7298170();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_1C754F2DC();
  v0[89] = v2;
  if (v2)
  {
    v5 = v0[66];
    v6 = v0[61];

    OUTLINED_FUNCTION_0_125();
    sub_1C72981C8(v5, v7);
    OUTLINED_FUNCTION_4_68();
    sub_1C72981C8(v6, v8);
    OUTLINED_FUNCTION_12_49();
    sub_1C754DEAC();
    v9 = OUTLINED_FUNCTION_14_46();
    v10(v9);
    if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_5_64(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    }

    v11 = v2;
    v12 = sub_1C754FEEC();
    sub_1C755119C();

    if (OUTLINED_FUNCTION_262_0())
    {
      OUTLINED_FUNCTION_41_0();
      v13 = OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_59_18(5.7779e-34);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_53_26(v14);
      OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v15, v16, "StoryOrchestrator music curation failed and will use an empty curation. Error: %@");
      sub_1C6FD7FC8(v13, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    v17 = swift_task_alloc();
    v0[94] = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_3_78();
  }

  else
  {
    OUTLINED_FUNCTION_22_45();
    sub_1C7298170();
    v20 = sub_1C754FEEC();
    v21 = sub_1C755118C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[65];
    if (v22)
    {
      v24 = OUTLINED_FUNCTION_41_0();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136642819;
      v26 = StoryMusicCuration.description.getter();
      v28 = v27;
      OUTLINED_FUNCTION_0_125();
      sub_1C72981C8(v23, v29);
      v30 = sub_1C6F765A4(v26, v28, &v38);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "StoryOrchestrator got music curation: %{sensitive}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_37();
    }

    else
    {

      OUTLINED_FUNCTION_0_125();
      sub_1C72981C8(v23, v31);
    }

    v32 = v0[50];
    v0[90] = *(v32 + *(type metadata accessor for StoryGenerationSession(0) + 24));
    v18 = swift_task_alloc();
    v0[91] = v18;
    *v18 = v0;
    v19 = sub_1C7296254;
  }

  v18[1] = v19;
  v33 = OUTLINED_FUNCTION_10_60();

  return sub_1C7297C2C(v33, v34, v35, v36);
}

uint64_t sub_1C7296254()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C729633C(uint64_t a1)
{
  v2 = v1[90];
  v3 = v1[72];
  v4 = v1[71];
  v5 = v1[70];
  v6 = v1[61];
  sub_1C754DF3C();
  sub_1C754DEAC();
  v8 = v7;

  v9 = *(v4 + 8);
  v9(v3, v5);
  OUTLINED_FUNCTION_4_68();
  sub_1C72981C8(v6, v10);
  if (v2)
  {
    v11 = v1[90];
    v12 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics;
    *(*(*(v11 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56) + 16) = 0;
    v13 = *(*(v11 + v12) + 56);
    *(v13 + 24) = v8;
    *(v13 + 32) = 0;
  }

  OUTLINED_FUNCTION_2_85();
  sub_1C7298118();
  v14 = v1[89];
  sub_1C754F2EC();
  v15 = v1[76];
  if (v14)
  {
    v16 = v1[69];
    v17 = v1[68];
    v18 = v1[51];
    OUTLINED_FUNCTION_0_125();
    sub_1C72981C8(v19, v20);
    sub_1C6FD7FC8(v17, &qword_1EC2173A0, &qword_1C75699C8);
    sub_1C6FD7FC8(v16, &qword_1EC217C28, &unk_1C756E200);
    OUTLINED_FUNCTION_58_21();
    v21 = OUTLINED_FUNCTION_57_3();
    (v9)(v21);
    OUTLINED_FUNCTION_11_50(v18);
    v22 = v1[76];
    OUTLINED_FUNCTION_6_69();
    (*(v23 + 8))(v22);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v25 = v1[75];
    v26 = v1[73];
    v31 = v1[74];
    v27 = v1[70];
    v28 = v1[69];
    v29 = v1[51];
    sub_1C6FD7FC8(v1[68], &qword_1EC2173A0, &qword_1C75699C8);
    sub_1C6FD7FC8(v28, &qword_1EC217C28, &unk_1C756E200);
    OUTLINED_FUNCTION_58_21();
    v9(v26, v27);
    OUTLINED_FUNCTION_2_85();
    sub_1C7298118();
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    OUTLINED_FUNCTION_24_2();
    sub_1C754F1AC();
    (*(v25 + 8))(v15, v31);

    OUTLINED_FUNCTION_25();
  }

  return v24();
}

uint64_t sub_1C7296710()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C72967F8()
{
  v1 = v0[92];
  v2 = v0[67];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v4 = [v3 UUIDString];

  v5 = sub_1C755068C();
  v7 = v6;

  v2[6] = v5;
  v2[7] = v7;

  v8 = MEMORY[0x1E69E7CC0];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v2[2] = v8;
  v2[3] = v8;
  v2[4] = v8;
  v2[5] = v8;
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v0[93];
  sub_1C754F2EC();
  v14 = v0[76];
  v15 = v0[75];
  v22 = v0[74];
  v16 = v0[70];
  v17 = v0[69];
  v21 = v0[73];
  v18 = v0[51];
  sub_1C6FD7FC8(v0[68], &qword_1EC2173A0, &qword_1C75699C8);
  sub_1C6FD7FC8(v17, &qword_1EC217C28, &unk_1C756E200);
  OUTLINED_FUNCTION_58_21();
  v13(v21, v16);
  OUTLINED_FUNCTION_2_85();
  sub_1C7298118();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  OUTLINED_FUNCTION_24_2();
  sub_1C754F1AC();
  (*(v15 + 8))(v14, v22);

  OUTLINED_FUNCTION_25();

  return v19();
}

uint64_t sub_1C7296BC0()
{
  v2 = v0[61];

  OUTLINED_FUNCTION_4_68();
  sub_1C72981C8(v2, v3);
  v4 = v0[88];
  OUTLINED_FUNCTION_12_49();
  sub_1C754DEAC();
  v5 = OUTLINED_FUNCTION_14_46();
  v6(v5);
  if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {
    OUTLINED_FUNCTION_5_64(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
  }

  v7 = v4;
  v8 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    v9 = OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_59_18(5.7779e-34);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_53_26(v10);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v11, v12, "StoryOrchestrator music curation failed and will use an empty curation. Error: %@");
    sub_1C6FD7FC8(v9, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_10_1();
  }

  v13 = swift_task_alloc();
  v0[94] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_3_78();
  *(v14 + 8) = v15;
  v16 = OUTLINED_FUNCTION_10_60();

  return sub_1C7297C2C(v16, v17, v18, v19);
}

uint64_t sub_1C7296D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[84] = a4;
  v5 = sub_1C75519CC();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7296DF8, 0, 0);
}

uint64_t sub_1C7296DF8()
{
  OUTLINED_FUNCTION_49_0();
  *(v0 + 720) = 0xE00000001;
  *(v0 + 728) = 1;
  *(v0 + 732) = getpid();
  bzero((v0 + 16), 0x200uLL);
  *(v0 + 664) = 648;
  *(v0 + 48) = 0;
  sysctl((v0 + 720), 4u, (v0 + 16), (v0 + 664), 0, 0);
  if ((*(v0 + 49) & 8) != 0)
  {

    OUTLINED_FUNCTION_25();

    return v3();
  }

  else
  {
    [objc_opt_self() storyMusicCurationTimeoutSeconds];
    sub_1C755201C();
    sub_1C7551E7C();
    v1 = swift_task_alloc();
    *(v0 + 704) = v1;
    *v1 = v0;
    v1[1] = sub_1C7296F70;
    OUTLINED_FUNCTION_57_0();

    return sub_1C730A318();
  }
}

uint64_t sub_1C7296F70()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 712) = v0;

  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72970C4()
{
  OUTLINED_FUNCTION_42();
  type metadata accessor for StoryMusicCuration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  sub_1C7550E1C();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_1C7297158()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72971B4()
{
  OUTLINED_FUNCTION_49_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_22(v1);

  return sub_1C7296D38(v3, v4, v5, v6);
}

uint64_t FreeformStoryGenerator.musicCurationResults(from:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  *(v1 + 16) = v6;
  *(v1 + 24) = v5;
  v7 = type metadata accessor for StoryMusicCuration(0);
  *(v1 + 32) = v7;
  OUTLINED_FUNCTION_76(v7);
  *(v1 + 40) = OUTLINED_FUNCTION_77();
  *(v1 + 48) = *v4;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C72972FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[6];
  v13 = v12[7];
  v15 = v12[3];
  v16 = v12[2];
  v17 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v18 = [v17 UUIDString];

  v19 = sub_1C755068C();
  v21 = v20;

  v16[6] = v19;
  v16[7] = v21;
  v22 = MEMORY[0x1E69E7CC0];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v16[2] = v22;
  v16[3] = v22;
  v16[4] = v22;
  v16[5] = v22;
  type metadata accessor for StoryMusicCurationDiagnostics(0);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = swift_task_alloc();
  v12[8] = v27;
  v27[2] = v14;
  v27[3] = v13;
  v27[4] = v15;
  v28 = swift_task_alloc();
  v12[9] = v28;
  v28[2] = v14;
  v28[3] = v13;
  v28[4] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v12[10] = v29;
  *v29 = v30;
  v29[1] = sub_1C72974A0;
  v32 = v12[4];
  v31 = v12[5];

  return MEMORY[0x1EEE6DE18](v31, &unk_1C757E548, v27, sub_1C72982B8, v28, 0, 0, v32, a9, a10, a11, a12);
}

uint64_t sub_1C72974A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72975AC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_125();
  sub_1C72981C8(v1, v2);
  OUTLINED_FUNCTION_2_85();
  sub_1C7298118();
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
  }

  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EDD28B68);
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    v6 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v6);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C72976A8()
{
  OUTLINED_FUNCTION_123();

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
  }

  v1 = *(v0 + 88);
  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EDD28B68);
  v3 = OUTLINED_FUNCTION_24_2();
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_41_0();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "StoryMusicCuration task failed with error = %@", v8, 0xCu);
    sub_1C6FD7FC8(v9, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C7297828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729784C, 0, 0);
}

uint64_t sub_1C729784C()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EDD28B68);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v14 = *(v0 + 40);

  *(v0 + 16) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = sub_1C729796C;
  v12 = *(v0 + 32);

  return sub_1C7181B48(v12);
}

uint64_t sub_1C729796C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7297AAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoryMusicCuration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  sub_1C7550E1C();
  sub_1C7550E1C();
  if (qword_1EDD09CF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EDD28B68);
  oslog = sub_1C754FEEC();
  v3 = sub_1C755119C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    [objc_opt_self() storyMusicCurationTimeoutSeconds];
    *(v4 + 4) = v5;
    _os_log_impl(&dword_1C6F5C000, oslog, v3, "StoryMusicCuration timed out after %f seconds!", v4, 0xCu);
    MEMORY[0x1CCA5F8E0](v4, -1, -1);
  }
}

uint64_t sub_1C7297C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_1C754F38C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7297CF0, 0, 0);
}

uint64_t sub_1C7297CF0()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
  }

  v1 = sub_1C754FF1C();
  v0[8] = __swift_project_value_buffer(v1, qword_1EDD28B68);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v10 = v0[3];
  v11 = v0[4];

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1C754F1CC();
  if (v11)
  {
    type metadata accessor for MusicCurationDiagnosticsGenerator(0);
    swift_allocObject();

    v13 = MusicCurationDiagnosticsGenerator.init(storyGenerationDiagnosticContext:)(v12);
    v0[9] = v13;

    return MEMORY[0x1EEE6DFA0](sub_1C7297EB0, v13, 0);
  }

  else
  {
    OUTLINED_FUNCTION_11_50(v0[3]);
    v14 = OUTLINED_FUNCTION_57_0();
    v15(v14);

    OUTLINED_FUNCTION_43();

    return v16();
  }
}

uint64_t sub_1C7297EB0()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C70D55CC(*(v0 + 16));
  *(v0 + 80) = 0;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C7297F38()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_11_50(*(v0 + 24));
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7297FD0()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_1C754FEEC();
  sub_1C755119C();

  v4 = OUTLINED_FUNCTION_262_0();
  v5 = *(v0 + 80);
  if (v4)
  {
    OUTLINED_FUNCTION_41_0();
    v6 = OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_59_18(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_53_26(v7);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v8, v9, "Failed to save music curation diagnostics: %@");
    sub_1C6FD7FC8(v6, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_50(*(v0 + 24));
  v10 = OUTLINED_FUNCTION_57_0();
  v11(v10);

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C7298118()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7298170()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C72981C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7298220()
{
  OUTLINED_FUNCTION_49_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_22(v1);

  return sub_1C7297828(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_53_26(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_22()
{

  return sub_1C75504DC();
}

uint64_t PhotoAnalysisPhotoLibraryService.curatedAssets(from:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298338()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_61_15(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_101_9(v2);
  OUTLINED_FUNCTION_161_4();

  return sub_1C729961C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C7298418()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C7298540()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

void sub_1C72985B8(void *a1@<X0>, Class *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C72993F8([objc_allocWithZone(*a2) initWithServiceProvider_], a3, a4, a5);
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonGrounding(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298648()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_138_4();
  v4 = OUTLINED_FUNCTION_104_7(v3);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_101_9(v6);
  v8 = OUTLINED_FUNCTION_27_34(22);

  return sub_1C72998C4(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C729870C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonalTraits(for:momentUUIDByAssetUUID:extendedTokenCollectionAsData:sharingFilter:configurationAsData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298854()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v13;
  *(v2 + 48) = v14;
  *(v2 + 64) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 104) = v3;
  *v3 = v4;
  v3[1] = sub_1C7298944;
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C7298944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7298A44()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisPhotoLibraryService.extendedCuratedAssets(from:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298AB8()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_61_15(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_101_9(v2);
  OUTLINED_FUNCTION_161_4();

  return sub_1C729961C(v4, v5, v6, v7, v8, v9);
}

void PhotoAnalysisExecutiveService.init(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 photoAnalysisClient];
  if (v4)
  {
    v5 = v4;
    sub_1C72993F8([objc_allocWithZone(MEMORY[0x1E69BE618]) initWithServiceProvider_], &qword_1EC219FC8, &unk_1C757EA20, a2);
  }

  else
  {
    sub_1C72AA28C();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t PhotoAnalysisExecutiveService.keepPADActive()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7298D0C;

  return sub_1C729A254(v1, 0x414441507065656BLL, 0xED00006576697463, &unk_1C757E5D0, 0, 0, 0);
}

uint64_t sub_1C7298D0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonalEventMoments(for:associatedPersonUUID:scopedMomentUUIDs:momentUUIDByAssetUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298E24()
{
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v14 = *(v0 + 32);
  v15 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v14;
  *(v3 + 32) = v15;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = sub_1C7298F0C;
  OUTLINED_FUNCTION_154_2();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C7298F0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729900C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisMomentGraphService.requestFilterLocationsByMomentLocationHierarchy(for:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7299080()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0[4];
  v1 = v0[5];
  v3 = OUTLINED_FUNCTION_138_4();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_1C7299148;
  OUTLINED_FUNCTION_154_2();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C7299148()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7299264()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisService.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C7299364()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219F58);
  __swift_project_value_buffer(v0, qword_1EC219F58);
  return sub_1C754FEFC();
}

void sub_1C72993F8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  v9 = __swift_project_value_buffer(v8, qword_1EC219F58);
  (*(*(v8 - 8) + 16))(a4, v9, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = (a4 + *(v10 + 28));
  v12 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v13 = [v12 processName];

  v14 = sub_1C755068C();
  v16 = v15;

  *v11 = v14;
  v11[1] = v16;
  *(a4 + *(v10 + 32)) = a1;
}

uint64_t sub_1C7299528()
{
  if (qword_1EC213FA0 != -1)
  {
LABEL_8:
    swift_once();
  }

  v1 = qword_1EC219F70;
  do
  {
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_8;
    }

    v2 = v1;
    atomic_compare_exchange_strong_explicit(&qword_1EC219F70, &v2, v1 + 1, memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v1;
    v1 = v2;
  }

  while (!v3);
  v4 = OUTLINED_FUNCTION_0_11();
  v8 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v4, v5) + 28));
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](58, 0xE100000000000000);
  v6 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v6);

  return v8;
}

uint64_t sub_1C729961C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C729963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178E0, &qword_1C756C910);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C72997A4;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_1C72997A4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C72998C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72998F0, 0, 0);
}

uint64_t sub_1C72998F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A120, &qword_1C757EBE0);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C72997A4;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1C7299A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[16] = a7;
  v8[17] = v7;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7299A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 96);
  *(v12 + 144) = sub_1C7299528();
  *(v12 + 152) = v14;
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v16, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19, v20);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v21, v22, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v23 = swift_task_alloc();
  *(v12 + 160) = v23;
  v24 = OUTLINED_FUNCTION_41_28(v23, *(v12 + 104));
  *(v12 + 168) = v24;
  OUTLINED_FUNCTION_32_27(v24);
  v25 = swift_task_alloc();
  *(v12 + 176) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A118, &qword_1C757EBC8);
  OUTLINED_FUNCTION_31_30();
  *v25 = v26;
  v25[1] = sub_1C7299C1C;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

void sub_1C7299C1C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C7299D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void (*a11)(void), void (*a12)(void), unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26;
  v30 = v26[5];
  v31 = v26[6];
  v32 = v26 + 5;
  if (v32[2])
  {
    v33 = OUTLINED_FUNCTION_57_0();
    sub_1C72AD52C(v33, v34, 1);
    sub_1C75504FC();
    sub_1C75504FC();
    v35 = OUTLINED_FUNCTION_57_0();
    sub_1C72AD52C(v35, v36, 1);
    v37 = sub_1C754FEEC();
    v38 = sub_1C755119C();

    v39 = OUTLINED_FUNCTION_57_0();
    sub_1C72AD538(v39, v40, 1);
    v41 = os_log_type_enabled(v37, v38);
    v42 = v29[19];
    if (v41)
    {
      a10 = v32 - 3;
      v43 = v29[18];
      v44 = v29[11];
      v45 = v29[12];
      v46 = OUTLINED_FUNCTION_142_1();
      a11 = swift_slowAlloc();
      a12 = a11;
      *v46 = 136315906;
      *(v46 + 4) = sub_1C6F765A4(v44, v45, &a12);
      *(v46 + 12) = 2080;
      sub_1C6F765A4(v43, v42, &a12);
      OUTLINED_FUNCTION_159_3();
      *(v46 + 14) = v44;
      *(v46 + 22) = 2080;
      v29[8] = v30;
      v47 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      v48 = sub_1C75506EC();
      OUTLINED_FUNCTION_134_7(v48, v49, v50, v51, v52, v53, v54, v55);
      OUTLINED_FUNCTION_84_9();

      *(v46 + 24) = v42;
      *(v46 + 32) = 2080;
      swift_getErrorValue();
      v56 = sub_1C7551EAC();
      OUTLINED_FUNCTION_134_7(v56, v57, v58, v59, v60, v61, v62, v63);
      OUTLINED_FUNCTION_84_9();

      *(v46 + 34) = v42;
      _os_log_impl(&dword_1C6F5C000, v37, v38, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s", v46, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    swift_willThrow();
    sub_1C72AD538(v29[5], v29[6], *(v29 + 56));
    OUTLINED_FUNCTION_123_7();
  }

  else
  {
    v64 = v29[15];
    v65 = v29[19];
    if (v64)
    {
      v66 = v29[16];
      a12 = v30;
      a13 = v31;
      v67 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD52C(v67, v68, 0);
      v69 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD52C(v69, v70, 0);
      sub_1C75504FC();
      sub_1C75504FC();
      v71 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD52C(v71, v72, 0);
      sub_1C6F9EE84(v64, v66);
      v73 = sub_1C754FEEC();
      v74 = sub_1C755117C();

      v75 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD538(v75, v76, 0);
      v77 = os_log_type_enabled(v73, v74);
      v78 = v29[19];
      if (v77)
      {
        a9 = v29[18];
        a10 = v29[16];
        a11 = v29[15];
        v79 = OUTLINED_FUNCTION_20_1();
        a14 = OUTLINED_FUNCTION_146_5();
        *v79 = 136315650;
        v80 = OUTLINED_FUNCTION_82();
        *(v79 + 4) = sub_1C6F765A4(v80, v81, v82);
        *(v79 + 12) = 2080;
        v83 = sub_1C6F765A4(a9, v78, &a14);

        *(v79 + 14) = v83;
        *(v79 + 22) = 2080;
        a11(&a12);
        sub_1C6FC1640(a12, a13);
        v84 = OUTLINED_FUNCTION_82();
        v87 = sub_1C6F765A4(v84, v85, v86);

        *(v79 + 24) = v87;
        _os_log_impl(&dword_1C6F5C000, v73, v74, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s", v79, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        sub_1C6F6E5B4(a11, a10);
      }

      else
      {
        v99 = v29[15];
        v98 = v29[16];

        sub_1C6F6E5B4(v99, v98);

        v100 = OUTLINED_FUNCTION_57_0();
        sub_1C6FC1640(v100, v101);
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      v88 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD52C(v88, v89, 0);
      v90 = sub_1C754FEEC();
      sub_1C755117C();

      v91 = OUTLINED_FUNCTION_262_0();
      v92 = v29[19];
      if (v91)
      {
        a11 = v29[18];
        v93 = v29[11];
        v94 = v29[12];
        OUTLINED_FUNCTION_23_1();
        a12 = OUTLINED_FUNCTION_41_20();
        *v65 = 136315394;
        *(v65 + 4) = sub_1C6F765A4(v93, v94, &a12);
        *(v65 + 12) = 2080;
        v95 = sub_1C6F765A4(a11, v92, &a12);

        *(v65 + 14) = v95;
        OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v96, v97, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded");
        OUTLINED_FUNCTION_152_3();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_10_1();
      }

      else
      {
      }
    }

    sub_1C72AD538(v29[5], v29[6], *(v29 + 56));
    v102 = v29[10];
    *v102 = v30;
    v102[1] = v31;
    OUTLINED_FUNCTION_123_7();
  }

  OUTLINED_FUNCTION_94_1();

  return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C729A254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C729A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A108, &qword_1C757EB40);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C729A3DC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_1C729A3DC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C729A528, 0, 0);
}

uint64_t sub_1C729A528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A108, &qword_1C757EB40);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C729A3DC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1C729A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729A6BC, 0, 0);
}

uint64_t sub_1C729A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[5].n128_u64[1];
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_170_3(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = swift_task_alloc();
  v12[9].n128_u64[1] = v24;
  v25 = OUTLINED_FUNCTION_41_28(v24, v12[6]);
  v12[10].n128_u64[0] = v25;
  OUTLINED_FUNCTION_32_27(v25);
  v26 = swift_task_alloc();
  v12[10].n128_u64[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E8, &qword_1C757EAC8);
  OUTLINED_FUNCTION_31_30();
  *v26 = v27;
  v26[1] = sub_1C729A850;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_1C729A850()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729A970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C729A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0D0, &qword_1C757EA90);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C729AAF8;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_1C729AAF8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729AC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C729AC44, 0, 0);
}

uint64_t sub_1C729AC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A108, &qword_1C757EB40);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C729ADAC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_1C729ADAC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_1C729AECC()
{
  v1 = v0;
  v4 = v0[5];
  v3 = v0 + 5;
  v2 = v4;
  v5 = v3[12];
  if (v3[1])
  {
    v6 = OUTLINED_FUNCTION_15_6();
    sub_1C6F93E20(v6, v7);
    sub_1C75504FC();
    sub_1C75504FC();
    v8 = OUTLINED_FUNCTION_15_6();
    sub_1C6F93E20(v8, v9);
    v10 = sub_1C754FEEC();
    v11 = sub_1C755119C();

    v12 = OUTLINED_FUNCTION_15_6();
    sub_1C6F9EDA4(v12, v13);
    v14 = os_log_type_enabled(v10, v11);
    v15 = v1[17];
    if (v14)
    {
      OUTLINED_FUNCTION_142_1();
      v84 = OUTLINED_FUNCTION_137_7();
      v21 = OUTLINED_FUNCTION_115_10(4.8153e-34, v84, v16, v17, v18, v19, v20);
      OUTLINED_FUNCTION_98_11(v21);
      v22 = OUTLINED_FUNCTION_55_0();
      sub_1C6F765A4(v22, v23, v24);
      OUTLINED_FUNCTION_159_3();
      OUTLINED_FUNCTION_155_1();
      v1[7] = v2;
      v25 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      v26 = sub_1C75506EC();
      OUTLINED_FUNCTION_134_7(v26, v27, v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_84_9();

      OUTLINED_FUNCTION_153_3();
      swift_getErrorValue();
      v34 = sub_1C7551EAC();
      OUTLINED_FUNCTION_134_7(v34, v35, v36, v37, v38, v39, v40, v41);
      OUTLINED_FUNCTION_84_9();

      *(v5 + 34) = v15;
      OUTLINED_FUNCTION_140_5(&dword_1C6F5C000, v42, v11, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s");
      OUTLINED_FUNCTION_152_3();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    swift_willThrow();
    v67 = OUTLINED_FUNCTION_15_6();
    sub_1C6F9EDA4(v67, v68);
    OUTLINED_FUNCTION_100_9();
  }

  else
  {
    v43 = v1[13];
    sub_1C75504FC();
    sub_1C75504FC();
    if (v43)
    {
      sub_1C6F9EE84(v43, v1[14]);
      v44 = sub_1C754FEEC();
      v45 = sub_1C755117C();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v1[17];
      if (v46)
      {
        v48 = v1[14];
        v83 = v1[13];
        v49 = OUTLINED_FUNCTION_20_1();
        v85 = OUTLINED_FUNCTION_146_5();
        v55 = OUTLINED_FUNCTION_115_10(4.8152e-34, v85, v50, v51, v52, v53, v54);
        OUTLINED_FUNCTION_98_11(v55);
        v56 = OUTLINED_FUNCTION_55_0();
        sub_1C6F765A4(v56, v57, v58);
        OUTLINED_FUNCTION_159_3();
        OUTLINED_FUNCTION_155_1();
        v59 = v83();
        OUTLINED_FUNCTION_134_7(v59, v60, v61, v62, v63, v64, v65, v66);
        OUTLINED_FUNCTION_84_9();

        *(v49 + 24) = v47;
        _os_log_impl(&dword_1C6F5C000, v44, v45, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s", v49, 0x20u);
        OUTLINED_FUNCTION_152_3();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_10_1();

        sub_1C6F6E5B4(v83, v48);
      }

      else
      {
        v80 = v1[13];
        v79 = v1[14];

        sub_1C6F6E5B4(v80, v79);
      }
    }

    else
    {
      v69 = sub_1C754FEEC();
      v70 = sub_1C755117C();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = OUTLINED_FUNCTION_23_1();
        swift_slowAlloc();
        *v71 = 136315394;
        v72 = OUTLINED_FUNCTION_55_0();
        *(v71 + 4) = sub_1C6F765A4(v72, v73, v74);
        *(v71 + 12) = 2080;
        v75 = OUTLINED_FUNCTION_282();
        v78 = sub_1C6F765A4(v75, v76, v77);

        *(v71 + 14) = v78;
        _os_log_impl(&dword_1C6F5C000, v69, v70, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded", v71, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_100_9();
  }

  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C729B2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729B31C, 0, 0);
}

uint64_t sub_1C729B31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A100, &qword_1C757EB18);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C729B484;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_1C729B484()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_1C729B5A4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 136);
    sub_1C75504FC();
    sub_1C75504FC();
    v4 = OUTLINED_FUNCTION_15_6();
    sub_1C6FDE42C(v4, v5);
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 136);
    if (v8)
    {
      v10 = *(v0 + 128);
      OUTLINED_FUNCTION_142_1();
      v86[0] = OUTLINED_FUNCTION_137_7();
      v16 = OUTLINED_FUNCTION_115_10(4.8153e-34, v86[0], v11, v12, v13, v14, v15);
      OUTLINED_FUNCTION_98_11(v16);
      sub_1C6F765A4(v10, v9, v86);
      OUTLINED_FUNCTION_159_3();
      OUTLINED_FUNCTION_155_1();
      *(v0 + 56) = v2;
      v17 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      v18 = sub_1C75506EC();
      OUTLINED_FUNCTION_134_7(v18, v19, v20, v21, v22, v23, v24, v25);
      OUTLINED_FUNCTION_84_9();

      OUTLINED_FUNCTION_153_3();
      swift_getErrorValue();
      v26 = sub_1C7551EAC();
      OUTLINED_FUNCTION_134_7(v26, v27, v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_84_9();

      *(v3 + 34) = v9;
      OUTLINED_FUNCTION_140_5(&dword_1C6F5C000, v34, v7, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    swift_willThrow();
    v58 = OUTLINED_FUNCTION_15_6();
    sub_1C6FDE438(v58, v59);
    OUTLINED_FUNCTION_123_7();
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  v35 = *(v0 + 104);
  if (v35)
  {
    v36 = *(v0 + 112);
    v85 = *(v0 + 40);
    v37 = OUTLINED_FUNCTION_12_5();
    sub_1C6FDE42C(v37, v38);
    sub_1C75504FC();
    sub_1C75504FC();
    v39 = OUTLINED_FUNCTION_12_5();
    sub_1C6FDE42C(v39, v40);
    sub_1C6F9EE84(v35, v36);
    v41 = sub_1C754FEEC();
    LOBYTE(v36) = sub_1C755117C();

    v42 = os_log_type_enabled(v41, v36);
    v43 = *(v0 + 136);
    if (v42)
    {
      v44 = v1[13];
      v83 = v1[16];
      v84 = v1[14];
      v45 = OUTLINED_FUNCTION_20_1();
      v86[0] = OUTLINED_FUNCTION_146_5();
      *v45 = 136315650;
      v46 = OUTLINED_FUNCTION_140_4();
      *(v45 + 4) = sub_1C6F765A4(v46, v47, v48);
      *(v45 + 12) = 2080;
      v49 = sub_1C6F765A4(v83, v43, v86);

      *(v45 + 14) = v49;
      *(v45 + 22) = 2080;
      v50 = v44(&v85);
      v52 = v51;
      v53 = OUTLINED_FUNCTION_12_5();
      sub_1C6FDE438(v53, v54);
      v55 = sub_1C6F765A4(v50, v52, v86);

      *(v45 + 24) = v55;
      OUTLINED_FUNCTION_169_4(&dword_1C6F5C000, v56, v57, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_79();

      sub_1C6F6E5B4(v44, v84);
    }

    else
    {

      v75 = OUTLINED_FUNCTION_140_4();
      sub_1C6F6E5B4(v75, v76);

      v77 = OUTLINED_FUNCTION_12_5();
      sub_1C6FDE438(v77, v78);
    }
  }

  else
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v62 = OUTLINED_FUNCTION_12_5();
    sub_1C6FDE42C(v62, v63);
    v64 = sub_1C754FEEC();
    v65 = sub_1C755117C();

    if (os_log_type_enabled(v64, v65))
    {
      v67 = *(v0 + 72);
      v66 = *(v0 + 80);
      v68 = OUTLINED_FUNCTION_23_1();
      v86[0] = swift_slowAlloc();
      *v68 = 136315394;
      *(v68 + 4) = sub_1C6F765A4(v67, v66, v86);
      *(v68 + 12) = 2080;
      v69 = OUTLINED_FUNCTION_66_4();
      v72 = sub_1C6F765A4(v69, v70, v71);

      *(v68 + 14) = v72;
      OUTLINED_FUNCTION_165_2(&dword_1C6F5C000, v73, v74, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }
  }

  v79 = OUTLINED_FUNCTION_12_5();
  sub_1C6FDE438(v79, v80);
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C729BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729BA94, 0, 0);
}

uint64_t sub_1C729BA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0F8, &qword_1C757EAF8);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C72997A4;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1C729BBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729BC28, 0, 0);
}

uint64_t sub_1C729BC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[5].n128_u64[1];
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_170_3(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = swift_task_alloc();
  v12[9].n128_u64[1] = v24;
  v25 = OUTLINED_FUNCTION_41_28(v24, v12[6]);
  v12[10].n128_u64[0] = v25;
  OUTLINED_FUNCTION_32_27(v25);
  v26 = swift_task_alloc();
  v12[10].n128_u64[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E8, &qword_1C757EAC8);
  OUTLINED_FUNCTION_31_30();
  *v26 = v27;
  v26[1] = sub_1C729BDBC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_1C729BDBC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729BEDC(uint64_t a1)
{
  v100 = v1;
  v2 = v1;
  v3 = v1[5];
  v5 = v1[6];
  v4 = v1 + 5;
  if (v4[2])
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v6 = OUTLINED_FUNCTION_112_5();
    sub_1C725C8BC(v6, v7, 1);
    v8 = sub_1C754FEEC();
    v9 = sub_1C755119C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v2[18];
    if (v10)
    {
      v12 = v2[17];
      v96 = v9;
      v14 = v2[10];
      v13 = v2[11];
      v15 = OUTLINED_FUNCTION_142_1();
      v92 = swift_slowAlloc();
      v98[0] = v92;
      *v15 = 136315906;
      *(v15 + 4) = sub_1C6F765A4(v14, v13, v98);
      *(v15 + 12) = 2080;
      v16 = sub_1C6F765A4(v12, v11, v98);

      *(v15 + 14) = v16;
      *(v15 + 22) = 2080;
      v2[8] = v3;
      v17 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      v18 = sub_1C75506EC();
      OUTLINED_FUNCTION_149_4(v18, v19, v20, v21, v22, v23, v24, v25, v82, v85, (v4 - 3), v92);
      OUTLINED_FUNCTION_84_9();

      *(v15 + 24) = 2080;
      *(v15 + 32) = 2080;
      swift_getErrorValue();
      v26 = sub_1C7551EAC();
      OUTLINED_FUNCTION_149_4(v26, v27, v28, v29, v30, v31, v32, v33, v83, v86, v89, v93);
      OUTLINED_FUNCTION_84_9();

      *(v15 + 34) = 2080;
      _os_log_impl(&dword_1C6F5C000, v8, v96, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s", v15, 0x2Au);
      OUTLINED_FUNCTION_167_4(v34, v35, v36, v37, v38, v39, v40, v41, v84, v87, v90, v94);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_79();
    }

    else
    {
    }

    swift_willThrow();
    v62 = OUTLINED_FUNCTION_112_5();
    sub_1C725C8AC(v62, v63, 1);
    OUTLINED_FUNCTION_100_9();

    return v64();
  }

  else
  {
    v42 = v2[14];
    v43 = v2[18];
    if (v42)
    {
      v44 = v2[15];
      v98[0] = v3;
      v98[1] = v5;
      v45 = OUTLINED_FUNCTION_112_5();
      sub_1C725C8BC(v45, v46, 0);
      sub_1C75504FC();
      sub_1C75504FC();
      v47 = OUTLINED_FUNCTION_112_5();
      sub_1C725C8BC(v47, v48, 0);
      sub_1C6F9EE84(v42, v44);
      v49 = sub_1C754FEEC();
      v50 = sub_1C755117C();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v2[18];
      if (v51)
      {
        v95 = v2[15];
        v88 = v2[17];
        v91 = v2[14];
        v53 = OUTLINED_FUNCTION_20_1();
        v99 = OUTLINED_FUNCTION_146_5();
        *v53 = 136315650;
        v54 = OUTLINED_FUNCTION_82();
        *(v53 + 4) = sub_1C6F765A4(v54, v55, v56);
        *(v53 + 12) = 2080;
        v57 = sub_1C6F765A4(v88, v52, &v99);

        *(v53 + 14) = v57;
        *(v53 + 22) = 2080;
        v91(v98);
        OUTLINED_FUNCTION_141_5();
        v58 = OUTLINED_FUNCTION_82();
        v61 = sub_1C6F765A4(v58, v59, v60);

        *(v53 + 24) = v61;
        _os_log_impl(&dword_1C6F5C000, v49, v50, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s", v53, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        sub_1C6F6E5B4(v91, v95);
      }

      else
      {
        v79 = v2[14];
        v78 = v2[15];

        sub_1C6F6E5B4(v79, v78);

        OUTLINED_FUNCTION_141_5();
      }

      OUTLINED_FUNCTION_141_5();
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      v66 = OUTLINED_FUNCTION_112_5();
      sub_1C725C8BC(v66, v67, 0);
      v68 = sub_1C754FEEC();
      v69 = sub_1C755117C();

      v70 = os_log_type_enabled(v68, v69);
      v71 = v2[18];
      if (v70)
      {
        v97 = v2[17];
        v72 = v5;
        v73 = v2[10];
        v74 = v2[11];
        OUTLINED_FUNCTION_23_1();
        v98[0] = OUTLINED_FUNCTION_41_20();
        *v43 = 136315394;
        *(v43 + 4) = sub_1C6F765A4(v73, v74, v98);
        *(v43 + 12) = 2080;
        v75 = sub_1C6F765A4(v97, v71, v98);

        *(v43 + 14) = v75;
        _os_log_impl(&dword_1C6F5C000, v68, v69, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded", v43, 0x16u);
        OUTLINED_FUNCTION_152_3();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_10_1();

        v76 = v3;
        v77 = v72;
      }

      else
      {

        v76 = OUTLINED_FUNCTION_112_5();
      }

      sub_1C725C8AC(v76, v77, 0);
    }

    v80 = OUTLINED_FUNCTION_112_5();

    return v81(v80);
  }
}

uint64_t sub_1C729C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729C484, 0, 0);
}

uint64_t sub_1C729C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v19 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17, v18);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v19, v20, v21);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v22, v23, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = OUTLINED_FUNCTION_76_13();
  v25 = OUTLINED_FUNCTION_19_49(v24);
  OUTLINED_FUNCTION_14_47(v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0D0, &qword_1C757EA90);
  OUTLINED_FUNCTION_31_30();
  *v12 = v27;
  v12[1] = sub_1C729C5EC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_1C729C5EC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729CB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729CBC0, 0, 0);
}

uint64_t sub_1C729CBC0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_156_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1C729CC94;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729CC94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729CDB4, 0, 0);
}

uint64_t sub_1C729CDB4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_156_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1C729CC94;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C729CEB0, 0, 0);
}

uint64_t sub_1C729CEB0()
{
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_1C729CF88;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729CF88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D080()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C7550E5C();
  v2 = v0[4];
  if (v1)
  {
    v3 = sub_1C7550CBC();
    v4 = sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0(v4);
    OUTLINED_FUNCTION_147_4();
    sub_1C6FC1640(v0[2], v0[3]);
    *v2 = v3;
  }

  else
  {
    *v2 = *(v0 + 1);
  }

  *(v2 + 16) = v1 & 1;
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1C729D120()
{
  v1 = *(v0 + 32);
  *v1 = *(v0 + 88);
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  return OUTLINED_FUNCTION_12_50();
}

uint64_t sub_1C729D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D160, 0, 0);
}

uint64_t sub_1C729D160()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219FC8, &unk_1C757EA20);
  OUTLINED_FUNCTION_1_91();
  v13 = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_56_20(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_1C729D228()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D348, 0, 0);
}

uint64_t sub_1C729D348()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
  OUTLINED_FUNCTION_1_91();
  v13 = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_56_20(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_1C729D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D438, 0, 0);
}

uint64_t sub_1C729D438()
{
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_1C729D510;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729D510()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D630, 0, 0);
}

uint64_t sub_1C729D630()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_8(v1);

  return v4(v3);
}

uint64_t sub_1C729D6F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D818, 0, 0);
}

uint64_t sub_1C729D818()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  OUTLINED_FUNCTION_1_91();
  v13 = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_56_20(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_1C729D8E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D9D8()
{
  OUTLINED_FUNCTION_42();
  if (sub_1C7550E5C())
  {
    sub_1C7550CBC();
    v0 = sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0(v0);
    OUTLINED_FUNCTION_147_4();
  }

  v1 = OUTLINED_FUNCTION_75_10();

  return v2(v1);
}

uint64_t sub_1C729DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729DA84, 0, 0);
}

uint64_t sub_1C729DA84()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_156_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1C729DB58;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729DB58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729DC50()
{
  OUTLINED_FUNCTION_42();
  if (sub_1C7550E5C())
  {
    sub_1C7550CBC();
    v0 = sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0(v0);
    OUTLINED_FUNCTION_147_4();
  }

  v1 = OUTLINED_FUNCTION_75_10();

  return v2(v1);
}

uint64_t sub_1C729DCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729DD04, 0, 0);
}

uint64_t sub_1C729DD04()
{
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_1C729DDDC;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729DDDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729DED4()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1C7550E5C();
  if (v1)
  {
    v2 = sub_1C7550CBC();
    v3 = sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0(v3);
    OUTLINED_FUNCTION_147_4();

    v4 = 0;
  }

  else
  {
    v2 = v0[2];
    v4 = v0[3];
  }

  v5 = v0[1];

  return v5(v2, v4, v1 & 1);
}

uint64_t sub_1C729DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729DFB8, 0, 0);
}

uint64_t sub_1C729DFB8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_8(v1);

  return v4(v3);
}

uint64_t sub_1C729E080()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729E178()
{
  OUTLINED_FUNCTION_42();
  if (sub_1C7550E5C())
  {
    sub_1C7550CBC();
    v0 = sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0(v0);
    OUTLINED_FUNCTION_147_4();
  }

  v1 = OUTLINED_FUNCTION_75_10();

  return v2(v1);
}

uint64_t sub_1C729E1F4(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FA0, 0x1E69BE630);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_416;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729E6BC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0, 0x1E69BE620);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_399;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729EB84(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0, 0x1E69BE620);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_384;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729F04C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FE8, 0x1E69BE618);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219FC8, &unk_1C757EA20);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_363;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729F514(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FA0, 0x1E69BE630);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_338;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729F9DC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FA0, 0x1E69BE630);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_324;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729FEA4(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FA0, 0x1E69BE630);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_295;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A036C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0, 0x1E69BE620);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_274;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A0834(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0, 0x1E69BE620);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_232;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A0CFC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0, 0x1E69BE620);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_211;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A11C4(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0, 0x1E69BE620);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_170;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A168C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0, 0x1E69BE620);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ACEA8;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_26;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

void sub_1C72A1B54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  oslog = sub_1C754FEEC();
  v10 = sub_1C75511BC();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1C6F765A4(a3, a4, &v17);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1C6F765A4(a5, a6, &v17);
    *(v11 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    v13 = sub_1C75504BC();
    v15 = sub_1C6F765A4(v13, v14, &v17);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_1C6F5C000, oslog, v10, "[PhotoAnalysisService] Cancelled '%s' request with operationID '%s'. Error by operationID: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }
}

uint64_t sub_1C72A1D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  v3 = sub_1C75504AC();

  v2(v3);
}

uint64_t PhotoAnalysisPhotoLibraryService.updateKeyAssetOfSocialGroups(withUUIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A1DBC()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729A4FC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A1E74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A1F74()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A1FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A1FF4, 0, 0);
}

uint64_t sub_1C72A1FF4()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v0[22] = sub_1C7550F7C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[23] = v1;
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A20F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A21F0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72A224C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PhotoAnalysisPhotoLibraryService.keyAssetUUIDOfSocialGroup(with:candidateAssetUUIDs:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A22D4()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_61_15(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_101_9(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(25);

  return sub_1C729A690(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A2388()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_127_5();
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_74_11();
    OUTLINED_FUNCTION_244_0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C72A24B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A2550, 0, 0);
}

uint64_t sub_1C72A2550()
{
  OUTLINED_FUNCTION_115_0();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1C7550F7C();
  OUTLINED_FUNCTION_84_9();
  v5 = sub_1C7550F7C();
  OUTLINED_FUNCTION_0_11();
  sub_1C755065C();
  OUTLINED_FUNCTION_103_7();
  v6 = [v4 keyAssetUUIDOfSocialGroupWithPersonUUIDs:v1 candidateAssetUUIDs:v5 operationID:v2 error:v3];

  v7 = *v3;
  if (v6)
  {
    v8 = v0[3];
    v9 = sub_1C755068C();
    v11 = v10;
    v12 = v7;

    *v8 = v9;
    v8[1] = v11;
  }

  else
  {
    v14 = v7;
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_42_26();

  return v13();
}

uint64_t PhotoAnalysisPhotoLibraryService.keyAsset(from:in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A26D8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_61_15(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_101_9(v2);
  OUTLINED_FUNCTION_161_4();

  return sub_1C729A690(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A27AC()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_127_5();
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_74_11();
    OUTLINED_FUNCTION_244_0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C72A28DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A2904, 0, 0);
}

uint64_t sub_1C72A2904()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_24_28();
  v0[26] = sub_1C7550B3C();
  v0[27] = sub_1C7550B3C();
  OUTLINED_FUNCTION_66_4();
  v0[28] = sub_1C755065C();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v1 = OUTLINED_FUNCTION_52_22();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910, &qword_1C756C928);
  OUTLINED_FUNCTION_62(v2);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_89_11();
  v0[13] = v3;
  v0[14] = v1;
  OUTLINED_FUNCTION_25_32();
  [v4 v5];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1C72A2A28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A2B24()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v5 = v0[19];
  v4 = v0[20];
  *v4 = v0[18];
  v4[1] = v5;

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1C72A2B94()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C72A2C10(uint64_t *a1)
{
  v1 = *a1;
  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C72A2C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A2C5C()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_24_28();
  v0[25] = sub_1C7550B3C();
  sub_1C70C0EC0();
  v0[26] = sub_1C755048C();

  OUTLINED_FUNCTION_66_4();
  v0[27] = sub_1C755065C();
  v0[2] = v0;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_52_22();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A110, &qword_1C757EB68);
  OUTLINED_FUNCTION_62(v1);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_82_13();
  OUTLINED_FUNCTION_25_32();
  [v2 v3];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1C72A2DA4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A2EA0()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  **(v0 + 152) = *(v0 + 144);

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1C72A2F0C()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C72A2F88(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C6FF5694();
  }

  else
  {
    sub_1C7550B5C();

    return sub_1C6FF5698();
  }
}

uint64_t sub_1C72A301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A3044, 0, 0);
}

uint64_t sub_1C72A3044()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_24_28();
  v0[25] = sub_1C7550B3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  v0[26] = sub_1C755048C();
  OUTLINED_FUNCTION_66_4();
  v0[27] = sub_1C755065C();
  v0[2] = v0;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_52_22();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A110, &qword_1C757EB68);
  OUTLINED_FUNCTION_62(v1);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_82_13();
  OUTLINED_FUNCTION_25_32();
  [v2 v3];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1C72A3184()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisPhotoLibraryService.hastingsCuration(from:options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 62) = *(a2 + 46);
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A32AC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[9];
  v2 = OUTLINED_FUNCTION_138_4();
  v0[11] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1C72A3398;
  OUTLINED_FUNCTION_161_4();

  return sub_1C729961C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A3398()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C72A34C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A34E8, 0, 0);
}

uint64_t sub_1C72A34E8()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 184);
  sub_1C754DBCC();
  swift_allocObject();
  *(v0 + 200) = sub_1C754DBBC();
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  *(v0 + 126) = *(v1 + 46);
  *(v0 + 96) = v3;
  *(v0 + 112) = v2;
  *(v0 + 80) = v4;
  sub_1C716A2FC();
  *(v0 + 208) = sub_1C754DBAC();
  *(v0 + 216) = v5;
  *(v0 + 224) = sub_1C7550B3C();
  *(v0 + 232) = sub_1C754DDCC();
  OUTLINED_FUNCTION_55_0();
  *(v0 + 240) = sub_1C755065C();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1C72A36E0;
  v6 = OUTLINED_FUNCTION_108_8();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A110, &qword_1C757EB68);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C72A2F88;
  *(v0 + 104) = &block_descriptor_309;
  *(v0 + 112) = v6;
  OUTLINED_FUNCTION_25_32();
  [v7 v8];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1C72A36E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 248) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A37DC()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[19];
  sub_1C6FC1640(v0[26], v0[27]);

  *v4 = v0[18];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_244_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C72A3864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[30];
  v13 = v10[28];
  v12 = v10[29];
  v14 = v10[26];
  v15 = v10[27];
  swift_willThrow();
  sub_1C6FC1640(v14, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C72A38F4()
{
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
  return v1;
}

uint64_t PhotoAnalysisPhotoLibraryService.computeCacheDidLoad()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C72A3A0C;
  OUTLINED_FUNCTION_150_5();
  OUTLINED_FUNCTION_35_19();

  return sub_1C729A4FC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A3A0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A3B4C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_computeCacheDidLoad_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C72A3C18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisPhotoLibraryService.requestPersonalizedSensingRefresh()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C72A3DC4;
  v3 = OUTLINED_FUNCTION_157_1(33);

  return sub_1C729A970(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72A3DC4()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1C72A3EBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A3ED0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  OUTLINED_FUNCTION_118_7((v0 + 21));
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0D8, &qword_1C757EAA8);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_86_9();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_requestPersonalizedSensingRefreshWithReply_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C72A3FA0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A40AC()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A4110(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C6FF5694();
  }

  else
  {
    v8 = *v5;

    return sub_1C6FF0CA0(v8, a2);
  }
}

uint64_t PhotoAnalysisPhotoLibraryService.exportMomentContextData()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C72A4244;
  v3 = OUTLINED_FUNCTION_157_1(23);

  return sub_1C729A690(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72A4244()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_0_11();
  }

  return v5(v4);
}

uint64_t sub_1C72A433C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A435C, 0, 0);
}

uint64_t sub_1C72A435C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910, &qword_1C756C928);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_89_11();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_exportMomentContextDataWithReply_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C72A442C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A4528()
{
  v2 = v0[19];
  v1 = v0[20];
  *v1 = v0[18];
  v1[1] = v2;
  return OUTLINED_FUNCTION_12_50();
}

uint64_t sub_1C72A4538()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisMomentGraphService.performGraphRebuild(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A45B0()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A4668()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A4768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A478C, 0, 0);
}

uint64_t sub_1C72A478C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  v0[22] = sub_1C755048C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[23] = v1;
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A48A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisMomentGraphService.performGraphIncrementalUpdate(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A49B8()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A4A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A4A94, 0, 0);
}

uint64_t sub_1C72A4A94()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  v0[22] = sub_1C755048C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[23] = v1;
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t PhotoAnalysisMomentGraphService.performMemoryNodesRebuild(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A4BC4()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A4C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A4CA0, 0, 0);
}

uint64_t sub_1C72A4CA0()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126_7();
  v0[22] = sub_1C755065C();
  v0[2] = v0;
  v0[3] = sub_1C72A4D7C;
  OUTLINED_FUNCTION_108_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_33_28(v1);
  OUTLINED_FUNCTION_162_4(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_80_10();
  OUTLINED_FUNCTION_168_4(v2, sel_performMemoryNodesRebuildForCategory_operationID_reply_);
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C72A4D7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A4E78()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t PhotoAnalysisMomentGraphService.performLocalMemoryEventElection(withElectionMode:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A4EE8()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_138_4();
  v4 = OUTLINED_FUNCTION_104_7(v3);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_101_9(v6);
  OUTLINED_FUNCTION_124_7();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C72A4FA4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A50A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A50CC, 0, 0);
}

uint64_t sub_1C72A50CC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v0[23] = sub_1C755065C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[24] = v1;
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A51C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A52BC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72A5318()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PhotoAnalysisMomentGraphService.requestSynonymsDictionaries()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7298D0C;
  OUTLINED_FUNCTION_150_5();
  OUTLINED_FUNCTION_35_19();

  return sub_1C729AC18(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A54C8, 0, 0);
}

uint64_t sub_1C72A54C8()
{
  OUTLINED_FUNCTION_123();
  v3 = *(v2 + 24);
  sub_1C755065C();
  OUTLINED_FUNCTION_103_7();
  v4 = [v3 requestSynonymsDictionariesWithOperationID:v0 error:v1];

  v5 = *v1;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_42_26();

  return v6();
}

uint64_t PhotoAnalysisMomentGraphService.requestGraphSearchMetadata(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A55DC()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A5694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;

  return MEMORY[0x1EEE6DFA0](sub_1C72A5728, 0, 0);
}

uint64_t sub_1C72A5728()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = sub_1C755065C();
  *(v0 + 16) = 0;
  v4 = sub_1C72AC2D0(v1, v3, v0 + 16, v2);

  v5 = *(v0 + 16);
  if (v4)
  {
  }

  else
  {
    v7 = v5;
    sub_1C754DBEC();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t PhotoAnalysisMomentGraphService.requestSearchIndexKeywords(for:of:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A584C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_138_4();
  v4 = OUTLINED_FUNCTION_104_7(v3);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_101_9(v6);
  OUTLINED_FUNCTION_124_7();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C72A5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A59A0, 0, 0);
}

uint64_t sub_1C72A59A0()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_160_4();
  v2 = sub_1C7550B3C();
  OUTLINED_FUNCTION_0_11();
  sub_1C755065C();
  OUTLINED_FUNCTION_103_7();
  v4 = OUTLINED_FUNCTION_139_3(v3, sel_requestSearchIndexKeywordsForAssetCollectionUUIDs_ofType_operationID_error_);

  v5 = *v1;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_42_26();

  return v6();
}

uint64_t PhotoAnalysisMomentGraphService.requestAssetSearchKeywords(for:of:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A5AC4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_138_4();
  v4 = OUTLINED_FUNCTION_104_7(v3);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_101_9(v6);
  OUTLINED_FUNCTION_124_7();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C72A5B80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A5D18, 0, 0);
}

uint64_t sub_1C72A5D18()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_160_4();
  v2 = sub_1C7550B3C();
  OUTLINED_FUNCTION_0_11();
  sub_1C755065C();
  OUTLINED_FUNCTION_103_7();
  v4 = OUTLINED_FUNCTION_139_3(v3, sel_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_error_);

  v5 = *v1;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_42_26();

  return v6();
}

uint64_t PhotoAnalysisMomentGraphService.requestSearchableAssetUUIDsBySocialGroup(for:of:isFullAnalysis:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A5E40()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_104_7(v4);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_102_9(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_101_9(v7);
  OUTLINED_FUNCTION_13_56();
  OUTLINED_FUNCTION_244_0();

  return sub_1C729AC18(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1C72A5F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 24) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A5FB0, 0, 0);
}

uint64_t sub_1C72A5FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v26 = *MEMORY[0x1E69E9840];
  v10 = *(v9 + 64);
  v11 = *(v9 + 56);
  v12 = *(v9 + 24);
  v13 = sub_1C7550B3C();
  v14 = sub_1C755065C();
  *(v9 + 16) = 0;
  v15 = [v12 requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:v13 ofType:v11 isFullAnalysis:v10 operationID:v14 error:v9 + 16];

  v16 = *(v9 + 16);
  if (v15)
  {
  }

  else
  {
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t PhotoAnalysisMomentGraphService.performGraphSearchEntityRankingDonation()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7298D0C;
  OUTLINED_FUNCTION_150_5();
  OUTLINED_FUNCTION_35_19();

  return sub_1C729AC18(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A61C0, 0, 0);
}

uint64_t sub_1C72A61C0()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v1 = sub_1C755065C();
  OUTLINED_FUNCTION_95_12(v1);
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_69_17();
  [v6 v7];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A629C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisMomentGraphService.requestExtendedTokenCollection(from:representativeMomentUUIDByAssetUUID:sharingFilter:personOrPetUUIDsWithNegativeFeedback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A63B4()
{
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v15 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v15;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 88) = v5;
  *v5 = v6;
  v5[1] = sub_1C72A64B0;
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C72A64B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A65B0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A660C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[27] = a8;
  v9[28] = a9;
  v9[25] = a6;
  v9[26] = a7;
  v9[23] = a4;
  v9[24] = a5;
  v9[21] = a2;
  v9[22] = a3;
  v9[20] = a1;
  return OUTLINED_FUNCTION_37_25();
}

uint64_t sub_1C72A6634()
{
  v9 = v0[28];
  v1 = sub_1C754DDCC();
  v0[29] = v1;
  v2 = sub_1C755048C();
  v0[30] = v2;
  v3 = sub_1C7550F7C();
  v0[31] = v3;
  v4 = sub_1C755065C();
  v0[32] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C72A67D8;
  v5 = OUTLINED_FUNCTION_108_8();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  v0[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_162_4(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_87_14();
  v0[13] = v6;
  v0[14] = v5;
  [v7 requestExtendedTokenCollectionFromQueryTokensAsData:v1 representativeMomentUUIDByAssetUUID:v2 personOrPetUUIDsWithNegativeFeedback:v3 sharingFilter:v9 operationID:v4 reply:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C72A67D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A68D4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_97_8(*(v0 + 256));

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1C72A6944()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C72A69C0(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C6FF5694();
  }

  else
  {
    v7 = a2;
    sub_1C754DDEC();

    return sub_1C6FF0C9C();
  }
}

uint64_t PhotoAnalysisMomentGraphService.requestMeanings(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A6A78()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(29);

  return sub_1C729B2F0(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A6B30()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C72A6C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A6C80, 0, 0);
}

uint64_t sub_1C72A6C80()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_96_8();
  v0[24] = sub_1C7550F7C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[25] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199B0, &qword_1C757A748);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  v0[12] = sub_1C723F370;
  v0[13] = &block_descriptor_238;
  v0[14] = v3;
  v5 = OUTLINED_FUNCTION_28_25();
  [v5 v6];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1C72A6D88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A6E84()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  **(v0 + 152) = *(v0 + 144);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1C72A6EE8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C72A6F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v14;
  *(v8 + 224) = v13;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 176) = a3;
  *(v8 + 184) = a4;
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72A6FA4()
{
  OUTLINED_FUNCTION_95_3();
  v1 = v0;
  v7 = v0[21];
  v0[31] = sub_1C7550B3C();
  v0[32] = sub_1C755048C();
  v0[33] = sub_1C754DDCC();
  OUTLINED_FUNCTION_55_0();
  v0[34] = sub_1C754DDCC();
  v0[35] = sub_1C755065C();
  v0[2] = v0;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v2 = OUTLINED_FUNCTION_52_22();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  v1[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v1[13] = v3;
  v1[14] = v2;
  [v7 requestPersonalTraitsForAssetUUIDs_momentUUIDByAssetUUID_extendedTokenCollectionAsData_configurationAsData_sharingFilter_operationID_reply_];
  OUTLINED_FUNCTION_94_1();

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1C72A7140()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A723C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  OUTLINED_FUNCTION_97_8(*(v0 + 280));

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1C72A72B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[35];
  v13 = v10[33];
  v12 = v10[34];
  v15 = v10[31];
  v14 = v10[32];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C72A7334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[28] = a9;
  v10[29] = a10;
  v10[26] = a7;
  v10[27] = a8;
  v10[24] = a5;
  v10[25] = a6;
  v10[22] = a3;
  v10[23] = a4;
  v10[20] = a1;
  v10[21] = a2;
  return OUTLINED_FUNCTION_37_25();
}

uint64_t sub_1C72A735C()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = v0[28];
  v2 = sub_1C754DDCC();
  v0[30] = v2;
  OUTLINED_FUNCTION_0_11();
  v3 = sub_1C755065C();
  v0[31] = v3;
  if (v1)
  {
    v1 = sub_1C7550F7C();
  }

  v0[32] = v1;
  v4 = v0[21];
  v5 = sub_1C755048C();
  v0[33] = v5;
  v6 = sub_1C755065C();
  v0[34] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C72A7514;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C72A69C0;
  v0[13] = &block_descriptor_352;
  v0[14] = v7;
  [v4 requestPersonalEventMomentsForQueryTokenAsData:v2 associatedPersonUUID:v3 scopedMomentUUIDs:v1 momentUUIDByAssetUUID:v5 operationID:v6 reply:v0 + 10];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A7514()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A7610()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  OUTLINED_FUNCTION_97_8(*(v0 + 272));

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1C72A7688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[34];
  v13 = v10[32];
  v12 = v10[33];
  v15 = v10[30];
  v14 = v10[31];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t PhotoAnalysisMomentGraphService.requestCharacterCurationInfo(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A771C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[4];
  v2 = OUTLINED_FUNCTION_116_9();
  v0[6] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_1C72A77E4;
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C72A77E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A78E4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A7940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A7968, 0, 0);
}

uint64_t sub_1C72A7968()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  v0[25] = sub_1C7550F7C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[26] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A7A6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A7B68()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_97_8(*(v0 + 208));

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72A7BC4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonalTraitsForHighlights(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A7C48()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(34);

  return sub_1C729BA68(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A7D00()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C72A7E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A7E50, 0, 0);
}

uint64_t sub_1C72A7E50()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_96_8();
  v0[24] = sub_1C7550B3C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[25] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  OUTLINED_FUNCTION_52_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0F0, &qword_1C757EAD8);
  OUTLINED_FUNCTION_62(v3);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_83_6();
  v4 = OUTLINED_FUNCTION_28_25();
  [v4 v5];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1C72A7F40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A803C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C6FF5694();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF8, &qword_1C757EAE0);
    sub_1C7550B5C();

    return sub_1C6FF5698();
  }
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonalTraitsForAssets(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A80F4()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(30);

  return sub_1C729BA68(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A81D4, 0, 0);
}

uint64_t sub_1C72A81D4()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_96_8();
  v0[24] = sub_1C7550B3C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[25] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  OUTLINED_FUNCTION_52_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0F0, &qword_1C757EAD8);
  OUTLINED_FUNCTION_62(v3);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_83_6();
  v4 = OUTLINED_FUNCTION_28_25();
  [v4 v5];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t PhotoAnalysisMomentGraphService.performPromptSuggestionCaching()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7298D0C;
  OUTLINED_FUNCTION_150_5();
  OUTLINED_FUNCTION_35_19();

  return sub_1C729AC18(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A8394, 0, 0);
}

uint64_t sub_1C72A8394()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v1 = sub_1C755065C();
  OUTLINED_FUNCTION_95_12(v1);
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_69_17();
  [v6 v7];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t PhotoAnalysisMomentGraphService.fetchUnvalidatedPromptSuggestions(with:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A8484()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[4];
  v2 = OUTLINED_FUNCTION_116_9();
  v0[6] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_1C72A854C;
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C72A854C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a2;
  v5[22] = a5;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A8670, 0, 0);
}

uint64_t sub_1C72A8670()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_55_23();
  v3 = v0[21];
  v2 = v0[22];
  v0[2] = v4;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v5 = OUTLINED_FUNCTION_52_22();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  OUTLINED_FUNCTION_62(v6);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v7;
  v0[14] = v5;
  [v3 fetchUnvalidatedPromptSuggestionsWithFetchLimit:v2 reply:v1 + 80];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A874C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A8858()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisMomentGraphService.generateWhimsicalPromptSuggestions()()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1C72A8974;
  OUTLINED_FUNCTION_35_19();

  return sub_1C7299A58(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A8974()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A8A90(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A8AB0, 0, 0);
}

uint64_t sub_1C72A8AB0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_generateWhimsicalPromptSuggestionsWithReply_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C72A8B80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisMomentGraphService.generateContextualPromptSuggestions()()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1C72A8D34;
  OUTLINED_FUNCTION_35_19();

  return sub_1C7299A58(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A8D34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A8E2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A8E4C, 0, 0);
}

uint64_t sub_1C72A8E4C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_generateContextualPromptSuggestionsWithReply_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t PhotoAnalysisMomentGraphService.requestPrewarmQueryAnnotator(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A8F30()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A8FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A900C, 0, 0);
}

uint64_t sub_1C72A900C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126_7();
  v0[22] = sub_1C755065C();
  v0[2] = v0;
  v0[3] = sub_1C72A90E8;
  OUTLINED_FUNCTION_108_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_33_28(v1);
  OUTLINED_FUNCTION_162_4(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_80_10();
  OUTLINED_FUNCTION_168_4(v2, sel_requestPrewarmQueryAnnotatorForOriginatorPID_operationID_reply_);
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C72A90E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisMomentGraphService.debugValidation(fromQueryTemplate:person:city:place:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[11] = a10;
  v11[12] = v10;
  v11[9] = a8;
  v11[10] = a9;
  v11[7] = a6;
  v11[8] = a7;
  v11[5] = a4;
  v11[6] = a5;
  v11[3] = a2;
  v11[4] = a3;
  v11[2] = a1;
  return OUTLINED_FUNCTION_37_25();
}

uint64_t sub_1C72A9210()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v7 = *(v0 + 64);
  v6 = *(v0 + 80);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  *(v3 + 64) = v7;
  *(v3 + 80) = v6;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1C72A92F8;
  v9 = OUTLINED_FUNCTION_27_34(24);

  return sub_1C729BBFC(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C72A92F8()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_127_5();
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_74_11();
    OUTLINED_FUNCTION_244_0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C72A9428()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A9484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v12;
  *(v8 + 248) = v13;
  *(v8 + 208) = v10;
  *(v8 + 224) = v11;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A94C0, 0, 0);
}

uint64_t sub_1C72A94C0()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = v0[25];
  v2 = sub_1C755065C();
  v0[32] = v2;
  if (v1)
  {
    v1 = sub_1C755065C();
  }

  v0[33] = v1;
  if (v0[27])
  {
    v3 = sub_1C755065C();
  }

  else
  {
    v3 = 0;
  }

  v0[34] = v3;
  if (v0[29])
  {
    v4 = sub_1C755065C();
  }

  else
  {
    v4 = 0;
  }

  v0[35] = v4;
  if (v0[31])
  {
    v5 = sub_1C755065C();
  }

  else
  {
    v5 = 0;
  }

  v0[36] = v5;
  v6 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C72A9670;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910, &qword_1C756C928);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C73A3188;
  v0[13] = &block_descriptor_176;
  v0[14] = v7;
  [v6 debugValidationFromQueryTemplate:v2 person:v1 city:v3 place:v4 time:v5 reply:v0 + 10];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A9670()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A976C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[19];
  v6 = v0[20];
  *v6 = v0[18];
  v6[1] = v7;

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_1C72A97F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[36];
  v13 = v10[34];
  v12 = v10[35];
  v15 = v10[32];
  v14 = v10[33];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t PhotoAnalysisMomentGraphService.requestQueryAnnotation(for:originatorPID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A9888()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  v13 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v13;
  *(v2 + 32) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 72) = v3;
  *v3 = v4;
  v3[1] = sub_1C72A9968;
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C72A9968()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A9A68()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A9AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A9AF0, 0, 0);
}

uint64_t sub_1C72A9AF0()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_126_7();
  v3 = v1[26];
  v4 = v1[21];
  v5 = sub_1C755065C();
  v1[27] = v5;
  OUTLINED_FUNCTION_66_4();
  v6 = sub_1C755065C();
  v1[28] = v6;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1C72A9C10;
  v7 = OUTLINED_FUNCTION_108_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  OUTLINED_FUNCTION_33_28(v8);
  OUTLINED_FUNCTION_162_4(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_87_14();
  v1[13] = v9;
  v1[14] = v7;
  [v4 requestQueryAnnotationForQuery:v5 originatorPID:v3 operationID:v6 reply:v2];

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1C72A9C10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A9D0C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_97_8(*(v0 + 224));

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72A9D68()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C72A9DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A9E00, 0, 0);
}

uint64_t sub_1C72A9E00()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_151_4();
  v0[26] = sub_1C755065C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[27] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A9EEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A9FE8()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  sub_1C754DB8C();
  swift_allocObject();
  sub_1C754DB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A128, &qword_1C757EBF0);
  sub_1C72AD5EC();
  OUTLINED_FUNCTION_0_11();
  sub_1C754DB5C();
  v4 = *(v0 + 160);

  sub_1C6FC1640(v2, v3);
  *v4 = *(v0 + 80);
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1C72AA0F4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C72AA164()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A9DD8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AA1F8()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A301C(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1C72AA28C()
{
  result = qword_1EC219F78;
  if (!qword_1EC219F78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotoAnalysisService.Error, &type metadata for PhotoAnalysisService.Error, v0, v1);
    atomic_store(result, &qword_1EC219F78);
  }

  return result;
}

uint64_t sub_1C72AA2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72AA308, 0, 0);
}

uint64_t sub_1C72AA308()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_151_4();
  v0[26] = sub_1C754DDCC();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[27] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72AA3F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72AA4F0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_97_8(*(v0 + 216));

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72AA54C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PhotoAnalysisMomentGraphService.validatePromptSuggestions(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72AA5D0()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72AA688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72AA6AC, 0, 0);
}

uint64_t sub_1C72AA6AC()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_96_8();
  v0[24] = sub_1C7550B3C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[25] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0, &qword_1C757EAB0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72AA7A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72AA89C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[24];
  v2 = v0[25];
  sub_1C6FC1640(v0[18], v0[19]);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t PhotoAnalysisMomentGraphService.generateMagicSlotSuggestions(options:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72AA914()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(28);

  return sub_1C729C458(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72AA9CC()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3 & 1);
  }
}

uint64_t sub_1C72AAB04()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1C72AAB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72AAB8C, 0, 0);
}

uint64_t sub_1C72AAB8C()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  v1 = sub_1C755048C();
  OUTLINED_FUNCTION_95_12(v1);
  v0[2] = v2;
  v0[7] = v0 + 23;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0D8, &qword_1C757EAA8);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_86_9();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_69_17();
  [v6 v7];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72AAC98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72AAD94()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 168);
  **(v0 + 144) = *(v0 + 184);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72AADF8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C72AAE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72AAE94()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v1 = sub_1C755065C();
  OUTLINED_FUNCTION_95_12(v1);
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_69_17();
  [v6 v7];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72AAF70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72AB06C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_1C72AB0C4()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72AA2E0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB158()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A1FD0(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB1E8()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A24B8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB27C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A28DC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB310()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A34C0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB3A4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A4768(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB434()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A4A70(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB4C4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A4C7C(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB554()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A50A4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB5E8()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A5694(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB678()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A5908(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB70C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A5C80(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB7A0()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_88_0();

  return sub_1C72A5F14(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72AB840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_11_51();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_5_2(v9);
  *v10 = v11;
  v10[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_7_57();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_44();

  return sub_1C72A660C(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t sub_1C72AB8F4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A6C58(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB984()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A7940(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72ABA14()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A7E28(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72ABAA4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A81AC(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72ABB34()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A864C(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72ABBC4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A8FE8(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72ABC54()
{
  OUTLINED_FUNCTION_36_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_10_61();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_129();

  return sub_1C72A9484(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72ABD28()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_88_0();

  return sub_1C72A9AC4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72ABDC8()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72AA688(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72ABE58()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72AAB68(v3, v4, v5, v6, v7);
}

unint64_t sub_1C72ABEEC()
{
  result = qword_1EC219F80;
  if (!qword_1EC219F80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotoAnalysisService.Error, &type metadata for PhotoAnalysisService.Error, v0, v1);
    atomic_store(result, &qword_1EC219F80);
  }

  return result;
}

_BYTE *sub_1C72ABF50(_BYTE *result, int a2, int a3)
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

void sub_1C72AC0DC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    v6 = sub_1C6F65BE8(255, a3, a4);
    v9 = type metadata accessor for PhotoAnalysisServiceWrapper(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C72AC198(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  sub_1C72AC0DC(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C72AC218(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1C72AC2D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  v7 = sub_1C755048C();
  v8 = [a4 requestGraphSearchMetadataWithOptions:v7 operationID:a2 error:a3];

  return v8;
}

uint64_t sub_1C72AC368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA7C;

  return sub_1C729CB98(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72AC430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA7C;

  return sub_1C729CD8C(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72AC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA7C;

  return sub_1C729D138(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72AC5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA7C;

  return sub_1C729D320(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72AC688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA44;

  return sub_1C729D410(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72AC750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA7C;

  return sub_1C729D608(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72AC818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA7C;

  return sub_1C729D7F0(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72AC8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72AC9A8;

  return sub_1C729DA5C(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72AC9A8()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v4 = v3;
  OUTLINED_FUNCTION_39_0();
  v6 = v5;
  OUTLINED_FUNCTION_6_4();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_14();
  *v9 = v8;

  if (!v0)
  {
    v10 = *(v6 + 16);
    *v10 = v1;
    *(v10 + 8) = v4 & 1;
  }

  OUTLINED_FUNCTION_100_9();
  OUTLINED_FUNCTION_244_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1C72ACAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA7C;

  return sub_1C729CD8C(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72ACB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ACC30;

  return sub_1C729DCDC(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72ACC30()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_47();
  v9 = v8;
  OUTLINED_FUNCTION_6_4();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_14();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v9 + 16);
    *v13 = v7;
    *(v13 + 8) = v5;
    *(v13 + 16) = v3 & 1;
  }

  OUTLINED_FUNCTION_142();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1C72ACD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1C72ADA7C;

  return sub_1C729DF90(a2, a3, a4, a5, a6);
}

uint64_t sub_1C72ACE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

unint64_t sub_1C72ACEAC()
{
  result = qword_1EC217180;
  if (!qword_1EC217180)
  {
    v3 = sub_1C7550CBC();
    result = swift_getWitnessTable(MEMORY[0x1E69E8558], v3, v0, v1);
    atomic_store(result, &qword_1EC217180);
  }

  return result;
}

uint64_t sub_1C72ACF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C72ACFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C72AD084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C72AD12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C72AD1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C72AD27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C72AD324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C72AD3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C72AD474()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_16_46();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_25_32();
  OUTLINED_FUNCTION_142();

  return sub_1C729CE88(v3, v4, v5, v6, v7, v8);
}

id sub_1C72AD52C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1C6FEB1B0(a1, a2);
  }
}

void sub_1C72AD538(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1C6FC1640(a1, a2);
  }
}

uint64_t sub_1C72AD544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

unint64_t sub_1C72AD5EC()
{
  result = qword_1EC21A130;
  if (!qword_1EC21A130)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A128, &qword_1C757EBF0);
    v4[0] = sub_1C72AD670();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EC21A130);
  }

  return result;
}

unint64_t sub_1C72AD670()
{
  result = qword_1EC21A138;
  if (!qword_1EC21A138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ECRPersonGroundingResult, &type metadata for ECRPersonGroundingResult, v0, v1);
    atomic_store(result, &qword_1EC21A138);
  }

  return result;
}

uint64_t sub_1C72AD6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_16_46();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_79(v11);
  OUTLINED_FUNCTION_88_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_1C754FF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

void sub_1C72AD820(uint64_t a1)
{
  v3 = *(sub_1C754FF1C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  sub_1C72A1B54(a1, v1 + v4, v8, v9, v10, v11);
}

void *OUTLINED_FUNCTION_32_27(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  result[5] = v5;
  result[6] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_30(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_1C6F765A4(v5, v4, va);
}

uint64_t OUTLINED_FUNCTION_43_26(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  return sub_1C75504FC();
}

__n128 OUTLINED_FUNCTION_61_15(__n128 *a1)
{
  v1[2].n128_u64[1] = a1;
  result = v1[1];
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_66_19()
{

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_76_13()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_77_11()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_80_10()
{
  v1[12] = sub_1C72C079C;
  v1[13] = v0;
  v1[14] = v2;
}

void OUTLINED_FUNCTION_97_8(void *a1@<X8>)
{
  **(v1 + 160) = *(v1 + 144);
}

uint64_t OUTLINED_FUNCTION_108_8()
{

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_115_10(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v8 = a1;

  return sub_1C6F765A4(v7, v9, va);
}

uint64_t OUTLINED_FUNCTION_116_9()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_120_8()
{
}

uint64_t OUTLINED_FUNCTION_134_7(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1C6F765A4(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_137_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_138_4()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_139_3(uint64_t a1, const char *a2)
{

  return [v5 a2];
}

void OUTLINED_FUNCTION_140_5(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x2Au);
}

void OUTLINED_FUNCTION_141_5()
{

  sub_1C725C8AC(v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_144_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_145_4()
{

  return sub_1C754DBEC();
}

uint64_t OUTLINED_FUNCTION_146_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_147_4()
{

  return sub_1C755044C();
}

uint64_t OUTLINED_FUNCTION_149_4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1C6F765A4(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_153_3()
{
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return v0;
}

void OUTLINED_FUNCTION_165_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_167_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_168_4(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

void OUTLINED_FUNCTION_169_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_170_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  return sub_1C75504FC();
}

uint64_t sub_1C72AE12C()
{
  sub_1C754F28C();
  result = sub_1C754F26C();
  qword_1EDD0DF50 = result;
  *algn_1EDD0DF58 = v1;
  return result;
}

uint64_t sub_1C72AE19C()
{
  sub_1C754F28C();
  result = sub_1C754F26C();
  qword_1EC21A140 = result;
  *algn_1EC21A148 = v1;
  return result;
}

uint64_t sub_1C72AE20C()
{
  sub_1C754F28C();
  result = sub_1C754F26C();
  qword_1EC21A150 = result;
  *algn_1EC21A158 = v1;
  return result;
}

uint64_t sub_1C72AE338()
{
  sub_1C754F28C();
  result = OUTLINED_FUNCTION_19_50();
  qword_1EDD09988 = result;
  unk_1EDD09990 = v1;
  return result;
}

uint64_t sub_1C72AE3A4()
{
  sub_1C754F28C();
  result = OUTLINED_FUNCTION_19_50();
  qword_1EDD09970 = result;
  *algn_1EDD09978 = v1;
  return result;
}

uint64_t sub_1C72AE404(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  sub_1C75504FC();
  return v5;
}

void sub_1C72AE458()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755BAB0;
  if (qword_1EDD09980 != -1)
  {
    swift_once();
  }

  v1 = unk_1EDD09990;
  *(v0 + 32) = qword_1EDD09988;
  *(v0 + 40) = v1;
  sub_1C754F28C();
  sub_1C75504FC();
  v2 = OUTLINED_FUNCTION_21_44();
  sub_1C6FD2568(v2);
  qword_1EDD099B8 = v0;
}

void sub_1C72AE554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755BAB0;
  if (qword_1EDD09968 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDD09978;
  *(v0 + 32) = qword_1EDD09970;
  *(v0 + 40) = v1;
  sub_1C754F28C();
  sub_1C75504FC();
  v2 = OUTLINED_FUNCTION_21_44();
  sub_1C6FD2568(v2);
  qword_1EDD099A0 = v0;
}

void sub_1C72AE650()
{
  v0 = sub_1C755065C();
  v1 = PLServicesLocalizedFrameworkString();

  if (v1)
  {
    v2 = sub_1C755068C();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  qword_1EC21A160 = v2;
  *algn_1EC21A168 = v4;
}

uint64_t static StoryGenerationStrings.trip.getter()
{
  if (qword_1EC213FC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC21A160;
  sub_1C75504FC();
  return v0;
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForStoryGeneration.childrenPetsLifeContextString(childrenArePresent:petsArePresent:)(char a1, char a2)
{
  if ((a1 & 1) == 0 && (a2 & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218330, &unk_1C7571230);
  inited = swift_initStackObject();
  v6 = 0;
  *(inited + 16) = xmmword_1C75604F0;
  v7 = 0x6E6572646C696863;
  if ((a1 & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0xE800000000000000;
  if ((a1 & 1) == 0)
  {
    v8 = 0;
  }

  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v9 = inited + 40;
  v10 = 1937007984;
  if ((a2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0xE400000000000000;
  if ((a2 & 1) == 0)
  {
    v11 = 0;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v13 = (v9 + 16 * v6);
  while (++v6 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_17_55();
        v12 = v19;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        OUTLINED_FUNCTION_16_47();
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      goto LABEL_13;
    }
  }

  swift_setDeallocating();
  sub_1C6FDCB68();
  OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_7_58();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v22 = OUTLINED_FUNCTION_95(v21);
  *(v22 + 16) = xmmword_1C755BAB0;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1C6F6D524();
  OUTLINED_FUNCTION_3_80(v23);
  OUTLINED_FUNCTION_10_62(45);
  return sub_1C75506BC();
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForStoryGeneration.homeLocationsString(from:randomizer:shufflePromptParameters:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_11_52(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v5 = OUTLINED_FUNCTION_1_92(&qword_1EDD06AA0);
    OUTLINED_FUNCTION_6_71(v5);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_7_58();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v8 = OUTLINED_FUNCTION_95(v7);
  *(v8 + 16) = xmmword_1C755BAB0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C6F6D524();
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  OUTLINED_FUNCTION_22_47();
  return sub_1C75506BC();
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForStoryGeneration.userRelationshipsString(peopleRelationshipsAndPets:randomizer:shufflePromptParameters:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_11_52(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v3 = OUTLINED_FUNCTION_1_92(&qword_1EDD06AA0);
    OUTLINED_FUNCTION_6_71(v3);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_7_58();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v6 = OUTLINED_FUNCTION_95(v5);
  *(v6 + 16) = xmmword_1C755BAB0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6F6D524();
  OUTLINED_FUNCTION_3_80(v7);
  OUTLINED_FUNCTION_10_62(45);
  return sub_1C75506BC();
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForStoryGeneration.homeAndRelationshipsString(homeLocationsString:userRelationshipsString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 | a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218330, &unk_1C7571230);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C75604F0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v9 = inited + 40;
    *(inited + 48) = a3;
    *(inited + 56) = a4;
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v12 = (v9 + 16 * v10);
    while (++v10 != 3)
    {
      v13 = v12 + 2;
      v14 = *v12;
      v12 += 2;
      if (v14)
      {
        v15 = *(v13 - 3);
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_17_55();
          v11 = v18;
        }

        v16 = *(v11 + 16);
        if (v16 >= *(v11 + 24) >> 1)
        {
          OUTLINED_FUNCTION_16_47();
          v11 = v19;
        }

        *(v11 + 16) = v16 + 1;
        v17 = v11 + 16 * v16;
        *(v17 + 32) = v15;
        *(v17 + 40) = v14;
        goto LABEL_3;
      }
    }

    swift_setDeallocating();
    sub_1C6FDCB68();
    OUTLINED_FUNCTION_4_70();
    OUTLINED_FUNCTION_7_58();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v21 = OUTLINED_FUNCTION_95(v20);
    *(v21 + 16) = xmmword_1C755BAB0;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1C6F6D524();
    OUTLINED_FUNCTION_3_80(v22);
    OUTLINED_FUNCTION_10_62(31);
    return sub_1C75506BC();
  }

  return a3;
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForStoryGeneration.prominentSettingsString(from:randomizer:shufflePromptParameters:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_11_52(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v3 = OUTLINED_FUNCTION_1_92(&qword_1EDD06AA0);
    OUTLINED_FUNCTION_6_71(v3);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_4_70();
  OUTLINED_FUNCTION_7_58();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v6 = OUTLINED_FUNCTION_95(v5);
  *(v6 + 16) = xmmword_1C755BAB0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6F6D524();
  OUTLINED_FUNCTION_3_80(v7);
  OUTLINED_FUNCTION_10_62(44);
  return sub_1C75506BC();
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForGlobalTraitsGeneration.childrenPetsLifeContextString(childrenArePresent:petsArePresent:)(char a1, char a2)
{
  if (a1)
  {
    v2 = 1702195796;
  }

  else
  {
    v2 = 0x65736C6146;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  if (a2)
  {
    v4 = 1702195796;
  }

  else
  {
    v4 = 0x65736C6146;
  }

  if (a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C75604F0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C6F6D524();
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = v4;
  *(v6 + 80) = v5;
  OUTLINED_FUNCTION_10_62(100);

  return sub_1C75506BC();
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForGlobalTraitsGeneration.homeLocationsString(from:randomizer:shufflePromptParameters:)(void *a1, uint64_t a2, char a3)
{
  if (!a1[2])
  {
    v4 = &unk_1F46A9290;
    if ((a3 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = a1;
  sub_1C75504FC();
  if (a3)
  {
LABEL_3:
    OUTLINED_FUNCTION_20_45();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v5 = OUTLINED_FUNCTION_1_92(&qword_1EDD06AA0);
    v6 = OUTLINED_FUNCTION_13_57(v5);

    v4 = v6;
  }

LABEL_4:
  OUTLINED_FUNCTION_15_53(v4);
  OUTLINED_FUNCTION_7_58();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v8 = OUTLINED_FUNCTION_95(v7);
  *(v8 + 16) = xmmword_1C755BAB0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C6F6D524();
  OUTLINED_FUNCTION_3_80(v9);
  OUTLINED_FUNCTION_10_62(47);
  return sub_1C75506BC();
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForGlobalTraitsGeneration.userRelationshipsString(peopleRelationshipsAndPets:randomizer:shufflePromptParameters:)(void *a1, uint64_t a2, char a3)
{
  if (!a1[2])
  {
    v4 = &unk_1F46A92C0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = a1;
  sub_1C75504FC();
  if (a3)
  {
LABEL_3:
    OUTLINED_FUNCTION_20_45();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v5 = OUTLINED_FUNCTION_1_92(&qword_1EDD06AA0);
    v6 = OUTLINED_FUNCTION_13_57(v5);

    v4 = v6;
  }

LABEL_4:
  OUTLINED_FUNCTION_15_53(v4);
  OUTLINED_FUNCTION_7_58();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v8 = OUTLINED_FUNCTION_95(v7);
  *(v8 + 16) = xmmword_1C755BAB0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C6F6D524();
  OUTLINED_FUNCTION_3_80(v9);
  OUTLINED_FUNCTION_10_62(81);
  return sub_1C75506BC();
}

uint64_t static StoryGenerationStrings.DynamicLifeContextForGlobalTraitsGeneration.homeAndRelationshipsString(homeLocationsString:userRelationshipsString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1C75604F0;
      v9 = MEMORY[0x1E69E6158];
      *(v8 + 56) = MEMORY[0x1E69E6158];
      v10 = sub_1C6F6D524();
      *(v8 + 32) = a3;
      *(v8 + 40) = a4;
      *(v8 + 96) = v9;
      *(v8 + 104) = v10;
      *(v8 + 64) = v10;
      *(v8 + 72) = a1;
      *(v8 + 80) = a2;
      sub_1C75504FC();
      sub_1C75504FC();
      return sub_1C75506BC();
    }

    else
    {
      return a1;
    }
  }

  return a3;
}